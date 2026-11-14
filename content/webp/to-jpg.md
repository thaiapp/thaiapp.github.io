---
title: แปลงไฟล์ WebP เป็น JPG ออนไลน์ ฟรี
h1: แปลงไฟล์ WebP เป็น JPG ออนไลน์
description: แปลงไฟล์ WebP เป็น JPG ออนไลน์ฟรี ปรับคุณภาพและขนาดได้ ลากวางหลายไฟล์พร้อมกัน ประมวลผลในเบราว์เซอร์ ไม่อัปโหลด ดาวน์โหลดเป็น ZIP ได้ทันที ไม่ต้องสมัคร
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-14T09:18:00+07:00'
weight: 116
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- แปลงไฟล์ WebP เป็น JPG ออนไลน์
- รูปภาพ
---

<style>
.wj{--wj-b:rgba(128,128,128,.35);--wj-a:#2563eb;margin:1.25rem 0;font-size:1rem;line-height:1.5}
.wj *{box-sizing:border-box}
.wj-drop{border:2px dashed var(--wj-b);border-radius:12px;padding:2rem 1rem;text-align:center;cursor:pointer;transition:border-color .15s,background .15s}
.wj-drop:hover,.wj-drop:focus-visible,.wj-drop.on{border-color:var(--wj-a);background:rgba(37,99,235,.07);outline:none}
.wj-drop p{margin:.25rem 0}
.wj-hint{font-size:.85rem;opacity:.75}
.wj-opts{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:.75rem 1rem;margin:1rem 0}
.wj-opts label{display:flex;flex-direction:column;gap:.25rem;font-size:.9rem;font-weight:600}
.wj-opts input,.wj-opts select{font:inherit;padding:.4rem .5rem;border:1px solid var(--wj-b);border-radius:8px;background:transparent;color:inherit;font-weight:400}
.wj-opts input[type=range]{padding:0}
.wj-opts input[type=color]{padding:0;height:2.25rem;width:100%}
.wj-opts input:disabled,.wj-opts select:disabled{opacity:.5}
.wj-bar{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.75rem 0}
.wj-btn{font:inherit;padding:.5rem 1rem;border-radius:8px;border:1px solid var(--wj-a);background:var(--wj-a);color:#fff;cursor:pointer}
.wj-btn.sec{background:transparent;color:inherit;border-color:var(--wj-b)}
.wj-btn:disabled{opacity:.45;cursor:not-allowed}
.wj-sum{flex:1;min-width:12rem;font-size:.9rem;opacity:.85}
.wj-msg{min-height:1.25rem;font-size:.9rem;color:#b45309}
.wj-list{list-style:none;margin:0;padding:0;display:grid;gap:.5rem}
.wj-row{display:flex;flex-wrap:wrap;gap:.75rem;align-items:center;border:1px solid var(--wj-b);border-radius:10px;padding:.5rem .75rem}
.wj-th{width:56px;height:56px;flex:none;border-radius:6px;object-fit:cover;background:rgba(128,128,128,.2);display:flex;align-items:center;justify-content:center}
.wj-info{flex:1;min-width:10rem}
.wj-name{font-weight:600;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.wj-meta{font-size:.85rem;opacity:.8}
.wj-bad .wj-meta{color:#dc2626;opacity:1}
.wj-act{display:flex;gap:.4rem;flex:none}
.wj-act .wj-btn{padding:.3rem .7rem;font-size:.85rem}
</style>
<div class="wj" id="wj">
  <div class="wj-drop" id="wj-drop" tabindex="0" role="button" aria-label="เลือกไฟล์ WebP หรือลากไฟล์มาวาง">
    <p><strong>ลากไฟล์ WebP มาวางที่นี่</strong> หรือคลิกเพื่อเลือกไฟล์</p>
    <p class="wj-hint">เลือกได้หลายไฟล์ · วางรูปจากคลิปบอร์ดด้วย Ctrl/⌘+V · แนะนำไม่เกิน 100 ไฟล์ต่อรอบ · ไฟล์ละไม่เกิน 50 MB</p>
    <input type="file" id="wj-file" accept="image/webp,.webp,image/*" multiple hidden>
  </div>
  <div class="wj-opts">
    <label>รูปแบบไฟล์ผลลัพธ์
      <select id="wj-fmt">
        <option value="jpg" selected>JPG (ไฟล์เล็ก)</option>
        <option value="png">PNG (คงพื้นโปร่งใส)</option>
      </select>
    </label>
    <label>คุณภาพ JPG: <span id="wj-qv">90</span>
      <input type="range" id="wj-q" min="1" max="100" step="1" value="90">
    </label>
    <label>สีพื้นหลัง (แทนส่วนโปร่งใส)
      <input type="color" id="wj-bg" value="#ffffff">
    </label>
    <label>ความกว้างสูงสุด (px) เว้นว่าง = ขนาดเดิม
      <input type="number" id="wj-mw" min="16" max="16000" step="1" placeholder="เช่น 1920">
    </label>
    <label>คำต่อท้ายชื่อไฟล์ (ไม่บังคับ)
      <input type="text" id="wj-suf" maxlength="30" placeholder="เช่น -web">
    </label>
  </div>
  <div class="wj-bar">
    <button type="button" class="wj-btn" id="wj-zip" disabled>ดาวน์โหลดทั้งหมด (ZIP)</button>
    <button type="button" class="wj-btn sec" id="wj-dir" disabled hidden>บันทึกลงโฟลเดอร์</button>
    <button type="button" class="wj-btn sec" id="wj-clear" disabled>ล้างรายการ</button>
    <span class="wj-sum" id="wj-sum">ยังไม่มีไฟล์</span>
  </div>
  <div class="wj-msg" id="wj-msg" role="status" aria-live="polite"></div>
  <ul class="wj-list" id="wj-list"></ul>
</div>
<script>(function () {
  'use strict';
  var MAX_BYTES = 50 * 1024 * 1024;
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('wj-drop'), input = $('wj-file'), list = $('wj-list'), sum = $('wj-sum'), msg = $('wj-msg');
  var fmt = $('wj-fmt'), q = $('wj-q'), qv = $('wj-qv'), bg = $('wj-bg'), mw = $('wj-mw'), suf = $('wj-suf');
  var zipBtn = $('wj-zip'), dirBtn = $('wj-dir'), clearBtn = $('wj-clear');
  if (!drop || !input || !list) { return; }
  var items = [];
  var seq = 0;
  var runId = 0;
  var timer = null;
  function fmtSize(b) {
    if (b >= 1048576) { return (b / 1048576).toFixed(2) + ' MB'; }
    return (b / 1024).toFixed(1) + ' KB';
  }
  function opts() {
    var png = fmt.value === 'png';
    var w = parseInt(mw.value, 10);
    var quality = parseInt(q.value, 10);
    if (!(quality >= 1)) { quality = 90; }
    if (quality > 100) { quality = 100; }
    return {
      type: png ? 'image/png' : 'image/jpeg',
      ext: png ? '.png' : '.jpg',
      q: quality / 100,
      bg: bg.value || '#ffffff',
      maxW: w > 0 ? w : 0,
      suf: suf.value.replace(/[^A-Za-z0-9._ ()\u0E00-\u0E7F-]/g, '')
    };
  }
  function sig(o) { return [o.type, o.q, o.bg, o.maxW, o.suf].join('|'); }
  function syncControls() {
    var png = fmt.value === 'png';
    q.disabled = png;
    bg.disabled = png;
    qv.textContent = q.value;
  }
  function setMsg(t) { msg.textContent = t || ''; }
  function userError(text) { var e = new Error(text); e.user = true; return e; }
  async function decode(file) {
    if (window.createImageBitmap) {
      try {
        var bmp = await createImageBitmap(file);
        return { el: bmp, w: bmp.width, h: bmp.height, close: function () { if (bmp.close) { bmp.close(); } } };
      } catch (e) { /* fall back to image element decoding below */ }
    }
    return await new Promise(function (res, rej) {
      var u = URL.createObjectURL(file);
      var im = new Image();
      im.onload = function () {
        res({ el: im, w: im.naturalWidth, h: im.naturalHeight, close: function () { URL.revokeObjectURL(u); } });
      };
      im.onerror = function () { URL.revokeObjectURL(u); rej(new Error('decode')); };
      im.src = u;
    });
  }
  function render(src, o) {
    var scale = 1;
    if (o.maxW > 0 && src.w > o.maxW) { scale = o.maxW / src.w; }
    var cw = Math.max(1, Math.round(src.w * scale));
    var ch = Math.max(1, Math.round(src.h * scale));
    var c = document.createElement('canvas');
    c.width = cw;
    c.height = ch;
    var ctx = c.getContext('2d');
    if (!ctx) { throw userError('เบราว์เซอร์ไม่รองรับการแปลงภาพ'); }
    if (o.type === 'image/jpeg') {
      ctx.fillStyle = o.bg;
      ctx.fillRect(0, 0, cw, ch);
    }
    ctx.imageSmoothingQuality = 'high';
    ctx.drawImage(src.el, 0, 0, cw, ch);
    return new Promise(function (res) {
      c.toBlob(function (blob) { res({ blob: blob, w: cw, h: ch }); }, o.type, o.q);
    });
  }
  function baseName(n) { return n.replace(/\.[^.]+$/, '') || 'image'; }
  async function convertOne(it, o, my) {
    it.status = 'work';
    it.err = '';
    paint(it);
    var src = null;
    try {
      if (it.file.size > MAX_BYTES) { throw userError('ไฟล์ใหญ่เกิน 50 MB'); }
      src = await decode(it.file);
      var out = await render(src, o);
      if (my !== runId) { return; }
      if (!out.blob) { throw userError('สร้างไฟล์ไม่สำเร็จ (ภาพอาจใหญ่เกินกว่าที่เบราว์เซอร์รองรับ)'); }
      if (it.url) { URL.revokeObjectURL(it.url); }
      it.blob = out.blob;
      it.url = URL.createObjectURL(out.blob);
      it.w = out.w;
      it.h = out.h;
      it.outName = baseName(it.file.name) + o.suf + o.ext;
      it.sig = sig(o);
      it.status = 'ok';
    } catch (e) {
      if (my !== runId) { return; }
      it.status = 'err';
      it.err = (e && e.user) ? e.message : 'ไม่สามารถอ่านไฟล์นี้ได้ (ไฟล์เสียหรือไม่ใช่รูปภาพ)';
    } finally {
      if (src) { src.close(); }
    }
    paint(it);
  }
  async function convertAll() {
    var my = ++runId;
    var o = opts();
    var s = sig(o);
    var todo = items.filter(function (it) { return !(it.status === 'ok' && it.sig === s); });
    for (var i = 0; i !== todo.length; i++) {
      if (my !== runId) { return; }
      if (items.indexOf(todo[i]) === -1) { continue; }
      await convertOne(todo[i], o, my);
      refreshSummary();
    }
    refreshSummary();
  }
  function schedule() {
    clearTimeout(timer);
    timer = setTimeout(convertAll, 250);
  }
  function paint(it) {
    if (!it.el) {
      it.el = document.createElement('li');
    }
    var li = it.el;
    li.className = 'wj-row' + (it.status === 'err' ? ' wj-bad' : '');
    while (li.firstChild) { li.removeChild(li.firstChild); }
    var th;
    if (it.status === 'ok') {
      th = document.createElement('img');
      th.src = it.url;
      th.alt = it.outName;
    } else {
      th = document.createElement('div');
      th.textContent = it.status === 'err' ? '⚠' : '⏳';
    }
    th.className = 'wj-th';
    li.appendChild(th);
    var info = document.createElement('div');
    info.className = 'wj-info';
    var nm = document.createElement('div');
    nm.className = 'wj-name';
    nm.textContent = it.status === 'ok' ? it.outName : it.file.name;
    var meta = document.createElement('div');
    meta.className = 'wj-meta';
    if (it.status === 'ok') {
      var diff = Math.round((1 - it.blob.size / it.file.size) * 100);
      var change = diff >= 0 ? 'เล็กลง ' + diff + '%' : 'ใหญ่ขึ้น ' + Math.abs(diff) + '%';
      meta.textContent = fmtSize(it.file.size) + ' → ' + fmtSize(it.blob.size) + ' (' + change + ') · ' + it.w + '×' + it.h + ' px';
    } else if (it.status === 'err') {
      meta.textContent = it.err;
    } else if (it.status === 'work') {
      meta.textContent = 'กำลังแปลง…';
    } else {
      meta.textContent = 'รอคิว…';
    }
    info.appendChild(nm);
    info.appendChild(meta);
    li.appendChild(info);
    var act = document.createElement('div');
    act.className = 'wj-act';
    if (it.status === 'ok') {
      var dl = document.createElement('a');
      dl.className = 'wj-btn';
      dl.href = it.url;
      dl.download = it.outName;
      dl.textContent = 'ดาวน์โหลด';
      act.appendChild(dl);
    }
    var rm = document.createElement('button');
    rm.type = 'button';
    rm.className = 'wj-btn sec';
    rm.textContent = 'ลบ';
    rm.addEventListener('click', function () { removeItem(it); });
    act.appendChild(rm);
    li.appendChild(act);
    if (!li.parentNode) { list.appendChild(li); }
  }
  function removeItem(it) {
    var idx = items.indexOf(it);
    if (idx !== -1) { items.splice(idx, 1); }
    if (it.url) { URL.revokeObjectURL(it.url); }
    if (it.el && it.el.parentNode) { it.el.parentNode.removeChild(it.el); }
    refreshSummary();
  }
  function clearAll() {
    runId++;
    items.slice().forEach(removeItem);
    setMsg('');
  }
  function refreshSummary() {
    var ok = items.filter(function (it) { return it.status === 'ok'; });
    var inB = 0, outB = 0;
    ok.forEach(function (it) { inB += it.file.size; outB += it.blob.size; });
    if (!items.length) {
      sum.textContent = 'ยังไม่มีไฟล์';
    } else {
      sum.textContent = 'แปลงแล้ว ' + ok.length + ' จาก ' + items.length + ' ไฟล์' + (ok.length ? ' · รวม ' + fmtSize(inB) + ' → ' + fmtSize(outB) : '');
    }
    zipBtn.disabled = !ok.length;
    dirBtn.disabled = !ok.length;
    clearBtn.disabled = !items.length;
  }
  function addFiles(fileList) {
    var all = Array.prototype.slice.call(fileList || []);
    var skipped = 0;
    var added = 0;
    all.forEach(function (f) {
      var isImg = (f.type && f.type.indexOf('image/') === 0) || /\.webp$/i.test(f.name);
      if (!isImg) { skipped++; return; }
      var it = { id: ++seq, file: f, status: 'wait', err: '', blob: null, url: '', el: null, sig: '' };
      items.push(it);
      paint(it);
      added++;
    });
    var parts = [];
    if (skipped) { parts.push('ข้าม ' + skipped + ' ไฟล์ที่ไม่ใช่รูปภาพ'); }
    if (items.length > 100) { parts.push('มีมากกว่า 100 ไฟล์ อาจช้าหรือกินหน่วยความจำมาก แนะนำแบ่งเป็นรอบ'); }
    setMsg(parts.join(' · '));
    refreshSummary();
    if (added) { clearTimeout(timer); convertAll(); }
  }
  /* ---------- ZIP (store, no compression; JPG/PNG are already compressed) ---------- */
  var crcTable = null;
  function crc32(u8) {
    if (!crcTable) {
      crcTable = new Uint32Array(256);
      for (var n = 0; n !== 256; n++) {
        var c = n;
        for (var k = 0; k !== 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
        crcTable[n] = c >>> 0;
      }
    }
    var crc = 0xFFFFFFFF;
    for (var i = 0; i !== u8.length; i++) { crc = crcTable[(crc ^ u8[i]) & 255] ^ (crc >>> 8); }
    return (crc ^ 0xFFFFFFFF) >>> 0;
  }
  function makeZip(entries) {
    var enc = new TextEncoder();
    var d = new Date();
    var dosTime = d.getHours() * 2048 + d.getMinutes() * 32 + Math.floor(d.getSeconds() / 2);
    var dosDate = Math.max(0, d.getFullYear() - 1980) * 512 + (d.getMonth() + 1) * 32 + d.getDate();
    var parts = [];
    var central = [];
    var offset = 0;
    var cdSize = 0;
    entries.forEach(function (e) {
      var nameB = enc.encode(e.name);
      var crc = crc32(e.data);
      var size = e.data.length;
      var lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true);
      lh.setUint16(4, 20, true);
      lh.setUint16(6, 0x0800, true);
      lh.setUint16(8, 0, true);
      lh.setUint16(10, dosTime, true);
      lh.setUint16(12, dosDate, true);
      lh.setUint32(14, crc, true);
      lh.setUint32(18, size, true);
      lh.setUint32(22, size, true);
      lh.setUint16(26, nameB.length, true);
      lh.setUint16(28, 0, true);
      parts.push(lh.buffer, nameB, e.data);
      var ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true);
      ch.setUint16(4, 20, true);
      ch.setUint16(6, 20, true);
      ch.setUint16(8, 0x0800, true);
      ch.setUint16(10, 0, true);
      ch.setUint16(12, dosTime, true);
      ch.setUint16(14, dosDate, true);
      ch.setUint32(16, crc, true);
      ch.setUint32(20, size, true);
      ch.setUint32(24, size, true);
      ch.setUint16(28, nameB.length, true);
      ch.setUint16(30, 0, true);
      ch.setUint16(32, 0, true);
      ch.setUint16(34, 0, true);
      ch.setUint16(36, 0, true);
      ch.setUint32(38, 0, true);
      ch.setUint32(42, offset, true);
      central.push(ch.buffer, nameB);
      cdSize += 46 + nameB.length;
      offset += 30 + nameB.length + size;
    });
    var end = new DataView(new ArrayBuffer(22));
    end.setUint32(0, 0x06054b50, true);
    end.setUint16(4, 0, true);
    end.setUint16(6, 0, true);
    end.setUint16(8, entries.length, true);
    end.setUint16(10, entries.length, true);
    end.setUint32(12, cdSize, true);
    end.setUint32(16, offset, true);
    end.setUint16(20, 0, true);
    return new Blob(parts.concat(central, [end.buffer]), { type: 'application/zip' });
  }
  function uniqueName(name, used) {
    var key = name.toLowerCase();
    if (!used[key]) { used[key] = 1; return name; }
    var dot = name.lastIndexOf('.');
    var b = dot === -1 ? name : name.slice(0, dot);
    var e = dot === -1 ? '' : name.slice(dot);
    var c = 2;
    while (used[(b + '-' + c + e).toLowerCase()]) { c++; }
    var out = b + '-' + c + e;
    used[out.toLowerCase()] = 1;
    return out;
  }
  function saveBlob(blob, name) {
    var u = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = u;
    a.download = name;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(u); }, 10000);
  }
  function okItems() { return items.filter(function (it) { return it.status === 'ok'; }); }
  zipBtn.addEventListener('click', async function () {
    var ok = okItems();
    if (!ok.length) { return; }
    zipBtn.disabled = true;
    try {
      var used = {};
      var entries = [];
      for (var i = 0; i !== ok.length; i++) {
        var buf = await ok[i].blob.arrayBuffer();
        entries.push({ name: uniqueName(ok[i].outName, used), data: new Uint8Array(buf) });
      }
      saveBlob(makeZip(entries), 'converted-images.zip');
    } catch (e) {
      setMsg('สร้างไฟล์ ZIP ไม่สำเร็จ ลองดาวน์โหลดทีละไฟล์แทน');
    }
    refreshSummary();
  });
  if (window.showDirectoryPicker) {
    dirBtn.hidden = false;
    dirBtn.addEventListener('click', async function () {
      var ok = okItems();
      if (!ok.length) { return; }
      try {
        var dir = await window.showDirectoryPicker({ mode: 'readwrite' });
        var used = {};
        for (var i = 0; i !== ok.length; i++) {
          var fh = await dir.getFileHandle(uniqueName(ok[i].outName, used), { create: true });
          var w = await fh.createWritable();
          await w.write(ok[i].blob);
          await w.close();
        }
        setMsg('บันทึก ' + ok.length + ' ไฟล์ลงโฟลเดอร์แล้ว');
      } catch (e) {
        if (!(e && e.name === 'AbortError')) { setMsg('บันทึกลงโฟลเดอร์ไม่สำเร็จ ลองใช้ดาวน์โหลด ZIP แทน'); }
      }
    });
  }
  clearBtn.addEventListener('click', clearAll);
  /* ---------- inputs ---------- */
  drop.addEventListener('click', function () { input.click(); });
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); input.click(); }
  });
  input.addEventListener('change', function () { addFiles(input.files); input.value = ''; });
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add('on'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove('on'); });
  });
  drop.addEventListener('drop', function (e) { addFiles(e.dataTransfer && e.dataTransfer.files); });
  document.addEventListener('paste', function (e) {
    var files = e.clipboardData && e.clipboardData.files;
    if (files && files.length) { addFiles(files); }
  });
  [fmt, q, bg, mw, suf].forEach(function (el) {
    el.addEventListener('input', function () { syncControls(); if (items.length) { schedule(); } });
    el.addEventListener('change', function () { syncControls(); if (items.length) { schedule(); } });
  });
  syncControls();
  refreshSummary();
})();</script>

## วิธีใช้งานเครื่องมือแปลง WebP เป็น JPG

1. **เพิ่มไฟล์** – ลากไฟล์ `.webp` มาวางในกรอบด้านบน หรือคลิกเพื่อเลือกไฟล์ (กด Ctrl/⌘ ค้างไว้เพื่อเลือกหลายไฟล์) หรือคัดลอกรูปแล้วกด Ctrl/⌘+V เพื่อวาง
2. **เลือกรูปแบบผลลัพธ์** – ใช้ JPG เป็นค่าเริ่มต้นเพื่อให้ไฟล์เล็กและเปิดได้ทุกที่ หรือเลือก PNG หากต้องการคงพื้นโปร่งใส
3. **ปรับคุณภาพ** – เลื่อนแถบคุณภาพ ค่า 80–90 เหมาะกับเว็บและโซเชียล ค่า 90–95 เหมาะกับงานที่ต้องการความคมชัดสูง ยิ่งค่าสูงไฟล์ยิ่งใหญ่
4. **เลือกสีพื้นหลัง** – หากรูปมีส่วนโปร่งใส JPG จะเติมส่วนนั้นด้วยสีที่เลือก (ค่าเริ่มต้นคือสีขาว)
5. **จำกัดขนาด (ถ้าต้องการ)** – ใส่ความกว้างสูงสุดเป็นพิกเซลเพื่อย่อรูป และใส่คำต่อท้ายชื่อไฟล์ เช่น `-web` เพื่อแยกจากไฟล์ต้นฉบับ
6. **ตรวจผลลัพธ์** – รายการจะแสดงขนาดไฟล์ก่อนและหลังแปลง เมื่อเปลี่ยนตัวเลือก เครื่องมือจะแปลงใหม่ให้อัตโนมัติ
7. **ดาวน์โหลด** – กด "ดาวน์โหลด" ทีละไฟล์ หรือ "ดาวน์โหลดทั้งหมด (ZIP)" หรือ "บันทึกลงโฟลเดอร์" (แสดงเฉพาะเบราว์เซอร์ที่รองรับ เช่น Chrome และ Edge บนคอมพิวเตอร์)
8. **ล้างรายการ** – กด "ล้างรายการ" เมื่อเสร็จ เพื่อคืนหน่วยความจำของเบราว์เซอร์

**ความเป็นส่วนตัว:** การแปลงทำงานในเบราว์เซอร์ของคุณเอง ไฟล์ไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์ ตรวจสอบได้โดยเปิดเครื่องมือสำหรับนักพัฒนา (F12) แท็บ Network แล้วดูว่าไม่มีการส่งไฟล์ออกไประหว่างแปลง

## ศัพท์ที่ควรรู้ (อธิบายสั้น ๆ)

- **WebP** – รูปแบบไฟล์ภาพของ Google ที่บีบอัดได้เล็กกว่า JPG และ PNG รองรับพื้นโปร่งใสและภาพเคลื่อนไหว แต่บางโปรแกรมเก่าเปิดไม่ได้
- **JPG / JPEG** – รูปแบบภาพที่ใช้กันแพร่หลายที่สุด ไฟล์เล็ก เหมาะกับรูปถ่าย แต่ไม่รองรับพื้นโปร่งใส
- **PNG** – รูปแบบภาพแบบไม่สูญเสียรายละเอียด รองรับพื้นโปร่งใส เหมาะกับโลโก้และภาพกราฟิก แต่ไฟล์มักใหญ่กว่า JPG
- **คุณภาพ (Quality)** – ค่า 1–100 ที่กำหนดระดับการบีบอัด JPG ค่าสูงให้ภาพคมแต่ไฟล์ใหญ่ ค่าต่ำให้ไฟล์เล็กแต่ภาพอาจเป็นเม็ดหรือมีรอยบล็อก
- **Lossy / Lossless** – Lossy คือบีบอัดโดยตัดรายละเอียดบางส่วนทิ้ง (JPG) ส่วน Lossless คือบีบอัดโดยไม่ทิ้งรายละเอียด (PNG)
- **พื้นโปร่งใส (Alpha / Transparency)** – ส่วนของภาพที่มองทะลุเห็นพื้นหลังด้านหลัง JPG เก็บค่านี้ไม่ได้ จึงต้องเติมสีพื้นหลังแทน
- **สีพื้นหลัง** – สีที่ใช้เติมแทนส่วนโปร่งใสเมื่อแปลงเป็น JPG
- **พิกเซล (px)** – จุดสีเล็ก ๆ ที่ประกอบเป็นภาพ ความกว้าง 1920 px คือภาพกว้าง 1,920 จุด
- **ความกว้างสูงสุด (Resize)** – จำกัดความกว้างของภาพ ถ้าภาพกว้างกว่าค่านี้จะถูกย่อโดยรักษาสัดส่วนเดิม ภาพที่เล็กกว่าจะไม่ถูกขยาย
- **แปลงเป็นชุด (Batch)** – แปลงหลายไฟล์พร้อมกันในรอบเดียว
- **ZIP** – ไฟล์รวมที่เก็บหลายไฟล์ไว้ด้วยกัน ช่วยให้ดาวน์โหลดผลลัพธ์ทั้งหมดได้ในครั้งเดียว
- **EXIF / Metadata** – ข้อมูลแนบในภาพ เช่น วันที่ถ่าย รุ่นกล้อง หรือพิกัด GPS ไฟล์ที่แปลงจากเครื่องมือนี้จะไม่มีข้อมูลเหล่านี้ ช่วยลดความเสี่ยงเรื่องความเป็นส่วนตัว
- **WebP แบบเคลื่อนไหว (Animated WebP)** – WebP ที่มีหลายเฟรมคล้าย GIF เมื่อแปลงเป็น JPG หรือ PNG จะได้เฉพาะเฟรมแรก
- **ประมวลผลในเครื่อง (Client-side)** – การทำงานเกิดในเบราว์เซอร์ของคุณ ไม่ส่งไฟล์ขึ้นอินเทอร์เน็ต
- **คลิปบอร์ด (Clipboard)** – พื้นที่พักข้อมูลที่ได้จากการคัดลอก ใช้ Ctrl/⌘+V วางรูปลงในเครื่องมือได้ทันที

## เปรียบเทียบ WebP, JPG และ PNG

| หัวข้อ | WebP | JPG | PNG |
| --- | --- | --- | --- |
| ขนาดไฟล์ | เล็กที่สุด | เล็ก | ใหญ่ |
| พื้นโปร่งใส | รองรับ | ไม่รองรับ | รองรับ |
| ภาพเคลื่อนไหว | รองรับ | ไม่รองรับ | ไม่รองรับ (มาตรฐาน) |
| การบีบอัด | ทั้ง Lossy และ Lossless | Lossy | Lossless |
| ความเข้ากันได้ | เบราว์เซอร์ใหม่ ส่วนโปรแกรมเก่าอาจเปิดไม่ได้ | เปิดได้เกือบทุกอุปกรณ์ | เปิดได้เกือบทุกอุปกรณ์ |
| เหมาะกับ | เว็บไซต์ที่ต้องการโหลดเร็ว | รูปถ่าย อีเมล โซเชียล | โลโก้ ภาพกราฟิก ภาพหน้าจอ |

## คำถามที่พบบ่อย

### ไฟล์ของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่

ไม่ การแปลงทำงานในเบราว์เซอร์ของคุณทั้งหมด คุณตรวจสอบได้เองที่แท็บ Network ในเครื่องมือสำหรับนักพัฒนา

### แปลง WebP เป็น JPG แล้วคุณภาพลดลงไหม

JPG เป็นการบีบอัดแบบ Lossy จึงมีการสูญเสียรายละเอียดเล็กน้อย ตั้งค่าคุณภาพ 90 ขึ้นไปหากต้องการให้ใกล้เคียงต้นฉบับ หรือเลือก PNG หากต้องการไม่สูญเสียรายละเอียด

### ทำไมไฟล์ JPG ที่ได้ถึงใหญ่กว่า WebP ต้นฉบับ

WebP บีบอัดได้มีประสิทธิภาพกว่า JPG จึงเป็นเรื่องปกติที่ไฟล์ JPG ซึ่งมีคุณภาพเทียบเท่าจะใหญ่กว่า หากต้องการไฟล์เล็กลง ให้ลดค่าคุณภาพ (เช่น 75–85) หรือจำกัดความกว้างของภาพ แล้วดูขนาดไฟล์ก่อนและหลังในรายการผลลัพธ์

### รูป WebP พื้นโปร่งใสจะเป็นอย่างไรเมื่อแปลงเป็น JPG

JPG ไม่รองรับความโปร่งใส เครื่องมือจะเติมส่วนโปร่งใสด้วยสีพื้นหลังที่คุณเลือก (ค่าเริ่มต้นคือสีขาว) หากต้องการคงความโปร่งใส ให้เลือกผลลัพธ์เป็น PNG

### WebP ที่เป็นภาพเคลื่อนไหวแปลงได้ไหม

แปลงได้ แต่ JPG และ PNG เก็บได้เพียงภาพนิ่ง ผลลัพธ์จะเป็นเฟรมแรกของภาพเคลื่อนไหว

### แปลงได้ครั้งละกี่ไฟล์ และไฟล์ใหญ่สุดเท่าไร

แนะนำไม่เกิน 100 ไฟล์ต่อรอบ และไฟล์ละไม่เกิน 50 MB เพราะการแปลงใช้หน่วยความจำของอุปกรณ์คุณ หากมีไฟล์จำนวนมากให้แบ่งเป็นหลายรอบ

### ทำไมกดปุ่ม "บันทึกลงโฟลเดอร์" ไม่เจอ

ปุ่มนี้ใช้ความสามารถของเบราว์เซอร์ที่ชื่อ File System Access ซึ่งมีใน Chrome และ Edge บนคอมพิวเตอร์ หากไม่เห็นปุ่ม ให้ใช้ดาวน์โหลดทีละไฟล์หรือ ZIP แทน

### ทำไมไฟล์ WebP เปิดในโปรแกรมของฉันไม่ได้

โปรแกรมแต่งภาพหรือเครื่องมือรุ่นเก่าอาจยังไม่รองรับ WebP การแปลงเป็น JPG ช่วยให้เปิดและแชร์ได้ในแอปเกือบทั้งหมด เช่น อีเมล โปรแกรมออฟฟิศ และโซเชียลมีเดีย

### ใช้งานบนมือถือได้ไหม

ได้ รองรับเบราว์เซอร์บนมือถือทั้ง Android และ iOS แตะที่กรอบเพื่อเลือกรูปจากแกลเลอรี หากต้องการดาวน์โหลดหลายไฟล์ แนะนำใช้ปุ่ม ZIP

## เครื่องมือที่เกี่ยวข้อง

ดูเครื่องมือแปลงไฟล์ WebP อื่น ๆ ได้ที่ [เครื่องมือแปลง WebP ออนไลน์](/webp/)