inlets = 2;   // 0: state/control from brain, 1: render bang from jit.world
outlets = 1;  // to poly~

var V_MUSIC_HDR  = 1;
var V_DANCE_HDR  = 2;
var V_TIMER      = 3;
var V_POOL_START = 4;
var V_POOL_SIZE  = 12;

var MUSIC_X     = -1.0;
var DANCE_X     =  0.0;
var HEADER_Y    =  0.68;
var NAMES_Y_TOP =  0.35;
var NAME_STEP   =  0.32;
var TIMER_Y     = -0.78;

var FPS          = 60;
var ANIM_SECS    = 5;
var ANIM_SPEED   = calcSpeed(ANIM_SECS);

var NAME_FONT_SIZE   = 150;
var HEADER_FONT_SIZE = 45;
var TIMER_FONT_SIZE  = 37;

function calcSpeed(secs) {
	return 1 - Math.pow(0.01, 1 / (Math.max(0.1, secs) * FPS));
}

function setanimsecs(n) {
	ANIM_SECS  = parseFloat(n);
	ANIM_SPEED = calcSpeed(ANIM_SECS);
}

function setnamesize(n) {
	NAME_FONT_SIZE = Math.max(1, parseInt(n));
	applyFontSizes();
}

function setheadersize(n) {
	HEADER_FONT_SIZE = Math.max(1, parseInt(n));
	voice(V_MUSIC_HDR, "fontsize", HEADER_FONT_SIZE);
	voice(V_DANCE_HDR, "fontsize", HEADER_FONT_SIZE);
}

function settimersize(n) {
	TIMER_FONT_SIZE = Math.max(1, parseInt(n));
	voice(V_TIMER, "fontsize", TIMER_FONT_SIZE);
}

function applyFontSizes() {
	var names = Object.keys(STATE);
	for (var i = 0; i < names.length; i++) {
		voice(STATE[names[i]].voice, "fontsize", NAME_FONT_SIZE);
	}
}

var STATE      = {};
var VOICE_USED = {};
var MUSICIANS  = [];
var DANCERS    = [];
var NEXT_NAMES = [];
var DIRTY      = false;
var initialized = false;

// ── inlet handlers ───────────────────────────────────────────

function setmusicians() {
	MUSICIANS = mergeOrdered(MUSICIANS, argsToNames(arguments));
	DIRTY = true;
}

function setdancers() {
	DANCERS = mergeOrdered(DANCERS, argsToNames(arguments));
	DIRTY = true;
}

function setnext() {
	NEXT_NAMES = argsToNames(arguments);
	if (!DIRTY) updateTargetColors();
}

function msg_int(n) {
	updateTimer(n);
}

function bang() {
	if (inlet === 1) renderFrame();
}

// ── rendering ────────────────────────────────────────────────

function renderFrame() {
	if (!initialized) { initStatic(); initialized = true; }

	if (DIRTY) {
		reconcile();
		calcTargets();
		updateTargetColors();
		DIRTY = false;
	}

	var names = Object.keys(STATE);
	for (var i = 0; i < names.length; i++) {
		var s = STATE[names[i]];
		s.cx += (s.tx - s.cx) * ANIM_SPEED;
		s.cy += (s.ty - s.cy) * ANIM_SPEED;
		s.cr += (s.tcr - s.cr) * ANIM_SPEED;
		s.cg += (s.tcg - s.cg) * ANIM_SPEED;
		s.cb += (s.tcb - s.cb) * ANIM_SPEED;
		voice(s.voice, "position", r4(s.cx), r4(s.cy), 0);
		voice(s.voice, "color", r4(s.cr), r4(s.cg), r4(s.cb), 1);
	}
}

function reconcile() {
	var all = unique(MUSICIANS.concat(DANCERS));

	// Remove departed
	var names = Object.keys(STATE);
	for (var i = 0; i < names.length; i++) {
		var name = names[i];
		if (all.indexOf(name) === -1) {
			voice(STATE[name].voice, "text", " ");
			freeVoice(STATE[name].voice);
			delete STATE[name];
		}
	}

	// Add arrivals — start at computed target position
	for (var j = 0; j < all.length; j++) {
		var n = all[j];
		if (!STATE[n]) {
			var col  = MUSICIANS.indexOf(n) !== -1 ? "music" : "dance";
			var v    = allocVoice(n);
			var list = col === "music" ? MUSICIANS : DANCERS;
			var idx  = list.indexOf(n);
			var ix   = col === "music" ? MUSIC_X : DANCE_X;
			var iy   = NAMES_Y_TOP - idx * NAME_STEP;
			var rgb  = roleColor(col);
			STATE[n] = { voice: v, col: col, cx: ix, cy: iy, tx: ix, ty: iy,
			             cr: rgb[0], cg: rgb[1], cb: rgb[2],
			             tcr: rgb[0], tcg: rgb[1], tcb: rgb[2] };
			voice(v, "font", "Arial Black");
			voice(v, "fontsize", NAME_FONT_SIZE);
			voice(v, "text", n);
		}
	}
}

function calcTargets() {
	calcColumn(MUSICIANS, "music", MUSIC_X);
	calcColumn(DANCERS,   "dance", DANCE_X);
}

function calcColumn(list, col, targetX) {
	for (var i = 0; i < list.length; i++) {
		var name = list[i];
		if (!STATE[name]) continue;
		var s = STATE[name];
		s.col = col;
		s.tx  = targetX;
		s.ty  = NAMES_Y_TOP - i * NAME_STEP;
	}
}

function updateTargetColors() {
	var names = Object.keys(STATE);
	for (var i = 0; i < names.length; i++) {
		var name = names[i];
		var s = STATE[name];
		var rgb = NEXT_NAMES.indexOf(name) !== -1 ? [1.0, 0.85, 0.0] : roleColor(s.col);
		s.tcr = rgb[0]; s.tcg = rgb[1]; s.tcb = rgb[2];
	}
}

function roleColor(col) {
	return col === "music" ? [0.6, 0.82, 1.0] : [1.0, 0.72, 0.88];
}

function updateTimer(secs) {
	var m = Math.floor(secs / 60);
	var s = secs % 60;
	voice(V_TIMER, "text", m + ":" + (s < 10 ? "0" : "") + s);
	var r = secs < 10 ? 1.0 : secs < 30 ? 0.9 : 0.4;
	var g = secs < 10 ? 0.3 : secs < 30 ? 0.7 : 1.0;
	voice(V_TIMER, "color", r, g, 0.3, 1);
}

function initStatic() {
	voice(V_MUSIC_HDR, "font", "Arial");
	voice(V_MUSIC_HDR, "fontsize", HEADER_FONT_SIZE);
	voice(V_MUSIC_HDR, "text", "music");
	voice(V_MUSIC_HDR, "position", -1.0, HEADER_Y, 0);
	voice(V_MUSIC_HDR, "color", 0.55, 0.55, 0.55, 1);

	voice(V_DANCE_HDR, "font", "Arial");
	voice(V_DANCE_HDR, "fontsize", HEADER_FONT_SIZE);
	voice(V_DANCE_HDR, "text", "dance");
	voice(V_DANCE_HDR, "position", 0.0, HEADER_Y, 0);
	voice(V_DANCE_HDR, "color", 0.55, 0.55, 0.55, 1);

	voice(V_TIMER, "font", "Arial");
	voice(V_TIMER, "fontsize", TIMER_FONT_SIZE);
	voice(V_TIMER, "text", "--:--");
	voice(V_TIMER, "position", 0, TIMER_Y, 0);
	voice(V_TIMER, "color", 0.5, 0.9, 0.4, 1);
}

// ── voice helpers ────────────────────────────────────────────

function voice(v, sel, a, b, c, d) {
	outlet(0, "target", v);
	if      (d !== undefined) outlet(0, sel, a, b, c, d);
	else if (c !== undefined) outlet(0, sel, a, b, c);
	else if (b !== undefined) outlet(0, sel, a, b);
	else if (a !== undefined) outlet(0, sel, a);
	else                      outlet(0, sel);
}

function allocVoice(name) {
	for (var i = V_POOL_START; i < V_POOL_START + V_POOL_SIZE; i++) {
		if (!VOICE_USED[i]) { VOICE_USED[i] = name; return i; }
	}
	return V_POOL_START;
}

function freeVoice(v) { delete VOICE_USED[v]; }

// ── list helpers ─────────────────────────────────────────────

function argsToNames(args) {
	var out = [];
	for (var i = 0; i < args.length; i++) {
		var s = String(args[i]).trim();
		if (s.length > 0) out.push(s);
	}
	return out;
}

function mergeOrdered(old_list, new_list) {
	var kept = [];
	for (var i = 0; i < old_list.length; i++) {
		if (new_list.indexOf(old_list[i]) !== -1) kept.push(old_list[i]);
	}
	for (var j = 0; j < new_list.length; j++) {
		if (kept.indexOf(new_list[j]) === -1) kept.push(new_list[j]);
	}
	return kept;
}

function unique(arr) {
	var seen = {}, out = [];
	for (var i = 0; i < arr.length; i++) {
		if (!seen[arr[i]]) { seen[arr[i]] = true; out.push(arr[i]); }
	}
	return out;
}

function r4(n) { return Math.round(n * 10000) / 10000; }
