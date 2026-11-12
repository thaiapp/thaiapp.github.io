---
title: บีบอัดรูปภาพออนไลน์ ฟรี
h1: บีบอัดรูปภาพออนไลน์
description: 'บีบอัดรูปภาพออนไลน์ฟรี ลดขนาดไฟล์ JPG, PNG, WebP และ HEIC ได้หลายรูปพร้อมกัน ปรับคุณภาพหรือกำหนดขนาดเป้าหมายได้ ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-12T09:00:00+07:00'
weight: 105
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- บีบอัดรูปภาพออนไลน์
- รูปภาพ
---
<style>
#ic-app{max-width:760px;margin:0 auto 24px;font-size:15px;line-height:1.5}
#ic-app *{box-sizing:border-box}
#ic-app .ic-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:28px 16px;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
#ic-app .ic-drop:hover,#ic-app .ic-drop.ic-over,#ic-app .ic-drop:focus{background:rgba(128,128,128,.12);border-color:#3b82f6;outline:none}
#ic-app .ic-drop b{display:block;font-size:17px;margin-bottom:4px}
#ic-app .ic-drop small{opacity:.7}
#ic-app .ic-panel{margin-top:14px;padding:14px;border:1px solid rgba(128,128,128,.35);border-radius:12px}
#ic-app .ic-row{display:flex;flex-wrap:wrap;align-items:center;gap:8px 12px;margin:8px 0}
#ic-app .ic-row>label,#ic-app .ic-lbl{font-weight:600}
#ic-app input[type=range]{flex:1 1 180px;min-width:140px}
#ic-app input[type=number]{width:90px;padding:5px 8px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit}
#ic-app select{padding:5px 8px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit}
#ic-app select option{color:#111}
#ic-app .ic-btn{padding:7px 14px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;color:inherit;cursor:pointer;font-size:14px}
#ic-app .ic-btn:hover:not(:disabled){background:rgba(128,128,128,.15)}
#ic-app .ic-btn:disabled{opacity:.4;cursor:not-allowed}
#ic-app .ic-primary{background:#3b82f6;border-color:#3b82f6;color:#fff}
#ic-app .ic-primary:hover:not(:disabled){background:#2563eb}
#ic-app .ic-q{min-width:46px;text-align:right;font-weight:700}
#ic-app .ic-dis{opacity:.45;pointer-events:none}
#ic-app .ic-sum{margin:12px 0 4px;font-weight:600}
#ic-app .ic-list{display:grid;gap:10px;margin-top:10px}
#ic-app .ic-card{display:flex;align-items:center;gap:12px;padding:10px;border:1px solid rgba(128,128,128,.35);border-radius:10px}
#ic-app .ic-thumb{width:64px;height:64px;object-fit:cover;border-radius:8px;background:rgba(128,128,128,.2);flex:none}
#ic-app .ic-info{flex:1;min-width:0}
#ic-app .ic-name{font-weight:600;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
#ic-app .ic-meta{font-size:13px;opacity:.8}
#ic-app .ic-err{color:#dc2626}
#ic-app .ic-acts{display:flex;gap:6px;flex:none}
#ic-app .ic-note{font-size:13px;opacity:.75;margin-top:10px}
@media (max-width:520px){#ic-app .ic-card{flex-wrap:wrap}#ic-app .ic-acts{width:100%}}
</style>

<div id="ic-app">
<div class="ic-drop" id="ic-drop" tabindex="0" role="button" aria-label="เลือกหรือวางรูปภาพ">
<b>📁 วางรูปภาพที่นี่ หรือคลิกเพื่อเลือกไฟล์</b>
<small>หรือกด Ctrl+V เพื่อวางจากคลิปบอร์ด · เลือกได้หลายไฟล์พร้อมกัน</small>
</div>
<input type="file" id="ic-file" accept="image/*,.heic,.heif" multiple hidden>
<div class="ic-panel">
<div class="ic-row" id="ic-qrow">
<span class="ic-lbl">คุณภาพ JPG</span>
<input type="range" id="ic-q" min="10" max="100" step="1" value="92" aria-label="คุณภาพ JPG">
<span class="ic-q" id="ic-qv">92%</span>
<button type="button" class="ic-btn" data-q="92">92%</button>
<button type="button" class="ic-btn" data-q="80">80%</button>
<button type="button" class="ic-btn" data-q="60">60%</button>
</div>
<div class="ic-row">
<label for="ic-max">ขนาดสูงสุด</label>
<select id="ic-max">
<option value="0">ไม่ปรับขนาด</option>
<option value="1600">1600px</option>
<option value="1200">1200px</option>
<option value="custom">กำหนดเอง…</option>
</select>
<span id="ic-custom-wrap" style="display:none"><input type="number" id="ic-custom" min="100" max="10000" value="1000"> px</span>
</div>
<div class="ic-row">
<label><input type="checkbox" id="ic-png"> เก็บ PNG แบบไม่สูญเสียคุณภาพ</label>
</div>
<div class="ic-row">
<label><input type="checkbox" id="ic-ton"> บีบอัดเหลือ</label>
<input type="number" id="ic-tval" min="1" step="1" value="500">
<select id="ic-tunit"><option value="KB">KB</option><option value="MB">MB</option></select>
</div>
<div class="ic-row">
<button type="button" class="ic-btn ic-primary" id="ic-start">เริ่ม</button>
<button type="button" class="ic-btn" id="ic-add">เพิ่มรูป</button>
<button type="button" class="ic-btn" id="ic-zip" disabled>ดาวน์โหลด Zip</button>
<button type="button" class="ic-btn" id="ic-dir" disabled>ส่งออกไปยังโฟลเดอร์</button>
<button type="button" class="ic-btn" id="ic-clear" disabled>ล้าง</button>
</div>
</div>
<div class="ic-sum" id="ic-sum"></div>
<div class="ic-list" id="ic-list"></div>
<p class="ic-note">การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกส่งออกจากอุปกรณ์ของคุณ</p>
</div>

<script>
(function () {
  'use strict';
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('ic-drop'), fileInput = $('ic-file'), qRange = $('ic-q'), qVal = $('ic-qv'), qRow = $('ic-qrow');
  var maxSel = $('ic-max'), customWrap = $('ic-custom-wrap'), customInp = $('ic-custom'), keepChk = $('ic-png');
  var tOn = $('ic-ton'), tVal = $('ic-tval'), tUnit = $('ic-tunit');
  var btnStart = $('ic-start'), btnAdd = $('ic-add'), btnZip = $('ic-zip'), btnDir = $('ic-dir'), btnClear = $('ic-clear');
  var sumEl = $('ic-sum'), listEl = $('ic-list');
  var items = [], uid = 0, runToken = 0, timer = null;
  if (!window.showDirectoryPicker) { btnDir.style.display = 'none'; }
  function fmt(b) {
    if (b < 1024) { return b + ' B'; }
    if (b < 1048576) { return (b / 1024).toFixed(1) + ' KB'; }
    return (b / 1048576).toFixed(2) + ' MB';
  }
  function el(tag, cls, text) {
    var n = document.createElement(tag);
    if (cls) { n.className = cls; }
    if (text !== undefined) { n.textContent = text; }
    return n;
  }
  function baseName(n) { var i = n.lastIndexOf('.'); return i > 0 ? n.slice(0, i) : n; }
  function isImageFile(f) { return /^image\//.test(f.type) || /\.(heic|heif|jpe?g|png|webp)$/i.test(f.name); }
  function loadImg(file) {
    return new Promise(function (resolve, reject) {
      var u = URL.createObjectURL(file);
      var im = new Image();
      im.onload = function () { URL.revokeObjectURL(u); resolve(im); };
      im.onerror = function () { URL.revokeObjectURL(u); reject(new Error('decode')); };
      im.src = u;
    });
  }
  function loadBitmap(file) {
    if (window.createImageBitmap) {
      return window.createImageBitmap(file).catch(function () { return loadImg(file); });
    }
    return loadImg(file);
  }
  function toBlob(canvas, type, q) {
    return new Promise(function (resolve) { canvas.toBlob(resolve, type, q); });
  }
  function makeCanvas(src, maxDim, opaque, extraScale) {
    var w = src.naturalWidth || src.width, h = src.naturalHeight || src.height;
    var s = extraScale || 1, resized = s < 1;
    if (maxDim > 0 && Math.max(w, h) > maxDim) { s = Math.min(s, maxDim / Math.max(w, h)); resized = true; }
    var c = document.createElement('canvas');
    c.width = Math.max(1, Math.round(w * s));
    c.height = Math.max(1, Math.round(h * s));
    var ctx = c.getContext('2d');
    if (opaque) { ctx.fillStyle = '#ffffff'; ctx.fillRect(0, 0, c.width, c.height); }
    ctx.drawImage(src, 0, 0, c.width, c.height);
    return { canvas: c, resized: resized };
  }
  async function fitTarget(src, maxDim, target) {
    var best = null, last = null;
    for (var scale = 1; scale >= 0.3; scale *= 0.85) {
      var made = makeCanvas(src, maxDim, true, scale);
      var lo = 0.05, hi = 0.95;
      var top = await toBlob(made.canvas, 'image/jpeg', hi);
      last = top;
      if (top.size <= target) { return { blob: top, resized: made.resized }; }
      var found = null;
      for (var i = 0; i < 7; i++) {
        var mid = (lo + hi) / 2;
        var b = await toBlob(made.canvas, 'image/jpeg', mid);
        last = b;
        if (b.size <= target) { found = b; lo = mid; } else { hi = mid; }
      }
      if (found) { return { blob: found, resized: made.resized }; }
      best = { blob: last, resized: made.resized };
    }
    return best;
  }
  function getOpts() {
    var md = parseInt(maxSel.value, 10) || 0;
    if (maxSel.value === 'custom') { md = parseInt(customInp.value, 10) || 0; }
    var t = 0;
    if (tOn.checked) {
      var v = parseFloat(tVal.value);
      if (v > 0) { t = v * (tUnit.value === 'MB' ? 1048576 : 1024); }
    }
    return { q: parseInt(qRange.value, 10) || 92, maxDim: md, keepPng: keepChk.checked, target: t };
  }
  async function compressItem(it) {
    var o = getOpts();
    var isPng = it.file.type === 'image/png';
    var keepPng = isPng && o.keepPng;
    var type = keepPng ? 'image/png' : 'image/jpeg';
    var blob, resized = false;
    if (keepPng) {
      var m1 = makeCanvas(it.src, o.maxDim, false, 1);
      blob = await toBlob(m1.canvas, 'image/png');
      resized = m1.resized;
    } else if (o.target > 0) {
      var r = await fitTarget(it.src, o.maxDim, o.target);
      blob = r.blob; resized = r.resized;
    } else {
      var m2 = makeCanvas(it.src, o.maxDim, true, 1);
      blob = await toBlob(m2.canvas, 'image/jpeg', o.q / 100);
      resized = m2.resized;
    }
    if (!blob) { throw new Error('encode'); }
    it.kept = false;
    if (blob.size >= it.file.size && it.file.type === type && !resized) {
      blob = it.file; it.kept = true;
    }
    if (it.url) { URL.revokeObjectURL(it.url); }
    it.blob = blob;
    it.url = URL.createObjectURL(blob);
    it.outName = it.kept ? it.file.name : baseName(it.file.name) + '_compressed.' + (keepPng ? 'png' : 'jpg');
  }
  async function runAll() {
    var tok = ++runToken;
    for (var i = 0; i < items.length; i++) {
      var it = items[i];
      if (it.removed || it.error) { continue; }
      it.busy = true; render();
      try { await compressItem(it); it.fail = ''; }
      catch (e) { it.fail = 'บีบอัดไม่สำเร็จ'; it.blob = null; }
      it.busy = false;
      if (tok !== runToken) { return; }
      render();
    }
    render();
  }
  function schedule(ms) { clearTimeout(timer); timer = setTimeout(runAll, ms); }
  function render() {
    listEl.textContent = '';
    var totO = 0, totC = 0, done = 0;
    items.forEach(function (it) {
      var card = el('div', 'ic-card');
      var th = el('img', 'ic-thumb');
      th.src = it.origUrl; th.alt = it.file.name;
      var info = el('div', 'ic-info');
      info.appendChild(el('div', 'ic-name', it.file.name));
      var meta;
      if (it.error) { meta = el('div', 'ic-meta ic-err', it.error); }
      else if (it.busy || !it.blob) { meta = el('div', 'ic-meta', it.fail ? it.fail : 'กำลังบีบอัด… (' + fmt(it.file.size) + ')'); if (it.fail) { meta.className += ' ic-err'; } }
      else {
        var pct = Math.round((1 - it.blob.size / it.file.size) * 100);
        var txt = fmt(it.file.size) + ' → ' + fmt(it.blob.size) + (pct > 0 ? ' (ประหยัด ' + pct + '%)' : ' (ขนาดเท่าเดิม)');
        meta = el('div', 'ic-meta', txt);
        totO += it.file.size; totC += it.blob.size; done++;
      }
      info.appendChild(meta);
      var acts = el('div', 'ic-acts');
      var dl = el('button', 'ic-btn', 'ดาวน์โหลด');
      dl.type = 'button';
      dl.disabled = !it.blob || it.busy;
      dl.addEventListener('click', function () { saveBlob(it.blob, it.outName); });
      var rm = el('button', 'ic-btn', '✕');
      rm.type = 'button'; rm.title = 'ลบ'; rm.setAttribute('aria-label', 'ลบ');
      rm.addEventListener('click', function () { removeItem(it); });
      acts.appendChild(dl); acts.appendChild(rm);
      card.appendChild(th); card.appendChild(info); card.appendChild(acts);
      listEl.appendChild(card);
    });
    sumEl.textContent = done ? fmt(totO) + ' → ' + fmt(totC) : '';
    var anyDone = items.some(function (i) { return i.blob && !i.busy; });
    btnZip.disabled = !anyDone; btnDir.disabled = !anyDone; btnClear.disabled = !items.length;
  }
  function removeItem(it) {
    it.removed = true;
    if (it.url) { URL.revokeObjectURL(it.url); }
    if (it.origUrl) { URL.revokeObjectURL(it.origUrl); }
    items = items.filter(function (x) { return x !== it; });
    render();
  }
  function saveBlob(blob, name) {
    if (!blob) { return; }
    var u = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = u; a.download = name;
    document.body.appendChild(a); a.click(); document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(u); }, 4000);
  }
  async function addFiles(fileList) {
    var files = Array.prototype.slice.call(fileList).filter(isImageFile);
    if (!files.length) { return; }
    for (var i = 0; i < files.length; i++) {
      var f = files[i];
      var it = { id: ++uid, file: f, origUrl: URL.createObjectURL(f), src: null, blob: null, url: '', error: '', fail: '', busy: false, removed: false, kept: false, outName: '' };
      try { it.src = await loadBitmap(f); }
      catch (e) {
        it.error = /\.(heic|heif)$/i.test(f.name) || /heic|heif/.test(f.type)
          ? 'เบราว์เซอร์นี้ไม่รองรับไฟล์ HEIC (ลองใช้ Safari หรือแปลงเป็น JPG ก่อน)'
          : 'ไม่สามารถอ่านไฟล์รูปนี้ได้';
      }
      items.push(it);
    }
    render();
    schedule(0);
  }
  /* ---- ZIP (store, no external library) ---- */
  var crcTable = (function () {
    var t = new Uint32Array(256);
    for (var n = 0; n < 256; n++) {
      var c = n;
      for (var k = 0; k < 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
      t[n] = c >>> 0;
    }
    return t;
  })();
  function crc32(u8) {
    var c = 0xFFFFFFFF;
    for (var i = 0; i < u8.length; i++) { c = crcTable[(c ^ u8[i]) & 0xFF] ^ (c >>> 8); }
    return (c ^ 0xFFFFFFFF) >>> 0;
  }
  function makeZip(entries) {
    var enc = new TextEncoder(), parts = [], central = [], offset = 0;
    var d = new Date();
    var dosTime = (d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1);
    var dosDate = ((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate();
    entries.forEach(function (e) {
      var nb = enc.encode(e.name), crc = crc32(e.data), size = e.data.length;
      var lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true); lh.setUint16(4, 20, true); lh.setUint16(6, 0x0800, true);
      lh.setUint16(8, 0, true); lh.setUint16(10, dosTime, true); lh.setUint16(12, dosDate, true);
      lh.setUint32(14, crc, true); lh.setUint32(18, size, true); lh.setUint32(22, size, true);
      lh.setUint16(26, nb.length, true); lh.setUint16(28, 0, true);
      parts.push(lh.buffer, nb, e.data);
      var ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true); ch.setUint16(4, 20, true); ch.setUint16(6, 20, true);
      ch.setUint16(8, 0x0800, true); ch.setUint16(10, 0, true); ch.setUint16(12, dosTime, true);
      ch.setUint16(14, dosDate, true); ch.setUint32(16, crc, true); ch.setUint32(20, size, true);
      ch.setUint32(24, size, true); ch.setUint16(28, nb.length, true); ch.setUint16(30, 0, true);
      ch.setUint16(32, 0, true); ch.setUint16(34, 0, true); ch.setUint16(36, 0, true);
      ch.setUint32(38, 0, true); ch.setUint32(42, offset, true);
      central.push(ch.buffer, nb);
      offset += 30 + nb.length + size;
    });
    var cdSize = 0;
    central.forEach(function (p) { cdSize += p.byteLength !== undefined ? p.byteLength : p.length; });
    var end = new DataView(new ArrayBuffer(22));
    end.setUint32(0, 0x06054b50, true); end.setUint16(8, entries.length, true); end.setUint16(10, entries.length, true);
    end.setUint32(12, cdSize, true); end.setUint32(16, offset, true);
    return new Blob(parts.concat(central, [end.buffer]), { type: 'application/zip' });
  }
  function uniqueNames(list) {
    var seen = {};
    return list.map(function (it) {
      var n = it.outName, key = n.toLowerCase();
      if (seen[key]) {
        var dot = n.lastIndexOf('.');
        var base = dot > 0 ? n.slice(0, dot) : n, ext = dot > 0 ? n.slice(dot) : '';
        n = base + '_' + (++seen[key]) + ext;
      } else { seen[key] = 1; }
      return n;
    });
  }
  function readyItems() { return items.filter(function (i) { return i.blob && !i.busy; }); }
  btnZip.addEventListener('click', async function () {
    var list = readyItems();
    if (!list.length) { return; }
    btnZip.disabled = true;
    try {
      var names = uniqueNames(list), entries = [];
      for (var i = 0; i < list.length; i++) {
        entries.push({ name: names[i], data: new Uint8Array(await list[i].blob.arrayBuffer()) });
      }
      saveBlob(makeZip(entries), 'compressed-images.zip');
    } catch (e) { alert('สร้างไฟล์ zip ไม่สำเร็จ'); }
    render();
  });
  btnDir.addEventListener('click', async function () {
    var list = readyItems();
    if (!list.length || !window.showDirectoryPicker) { return; }
    try {
      var dir = await window.showDirectoryPicker({ mode: 'readwrite' });
      var names = uniqueNames(list);
      for (var i = 0; i < list.length; i++) {
        var fh = await dir.getFileHandle(names[i], { create: true });
        var w = await fh.createWritable();
        await w.write(list[i].blob);
        await w.close();
      }
    } catch (e) { /* ผู้ใช้ยกเลิกการเลือกโฟลเดอร์ */ }
  });
  btnClear.addEventListener('click', function () {
    runToken++;
    items.forEach(function (it) {
      it.removed = true;
      if (it.url) { URL.revokeObjectURL(it.url); }
      if (it.origUrl) { URL.revokeObjectURL(it.origUrl); }
    });
    items = [];
    render();
  });
  /* ---- events ---- */
  drop.addEventListener('click', function () { fileInput.click(); });
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileInput.click(); }
  });
  btnAdd.addEventListener('click', function () { fileInput.click(); });
  fileInput.addEventListener('change', function () { addFiles(fileInput.files); fileInput.value = ''; });
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add('ic-over'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove('ic-over'); });
  });
  drop.addEventListener('drop', function (e) { if (e.dataTransfer) { addFiles(e.dataTransfer.files); } });
  document.addEventListener('paste', function (e) {
    var cd = e.clipboardData;
    if (!cd || !cd.items) { return; }
    var files = [];
    for (var i = 0; i < cd.items.length; i++) {
      if (cd.items[i].kind === 'file') { var f = cd.items[i].getAsFile(); if (f) { files.push(f); } }
    }
    if (files.length) { addFiles(files); }
  });
  qRange.addEventListener('input', function () { qVal.textContent = qRange.value + '%'; schedule(250); });
  Array.prototype.forEach.call(document.querySelectorAll('#ic-app [data-q]'), function (b) {
    b.addEventListener('click', function () {
      qRange.value = b.getAttribute('data-q');
      qVal.textContent = qRange.value + '%';
      schedule(0);
    });
  });
  maxSel.addEventListener('change', function () {
    customWrap.style.display = maxSel.value === 'custom' ? '' : 'none';
    schedule(0);
  });
  customInp.addEventListener('input', function () { schedule(500); });
  keepChk.addEventListener('change', function () { schedule(0); });
  tOn.addEventListener('change', function () {
    qRow.classList.toggle('ic-dis', tOn.checked);
    schedule(0);
  });
  tVal.addEventListener('input', function () { schedule(500); });
  tUnit.addEventListener('change', function () { schedule(0); });
  btnStart.addEventListener('click', function () { clearTimeout(timer); runAll(); });
  render();
})();
</script>

## บีบอัดรูปภาพออนไลน์ ลดขนาดไฟล์โดยไม่ต้องอัปโหลด

เครื่องมือนี้ช่วยบีบอัดรูปภาพหลายรูปพร้อมกันภายในเบราว์เซอร์ ลากและวางรูป ปรับแถบเลื่อนคุณภาพ แล้วดาวน์โหลดทั้งหมดเป็นไฟล์ zip เหมาะสำหรับย่อรูปก่อนส่งอีเมล อัปโหลดในแบบฟอร์ม หรือโพสต์ออนไลน์ ไฟล์ของคุณไม่เคยออกจากอุปกรณ์

## วิธีใช้งาน

1. **เพิ่มรูปภาพ** — ลากรูปมาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด `Ctrl`+`V` เพื่อวางรูปจากคลิปบอร์ด เลือกได้หลายไฟล์พร้อมกัน
2. **ปรับคุณภาพ** — รูปจะถูกบีบอัดอัตโนมัติที่คุณภาพ JPG 92% ซึ่งเป็นจุดที่ภาพยังดูเหมือนต้นฉบับแต่ไฟล์เล็กลงมาก เลื่อนแถบ **คุณภาพ JPG** เพื่อปรับละเอียด หรือกดปุ่มลัด **92%**, **80%**, **60%**
3. **ย่อขนาดภาพ (ถ้าต้องการ)** — เลือก **ขนาดสูงสุด** เป็น 1600px, 1200px หรือกำหนดเอง เพื่อย่อภาพที่ใหญ่มากก่อนบีบอัด
4. **กำหนดขนาดไฟล์เป้าหมาย (ถ้าต้องการ)** — ติ๊ก **บีบอัดเหลือ** ใส่ตัวเลข เช่น 500 KB หรือ 2 MB แล้วกด **เริ่ม** ระบบจะปรับคุณภาพให้อัตโนมัติ
5. **ตรวจผลลัพธ์** — การ์ดของแต่ละรูปแสดงขนาดต้นฉบับ ขนาดหลังบีบอัด และเปอร์เซ็นต์ที่ประหยัดได้
6. **ดาวน์โหลด** — กด **ดาวน์โหลด** บนการ์ดเพื่อบันทึกทีละรูป หรือกด **ดาวน์โหลด Zip** เพื่อรับทุกรูปในไฟล์เดียว

## ขนาดไฟล์เป้าหมาย

ต้องการรูปที่มีขนาดไม่เกินที่กำหนด เช่น ใบสมัครงาน แบบฟอร์มราชการ หรือแพลตฟอร์มโซเชียลมีเดีย ให้ติ๊ก **บีบอัดเหลือ** แล้วใส่ขนาดที่ต้องการ เครื่องมือจะลดคุณภาพทีละน้อยจนได้ไฟล์ไม่เกินเป้าหมาย และหากยังใหญ่เกินจะย่อขนาดภาพเพิ่มให้โดยอัตโนมัติ

## PNG และรูปขนาดใหญ่

ไฟล์ PNG จะถูกแปลงเป็น JPG โดยค่าเริ่มต้นเพื่อให้บีบอัดได้มากที่สุด (พื้นหลังโปร่งใสจะกลายเป็นสีขาว) หากต้องการคงรูปแบบ PNG ให้ติ๊ก **เก็บ PNG แบบไม่สูญเสียคุณภาพ** สำหรับรูปขนาดใหญ่มากให้ใช้เมนู **ขนาดสูงสุด** เพื่อย่อก่อนบีบอัด

## รูปแบบที่รองรับ

รองรับไฟล์ JPG, PNG, WebP และ HEIC (HEIC ต้องใช้เบราว์เซอร์ที่อ่านไฟล์ชนิดนี้ได้ เช่น Safari) ผลลัพธ์จะเป็น JPG หรือ PNG ตามตัวเลือกที่เลือก

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **บีบอัดรูปภาพ** — การลดขนาดไฟล์รูปให้เล็กลง ทำให้ส่งหรืออัปโหลดได้เร็วขึ้นและประหยัดพื้นที่จัดเก็บ
- **คุณภาพ JPG** — ค่าตั้งแต่ 10% ถึง 100% ยิ่งต่ำไฟล์ยิ่งเล็กแต่ภาพยิ่งหยาบ ค่า 92% เหมาะกับงานทั่วไป 80% ลดขนาดได้มากขึ้น และ 60% เหมาะกับรูปที่ต้องการไฟล์เล็กสุด
- **ขนาดสูงสุด (px)** — ความยาวด้านที่ยาวที่สุดของรูปหลังย่อ วัดเป็นพิกเซล เช่น 1600px ภาพที่เล็กกว่านี้จะไม่ถูกขยาย
- **พิกเซล (px)** — จุดสีเล็ก ๆ ที่ประกอบกันเป็นภาพ ยิ่งมีมากภาพยิ่งละเอียดและไฟล์ยิ่งใหญ่
- **เก็บ PNG แบบไม่สูญเสียคุณภาพ** — คงไฟล์เป็น PNG ที่ไม่ลดรายละเอียดของภาพ และยังรองรับพื้นหลังโปร่งใส เหมาะกับโลโก้และภาพกราฟิก แต่ขนาดไฟล์จะลดได้น้อยกว่า JPG
- **บีบอัดเหลือ (ขนาดไฟล์เป้าหมาย)** — กำหนดขนาดไฟล์สูงสุดที่ต้องการ เช่น 500 KB แล้วให้เครื่องมือปรับคุณภาพให้เอง
- **KB / MB** — หน่วยขนาดไฟล์ 1 MB เท่ากับประมาณ 1,024 KB
- **เริ่ม** — สั่งบีบอัดรูปทั้งหมดใหม่ด้วยค่าที่ตั้งไว้ในขณะนั้น
- **ดาวน์โหลด Zip** — รวมรูปที่บีบอัดแล้วทั้งหมดเป็นไฟล์ .zip เดียว
- **ส่งออกไปยังโฟลเดอร์** — บันทึกรูปทั้งหมดลงโฟลเดอร์ในเครื่องโดยตรง (รองรับเฉพาะเบราว์เซอร์บางตัว เช่น Chrome และ Edge บนคอมพิวเตอร์)
- **ล้าง** — เอารูปทั้งหมดออกจากรายการเพื่อเริ่มใหม่
- **JPG / JPEG** — รูปแบบไฟล์ที่นิยมที่สุด บีบอัดแบบสูญเสียบางส่วนของรายละเอียด เหมาะกับภาพถ่าย
- **PNG** — รูปแบบไฟล์ที่คงรายละเอียดครบและรองรับพื้นหลังโปร่งใส ไฟล์มักใหญ่กว่า JPG
- **WebP** — รูปแบบไฟล์สมัยใหม่ที่เล็กกว่า JPG และ PNG ในคุณภาพใกล้เคียงกัน
- **HEIC** — รูปแบบไฟล์ที่ iPhone ใช้บันทึกภาพ ขนาดเล็กแต่บางโปรแกรมเปิดไม่ได้
- **แบบสูญเสียคุณภาพ (Lossy)** — การบีบอัดที่ตัดรายละเอียดที่ตามองแทบไม่เห็นออกเพื่อให้ไฟล์เล็กลง
- **แบบไม่สูญเสียคุณภาพ (Lossless)** — การบีบอัดที่ไม่ทำให้รายละเอียดของภาพหายไปเลย
- **คลิปบอร์ด** — พื้นที่พักข้อมูลชั่วคราวของอุปกรณ์ ใช้ `Ctrl`+`V` เพื่อวางรูปที่คัดลอกหรือแคปหน้าจอไว้
- **ประมวลผลในเบราว์เซอร์** — การทำงานทั้งหมดเกิดบนอุปกรณ์ของคุณ ไม่มีการส่งรูปไปยังเซิร์ฟเวอร์