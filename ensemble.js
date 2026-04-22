inlets = 1;
outlets = 6;

// Outlets:
// 0: messages to musicians jit.cellblock (clear / set row col name)
// 1: messages to dancers jit.cellblock
// 2: next-mover text (symbol)
// 3: countdown integer (seconds)
// 4: status text (symbol)
// 5: bang on completion

var PERFORMERS = {};
var MAX_GROUP = 4;
var TOTAL_SECS = 3600;
var PERMUTATIONS = [];
var CURRENT_IDX = -1;
var SECS_PER_PERM = 0;
var COUNTDOWN = 0;

function list() {
	var row = arguments[0];
	var col = arguments[1];
	var value = Array.prototype.slice.call(arguments, 2).join(" ");
	if (!PERFORMERS[col]) {
		PERFORMERS[col] = { name: "", noSoloDance: false, noSoloMusic: false };
	}
	if (row === 0) {
		PERFORMERS[col].name = String(value);
	} else if (row === 1) {
		PERFORMERS[col].noSoloDance = (value == 1);
	} else if (row === 2) {
		PERFORMERS[col].noSoloMusic = (value == 1);
	}
}

function setmaxgroup(n) {
	MAX_GROUP = Math.max(1, parseInt(n));
}

function setduration(n) {
	TOTAL_SECS = Math.max(60, parseInt(n) * 60);
}

function generate() {
	var active = [];
	var keys = Object.keys(PERFORMERS).sort(function(a, b) { return parseInt(a) - parseInt(b); });
	for (var k = 0; k < keys.length; k++) {
		var p = PERFORMERS[keys[k]];
		if (p.name && p.name.trim().length > 0 && p.name !== "0") {
			active.push({ name: p.name.trim(), noSoloDance: p.noSoloDance, noSoloMusic: p.noSoloMusic });
		}
	}
	if (active.length < 2) {
		outlet(4, "Need at least 2 performers");
		return;
	}

	PERMUTATIONS = buildPerms(active);
	if (PERMUTATIONS.length === 0) {
		outlet(4, "No valid permutations with these constraints");
		return;
	}

	PERMUTATIONS = optimizeOrder(PERMUTATIONS);
	SECS_PER_PERM = Math.max(1, Math.round(TOTAL_SECS / PERMUTATIONS.length));
	CURRENT_IDX = 0;
	COUNTDOWN = SECS_PER_PERM;

	post("--- " + PERMUTATIONS.length + " sections, " + SECS_PER_PERM + "s each ---\n");
	PERMUTATIONS.forEach(function(p, i) {
		post((i + 1) + ". Music: " + p.musicians.join(", ") + "  |  Dance: " + p.dancers.join(", ") + "\n");
	});

	displayCurrent();
	outlet(4, PERMUTATIONS.length + " sections, " + SECS_PER_PERM + "s each");
}

function buildPerms(performers) {
	var n = performers.length;
	var result = [];
	for (var mask = 1; mask < (1 << n) - 1; mask++) {
		var musicians = [];
		var dancers = [];
		for (var i = 0; i < n; i++) {
			if (mask & (1 << i)) {
				musicians.push(performers[i]);
			} else {
				dancers.push(performers[i]);
			}
		}
		if (musicians.length > MAX_GROUP || dancers.length > MAX_GROUP) continue;
		if (musicians.length === 1 && musicians[0].noSoloMusic) continue;
		if (dancers.length === 1 && dancers[0].noSoloDance) continue;
		result.push({
			musicians: musicians.map(function(p) { return p.name; }),
			dancers: dancers.map(function(p) { return p.name; })
		});
	}
	return result;
}

function roleChanges(a, b) {
	var count = 0;
	for (var i = 0; i < a.musicians.length; i++) {
		if (b.dancers.indexOf(a.musicians[i]) !== -1) count++;
	}
	return count;
}

function optimizeOrder(perms) {
	if (perms.length <= 1) return perms;
	var ordered = [perms[0]];
	var remaining = perms.slice(1);
	while (remaining.length > 0) {
		var cur = ordered[ordered.length - 1];
		var bestIdx = 0;
		var bestScore = Infinity;
		for (var i = 0; i < remaining.length; i++) {
			var changes = roleChanges(cur, remaining[i]);
			var score = changes;
			var nxt = remaining[i];
			// Prefer: a soloist being joined (one person gains a partner)
			if (cur.musicians.length === 1 && nxt.musicians.length === 2) score -= 0.4;
			if (cur.dancers.length === 1 && nxt.dancers.length === 2) score -= 0.4;
			if (score < bestScore) {
				bestScore = score;
				bestIdx = i;
			}
		}
		ordered.push(remaining[bestIdx]);
		remaining.splice(bestIdx, 1);
	}
	return ordered;
}

function displayCurrent() {
	if (CURRENT_IDX < 0 || CURRENT_IDX >= PERMUTATIONS.length) return;
	var perm = PERMUTATIONS[CURRENT_IDX];

	outlet(0, "clear");
	perm.musicians.forEach(function(name, i) {
		outlet(0, "set", i, 0, name);
	});

	outlet(1, "clear");
	perm.dancers.forEach(function(name, i) {
		outlet(1, "set", i, 0, name);
	});

	updateNextMover();
	outlet(3, COUNTDOWN);
}

function updateNextMover() {
	if (CURRENT_IDX >= PERMUTATIONS.length - 1) {
		outlet(2, "-- last section --");
		return;
	}
	var cur = PERMUTATIONS[CURRENT_IDX];
	var nxt = PERMUTATIONS[CURRENT_IDX + 1];
	var movers = [];
	cur.musicians.forEach(function(name) {
		if (nxt.dancers.indexOf(name) !== -1) movers.push(name + " to Dance");
	});
	cur.dancers.forEach(function(name) {
		if (nxt.musicians.indexOf(name) !== -1) movers.push(name + " to Music");
	});
	outlet(2, movers.length > 0 ? movers.join(", ") : "no change");
}

function tick() {
	if (CURRENT_IDX < 0 || PERMUTATIONS.length === 0) return;
	COUNTDOWN--;
	outlet(3, COUNTDOWN);
	if (COUNTDOWN <= 0) nextSection();
}

function bang() {
	nextSection();
}

function nextSection() {
	CURRENT_IDX++;
	if (CURRENT_IDX >= PERMUTATIONS.length) {
		CURRENT_IDX = PERMUTATIONS.length - 1;
		outlet(4, "Performance complete!");
		outlet(5, "bang");
		return;
	}
	COUNTDOWN = SECS_PER_PERM;
	displayCurrent();
	outlet(4, "Section " + (CURRENT_IDX + 1) + " / " + PERMUTATIONS.length);
}

function reset() {
	if (PERMUTATIONS.length === 0) return;
	CURRENT_IDX = 0;
	COUNTDOWN = SECS_PER_PERM;
	displayCurrent();
	outlet(4, "Reset to section 1");
}
