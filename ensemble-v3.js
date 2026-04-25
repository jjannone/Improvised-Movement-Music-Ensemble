inlets = 1;
outlets = 6;

// Outlets:
// 0: display messages → display.js (setmusicians, setdancers, setnext)
// 1: countdown int → display.js timer + num_countdown
// 2: next-mover text (human readable) → msg_next
// 3: status text → print
// 4: bang on completion
// 5: set row col value → jit.cellblock (init only)

var PERFORMERS = {};
var MAX_GROUP_MUSIC = 4;
var MAX_GROUP_DANCE = 4;
var TOTAL_SECS = 3600;
var PERMUTATIONS = [];
var CURRENT_IDX = -1;
var SECS_PER_PERM = 0;
var COUNTDOWN = 0;
var COUNTDOWN_START = 10;  // pre-start countdown duration (seconds)
var PRE_START = false;     // true while pre-start countdown is running
var PRE_COUNTDOWN = 0;     // current pre-start countdown value
var SECTION_STARTED = false; // true once the first section clock has begun

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

function setmaxgroupmusic(n) {
	MAX_GROUP_MUSIC = Math.max(1, parseInt(n));
}

function setmaxgroupdance(n) {
	MAX_GROUP_DANCE = Math.max(1, parseInt(n));
}

function setcountdownstart(n) {
	COUNTDOWN_START = Math.max(1, parseInt(n));
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
		outlet(3, "Need at least 2 performers");
		return;
	}
	PERMUTATIONS = buildPerms(active);
	if (PERMUTATIONS.length === 0) {
		outlet(3, "No valid permutations with these constraints");
		return;
	}
	PERMUTATIONS = optimizeOrder(PERMUTATIONS);
	SECS_PER_PERM = Math.max(1, Math.round(TOTAL_SECS / PERMUTATIONS.length));
	CURRENT_IDX = 0;
	COUNTDOWN = SECS_PER_PERM;
	SECTION_STARTED = false;
	PRE_START = false;

	post("--- " + PERMUTATIONS.length + " sections, " + SECS_PER_PERM + "s each ---\n");
	PERMUTATIONS.forEach(function(p, i) {
		post((i + 1) + ". Music: " + p.musicians.join(", ") + "  |  Dance: " + p.dancers.join(", ") + "\n");
	});

	displayCurrent();
	outlet(1, COUNTDOWN_START);  // show the pre-start countdown value in the number box
	outlet(3, PERMUTATIONS.length + " sections, " + SECS_PER_PERM + "s each");
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
		if (musicians.length > MAX_GROUP_MUSIC || dancers.length > MAX_GROUP_DANCE) continue;
		if (musicians.length === 1 && musicians[0].noSoloMusic) continue;
		if (dancers.length === 1 && dancers[0].noSoloDance) continue;
		result.push({
			musicians: musicians.map(function(p) { return p.name; }),
			dancers:   dancers.map(function(p)   { return p.name; })
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
			var score = roleChanges(cur, remaining[i]);
			var nxt = remaining[i];
			if (cur.musicians.length === 1 && nxt.musicians.length === 2) score -= 0.4;
			if (cur.dancers.length === 1 && nxt.dancers.length === 2) score -= 0.4;
			if (score < bestScore) { bestScore = score; bestIdx = i; }
		}
		ordered.push(remaining[bestIdx]);
		remaining.splice(bestIdx, 1);
	}
	return ordered;
}

function sendList(outletN, selector, arr) {
	switch (arr.length) {
		case 0:  outlet(outletN, selector); break;
		case 1:  outlet(outletN, selector, arr[0]); break;
		case 2:  outlet(outletN, selector, arr[0], arr[1]); break;
		case 3:  outlet(outletN, selector, arr[0], arr[1], arr[2]); break;
		case 4:  outlet(outletN, selector, arr[0], arr[1], arr[2], arr[3]); break;
		case 5:  outlet(outletN, selector, arr[0], arr[1], arr[2], arr[3], arr[4]); break;
		case 6:  outlet(outletN, selector, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5]); break;
		case 7:  outlet(outletN, selector, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6]); break;
		case 8:  outlet(outletN, selector, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7]); break;
		case 9:  outlet(outletN, selector, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8]); break;
		default: outlet(outletN, selector, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6], arr[7], arr[8], arr[9]); break;
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
	var moverNames = [];
	var moverTexts = [];
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

// Called by Run toggle (via prepend run) with value 1 (on) or 0 (off)
function run(n) {
	if (!n) {
		PRE_START = false;
		return;
	}
	// Toggle turned on: start pre-start countdown only if section hasn't begun yet
	if (CURRENT_IDX >= 0 && PERMUTATIONS.length > 0 && !SECTION_STARTED) {
		PRE_START = true;
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
			PRE_START = false;
			SECTION_STARTED = true;
			COUNTDOWN = SECS_PER_PERM;
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

function bang() {
	nextSection();
}

function nextSection() {
	CURRENT_IDX++;
	if (CURRENT_IDX >= PERMUTATIONS.length) {
		CURRENT_IDX = PERMUTATIONS.length - 1;
		outlet(3, "Performance complete!");
		outlet(4, "bang");
		return;
	}
	COUNTDOWN = SECS_PER_PERM;
	displayCurrent();
	outlet(3, "Section " + (CURRENT_IDX + 1) + " / " + PERMUTATIONS.length);
}

function init() {
	var defaults = [
		[0, 0, "Maya"],  [0, 1, "Ellie"], [0, 2, "Jaco"], [0, 3, "Anita"], [0, 4, "John"],
		[1, 0, 0],       [1, 1, 0],       [1, 2, 0],      [1, 3, 0],       [1, 4, 1],
		[2, 0, 0],       [2, 1, 0],       [2, 2, 0],      [2, 3, 0],       [2, 4, 0]
	];
	for (var i = 0; i < defaults.length; i++) {
		var row = defaults[i][0], col = defaults[i][1], val = defaults[i][2];
		list(row, col, val);
		outlet(5, "set", row, col, val);
	}
}

function reset() {
	if (PERMUTATIONS.length === 0) return;
	CURRENT_IDX = 0;
	COUNTDOWN = SECS_PER_PERM;
	SECTION_STARTED = false;
	PRE_START = false;
	displayCurrent();
	outlet(1, COUNTDOWN_START);
	outlet(3, "Reset to section 1");
}
