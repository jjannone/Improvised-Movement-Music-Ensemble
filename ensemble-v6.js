inlets = 1;
outlets = 8;

// Outlets:
// 0: display messages → display.js
// 1: countdown int → timer + num_countdown
// 2: next-mover text → msg_next
// 3: status text → print
// 4: bang on completion
// 5: set row col value → setup cellblock (init)
// 6: perm list → jit_permlist; "count N" → msg_permcount
// 7: permsdata <json> → perm-summary.js

// Cellblock layout (visual columns, set as jit.cellblock col index):
//   col 0 = Name
//   col 1 = No Solo Music   (left of Dance)
//   col 2 = No Solo Dance
//   col 3 = Music:Dance ratio (e.g. "1:1", "2:1", "0:1")
// list(row, col, val) is called by jit.cellblock with (col, row, val)
// — we keep variable names "row" and "col" matching the original v5
// convention where "row" is the attribute index and "col" is the performer.

var PERFORMERS = {};
var MAX_GROUP_MUSIC = 4;
var MAX_GROUP_DANCE = 4;
var TOTAL_SECS      = 3600;
var MAX_PERMS       = 0;   // 0 = no limit
var MAX_REPEATS     = 0;   // 0 = no limit (consecutive same role)
var COUNTDOWN_START = 10;
var MAX_TRANSITIONS = 0;   // 0 = no limit; >0 caps role changes per adjacent section pair

var PERMUTATIONS   = [];
var CURRENT_IDX    = -1;
var SECS_PER_PERM  = 0;
var COUNTDOWN      = 0;
var PRE_START      = false;
var PRE_COUNTDOWN  = 0;
var SECTION_STARTED = false;

// ── setters ──────────────────────────────────────────────────

function list() {
	var row   = arguments[0];
	var col   = arguments[1];
	var value = Array.prototype.slice.call(arguments, 2).join(" ");
	if (!PERFORMERS[col]) {
		PERFORMERS[col] = {
			name: "",
			noSoloMusic: false,
			noSoloDance: false,
			ratio: { music: 1, dance: 1 }
		};
	}
	if      (row === 0) PERFORMERS[col].name        = String(value);
	else if (row === 1) PERFORMERS[col].noSoloMusic = (value == 1);
	else if (row === 2) PERFORMERS[col].noSoloDance = (value == 1);
	else if (row === 3) PERFORMERS[col].ratio       = parseRatio(value);
}

function parseRatio(v) {
	var s = String(v).trim();
	var m = s.match(/^(\d+)\s*[:\/]\s*(\d+)$/);
	if (!m) return { music: 1, dance: 1 };
	return { music: parseInt(m[1], 10), dance: parseInt(m[2], 10) };
}

function ratioStr(r) {
	return (r ? r.music : 1) + ":" + (r ? r.dance : 1);
}

function setmaxgroupmusic(n)  { MAX_GROUP_MUSIC  = Math.max(1, parseInt(n)); }
function setmaxgroupdance(n)  { MAX_GROUP_DANCE  = Math.max(1, parseInt(n)); }
function setduration(n)       { TOTAL_SECS       = Math.max(60, parseInt(n) * 60); }
function setcountdownstart(n) { COUNTDOWN_START  = Math.max(1, parseInt(n)); }
function setmaxperms(n)       { MAX_PERMS        = Math.max(0, parseInt(n)); }
function setmaxrepeats(n)     { MAX_REPEATS      = Math.max(0, parseInt(n)); }
function setmaxtransitions(n) { MAX_TRANSITIONS  = Math.max(0, parseInt(n)); }

// ── generation ───────────────────────────────────────────────

function shuffle(arr) {
	for (var i = arr.length - 1; i > 0; i--) {
		var j = Math.floor(Math.random() * (i + 1));
		var tmp = arr[i]; arr[i] = arr[j]; arr[j] = tmp;
	}
	return arr;
}

function generate() {
	var active = [];
	var keys = Object.keys(PERFORMERS).sort(function(a, b) { return parseInt(a) - parseInt(b); });
	for (var k = 0; k < keys.length; k++) {
		var p = PERFORMERS[keys[k]];
		if (p.name && p.name.trim().length > 0 && p.name !== "0") {
			active.push({
				name: p.name.trim(),
				noSoloMusic: p.noSoloMusic,
				noSoloDance: p.noSoloDance,
				ratio: p.ratio || { music: 1, dance: 1 }
			});
		}
	}
	if (active.length < 2) { outlet(3, "Need at least 2 performers"); return; }

	shuffle(active);  // randomize so each run differs

	PERMUTATIONS = buildPerms(active);
	if (PERMUTATIONS.length === 0) { outlet(3, "No valid permutations with these constraints"); return; }

	if (MAX_PERMS > 0 && PERMUTATIONS.length > MAX_PERMS) {
		PERMUTATIONS = selectPerms(PERMUTATIONS, MAX_PERMS, active);
	}

	if (MAX_TRANSITIONS > 0) PERMUTATIONS = optimizeOrder(PERMUTATIONS);

	SECS_PER_PERM  = Math.max(1, Math.round(TOTAL_SECS / PERMUTATIONS.length));
	CURRENT_IDX    = 0;
	COUNTDOWN      = SECS_PER_PERM;
	SECTION_STARTED = false;
	PRE_START       = false;

	post("--- " + PERMUTATIONS.length + " sections, " + SECS_PER_PERM + "s each ---\n");
	PERMUTATIONS.forEach(function(p, i) {
		post((i + 1) + ". Music: " + p.musicians.join(", ") + "  |  Dance: " + p.dancers.join(", ") + "\n");
	});

	outlet(0, "setactive", 0);  // names grey until piece starts
	displayCurrent();
	outlet(1, COUNTDOWN_START); // prime the countdown display
	sendPermList();
	sendSummaryData();
	outlet(3, PERMUTATIONS.length + " sections, " + SECS_PER_PERM + "s each");
}

function sendPermList() {
	// jit.cellblock: set COL ROW value  (col = horizontal, row = vertical)
	// Layout: col 0 = index, col 1 = MUSIC, col 2 = DANCE, col 3 = MOVING
	var nRows = PERMUTATIONS.length + 1; // +1 for header row
	outlet(6, "rows", nRows);
	outlet(6, "cols", 4);
	outlet(6, "clear");
	outlet(6, "col", 0, "width", 30);    // narrow index column
	outlet(6, "col", 1, "width", 150);   // MUSIC names
	outlet(6, "col", 2, "width", 150);   // DANCE names
	outlet(6, "col", 3, "width", 58);    // narrow moving count column
	outlet(6, "set", 0, 0, "#");
	outlet(6, "set", 1, 0, "MUSIC");
	outlet(6, "set", 2, 0, "DANCE");
	outlet(6, "set", 3, 0, "MOVING");
	for (var i = 0; i < PERMUTATIONS.length; i++) {
		outlet(6, "set", 0, i + 1, String(i + 1));
		outlet(6, "set", 1, i + 1, PERMUTATIONS[i].musicians.join(", "));
		outlet(6, "set", 2, i + 1, PERMUTATIONS[i].dancers.join(", "));
		if (i === PERMUTATIONS.length - 1) {
			outlet(6, "set", 3, i + 1, "--");
		} else {
			var curr = PERMUTATIONS[i], next = PERMUTATIONS[i + 1];
			var moving = 0;
			for (var m = 0; m < curr.musicians.length; m++) {
				if (next.dancers.indexOf(curr.musicians[m]) !== -1) moving++;
			}
			for (var d = 0; d < curr.dancers.length; d++) {
				if (next.musicians.indexOf(curr.dancers[d]) !== -1) moving++;
			}
			outlet(6, "set", 3, i + 1, String(moving));
		}
	}
	outlet(6, "count", PERMUTATIONS.length);
}

// ── perm building ────────────────────────────────────────────

// Canonical key for a perm (musicians sorted | dancers sorted)
function permKey(perm) {
	return perm.musicians.slice().sort().join(",") + "|" + perm.dancers.slice().sort().join(",");
}

// Key of the mirror of perm (roles swapped)
function mirrorKey(perm) {
	return perm.dancers.slice().sort().join(",") + "|" + perm.musicians.slice().sort().join(",");
}

function buildPerms(performers) {
	var n = performers.length;
	var result = [];
	for (var mask = 1; mask < (1 << n) - 1; mask++) {
		var musicians = [], dancers = [];
		for (var i = 0; i < n; i++) {
			if (mask & (1 << i)) musicians.push(performers[i]);
			else                 dancers.push(performers[i]);
		}
		if (musicians.length > MAX_GROUP_MUSIC || dancers.length > MAX_GROUP_DANCE) continue;
		// Hard ratio: 0:N (music==0) → never appear as musician.
		//             N:0 (dance==0) → never appear as dancer.
		var skip = false;
		for (var m = 0; m < musicians.length && !skip; m++) {
			if (musicians[m].ratio.music === 0) skip = true;
		}
		for (var d = 0; d < dancers.length && !skip; d++) {
			if (dancers[d].ratio.dance === 0) skip = true;
		}
		if (skip) continue;
		if (musicians.length === 1 && musicians[0].noSoloMusic)  continue;
		if (dancers.length   === 1 && dancers[0].noSoloDance)    continue;
		result.push({
			musicians: musicians.map(function(p) { return p.name; }),
			dancers:   dancers.map(function(p)   { return p.name; })
		});
	}
	return result;
}

// Select n perms, guaranteeing each performer appears in both roles
// while biasing toward each performer's target Music:Dance ratio.
function selectPerms(perms, n, active) {
	var pool     = shuffle(perms.slice());
	var selected = [];
	var covered  = {};
	var counts   = {};
	var ratios   = {};
	active.forEach(function(p) {
		counts[p.name] = { M: 0, D: 0 };
		ratios[p.name] = p.ratio || { music: 1, dance: 1 };
	});

	while (selected.length < n && pool.length > 0) {
		var bestIdx = 0, bestKey = -Infinity;
		for (var p = 0; p < pool.length; p++) {
			var coverScore = 0;
			for (var m = 0; m < pool[p].musicians.length; m++) {
				if (!covered[pool[p].musicians[m] + ":M"]) coverScore++;
			}
			for (var d = 0; d < pool[p].dancers.length; d++) {
				if (!covered[pool[p].dancers[d]   + ":D"]) coverScore++;
			}
			var ratioPenalty = 0;
			for (var m2 = 0; m2 < pool[p].musicians.length; m2++) {
				ratioPenalty += ratioCost(pool[p].musicians[m2], "M", counts, ratios);
			}
			for (var d2 = 0; d2 < pool[p].dancers.length; d2++) {
				ratioPenalty += ratioCost(pool[p].dancers[d2], "D", counts, ratios);
			}
			// Coverage dominates; ratio is the tiebreaker.
			var key = coverScore * 1000 - ratioPenalty;
			if (key > bestKey) { bestKey = key; bestIdx = p; }
		}

		var chosen = pool.splice(bestIdx, 1)[0];
		selected.push(chosen);
		for (var m = 0; m < chosen.musicians.length; m++) {
			covered[chosen.musicians[m] + ":M"] = true;
			counts[chosen.musicians[m]].M += 1;
		}
		for (var d = 0; d < chosen.dancers.length; d++) {
			covered[chosen.dancers[d] + ":D"] = true;
			counts[chosen.dancers[d]].D += 1;
		}
	}
	return selected;
}

// Ratio compliance penalty: 0 = perfect, larger = further from target.
// Computes |target_music_fraction − projected_music_fraction| after this
// perm contributes one role-count to the named performer.
function ratioCost(name, role, counts, ratios) {
	var r = ratios[name];
	if (!r) return 0;
	var sum = r.music + r.dance;
	if (sum === 0) return 0;
	var c = counts[name];
	var newM = c.M + (role === "M" ? 1 : 0);
	var newD = c.D + (role === "D" ? 1 : 0);
	var total = newM + newD;
	if (total === 0) return 0;
	var targetMFrac = r.music / sum;
	var actualMFrac = newM / total;
	return Math.abs(targetMFrac - actualMFrac);
}

function sendSummaryData() {
	// Include performer constraints so perm-summary.js can suppress
	// observations that are expected (e.g. noSoloDance → never a dance solo).
	var constraints = {};
	var keys = Object.keys(PERFORMERS).sort(function(a, b) { return parseInt(a) - parseInt(b); });
	keys.forEach(function(k) {
		var p = PERFORMERS[k];
		if (p.name && p.name.trim().length > 0 && p.name !== "0") {
			constraints[p.name.trim()] = {
				noSoloMusic: p.noSoloMusic,
				noSoloDance: p.noSoloDance,
				ratio: p.ratio || { music: 1, dance: 1 }
			};
		}
	});
	outlet(7, "permsdata", JSON.stringify({ permutations: PERMUTATIONS, constraints: constraints }));
}

// ── ordering ─────────────────────────────────────────────────

function roleChanges(a, b) {
	var count = 0;
	for (var i = 0; i < a.musicians.length; i++) {
		if (b.dancers.indexOf(a.musicians[i]) !== -1) count++;
	}
	return count;
}

// Returns {name: {role, streak}} tracking consecutive same-role at end of ordered[]
function buildRoleState(ordered) {
	var state = {};
	if (ordered.length === 0) return state;
	var last = ordered[ordered.length - 1];
	var allNames = {};
	ordered.forEach(function(p) {
		p.musicians.forEach(function(n) { allNames[n] = true; });
		p.dancers.forEach(function(n)   { allNames[n] = true; });
	});
	Object.keys(allNames).forEach(function(name) {
		var role = last.musicians.indexOf(name) !== -1 ? "M" :
		           last.dancers.indexOf(name)   !== -1 ? "D" : null;
		var streak = role ? 1 : 0;
		for (var j = ordered.length - 2; j >= 0 && role; j--) {
			var r = ordered[j].musicians.indexOf(name) !== -1 ? "M" :
			        ordered[j].dancers.indexOf(name)   !== -1 ? "D" : null;
			if (r === role) streak++;
			else break;
		}
		state[name] = { role: role, streak: streak };
	});
	return state;
}

// Hard penalty: blocks streaks beyond MAX_REPEATS (when MAX_REPEATS > 0)
function repeatsPenalty(roleState, nextPerm) {
	var penalty = 0;
	Object.keys(roleState).forEach(function(name) {
		var s = roleState[name];
		if (s.streak >= MAX_REPEATS && s.role) {
			var nextRole = nextPerm.musicians.indexOf(name) !== -1 ? "M" :
			               nextPerm.dancers.indexOf(name)   !== -1 ? "D" : null;
			if (nextRole === s.role) penalty++;
		}
	});
	return penalty;
}

// Soft penalty: always active; grows with streak length beyond SOFT_STREAK_LIMIT.
// Discourages long runs without hard-blocking them.
var SOFT_STREAK_LIMIT = 3;

function softStreakPenalty(roleState, nextPerm) {
	var penalty = 0;
	Object.keys(roleState).forEach(function(name) {
		var s = roleState[name];
		if (s.streak >= SOFT_STREAK_LIMIT && s.role) {
			var nextRole = nextPerm.musicians.indexOf(name) !== -1 ? "M" :
			               nextPerm.dancers.indexOf(name)   !== -1 ? "D" : null;
			if (nextRole === s.role) penalty += (s.streak - SOFT_STREAK_LIMIT + 1);
		}
	});
	return penalty;
}

function optimizeOrder(perms) {
	if (perms.length <= 1) return perms;
	var ordered   = [perms[0]];
	var remaining = perms.slice(1);
	while (remaining.length > 0) {
		var cur       = ordered[ordered.length - 1];
		var roleState = buildRoleState(ordered);
		var bestIdx = 0, bestScore = Infinity;
		for (var i = 0; i < remaining.length; i++) {
			var nxt        = remaining[i];
			var transitions = roleChanges(cur, nxt);
			var score      = transitions;
			if (cur.musicians.length === 1 && nxt.musicians.length === 2) score -= 0.4;
			if (cur.dancers.length   === 1 && nxt.dancers.length   === 2) score -= 0.4;
			score += softStreakPenalty(roleState, nxt) * 0.6;
			if (MAX_REPEATS > 0) score += repeatsPenalty(roleState, nxt) * 1000;
			// Hard cap on transitions per adjacent pair.
			if (MAX_TRANSITIONS > 0 && transitions > MAX_TRANSITIONS) score += 1000;
			// Prevent adjacent mirrors (non-adjacent mirrors are fine).
			if (permKey(nxt) === mirrorKey(cur)) score += 3.0;
			if (score < bestScore) { bestScore = score; bestIdx = i; }
		}
		ordered.push(remaining[bestIdx]);
		remaining.splice(bestIdx, 1);
	}
	return ordered;
}

// ── display ──────────────────────────────────────────────────

function sendList(outN, sel, arr) {
	switch (arr.length) {
		case 0:  outlet(outN, sel); break;
		case 1:  outlet(outN, sel, arr[0]); break;
		case 2:  outlet(outN, sel, arr[0], arr[1]); break;
		case 3:  outlet(outN, sel, arr[0], arr[1], arr[2]); break;
		case 4:  outlet(outN, sel, arr[0], arr[1], arr[2], arr[3]); break;
		case 5:  outlet(outN, sel, arr[0], arr[1], arr[2], arr[3], arr[4]); break;
		case 6:  outlet(outN, sel, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5]); break;
		case 7:  outlet(outN, sel, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6]); break;
		case 8:  outlet(outN, sel, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7]); break;
		case 9:  outlet(outN, sel, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8]); break;
		default: outlet(outN, sel, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8], arr[9]); break;
	}
}

function displayCurrent() {
	if (CURRENT_IDX < 0 || CURRENT_IDX >= PERMUTATIONS.length) return;
	var perm = PERMUTATIONS[CURRENT_IDX];
	sendList(0, "setmusicians", perm.musicians);
	sendList(0, "setdancers",   perm.dancers);
	updateNextMover();
	outlet(1, COUNTDOWN);
}

function updateNextMover() {
	if (CURRENT_IDX >= PERMUTATIONS.length - 1) {
		outlet(0, "setnext");
		outlet(2, "-- last section --");
		return;
	}
	var cur = PERMUTATIONS[CURRENT_IDX];
	var nxt = PERMUTATIONS[CURRENT_IDX + 1];
	var moverNames = [], moverTexts = [];
	cur.musicians.forEach(function(name) {
		if (nxt.dancers.indexOf(name) !== -1) {
			moverNames.push(name);
			moverTexts.push(name + " to Dance");
		}
	});
	cur.dancers.forEach(function(name) {
		if (nxt.musicians.indexOf(name) !== -1) {
			moverNames.push(name);
			moverTexts.push(name + " to Music");
		}
	});
	sendList(0, "setnext", moverNames);
	outlet(2, moverTexts.length > 0 ? moverTexts.join(", ") : "no change");
}

// ── transport ────────────────────────────────────────────────

function run(n) {
	if (!n) { PRE_START = false; return; }
	if (CURRENT_IDX >= 0 && PERMUTATIONS.length > 0 && !SECTION_STARTED) {
		PRE_START     = true;
		PRE_COUNTDOWN = COUNTDOWN_START;
		outlet(1, PRE_COUNTDOWN);
		outlet(3, "Starting in " + PRE_COUNTDOWN + "...");
	}
}

function tick() {
	if (CURRENT_IDX < 0 || PERMUTATIONS.length === 0) return;
	if (PRE_START) {
		PRE_COUNTDOWN--;
		outlet(1, PRE_COUNTDOWN);
		if (PRE_COUNTDOWN <= 0) {
			PRE_START       = false;
			SECTION_STARTED = true;
			COUNTDOWN       = SECS_PER_PERM;
			outlet(0, "setactive", 1);
			displayCurrent();
			outlet(3, "Section 1 / " + PERMUTATIONS.length);
		}
		return;
	}
	if (!SECTION_STARTED) return;
	COUNTDOWN--;
	outlet(1, COUNTDOWN);
	if (COUNTDOWN <= 0) nextSection();
}

function bang() { nextSection(); }

function nextSection() {
	CURRENT_IDX++;
	if (CURRENT_IDX >= PERMUTATIONS.length) {
		CURRENT_IDX = PERMUTATIONS.length - 1;
		outlet(0, "setactive", 0);  // grey names at end
		outlet(3, "Performance complete!");
		outlet(4, "bang");
		return;
	}
	COUNTDOWN = SECS_PER_PERM;
	displayCurrent();
	outlet(3, "Section " + (CURRENT_IDX + 1) + " / " + PERMUTATIONS.length);
}

function reset() {
	if (PERMUTATIONS.length === 0) return;
	CURRENT_IDX     = 0;
	COUNTDOWN       = SECS_PER_PERM;
	SECTION_STARTED = false;
	PRE_START       = false;
	outlet(0, "setactive", 0);
	displayCurrent();
	outlet(1, COUNTDOWN_START);
	outlet(3, "Reset to section 1");
}

// ── init ─────────────────────────────────────────────────────

function init() {
	// Set cellblock dimensions and column widths so the 4 columns
	// (Name | NoSoloMusic | NoSoloDance | Music:Dance) render cleanly.
	outlet(5, "rows", 6);
	outlet(5, "cols", 4);
	outlet(5, "clear");
	outlet(5, "col", 0, "width", 55);
	outlet(5, "col", 1, "width", 60);
	outlet(5, "col", 2, "width", 60);
	outlet(5, "col", 3, "width", 40);

	// Defaults: row 0 = name, row 1 = noSoloMusic, row 2 = noSoloDance,
	// row 3 = ratio. Cols 0..5 = the six default performers.
	var defaults = [
		[0, 0, "Maya"], [0, 1, "Jaco"], [0, 2, "John"], [0, 3, "Mikhail"], [0, 4, "Anita"], [0, 5, "Andy"],
		[1, 0, 0],      [1, 1, 0],      [1, 2, 0],      [1, 3, 0],         [1, 4, 0],       [1, 5, 0],
		[2, 0, 0],      [2, 1, 0],      [2, 2, 0],      [2, 3, 0],         [2, 4, 0],       [2, 5, 0],
		[3, 0, "1:1"],  [3, 1, "1:1"],  [3, 2, "1:1"],  [3, 3, "1:1"],     [3, 4, "1:1"],   [3, 5, "1:1"]
	];
	for (var i = 0; i < defaults.length; i++) {
		var row = defaults[i][0], col = defaults[i][1], val = defaults[i][2];
		list(row, col, val);
		outlet(5, "set", row, col, val);
	}
}
