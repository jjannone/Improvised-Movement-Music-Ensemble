// perm-summary.js
// Receives permutation data from ensemble brain, outputs plain-English
// summary of unusual statistical patterns to a textedit display.
//
// Inlet 0:  permsdata <json>  — receive full permutation list as JSON string
//           bang              — re-output last summary
// Outlet 0: set <text>        — summary text for textedit

inlets  = 1;
outlets = 1;

var PERMS       = [];
var CONSTRAINTS = {};   // {name: {noSoloDance, noSoloMusic}}

// ── Entry points ─────────────────────────────────────────────────────────────

function permsdata(json) {
	try {
		var data    = JSON.parse(json);
		PERMS       = data.permutations || data;   // back-compat if bare array
		CONSTRAINTS = data.constraints  || {};
		outputSummary();
	} catch (e) {
		outlet(0, "set", "(error parsing permutation data: " + e + ")");
	}
}

function bang() {
	outputSummary();
}

// ── Output ───────────────────────────────────────────────────────────────────

function outputSummary() {
	if (PERMS.length === 0) {
		outlet(0, "set", "(no permutations generated yet)");
		return;
	}

	var obs = analyze();

	// Sort by score descending, deduplicate overlapping observations,
	// take top 6 for readability.
	obs.sort(function (a, b) { return b.score - a.score; });
	var seen = {};
	var top  = [];
	for (var i = 0; i < obs.length && top.length < 6; i++) {
		var key = obs[i].key || obs[i].text.slice(0, 30);
		if (!seen[key]) { seen[key] = true; top.push(obs[i]); }
	}

	outlet(0, "set", top.length > 0
		? top.map(function (o) { return o.text; }).join("\n\n")
		: "(no unusual patterns — distribution is even)");
}

// ── Analysis ─────────────────────────────────────────────────────────────────

function analyze() {
	var obs        = [];
	var performers = getAllPerformers();
	var n          = PERMS.length;

	// Precompute role counts
	var musicCount = {}, danceCount = {};
	performers.forEach(function (p) { musicCount[p] = 0; danceCount[p] = 0; });
	PERMS.forEach(function (perm) {
		perm.musicians.forEach(function (p) { musicCount[p]++; });
		perm.dancers.forEach(function (p)   { danceCount[p]++; });
	});

	// 1. Role frequency outliers ─────────────────────────────────────────────
	var mCounts = performers.map(function (p) { return musicCount[p]; });
	var median  = findMedian(mCounts);
	var threshold = Math.max(1, median * 0.45);

	performers.forEach(function (p) {
		var mc = musicCount[p], dc = danceCount[p];
		var dev = Math.abs(mc - median);
		if (dev >= threshold && n > 2) {
			if (mc < median) {
				obs.push({ score: 1.4 + dev / median, key: "mfreq:" + p,
					text: p + " plays music only " + mc + " time" + (mc === 1 ? "" : "s") +
					      " (others average " + Math.round(median) + ")." });
			} else {
				obs.push({ score: 0.8 + dev / median, key: "mfreq:" + p,
					text: p + " plays music " + mc + " times — more than most performers." });
			}
		}
		if (dc === 0 && musicCount[p] > 0) {
			obs.push({ score: 2.0, key: "nodance:" + p,
				text: p + " never dances." });
		} else if (mc === 0 && dc > 0) {
			obs.push({ score: 2.0, key: "nomusic:" + p,
				text: p + " never plays music." });
		}
	});

	// 2. Solos ───────────────────────────────────────────────────────────────
	var hasMusicSolo = {}, hasDanceSolo = {};
	PERMS.forEach(function (perm) {
		if (perm.musicians.length === 1) hasMusicSolo[perm.musicians[0]] = true;
		if (perm.dancers.length   === 1) hasDanceSolo[perm.dancers[0]]   = true;
	});

	// Exclude performers whose constraints already prevent a solo in that role —
	// those absences are expected, not surprising.
	var noMusicSolo = performers.filter(function (p) {
		return musicCount[p] > 0 && !hasMusicSolo[p] &&
		       !(CONSTRAINTS[p] && CONSTRAINTS[p].noSoloMusic);
	});
	var noDanceSolo = performers.filter(function (p) {
		return danceCount[p] > 0 && !hasDanceSolo[p] &&
		       !(CONSTRAINTS[p] && CONSTRAINTS[p].noSoloDance);
	});

	if (noMusicSolo.length > 0 && noMusicSolo.length < performers.length) {
		var hasSolo = performers.filter(function (p) { return hasMusicSolo[p]; });
		if (noMusicSolo.length <= hasSolo.length) {
			obs.push({ score: 0.9, key: "nomusicsolo",
				text: noMusicSolo.join(", ") + (noMusicSolo.length === 1 ? " never has" : " never have") +
				      " a music solo." });
		} else {
			obs.push({ score: 0.9, key: "nomusicsolo",
				text: "Only " + hasSolo.join(", ") + (hasSolo.length === 1 ? " has" : " have") +
				      " a music solo." });
		}
	}
	if (noDanceSolo.length > 0 && noDanceSolo.length < performers.length) {
		obs.push({ score: 0.8, key: "nodancesolo",
			text: noDanceSolo.join(", ") + (noDanceSolo.length === 1 ? " never has" : " never have") +
			      " a dance solo." });
	}

	// 3. Co-occurrence — pairs that never share a role ───────────────────────
	for (var i = 0; i < performers.length; i++) {
		for (var j = i + 1; j < performers.length; j++) {
			var pa = performers[i], pb = performers[j];
			var sharedMusic = 0, sharedDance = 0;
			PERMS.forEach(function (perm) {
				if (perm.musicians.indexOf(pa) !== -1 && perm.musicians.indexOf(pb) !== -1) sharedMusic++;
				if (perm.dancers.indexOf(pa)   !== -1 && perm.dancers.indexOf(pb)   !== -1) sharedDance++;
			});
			if (sharedMusic === 0 && musicCount[pa] > 0 && musicCount[pb] > 0) {
				obs.push({ score: 1.1, key: "comusic:" + pa + pb,
					text: pa + " and " + pb + " are never both musicians." });
			}
			if (sharedDance === 0 && danceCount[pa] > 0 && danceCount[pb] > 0) {
				obs.push({ score: 1.0, key: "codance:" + pa + pb,
					text: pa + " and " + pb + " are never both dancers." });
			}
		}
	}

	// 4. Dominance — always same role ────────────────────────────────────────
	performers.forEach(function (p) {
		if (musicCount[p] === n) {
			obs.push({ score: 1.8, key: "dom:" + p,
				text: p + " plays music in every section." });
		} else if (danceCount[p] === n) {
			obs.push({ score: 1.8, key: "dom:" + p,
				text: p + " dances in every section." });
		}
	});

	// 5. Consecutive role streaks — tracked separately for music and dance.
	//    All outliers are reported, not just the single longest.
	var streakThreshold = Math.max(3, Math.ceil(n * 0.35));
	performers.forEach(function (p) {
		var maxM = 0, maxD = 0, curM = 0, curD = 0;
		PERMS.forEach(function (perm) {
			if (perm.musicians.indexOf(p) !== -1) {
				curM++; curD = 0;
				if (curM > maxM) maxM = curM;
			} else {
				curD++; curM = 0;
				if (curD > maxD) maxD = curD;
			}
		});
		if (maxM >= streakThreshold && maxM < n) {
			obs.push({ score: 0.5 + maxM / n, key: "streak:M:" + p,
				text: p + " plays music " + maxM + " consecutive times." });
		}
		if (maxD >= streakThreshold && maxD < n) {
			obs.push({ score: 0.5 + maxD / n, key: "streak:D:" + p,
				text: p + " dances " + maxD + " consecutive times." });
		}
	});

	// 6. Inverse pairs — always in opposite groups ───────────────────────────
	for (var i = 0; i < performers.length; i++) {
		for (var j = i + 1; j < performers.length; j++) {
			var pa = performers[i], pb = performers[j];
			var alwaysOpposite = true;
			for (var k = 0; k < n; k++) {
				var aIsM = PERMS[k].musicians.indexOf(pa) !== -1;
				var bIsM = PERMS[k].musicians.indexOf(pb) !== -1;
				if (aIsM === bIsM) { alwaysOpposite = false; break; }
			}
			if (alwaysOpposite) {
				obs.push({ score: 1.3, key: "inv:" + pa + pb,
					text: pa + " and " + pb + " are always in opposite groups." });
			}
		}
	}

	// 7. Group size variation ────────────────────────────────────────────────
	var musicSizes = PERMS.map(function (p) { return p.musicians.length; });
	var danceSizes = PERMS.map(function (p) { return p.dancers.length; });
	var minM = Math.min.apply(null, musicSizes), maxM = Math.max.apply(null, musicSizes);
	var minD = Math.min.apply(null, danceSizes),  maxD = Math.max.apply(null, danceSizes);

	if (minM === maxM && minD !== maxD) {
		obs.push({ score: 0.6, key: "groupsize",
			text: "The music group is always " + minM + " person" + (minM === 1 ? "" : "s") +
			      "; the dance group varies from " + minD + " to " + maxD + "." });
	} else if (minD === maxD && minM !== maxM) {
		obs.push({ score: 0.6, key: "groupsize",
			text: "The dance group is always " + minD + " person" + (minD === 1 ? "" : "s") +
			      "; the music group varies from " + minM + " to " + maxM + "." });
	}

	// 8. Role transitions — high switchers vs stable ─────────────────────────
	if (n > 3) {
		var transitions = {};
		performers.forEach(function (p) { transitions[p] = 0; });
		for (var k = 1; k < n; k++) {
			performers.forEach(function (p) {
				var prev = PERMS[k-1].musicians.indexOf(p) !== -1 ? "M" : "D";
				var curr = PERMS[k].musicians.indexOf(p)   !== -1 ? "M" : "D";
				if (prev !== curr) transitions[p]++;
			});
		}
		var tVals   = performers.map(function (p) { return transitions[p]; });
		var maxTrans = Math.max.apply(null, tVals);
		var minTrans = Math.min.apply(null, tVals);
		if (maxTrans - minTrans >= 3) {
			var hi = performers.filter(function (p) { return transitions[p] === maxTrans; });
			var lo = performers.filter(function (p) { return transitions[p] === minTrans; });
			if (hi.length <= 2 && lo.length <= 2) {
				obs.push({ score: 0.65, key: "transitions",
					text: hi.join(", ") + " switch roles most (" + maxTrans + " times); " +
					      lo.join(", ") + " switch least (" + minTrans + ")." });
			}
		}
	}

	// 9. Sub-group recurrence — trios appearing together ─────────────────────
	if (performers.length >= 3 && n >= 4) {
		var threshold = Math.max(2, Math.floor(n * 0.3));
		for (var i = 0; i < performers.length; i++) {
			for (var j = i+1; j < performers.length; j++) {
				for (var k = j+1; k < performers.length; k++) {
					var trio = [performers[i], performers[j], performers[k]];
					var mc = 0, dc = 0;
					PERMS.forEach(function (perm) {
						if (trio.every(function (p) { return perm.musicians.indexOf(p) !== -1; })) mc++;
						if (trio.every(function (p) { return perm.dancers.indexOf(p)   !== -1; })) dc++;
					});
					if (mc >= threshold) {
						obs.push({ score: 0.75, key: "trio:M:" + trio.join(","),
							text: trio.join(", ") + " play music together in " + mc + " of " + n + " sections." });
					}
					if (dc >= threshold) {
						obs.push({ score: 0.75, key: "trio:D:" + trio.join(","),
							text: trio.join(", ") + " dance together in " + dc + " of " + n + " sections." });
					}
				}
			}
		}
	}

	// 10. Coverage gaps — who never appears with a given co-performer in either role
	for (var i = 0; i < performers.length; i++) {
		for (var j = i + 1; j < performers.length; j++) {
			var pa = performers[i], pb = performers[j];
			var everTogether = PERMS.some(function (perm) {
				return (perm.musicians.indexOf(pa) !== -1 && perm.musicians.indexOf(pb) !== -1) ||
				       (perm.dancers.indexOf(pa)   !== -1 && perm.dancers.indexOf(pb)   !== -1);
			});
			if (!everTogether) {
				obs.push({ score: 1.2, key: "gap:" + pa + pb,
					text: pa + " and " + pb + " are never in the same group in any section." });
			}
		}
	}

	// 11. Duplicate sections — identical musician/dancer split appearing more than once
	for (var i = 0; i < n; i++) {
		for (var j = i + 1; j < n; j++) {
			var a = PERMS[i], b = PERMS[j];
			var aM = a.musicians.slice().sort().join(",");
			var bM = b.musicians.slice().sort().join(",");
			if (aM === bM) {
				obs.push({ score: 2.5, key: "dup:" + aM,
					text: "Sections " + (i+1) + " and " + (j+1) + " have identical groupings (" +
					      a.musicians.join(", ") + " / " + a.dancers.join(", ") + ")." });
			}
		}
	}

	// 12. High co-group rate — a pair who share the same role in most sections
	//     (distinct from inverse pairs, which always oppose)
	if (n >= 4) {
		var coGroupThresh = Math.ceil(n * 0.75);
		for (var i = 0; i < performers.length; i++) {
			for (var j = i + 1; j < performers.length; j++) {
				var pa = performers[i], pb = performers[j];
				var together = 0;
				PERMS.forEach(function (perm) {
					var aM = perm.musicians.indexOf(pa) !== -1;
					var bM = perm.musicians.indexOf(pb) !== -1;
					if (aM === bM) together++;
				});
				if (together >= coGroupThresh && together < n) {
					obs.push({ score: 0.85, key: "cogroup:" + pa + pb,
						text: pa + " and " + pb + " are in the same group in " + together + " of " + n + " sections." });
				}
			}
		}
	}

	// 14. Opening and closing section notes
	if (n >= 2) {
		var first = PERMS[0], last = PERMS[n - 1];
		if (first.musicians.length === 1) {
			obs.push({ score: 0.8, key: "opening",
				text: "The sequence opens with a solo musician: " + first.musicians[0] + "." });
		} else if (first.dancers.length === 1) {
			obs.push({ score: 0.8, key: "opening",
				text: "The sequence opens with a solo dancer: " + first.dancers[0] + "." });
		}
		if (last.musicians.length === 1) {
			obs.push({ score: 0.8, key: "closing",
				text: "The sequence closes with a solo musician: " + last.musicians[0] + "." });
		} else if (last.dancers.length === 1) {
			obs.push({ score: 0.8, key: "closing",
				text: "The sequence closes with a solo dancer: " + last.dancers[0] + "." });
		}
	}

	// 15. Sequence volatility — average role changes per transition
	if (n > 2) {
		var totalChanges = 0;
		for (var k = 1; k < n; k++) {
			var prev = PERMS[k-1], curr = PERMS[k];
			prev.musicians.forEach(function (p) {
				if (curr.dancers.indexOf(p) !== -1) totalChanges++;
			});
		}
		var avgChanges = totalChanges / (n - 1);
		var maxPossible = Math.min(
			PERMS.reduce(function (s, p) { return s + p.musicians.length; }, 0) / n,
			PERMS.reduce(function (s, p) { return s + p.dancers.length; }, 0) / n
		);
		if (maxPossible > 0) {
			var volatility = avgChanges / maxPossible;
			if (volatility < 0.35) {
				obs.push({ score: 0.55, key: "volatility",
					text: "The sequence is very stable — only " + avgChanges.toFixed(1) +
					      " person" + (avgChanges < 1.5 ? "" : "s") + " switch roles per section on average." });
			} else if (volatility > 0.8) {
				obs.push({ score: 0.55, key: "volatility",
					text: "The sequence is highly varied — " + avgChanges.toFixed(1) +
					      " people switch roles per section on average." });
			}
		}
	}

	// 16. Asymmetric pairing — A and B share music together often but rarely/never dance together
	//     (or vice versa), creating a role-specific musical partnership
	if (n >= 4) {
		for (var i = 0; i < performers.length; i++) {
			for (var j = i + 1; j < performers.length; j++) {
				var pa = performers[i], pb = performers[j];
				var sharedM = 0, sharedD = 0;
				PERMS.forEach(function (perm) {
					if (perm.musicians.indexOf(pa) !== -1 && perm.musicians.indexOf(pb) !== -1) sharedM++;
					if (perm.dancers.indexOf(pa)   !== -1 && perm.dancers.indexOf(pb)   !== -1) sharedD++;
				});
				var asymThresh = Math.ceil(n * 0.4);
				if (sharedM >= asymThresh && sharedD === 0) {
					obs.push({ score: 0.9, key: "asym:M:" + pa + pb,
						text: pa + " and " + pb + " play music together " + sharedM + " times but never dance together." });
				} else if (sharedD >= asymThresh && sharedM === 0) {
					obs.push({ score: 0.9, key: "asym:D:" + pa + pb,
						text: pa + " and " + pb + " dance together " + sharedD + " times but never play music together." });
				}
			}
		}
	}

	// 17. Most isolated performer — fewest total shared-group appearances across all pairs
	if (performers.length >= 4 && n >= 4) {
		var isolation = {};
		performers.forEach(function (p) { isolation[p] = 0; });
		PERMS.forEach(function (perm) {
			for (var i = 0; i < perm.musicians.length; i++) {
				for (var j = i + 1; j < perm.musicians.length; j++) {
					isolation[perm.musicians[i]]++;
					isolation[perm.musicians[j]]++;
				}
			}
			for (var i = 0; i < perm.dancers.length; i++) {
				for (var j = i + 1; j < perm.dancers.length; j++) {
					isolation[perm.dancers[i]]++;
					isolation[perm.dancers[j]]++;
				}
			}
		});
		var iVals = performers.map(function (p) { return isolation[p]; });
		var minIso = Math.min.apply(null, iVals);
		var maxIso = Math.max.apply(null, iVals);
		if (maxIso - minIso >= n * 1.5) {
			var loners = performers.filter(function (p) { return isolation[p] === minIso; });
			if (loners.length <= 2) {
				obs.push({ score: 0.5, key: "isolated",
					text: loners.join(", ") + (loners.length === 1 ? " has" : " have") +
					      " the fewest shared-group appearances with other performers." });
			}
		}
	}

	return obs;
}

// ── Utilities ─────────────────────────────────────────────────────────────────

function getAllPerformers() {
	var set = {};
	PERMS.forEach(function (perm) {
		perm.musicians.forEach(function (p) { set[p] = true; });
		perm.dancers.forEach(function (p)   { set[p] = true; });
	});
	return Object.keys(set).sort();
}

function findMedian(arr) {
	var s   = arr.slice().sort(function (a, b) { return a - b; });
	var mid = Math.floor(s.length / 2);
	return s.length % 2 === 0 ? (s[mid-1] + s[mid]) / 2 : s[mid];
}
