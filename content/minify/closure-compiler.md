---
title: Online Closure Compiler ออนไลน์ ฟรี
h1: Online Closure Compiler
description: Online Closure Compiler ย่อ JavaScript และ CSS ฟรี เลือกระดับ WHITESPACE_ONLY หรือ SIMPLE ตรวจ error ดูขนาด gzip ในเบราว์เซอร์ ปลอดภัย ใช้ได้ทุกอุปกรณ์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-27T09:00:00+07:00'
weight: 171
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- Online Closure Compiler
- Online Closure Compiler ออนไลน์
- เครื่องมือนักพัฒนา
- ย่อ JavaScript
- ย่อ CSS
- minify JavaScript
- minify CSS
- JavaScript minifier
---

บีบอัดไฟล์ JavaScript และ CSS ได้ทันที เลือกระดับการย่อ ตรวจหาข้อผิดพลาด และดูขนาดไฟล์ก่อนและหลังย่อ โค้ดทั้งหมดประมวลผลในเบราว์เซอร์ของคุณ ไม่ถูกส่งไปยังเซิร์ฟเวอร์

<div class="cc" id="ccApp">
<div class="cc-tabs" role="tablist" aria-label="โหมดการนำเข้า">
<button type="button" class="cc-tab is-active" role="tab" aria-selected="true" data-tab="text">Textarea</button>
<button type="button" class="cc-tab" role="tab" aria-selected="false" data-tab="files">ไฟล์</button>
<button type="button" class="cc-tab" role="tab" aria-selected="false" data-tab="quick">ดาวน์โหลดด่วน</button>
</div>
<div class="cc-opts">
<label>ภาษา
<select id="ccMode">
<option value="auto">ตรวจจับอัตโนมัติ</option>
<option value="js">JavaScript</option>
<option value="css">CSS</option>
</select>
</label>
<label>ระดับการย่อ
<select id="ccLevel">
<option value="SIMPLE">SIMPLE (แนะนำ)</option>
<option value="WHITESPACE_ONLY">WHITESPACE_ONLY (ปลอดภัยที่สุด)</option>
</select>
</label>
<label class="cc-chk" title="เก็บคอมเมนต์ที่ขึ้นต้นด้วย /*! หรือมี @license / @preserve">
<input type="checkbox" id="ccLic" checked> เก็บคอมเมนต์ license
</label>
<label class="cc-chk" title="ลบการเรียก console.log, console.warn ฯลฯ (เฉพาะ JavaScript ระดับ SIMPLE) อาร์กิวเมนต์ที่มี side effect จะถูกลบด้วย">
<input type="checkbox" id="ccCon"> ลบ console.*
</label>
<label class="cc-chk" title="ลบคำสั่ง debugger (เฉพาะ JavaScript ระดับ SIMPLE)">
<input type="checkbox" id="ccDbg"> ลบ debugger
</label>
</div>
<section class="cc-pane" data-pane="text">
<div class="cc-io">
<div>
<label for="ccIn" class="cc-lbl">โค้ด JS/CSS</label>
<textarea id="ccIn" spellcheck="false" placeholder="วางโค้ด JavaScript หรือ CSS ที่นี่"></textarea>
</div>
<div>
<label for="ccOut" class="cc-lbl">ผลลัพธ์ที่ย่อขนาดแล้ว</label>
<textarea id="ccOut" spellcheck="false" readonly placeholder="ผลลัพธ์จะแสดงที่นี่"></textarea>
</div>
</div>
<div class="cc-actions">
<button type="button" class="cc-btn" id="ccRun">ย่อโค้ด (Ctrl+Enter)</button>
<button type="button" class="cc-btn sec" id="ccCopy">คัดลอกผลลัพธ์</button>
<button type="button" class="cc-btn sec" id="ccSave">ดาวน์โหลด</button>
<button type="button" class="cc-btn sec" id="ccReset">ตั้งใหม่</button>
<button type="button" class="cc-btn sec" id="ccSampleJs">ตัวอย่าง JS</button>
<button type="button" class="cc-btn sec" id="ccSampleCss">ตัวอย่าง CSS</button>
</div>
<div class="cc-stats" id="ccStats" hidden>
<div class="cc-stat"><b id="ccSIn">-</b><span>ขนาดเดิม</span></div>
<div class="cc-stat"><b id="ccSOut">-</b><span>หลังย่อ</span></div>
<div class="cc-stat"><b id="ccSSave">-</b><span>อัตราส่วนการบีบอัด (ประหยัด)</span></div>
<div class="cc-stat"><b id="ccSGz">-</b><span>gzip (ก่อน → หลัง)</span></div>
<div class="cc-stat"><b id="ccSMode">-</b><span>ภาษาที่ใช้ประมวลผล</span></div>
</div>
<div class="cc-bar" id="ccBar" hidden title="ขนาดหลังย่อเทียบกับขนาดเดิม"><i id="ccBarFill"></i></div>
</section>
<section class="cc-pane" data-pane="files" hidden>
<label class="cc-drop" id="ccDropFiles">
<input type="file" id="ccFileInput" multiple accept=".js,.mjs,.cjs,.css,.txt,text/javascript,text/css,text/plain">
<strong>ลากและวางไฟล์ที่นี่ หรือคลิกเพื่อเลือกไฟล์</strong><br>
<small>รองรับ .js .mjs .cjs .css หลายไฟล์พร้อมกัน ไฟล์จะถูกย่อตามลำดับที่เลือก</small>
</label>
<div class="cc-actions">
<label class="cc-chk"><input type="checkbox" id="ccMerge"> รวมไฟล์ที่เป็นภาษาเดียวกันเป็นไฟล์เดียว (bundle.min)</label>
<button type="button" class="cc-btn sec" id="ccRerun">ย่อใหม่ด้วยตัวเลือกปัจจุบัน</button>
</div>
<div class="cc-files" id="ccFileList"></div>
</section>
<section class="cc-pane" data-pane="quick" hidden>
<label class="cc-drop" id="ccDropQuick">
<input type="file" id="ccQuickInput" multiple accept=".js,.mjs,.cjs,.css,.txt,text/javascript,text/css,text/plain">
<strong>ลากและวางไฟล์ที่นี่ ระบบจะย่อและดาวน์โหลดให้อัตโนมัติ</strong><br>
<small>ไฟล์ผลลัพธ์จะมีชื่อ ชื่อเดิม.min.js หรือ ชื่อเดิม.min.css หากเบราว์เซอร์ถามเรื่องการดาวน์โหลดหลายไฟล์ ให้กดอนุญาต</small>
</label>
<div class="cc-files" id="ccQuickList"></div>
</section>
<div class="cc-diag" id="ccDiag" aria-live="polite"></div>
</div>
<style>
.cc{--cc-bd:rgba(128,128,128,.38);--cc-bg:rgba(128,128,128,.1);--cc-ac:#2563eb;--cc-er:#dc2626;--cc-wn:#d97706;--cc-ok:#16a34a;border:1px solid var(--cc-bd);border-radius:10px;padding:16px;margin:20px 0;font-size:15px;line-height:1.55;color:inherit}
.cc *{box-sizing:border-box}
.cc [hidden]{display:none!important}
.cc-tabs{display:flex;gap:6px;flex-wrap:wrap;margin-bottom:14px}
.cc-tab{font:inherit;color:inherit;background:transparent;border:1px solid var(--cc-bd);border-radius:6px;padding:7px 14px;cursor:pointer}
.cc-tab.is-active{background:var(--cc-ac);border-color:var(--cc-ac);color:#fff}
.cc-opts{display:grid;grid-template-columns:repeat(auto-fit,minmax(190px,1fr));gap:10px 14px;margin-bottom:14px;align-items:end}
.cc-opts label,.cc-lbl{display:flex;flex-direction:column;gap:3px;font-size:13px}
.cc-lbl{margin-bottom:4px;font-weight:600}
.cc label.cc-chk{flex-direction:row;align-items:center;gap:6px;cursor:pointer}
.cc select{font:inherit;color:inherit;background:transparent;border:1px solid var(--cc-bd);border-radius:6px;padding:7px 8px;width:100%}
.cc select option{color:#111;background:#fff}
.cc-io{display:grid;grid-template-columns:1fr 1fr;gap:14px}
@media (max-width:720px){.cc-io{grid-template-columns:1fr}}
.cc textarea{display:block;width:100%;min-height:260px;padding:10px;font:13px/1.5 ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;color:inherit;background:transparent;border:1px solid var(--cc-bd);border-radius:6px;resize:vertical;tab-size:2}
.cc textarea:focus,.cc select:focus,.cc-btn:focus-visible,.cc-tab:focus-visible,.cc-drop:focus-within{outline:2px solid var(--cc-ac);outline-offset:1px}
.cc-actions{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:12px 0}
.cc-btn{font:inherit;font-weight:600;color:#fff;background:var(--cc-ac);border:1px solid var(--cc-ac);border-radius:6px;padding:8px 16px;cursor:pointer}
.cc-btn.sec{color:inherit;background:transparent;border-color:var(--cc-bd);font-weight:500}
.cc-btn:disabled{opacity:.5;cursor:not-allowed}
.cc-stats{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:8px;margin-top:6px}
.cc-stat{background:var(--cc-bg);border-radius:6px;padding:8px 10px}
.cc-stat b{display:block;font-size:16px;overflow-wrap:anywhere}
.cc-stat span{font-size:12px;opacity:.78}
.cc-bar{height:8px;border-radius:4px;background:var(--cc-bg);overflow:hidden;margin-top:10px}
.cc-bar i{display:block;height:100%;width:100%;background:var(--cc-ok)}
.cc-drop{position:relative;display:block;border:2px dashed var(--cc-bd);border-radius:8px;padding:30px 14px;text-align:center;cursor:pointer}
.cc-drop.is-over{border-color:var(--cc-ac);background:var(--cc-bg)}
.cc-drop input{position:absolute;width:1px;height:1px;opacity:0;pointer-events:none}
.cc-drop small{opacity:.78}
.cc-files{display:grid;gap:8px;margin-top:8px}
.cc-file{display:flex;flex-wrap:wrap;gap:6px 12px;align-items:center;justify-content:space-between;border:1px solid var(--cc-bd);border-radius:6px;padding:8px 10px}
.cc-file .nm{font-weight:600;overflow-wrap:anywhere}
.cc-file .meta{font-size:13px;opacity:.85}
.cc-file .bad{color:var(--cc-er)}
.cc-file .cc-btn{padding:5px 10px;font-size:13px}
.cc-diag{margin-top:12px}
.cc-diag ul{list-style:none;margin:0;padding:0;display:grid;gap:6px}
.cc-diag li{border-left:4px solid var(--cc-bd);background:var(--cc-bg);padding:6px 10px;border-radius:0 6px 6px 0;font-size:14px;overflow-wrap:anywhere}
.cc-diag li.error{border-color:var(--cc-er)}
.cc-diag li.warn{border-color:var(--cc-wn)}
.cc-diag li.ok{border-color:var(--cc-ok)}
.cc-diag li.info{border-color:var(--cc-ac)}
</style>
<script>
(function () {
'use strict';
var KW = {'return':1,'typeof':1,'instanceof':1,'in':1,'of':1,'new':1,'delete':1,'void':1,'throw':1,'case':1,'do':1,'else':1,'yield':1,'await':1};
var RESTR = {'return':1,'break':1,'continue':1,'throw':1,'yield':1};
var RE_ID = /[A-Za-z_$\u0080-\uFFFF\\][A-Za-z0-9_$\u0080-\uFFFF\\]*/y;
var RE_NUM = /(?:0[xXbBoO][0-9a-fA-F_]+n?|(?:\d[\d_]*(?:\.[\d_]*)?|\.\d[\d_]*)(?:[eE][+-]?\d+)?n?)/y;
var RE_P = /(?:>>>=|\.\.\.|===|!==|\*\*=|<<=|>>=|>>>|&&=|\|\|=|\?\?=|=>|==|!=|<=|>=|&&|\|\||\?\?|\?\.|\+\+|--|\+=|-=|\*=|\/=|%=|&=|\|=|\^=|<<|>>|\*\*|[{}()\[\];,<>+\-*\/%&|^!~?:=.@#])/y;
var WORD = /[A-Za-z0-9_$\\\u0080-\uFFFF]/;
var DROP_AFTER = /^(?:[{(\[,;:?=+\-*\/%&|^!~<>.@]|=>|[=!]==?|[-+*\/%&|^]=|<<=?|>>>?=?|\*\*=?|&&=?|\|\|=?|\?\?=?|\?\.|<=|>=|\.\.\.)$/;
var DROP_BEFORE = /^(?:[)\]},;.:?=*\/%&|^<>+\-]|=>|[=!]==?|\*\*|&&|\|\||\?\?|\?\.|<=|>=|<<|>>|\.\.\.)$/;
var CONM = /^(?:log|debug|info|warn|error|trace|table|dir|time|timeEnd|group|groupEnd|assert)$/;
function lineOf(s, i) { var n = 1; for (var k = 0; k < i && k < s.length; k++) { if (s.charCodeAt(k) === 10) { n++; } } return n; }
function skipStr(s, i, q) {
var n = s.length; i++;
while (i < n) {
var c = s[i];
if (c === '\\') { i += (s[i + 1] === '\r' && s[i + 2] === '\n') ? 3 : 2; continue; }
if (c === q) { return i + 1; }
if (c === '\n' || c === '\r') { return -1; }
i++;
}
return -1;
}
function skipTemplate(s, i) {
var n = s.length; i++;
while (i < n) {
var c = s[i];
if (c === '\\') { i += 2; continue; }
if (c === '`') { return i + 1; }
if (c === '$' && s[i + 1] === '{') { i = skipExpr(s, i + 2); if (i < 0) { return -1; } continue; }
i++;
}
return -1;
}
function skipExpr(s, i) {
var n = s.length, d = 1;
while (i < n) {
var c = s[i];
if (c === '\\') { i += 2; continue; }
if (c === '"' || c === "'") { i = skipStr(s, i, c); if (i < 0) { return -1; } continue; }
if (c === '`') { i = skipTemplate(s, i); if (i < 0) { return -1; } continue; }
if (c === '/' && s[i + 1] === '/') { while (i < n && s[i] !== '\n') { i++; } continue; }
if (c === '/' && s[i + 1] === '*') { var e = s.indexOf('*/', i + 2); if (e < 0) { return -1; } i = e + 2; continue; }
if (c === '{') { d++; } else if (c === '}') { d--; if (d === 0) { return i + 1; } }
i++;
}
return -1;
}
function tokenize(code, keepLic) {
var toks = [], errs = [], stack = [], i = 0, n = code.length, nl = false, sp = false, prev = null, m, e;
var pairs = {')': '(', ']': '[', '}': '{'};
function push(t, v) { var tk = {t: t, v: v, nl: nl, sp: sp}; toks.push(tk); prev = tk; nl = false; sp = false; return tk; }
function err(pos, msg) { errs.push({sev: 'error', line: lineOf(code, pos), msg: msg}); }
function regexOK() {
if (!prev) { return true; }
if (prev.t === 'p') { return !(prev.v === ')' || prev.v === ']' || prev.v === '}' || prev.v === '++' || prev.v === '--'); }
if (prev.t === 'w') { return !!KW[prev.v]; }
return false;
}
while (i < n) {
var c = code.charCodeAt(i), ch = code[i];
if (c === 32 || c === 9) { sp = true; i++; continue; }
if (c === 10 || c === 13 || c === 0x2028 || c === 0x2029) { nl = true; sp = true; i++; continue; }
if (c === 0xFEFF || /\s/.test(ch)) { sp = true; i++; continue; }
if (ch === '/' && code[i + 1] === '/') {
e = i + 2;
while (e < n && code.charCodeAt(e) !== 10 && code.charCodeAt(e) !== 13) { e++; }
var lc = code.slice(i, e);
sp = true;
if (keepLic && /^\/\/!/.test(lc)) { nl = true; push('c', lc); nl = true; }
i = e; continue;
}
if (ch === '/' && code[i + 1] === '*') {
e = code.indexOf('*/', i + 2);
if (e < 0) { err(i, 'คอมเมนต์ /* ไม่ได้ปิดด้วย */'); return {toks: toks, errs: errs}; }
var bc = code.slice(i, e + 2);
sp = true;
if (/[\n\r]/.test(bc)) { nl = true; }
if (keepLic && (bc.charAt(2) === '!' || /@license|@preserve|@copyright/.test(bc))) { nl = true; push('c', bc); nl = true; }
i = e + 2; continue;
}
if (ch === '"' || ch === "'") {
e = skipStr(code, i, ch);
if (e < 0) { err(i, 'สตริงที่เริ่มด้วย ' + ch + ' ไม่ได้ปิดในบรรทัดเดียวกัน'); return {toks: toks, errs: errs}; }
push('s', code.slice(i, e)); i = e; continue;
}
if (ch === '`') {
e = skipTemplate(code, i);
if (e < 0) { err(i, 'Template literal ที่เริ่มด้วย ` ไม่ได้ปิด หรือมี ${ ที่ไม่ได้ปิด'); return {toks: toks, errs: errs}; }
push('m', code.slice(i, e)); i = e; continue;
}
if ((c >= 48 && c <= 57) || (ch === '.' && code.charCodeAt(i + 1) >= 48 && code.charCodeAt(i + 1) <= 57)) {
RE_NUM.lastIndex = i; m = RE_NUM.exec(code);
if (m) { push('n', m[0]); i += m[0].length; continue; }
}
RE_ID.lastIndex = i; m = RE_ID.exec(code);
if (m) { push('w', m[0]); i += m[0].length; continue; }
if (ch === '/' && regexOK()) {
var j = i + 1, inC = false, ok = false;
while (j < n) {
var d = code[j];
if (d === '\\') { j += 2; continue; }
if (d === '\n' || d === '\r') { break; }
if (inC) { if (d === ']') { inC = false; } } else if (d === '[') { inC = true; } else if (d === '/') { ok = true; break; }
j++;
}
if (ok) {
j++;
while (j < n && /[A-Za-z]/.test(code[j])) { j++; }
push('r', code.slice(i, j)); i = j; continue;
}
}
RE_P.lastIndex = i; m = RE_P.exec(code);
if (m) {
var v = m[0];
if (v === '(' || v === '[' || v === '{') { stack.push({v: v, pos: i}); }
else if (v === ')' || v === ']' || v === '}') {
var top = stack.pop();
if (!top) { err(i, 'พบ ' + v + ' ที่ไม่มีวงเล็บเปิดคู่กัน'); }
else if (top.v !== pairs[v]) { err(i, 'พบ ' + v + ' แต่วงเล็บเปิดที่ค้างอยู่คือ ' + top.v + ' (เปิดไว้ที่บรรทัด ' + lineOf(code, top.pos) + ')'); }
}
push('p', v); i += v.length; continue;
}
push('p', ch); i++;
}
for (var q = 0; q < stack.length && q < 5; q++) { err(stack[q].pos, 'วงเล็บ ' + stack[q].v + ' ไม่ได้ปิด'); }
return {toks: toks, errs: errs};
}
function isB(p) { return !p || (p.t === 'p' && (p.v === ';' || p.v === '{' || p.v === '}')); }
function simplify(t, o, st) {
var out = [], i = 0, L = t.length, carry = false;
function add(k) { out.push({t: k.t, v: k.v, nl: k.nl || carry, sp: k.sp}); carry = false; }
while (i < L) {
var k = t[i], p = out.length ? out[out.length - 1] : null, nx = t[i + 1];
if (k.t === 'w' && !(p && p.t === 'p' && (p.v === '.' || p.v === '?.'))) {
if (o.dbg && k.v === 'debugger') {
st.dbg++;
if (isB(p)) { carry = carry || k.nl; i++; if (t[i] && t[i].t === 'p' && t[i].v === ';') { i++; } continue; }
add({t: 'n', v: '0', nl: k.nl, sp: k.sp}); i++; continue;
}
if (o.con && k.v === 'console' && nx && nx.v === '.' && t[i + 2] && t[i + 2].t === 'w' && CONM.test(t[i + 2].v) && t[i + 3] && t[i + 3].v === '(') {
var dp = 0, j = i + 3, v;
for (; j < L; j++) {
v = t[j];
if (v.t === 'p') {
if (v.v === '(' || v.v === '[' || v.v === '{') { dp++; }
else if (v.v === ')' || v.v === ']' || v.v === '}') { dp--; if (dp === 0) { break; } }
}
}
if (j < L) {
st.con++;
if (isB(p)) { carry = carry || k.nl; i = j + 1; if (t[i] && t[i].t === 'p' && t[i].v === ';') { i++; } continue; }
add({t: 'n', v: '0', nl: k.nl, sp: k.sp}); i = j + 1; continue;
}
}
if ((k.v === 'true' || k.v === 'false') && !(nx && nx.t === 'p' && (nx.v === '.' || nx.v === '(')) && !(nx && nx.v === ':' && p && (p.v === '{' || p.v === ','))) {
st.bool++;
add({t: 'p', v: k.v === 'true' ? '!0' : '!1', nl: k.nl, sp: k.sp}); i++; continue;
}
}
if (k.t === 'p' && k.v === ';' && nx && nx.t === 'p' && nx.v === '}' && p && p.t !== 'c' && !(p.t === 'p' && !/^(?:\]|\}|\+\+|--|!0|!1)$/.test(p.v)) && !(p.t === 'w' && (p.v === 'else' || p.v === 'do'))) {
st.semi++; carry = carry || k.nl; i++; continue;
}
add(k); i++;
}
return out;
}
function needSp(p, k) {
var a = p.v.charAt(p.v.length - 1), b = k.v.charAt(0);
if (WORD.test(a) && WORD.test(b)) { return true; }
if ((a === '+' && b === '+') || (a === '-' && b === '-') || (a === '/' && b === '/')) { return true; }
if (p.t === 'n' && b === '.') { return true; }
return false;
}
function nlNeeded(p, k) {
if (p.t === 'p' && DROP_AFTER.test(p.v)) { return false; }
if (k.t === 'p' && DROP_BEFORE.test(k.v) && !(p.t === 'w' && RESTR[p.v])) { return false; }
if (k.t === 'w' && (k.v === 'in' || k.v === 'instanceof') && !(p.t === 'w' && RESTR[p.v])) { return false; }
if (k.t === 'w' && (k.v === 'else' || k.v === 'catch' || k.v === 'finally') && p.t === 'p' && p.v === '}') { return false; }
return true;
}
function emit(t, safe) {
var o = [], p = null, i, k, j;
for (i = 0; i < t.length; i++) {
k = t[i];
if (p) {
j = '';
if (k.t === 'c' || p.t === 'c') { j = '\n'; }
else if (k.nl && (safe || nlNeeded(p, k))) { j = '\n'; }
else if (needSp(p, k)) { j = ' '; }
o.push(j);
}
o.push(k.v); p = k;
}
return o.join('');
}
function syntaxCheck(code) {
if (/^\s*(?:import|export)\b/m.test(code)) { return {skip: true}; }
try { new Function(code); return {ok: true}; }
catch (e) { if (e && e.name === 'EvalError') { return {skip: true}; } return {ok: false, msg: String(e && e.message ? e.message : e)}; }
}
function compileJS(code, o) {
var errs = [], warns = [], infos = [], st = {dbg: 0, con: 0, bool: 0, semi: 0};
var chk = syntaxCheck(code);
var lx = tokenize(code, o.lic);
if (lx.errs.length) { return {out: '', errs: lx.errs, warns: warns, infos: infos}; }
if (chk.ok === false) { warns.push({sev: 'warn', msg: 'เบราว์เซอร์ตรวจพบ SyntaxError ในโค้ดต้นฉบับ: ' + chk.msg + ' (หากเป็นโค้ด ES module หรือใช้ await ระดับบนสุด อาจเป็นเรื่องปกติ)'}); }
if (chk.skip) { infos.push({sev: 'info', msg: 'ตรวจพบ import/export (ES module) จึงข้ามการตรวจ syntax ด้วยเบราว์เซอร์'}); }
var toks = o.level === 'SIMPLE' ? simplify(lx.toks, o, st) : lx.toks;
var out = emit(toks, false), fell = false;
if (chk.ok === true) {
var c2 = syntaxCheck(out);
if (c2.ok === false) {
var safe = emit(lx.toks, true), c3 = syntaxCheck(safe);
if (c3.ok === false) { errs.push({sev: 'error', msg: 'ผลลัพธ์ที่ย่อแล้วไม่ผ่านการตรวจ syntax: ' + c3.msg + ' กรุณาแจ้งโค้ดตัวอย่างให้ผู้ดูแล'}); out = ''; }
else { out = safe; fell = true; warns.push({sev: 'warn', msg: 'ผลการย่อแบบเต็มไม่ผ่านการตรวจ syntax จึงสลับเป็นโหมดปลอดภัย (ลบเฉพาะคอมเมนต์และช่องว่าง)'}); }
}
}
if (o.level === 'SIMPLE' && !fell) {
if (st.bool) { infos.push({sev: 'info', msg: 'ย่อ true/false เป็น !0/!1 จำนวน ' + st.bool + ' ตำแหน่ง'}); }
if (st.semi) { infos.push({sev: 'info', msg: 'ตัด ; ท้ายบล็อกที่ไม่จำเป็น ' + st.semi + ' ตำแหน่ง'}); }
if (st.con) { infos.push({sev: 'info', msg: 'ลบการเรียก console.* จำนวน ' + st.con + ' ตำแหน่ง'}); }
if (st.dbg) { infos.push({sev: 'info', msg: 'ลบ debugger จำนวน ' + st.dbg + ' ตำแหน่ง'}); }
}
return {out: out, errs: errs, warns: warns, infos: infos};
}
function compileCSS(css, o) {
var keep = [], errs = [], warns = [], infos = [], i = 0, n = css.length, buf = '', c, e;
function hold(s) { keep.push(s); return '\u0000' + (keep.length - 1) + '\u0001'; }
while (i < n) {
c = css[i];
if (c === '/' && css[i + 1] === '*') {
e = css.indexOf('*/', i + 2);
if (e < 0) { errs.push({sev: 'error', line: lineOf(css, i), msg: 'คอมเมนต์ /* ไม่ได้ปิดด้วย */'}); return {out: '', errs: errs, warns: warns, infos: infos}; }
var cm = css.slice(i, e + 2);
if (o.lic && cm.charAt(2) === '!') { buf += hold(cm); } else { buf += ' '; }
i = e + 2; continue;
}
if (c === '"' || c === "'") {
e = i + 1;
while (e < n && css[e] !== c) { if (css[e] === '\\') { e++; } e++; }
if (e >= n) { errs.push({sev: 'error', line: lineOf(css, i), msg: 'สตริงที่เริ่มด้วย ' + c + ' ไม่ได้ปิด'}); return {out: '', errs: errs, warns: warns, infos: infos}; }
buf += hold(css.slice(i, e + 1)); i = e + 1; continue;
}
if ((c === 'u' || c === 'U') && /^url\(/i.test(css.substr(i, 4))) {
var j = i + 4;
while (j < n && /\s/.test(css[j])) { j++; }
if (css[j] !== '"' && css[j] !== "'") {
var cl = css.indexOf(')', j);
if (cl < 0) { cl = n - 1; }
buf += hold(css.slice(i, cl + 1)); i = cl + 1; continue;
}
}
buf += c; i++;
}
buf = buf.replace(/\s+/g, ' ');
buf = buf.replace(/\s*([{};,>])\s*/g, '$1');
buf = buf.replace(/:\s+/g, ':');
buf = buf.replace(/\(\s+/g, '(').replace(/\s+\)/g, ')');
buf = buf.replace(/\s*!\s*important/gi, '!important');
buf = buf.replace(/;{2,}/g, ';').replace(/;}/g, '}');
if (o.level === 'SIMPLE') {
buf = buf.replace(/(^|[\s:,(\-+*\/])0\.(\d)/g, '$1.$2');
var prev = null, removed = 0;
while (prev !== buf) { prev = buf; buf = buf.replace(/(^|[};{])[^{};]*\{\}/g, function (mm, g1) { removed++; return g1; }); }
if (removed) { infos.push({sev: 'info', msg: 'ลบกฎ CSS ที่ว่างเปล่า ' + removed + ' รายการ'}); }
}
var ob = (buf.match(/\{/g) || []).length, cb = (buf.match(/\}/g) || []).length;
if (ob !== cb) { warns.push({sev: 'warn', msg: 'จำนวนวงเล็บปีกกาไม่เท่ากัน: { = ' + ob + ', } = ' + cb + ' ตรวจสอบ CSS ต้นฉบับ'}); }
buf = buf.replace(/\u0000(\d+)\u0001 ?/g, function (mm, x) { var s = keep[+x]; return s.charAt(0) === '/' ? s + '\n' : s; });
return {out: buf.trim(), errs: errs, warns: warns, infos: infos};
}
function detect(code, name) {
if (name) { if (/\.css$/i.test(name)) { return 'css'; } if (/\.[mc]?js$/i.test(name)) { return 'js'; } }
var s = code.replace(/\/\*[\s\S]*?\*\//g, '').trim();
if (!s) { return 'js'; }
if (/\b(?:function|var|let|const|return|import|export|class)\b|=>|\bconsole\b|\bdocument\b|\bwindow\b/.test(s)) { return 'js'; }
if (/^@/.test(s) || /\{\s*[\w-]+\s*:[^;{}]+;?\s*\}/.test(s)) { return 'css'; }
return 'js';
}
function compile(code, name, o) {
var mode = o.mode === 'auto' ? detect(code, name) : o.mode;
var r = mode === 'css' ? compileCSS(code, o) : compileJS(code, o);
r.mode = mode;
return r;
}
window.__ccCore = {compile: compile, detect: detect};
/*CORE_END*/
function $(id) { return document.getElementById(id); }
if (!$('ccApp')) { return; }
var enc = (typeof TextEncoder !== 'undefined') ? new TextEncoder() : null;
function bytes(s) { return enc ? enc.encode(s).length : s.length; }
function fmt(b) { return b < 1024 ? b + ' B' : (b / 1024).toFixed(2) + ' KB'; }
function pct(a, b) { return a ? ((1 - b / a) * 100).toFixed(1) + '%' : '0%'; }
function gz(s) {
if (typeof CompressionStream === 'undefined' || typeof Response === 'undefined' || typeof Blob === 'undefined') { return Promise.resolve(null); }
try {
var stream = new Blob([s]).stream().pipeThrough(new CompressionStream('gzip'));
return new Response(stream).arrayBuffer().then(function (b) { return b.byteLength; }, function () { return null; });
} catch (e) { return Promise.resolve(null); }
}
function readOpts() {
return {mode: $('ccMode').value, level: $('ccLevel').value, lic: $('ccLic').checked, con: $('ccCon').checked && $('ccLevel').value === 'SIMPLE', dbg: $('ccDbg').checked && $('ccLevel').value === 'SIMPLE'};
}
function download(name, text, type) {
var b = new Blob([text], {type: type + ';charset=utf-8'});
var u = URL.createObjectURL(b), a = document.createElement('a');
a.href = u; a.download = name; document.body.appendChild(a); a.click();
setTimeout(function () { document.body.removeChild(a); URL.revokeObjectURL(u); }, 600);
}
function flash(btn, txt) {
if (!btn) { return; }
if (!btn.dataset.orig) { btn.dataset.orig = btn.textContent; }
btn.textContent = txt;
setTimeout(function () { btn.textContent = btn.dataset.orig; }, 1400);
}
function copy(text, btn) {
function ok() { flash(btn, 'คัดลอกแล้ว'); }
function fallback() {
var ta = document.createElement('textarea');
ta.value = text; ta.style.position = 'fixed'; ta.style.opacity = '0';
document.body.appendChild(ta); ta.select();
try { document.execCommand('copy'); ok(); } catch (e) { flash(btn, 'คัดลอกไม่สำเร็จ'); }
document.body.removeChild(ta);
}
if (navigator.clipboard && window.isSecureContext) { navigator.clipboard.writeText(text).then(ok, fallback); } else { fallback(); }
}
function minName(name, mode) {
if (/\.[mc]?js$|\.css$/i.test(name)) { return name.replace(/\.([mc]?js|css)$/i, '.min.$1'); }
return name + (mode === 'css' ? '.min.css' : '.min.js');
}
function showDiag(r) {
var box = $('ccDiag'), ul = document.createElement('ul'), all = [].concat(r.errs, r.warns, r.infos);
box.textContent = '';
if (!r.errs.length && !r.warns.length) { all.unshift({sev: 'ok', msg: 'ไม่พบข้อผิดพลาดหรือคำเตือน'}); }
all.forEach(function (x) {
var li = document.createElement('li');
li.className = x.sev === 'warn' ? 'warn' : x.sev;
li.textContent = (x.sev === 'error' ? 'ข้อผิดพลาด' : x.sev === 'warn' ? 'คำเตือน' : x.sev === 'ok' ? 'ผ่าน' : 'ข้อมูล') + (x.line ? ' (บรรทัด ' + x.line + ')' : '') + ': ' + x.msg;
ul.appendChild(li);
});
box.appendChild(ul);
}
function diagMsg(sev, msg) { showDiag({errs: [], warns: [], infos: [{sev: sev, msg: msg}]}); }
var gzTok = 0, lastMode = 'js';
function showStats(code, r) {
var st = $('ccStats'), bar = $('ccBar');
if (r.errs.length || !r.out) { st.hidden = true; bar.hidden = true; return; }
var a = bytes(code), b = bytes(r.out), my = ++gzTok;
st.hidden = false; bar.hidden = false;
$('ccSIn').textContent = fmt(a);
$('ccSOut').textContent = fmt(b);
$('ccSSave').textContent = pct(a, b);
$('ccSMode').textContent = r.mode === 'css' ? 'CSS' : 'JavaScript';
$('ccBarFill').style.width = Math.max(2, Math.min(100, a ? (b / a) * 100 : 100)) + '%';
$('ccSGz').textContent = '...';
Promise.all([gz(code), gz(r.out)]).then(function (x) {
if (my !== gzTok) { return; }
$('ccSGz').textContent = (x[0] === null || x[1] === null) ? 'ไม่รองรับ' : fmt(x[0]) + ' → ' + fmt(x[1]);
});
}
function runText() {
var code = $('ccIn').value;
if (!code.trim()) { $('ccOut').value = ''; showStats('', {errs: [{}], out: ''}); diagMsg('info', 'วางโค้ด JavaScript หรือ CSS ในช่องซ้าย แล้วกดปุ่ม ย่อโค้ด'); return; }
var r;
try { r = compile(code, '', readOpts()); }
catch (e) { $('ccOut').value = ''; showStats('', {errs: [{}], out: ''}); diagMsg('error', 'เกิดข้อผิดพลาดภายในเครื่องมือ: ' + (e && e.message ? e.message : e)); return; }
lastMode = r.mode;
$('ccOut').value = r.out;
showDiag(r);
showStats(code, r);
}
function setTab(name) {
var tabs = document.querySelectorAll('#ccApp .cc-tab'), panes = document.querySelectorAll('#ccApp .cc-pane');
Array.prototype.forEach.call(tabs, function (t) { var on = t.getAttribute('data-tab') === name; t.classList.toggle('is-active', on); t.setAttribute('aria-selected', on ? 'true' : 'false'); });
Array.prototype.forEach.call(panes, function (p) { p.hidden = p.getAttribute('data-pane') !== name; });
}
function readFile(f) {
return new Promise(function (res, rej) {
var fr = new FileReader();
fr.onload = function () { res({name: f.name, text: String(fr.result)}); };
fr.onerror = function () { rej(new Error('อ่านไฟล์ ' + f.name + ' ไม่ได้')); };
fr.readAsText(f);
});
}
function fileRow(name, r, inB, outName) {
var d = document.createElement('div'), left = document.createElement('div'), right = document.createElement('div'), nm = document.createElement('div'), meta = document.createElement('div');
d.className = 'cc-file'; nm.className = 'nm'; nm.textContent = name; meta.className = 'meta';
left.appendChild(nm); left.appendChild(meta);
if (r.errs.length) {
meta.className = 'meta bad';
meta.textContent = 'ข้อผิดพลาด: ' + (r.errs[0].line ? 'บรรทัด ' + r.errs[0].line + ' ' : '') + r.errs[0].msg + (r.errs.length > 1 ? ' (และอีก ' + (r.errs.length - 1) + ' รายการ)' : '');
} else {
var outB = bytes(r.out);
meta.textContent = fmt(inB) + ' → ' + fmt(outB) + ' (ประหยัด ' + pct(inB, outB) + ')' + (r.warns.length ? ' | คำเตือน ' + r.warns.length + ' รายการ: ' + r.warns[0].msg : '');
var b1 = document.createElement('button'), b2 = document.createElement('button');
b1.type = 'button'; b1.className = 'cc-btn sec'; b1.textContent = 'คัดลอก';
b2.type = 'button'; b2.className = 'cc-btn'; b2.textContent = 'ดาวน์โหลด';
b1.addEventListener('click', function () { copy(r.out, b1); });
b2.addEventListener('click', function () { download(outName, r.out, r.mode === 'css' ? 'text/css' : 'text/javascript'); });
right.appendChild(b1); right.appendChild(document.createTextNode(' ')); right.appendChild(b2);
}
d.appendChild(left); d.appendChild(right);
return d;
}
var store = {files: [], quick: []};
function process(items, listEl, auto) {
var o = readOpts(), jobs = [], box = $('ccDiag');
listEl.textContent = '';
if (!items.length) { return; }
var merge = listEl === $('ccFileList') && $('ccMerge').checked;
if (merge) {
var g = {js: [], css: []};
items.forEach(function (it) { var m = o.mode === 'auto' ? detect(it.text, it.name) : o.mode; g[m].push(it.text); });
if (g.js.length) { jobs.push({name: 'bundle.js', text: g.js.join('\n;\n'), n: g.js.length}); }
if (g.css.length) { jobs.push({name: 'bundle.css', text: g.css.join('\n'), n: g.css.length}); }
} else { jobs = items.map(function (it) { return {name: it.name, text: it.text, n: 1}; }); }
var total = {errs: [], warns: [], infos: []};
jobs.forEach(function (jb) {
var r;
try { r = compile(jb.text, jb.name, o); } catch (e) { r = {out: '', mode: 'js', errs: [{sev: 'error', msg: 'เกิดข้อผิดพลาดภายในเครื่องมือ: ' + (e && e.message ? e.message : e)}], warns: [], infos: []}; }
var outName = merge ? jb.name.replace(/\.(js|css)$/, '.min.$1') : minName(jb.name, r.mode);
listEl.appendChild(fileRow(jb.name + (jb.n > 1 ? ' (' + jb.n + ' ไฟล์)' : ''), r, bytes(jb.text), outName));
r.errs.forEach(function (x) { total.errs.push({sev: 'error', line: x.line, msg: jb.name + ': ' + x.msg}); });
r.warns.forEach(function (x) { total.warns.push({sev: 'warn', msg: jb.name + ': ' + x.msg}); });
if (auto && !r.errs.length) { download(outName, r.out, r.mode === 'css' ? 'text/css' : 'text/javascript'); }
});
showDiag(total);
}
function loadFiles(fileList, key, listEl, auto) {
var arr = Array.prototype.slice.call(fileList || []);
if (!arr.length) { return; }
Promise.all(arr.map(readFile)).then(function (items) { store[key] = items; process(items, listEl, auto); }, function (e) { diagMsg('error', e.message); });
}
function wireDrop(zone, input, key, listEl, auto) {
['dragenter', 'dragover'].forEach(function (ev) { zone.addEventListener(ev, function (e) { e.preventDefault(); zone.classList.add('is-over'); }); });
['dragleave', 'drop'].forEach(function (ev) { zone.addEventListener(ev, function (e) { e.preventDefault(); zone.classList.remove('is-over'); }); });
zone.addEventListener('drop', function (e) { loadFiles(e.dataTransfer && e.dataTransfer.files, key, listEl, auto); });
input.addEventListener('change', function () { loadFiles(input.files, key, listEl, auto); input.value = ''; });
}
var SAMPLE_JS = ['// ตัวอย่างฟังก์ชันทักทาย', 'function greet(name) {', '  /* สร้างข้อความ */', '  var message = "สวัสดี, " + name + "!";', '  console.log(message);', '  return message;', '}', '', 'const isReady = true;', 'if (isReady) {', '  greet("โลก");', '}'].join('\n');
var SAMPLE_CSS = ['/* ปุ่มหลัก */', '.btn {', '  color : #ffffff;', '  background : rgba(0, 0, 0, 0.5);', '  margin : 0 auto;', '}', '', '.btn:hover { opacity: 0.8; }', '.empty { }'].join('\n');
Array.prototype.forEach.call(document.querySelectorAll('#ccApp .cc-tab'), function (t) { t.addEventListener('click', function () { setTab(t.getAttribute('data-tab')); }); });
$('ccRun').addEventListener('click', runText);
$('ccIn').addEventListener('keydown', function (e) { if ((e.ctrlKey || e.metaKey) && e.key === 'Enter') { e.preventDefault(); runText(); } });
$('ccCopy').addEventListener('click', function () { var v = $('ccOut').value; if (v) { copy(v, $('ccCopy')); } else { diagMsg('info', 'ยังไม่มีผลลัพธ์ให้คัดลอก กรุณากดปุ่ม ย่อโค้ด ก่อน'); } });
$('ccSave').addEventListener('click', function () { var v = $('ccOut').value; if (v) { download(lastMode === 'css' ? 'minified.css' : 'minified.js', v, lastMode === 'css' ? 'text/css' : 'text/javascript'); } else { diagMsg('info', 'ยังไม่มีผลลัพธ์ให้ดาวน์โหลด กรุณากดปุ่ม ย่อโค้ด ก่อน'); } });
$('ccReset').addEventListener('click', function () { $('ccIn').value = ''; $('ccOut').value = ''; $('ccStats').hidden = true; $('ccBar').hidden = true; $('ccDiag').textContent = ''; });
$('ccSampleJs').addEventListener('click', function () { $('ccIn').value = SAMPLE_JS; runText(); });
$('ccSampleCss').addEventListener('click', function () { $('ccIn').value = SAMPLE_CSS; runText(); });
$('ccLevel').addEventListener('change', function () { var s = $('ccLevel').value === 'SIMPLE'; $('ccCon').disabled = !s; $('ccDbg').disabled = !s; });
$('ccRerun').addEventListener('click', function () { process(store.files, $('ccFileList'), false); });
wireDrop($('ccDropFiles'), $('ccFileInput'), 'files', $('ccFileList'), false);
wireDrop($('ccDropQuick'), $('ccQuickInput'), 'quick', $('ccQuickList'), true);
})();
</script>
</div>

## วิธีใช้งาน Online Closure Compiler

1. **เลือกโหมดนำเข้า** แท็บ Textarea ใช้วางโค้ดโดยตรง แท็บ ไฟล์ ใช้ย่อหลายไฟล์พร้อมกัน ส่วนแท็บ ดาวน์โหลดด่วน จะย่อแล้วดาวน์โหลดทันทีเมื่อวางไฟล์
2. **เลือกภาษา** ปล่อยเป็น "ตรวจจับอัตโนมัติ" ได้ หรือเลือก JavaScript / CSS เองหากเครื่องมือตรวจผิดพลาด
3. **เลือกระดับการย่อ** WHITESPACE_ONLY ลบคอมเมนต์และช่องว่างเท่านั้น ส่วน SIMPLE ลดขนาดเพิ่มอีกเล็กน้อย เช่น ย่อ `true` เป็น `!0` และตัด `;` ที่ไม่จำเป็น
4. **ตั้งค่าเพิ่มเติม** เลือกเก็บคอมเมนต์ license, ลบ `console.*` หรือลบ `debugger` ตามต้องการ (ใช้ได้กับ JavaScript ระดับ SIMPLE)
5. **กดปุ่ม ย่อโค้ด** หรือกด Ctrl+Enter (Cmd+Enter บน Mac) ในช่องโค้ด
6. **อ่านแผงตรวจสอบ** ใต้เครื่องมือจะแสดงข้อผิดพลาด คำเตือน และสิ่งที่เครื่องมือปรับให้ พร้อมเลขบรรทัดเมื่อทราบตำแหน่ง
7. **ดูสถิติ** เทียบขนาดก่อนและหลังย่อ รวมถึงขนาดหลังบีบอัด gzip ซึ่งใกล้เคียงกับขนาดที่ผู้ใช้ดาวน์โหลดจริงบนเว็บไซต์
8. **คัดลอกหรือดาวน์โหลด** ผลลัพธ์ แล้วทดสอบบนเว็บไซต์จริงก่อนนำขึ้นใช้งาน เก็บไฟล์ต้นฉบับไว้เสมอ

> **ข้อควรทราบ:** เครื่องมือนี้ทำงานในเบราว์เซอร์และให้ผลคล้ายระดับ WHITESPACE_ONLY และ SIMPLE ของ Google Closure Compiler แต่ไม่ได้รันตัวคอมไพเลอร์ของ Google จริง และไม่มีระดับ ADVANCED หากต้องการการเปลี่ยนชื่อตัวแปร การตรวจ type หรือ source map ให้ใช้ Closure Compiler ตัวจริงผ่านบรรทัดคำสั่งตามตัวอย่างด้านล่าง

## คำศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| Minify (ย่อโค้ด) | การลบคอมเมนต์ ช่องว่าง และบรรทัดใหม่ที่ไม่จำเป็นออก ให้ไฟล์เล็กลงโดยโค้ดทำงานเหมือนเดิม |
| Closure Compiler | เครื่องมือของ Google สำหรับย่อและปรับแต่ง JavaScript ให้เล็กและเร็วขึ้น พร้อมตรวจ syntax และ type |
| WHITESPACE_ONLY | ระดับที่ลบเฉพาะคอมเมนต์และช่องว่าง ปลอดภัยที่สุด เหมาะเมื่อไม่แน่ใจว่าโค้ดจะทำงานได้หลังปรับแต่ง |
| SIMPLE | ระดับกลาง ย่อโค้ดและปรับนิพจน์เล็กน้อย ใน Closure Compiler ตัวจริงจะเปลี่ยนชื่อตัวแปรภายในฟังก์ชันด้วย |
| ADVANCED | ระดับที่ย่อมากที่สุด เปลี่ยนชื่อตัวแปรและ property ลบโค้ดที่ไม่ถูกเรียกใช้ แต่ต้องเขียนโค้ดให้เข้ากันได้ มิฉะนั้นโค้ดอาจพัง เครื่องมือนี้ไม่มีระดับนี้ |
| Dead code | โค้ดที่ไม่เคยถูกเรียกใช้ Closure Compiler ระดับ ADVANCED สามารถลบออกได้ |
| Source map | ไฟล์ที่ช่วยโยงตำแหน่งในโค้ดที่ย่อแล้วกลับไปยังโค้ดต้นฉบับ ใช้ตอน debug บนเบราว์เซอร์ |
| gzip | วิธีบีบอัดไฟล์ที่เซิร์ฟเวอร์ส่งให้เบราว์เซอร์ ขนาดหลัง gzip สะท้อนปริมาณข้อมูลที่ถูกดาวน์โหลดจริง |
| Brotli | วิธีบีบอัดอีกแบบที่มักเล็กกว่า gzip เบราว์เซอร์และเซิร์ฟเวอร์สมัยใหม่ส่วนใหญ่รองรับ |
| License comment | คอมเมนต์ที่ระบุลิขสิทธิ์หรือสัญญาอนุญาต มักขึ้นต้นด้วย `/*!` หรือมี `@license` ควรเก็บไว้ตามเงื่อนไขของไลบรารี |
| `console.*` | คำสั่งแสดงข้อความในคอนโซล เช่น `console.log` มักลบออกก่อนขึ้นระบบจริง |
| `debugger` | คำสั่งที่หยุดการทำงานเมื่อเปิดเครื่องมือนักพัฒนา ไม่ควรเหลืออยู่ในโค้ดที่เผยแพร่ |
| `!0` และ `!1` | รูปย่อของ `true` และ `false` ที่ให้ผลเหมือนกันแต่สั้นกว่า |
| ES module | โค้ดที่ใช้ `import` และ `export` เครื่องมือนี้ย่อได้ แต่จะข้ามการตรวจ syntax ด้วยเบราว์เซอร์ |
| อัตราส่วนการบีบอัด | เปอร์เซ็นต์ขนาดที่ประหยัดได้เมื่อเทียบกับไฟล์ต้นฉบับ |
| Syntax Error | ข้อผิดพลาดด้านไวยากรณ์ เช่น ลืมปิดวงเล็บหรือเครื่องหมายคำพูด ทำให้โค้ดไม่สามารถทำงานได้ |

## เปรียบเทียบเครื่องมือย่อ JavaScript

| เครื่องมือ | จุดเด่น | เหมาะกับ |
| --- | --- | --- |
| Google Closure Compiler | มีระดับ ADVANCED, ตรวจ type, ลบ dead code | โปรเจกต์ที่ต้องการลดขนาดสูงสุดและยอมปรับโค้ดให้เข้ากัน |
| Terser | รองรับ ES6+ ตั้งค่าได้ละเอียด ใช้กันแพร่หลายใน bundler | โปรเจกต์ JavaScript ทั่วไป |
| esbuild | เร็วมาก ทั้ง bundle และ minify | โปรเจกต์ที่ต้องการ build เร็ว |
| UglifyJS | เป็นที่รู้จักมานาน ใช้กับโปรเจกต์เก่าได้ดี | โค้ดและ toolchain เดิมที่ใช้อยู่แล้ว |
| เครื่องมือออนไลน์นี้ | ใช้ได้ทันทีในเบราว์เซอร์ ไม่ต้องติดตั้ง ไม่ส่งโค้ดออกนอกเครื่อง | งานย่อไฟล์เร็ว ๆ และตรวจขนาดก่อนนำไปใช้ |

## ใช้ Closure Compiler ตัวจริงผ่านบรรทัดคำสั่ง

หากต้องการระดับ ADVANCED, source map หรือเลือกเวอร์ชัน ECMAScript ปลายทาง ติดตั้งผ่าน npm แล้วรันคำสั่งต่อไปนี้ (ต้องติดตั้ง Node.js)

```bash
npx google-closure-compiler \
  --js=input.js \
  --js_output_file=output.min.js \
  --compilation_level=SIMPLE \
  --language_out=ECMASCRIPT_2015 \
  --create_source_map=output.min.js.map
```

เปลี่ยน `--compilation_level` เป็น `WHITESPACE_ONLY` หรือ `ADVANCED` ได้ตามต้องการ และควรตรวจสอบตัวเลือกล่าสุดจากเอกสารทางการของ Google Closure Compiler เนื่องจากอาจเปลี่ยนแปลงตามเวอร์ชัน

## คำถามที่พบบ่อย

### โค้ดของฉันถูกส่งไปยังเซิร์ฟเวอร์หรือไม่

ไม่ การย่อโค้ด ตรวจสอบ และคำนวณขนาดทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดโค้ดไปที่ใด

### ทำไมเครื่องมือบอกว่ามี Syntax Error ทั้งที่โค้ดใช้งานได้

เบราว์เซอร์ตรวจโค้ดแบบสคริปต์ทั่วไป หากโค้ดใช้ `await` ระดับบนสุด หรือมีไวยากรณ์ใหม่ที่เบราว์เซอร์ของคุณยังไม่รองรับ อาจแสดงเป็นคำเตือน ลองใช้เบราว์เซอร์เวอร์ชันล่าสุด

### ผลลัพธ์เหมือน Closure Compiler ตัวจริงหรือไม่

ไม่เหมือนทั้งหมด เครื่องมือนี้ย่อโค้ดด้วยตัวเองในเบราว์เซอร์ จึงไม่เปลี่ยนชื่อตัวแปร ไม่ตรวจ type และไม่มี ADVANCED ขนาดไฟล์จะใหญ่กว่าผลลัพธ์จาก Closure Compiler ตัวจริงในระดับเดียวกัน

### Closure Compiler ย่อ CSS ได้ไหม

Closure Compiler ของ Google ออกแบบมาสำหรับ JavaScript เครื่องมือนี้จึงมีตัวย่อ CSS แยกต่างหาก ซึ่งลบคอมเมนต์ ช่องว่าง `;` ท้ายกฎ และกฎที่ว่างเปล่า

### ควรเลือกระดับไหน

เริ่มจาก SIMPLE หากเกิดปัญหาหลังย่อ ให้เปลี่ยนเป็น WHITESPACE_ONLY และเปรียบเทียบผลลัพธ์ ทดสอบฟังก์ชันหลักของเว็บไซต์ทุกครั้งหลังเปลี่ยนไฟล์ที่ใช้งานจริง

### เปิดใช้ ลบ console.* แล้วโค้ดเสียได้ไหม

ตัวเลือกนี้ลบการเรียก `console.*` พร้อมอาร์กิวเมนต์ หากอาร์กิวเมนต์มีการเรียกฟังก์ชันที่มีผลข้างเคียง เช่น `console.log(save())` ฟังก์ชันนั้นจะไม่ถูกเรียกอีก ตรวจโค้ดก่อนเปิดใช้