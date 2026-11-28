---
title: ตรวจสอบ JSON ออนไลน์ ฟรี
h1: ตรวจสอบ JSON
description: 'ตรวจสอบ JSON ออนไลน์ฟรี บอกบรรทัดและคอลัมน์ที่ผิด แก้ไขข้อผิดพลาดให้อัตโนมัติ รองรับ JSON Schema, JSONC และ JSON5 ทำงานในเบราว์เซอร์ ข้อมูลไม่ถูกอัปโหลด'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-28T08:48:00+07:00'
weight: 173
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- ตรวจสอบ JSON
- ตรวจสอบ JSON ออนไลน์
- เครื่องมือนักพัฒนา
---

<style>
#jv-app,#jv-app *{box-sizing:border-box}
#jv-app{--jv-accent:#2563eb;--jv-ok:#16a34a;--jv-warn:#d97706;--jv-err:#dc2626;--jv-bd:rgba(128,128,128,.4);margin:1rem 0;font:inherit}
#jv-app .jv-bar{display:flex;flex-wrap:wrap;gap:.5rem;margin:.6rem 0;align-items:center}
#jv-app .jv-label{font-size:.9em;opacity:.8}
#jv-app button,#jv-app select{font:inherit;padding:.4rem .8rem;border:1px solid var(--jv-bd);border-radius:6px;background:transparent;color:inherit;cursor:pointer}
#jv-app button:hover:not(:disabled){border-color:var(--jv-accent)}
#jv-app button:focus-visible,#jv-app select:focus-visible,#jv-app textarea:focus-visible,#jv-app summary:focus-visible{outline:2px solid var(--jv-accent);outline-offset:2px}
#jv-app button:disabled{opacity:.45;cursor:not-allowed}
#jv-app button.jv-primary{background:var(--jv-accent);border-color:var(--jv-accent);color:#fff}
#jv-app button.jv-chip{padding:.15rem .65rem;font-size:.85em;border-radius:999px}
#jv-app .jv-chk{display:inline-flex;gap:.35rem;align-items:center;font-size:.92em;cursor:pointer}
#jv-app .jv-editor{display:flex;border:1px solid var(--jv-bd);border-radius:8px;overflow:hidden}
#jv-app .jv-drop{outline:2px dashed var(--jv-accent);outline-offset:3px}
#jv-app .jv-gutter{margin:0;padding:10px 8px 26px;min-width:3.4em;text-align:right;overflow:hidden;white-space:pre;user-select:none;opacity:.55;border-right:1px solid var(--jv-bd);font:13px/20px ui-monospace,SFMono-Regular,Menlo,Consolas,monospace}
#jv-app textarea{margin:0;font:13px/20px ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;color:inherit;background:transparent}
#jv-app textarea.jv-input{flex:1;min-width:0;height:340px;resize:vertical;padding:10px;border:0;outline:0;white-space:pre;overflow:auto;tab-size:2}
#jv-app .jv-status{margin:.7rem 0;padding:.7rem .9rem;border-radius:8px;border-left:5px solid var(--jv-bd);background:rgba(128,128,128,.1);font-weight:600}
#jv-app .jv-status.ok{border-left-color:var(--jv-ok);background:rgba(22,163,74,.12)}
#jv-app .jv-status.warn{border-left-color:var(--jv-warn);background:rgba(217,119,6,.13)}
#jv-app .jv-status.err{border-left-color:var(--jv-err);background:rgba(220,38,38,.12)}
#jv-app .jv-stats{font-size:.88em;opacity:.8;margin:.2rem 0 .6rem}
#jv-app .jv-notice{font-size:.92em;margin:.4rem 0;padding:.5rem .8rem;border-radius:6px;background:rgba(37,99,235,.1)}
#jv-app ol.jv-issues{list-style:none;margin:.5rem 0;padding:0;max-height:280px;overflow:auto}
#jv-app ol.jv-issues li{margin:0 0 .4rem}
#jv-app ol.jv-issues button{width:100%;text-align:left;display:block;padding:.5rem .7rem}
#jv-app .jv-pos{font-weight:700}
#jv-app .jv-tag{display:inline-block;margin-left:.4rem;padding:0 .45rem;font-size:.78em;border-radius:999px;border:1px solid var(--jv-bd)}
#jv-app .jv-tag.fix{border-color:var(--jv-ok);color:var(--jv-ok)}
#jv-app .jv-tag.manual{border-color:var(--jv-err);color:var(--jv-err)}
#jv-app .jv-tag.warn{border-color:var(--jv-warn);color:var(--jv-warn)}
#jv-app .jv-snip{display:block;margin-top:.2rem;font:12px/1.5 ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;opacity:.8;white-space:pre;overflow:hidden;text-overflow:ellipsis}
#jv-app details.jv-box{margin:.6rem 0;border:1px solid var(--jv-bd);border-radius:8px;padding:.5rem .8rem}
#jv-app details.jv-box>summary{cursor:pointer;font-weight:600}
#jv-app .jv-tree{font:13px/1.7 ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;max-height:360px;overflow:auto;margin-top:.5rem}
#jv-app .jv-tree details{margin-left:1rem}
#jv-app .jv-tree summary{cursor:pointer}
#jv-app .jv-leaf{margin-left:1.4rem}
#jv-app .jv-string{color:#16a34a}
#jv-app .jv-number{color:#2563eb}
#jv-app .jv-boolean{color:#d97706}
#jv-app .jv-null{opacity:.6}
#jv-app textarea.jv-schema{width:100%;height:160px;resize:vertical;padding:8px;border:1px solid var(--jv-bd);border-radius:6px;white-space:pre;overflow:auto}
#jv-app ul.jv-list{margin:.4rem 0;padding-left:1.2rem}
#jv-app kbd{padding:0 .3rem;border:1px solid var(--jv-bd);border-radius:4px;font-size:.85em}
</style>

<div id="jv-app" lang="th">
<div class="jv-bar" role="group" aria-label="เครื่องมือไฟล์">
<button type="button" data-jv="open">เปิดไฟล์</button>
<input type="file" data-jv="file" accept=".json,.jsonc,.json5,.jsonl,.ndjson,.txt,application/json,text/plain" hidden>
<button type="button" data-jv="copy">คัดลอก</button>
<button type="button" data-jv="download">ดาวน์โหลด .json</button>
<button type="button" data-jv="undo" disabled>เลิกทำ</button>
<button type="button" data-jv="clear">ล้าง</button>
<label class="jv-chk"><input type="checkbox" data-jv="jsonc"> ยอมรับ JSONC / JSON5</label>
</div>
<div class="jv-bar" role="group" aria-label="ตัวอย่าง">
<span class="jv-label">ตัวอย่าง:</span>
<span data-jv="chips" class="jv-bar" style="margin:0"></span>
</div>
<div class="jv-editor" data-jv="editor">
<pre class="jv-gutter" data-jv="gutter" aria-hidden="true">1</pre>
<textarea class="jv-input" data-jv="input" wrap="off" spellcheck="false" autocomplete="off" autocapitalize="off" aria-label="ช่องใส่ JSON" placeholder="วาง JSON ที่นี่ หรือลากไฟล์มาวาง (ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดข้อมูล)"></textarea>
</div>
<div class="jv-notice" data-jv="notice" hidden></div>
<div class="jv-status" data-jv="status" role="status" aria-live="polite">วาง JSON เพื่อเริ่มตรวจสอบ</div>
<div class="jv-stats" data-jv="stats"></div>
<div class="jv-bar" role="group" aria-label="การทำงาน">
<button type="button" class="jv-primary" data-jv="fix" hidden>แก้ไขให้</button>
<button type="button" data-jv="validate">ตรวจสอบ</button>
<button type="button" data-jv="format" disabled>จัดรูปแบบ</button>
<button type="button" data-jv="minify" disabled>ย่อ (Minify)</button>
<label class="jv-label" for="jv-indent">เยื้อง</label>
<select id="jv-indent" data-jv="indent"><option value="2">2 ช่องว่าง</option><option value="4">4 ช่องว่าง</option><option value="tab">Tab</option></select>
<label class="jv-chk"><input type="checkbox" data-jv="sort"> เรียงคีย์ A-Z</label>
</div>
<div data-jv="fixlog" hidden></div>
<ol class="jv-issues" data-jv="issues"></ol>
<details class="jv-box" data-jv="tree">
<summary>Tree view (ดูโครงสร้างแบบขยาย/ย่อ)</summary>
<div class="jv-tree" data-jv="treebox">ต้องมี JSON ที่ถูกต้องก่อนจึงจะแสดงโครงสร้าง</div>
</details>
<details class="jv-box" data-jv="schema">
<summary>ตรวจสอบตาม JSON Schema</summary>
<p class="jv-label">วาง Schema (draft-07 ถึง 2020-12 ที่ใช้บ่อย) แล้วกดตรวจสอบ ระบบจะเทียบกับ JSON ในช่องด้านบน</p>
<textarea class="jv-schema" data-jv="schemain" spellcheck="false" aria-label="JSON Schema" placeholder='{"type":"object","required":["name"],"properties":{"name":{"type":"string"}}}'></textarea>
<div class="jv-bar"><button type="button" data-jv="schemarun">ตรวจสอบตาม Schema</button></div>
<div data-jv="schemaout" role="status" aria-live="polite"></div>
</details>
<p class="jv-label">ทางลัด: <kbd>Ctrl</kbd>/<kbd>⌘</kbd> + <kbd>Enter</kbd> = แก้ไขให้ · <kbd>Ctrl</kbd>/<kbd>⌘</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd> = จัดรูปแบบ</p>
<noscript><p>เครื่องมือนี้ต้องเปิดใช้งาน JavaScript</p></noscript>
</div>

<script>
(function () {
'use strict';

/* ========== แกนหลัก (ไม่แตะ DOM) ========== */
var WSX = /[   -​  　﻿]/;
var LIT = { 'true': 'true', 'false': 'false', 'null': 'null', 'True': 'true', 'False': 'false', 'None': 'null', 'undefined': 'null', 'NaN': 'null', 'Infinity': 'null' };
var RWORD = /[\p{L}_$][\p{L}\p{M}\p{N}_$]*/uy;
var RKEY = /[\p{L}_$][\p{L}\p{M}\p{N}_$]*|\d+/uy;
var RNUM = /[+-]?(?:0[xX][0-9a-fA-F]+|(?:\d+\.?\d*|\.\d+)(?:[eE][+-]?\d+)?)/y;
var RFENCE = /\s*```[A-Za-z0-9_-]*[ \t]*\r?\n?/y;
var RASSIGN = /\s*(?:export\s+default\b|module\.exports\s*=|(?:var|let|const)\s+[A-Za-z_$][\w$]*\s*=|[A-Za-z_$][\w$.]*\s*=(?!=))\s*/y;
var RJSONP = /\s*[A-Za-z_$][\w$.]*\s*\(\s*/y;
var QUOTES = '"\'“”‘’';

function lc(text, pos) {
  var l = 1, c = 1;
  for (var i = 0; i < pos && i < text.length; i++) {
    if (text.charCodeAt(i) === 10) { l++; c = 1; } else { c++; }
  }
  return { line: l, col: c };
}

function analyze(src) {
  var s = src, i = 0, n = s.length, issues = [], dups = [], out = [], done = 0, tops = [], fatal = null, wrapped = false, m;
  function add(pos, code, msg, cat) { if (issues.length < 300) { issues.push({ pos: pos, code: code, msg: msg, cat: cat, fixable: true }); } }
  function Fatal(pos, code, msg) { this.pos = pos; this.code = code; this.msg = msg; }
  function fail(pos, code, msg) { throw new Fatal(pos, code, msg); }

  function ws() {
    for (;;) {
      if (i >= n) { done = i; return; }
      var c = s[i];
      if (c === ' ' || c === '\n' || c === '\r' || c === '\t') { out.push(c); i++; }
      else if (WSX.test(c)) { add(i, 'nbsp', 'พบช่องว่างพิเศษ (non-breaking / full-width) จึงแปลงเป็นช่องว่างปกติ', 'ws'); out.push(' '); i++; }
      else if (c === '/' && s[i + 1] === '/') {
        var a = i; while (i < n && s[i] !== '\n') { i++; }
        add(a, 'comment', 'พบคอมเมนต์ // ซึ่ง JSON มาตรฐานไม่รองรับ จึงลบออก', 'json5');
      } else if (c === '/' && s[i + 1] === '*') {
        var b = i, e = s.indexOf('*/', i + 2);
        if (e < 0 || e + 2 > n) { fail(b, 'comment_unclosed', 'คอมเมนต์ /* ไม่มี */ ปิด'); }
        i = e + 2;
        add(b, 'comment', 'พบคอมเมนต์ /* */ ซึ่ง JSON มาตรฐานไม่รองรับ จึงลบออก', 'json5');
      } else { done = i; return; }
    }
  }

  function str() {
    var st = i, q = s[i];
    var closers = q === '"' ? '"' : q === "'" ? "'" : (q === '“' || q === '”') ? '“”' : '‘’';
    var buf = '';
    i++;
    for (;;) {
      if (i >= n) { add(st, 'str_unclosed', 'สตริงไม่มีเครื่องหมายคำพูดปิด (ข้อมูลอาจถูกตัดท้าย) จึงเติมให้', 'trunc'); break; }
      var c = s[i];
      if (closers.indexOf(c) >= 0) { i++; break; }
      if (c === '\\') {
        var e = s[i + 1];
        if (e === undefined || i + 1 >= n) { i++; continue; }
        if ('"\\/bfnrt'.indexOf(e) >= 0) { buf += c + e; i += 2; }
        else if (e === 'u') {
          var h = s.substr(i + 2, 4);
          if (/^[0-9a-fA-F]{4}$/.test(h)) { buf += '\\u' + h; i += 6; }
          else { fail(i, 'bad_unicode', 'Escape \\u ต้องตามด้วยเลขฐานสิบหก 4 หลัก เช่น \\u0E01'); }
        }
        else if (e === "'") { buf += "'"; add(i, 'bad_escape', "พบ \\' ซึ่งไม่ใช่ escape ที่ถูกต้องใน JSON จึงเปลี่ยนเป็น '", 'json5'); i += 2; }
        else if (e === '\n' || e === '\r') {
          add(i, 'bad_escape', 'พบ \\ ท้ายบรรทัดในสตริง (line continuation) จึงลบออก', 'json5');
          i += (e === '\r' && s[i + 2] === '\n') ? 3 : 2;
        }
        else { buf += '\\\\' + e; add(i, 'bad_escape', 'พบ \\' + e + ' ซึ่งไม่ใช่ escape ที่ถูกต้อง จึงแปลงเป็น \\\\ (เครื่องหมาย \\ ตัวจริง)', 'syntax'); i += 2; }
        continue;
      }
      var code = c.charCodeAt(0);
      if (code < 32) {
        if (c === '\n' && /^\r?\n[ \t]*["'“‘}\]]/.test(s.substr(i, 60))) {
          fail(st, 'str_newline', 'สตริงไม่ปิดก่อนขึ้นบรรทัดใหม่ อาจลืมเครื่องหมายคำพูดปิด จึงไม่เดาให้');
        }
        buf += c === '\n' ? '\\n' : c === '\r' ? '\\r' : c === '\t' ? '\\t' : '\\u' + ('0000' + code.toString(16)).slice(-4);
        add(i, 'raw_ctrl', 'พบการขึ้นบรรทัดใหม่/Tab ดิบในสตริง ต้องเขียนเป็น \\n หรือ \\t', 'syntax');
        i++; continue;
      }
      if (c === '"') { buf += '\\"'; i++; continue; }
      buf += c; i++;
    }
    if (q !== '"') { add(st, 'quote', 'สตริงใช้เครื่องหมายคำพูดที่ไม่ใช่ " (JSON ต้องใช้ " เท่านั้น)', 'json5'); }
    out.push('"' + buf + '"'); done = i;
    return buf;
  }

  function num() {
    var st = i;
    RNUM.lastIndex = i;
    var mt = RNUM.exec(s);
    if (!mt || mt.index !== i) {
      var mm = /^[+-]?(Infinity|NaN)/.exec(s.substr(i, 10));
      if (mm) { i += mm[0].length; add(st, 'literal', mm[0] + ' ไม่มีใน JSON จึงแปลงเป็น null', 'py'); out.push('null'); done = i; return; }
      fail(i, 'bad_number', 'รูปแบบตัวเลขไม่ถูกต้อง');
    }
    var t = mt[0];
    i += t.length;
    if (i < n && /[\w$.]/.test(s[i])) { fail(st, 'bad_number', 'รูปแบบตัวเลขไม่ถูกต้อง (มีตัวอักษรหรือจุดต่อท้ายตัวเลข)'); }
    if (/^[+-]?0\d/.test(t)) { fail(st, 'leading_zero', 'ตัวเลขขึ้นต้นด้วย 0 (เช่น 007) ไม่ถูกต้องใน JSON และอาจหมายถึงเลขฐานแปด จึงไม่แก้ให้อัตโนมัติ'); }
    if (!/^-?(?:0|[1-9]\d*)(?:\.\d+)?(?:[eE][+-]?\d+)?$/.test(t)) {
      var u = t, sign = '';
      if (u[0] === '+' || u[0] === '-') { sign = u[0] === '-' ? '-' : ''; u = u.slice(1); }
      if (/^0[xX]/.test(u)) { u = String(parseInt(u, 16)); }
      else { if (u[0] === '.') { u = '0' + u; } u = u.replace(/\.(?=[eE]|$)/, ''); }
      t = sign + u;
      add(st, 'num_format', 'รูปแบบตัวเลขที่ JSON ไม่รองรับ (เช่น +1, .5, 0xFF) จึงแปลงเป็น ' + t, 'json5');
    }
    out.push(t); done = i;
  }

  function word() {
    var st = i;
    RWORD.lastIndex = i;
    var r = RWORD.exec(s), w = r[0];
    if (Object.prototype.hasOwnProperty.call(LIT, w)) {
      i += w.length;
      var v = LIT[w];
      if (v !== w) { add(st, 'literal', w + ' ไม่ใช่ค่าใน JSON จึงแปลงเป็น ' + v, 'py'); }
      out.push(v); done = i; return;
    }
    fail(st, 'bare_word', 'พบคำ "' + w + '" ที่ไม่มีเครื่องหมายคำพูด ถ้าเป็นข้อความต้องใส่ "" ครอบ (ไม่เดาให้เพราะอาจเปลี่ยนความหมาย)');
  }

  function key() {
    var c = s[i];
    if (QUOTES.indexOf(c) >= 0) { return str(); }
    RKEY.lastIndex = i;
    var r = RKEY.exec(s);
    if (r && r.index === i) {
      i += r[0].length;
      add(i - r[0].length, 'unquoted_key', 'คีย์ "' + r[0] + '" ไม่มีเครื่องหมายคำพูด จึงเติมให้', 'json5');
      out.push('"' + r[0] + '"'); done = i;
      return r[0];
    }
    fail(i, 'bad_key', 'ตรงนี้ต้องเป็นชื่อคีย์ (ข้อความในเครื่องหมายคำพูด)' + (c === undefined ? '' : ' แต่พบ "' + c + '"'));
  }

  function value(depth) {
    if (depth > 1500) { fail(i, 'deep', 'ข้อมูลซ้อนลึกเกินไป'); }
    var c = s[i];
    if (i >= n || c === undefined) { fail(i, 'eof_value', 'ข้อมูลจบก่อนครบ: ขาดค่า (value)'); }
    if (c === '{') { return container('{', '}', depth); }
    if (c === '[') { return container('[', ']', depth); }
    if (QUOTES.indexOf(c) >= 0) { return void str(); }
    if (c === '-' || c === '+' || c === '.' || (c >= '0' && c <= '9')) { return num(); }
    if (/[\p{L}_$]/u.test(c)) { return word(); }
    fail(i, 'unexpected', 'พบอักขระที่ไม่คาดคิด "' + c + '"');
  }

  function container(open, close, depth) {
    var st = i, isObj = open === '{', seen = isObj ? Object.create(null) : null, c, afterVal = 0;
    out.push(open); i++; done = i;
    for (;;) {
      ws();
      if (i >= n) { add(st, 'unclosed', 'ขาด ' + close + ' ปิด' + (isObj ? 'วัตถุ' : 'อาร์เรย์') + ' (ข้อมูลอาจถูกตัดท้าย) จึงเติมให้', 'trunc'); out.push(close); return; }
      c = s[i];
      if (c === close) { i++; out.push(close); done = i; return; }
      if (c === '}' || c === ']') { fail(i, 'mismatch', 'พบ "' + c + '" แต่ต้องปิดด้วย "' + close + '"'); }
      if (c === ',') { fail(i, 'empty_item', 'มีเครื่องหมาย , เกินหรือไม่มีค่าอยู่ก่อนหน้า'); }
      if (isObj) {
        var kst = i, k = key();
        ws();
        if (s[i] !== ':' || i >= n) { fail(i, 'no_colon', 'ขาดเครื่องหมาย : หลังชื่อคีย์ "' + k + '"'); }
        i++; out.push(':'); done = i;
        ws();
        var vc = s[i];
        if (i >= n || vc === ',' || vc === '}' || vc === ']') { fail(i, 'missing_value', 'ไม่มีค่าหลังเครื่องหมาย : ของคีย์ "' + k + '" (ไม่เดาค่าให้)'); }
        if (seen[k]) { dups.push({ pos: kst, key: k }); } else { seen[k] = 1; }
      }
      value(depth + 1);
      var lastEnd = i;
      afterVal = out.length;
      ws();
      c = s[i];
      if (i >= n || c === close || c === '}' || c === ']') { continue; }
      if (c === ',') {
        var cp = i, ci = out.length;
        i++; out.push(','); done = i;
        ws();
        if (i >= n || s[i] === close) { out[ci] = ''; add(cp, 'trailing_comma', 'มีเครื่องหมาย , เกินท้ายรายการ (trailing comma) จึงลบออก', 'json5'); continue; }
        if (s[i] === ',') { fail(i, 'double_comma', 'มีเครื่องหมาย , ติดกันสองตัว'); }
        continue;
      }
      if (/[\r\n]/.test(s.slice(lastEnd, i))) {
        add(lastEnd, 'missing_comma', 'ขาดเครื่องหมาย , คั่นระหว่างรายการ จึงเติมให้', 'syntax');
        out[afterVal] = ',' + (out[afterVal] || '');
      } else {
        fail(i, 'same_line', 'มีสองรายการในบรรทัดเดียวกันแต่ไม่มี , คั่น หรืออาจมีเครื่องหมายคำพูดซ้อนอยู่ในข้อความ จึงไม่เดาให้');
      }
    }
  }

  /* ----- ห่อหุ้มข้อมูล ----- */
  if (s.charCodeAt(0) === 0xFEFF) { add(0, 'bom', 'พบ BOM (U+FEFF) ที่ต้นไฟล์ จึงลบออก', 'ws'); i = 1; }
  RFENCE.lastIndex = i;
  m = RFENCE.exec(s);
  if (m) {
    add(i + Math.max(0, m[0].indexOf('`')), 'fence', 'พบ code fence ``` ครอบข้อมูล จึงลบออก', 'wrap');
    i += m[0].length;
    var tr = s.replace(/\s+$/, '');
    if (tr.slice(-3) === '```' && tr.length - 3 >= i) { n = tr.length - 3; }
  } else {
    RASSIGN.lastIndex = i;
    m = RASSIGN.exec(s);
    if (m) { add(i, 'wrapper', 'พบตัวห่อแบบ JavaScript (เช่น var data =) จึงลบออก', 'wrap'); i += m[0].length; wrapped = true; }
    else {
      RJSONP.lastIndex = i;
      m = RJSONP.exec(s);
      if (m) {
        var tail = s.slice(Math.max(i + m[0].length, n - 200), n), mt = /\)\s*;?\s*$/.exec(tail);
        if (mt) { add(i, 'jsonp', 'พบการเรียกฟังก์ชันครอบข้อมูล (JSONP) จึงลบออก', 'wrap'); i += m[0].length; n -= mt[0].length; wrapped = true; }
      }
    }
  }

  try {
    for (;;) {
      out = []; ws(); out = []; done = i;
      if (i >= n) { break; }
      if (tops.length && s[i] === ',') { i++; continue; }
      if (wrapped && s[i] === ';') { i++; continue; }
      try { value(0); }
      catch (e0) {
        if (tops.length && e0 instanceof Fatal && (e0.code === 'bare_word' || e0.code === 'unexpected')) {
          e0.code = 'trailing'; e0.msg = 'มีข้อมูลเกินอยู่หลัง JSON ที่สมบูรณ์แล้ว';
        }
        throw e0;
      }
      tops.push(out.join(''));
    }
  } catch (e) {
    if (e instanceof Fatal) { fatal = e; }
    else if (e instanceof RangeError) { fatal = new Fatal(i, 'deep', 'ข้อมูลซ้อนลึกเกินไปจนประมวลผลไม่ได้'); }
    else { throw e; }
  }

  var fixed, partial = false;
  if (fatal) {
    partial = true;
    fixed = (tops.length ? tops.join('\n') + '\n' : '') + out.join('') + s.slice(done);
  } else if (tops.length === 0) {
    fixed = '';
  } else if (tops.length > 1) {
    add(0, 'jsonl', 'พบหลายค่าระดับบนสุด (เช่น JSON Lines) จึงรวมเป็นอาร์เรย์เดียว', 'jsonl');
    fixed = '[' + tops.join(',\n') + ']';
  } else { fixed = tops[0]; }

  var valid = false;
  if (!fatal && tops.length) {
    try {
      JSON.parse(fixed);
      if (!issues.length) { JSON.parse(src); valid = true; }
    } catch (e2) {
      fatal = new Fatal(0, 'verify', 'ตรวจพบข้อผิดพลาดที่ระบบยังระบุตำแหน่งไม่ได้ กรุณาตรวจสอบข้อความด้วยตนเอง'); partial = true; valid = false;
    }
  }
  return { empty: tops.length === 0 && !fatal, valid: valid, issues: issues, dups: dups, fatal: fatal, fixed: fixed, partial: partial };
}

function sortObj(v) {
  if (Array.isArray(v)) { return v.map(sortObj); }
  if (v && typeof v === 'object') {
    var o = Object.create(null);
    Object.keys(v).sort(function (a, b) { return a < b ? -1 : a > b ? 1 : 0; }).forEach(function (k) { o[k] = sortObj(v[k]); });
    return o;
  }
  return v;
}
function format(text, indent, sort) { var v = JSON.parse(text); if (sort) { v = sortObj(v); } return JSON.stringify(v, null, indent); }
function minify(text, sort) { var v = JSON.parse(text); if (sort) { v = sortObj(v); } return JSON.stringify(v); }

function stats(v) {
  var keys = 0, nodes = 0, maxd = 0;
  (function walk(x, d) {
    nodes++; if (d > maxd) { maxd = d; }
    if (Array.isArray(x)) { for (var a = 0; a < x.length; a++) { walk(x[a], d + 1); } }
    else if (x && typeof x === 'object') { var ks = Object.keys(x); keys += ks.length; for (var b = 0; b < ks.length; b++) { walk(x[ks[b]], d + 1); } }
  })(v, 1);
  return { keys: keys, nodes: nodes, depth: maxd };
}

function schemaValidate(data, schema) {
  var errs = [];
  function typeOf(v) { return v === null ? 'null' : Array.isArray(v) ? 'array' : typeof v; }
  function isType(v, t) {
    if (t === 'integer') { return typeof v === 'number' && isFinite(v) && Math.floor(v) === v; }
    if (t === 'number') { return typeof v === 'number' && isFinite(v); }
    return typeOf(v) === t;
  }
  function eq(a, b) {
    if (a === b) { return true; }
    if (typeof a !== 'object' || typeof b !== 'object' || a === null || b === null) { return false; }
    if (Array.isArray(a) !== Array.isArray(b)) { return false; }
    var ka = Object.keys(a), kb = Object.keys(b);
    if (ka.length !== kb.length) { return false; }
    return ka.every(function (k) { return Object.prototype.hasOwnProperty.call(b, k) && eq(a[k], b[k]); });
  }
  function ref(r) {
    if (r === '#') { return schema; }
    if (r.indexOf('#/') !== 0) { return undefined; }
    var cur = schema, parts = r.slice(2).split('/');
    for (var k = 0; k < parts.length; k++) {
      var p = decodeURIComponent(parts[k]).replace(/~1/g, '/').replace(/~0/g, '~');
      if (cur === null || typeof cur !== 'object') { return undefined; }
      cur = cur[p];
    }
    return cur;
  }
  function kp(path, k) { return /^[A-Za-z_$][\w$]*$/.test(k) ? path + '.' + k : path + '[' + JSON.stringify(k) + ']'; }
  var FMT = {
    email: /^[^\s@]+@[^\s@]+\.[^\s@]+$/,
    date: /^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$/,
    'date-time': /^\d{4}-\d{2}-\d{2}[Tt ]\d{2}:\d{2}:\d{2}(\.\d+)?([Zz]|[+-]\d{2}:\d{2})$/,
    uri: /^[A-Za-z][A-Za-z0-9+.-]*:\S+$/,
    uuid: /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/,
    ipv4: /^(25[0-5]|2[0-4]\d|1?\d?\d)(\.(25[0-5]|2[0-4]\d|1?\d?\d)){3}$/
  };
  function check(v, sc, path, E, d) {
    if (E.length > 200) { return; }
    if (d > 64) { E.push({ path: path, msg: 'Schema ซ้อนลึกเกินไป' }); return; }
    if (sc === true || sc === undefined || sc === null) { return; }
    if (sc === false) { E.push({ path: path, msg: 'Schema ปฏิเสธค่านี้ (false)' }); return; }
    if (typeof sc !== 'object') { return; }
    var t = typeOf(v), sub;
    if (typeof sc.$ref === 'string') {
      var r = ref(sc.$ref);
      if (r === undefined) { E.push({ path: path, msg: 'ไม่พบ $ref: ' + sc.$ref }); } else { check(v, r, path, E, d + 1); }
    }
    if (sc.type !== undefined) {
      var ts = Array.isArray(sc.type) ? sc.type : [sc.type];
      if (!ts.some(function (x) { return isType(v, x); })) { E.push({ path: path, msg: 'ชนิดข้อมูลต้องเป็น ' + ts.join(' หรือ ') + ' แต่พบ ' + t }); }
    }
    if (Array.isArray(sc.enum) && !sc.enum.some(function (x) { return eq(x, v); })) { E.push({ path: path, msg: 'ค่าต้องเป็นหนึ่งใน ' + JSON.stringify(sc.enum) }); }
    if (Object.prototype.hasOwnProperty.call(sc, 'const') && !eq(sc.const, v)) { E.push({ path: path, msg: 'ค่าต้องเท่ากับ ' + JSON.stringify(sc.const) }); }
    if (typeof v === 'number') {
      if (typeof sc.minimum === 'number' && v < sc.minimum) { E.push({ path: path, msg: 'ต้องมีค่า ≥ ' + sc.minimum }); }
      if (typeof sc.maximum === 'number' && v > sc.maximum) { E.push({ path: path, msg: 'ต้องมีค่า ≤ ' + sc.maximum }); }
      if (typeof sc.exclusiveMinimum === 'number' && v <= sc.exclusiveMinimum) { E.push({ path: path, msg: 'ต้องมีค่า > ' + sc.exclusiveMinimum }); }
      if (typeof sc.exclusiveMaximum === 'number' && v >= sc.exclusiveMaximum) { E.push({ path: path, msg: 'ต้องมีค่า < ' + sc.exclusiveMaximum }); }
      if (typeof sc.multipleOf === 'number' && sc.multipleOf > 0) {
        var q = v / sc.multipleOf;
        if (Math.abs(q - Math.round(q)) > 1e-9) { E.push({ path: path, msg: 'ต้องเป็นพหุคูณของ ' + sc.multipleOf }); }
      }
    }
    if (typeof v === 'string') {
      var len = Array.from(v).length;
      if (typeof sc.minLength === 'number' && len < sc.minLength) { E.push({ path: path, msg: 'ข้อความสั้นเกินไป (ขั้นต่ำ ' + sc.minLength + ' ตัวอักษร)' }); }
      if (typeof sc.maxLength === 'number' && len > sc.maxLength) { E.push({ path: path, msg: 'ข้อความยาวเกินไป (สูงสุด ' + sc.maxLength + ' ตัวอักษร)' }); }
      if (typeof sc.pattern === 'string') {
        try { if (!new RegExp(sc.pattern, 'u').test(v)) { E.push({ path: path, msg: 'ไม่ตรงกับ pattern ' + sc.pattern }); } }
        catch (e) { E.push({ path: path, msg: 'pattern ใน Schema ไม่ถูกต้อง: ' + sc.pattern }); }
      }
      if (typeof sc.format === 'string' && FMT[sc.format] && !FMT[sc.format].test(v)) { E.push({ path: path, msg: 'รูปแบบไม่ตรงกับ format "' + sc.format + '"' }); }
    }
    if (Array.isArray(v)) {
      if (typeof sc.minItems === 'number' && v.length < sc.minItems) { E.push({ path: path, msg: 'มีรายการน้อยเกินไป (ขั้นต่ำ ' + sc.minItems + ')' }); }
      if (typeof sc.maxItems === 'number' && v.length > sc.maxItems) { E.push({ path: path, msg: 'มีรายการมากเกินไป (สูงสุด ' + sc.maxItems + ')' }); }
      if (sc.uniqueItems === true && v.length <= 3000) {
        outer: for (var a = 0; a < v.length; a++) { for (var b = a + 1; b < v.length; b++) { if (eq(v[a], v[b])) { E.push({ path: path, msg: 'รายการซ้ำกันที่ตำแหน่ง ' + a + ' และ ' + b }); break outer; } } }
      }
      var pre = Array.isArray(sc.prefixItems) ? sc.prefixItems : (Array.isArray(sc.items) ? sc.items : null);
      var rest = Array.isArray(sc.items) ? sc.additionalItems : sc.items;
      for (var x = 0; x < v.length; x++) {
        if (pre && x < pre.length) { check(v[x], pre[x], path + '[' + x + ']', E, d + 1); }
        else if (rest !== undefined) { check(v[x], rest, path + '[' + x + ']', E, d + 1); }
      }
    }
    if (t === 'object') {
      var ks = Object.keys(v);
      if (typeof sc.minProperties === 'number' && ks.length < sc.minProperties) { E.push({ path: path, msg: 'มีคีย์น้อยเกินไป (ขั้นต่ำ ' + sc.minProperties + ')' }); }
      if (typeof sc.maxProperties === 'number' && ks.length > sc.maxProperties) { E.push({ path: path, msg: 'มีคีย์มากเกินไป (สูงสุด ' + sc.maxProperties + ')' }); }
      if (Array.isArray(sc.required)) { sc.required.forEach(function (rk) { if (!Object.prototype.hasOwnProperty.call(v, rk)) { E.push({ path: path, msg: 'ขาดคีย์ที่จำเป็น "' + rk + '"' }); } }); }
      var props = sc.properties && typeof sc.properties === 'object' ? sc.properties : {};
      var pats = sc.patternProperties && typeof sc.patternProperties === 'object' ? Object.keys(sc.patternProperties) : [];
      ks.forEach(function (k) {
        var matched = false;
        if (Object.prototype.hasOwnProperty.call(props, k)) { matched = true; check(v[k], props[k], kp(path, k), E, d + 1); }
        pats.forEach(function (p) { try { if (new RegExp(p, 'u').test(k)) { matched = true; check(v[k], sc.patternProperties[p], kp(path, k), E, d + 1); } } catch (e) { /* ข้าม pattern ที่ผิด */ } });
        if (!matched && sc.additionalProperties !== undefined) {
          if (sc.additionalProperties === false) { E.push({ path: kp(path, k), msg: 'ไม่อนุญาตให้มีคีย์นี้ (additionalProperties: false)' }); }
          else { check(v[k], sc.additionalProperties, kp(path, k), E, d + 1); }
        }
      });
    }
    if (Array.isArray(sc.allOf)) { sc.allOf.forEach(function (x) { check(v, x, path, E, d + 1); }); }
    if (Array.isArray(sc.anyOf)) {
      if (!sc.anyOf.some(function (x) { sub = []; check(v, x, path, sub, d + 1); return sub.length === 0; })) { E.push({ path: path, msg: 'ไม่ตรงกับ schema ใดใน anyOf เลย' }); }
    }
    if (Array.isArray(sc.oneOf)) {
      var okc = sc.oneOf.filter(function (x) { sub = []; check(v, x, path, sub, d + 1); return sub.length === 0; }).length;
      if (okc !== 1) { E.push({ path: path, msg: 'ต้องตรงกับ schema ใน oneOf เพียง 1 ข้อ แต่ตรง ' + okc + ' ข้อ' }); }
    }
    if (sc.not !== undefined) { sub = []; check(v, sc.not, path, sub, d + 1); if (sub.length === 0) { E.push({ path: path, msg: 'ค่านี้ตรงกับ schema ใน not ซึ่งไม่อนุญาต' }); } }
    if (sc.if !== undefined) {
      sub = []; check(v, sc.if, path, sub, d + 1);
      if (sub.length === 0) { if (sc.then !== undefined) { check(v, sc.then, path, E, d + 1); } }
      else if (sc.else !== undefined) { check(v, sc.else, path, E, d + 1); }
    }
  }
  check(data, schema, '$', errs, 0);
  return errs.slice(0, 200);
}

var core = { analyze: analyze, format: format, minify: minify, schemaValidate: schemaValidate, lc: lc, stats: stats };
if (typeof window !== 'undefined') { window.JVCore = core; }

/* ========== ส่วนหน้าจอ ========== */
function ui() {
  var root = document.getElementById('jv-app');
  if (!root) { return; }
  var q = function (k) { return root.querySelector('[data-jv="' + k + '"]'); };
  var el = {};
  ['open', 'file', 'copy', 'download', 'undo', 'clear', 'jsonc', 'chips', 'editor', 'gutter', 'input', 'notice', 'status', 'stats', 'fix', 'validate', 'format', 'minify', 'indent', 'sort', 'fixlog', 'issues', 'tree', 'treebox', 'schema', 'schemain', 'schemarun', 'schemaout'].forEach(function (k) { el[k] = q(k); });
  var LIMIT = 5000000, undoStack = [], last = null, timer = null, lineCount = 0;

  var EXAMPLES = [
    ['ถูกต้อง', '{\n  "name": "สมชาย",\n  "age": 30,\n  "tags": ["dev", "json"],\n  "active": true,\n  "address": null\n}'],
    ['ขาดคอมมา', '{\n  "name": "สมชาย"\n  "age": 30\n}'],
    ['คอมมาเกิน', '{\n  "a": 1,\n  "b": [1, 2, 3,],\n}'],
    ['JavaScript object', "{\n  name: 'Somchai', // ชื่อ\n  age: 30,\n  tags: ['a', 'b'],\n}"],
    ['Python dict', "{'name': 'Somchai', 'active': True, 'score': None}"],
    ['ถูกตัดท้าย', '{"items":[{"id":1,"name":"A"},{"id":2,"name":"B"'],
    ['JSON Lines', '{"id":1}\n{"id":2}\n{"id":3}'],
    ['JSONC (มีคอมเมนต์)', '// config\n{\n  /* port */\n  "port": 8080\n}'],
    ['ครอบด้วย ```', '```json\n{"ok": true}\n```'],
    ['แก้เองเท่านั้น', '{"name": สมชาย, "age": }']
  ];
  EXAMPLES.forEach(function (ex) {
    var b = document.createElement('button');
    b.type = 'button'; b.className = 'jv-chip'; b.textContent = ex[0];
    b.addEventListener('click', function () { setText(ex[1], true); });
    el.chips.appendChild(b);
  });

  function setNotice(t) { if (t) { el.notice.textContent = t; el.notice.hidden = false; } else { el.notice.hidden = true; } }
  function updateGutter(t) {
    var c = 1, p = -1;
    while ((p = t.indexOf('\n', p + 1)) !== -1) { c++; }
    if (c !== lineCount) {
      lineCount = c;
      var a = new Array(c);
      for (var x = 0; x < c; x++) { a[x] = x + 1; }
      el.gutter.textContent = a.join('\n');
    }
    el.gutter.scrollTop = el.input.scrollTop;
  }
  function snippet(t, pos) {
    var ls = pos > 0 ? t.lastIndexOf('\n', pos - 1) + 1 : 0, le = t.indexOf('\n', pos);
    if (le < 0) { le = t.length; }
    var line = t.slice(ls, le).replace(/\t/g, ' ');
    if (line.length > 90) { var a = Math.max(0, pos - ls - 35); line = (a > 0 ? '…' : '') + line.slice(a, a + 75) + '…'; }
    return line;
  }
  function goTo(pos) {
    var t = el.input.value, p = lc(t, pos);
    el.input.focus();
    try { el.input.setSelectionRange(pos, Math.min(t.length, pos + 1)); } catch (e) { /* ไม่รองรับ */ }
    el.input.scrollTop = Math.max(0, (p.line - 5) * 20);
    el.gutter.scrollTop = el.input.scrollTop;
  }
  function setText(t, pushUndo) {
    if (pushUndo) { undoStack.push(el.input.value); if (undoStack.length > 30) { undoStack.shift(); } }
    el.input.value = t;
    el.undo.disabled = undoStack.length === 0;
    run(true);
  }
  function stage(cls, text) { el.status.className = 'jv-status ' + cls; el.status.textContent = text; }

  function listItem(t, pos, msg, tagText, tagCls, idx) {
    var li = document.createElement('li'), b = document.createElement('button'), p = lc(t, pos);
    b.type = 'button';
    var head = document.createElement('span'); head.className = 'jv-pos';
    head.textContent = (idx ? '#' + idx + ' ' : '') + 'บรรทัด ' + p.line + ' คอลัมน์ ' + p.col;
    var tag = document.createElement('span'); tag.className = 'jv-tag ' + tagCls; tag.textContent = tagText;
    var body = document.createElement('div'); body.textContent = msg;
    var sn = document.createElement('code'); sn.className = 'jv-snip'; sn.textContent = snippet(t, pos);
    b.appendChild(head); b.appendChild(tag); b.appendChild(body); b.appendChild(sn);
    b.addEventListener('click', function () { goTo(pos); });
    li.appendChild(b);
    return li;
  }

  function mkNode(v, k, eager) {
    if (v !== null && typeof v === 'object') {
      var d = document.createElement('details'), s = document.createElement('summary'), arr = Array.isArray(v);
      var keys = arr ? null : Object.keys(v), cnt = arr ? v.length : keys.length, filled = false;
      s.textContent = (k !== null ? k + ': ' : '') + (arr ? 'Array[' + cnt + ']' : 'Object{' + cnt + '}');
      d.appendChild(s);
      var fill = function () {
        if (filled) { return; }
        filled = true;
        var max = Math.min(cnt, 500);
        for (var x = 0; x < max; x++) { d.appendChild(arr ? mkNode(v[x], String(x), false) : mkNode(v[keys[x]], keys[x], false)); }
        if (cnt > max) { var more = document.createElement('div'); more.className = 'jv-leaf'; more.textContent = '… และอีก ' + (cnt - max) + ' รายการ'; d.appendChild(more); }
      };
      d.addEventListener('toggle', function () { if (d.open) { fill(); } });
      if (eager) { d.open = true; fill(); }
      return d;
    }
    var div = document.createElement('div');
    div.className = 'jv-leaf jv-' + (v === null ? 'null' : typeof v);
    div.textContent = (k !== null ? k + ': ' : '') + (typeof v === 'string' ? JSON.stringify(v) : String(v));
    return div;
  }
  function renderTree(text) {
    el.treebox.textContent = '';
    if (text === null) { el.treebox.textContent = 'ต้องมี JSON ที่ถูกต้องก่อนจึงจะแสดงโครงสร้าง'; return; }
    try { el.treebox.appendChild(mkNode(JSON.parse(text), null, true)); } catch (e) { el.treebox.textContent = 'แสดงโครงสร้างไม่ได้'; }
  }

  function run(force) {
    var t = el.input.value;
    updateGutter(t);
    if (t.length > LIMIT && !force) {
      setNotice('ข้อมูลมีขนาดใหญ่ (' + Math.round(t.length / 1000000) + ' MB) ระบบจะไม่ตรวจสอบอัตโนมัติ กดปุ่ม "ตรวจสอบ" เมื่อพร้อม');
      return;
    }
    setNotice(t.length > LIMIT ? 'ข้อมูลมีขนาดใหญ่ การตรวจสอบอาจใช้เวลาสักครู่' : '');
    el.issues.textContent = '';
    el.stats.textContent = '';
    if (!t.trim()) {
      last = null; stage('', 'วาง JSON เพื่อเริ่มตรวจสอบ');
      el.fix.hidden = true; el.format.disabled = true; el.minify.disabled = true; renderTree(null);
      return;
    }
    var res = core.analyze(t), jsoncOn = el.jsonc.checked;
    var accepted = !res.valid && !res.fatal && res.issues.length > 0 && jsoncOn && res.issues.every(function (x) { return x.cat === 'json5' || x.cat === 'ws'; });
    var okText = res.valid ? t : (accepted ? res.fixed : null);
    last = { res: res, okText: okText, accepted: accepted };
    var nErr = res.issues.length + (res.fatal ? 1 : 0);
    if (res.valid) { stage('ok', 'JSON ถูกต้อง' + (res.dups.length ? ' (มีคำเตือน ' + res.dups.length + ' รายการ)' : '')); }
    else if (accepted) { stage('warn', 'ถูกต้องตามรูปแบบ JSONC/JSON5 แต่ไม่ใช่ JSON มาตรฐาน (พบ ' + res.issues.length + ' จุด)'); }
    else if (res.empty) { stage('', 'ไม่พบข้อมูล JSON'); }
    else { stage('err', 'JSON ไม่ถูกต้อง พบ ' + nErr + ' ข้อผิดพลาด'); }

    var rows = [];
    res.issues.forEach(function (x) { rows.push({ pos: x.pos, msg: x.msg, fix: true }); });
    if (res.fatal) { rows.push({ pos: res.fatal.pos, msg: res.fatal.msg, fix: false }); }
    if (!accepted) {
      rows.sort(function (a, b) { return a.pos - b.pos; });
      rows.slice(0, 100).forEach(function (r, ix) { el.issues.appendChild(listItem(t, r.pos, r.msg, r.fix ? 'แก้ให้ได้' : 'ต้องแก้เอง', r.fix ? 'fix' : 'manual', ix + 1)); });
      if (rows.length > 100) { var more = document.createElement('li'); more.textContent = '… แสดง 100 รายการแรกจากทั้งหมด ' + rows.length + ' รายการ'; el.issues.appendChild(more); }
    }
    res.dups.slice(0, 50).forEach(function (d) { el.issues.appendChild(listItem(t, d.pos, 'คีย์ "' + d.key + '" ซ้ำกัน ตัวอ่านส่วนใหญ่จะใช้ค่าสุดท้ายเท่านั้น', 'เตือน', 'warn', 0)); });

    el.fix.hidden = true;
    if (!res.valid && res.issues.length) {
      if (!res.fatal) { el.fix.textContent = 'แก้ไขให้ (' + res.issues.length + ' จุด)'; el.fix.hidden = false; }
      else if (res.fixed !== t) { el.fix.textContent = 'แก้เฉพาะจุดที่ปลอดภัย (' + res.issues.length + ' จุด)'; el.fix.hidden = false; }
    }
    el.format.disabled = okText === null; el.minify.disabled = okText === null;
    if (okText !== null) {
      try { var st = core.stats(JSON.parse(okText)); el.stats.textContent = 'ขนาด ' + new Blob([okText]).size.toLocaleString() + ' ไบต์ · ' + lineCount.toLocaleString() + ' บรรทัด · ' + st.keys.toLocaleString() + ' คีย์ · ซ้อนลึก ' + st.depth + ' ชั้น'; } catch (e) { /* ข้าม */ }
    } else { el.stats.textContent = 'ขนาด ' + new Blob([t]).size.toLocaleString() + ' ไบต์ · ' + lineCount.toLocaleString() + ' บรรทัด'; }
    if (el.tree.open) { renderTree(okText); }
  }

  function showFixLog(list, partial) {
    var by = {}, order = [];
    list.forEach(function (x) { if (!by[x.code]) { by[x.code] = { msg: x.msg, n: 0 }; order.push(x.code); } by[x.code].n++; });
    el.fixlog.textContent = '';
    var box = document.createElement('div'); box.className = 'jv-notice';
    var h = document.createElement('div'); h.textContent = 'แก้ไขแล้ว ' + list.length + ' จุด' + (partial ? ' (ยังเหลือข้อผิดพลาดที่ต้องแก้เอง)' : '') + ' กด "เลิกทำ" เพื่อย้อนกลับ';
    var ul = document.createElement('ul'); ul.className = 'jv-list';
    order.forEach(function (c) { var li = document.createElement('li'); li.textContent = by[c].msg + (by[c].n > 1 ? ' (×' + by[c].n + ')' : ''); ul.appendChild(li); });
    box.appendChild(h); box.appendChild(ul); el.fixlog.appendChild(box); el.fixlog.hidden = false;
  }

  function doFix() {
    if (!last || last.res.valid) { return; }
    var r = last.res;
    if (r.fixed === el.input.value) { return; }
    var list = r.issues.slice();
    setText(r.fixed, true);
    showFixLog(list, !!r.fatal);
  }
  function indentVal() { return el.indent.value === 'tab' ? '\t' : +el.indent.value; }
  function doFormat(min) {
    if (!last || last.okText === null) { return; }
    try { setText(min ? core.minify(last.okText, el.sort.checked) : core.format(last.okText, indentVal(), el.sort.checked), true); el.fixlog.hidden = true; }
    catch (e) { stage('err', 'จัดรูปแบบไม่ได้: ' + e.message); }
  }
  function copyText(t, btn) {
    var ok = function () { var o = btn.textContent; btn.textContent = 'คัดลอกแล้ว'; setTimeout(function () { btn.textContent = o; }, 1500); };
    if (navigator.clipboard && navigator.clipboard.writeText) { navigator.clipboard.writeText(t).then(ok, function () { el.input.select(); document.execCommand('copy'); ok(); }); }
    else { el.input.select(); document.execCommand('copy'); ok(); }
  }
  function readFile(f) {
    if (!f) { return; }
    var fr = new FileReader();
    fr.onload = function () { setText(String(fr.result), true); el.fixlog.hidden = true; };
    fr.onerror = function () { stage('err', 'อ่านไฟล์ไม่สำเร็จ'); };
    fr.readAsText(f);
  }
  function runSchema() {
    el.schemaout.textContent = '';
    var msg = function (t, cls) { var p = document.createElement('div'); p.className = 'jv-status ' + cls; p.textContent = t; el.schemaout.appendChild(p); };
    if (!last || last.okText === null) { msg('ต้องมี JSON ที่ถูกต้องในช่องด้านบนก่อน', 'warn'); return; }
    var sc;
    try { sc = JSON.parse(el.schemain.value); } catch (e) { msg('Schema ไม่ใช่ JSON ที่ถูกต้อง: ' + e.message, 'err'); return; }
    var errs = core.schemaValidate(JSON.parse(last.okText), sc);
    if (!errs.length) { msg('ผ่านการตรวจสอบตาม Schema', 'ok'); return; }
    msg('พบ ' + errs.length + ' ข้อที่ไม่ตรงกับ Schema', 'err');
    var ul = document.createElement('ul'); ul.className = 'jv-list';
    errs.forEach(function (x) { var li = document.createElement('li'); var c = document.createElement('code'); c.textContent = x.path; li.appendChild(c); li.appendChild(document.createTextNode(' — ' + x.msg)); ul.appendChild(li); });
    el.schemaout.appendChild(ul);
  }

  el.input.addEventListener('input', function () { clearTimeout(timer); timer = setTimeout(function () { run(false); }, el.input.value.length > 1000000 ? 500 : 150); });
  el.input.addEventListener('scroll', function () { el.gutter.scrollTop = el.input.scrollTop; });
  el.input.addEventListener('keydown', function (e) {
    var mod = e.ctrlKey || e.metaKey;
    if (mod && e.key === 'Enter') { e.preventDefault(); doFix(); }
    else if (mod && e.shiftKey && (e.key === 'F' || e.key === 'f')) { e.preventDefault(); doFormat(false); }
  });
  el.open.addEventListener('click', function () { el.file.click(); });
  el.file.addEventListener('change', function () { readFile(el.file.files && el.file.files[0]); el.file.value = ''; });
  el.copy.addEventListener('click', function () { copyText(el.input.value, el.copy); });
  el.download.addEventListener('click', function () {
    var blob = new Blob([el.input.value], { type: 'application/json;charset=utf-8' }), a = document.createElement('a');
    a.href = URL.createObjectURL(blob); a.download = 'data.json'; document.body.appendChild(a); a.click(); document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(a.href); }, 1000);
  });
  el.undo.addEventListener('click', function () { if (undoStack.length) { el.input.value = undoStack.pop(); el.undo.disabled = undoStack.length === 0; el.fixlog.hidden = true; run(true); } });
  el.clear.addEventListener('click', function () { if (el.input.value) { undoStack.push(el.input.value); } el.input.value = ''; el.undo.disabled = undoStack.length === 0; el.fixlog.hidden = true; run(true); el.input.focus(); });
  el.validate.addEventListener('click', function () { run(true); });
  el.fix.addEventListener('click', doFix);
  el.format.addEventListener('click', function () { doFormat(false); });
  el.minify.addEventListener('click', function () { doFormat(true); });
  el.jsonc.addEventListener('change', function () { run(true); });
  el.tree.addEventListener('toggle', function () { if (el.tree.open) { renderTree(last ? last.okText : null); } });
  el.schemarun.addEventListener('click', runSchema);
  ['dragenter', 'dragover'].forEach(function (ev) { el.editor.addEventListener(ev, function (e) { e.preventDefault(); el.editor.classList.add('jv-drop'); }); });
  ['dragleave', 'drop'].forEach(function (ev) { el.editor.addEventListener(ev, function (e) { e.preventDefault(); el.editor.classList.remove('jv-drop'); if (ev === 'drop' && e.dataTransfer && e.dataTransfer.files.length) { readFile(e.dataTransfer.files[0]); } }); });
  run(true);
}

if (typeof document !== 'undefined') {
  if (document.readyState === 'loading') { document.addEventListener('DOMContentLoaded', ui); } else { ui(); }
}
})();
</script>

## วิธีใช้งานตรวจสอบ JSON

1. **ใส่ข้อมูล**: วาง JSON ลงในช่อง กด "เปิดไฟล์" หรือลากไฟล์ (.json, .jsonc, .json5, .jsonl, .txt) มาวาง จะลองกดปุ่ม "ตัวอย่าง" ก่อนก็ได้
2. **ดูผลทันที**: เครื่องมือตรวจสอบขณะพิมพ์ แถบสถานะจะเป็นสีเขียว (ถูกต้อง) สีส้ม (ถูกต้องตาม JSONC/JSON5) หรือสีแดง (ผิดพลาด) พร้อมจำนวนข้อผิดพลาด ขนาดไฟล์ จำนวนคีย์ และความลึกของโครงสร้าง
3. **ดูรายการข้อผิดพลาด**: แต่ละรายการบอกบรรทัด คอลัมน์ สาเหตุ และข้อความรอบจุดที่ผิด กดที่รายการเพื่อให้เคอร์เซอร์กระโดดไปยังตำแหน่งนั้น ป้าย "แก้ให้ได้" คือแก้อัตโนมัติได้อย่างปลอดภัย ส่วน "ต้องแก้เอง" คือกรณีกำกวมที่ระบบไม่เดาให้
4. **กด "แก้ไขให้"**: ระบบแก้ทุกจุดที่แก้ได้อย่างปลอดภัย และแสดงรายการสิ่งที่แก้ไป ถ้ายังมีจุดที่ต้องแก้เอง ปุ่มจะเปลี่ยนเป็น "แก้เฉพาะจุดที่ปลอดภัย" เพื่อให้เหลือเฉพาะข้อผิดพลาดจริงให้ตรวจต่อ ผิดแล้วกด "เลิกทำ" ได้
5. **จัดรูปแบบ**: เมื่อ JSON ถูกต้อง เลือกการเยื้อง (2 ช่องว่าง, 4 ช่องว่าง หรือ Tab) แล้วกด "จัดรูปแบบ" หรือกด "ย่อ (Minify)" เพื่อลบช่องว่าง ติ๊ก "เรียงคีย์ A-Z" หากต้องการเรียงคีย์ตามตัวอักษร
6. **ดู Tree view**: เปิดส่วน "Tree view" เพื่อขยาย/ย่อดูโครงสร้างข้อมูลที่ซ้อนกัน
7. **ตรวจตาม JSON Schema**: เปิดส่วน "ตรวจสอบตาม JSON Schema" วาง Schema แล้วกดตรวจสอบ ระบบจะบอกตำแหน่ง (เช่น `$.items[0].name`) และเหตุผลที่ไม่ตรง
8. **ถ้าไฟล์เป็น JSONC/JSON5**: ติ๊ก "ยอมรับ JSONC / JSON5" หากต้องการให้คอมเมนต์ trailing comma คีย์ไม่มีเครื่องหมายคำพูด และเครื่องหมาย ' นับว่าใช้ได้ (ยังเป็นสีส้มเพื่อเตือนว่าไม่ใช่ JSON มาตรฐาน)
9. **บันทึกผลลัพธ์**: กด "คัดลอก" หรือ "ดาวน์โหลด .json"

ข้อมูลทั้งหมดประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดไปยังเซิร์ฟเวอร์

## คำศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายสั้น ๆ |
| --- | --- |
| JSON | รูปแบบข้อความสำหรับแลกเปลี่ยนข้อมูล อ่านง่ายทั้งคนและโปรแกรม ใช้มากใน API และไฟล์ตั้งค่า |
| Validate / ตรวจสอบ | ตรวจว่าข้อความเป็น JSON ที่ถูกต้องตามกฎหรือไม่ |
| Parse | การแปลงข้อความ JSON เป็นข้อมูลที่โปรแกรมใช้งานได้ ถ้าข้อความผิดกฎ การ parse จะล้มเหลว |
| Object (วัตถุ) | ชุดข้อมูลแบบคีย์กับค่า เขียนในปีกกา `{ }` |
| Array (อาร์เรย์) | รายการข้อมูลเรียงลำดับ เขียนในวงเล็บเหลี่ยม `[ ]` |
| Key (คีย์) | ชื่อของข้อมูลใน object ต้องอยู่ในเครื่องหมายคำพูดคู่ `"` เสมอใน JSON มาตรฐาน |
| Value (ค่า) | ข้อมูลที่ผูกกับคีย์ เป็นได้ทั้ง string, number, boolean, null, object หรือ array |
| String | ข้อความในเครื่องหมายคำพูดคู่ เช่น `"สวัสดี"` |
| Number | ตัวเลข เช่น `42`, `3.14`, `-5`, `1e3` ไม่ใส่เครื่องหมายคำพูด |
| Boolean | ค่าจริงหรือเท็จ เขียนเป็น `true` หรือ `false` (ตัวพิมพ์เล็กเท่านั้น) |
| null | ค่าว่าง เขียนเป็น `null` (ไม่ใช่ `None` หรือ `undefined`) |
| Syntax error | ข้อผิดพลาดด้านรูปแบบ เช่น ลืมคอมมา ลืมปิดวงเล็บ หรือใช้เครื่องหมายคำพูดผิดแบบ |
| Trailing comma | เครื่องหมาย `,` เกินหลังรายการสุดท้าย เช่น `[1, 2,]` JSON มาตรฐานไม่อนุญาต |
| Escape character | อักขระพิเศษที่ขึ้นต้นด้วย `\` ในสตริง เช่น `\n` (ขึ้นบรรทัดใหม่), `\"` (เครื่องหมายคำพูด), `ก` (อักขระยูนิโค้ด) |
| Duplicate key | คีย์ชื่อเดียวกันซ้ำใน object เดียวกัน ไม่ถือว่าผิดไวยากรณ์ แต่ตัวอ่านมักเก็บค่าสุดท้ายเพียงค่าเดียว |
| JSONC | JSON ที่มีคอมเมนต์ (`//` และ `/* */`) พบมากในไฟล์ตั้งค่า เช่น VS Code |
| JSON5 | JSON แบบผ่อนปรน รองรับคอมเมนต์ คีย์ไม่ใส่เครื่องหมายคำพูด เครื่องหมาย `'` และ trailing comma |
| JSON Lines (NDJSON) | ไฟล์ที่มี JSON หนึ่งค่าต่อหนึ่งบรรทัด ใช้กับ log และข้อมูลขนาดใหญ่ |
| JSON Schema | ข้อกำหนดที่ใช้อธิบายว่า JSON ต้องมีโครงสร้างอย่างไร เช่น ต้องมีคีย์ใด ชนิดข้อมูลอะไร |
| Format / Pretty print | จัดรูปแบบให้เยื้องและขึ้นบรรทัดใหม่ เพื่อให้อ่านง่าย |
| Minify | ลบช่องว่างและการขึ้นบรรทัดใหม่ให้ข้อมูลมีขนาดเล็กที่สุด |
| BOM | อักขระซ่อนที่ต้นไฟล์ (U+FEFF) ที่บางโปรแกรมใส่ให้ และทำให้ parse JSON ล้มเหลว |
| Tree view | มุมมองโครงสร้างแบบต้นไม้ ขยายหรือย่อแต่ละชั้นได้ |

## ข้อผิดพลาด JSON ที่พบบ่อย

- **ขาดเครื่องหมาย `,` ระหว่างรายการ**: ระบบเติมให้เมื่อรายการอยู่คนละบรรทัด แต่ถ้าอยู่บรรทัดเดียวกันจะแจ้งให้ตรวจเอง
- **มี `,` เกินท้ายรายการ**: ลบให้อัตโนมัติ
- **ใช้ `'` แทน `"` และคีย์ไม่มีเครื่องหมายคำพูด**: เติมและแปลงให้ (มักมาจากการคัดลอก object ของ JavaScript)
- **`True`, `False`, `None` จาก Python**: แปลงเป็น `true`, `false`, `null`
- **ข้อมูลถูกตัดท้าย**: เติม `}` `]` และเครื่องหมายคำพูดที่ขาดให้ แต่ควรตรวจสอบว่าข้อมูลที่ขาดหายไม่สำคัญ
- **ไม่มีค่าหลัง `:` หรือข้อความไม่มีเครื่องหมายคำพูด (เช่น `"name": สมชาย`)**: ระบบไม่เดาให้เพราะแก้ได้หลายแบบ ต้องแก้เอง
- **ตัวเลขขึ้นต้นด้วย 0 (เช่น `007`)**: ไม่แก้ให้ เพราะอาจหมายถึงเลขฐานแปด

## คำถามที่พบบ่อย

### ข้อมูลที่วางถูกส่งไปที่เซิร์ฟเวอร์หรือไม่?

ไม่ การตรวจสอบ การแก้ไข การจัดรูปแบบ และการตรวจตาม Schema ทำงานในเบราว์เซอร์ของคุณทั้งหมด

### JSON มาตรฐานรองรับคอมเมนต์หรือไม่?

ไม่รองรับ คอมเมนต์เป็นของ JSONC และ JSON5 เครื่องมือนี้จะแจ้งเป็นข้อผิดพลาดที่ "แก้ให้ได้" หรือยอมรับเป็นคำเตือนสีส้มเมื่อคุณติ๊ก "ยอมรับ JSONC / JSON5"

### "แก้ไขให้" ปลอดภัยแค่ไหน?

ระบบแก้เฉพาะกรณีที่ความหมายของข้อมูลไม่เปลี่ยน กรณีกำกวมจะรายงานให้คุณแก้เอง และแสดงรายการที่แก้ทุกครั้งพร้อมปุ่มเลิกทำ ตัวเลขที่ผ่านการแก้ไขจะคงรูปแบบเดิมไว้

### ทำไม JSON ถึงบอกว่าไม่ถูกต้อง ทั้งที่ใช้ใน JavaScript ได้?

object ใน JavaScript ยอมให้ใช้คีย์ไม่มีเครื่องหมายคำพูด เครื่องหมาย `'` คอมเมนต์ และ trailing comma แต่ JSON มาตรฐานไม่ยอม ให้กด "แก้ไขให้" หรือเปิดโหมด JSONC / JSON5

### มีข้อจำกัดอะไรบ้าง?

- ข้อมูลเกิน 5 MB จะไม่ตรวจสอบอัตโนมัติ ต้องกดปุ่ม "ตรวจสอบ" และอาจใช้เวลานาน
- "จัดรูปแบบ", "ย่อ" และ "เรียงคีย์" ใช้การ parse มาตรฐานของเบราว์เซอร์ ตัวเลขจำนวนเต็มที่ใหญ่เกิน 9,007,199,254,740,991 อาจเสียความแม่นยำ
- การเรียงคีย์: คีย์ที่เป็นตัวเลขล้วน (เช่น `"10"`) จะถูกเบราว์เซอร์จัดเรียงไว้ก่อนเสมอ
- JSON Schema รองรับคีย์เวิร์ดที่ใช้บ่อย (type, required, properties, items, enum, pattern, $ref ภายในไฟล์, allOf/anyOf/oneOf ฯลฯ) แต่ไม่รองรับ `$ref` ภายนอกไฟล์