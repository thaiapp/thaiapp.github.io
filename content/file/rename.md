---
title: เปลี่ยนชื่อไฟล์เป็นชุดออนไลน์ ฟรี
h1: เปลี่ยนชื่อไฟล์เป็นชุดออนไลน์
description: เปลี่ยนชื่อไฟล์เป็นชุดออนไลน์ เพิ่มคำนำหน้า คำต่อท้าย เลขลำดับ และค้นหาแทนที่ได้ในครั้งเดียว ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกอัปโหลด ใช้ฟรีได้ทุกอุปกรณ์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-04T09:19:00+07:00'
weight: 65
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- เปลี่ยนชื่อไฟล์เป็นชุดออนไลน์
- PDF และไฟล์
---

เปลี่ยนชื่อไฟล์หลายไฟล์พร้อมกันโดยตรงในเบราว์เซอร์ **ไม่ต้องอัปโหลด** ตั้งกติกาการตั้งชื่อ ดูตัวอย่างชื่อใหม่ทันที แล้วดาวน์โหลดเป็นไฟล์ Zip หรือคัดลอกคำสั่งไปรันบนเครื่องของคุณ

<div class="rn-app" id="rn-app">
  <div class="rn-panel">
    <div class="rn-grid">
      <label class="rn-field"><span>ค้นหา</span><input id="rn-find" type="text" autocomplete="off" spellcheck="false" placeholder="ข้อความที่ต้องการแทนที่"></label>
      <label class="rn-field"><span>แทนที่ด้วย</span><input id="rn-replace" type="text" autocomplete="off" spellcheck="false" placeholder="เว้นว่าง = ลบข้อความ"></label>
      <label class="rn-field"><span>คำนำหน้า</span><input id="rn-prefix" type="text" autocomplete="off" spellcheck="false" placeholder="เช่น PRJ-042-"></label>
      <label class="rn-field"><span>คำต่อท้าย</span><input id="rn-suffix" type="text" autocomplete="off" spellcheck="false" placeholder="เช่น -final"></label>
      <label class="rn-field"><span>นามสกุลใหม่</span><input id="rn-ext" type="text" autocomplete="off" spellcheck="false" placeholder="เช่น txt (เว้นว่าง = คงเดิม)"></label>
      <label class="rn-field"><span>เรียงลำดับ</span>
        <select id="rn-sort">
          <option value="orig">ต้นฉบับ</option>
          <option value="name">ชื่อ A→Z</option>
          <option value="type">ชนิด</option>
          <option value="dateAsc">วันที่ ↑</option>
          <option value="dateDesc">วันที่ ↓</option>
          <option value="custom">กำหนดเอง</option>
        </select>
      </label>
    </div>
    <div class="rn-row">
      <label class="rn-check"><input id="rn-keep" type="checkbox" checked> ชื่อ</label>
      <label class="rn-check"><input id="rn-regex" type="checkbox"> Regex</label>
      <label class="rn-check"><input id="rn-lower" type="checkbox"> นามสกุลตัวพิมพ์เล็ก</label>
      <label class="rn-check"><input id="rn-numon" type="checkbox"> หมายเลข</label>
      <label class="rn-inline">เริ่มที่ <input id="rn-start" type="number" value="1" min="0" step="1"></label>
      <label class="rn-inline">จำนวนหลัก <input id="rn-digits" type="number" value="3" min="1" max="10" step="1"></label>
    </div>
  </div>
  <div class="rn-drop" id="rn-drop" role="button" tabindex="0">
    <div class="rn-drop-icon">📁</div>
    <div class="rn-drop-title">ลากไฟล์มาที่นี่ หรือ <kbd>Ctrl</kbd>+<kbd>V</kbd> เพื่อวาง</div>
    <div class="rn-drop-sub">รับไฟล์ทุกประเภท · แตะหรือคลิกเพื่อเลือกไฟล์</div>
    <div class="rn-drop-sub">ไฟล์จะไม่ถูกส่งออกจากอุปกรณ์ของคุณ</div>
  </div>
  <input id="rn-input" type="file" multiple hidden>
  <div class="rn-count" id="rn-count" aria-live="polite"></div>
  <ul class="rn-list" id="rn-list"></ul>
  <div class="rn-actions">
    <button type="button" id="rn-add">เพิ่มไฟล์</button>
    <button type="button" id="rn-folder">ส่งออกไปยังโฟลเดอร์</button>
    <button type="button" id="rn-zip" class="rn-primary">ดาวน์โหลด Zip</button>
    <button type="button" id="rn-cmd">บรรทัดคำสั่ง</button>
    <button type="button" id="rn-clear">ล้าง</button>
  </div>
  <div class="rn-cmdbox" id="rn-cmdbox" hidden>
    <div class="rn-tabs">
      <button type="button" id="rn-tab-ps" class="rn-tab rn-on">PowerShell</button>
      <button type="button" id="rn-tab-sh" class="rn-tab">เทอร์มินัล</button>
      <button type="button" id="rn-copy" class="rn-copy">คัดลอก</button>
    </div>
    <textarea id="rn-cmdtext" readonly rows="8" spellcheck="false"></textarea>
    <div class="rn-hint">เปิดโฟลเดอร์ที่มีไฟล์ต้นฉบับ แล้ววางคำสั่งนี้ในหน้าต่างเทอร์มินัลของโฟลเดอร์นั้น</div>
  </div>
  <div class="rn-msg" id="rn-msg" role="status" aria-live="polite"></div>
</div>
<style>
.rn-app{--rn-bg:#fff;--rn-bg2:#f5f6f8;--rn-bd:#d6d9de;--rn-tx:#1d2330;--rn-mut:#69707d;--rn-ac:#2563eb;--rn-acx:#fff;--rn-warn:#c2410c;--rn-ok:#15803d;margin:1.2rem 0 2rem;color:var(--rn-tx);font-size:15px;line-height:1.5}
@media (prefers-color-scheme:dark){.rn-app{--rn-bg:#171b24;--rn-bg2:#1f2531;--rn-bd:#343c4c;--rn-tx:#e6e9ef;--rn-mut:#9aa3b2;--rn-ac:#5b8def;--rn-acx:#0b1020;--rn-warn:#fb923c;--rn-ok:#4ade80}}
.rn-app *{box-sizing:border-box}
.rn-panel{background:var(--rn-bg2);border:1px solid var(--rn-bd);border-radius:12px;padding:14px}
.rn-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:10px}
.rn-field{display:flex;flex-direction:column;gap:4px;font-size:13px;color:var(--rn-mut)}
.rn-field input,.rn-field select,.rn-inline input{width:100%;padding:8px 10px;border:1px solid var(--rn-bd);border-radius:8px;background:var(--rn-bg);color:var(--rn-tx);font:inherit;font-size:15px}
.rn-field input:focus,.rn-field select:focus,.rn-inline input:focus{outline:2px solid var(--rn-ac);outline-offset:0}
.rn-row{display:flex;flex-wrap:wrap;align-items:center;gap:8px 18px;margin-top:12px}
.rn-check{display:inline-flex;align-items:center;gap:6px;cursor:pointer;user-select:none}
.rn-inline{display:inline-flex;align-items:center;gap:6px;color:var(--rn-mut);font-size:14px}
.rn-inline input{width:76px;padding:5px 8px}
.rn-drop{margin-top:12px;padding:22px 14px;text-align:center;border:2px dashed var(--rn-bd);border-radius:12px;cursor:pointer;background:var(--rn-bg)}
.rn-drop:hover,.rn-drop.rn-hot,.rn-drop:focus-visible{border-color:var(--rn-ac);outline:none}
.rn-drop-icon{font-size:30px;line-height:1.1}
.rn-drop-title{font-weight:600;margin-top:4px}
.rn-drop-sub{font-size:13px;color:var(--rn-mut)}
.rn-drop kbd{border:1px solid var(--rn-bd);border-bottom-width:2px;border-radius:5px;padding:0 5px;font-size:12px;background:var(--rn-bg2)}
.rn-count{margin:12px 2px 4px;font-size:13px;color:var(--rn-mut);min-height:1.2em}
.rn-list{list-style:none;margin:0;padding:0;border:1px solid var(--rn-bd);border-radius:12px;overflow:hidden;background:var(--rn-bg)}
.rn-list:empty{display:none}
.rn-item{display:flex;align-items:center;gap:8px;padding:8px 10px;border-bottom:1px solid var(--rn-bd);font-size:14px}
.rn-item:last-child{border-bottom:0}
.rn-item.rn-over{background:var(--rn-bg2);box-shadow:inset 0 2px 0 var(--rn-ac)}
.rn-item.rn-drag{opacity:.45}
.rn-handle{cursor:grab;color:var(--rn-mut);user-select:none;flex:none;width:18px;text-align:center}
.rn-names{flex:1;min-width:0;word-break:break-all}
.rn-old{color:var(--rn-mut)}
.rn-arrow{margin:0 6px;color:var(--rn-mut)}
.rn-new{font-weight:600}
.rn-same{color:var(--rn-mut);font-weight:400}
.rn-bad .rn-new{color:var(--rn-warn)}
.rn-warn{color:var(--rn-warn);margin-left:6px;cursor:help}
.rn-mini{flex:none;border:0;background:transparent;color:var(--rn-mut);cursor:pointer;font-size:14px;padding:4px 6px;border-radius:6px;line-height:1}
.rn-mini:hover{background:var(--rn-bg2);color:var(--rn-tx)}
.rn-actions{display:flex;flex-wrap:wrap;gap:8px;margin-top:12px}
.rn-actions button,.rn-tab,.rn-copy{padding:8px 14px;border:1px solid var(--rn-bd);border-radius:8px;background:var(--rn-bg);color:var(--rn-tx);font:inherit;font-size:14px;cursor:pointer}
.rn-actions button:hover,.rn-tab:hover,.rn-copy:hover{border-color:var(--rn-ac)}
.rn-actions button:disabled{opacity:.45;cursor:not-allowed}
.rn-actions button.rn-primary,.rn-tab.rn-on{background:var(--rn-ac);border-color:var(--rn-ac);color:var(--rn-acx)}
.rn-cmdbox{margin-top:12px;border:1px solid var(--rn-bd);border-radius:12px;background:var(--rn-bg2);padding:10px}
.rn-cmdbox[hidden]{display:none}
.rn-tabs{display:flex;gap:6px;margin-bottom:8px}
.rn-copy{margin-left:auto}
.rn-cmdbox textarea{width:100%;resize:vertical;border:1px solid var(--rn-bd);border-radius:8px;background:var(--rn-bg);color:var(--rn-tx);padding:8px 10px;font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:13px;white-space:pre;overflow:auto}
.rn-hint{margin-top:6px;font-size:12.5px;color:var(--rn-mut)}
.rn-msg{margin-top:10px;font-size:13.5px;min-height:1.2em;color:var(--rn-ok)}
.rn-msg.rn-err{color:var(--rn-warn)}
@media (max-width:520px){.rn-actions button{flex:1 1 calc(50% - 8px)}.rn-item{padding:8px}}
</style>
<script>
(function () {
  'use strict';
  function $(id) { return document.getElementById(id); }
  var el = {
    find: $('rn-find'), rep: $('rn-replace'), prefix: $('rn-prefix'), suffix: $('rn-suffix'),
    ext: $('rn-ext'), sort: $('rn-sort'), keep: $('rn-keep'), regex: $('rn-regex'),
    lower: $('rn-lower'), numon: $('rn-numon'), start: $('rn-start'), digits: $('rn-digits'),
    drop: $('rn-drop'), input: $('rn-input'), count: $('rn-count'), list: $('rn-list'),
    add: $('rn-add'), folder: $('rn-folder'), zip: $('rn-zip'), cmd: $('rn-cmd'), clear: $('rn-clear'),
    cmdbox: $('rn-cmdbox'), tabPs: $('rn-tab-ps'), tabSh: $('rn-tab-sh'), copy: $('rn-copy'),
    cmdtext: $('rn-cmdtext'), msg: $('rn-msg')
  };
  if (!el.list || !el.input) { return; }
  var items = [];
  var uid = 0;
  var shell = 'ps';
  var dragIdx = null;
  var BAD = /[\\\/:*?"<>|\u0000-\u001f]/;
  function say(text, isErr) {
    el.msg.textContent = text || '';
    el.msg.className = 'rn-msg' + (isErr ? ' rn-err' : '');
  }
  function splitName(name) {
    var i = name.lastIndexOf('.');
    if (i <= 0) { return { base: name, ext: '' }; }
    return { base: name.slice(0, i), ext: name.slice(i) };
  }
  function pad(n, len) {
    var s = String(n);
    while (s.length < len) { s = '0' + s; }
    return s;
  }
  function addFiles(list) {
    var added = 0;
    for (var i = 0; i < list.length; i++) {
      var f = list[i];
      if (!f || typeof f.name !== 'string') { continue; }
      var dup = false;
      for (var j = 0; j < items.length; j++) {
        var o = items[j].file;
        if (o.name === f.name && o.size === f.size && o.lastModified === f.lastModified) { dup = true; break; }
      }
      if (dup) { continue; }
      items.push({ id: uid++, file: f, newName: f.name, warn: '' });
      added++;
    }
    if (added) { say(''); }
    applySort();
    update();
  }
  function applySort() {
    var mode = el.sort.value;
    if (mode === 'custom') { return; }
    items.sort(function (a, b) {
      var an = a.file.name, bn = b.file.name;
      if (mode === 'name') { return an.localeCompare(bn, undefined, { numeric: true, sensitivity: 'base' }); }
      if (mode === 'type') {
        var ae = splitName(an).ext.toLowerCase(), be = splitName(bn).ext.toLowerCase();
        if (ae !== be) { return ae < be ? -1 : 1; }
        return an.localeCompare(bn, undefined, { numeric: true, sensitivity: 'base' });
      }
      if (mode === 'dateAsc') { return (a.file.lastModified || 0) - (b.file.lastModified || 0); }
      if (mode === 'dateDesc') { return (b.file.lastModified || 0) - (a.file.lastModified || 0); }
      return a.id - b.id;
    });
  }
  function compute() {
    var find = el.find.value;
    var rep = el.rep.value;
    var useRe = el.regex.checked;
    var re = null;
    var reErr = false;
    if (find && useRe) {
      try { re = new RegExp(find, 'g'); } catch (e) { reErr = true; }
    }
    var start = parseInt(el.start.value, 10);
    if (isNaN(start) || start < 0) { start = 1; }
    var digits = parseInt(el.digits.value, 10);
    if (isNaN(digits) || digits < 1) { digits = 1; }
    if (digits > 10) { digits = 10; }
    var newExt = el.ext.value.trim().replace(/^\.+/, '');
    var seen = {};
    for (var i = 0; i < items.length; i++) {
      var it = items[i];
      var p = splitName(it.file.name);
      var base = el.keep.checked ? p.base : '';
      if (base && find && !reErr) {
        base = useRe ? base.replace(re, rep) : base.split(find).join(rep);
      }
      var ext = p.ext;
      if (newExt) { ext = '.' + newExt; }
      if (el.lower.checked) { ext = ext.toLowerCase(); }
      var num = el.numon.checked ? pad(start + i, digits) : '';
      it.newName = el.prefix.value + base + el.suffix.value + num + ext;
      it.warn = '';
      if (!it.newName || it.newName === ext) {
        it.warn = 'ชื่อไฟล์ว่างเปล่า';
      } else if (BAD.test(it.newName)) {
        it.warn = 'ชื่อมีอักขระที่ใช้ไม่ได้ ( \\ / : * ? " < > | )';
      } else if (it.newName.length > 255) {
        it.warn = 'ชื่อยาวเกิน 255 ตัวอักษร';
      }
      var key = it.newName.toLowerCase();
      seen[key] = (seen[key] || 0) + 1;
    }
    for (var k = 0; k < items.length; k++) {
      if (!items[k].warn && seen[items[k].newName.toLowerCase()] > 1) {
        items[k].warn = 'ชื่อซ้ำกับไฟล์อื่นในรายการ';
      }
    }
    if (reErr) { say('รูปแบบ Regex ไม่ถูกต้อง จึงยังไม่ได้ค้นหา/แทนที่', true); }
    else if (el.msg.className.indexOf('rn-err') > -1 && el.msg.textContent.indexOf('Regex') > -1) { say(''); }
  }
  function move(from, to) {
    if (from === to || from < 0 || to < 0 || from >= items.length || to >= items.length) { return; }
    var x = items.splice(from, 1)[0];
    items.splice(to, 0, x);
    el.sort.value = 'custom';
    update();
  }
  function render() {
    el.list.textContent = '';
    for (var i = 0; i < items.length; i++) {
      (function (idx) {
        var it = items[idx];
        var li = document.createElement('li');
        li.className = 'rn-item' + (it.warn ? ' rn-bad' : '');
        li.draggable = true;
        var h = document.createElement('span');
        h.className = 'rn-handle';
        h.textContent = '\u283F';
        h.title = 'ลากเพื่อจัดลำดับ';
        var names = document.createElement('span');
        names.className = 'rn-names';
        var o = document.createElement('span');
        o.className = 'rn-old';
        o.textContent = it.file.name;
        var ar = document.createElement('span');
        ar.className = 'rn-arrow';
        ar.textContent = '\u2192';
        var n = document.createElement('span');
        n.className = 'rn-new' + (it.newName === it.file.name ? ' rn-same' : '');
        n.textContent = it.newName;
        names.appendChild(o);
        names.appendChild(ar);
        names.appendChild(n);
        if (it.warn) {
          var w = document.createElement('span');
          w.className = 'rn-warn';
          w.textContent = '\u26A0';
          w.title = it.warn;
          names.appendChild(w);
        }
        var up = document.createElement('button');
        up.type = 'button'; up.className = 'rn-mini'; up.textContent = '\u25B2'; up.title = 'เลื่อนขึ้น';
        up.addEventListener('click', function () { move(idx, idx - 1); });
        var dn = document.createElement('button');
        dn.type = 'button'; dn.className = 'rn-mini'; dn.textContent = '\u25BC'; dn.title = 'เลื่อนลง';
        dn.addEventListener('click', function () { move(idx, idx + 1); });
        var rm = document.createElement('button');
        rm.type = 'button'; rm.className = 'rn-mini'; rm.textContent = '\u00D7'; rm.title = 'ลบออกจากรายการ';
        rm.addEventListener('click', function () { items.splice(idx, 1); update(); });
        li.addEventListener('dragstart', function (e) {
          dragIdx = idx;
          li.classList.add('rn-drag');
          if (e.dataTransfer) {
            e.dataTransfer.effectAllowed = 'move';
            try { e.dataTransfer.setData('text/plain', String(idx)); } catch (err) { /* ignore */ }
          }
        });
        li.addEventListener('dragend', function () {
          dragIdx = null;
          li.classList.remove('rn-drag');
          var all = el.list.querySelectorAll('.rn-over');
          for (var q = 0; q < all.length; q++) { all[q].classList.remove('rn-over'); }
        });
        li.addEventListener('dragover', function (e) {
          if (dragIdx === null) { return; }
          e.preventDefault();
          li.classList.add('rn-over');
        });
        li.addEventListener('dragleave', function () { li.classList.remove('rn-over'); });
        li.addEventListener('drop', function (e) {
          if (dragIdx === null) { return; }
          e.preventDefault();
          e.stopPropagation();
          var from = dragIdx;
          dragIdx = null;
          move(from, idx);
        });
        li.appendChild(h);
        li.appendChild(names);
        li.appendChild(up);
        li.appendChild(dn);
        li.appendChild(rm);
        el.list.appendChild(li);
      })(i);
    }
    var changed = 0, warns = 0;
    for (var c = 0; c < items.length; c++) {
      if (items[c].newName !== items[c].file.name) { changed++; }
      if (items[c].warn) { warns++; }
    }
    el.count.textContent = items.length
      ? items.length + ' ไฟล์ · เปลี่ยนชื่อ ' + changed + ' ไฟล์' + (warns ? ' · คำเตือน ' + warns + ' รายการ' : '')
      : '';
    var empty = items.length === 0;
    el.zip.disabled = empty;
    el.folder.disabled = empty;
    el.cmd.disabled = empty;
    el.clear.disabled = empty;
    if (typeof window.showDirectoryPicker !== 'function') {
      el.folder.disabled = true;
      el.folder.title = 'เบราว์เซอร์นี้ไม่รองรับการเขียนลงโฟลเดอร์ ใช้ดาวน์โหลด Zip แทน';
    }
  }
  function q(s, shellType) {
    if (shellType === 'ps') { return "'" + s.replace(/'/g, "''") + "'"; }
    return "'" + s.replace(/'/g, "'\\''") + "'";
  }
  function buildCommands() {
    var lines = [];
    var i, it;
    if (shell === 'ps') {
      lines.push('# PowerShell');
      for (i = 0; i < items.length; i++) {
        it = items[i];
        if (it.newName !== it.file.name && !it.warn) {
          lines.push('Rename-Item -LiteralPath ' + q(it.file.name, 'ps') + ' -NewName ' + q(it.newName, 'ps'));
        }
      }
    } else {
      lines.push('# bash / zsh (macOS, Linux)');
      for (i = 0; i < items.length; i++) {
        it = items[i];
        if (it.newName !== it.file.name && !it.warn) {
          lines.push('mv -n -- ' + q(it.file.name, 'sh') + ' ' + q(it.newName, 'sh'));
        }
      }
    }
    if (lines.length === 1) { lines.push('# ไม่มีไฟล์ที่ต้องเปลี่ยนชื่อ'); }
    el.cmdtext.value = lines.join('\n');
  }
  function update() {
    compute();
    render();
    if (!el.cmdbox.hidden) { buildCommands(); }
  }
  function blockIfWarn() {
    for (var i = 0; i < items.length; i++) {
      if (items[i].warn) {
        say('แก้คำเตือน \u26A0 ให้เรียบร้อยก่อน: ' + items[i].file.name + ' \u2192 ' + items[i].warn, true);
        return true;
      }
    }
    return false;
  }
  /* ---- Zip (store, no compression) ---- */
  var crcTable = (function () {
    var t = [], c, n, k;
    for (n = 0; n < 256; n++) {
      c = n;
      for (k = 0; k < 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
      t[n] = c >>> 0;
    }
    return t;
  })();
  function crc32(u8) {
    var c = 0xFFFFFFFF;
    for (var i = 0; i < u8.length; i++) { c = crcTable[(c ^ u8[i]) & 0xFF] ^ (c >>> 8); }
    return (c ^ 0xFFFFFFFF) >>> 0;
  }
  function dosStamp(ms) {
    var d = new Date(ms || Date.now());
    var y = Math.max(1980, d.getFullYear());
    return {
      time: ((d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1)) & 0xFFFF,
      date: (((y - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate()) & 0xFFFF
    };
  }
  function readBuf(file) {
    if (file.arrayBuffer) { return file.arrayBuffer(); }
    return new Promise(function (resolve, reject) {
      var r = new FileReader();
      r.onload = function () { resolve(r.result); };
      r.onerror = function () { reject(r.error); };
      r.readAsArrayBuffer(file);
    });
  }
  function buildZip() {
    var enc = new TextEncoder();
    var parts = [], central = [], offset = 0;
    var chain = Promise.resolve();
    items.forEach(function (it) {
      chain = chain.then(function () { return readBuf(it.file); }).then(function (buf) {
        var data = new Uint8Array(buf);
        var nb = enc.encode(it.newName);
        var st = dosStamp(it.file.lastModified);
        var crc = crc32(data);
        var lh = new Uint8Array(30 + nb.length);
        var dv = new DataView(lh.buffer);
        dv.setUint32(0, 0x04034b50, true);
        dv.setUint16(4, 20, true);
        dv.setUint16(6, 0x0800, true);
        dv.setUint16(8, 0, true);
        dv.setUint16(10, st.time, true);
        dv.setUint16(12, st.date, true);
        dv.setUint32(14, crc, true);
        dv.setUint32(18, data.length, true);
        dv.setUint32(22, data.length, true);
        dv.setUint16(26, nb.length, true);
        dv.setUint16(28, 0, true);
        lh.set(nb, 30);
        var ch = new Uint8Array(46 + nb.length);
        var cv = new DataView(ch.buffer);
        cv.setUint32(0, 0x02014b50, true);
        cv.setUint16(4, 20, true);
        cv.setUint16(6, 20, true);
        cv.setUint16(8, 0x0800, true);
        cv.setUint16(10, 0, true);
        cv.setUint16(12, st.time, true);
        cv.setUint16(14, st.date, true);
        cv.setUint32(16, crc, true);
        cv.setUint32(20, data.length, true);
        cv.setUint32(24, data.length, true);
        cv.setUint16(28, nb.length, true);
        cv.setUint32(42, offset, true);
        ch.set(nb, 46);
        parts.push(lh, data);
        central.push(ch);
        offset += lh.length + data.length;
      });
    });
    return chain.then(function () {
      var cdSize = 0;
      central.forEach(function (c) { cdSize += c.length; });
      var end = new Uint8Array(22);
      var ev = new DataView(end.buffer);
      ev.setUint32(0, 0x06054b50, true);
      ev.setUint16(8, central.length, true);
      ev.setUint16(10, central.length, true);
      ev.setUint32(12, cdSize, true);
      ev.setUint32(16, offset, true);
      return new Blob(parts.concat(central, [end]), { type: 'application/zip' });
    });
  }
  function downloadZip() {
    if (!items.length || blockIfWarn()) { return; }
    var total = 0;
    items.forEach(function (it) { total += it.file.size; });
    if (total > 1.5 * 1024 * 1024 * 1024) {
      say('ไฟล์รวมใหญ่เกิน 1.5 GB ใช้ปุ่ม "ส่งออกไปยังโฟลเดอร์" หรือ "บรรทัดคำสั่ง" แทน', true);
      return;
    }
    el.zip.disabled = true;
    say('กำลังสร้างไฟล์ Zip...');
    buildZip().then(function (blob) {
      var url = URL.createObjectURL(blob);
      var a = document.createElement('a');
      a.href = url;
      a.download = 'renamed-files.zip';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
      say('สร้าง renamed-files.zip เรียบร้อย');
    }).catch(function (err) {
      say('สร้าง Zip ไม่สำเร็จ: ' + (err && err.message ? err.message : err), true);
    }).then(function () { el.zip.disabled = items.length === 0; });
  }
  function exportFolder() {
    if (!items.length || blockIfWarn()) { return; }
    if (typeof window.showDirectoryPicker !== 'function') {
      say('เบราว์เซอร์นี้ไม่รองรับการส่งออกไปยังโฟลเดอร์ ใช้ดาวน์โหลด Zip แทน', true);
      return;
    }
    window.showDirectoryPicker({ mode: 'readwrite' }).then(function (dir) {
      var chain = Promise.resolve();
      var done = 0;
      items.forEach(function (it) {
        chain = chain.then(function () { return dir.getFileHandle(it.newName, { create: true }); })
          .then(function (h) { return h.createWritable(); })
          .then(function (w) { return w.write(it.file).then(function () { return w.close(); }); })
          .then(function () { done++; say('กำลังบันทึก ' + done + '/' + items.length); });
      });
      return chain.then(function () { say('บันทึก ' + done + ' ไฟล์ลงโฟลเดอร์เรียบร้อย (ไฟล์ต้นฉบับไม่ถูกแตะต้อง)'); });
    }).catch(function (err) {
      if (err && err.name === 'AbortError') { return; }
      say('ส่งออกไม่สำเร็จ: ' + (err && err.message ? err.message : err), true);
    });
  }
  function toggleCmd() {
    el.cmdbox.hidden = !el.cmdbox.hidden;
    if (!el.cmdbox.hidden) { buildCommands(); }
  }
  function setShell(s) {
    shell = s;
    el.tabPs.className = 'rn-tab' + (s === 'ps' ? ' rn-on' : '');
    el.tabSh.className = 'rn-tab' + (s === 'sh' ? ' rn-on' : '');
    buildCommands();
  }
  function copyCmd() {
    var text = el.cmdtext.value;
    function fallback() {
      el.cmdtext.select();
      var ok = false;
      try { ok = document.execCommand('copy'); } catch (e) { ok = false; }
      say(ok ? 'คัดลอกคำสั่งแล้ว' : 'คัดลอกไม่สำเร็จ กรุณาเลือกข้อความแล้วคัดลอกเอง', !ok);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(function () { say('คัดลอกคำสั่งแล้ว'); }, fallback);
    } else { fallback(); }
  }
  /* ---- events ---- */
  var inputs = [el.find, el.rep, el.prefix, el.suffix, el.ext, el.keep, el.regex, el.lower, el.numon, el.start, el.digits];
  inputs.forEach(function (x) {
    x.addEventListener('input', update);
    x.addEventListener('change', update);
  });
  el.sort.addEventListener('change', function () { applySort(); update(); });
  function pick() { el.input.click(); }
  el.add.addEventListener('click', pick);
  el.drop.addEventListener('click', pick);
  el.drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); pick(); }
  });
  el.input.addEventListener('change', function () {
    if (el.input.files && el.input.files.length) { addFiles(el.input.files); }
    el.input.value = '';
  });
  function hasFiles(e) {
    var t = e.dataTransfer && e.dataTransfer.types;
    if (!t) { return false; }
    for (var i = 0; i < t.length; i++) { if (t[i] === 'Files') { return true; } }
    return false;
  }
  document.addEventListener('dragover', function (e) {
    if (hasFiles(e)) { e.preventDefault(); el.drop.classList.add('rn-hot'); }
  });
  document.addEventListener('dragleave', function (e) {
    if (!e.relatedTarget) { el.drop.classList.remove('rn-hot'); }
  });
  document.addEventListener('drop', function (e) {
    el.drop.classList.remove('rn-hot');
    if (e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files.length) {
      e.preventDefault();
      addFiles(e.dataTransfer.files);
    }
  });
  document.addEventListener('paste', function (e) {
    var cd = e.clipboardData;
    if (cd && cd.files && cd.files.length) { e.preventDefault(); addFiles(cd.files); }
  });
  el.zip.addEventListener('click', downloadZip);
  el.folder.addEventListener('click', exportFolder);
  el.cmd.addEventListener('click', toggleCmd);
  el.tabPs.addEventListener('click', function () { setShell('ps'); });
  el.tabSh.addEventListener('click', function () { setShell('sh'); });
  el.copy.addEventListener('click', copyCmd);
  el.clear.addEventListener('click', function () { items = []; say(''); update(); });
  update();
})();
</script>

## ทำไมต้องเปลี่ยนชื่อไฟล์เป็นชุด?

ชื่อไฟล์ที่ไม่เป็นระเบียบทำให้ทำงานช้าลง การหาไฟล์ระหว่าง `Document (3).pdf` กับ `Copy of report.xlsx` เสียเวลาโดยไม่จำเป็น การตั้งชื่ออย่างสม่ำเสมอช่วยให้ไฟล์เรียงลำดับง่าย ค้นหาเจอเร็ว และพร้อมสำหรับการจัดเก็บหรือส่งต่อให้ผู้อื่น

## วิธีใช้งาน

1. **เพิ่มไฟล์** ลากไฟล์มาวางในกรอบประมวลผล กด `Ctrl`+`V` เพื่อวาง หรือกด "เพิ่มไฟล์" เพื่อเลือกจากเครื่อง (กด `Ctrl` ค้างเพื่อเลือกหลายไฟล์)
2. **ตั้งกติกาการตั้งชื่อ** กรอกคำนำหน้า คำต่อท้าย ค้นหา/แทนที่ หรือเปิดหมายเลขต่อเนื่อง รายการด้านล่างจะแสดงชื่อเดิม → ชื่อใหม่ทันที
3. **จัดลำดับไฟล์** เลือกวิธีเรียงจากเมนู "เรียงลำดับ" หรือลากแถวเพื่อสลับตำแหน่ง (บนมือถือใช้ปุ่ม ▲ ▼) ลำดับนี้มีผลต่อหมายเลขต่อเนื่อง
4. **ตรวจสอบคำเตือน** หากมีเครื่องหมาย ⚠ ให้เลื่อนเมาส์ไปที่เครื่องหมายเพื่อดูสาเหตุ แล้วแก้ไขก่อนส่งออก
5. **ส่งออกผลลัพธ์** เลือกอย่างใดอย่างหนึ่ง: ดาวน์โหลด Zip, ส่งออกไปยังโฟลเดอร์ หรือคัดลอกคำสั่งไปรันเพื่อเปลี่ยนชื่อไฟล์จริงบนเครื่อง

> หมายเหตุ: เบราว์เซอร์ไม่สามารถเปลี่ยนชื่อไฟล์ต้นฉบับบนเครื่องโดยตรงเพื่อความปลอดภัย ผลลัพธ์จึงออกมาเป็นสำเนาใน Zip หรือโฟลเดอร์ใหม่ ส่วนไฟล์ต้นฉบับจะไม่ถูกแก้ไข

## อธิบายคำศัพท์และปุ่มต่าง ๆ

| ชื่อในเครื่องมือ | ความหมายโดยย่อ |
|---|---|
| ค้นหา | ข้อความในชื่อไฟล์ที่ต้องการหา เช่น เว้นวรรคหรือคำว่า `(copy)` |
| แทนที่ด้วย | ข้อความที่จะใส่แทนส่วนที่ค้นเจอ หากเว้นว่างจะเป็นการลบข้อความนั้นออก |
| Regex | เปิดโหมดนิพจน์ปรกติ (Regular Expression) เพื่อค้นหาเป็นรูปแบบ เช่น `\d+` คือตัวเลขทุกชุด |
| คำนำหน้า | ข้อความที่เติมไว้ด้านหน้าชื่อไฟล์ เช่น `PRJ-042-` |
| คำต่อท้าย | ข้อความที่เติมต่อท้ายชื่อ ก่อนนามสกุลไฟล์ เช่น `-final` |
| นามสกุลใหม่ | เปลี่ยนนามสกุลไฟล์ทุกไฟล์พร้อมกัน เช่น `txt` หากเว้นว่างจะคงนามสกุลเดิม |
| ชื่อ (ช่องทำเครื่องหมาย) | ติ๊ก = คงชื่อเดิมไว้ ไม่ติ๊ก = ตัดชื่อเดิมทิ้ง เหลือเฉพาะคำนำหน้า คำต่อท้าย และหมายเลข |
| หมายเลข | เติมเลขลำดับต่อเนื่องต่อจากชื่อ เช่น `001`, `002`, `003` |
| เริ่มที่ | ตัวเลขเริ่มต้นของหมายเลขต่อเนื่อง |
| จำนวนหลัก | จำนวนหลักขั้นต่ำของเลข โดยเติมศูนย์ด้านหน้า เช่น 3 หลัก = `007` |
| นามสกุลตัวพิมพ์เล็ก | แปลงนามสกุลเป็นตัวพิมพ์เล็กทั้งหมด เช่น `.PDF` เป็น `.pdf` |
| เรียงลำดับ | เลือกลำดับของไฟล์: ต้นฉบับ (ตามที่เพิ่มเข้ามา), ชื่อ A→Z, ชนิด (ตามนามสกุล), วันที่ ↑ (เก่าไปใหม่), วันที่ ↓ (ใหม่ไปเก่า), กำหนดเอง (ลากจัดเอง) |
| ชื่อเดิม → ชื่อใหม่ | ตัวอย่างผลลัพธ์ของแต่ละไฟล์ก่อนส่งออก ชื่อที่ไม่เปลี่ยนจะแสดงเป็นสีจาง |
| ⚠ | คำเตือน เช่น ชื่อซ้ำ ชื่อว่าง หรือมีอักขระต้องห้าม (`\ / : * ? " < > |`) |
| ⠿ ▲ ▼ | จับลากหรือกดปุ่มเพื่อเลื่อนตำแหน่งไฟล์ในรายการ |
| × | เอาไฟล์นั้นออกจากรายการ (ไม่ลบไฟล์ในเครื่อง) |
| เพิ่มไฟล์ | เปิดหน้าต่างเลือกไฟล์จากอุปกรณ์ |
| ส่งออกไปยังโฟลเดอร์ | บันทึกไฟล์ชื่อใหม่ลงโฟลเดอร์ที่คุณเลือก (รองรับเฉพาะเบราว์เซอร์ที่เปิดสิทธิ์เขียนโฟลเดอร์ได้ เช่น Chrome และ Edge บนคอมพิวเตอร์) |
| ดาวน์โหลด Zip | รวมไฟล์ชื่อใหม่ทั้งหมดเป็นไฟล์ `.zip` ไฟล์เดียว |
| บรรทัดคำสั่ง | สร้างคำสั่งสำหรับเปลี่ยนชื่อไฟล์จริงในเครื่อง มีให้เลือก PowerShell (Windows) และเทอร์มินัล (macOS/Linux) |
| PowerShell / เทอร์มินัล | โปรแกรมสำหรับพิมพ์คำสั่ง วางคำสั่งที่คัดลอกในโฟลเดอร์ที่มีไฟล์ แล้วกด Enter |
| คัดลอก | คัดลอกคำสั่งทั้งหมดไปยังคลิปบอร์ด |
| ล้าง | ล้างรายการไฟล์ทั้งหมดออกจากหน้านี้ |

## สถานการณ์ทั่วไป

| ก่อน | หลัง | วิธีตั้งค่า |
|---|---|---|
| `scan.pdf` | `PRJ-042-scan.pdf` | คำนำหน้า `PRJ-042-` และติ๊ก "ชื่อ" |
| `doc.pdf`, `doc.pdf`, … | `invoice-001.pdf`, `invoice-002.pdf` | คำนำหน้า `invoice-` ไม่ติ๊ก "ชื่อ" เปิด "หมายเลข" เริ่มที่ 1 จำนวนหลัก 3 |
| `My Report.PDF` | `My_Report.pdf` | ค้นหา ` ` (เว้นวรรค) แทนที่ด้วย `_` และติ๊ก "นามสกุลตัวพิมพ์เล็ก" |
| `budget (copy).xlsx` | `budget.xlsx` | ค้นหา `(copy)` เว้นช่องแทนที่ไว้ว่าง |
| `photo.jpeg` | `photo.jpg` | กรอกนามสกุลใหม่ `jpg` |

## ใช้ได้กับไฟล์ทุกประเภท

PDF สเปรดชีต ไฟล์บีบอัด ซอร์สโค้ด รูปภาพ วิดีโอ ลากไฟล์อะไรก็ได้มาที่หน้านี้ สร้างรูปแบบการตั้งชื่อด้วยคำนำหน้า คำต่อท้าย และหมายเลขต่อเนื่อง ใช้ค้นหาและแทนที่เพื่อแก้ข้อความในชื่อไฟล์ทั้งหมดพร้อมกัน ลากแถวเพื่อจัดลำดับใหม่ จากนั้นส่งออกเป็น Zip หรือสร้างคำสั่งเทอร์มินัลเพื่อเปลี่ยนชื่อในเครื่องของคุณ ทุกอย่างทำงานในเบราว์เซอร์ ไม่มีไฟล์ถูกอัปโหลด