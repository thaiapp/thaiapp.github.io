---
title: เช็ค Syntax JavaScript ออนไลน์ ฟรี
h1: เช็ค Syntax JavaScript
description: 'เช็ค Syntax JavaScript ออนไลน์ ฟรี วางโค้ดหรือเปิดไฟล์ .js ระบบบอกบรรทัดที่ผิดพร้อมสาเหตุภาษาไทย แก้ให้อัตโนมัติได้ ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดโค้ด'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-02T09:00:00+07:00'
weight: 54
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เช็ค Syntax JavaScript
- เช็ค Syntax JavaScript ออนไลน์
- เครื่องมือนักพัฒนา
---

วางโค้ด JavaScript หรือเปิดไฟล์ .js ระบบจะทำเครื่องหมายบรรทัดที่ผิดและบอกสาเหตุด้วยภาษาง่าย ๆ โดยไม่มีการอัปโหลดใด ๆ

<div class="jsv" id="jsv">
<div class="jsv-bar">
<button type="button" class="jsv-b" id="jsv-open">เปิดไฟล์</button>
<button type="button" class="jsv-b" id="jsv-copy">คัดลอก</button>
<button type="button" class="jsv-b" id="jsv-clear">ล้าง</button>
<button type="button" class="jsv-b" id="jsv-undo" hidden>เลิกทำ</button>
<span class="jsv-fn" id="jsv-fn"></span>
<input type="file" id="jsv-file" accept=".js,.mjs,.cjs,.jsx,.txt,text/javascript" hidden>
</div>
<div class="jsv-ed"><pre class="jsv-gut" id="jsv-gut" aria-hidden="true">1</pre><textarea id="jsv-in" class="jsv-ta" wrap="off" spellcheck="false" autocapitalize="off" autocomplete="off" placeholder="วางโค้ด JavaScript ที่นี่ หรือลากไฟล์ .js มาวาง"></textarea></div>
<div class="jsv-act">
<button type="button" class="jsv-b jsv-pri" id="jsv-run">ตรวจสอบ</button>
<button type="button" class="jsv-b" id="jsv-fix" hidden>แก้ไข</button>
<span class="jsv-hint">Ctrl + Enter</span>
</div>
<div class="jsv-ex" id="jsv-ex"><span>ลองตัวอย่าง:</span></div>
<div class="jsv-res" id="jsv-res" role="status" aria-live="polite">วางโค้ดลงในช่อง แล้วกด “ตรวจสอบ”</div>
<p class="jsv-note">ตรวจสอบบนอุปกรณ์ของคุณ ไม่มีการอัปโหลดโค้ด ตรวจเฉพาะ Syntax ไม่รันโค้ด</p>
</div>
<style>
.jsv{--bg:#fff;--fg:#1f2937;--mu:#6b7280;--bd:#d1d5db;--gu:#f3f4f6;--pr:#2563eb;--okb:#ecfdf5;--okc:#047857;--erb:#fef2f2;--erc:#b91c1c;--inb:#eff6ff;--inc:#1d4ed8;margin:1rem 0;color:var(--fg)}
@media (prefers-color-scheme:dark){.jsv{--bg:#111827;--fg:#e5e7eb;--mu:#9ca3af;--bd:#374151;--gu:#1f2937;--pr:#3b82f6;--okb:#052e24;--okc:#6ee7b7;--erb:#3b1212;--erc:#fca5a5;--inb:#10243f;--inc:#93c5fd}}
.jsv *{box-sizing:border-box}
.jsv-bar,.jsv-act,.jsv-ex{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.5rem 0}
.jsv-b{font:inherit;font-size:.9rem;padding:.4rem .9rem;border:1px solid var(--bd);border-radius:8px;background:var(--bg);color:var(--fg);cursor:pointer}
.jsv-b:hover{border-color:var(--pr)}
.jsv-b[hidden]{display:none}
.jsv-pri{background:var(--pr);border-color:var(--pr);color:#fff}
.jsv-fn,.jsv-hint,.jsv-ex span{font-size:.8rem;color:var(--mu)}
.jsv-ed{display:flex;border:1px solid var(--bd);border-radius:10px;overflow:hidden;background:var(--bg)}
.jsv-ed.jsv-drag{border-color:var(--pr)}
.jsv-gut,.jsv-ta{margin:0;padding:10px 8px;font:13px/20px ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;height:320px;overflow:hidden;border:0}
.jsv-gut{min-width:3.2em;text-align:right;background:var(--gu);color:var(--mu);user-select:none;white-space:pre}
.jsv-gut b{display:block;font-weight:400}
.jsv-gut b.e{background:var(--erc);color:var(--bg)}
.jsv-ta{flex:1;min-width:0;resize:none;overflow:auto;white-space:pre;background:var(--bg);color:var(--fg);outline:0;tab-size:2}
.jsv-chip{font:inherit;font-size:.8rem;padding:.2rem .6rem;border:1px solid var(--bd);border-radius:999px;background:var(--bg);color:var(--fg);cursor:pointer}
.jsv-res{padding:.8rem 1rem;border-radius:10px;border:1px solid var(--bd);line-height:1.6;font-size:.95rem;overflow-wrap:anywhere}
.jsv-res.ok{background:var(--okb);color:var(--okc);border-color:var(--okc)}
.jsv-res.er{background:var(--erb);color:var(--erc);border-color:var(--erc)}
.jsv-res.in{background:var(--inb);color:var(--inc);border-color:var(--inc)}
.jsv-res strong{display:block;font-size:1.05rem}
.jsv-res pre{margin:.5rem 0 0;padding:.5rem .7rem;border-radius:8px;background:var(--bg);color:var(--fg);overflow-x:auto;font:12.5px/1.5 ui-monospace,Menlo,Consolas,monospace;white-space:pre}
.jsv-res code{font-size:.85em}
.jsv-note{font-size:.8rem;color:var(--mu);margin:.5rem 0 0}
@media (max-width:600px){.jsv-gut,.jsv-ta{height:240px}}
</style>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var ta = $('jsv-in'), gut = $('jsv-gut'), box = $('jsv-res'), fileIn = $('jsv-file');
  var btnFix = $('jsv-fix'), btnUndo = $('jsv-undo'), fnEl = $('jsv-fn'), ed = ta.parentNode;
  var MAX = 10 * 1024 * 1024, LH = 20, undoText = null, current = null;
  var AF = null;
  try { AF = new Function('return (async function(){}).constructor')(); } catch (e) { AF = null; }
  var SPECIAL = { '\u201C': '"', '\u201D': '"', '\u2018': "'", '\u2019': "'", '\uFF1B': ';', '\uFF0C': ',', '\uFF08': '(', '\uFF09': ')', '\uFF1A': ':', '\uFF5B': '{', '\uFF5D': '}', '\u200B': '', '\u200C': '', '\u200D': '', '\u200E': '', '\u200F': '', '\u2060': '', '\u00AD': '' };
  function esc(s) { return String(s).replace(/&/g, '&amp;').replace(/\x3c/g, '&lt;').replace(/>/g, '&gt;'); }
  function hex(ch) { return 'U+' + ('0000' + ch.charCodeAt(0).toString(16).toUpperCase()).slice(-4); }
  function spName(ch) {
    if (/[\u201C\u201D\u2018\u2019]/.test(ch)) { return 'เครื่องหมายคำพูดแบบโค้ง ' + ch + ' (' + hex(ch) + ')'; }
    if (SPECIAL[ch] === '') { return 'อักขระที่มองไม่เห็น (' + hex(ch) + ')'; }
    return 'อักขระ full-width ' + ch + ' (' + hex(ch) + ')';
  }
  var CMAP = { '(': ')', '[': ']', '{': '}' };
  function closers(st) {
    var o = '', i;
    for (i = st.length - 1; i >= 0; i--) { if (!CMAP[st[i].t]) { return null; } o += CMAP[st[i].t]; }
    return o;
  }
  /* ---- สแกนโครงสร้าง: วงเล็บ ข้อความ คอมเมนต์ regex template ---- */
  function scan(s) {
    var n = s.length, i = 0, mode = 'c', line = 1, ln0 = 0, st = [], tops = [''], modes = ['c'], ends = [], clos = [], sp = [], mis = null;
    var prev = '', word = '', wasId = false, cls = false, cont = false;
    var KW = /^(return|typeof|case|in|of|delete|void|throw|new|else|do|yield|await)$/;
    var PAIR = { ')': '(', ']': '[', '}': '{' };
    while (i !== n) {
      var c = s.charAt(i), d = s.charAt(i + 1);
      if (c === '\n') {
        if (cont) { cont = false; } else if (mode === 'lc' || mode === 'sq' || mode === 'dq' || mode === 're') { mode = 'c'; }
        ends.push(prev); clos.push(closers(st)); line++; ln0 = i + 1; tops.push(st.length ? st[st.length - 1].t : ''); modes.push(mode); i++; continue;
      }
      if (mode === 'lc') { i++; continue; }
      if (mode === 'bc') { if (c === '*' && d === '/') { mode = 'c'; i += 2; } else { i++; } continue; }
      if (mode === 'sq' || mode === 'dq') {
        if (c === '\\') { if (d === '\n') { cont = true; i++; } else { i += 2; } continue; }
        if ((mode === 'sq' && c === "'") || (mode === 'dq' && c === '"')) { mode = 'c'; prev = 'a'; }
        i++; continue;
      }
      if (mode === 'tpl') {
        if (c === '\\') { if (d === '\n') { i++; } else { i += 2; } continue; }
        if (c === '`') { mode = 'c'; prev = 'a'; }
        else if (c === '$' && d === '{') { st.push({ t: '${', l: line, k: i - ln0 }); mode = 'c'; prev = '{'; i++; }
        i++; continue;
      }
      if (mode === 're') {
        if (c === '\\') { if (d === '\n') { i++; } else { i += 2; } continue; }
        if (c === '[') { cls = true; } else if (c === ']') { cls = false; } else if (c === '/' && !cls) { mode = 'c'; prev = 'a'; }
        i++; continue;
      }
      if (c === '/') {
        if (d === '/') { mode = 'lc'; i += 2; continue; }
        if (d === '*') { mode = 'bc'; i += 2; continue; }
        if (!prev || '(,=:[!&|?{};+-*%<>~^'.indexOf(prev) >= 0 || (KW.test(word) && /\w/.test(prev))) { mode = 're'; cls = false; i++; continue; }
        prev = '/'; i++; continue;
      }
      if (c === "'") { mode = 'sq'; i++; continue; }
      if (c === '"') { mode = 'dq'; i++; continue; }
      if (c === '`') { mode = 'tpl'; i++; continue; }
      if (c === '(' || c === '[' || c === '{') { st.push({ t: c, l: line, k: i - ln0 }); prev = c; wasId = false; i++; continue; }
      if (c === ')' || c === ']' || c === '}') {
        var top = st[st.length - 1];
        if (c === '}' && top && top.t === '${') { st.pop(); mode = 'tpl'; i++; continue; }
        if (top && top.t === PAIR[c]) { st.pop(); } else if (!mis) { mis = { c: c, l: line, k: i - ln0 }; }
        prev = c; wasId = false; i++; continue;
      }
      if (SPECIAL[c] !== undefined) { sp.push({ c: c, l: line, k: i - ln0, i: i }); }
      if (/[\w$]/.test(c)) { word = wasId ? word + c : c; wasId = true; prev = c; }
      else { wasId = false; if (!/\s/.test(c)) { prev = (c === '>' && s.charAt(i - 1) === '=') ? '=' : c; word = ''; } }
      i++;
    }
    return { st: st, mis: mis, sp: sp, tops: tops, modes: modes, ends: ends, clos: clos, endClos: closers(st), end: mode };
  }
  /* ---- แยกวิเคราะห์ด้วย engine ของเบราว์เซอร์ (ไม่รันโค้ด) ---- */
  function blank(m) { return m.replace(/[^\n]/g, ''); }
  function neutral(s) {
    return s
      .replace(/^[ \t]*import\s+(?:[\w$*{}\s,]+?\s+from\s*)?(['"])[^'"\n]*\1[ \t]*;?/gm, blank)
      .replace(/^[ \t]*export\s*(?:\*(?:\s+as\s+[\w$]+)?\s*from\s*(['"])[^'"\n]*\1|\{[^}]*\}(?:\s*from\s*(['"])[^'"\n]*\2)?)[ \t]*;?/gm, blank)
      .replace(/^[ \t]*export\s+default\s+/gm, 'void ')
      .replace(/^[ \t]*export\s+(?=(?:async\s+)?function|class|const|let|var)/gm, '')
      .replace(/\bimport\.meta\b/g, '({})');
  }
  function perr(s) {
    var m = '';
    try { new Function(s); return { ok: 1, mod: 0 }; } catch (e1) { m = String((e1 && e1.message) || e1); }
    if (AF) {
      try { new AF(neutral(s)); return { ok: 1, mod: 1 }; }
      catch (e2) { if (/import|export|await/i.test(m)) { m = String((e2 && e2.message) || e2); } }
    }
    return { ok: 0, msg: m };
  }
  function ver(s) {
    var v = 5;
    function u(x, re) { if (x > v && re.test(s)) { v = x; } }
    u(2015, /=>|\b(let|const|class)\s|`/); u(2017, /\basync\b/); u(2019, /catch\s*\{/);
    u(2020, /\?\.[^\d]|\?\?(?!=)|\b\d+n\b/); u(2021, /\?\?=|\|\|=|&&=|\d_\d/); u(2022, /#[a-z_$][\w$]*\s*[=;(]|static\s*\{/);
    return v === 5 ? 'ES5' : 'ES' + v;
  }
  /* ---- ตรวจสอบ ---- */
  function check(src) {
    src = src.replace(/\r\n?/g, '\n');
    var r = { src: src };
    if (!src.trim()) { r.empty = 1; return r; }
    var sc = scan(src); r.sc = sc;
    var p = perr(src);
    if (p.ok) { r.ok = 1; r.mod = p.mod; r.ver = ver(src); return r; }
    var lines = src.split('\n'), n = lines.length, cand = [], L;
    for (L = 1; L !== n; L++) {
      if (sc.modes[L] === 'c' && sc.clos[L - 1] !== null && /[;{}),>\]\w$]/.test(sc.ends[L - 1])) { cand.push(L); }
    }
    cand.push(n);
    function pref(L2) {
      if (L2 === n) { return sc.endClos === null ? src : src + '\n' + sc.endClos; }
      return lines.slice(0, L2).join('\n') + '\n' + sc.clos[L2 - 1];
    }
    var lo = 0, hi = cand.length - 1, ans = n, am = p.msg;
    while (hi - lo >= 0) {
      var mid = (lo + hi) >> 1, pp = perr(pref(cand[mid]));
      if (!pp.ok) { ans = cand[mid]; am = pp.msg; hi = mid - 1; } else { lo = mid + 1; }
    }
    r.line = ans; r.msg = am; r.lines = lines;
    if (ans === n && perr(pref(n)).ok) { r.unclosed = 1; }
    if (ans === n && (sc.end === 'bc' || sc.end === 'tpl')) { r.unclosed = 1; }
    for (var k = 0; k !== sc.sp.length; k++) {
      if (r.unclosed || sc.sp[k].l - ans <= 0) { r.special = sc.sp[k]; r.line = sc.sp[k].l; break; }
    }
    if (r.unclosed) { r.msg = 'Unexpected end of input'; if (!r.special && sc.st.length) { r.line = sc.st[sc.st.length - 1].l; } }
    return r;
  }
  function explain(r) {
    var m = r.msg, sc = r.sc, l = r.line, t, h = '';
    if (r.special) { return { t: 'พบ' + spName(r.special.c) + ' ที่ JavaScript อ่านไม่ได้', h: 'มักติดมาจากโปรแกรมประมวลผลคำ แอปแชต เว็บเพจ หรือโหมดพิมพ์ภาษาอื่น กด “แก้ไข” เพื่อแทนที่หรือลบให้' }; }
    if (/Unexpected token '?\x3c/.test(m)) { return { t: 'มี HTML หรือ JSX อยู่ในที่ที่ควรเป็น JavaScript', h: 'ถ้าวางเว็บเพจทั้งหน้า ให้วางเฉพาะส่วนระหว่าง script กับ /script (กด “แก้ไข” เพื่อดึงให้) ถ้าเป็นโค้ด React (JSX) เครื่องมือนี้ตรวจ JavaScript ล้วนเท่านั้น ต้องแปลงด้วย Babel ก่อน' }; }
    if (/await is only valid|await/i.test(m) && /async|await/i.test(m)) { return { t: 'ใช้ await ในฟังก์ชันที่ไม่ได้เป็น async', h: 'เพิ่มคำว่า async หน้าฟังก์ชันที่ครอบ await นี้ (ฟังก์ชันที่ใกล้บรรทัดนี้ที่สุด)' }; }
    if (/already been declared|Cannot declare a let|redeclaration/i.test(m)) {
      var nm = (m.match(/Identifier '([^']+)'/) || [])[1], first = 0, j;
      if (nm) { for (j = 0; j !== r.lines.length; j++) { if (new RegExp('\\b(let|const|class)\\s+' + nm.replace(/\$/g, '\\$') + '\\b').test(r.lines[j])) { first = j + 1; break; } } }
      return { t: 'ประกาศชื่อ ' + (nm ? '“' + nm + '” ' : '') + 'ซ้ำด้วย let, const หรือ class', h: first ? 'ครั้งแรกอยู่ที่บรรทัด ' + first + ' ให้ใช้ชื่ออื่น หรือลบการประกาศซ้ำ' : 'ให้ใช้ชื่ออื่น หรือลบการประกาศซ้ำ' };
    }
    if (r.unclosed) {
      var o = sc.st[sc.st.length - 1];
      if (o) { var cl = { '(': ')', '[': ']', '{': '}', '${': '}' }[o.t]; return { t: 'วงเล็บ ' + o.t + ' ที่เปิดไว้ที่บรรทัด ' + o.l + ' ยังไม่ถูกปิด', h: 'เพิ่ม ' + cl + ' ให้ตรงกับจุดที่ควรปิด ถ้าวงเล็บครบแล้วให้ตรวจเครื่องหมายคำพูดหรือ template ที่ยังไม่ปิด' }; }
      return { t: 'โค้ดจบก่อนเวลา มีบางอย่างที่เปิดไว้แต่ไม่ได้ปิด', h: 'ตรวจเครื่องหมายคำพูด ` หรือ /* ที่ยังไม่ปิด' };
    }
    if (/after argument list|end an argument list/i.test(m)) { return { t: 'วงเล็บของการเรียกฟังก์ชันไม่ได้ถูกปิด', h: 'ตรวจบรรทัดนี้และบรรทัดก่อนหน้า เช่น greet(\'World\'; ต้องเป็น greet(\'World\');' }; }
    if (/Unexpected (identifier|string|number)|after property list|missing ; before|Unexpected token ('|")?[\w$]/i.test(m)) { return { t: 'มีสองส่วนวางติดกันโดยไม่มีอะไรเชื่อม', h: 'ส่วนใหญ่ลืมคอมมา (,) หรือเซมิโคลอน (;) ก่อนบรรทัดนี้ หรือมีเครื่องหมายคำพูดภายในข้อความที่ทำให้ข้อความจบก่อนเวลา เช่น \'It\\\'s done\'' }; }
    if (/Invalid or unexpected token|illegal character|Invalid character|unterminated string/i.test(m)) { return { t: 'พบอักขระที่ JavaScript อ่านไม่ได้ หรือข้อความที่ไม่ได้ปิดในบรรทัดเดียวกัน', h: 'ตรวจเครื่องหมายคำพูดที่ไม่ครบคู่ และอักขระที่คัดลอกมาจากที่อื่น' }; }
    if (/Unexpected token/i.test(m)) { return { t: 'พบสัญลักษณ์ที่ไม่ควรอยู่ตรงนี้ (' + m + ')', h: 'ตรวจวงเล็บเกิน เครื่องหมายที่ซ้ำ หรือบรรทัดก่อนหน้าที่เขียนไม่จบ' }; }
    return { t: 'Syntax ผิดพลาด', h: 'ข้อความจากเบราว์เซอร์: ' + m };
  }
  /* ---- แก้อัตโนมัติ (เฉพาะกรณีที่แน่ใจ) ---- */
  function fix(r) {
    var s = r.src, sc = r.sc, m = r.msg || '', i, t, parts = [], re, mm;
    if (/Unexpected token '?\x3c/.test(m)) {
      re = /\x3cscript[^>]*>([\s\S]*?)\x3c\/script>/gi;
      while ((mm = re.exec(s))) { if (mm[1].trim()) { parts.push(mm[1].trim()); } }
      if (parts.length) { return { s: parts.join('\n\n'), d: 'ดึงเฉพาะโค้ดจากแท็ก script' }; }
    }
    if (sc.sp.length) {
      t = s;
      for (i = sc.sp.length - 1; i >= 0; i--) { t = t.slice(0, sc.sp[i].i) + SPECIAL[sc.sp[i].c] + t.slice(sc.sp[i].i + 1); }
      return { s: t, d: 'แทนที่หรือลบอักขระพิเศษ ' + sc.sp.length + ' ตัว' };
    }
    if (/Unexpected (identifier|string|number)|after property list/i.test(m) && r.line > 1) {
      var p = r.line - 2, top = sc.tops[r.line - 1];
      while (p >= 0 && !r.lines[p].trim()) { p--; }
      if (p >= 0 && (top === '{' || top === '[' || top === '(') && !/\/\//.test(r.lines[p]) && !/[,{[(;:+\-*\/=&|?>]\s*$/.test(r.lines[p])) {
        var ls = r.lines.slice(); ls[p] = ls[p].replace(/\s*$/, '') + ','; return { s: ls.join('\n'), d: 'เติมคอมมาที่ท้ายบรรทัด ' + (p + 1) };
      }
    }
    if (r.unclosed && sc.st.length && sc.end === 'c' && !sc.mis) {
      var cl = '', MAP = { '(': ')', '[': ']', '{': '}' }, bad = false;
      for (i = sc.st.length - 1; i >= 0; i--) { if (MAP[sc.st[i].t]) { cl += MAP[sc.st[i].t]; } else { bad = true; } }
      if (!bad) { return { s: s.replace(/\s*$/, '') + '\n' + cl + '\n', d: 'ปิดวงเล็บที่ค้างไว้ท้ายไฟล์ (' + cl + ')' }; }
    }
    return null;
  }
  /* ---- แสดงผล ---- */
  function lineCount() { return ta.value.split('\n').length; }
  function drawGutter(errLine) {
    var n = lineCount(), out = '', i;
    if (n > 20000) { gut.innerHTML = ''; return; }
    for (i = 1; i !== n + 1; i++) { out += (i === errLine ? '<b class="e">' : '<b>') + i + '</b>'; }
    gut.innerHTML = out; gut.scrollTop = ta.scrollTop;
  }
  function show(cls, html) { box.className = 'jsv-res ' + cls; box.innerHTML = html; }
  function mark(line) {
    var pos = 0, i, ls = ta.value.split('\n');
    for (i = 0; i !== line - 1; i++) { pos += ls[i].length + 1; }
    ta.setSelectionRange(pos, pos + (ls[line - 1] || '').length);
    ta.scrollTop = Math.max(0, (line - 3) * LH); gut.scrollTop = ta.scrollTop;
  }
  function render(r, notes) {
    current = r; btnFix.hidden = true; drawGutter(0);
    var pre = notes && notes.length ? '<p>แก้ไขแล้ว: ' + esc(notes.join(' • ')) + '</p>' : '';
    if (r.empty) { show('', 'ไม่มีโค้ดให้ตรวจสอบ'); return; }
    if (r.ok) {
      var ex = r.mod ? '<p>โค้ดนี้ใช้ได้เฉพาะแบบโมดูล: ใส่ <code>type="module"</code> ในแท็ก script, ใช้ไฟล์ <code>.mjs</code> หรือใส่ <code>"type": "module"</code> ใน package.json (Node.js)</p>' : '';
      show('ok', '<strong>JavaScript ถูกต้อง</strong>' + pre + '<p>ต้องใช้ JavaScript อย่างน้อย ' + r.ver + ' (ประมาณจาก syntax ที่พบ)</p>' + ex + '<p>ตรวจเฉพาะ Syntax ข้อผิดพลาดตอนรัน เช่น x is not defined จะไม่ถูกตรวจ</p>');
      return;
    }
    var e = explain(r), ln = r.lines[r.line - 1] || '', shown = ln.length > 220 ? ln.slice(0, 220) + '…' : ln, cp = '';
    if (r.special) { cp = '\n' + new Array(String(r.line).length + 3 + Math.min(r.special.k, 220)).join(' ') + '^'; }
    show('er', '<strong>Syntax ผิดพลาด ที่บรรทัด ' + r.line + (r.special ? ' คอลัมน์ ' + (r.special.k + 1) : '') + '</strong>' + pre + '<p>' + esc(e.t) + '</p><p>' + esc(e.h) + '</p><pre>' + r.line + ' | ' + esc(shown) + esc(cp) + '<\/pre><p>ข้อความจากเบราว์เซอร์: <code>' + esc(r.msg) + '</code></p>');
    drawGutter(r.line); mark(r.line);
    btnFix.hidden = !fix(r);
  }
  function run() {
    var v = ta.value;
    if (v.length > MAX) { show('er', 'ไฟล์ใหญ่เกิน 10 MB'); return; }
    var r; try { r = check(v); } catch (e) { show('er', 'ตรวจสอบไม่สำเร็จ: ' + esc(e.message)); return; }
    render(r);
  }
  function applyFix() {
    var v = ta.value, notes = [], r = null, f, i;
    for (i = 0; i !== 8; i++) {
      r = check(v);
      if (r.ok || r.empty) { break; }
      f = fix(r);
      if (!f) { break; }
      v = f.s; notes.push(f.d);
    }
    if (!notes.length) { show('in', 'ไม่มีวิธีแก้อัตโนมัติที่แน่ใจ กรุณาแก้ตามคำแนะนำด้านบน'); return; }
    undoText = ta.value; btnUndo.hidden = false; ta.value = v;
    render(check(v), notes);
  }
  function load(file) {
    if (!file) { return; }
    if (file.size > MAX) { show('er', 'ไฟล์ใหญ่เกิน 10 MB'); return; }
    var fr = new FileReader();
    fr.onload = function () { undoText = ta.value; ta.value = String(fr.result); fnEl.textContent = file.name; drawGutter(0); run(); };
    fr.onerror = function () { show('er', 'อ่านไฟล์ไม่สำเร็จ'); };
    fr.readAsText(file);
  }
  /* ---- ตัวอย่าง ---- */
  var EX = [
    ['โค้ดที่ถูกต้อง', "function greet(name) {\n  return `Hello, ${name}!`;\n}\nconsole.log(greet('World'));"],
    ['ขาดวงเล็บ', "function greet(name) {\n  return 'Hello, ' + name;\n}\nconsole.log(greet('World');"],
    ['บล็อกไม่ปิด', "function total(items) {\n  let sum = 0;\n  for (const i of items) {\n    sum += i;\n  }\n  return sum;\n\nconsole.log(total([1, 2, 3]));"],
    ['ขาดคอมมา', "const user = {\n  name: 'Somchai'\n  age: 30\n};"],
    ['เครื่องหมายคำพูดในข้อความ', "const msg = 'It's done';"],
    ['เครื่องหมายคำพูดโค้ง', "const title = \u201CHello\u201D;\nconsole.log(title);"],
    ['อักขระที่มองไม่เห็น', "const a = 1;\u200B\nconst b = 2;"],
    ['await', "function load() {\n  const res = await fetch('/api');\n  return res;\n}"],
    ['JSX', "function App() {\n  return (\n    \x3cdiv className=\"app\"\x3eสวัสดี\x3c/div\x3e\n  );\n}"]
  ];
  var exBox = $('jsv-ex');
  EX.forEach(function (x) {
    var b = document.createElement('button');
    b.type = 'button'; b.className = 'jsv-chip'; b.textContent = x[0];
    b.addEventListener('click', function () { undoText = ta.value; ta.value = x[1]; fnEl.textContent = ''; drawGutter(0); run(); });
    exBox.appendChild(b);
  });
  /* ---- events ---- */
  $('jsv-run').addEventListener('click', run);
  btnFix.addEventListener('click', applyFix);
  $('jsv-open').addEventListener('click', function () { fileIn.click(); });
  fileIn.addEventListener('change', function () { load(fileIn.files[0]); fileIn.value = ''; });
  $('jsv-clear').addEventListener('click', function () {
    if (ta.value) { undoText = ta.value; btnUndo.hidden = false; }
    ta.value = ''; fnEl.textContent = ''; btnFix.hidden = true; drawGutter(0); show('', 'ไม่มีโค้ดให้ตรวจสอบ');
  });
  btnUndo.addEventListener('click', function () {
    if (undoText === null) { return; }
    ta.value = undoText; undoText = null; btnUndo.hidden = true; drawGutter(0); run();
  });
  $('jsv-copy').addEventListener('click', function () {
    var b = this;
    function done() { b.textContent = 'คัดลอกแล้ว'; setTimeout(function () { b.textContent = 'คัดลอก'; }, 1500); }
    if (navigator.clipboard && navigator.clipboard.writeText) { navigator.clipboard.writeText(ta.value).then(done, function () { ta.select(); }); }
    else { ta.select(); try { document.execCommand('copy'); done(); } catch (e) { } }
  });
  ta.addEventListener('input', function () { drawGutter(0); btnFix.hidden = true; });
  ta.addEventListener('scroll', function () { gut.scrollTop = ta.scrollTop; });
  ta.addEventListener('keydown', function (e) { if ((e.ctrlKey || e.metaKey) && e.key === 'Enter') { e.preventDefault(); run(); } });
  ed.addEventListener('dragover', function (e) { e.preventDefault(); ed.classList.add('jsv-drag'); });
  ed.addEventListener('dragleave', function () { ed.classList.remove('jsv-drag'); });
  ed.addEventListener('drop', function (e) {
    e.preventDefault(); ed.classList.remove('jsv-drag');
    if (e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0]) { load(e.dataTransfer.files[0]); }
  });
  drawGutter(0);
})();
</script>

## วิธีใช้งานเครื่องมือ

1. **ใส่โค้ด:** วางโค้ด JavaScript ลงในช่อง หรือกด “เปิดไฟล์” เลือกไฟล์ `.js`, `.mjs`, `.cjs` (ขนาดไม่เกิน 10 MB) หรือลากไฟล์มาวางในช่องได้เลย
2. **กด “ตรวจสอบ”** (หรือ Ctrl + Enter): ถ้าถูกต้องจะแสดงผลสีเขียวพร้อมเวอร์ชัน JavaScript ขั้นต่ำที่ต้องใช้
3. **ถ้ามีข้อผิดพลาด:** บรรทัดที่มีปัญหาจะถูกทำเครื่องหมายสีแดงที่เลขบรรทัดและถูกเลือกในช่อง พร้อมคำอธิบายสาเหตุและข้อความต้นฉบับจากเบราว์เซอร์
4. **กด “แก้ไข”** (ปรากฏเฉพาะเมื่อเครื่องมือแน่ใจว่าแก้ได้): ระบบแก้ให้แล้วตรวจสอบซ้ำโดยอัตโนมัติ ถ้าไม่พอใจให้กด “เลิกทำ” เพื่อนำข้อความเดิมกลับมา
5. **ปุ่มอื่น ๆ:** “คัดลอก” คัดลอกโค้ดทั้งหมด, “ล้าง” ลบโค้ดในช่อง (เลิกทำได้), และปุ่ม “ลองตัวอย่าง” ใช้ดูว่าข้อผิดพลาดแต่ละแบบแสดงผลอย่างไร
6. **แก้เองแล้วตรวจซ้ำ:** หากแก้โค้ดด้วยตัวเอง ให้กด “ตรวจสอบ” อีกครั้ง

เครื่องมือนี้ใช้ตัวอ่านโค้ดของเบราว์เซอร์ในเครื่องคุณ โค้ดจึงไม่ถูกส่งออกไปที่ใดและไม่ถูกรัน

## คำอธิบายศัพท์ที่พบบ่อย

### ศัพท์พื้นฐาน

- **Syntax:** กฎการเขียนโค้ดของภาษา เช่น วงเล็บต้องปิดครบ และต้องมีคอมมาคั่นรายการ
- **Syntax Error:** ข้อผิดพลาดจากการเขียนผิดกฎ เบราว์เซอร์อ่านต่อไม่ได้ ไฟล์จึงไม่ถูกรันเลยสักส่วน
- **Runtime Error:** ข้อผิดพลาดที่เกิดตอนโค้ดกำลังรัน เช่น `x is not defined` เครื่องมือนี้ไม่ตรวจเพราะไม่รันโค้ด
- **Parser (ตัวอ่านโค้ด):** ส่วนที่อ่านโค้ดแล้วแปลงเป็นโครงสร้างที่เครื่องเข้าใจ ถ้าอ่านไม่ได้จะเกิด Syntax Error
- **Linter (เช่น ESLint):** เครื่องมือตรวจสไตล์และตัวแปรที่ไม่ได้ใช้ ซึ่งต่างจากการเช็ค Syntax และเครื่องมือนี้ไม่ได้ตรวจเรื่องเหล่านี้
- **ES (ECMAScript):** มาตรฐานของ JavaScript ES5 คือโค้ดก่อนปี ค.ศ. 2015 ส่วน ES2020 ขึ้นไปมี syntax ใหม่ เช่น `?.` และ `??`
- **Minified:** โค้ดที่ถูกอัดให้เหลือบรรทัดเดียวเพื่อลดขนาดไฟล์ ตรวจได้เหมือนไฟล์ปกติ
- **เลขบรรทัดและคอลัมน์:** ตำแหน่งของปัญหา บรรทัดนับจากบนลงล่าง คอลัมน์นับจากซ้ายไปขวา
- **โมดูล (Module):** ไฟล์ที่ใช้ `import` หรือ `export` ต้องโหลดด้วย `type="module"` หรือไฟล์ `.mjs`
- **async / await:** วิธีเขียนโค้ดที่ต้องรอผล เช่น การดึงข้อมูล คำว่า `await` ใช้ได้ในฟังก์ชันที่ประกาศ `async` เท่านั้น (หรือระดับบนสุดของโมดูล)
- **JSX:** วิธีเขียนแท็ก HTML ในโค้ด JavaScript ของ React ไม่ใช่ JavaScript มาตรฐาน ต้องแปลงด้วย Babel ก่อน

### ข้อความผิดพลาดที่เบราว์เซอร์แสดง

เบราว์เซอร์มักชี้ไปยังจุดที่อ่านต่อไม่ไหว ซึ่งอาจอยู่หลังจุดที่ผิดจริงไปหนึ่งบรรทัดหรือมากกว่า Firefox และ Safari ใช้ข้อความต่างจาก Chrome เล็กน้อย

- `missing ) after argument list`: วงเล็บของการเรียกฟังก์ชันไม่ได้ปิด เช่น `greet('World';`
- `Unexpected end of input`: มีวงเล็บหรือบล็อกที่เปิดไว้แต่ไม่ได้ปิด เบราว์เซอร์ชี้ได้แค่ท้ายไฟล์ เครื่องมือนี้จะบอกวงเล็บที่ค้างอยู่
- `Unexpected identifier`: มีสองคำวางติดกันโดยไม่มีตัวเชื่อม มักลืมคอมมา หรือมีเครื่องหมายคำพูดในข้อความ เช่น `'It's done'`
- `Invalid or unexpected token`: มีอักขระที่ JavaScript อ่านไม่ได้ เช่น เครื่องหมายคำพูดโค้ง `“ ”` อักขระที่มองไม่เห็น หรืออักขระ full-width `；`
- `Unexpected token '<'`: มี HTML อยู่ในที่ที่ควรเป็น JavaScript เช่น วางเว็บเพจทั้งหน้า หรือโค้ด JSX หากเกิดกับไฟล์สคริปต์ในเว็บไซต์ แสดงว่าเซิร์ฟเวอร์ส่งหน้าเว็บ (มักเป็นหน้า 404) มาแทนไฟล์สคริปต์ ให้ตรวจพาธ `src` ของแท็ก script
- `await is only valid in async functions`: ใช้ `await` ในฟังก์ชันที่ไม่ได้ระบุ `async`
- `Identifier 'x' has already been declared`: ประกาศชื่อเดิมซ้ำด้วย `let`, `const` หรือ `class`

### อักขระที่มักทำให้เกิดปัญหา

- **เครื่องหมายคำพูดโค้ง (Curly quotes):** เครื่องหมาย `“ ” ‘ ’` ที่โปรแกรมประมวลผลคำสร้างให้อัตโนมัติ JavaScript ต้องใช้ `"` หรือ `'` แบบตรง
- **อักขระที่มองไม่เห็น (Zero-width character):** อักขระที่ไม่แสดงบนหน้าจอ แต่ทำให้โค้ดผิด มักติดมาจากเว็บเพจหรือแชต AI
- **อักขระ full-width และ IME:** ตัวอักษรกว้างเต็มช่อง เช่น `；` `（` ที่เกิดจากโหมดพิมพ์ภาษาจีนหรือญี่ปุ่น (IME) ต้องเปลี่ยนเป็น `;` `(` ปกติ

## คำถามที่พบบ่อย

**เครื่องมือนี้รันโค้ดของฉันไหม?**
ไม่รัน เครื่องมือแค่ให้เบราว์เซอร์อ่านโครงสร้างโค้ด โค้ดไม่ถูกส่งออกจากเครื่อง

**ผ่านการตรวจแล้วแต่โค้ดยังพัง เพราะอะไร?**
การตรวจนี้ครอบคลุมเฉพาะ Syntax ข้อผิดพลาดตอนรัน เช่น `x is not a function` หรือ `Cannot read properties of undefined` ต้องดูจาก Console ของเบราว์เซอร์

**ตรวจโค้ด JSX หรือ TypeScript ได้ไหม?**
เครื่องมือนี้ตรวจ JavaScript ล้วน หากพบ JSX จะแจ้งให้ทราบแต่ไม่ตรวจต่อ ส่วน TypeScript ต้องแปลงเป็น JavaScript ก่อน