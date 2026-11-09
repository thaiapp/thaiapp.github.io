---
title: ปริ้น PDF หลายหน้าในแผ่นเดียว ออนไลน์ ฟรี
h1: ปริ้น PDF หลายหน้าในแผ่นเดียว
description: ปริ้น PDF หลายหน้าในแผ่นเดียวออนไลน์ฟรี เลือก 2, 4, 6, 9 หรือ 16 หน้าต่อแผ่น ปรับขนาดกระดาษได้ ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกส่งออกจากเครื่อง ใช้ง่าย
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-09T09:00:00+07:00'
weight: 90
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- ปริ้น PDF หลายหน้าในแผ่นเดียว
- ปริ้น PDF หลายหน้าในแผ่นเดียว ออนไลน์
- PDF และไฟล์
---

<div id="pps-app" class="pps">
<div id="pps-drop" class="pps-drop" role="button" tabindex="0" aria-label="เลือกไฟล์ PDF หรือรูปภาพ">
<strong>วางไฟล์ PDF ที่นี่</strong>
<span>หรือคลิกเพื่อเลือกไฟล์ / กด Ctrl+V เพื่อวาง</span>
<span class="pps-sub">รองรับ PDF, JPG และ PNG เพิ่มได้หลายไฟล์</span>
<input id="pps-file" type="file" accept=".pdf,application/pdf,image/jpeg,image/png" multiple hidden>
</div>
<p class="pps-note">การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์</p>
<div id="pps-error" class="pps-error" role="alert" hidden></div>
<div id="pps-workspace" hidden>
<ul id="pps-files" class="pps-files"></ul>
<div class="pps-row"><button type="button" id="pps-clear" class="pps-btn pps-ghost">ล้างไฟล์ทั้งหมด</button><button type="button" id="pps-add" class="pps-btn pps-ghost">เพิ่มไฟล์</button></div>
<div class="pps-grid">
<label>หน้าต่อแผ่น
<select id="pps-n"><option value="2">2 หน้า</option><option value="4" selected>4 หน้า</option><option value="6">6 หน้า</option><option value="9">9 หน้า</option><option value="16">16 หน้า</option></select>
</label>
<label>ขนาดกระดาษ
<select id="pps-paper"><option value="a4" selected>A4</option><option value="a3">A3</option><option value="a5">A5</option><option value="letter">Letter</option><option value="legal">Legal</option><option value="orig">ขนาดหน้าเดิม</option></select>
</label>
<label>แนวกระดาษ
<select id="pps-orient"><option value="auto" selected>อัตโนมัติ</option><option value="p">แนวตั้ง</option><option value="l">แนวนอน</option></select>
</label>
<label>ลำดับ
<select id="pps-order"><option value="row" selected>ตามแถว (ซ้ายไปขวา แล้วลงล่าง)</option><option value="col">ตามคอลัมน์ (บนลงล่าง แล้วขวา)</option></select>
</label>
<label>ระยะขอบ (มม.)
<input id="pps-margin" type="number" min="0" max="50" step="1" value="5">
</label>
<label>พื้นหลัง
<input id="pps-bg" type="color" value="#ffffff">
</label>
<fieldset>
<legend>ขนาด</legend>
<label class="pps-inline"><input type="radio" name="pps-mode" value="fit" checked> ย่อให้พอดี</label>
<label class="pps-inline"><input type="radio" name="pps-mode" value="actual"> ขนาดจริง</label>
</fieldset>
<label class="pps-inline pps-check"><input id="pps-border" type="checkbox"> เส้นขอบ</label>
</div>
<div class="pps-row"><button type="button" id="pps-reset" class="pps-btn pps-ghost">รีเซ็ตการตั้งค่า</button></div>
<p id="pps-summary" class="pps-summary" aria-live="polite"></p>
<div class="pps-nav"><button type="button" id="pps-prev" class="pps-btn pps-ghost" aria-label="แผ่นก่อนหน้า">&lsaquo;</button><span id="pps-sheetlabel">แผ่นที่ 1 / 1</span><button type="button" id="pps-next" class="pps-btn pps-ghost" aria-label="แผ่นถัดไป">&rsaquo;</button></div>
<div id="pps-stage" class="pps-stage"></div>
<div class="pps-row"><button type="button" id="pps-download" class="pps-btn">ดาวน์โหลด PDF</button></div>
</div>
</div>

<style>
.pps{color-scheme:light dark;max-width:860px;margin:1.5rem auto;font:inherit}
.pps *{box-sizing:border-box}
.pps-drop{display:flex;flex-direction:column;gap:.25rem;align-items:center;justify-content:center;text-align:center;padding:2rem 1rem;border:2px dashed rgba(128,128,128,.55);border-radius:10px;cursor:pointer}
.pps-drop:hover,.pps-drop:focus-visible,.pps-drop.pps-over{border-color:#2563eb;background:rgba(37,99,235,.08);outline:none}
.pps-drop strong{font-size:1.15em}
.pps-sub,.pps-note{opacity:.75;font-size:.9em}
.pps-note{margin:.6rem 0}
.pps-error{margin:.6rem 0;padding:.7rem .9rem;border-radius:8px;background:rgba(220,38,38,.12);border:1px solid rgba(220,38,38,.5)}
.pps-files{list-style:none;margin:1rem 0 .5rem;padding:0;display:flex;flex-direction:column;gap:.4rem}
.pps-files li{display:flex;align-items:center;gap:.5rem;padding:.45rem .65rem;border:1px solid rgba(128,128,128,.4);border-radius:8px}
.pps-fname{flex:1;min-width:0;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.pps-fmeta{opacity:.7;font-size:.9em;white-space:nowrap}
.pps-row{display:flex;flex-wrap:wrap;gap:.5rem;margin:.7rem 0}
.pps-btn{font:inherit;padding:.5rem 1rem;border-radius:8px;border:1px solid #2563eb;background:#2563eb;color:#fff;cursor:pointer}
.pps-btn:hover{filter:brightness(1.1)}
.pps-btn:disabled{opacity:.55;cursor:not-allowed}
.pps-btn:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
.pps-ghost{background:transparent;color:inherit;border-color:rgba(128,128,128,.55)}
.pps-mini{padding:.15rem .5rem}
.pps-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:.8rem;margin:1rem 0}
.pps-grid label,.pps-grid fieldset{display:flex;flex-direction:column;gap:.3rem;font-size:.95em}
.pps-grid fieldset{border:1px solid rgba(128,128,128,.4);border-radius:8px;padding:.4rem .7rem;margin:0}
.pps-grid select,.pps-grid input[type=number]{font:inherit;padding:.4rem .5rem;border-radius:6px;border:1px solid rgba(128,128,128,.55);background:Field;color:FieldText;width:100%}
.pps-grid input[type=color]{width:100%;height:2.3rem;padding:0;border:1px solid rgba(128,128,128,.55);border-radius:6px;background:Field}
.pps-grid label.pps-inline{flex-direction:row;align-items:center;gap:.4rem}
.pps-check{align-self:end;padding-bottom:.5rem}
.pps-summary{margin:.5rem 0;font-weight:600}
.pps-nav{display:flex;align-items:center;justify-content:center;gap:1rem;margin:.6rem 0}
.pps-stage{display:flex;justify-content:center;padding:1rem;border-radius:10px;background:rgba(128,128,128,.14);min-height:120px}
.pps-stage canvas{display:block;max-width:100%;box-shadow:0 1px 6px rgba(0,0,0,.35)}
.pps-busy{align-self:center;opacity:.7}
</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
<script>
(function () {
  'use strict';

  function $(id) { return document.getElementById(id); }
  var errBox = $('pps-error');
  function showError(msg) { errBox.textContent = msg || ''; errBox.hidden = !msg; }

  if (!window.PDFLib || !window.pdfjsLib) {
    showError('โหลดไลบรารีประมวลผล PDF ไม่สำเร็จ กรุณารีเฟรชหน้านี้หรือตรวจสอบการเชื่อมต่ออินเทอร์เน็ต');
    return;
  }

  var PDFDocument = PDFLib.PDFDocument;
  var rgb = PDFLib.rgb;
  var degrees = PDFLib.degrees;
  pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';

  var MM = 72 / 25.4;
  var PAPERS = { a4: [595.28, 841.89], a3: [841.89, 1190.55], a5: [419.53, 595.28], letter: [612, 792], legal: [612, 1008] };
  var PAPER_NAMES = { a4: 'A4', a3: 'A3', a5: 'A5', letter: 'Letter', legal: 'Legal', orig: 'ขนาดหน้าเดิม' };
  var GRIDS = { 2: [[2, 1], [1, 2]], 4: [[2, 2]], 6: [[3, 2], [2, 3]], 9: [[3, 3]], 16: [[4, 4]] };

  var files = [];
  var pages = [];
  var curSheet = 0;
  var renderToken = 0;
  var timer = null;

  var drop = $('pps-drop');
  var fileInput = $('pps-file');
  var workspace = $('pps-workspace');
  var listEl = $('pps-files');
  var stage = $('pps-stage');
  var dlBtn = $('pps-download');

  function tick() { return new Promise(function (r) { setTimeout(r, 0); }); }

  function readCfg() {
    var mode = document.querySelector('input[name="pps-mode"]:checked');
    return {
      n: parseInt($('pps-n').value, 10) || 4,
      paper: $('pps-paper').value,
      orient: $('pps-orient').value,
      order: $('pps-order').value,
      margin: Math.max(0, Math.min(50, parseFloat($('pps-margin').value) || 0)),
      border: $('pps-border').checked,
      bg: $('pps-bg').value || '#ffffff',
      mode: mode ? mode.value : 'fit'
    };
  }

  function hexToRgb(hex) {
    var m = /^#?([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})$/i.exec(hex);
    if (!m) { return rgb(1, 1, 1); }
    return rgb(parseInt(m[1], 16) / 255, parseInt(m[2], 16) / 255, parseInt(m[3], 16) / 255);
  }

  function rebuildPages() {
    pages = [];
    files.forEach(function (f, fi) {
      var count = f.kind === 'pdf' ? f.count : 1;
      for (var pi = 0; pi < count; pi++) { pages.push({ fi: fi, pi: pi }); }
    });
  }

  function pageInfo(it) {
    var f = files[it.fi];
    if (f.kind === 'img') { return { w: f.w * 0.75, h: f.h * 0.75, rot: 0 }; }
    var p = f.doc.getPage(it.pi);
    var size = p.getSize();
    var rot = Math.round(p.getRotation().angle / 90) * 90;
    rot = ((rot % 360) + 360) % 360;
    var swap = rot === 90 || rot === 270;
    return { w: swap ? size.height : size.width, h: swap ? size.width : size.height, rot: rot };
  }

  function computeLayout(c) {
    if (!pages.length) { return null; }
    var d = pageInfo(pages[0]);
    var base = c.paper === 'orig'
      ? [Math.min(d.w, d.h), Math.max(d.w, d.h)]
      : PAPERS[c.paper];
    var m = c.margin * MM;
    var best = null;
    var orients = c.orient === 'auto' ? ['p', 'l'] : [c.orient];
    orients.forEach(function (o) {
      var W = o === 'p' ? base[0] : base[1];
      var H = o === 'p' ? base[1] : base[0];
      GRIDS[c.n].forEach(function (g) {
        var cw = (W - 2 * m) / g[0];
        var ch = (H - 2 * m) / g[1];
        if (cw <= 0 || ch <= 0) { return; }
        var s = Math.min(cw / d.w, ch / d.h);
        if (!best || s > best.s + 1e-9) {
          best = { W: W, H: H, cols: g[0], rows: g[1], cw: cw, ch: ch, m: m, s: s, o: o };
        }
      });
    });
    return best;
  }

  function drawBorder(pg, x, y, w, h) {
    var opt = { thickness: 0.5, color: rgb(0.55, 0.55, 0.55) };
    pg.drawLine({ start: { x: x, y: y }, end: { x: x + w, y: y }, thickness: opt.thickness, color: opt.color });
    pg.drawLine({ start: { x: x + w, y: y }, end: { x: x + w, y: y + h }, thickness: opt.thickness, color: opt.color });
    pg.drawLine({ start: { x: x + w, y: y + h }, end: { x: x, y: y + h }, thickness: opt.thickness, color: opt.color });
    pg.drawLine({ start: { x: x, y: y + h }, end: { x: x, y: y }, thickness: opt.thickness, color: opt.color });
  }

  async function build(from, to, onProgress) {
    var c = readCfg();
    var L = computeLayout(c);
    if (!L) { throw new Error('ไม่พบหน้าที่จะจัดเรียง'); }
    var out = await PDFDocument.create();
    var items = pages.slice(from * c.n, to * c.n);

    var needed = {};
    items.forEach(function (it) {
      if (!needed[it.fi]) { needed[it.fi] = {}; }
      needed[it.fi][it.pi] = true;
    });

    var embedded = {};
    var keys = Object.keys(needed);
    for (var a = 0; a < keys.length; a++) {
      var fi = parseInt(keys[a], 10);
      var f = files[fi];
      if (f.kind === 'img') {
        embedded[fi + ':0'] = f.mime === 'image/png' ? await out.embedPng(f.bytes) : await out.embedJpg(f.bytes);
      } else {
        var idx = Object.keys(needed[fi]).map(Number);
        var eps = await out.embedPages(idx.map(function (i) { return f.doc.getPage(i); }));
        for (var b = 0; b < idx.length; b++) { embedded[fi + ':' + idx[b]] = eps[b]; }
      }
    }

    var bg = hexToRgb(c.bg);
    var sheets = to - from;
    for (var s = 0; s < sheets; s++) {
      var pg = out.addPage([L.W, L.H]);
      pg.drawRectangle({ x: 0, y: 0, width: L.W, height: L.H, color: bg });
      for (var k = 0; k < c.n; k++) {
        var it = items[s * c.n + k];
        if (!it) { break; }
        var col, row;
        if (c.order === 'col') { row = k % L.rows; col = Math.floor(k / L.rows); }
        else { col = k % L.cols; row = Math.floor(k / L.cols); }

        var info = pageInfo(it);
        var x0 = L.m + col * L.cw;
        var y0 = L.H - L.m - (row + 1) * L.ch;
        var sc = c.mode === 'fit' ? Math.min(L.cw / info.w, L.ch / info.h) : 1;
        var w = info.w * sc;
        var h = info.h * sc;
        var ox = x0 + (L.cw - w) / 2;
        var oy = y0 + (L.ch - h) / 2;
        var emb = embedded[it.fi + ':' + it.pi];

        pg.pushOperators(
          PDFLib.pushGraphicsState(),
          PDFLib.moveTo(x0, y0),
          PDFLib.lineTo(x0 + L.cw, y0),
          PDFLib.lineTo(x0 + L.cw, y0 + L.ch),
          PDFLib.lineTo(x0, y0 + L.ch),
          PDFLib.closePath(),
          PDFLib.clip(),
          PDFLib.endPath()
        );
        if (files[it.fi].kind === 'img') {
          pg.drawImage(emb, { x: ox, y: oy, width: w, height: h });
        } else {
          var cw0 = emb.width * sc;
          var ch0 = emb.height * sc;
          if (info.rot === 90) {
            pg.drawPage(emb, { x: ox, y: oy + cw0, xScale: sc, yScale: sc, rotate: degrees(-90) });
          } else if (info.rot === 180) {
            pg.drawPage(emb, { x: ox + cw0, y: oy + ch0, xScale: sc, yScale: sc, rotate: degrees(-180) });
          } else if (info.rot === 270) {
            pg.drawPage(emb, { x: ox + ch0, y: oy, xScale: sc, yScale: sc, rotate: degrees(-270) });
          } else {
            pg.drawPage(emb, { x: ox, y: oy, xScale: sc, yScale: sc });
          }
        }
        pg.pushOperators(PDFLib.popGraphicsState());

        if (c.border) {
          if (c.mode === 'fit') { drawBorder(pg, ox, oy, w, h); }
          else { drawBorder(pg, x0, y0, L.cw, L.ch); }
        }
      }
      if (onProgress && s % 10 === 9) { onProgress(s + 1, sheets); await tick(); }
    }
    return await out.save();
  }

  function totalSheets() {
    var c = readCfg();
    return Math.max(1, Math.ceil(pages.length / c.n));
  }

  function updateSummary() {
    var c = readCfg();
    var L = computeLayout(c);
    var total = totalSheets();
    if (curSheet > total - 1) { curSheet = total - 1; }
    if (curSheet < 0) { curSheet = 0; }
    if (!L) {
      $('pps-summary').textContent = 'ระยะขอบมากเกินไปสำหรับกระดาษขนาดนี้ กรุณาลดระยะขอบ';
    } else {
      var orientName = L.o === 'p' ? 'แนวตั้ง' : 'แนวนอน';
      var auto = c.orient === 'auto' ? ' (อัตโนมัติ)' : '';
      $('pps-summary').textContent = 'รวม ' + pages.length + ' หน้า จะได้ ' + Math.ceil(pages.length / c.n) +
        ' แผ่น: ' + PAPER_NAMES[c.paper] + ' ' + orientName + auto + ' จัดเป็น ' + L.cols + '×' + L.rows;
    }
    $('pps-sheetlabel').textContent = 'แผ่นที่ ' + (curSheet + 1) + ' / ' + total;
    $('pps-prev').disabled = curSheet <= 0;
    $('pps-next').disabled = curSheet >= total - 1;
    dlBtn.disabled = !L;
  }

  async function renderPreview() {
    var tok = ++renderToken;
    if (!pages.length || !computeLayout(readCfg())) { return; }
    try {
      var bytes = await build(curSheet, curSheet + 1);
      if (tok !== renderToken) { return; }
      var doc = await pdfjsLib.getDocument({ data: bytes }).promise;
      var pg = await doc.getPage(1);
      if (tok !== renderToken) { doc.destroy(); return; }
      var vp0 = pg.getViewport({ scale: 1 });
      var maxW = Math.max(200, Math.min(stage.clientWidth - 32, 700));
      var maxH = Math.max(240, window.innerHeight * 0.7);
      var scale = Math.min(maxW / vp0.width, maxH / vp0.height);
      var dpr = window.devicePixelRatio || 1;
      var vp = pg.getViewport({ scale: scale * dpr });
      var canvas = document.createElement('canvas');
      canvas.width = Math.floor(vp.width);
      canvas.height = Math.floor(vp.height);
      canvas.style.width = Math.floor(vp0.width * scale) + 'px';
      canvas.style.height = Math.floor(vp0.height * scale) + 'px';
      await pg.render({ canvasContext: canvas.getContext('2d'), viewport: vp }).promise;
      doc.destroy();
      if (tok !== renderToken) { return; }
      stage.innerHTML = '';
      stage.appendChild(canvas);
      showError('');
    } catch (e) {
      if (tok === renderToken) { showError('สร้างตัวอย่างไม่สำเร็จ: ' + (e && e.message ? e.message : e)); }
    }
  }

  function update(immediate) {
    updateSummary();
    clearTimeout(timer);
    timer = setTimeout(renderPreview, immediate ? 0 : 150);
  }

  function renderList() {
    listEl.innerHTML = '';
    files.forEach(function (f, i) {
      var li = document.createElement('li');
      var name = document.createElement('span');
      name.className = 'pps-fname';
      name.textContent = f.name;
      var meta = document.createElement('span');
      meta.className = 'pps-fmeta';
      meta.textContent = f.kind === 'pdf' ? f.count + ' หน้า' : 'รูปภาพ';
      li.appendChild(name);
      li.appendChild(meta);
      [['▲', 'เลื่อนขึ้น', -1], ['▼', 'เลื่อนลง', 1], ['✕', 'ลบไฟล์', 0]].forEach(function (b) {
        var btn = document.createElement('button');
        btn.type = 'button';
        btn.className = 'pps-btn pps-ghost pps-mini';
        btn.textContent = b[0];
        btn.setAttribute('aria-label', b[1] + ' ' + f.name);
        btn.addEventListener('click', function () {
          if (b[2] === 0) { files.splice(i, 1); }
          else {
            var j = i + b[2];
            if (j < 0 || j >= files.length) { return; }
            var t = files[i]; files[i] = files[j]; files[j] = t;
          }
          afterFilesChange();
        });
        li.appendChild(btn);
      });
      listEl.appendChild(li);
    });
  }

  function afterFilesChange() {
    rebuildPages();
    renderList();
    workspace.hidden = files.length === 0;
    if (!files.length) { stage.innerHTML = ''; }
    curSheet = 0;
    update(true);
  }

  async function addFiles(fileList) {
    showError('');
    var list = Array.prototype.slice.call(fileList);
    var failed = [];
    var skipped = [];
    stage.innerHTML = '<span class="pps-busy">กำลังอ่านไฟล์…</span>';
    workspace.hidden = false;
    for (var i = 0; i < list.length; i++) {
      var f = list[i];
      var isPdf = f.type === 'application/pdf' || /\.pdf$/i.test(f.name);
      var isPng = f.type === 'image/png' || /\.png$/i.test(f.name);
      var isJpg = f.type === 'image/jpeg' || /\.jpe?g$/i.test(f.name);
      try {
        if (isPdf) {
          var bytes = new Uint8Array(await f.arrayBuffer());
          var doc = await PDFDocument.load(bytes, { ignoreEncryption: true });
          files.push({ kind: 'pdf', name: f.name, doc: doc, count: doc.getPageCount() });
        } else if (isPng || isJpg) {
          var ib = new Uint8Array(await f.arrayBuffer());
          var tmp = await PDFDocument.create();
          var im = isPng ? await tmp.embedPng(ib) : await tmp.embedJpg(ib);
          files.push({ kind: 'img', name: f.name, bytes: ib, mime: isPng ? 'image/png' : 'image/jpeg', w: im.width, h: im.height });
        } else {
          skipped.push(f.name);
        }
      } catch (e) {
        failed.push(f.name);
      }
    }
    if (failed.length) { showError('อ่านไฟล์ไม่สำเร็จ (ไฟล์อาจเสียหรือมีรหัสผ่าน): ' + failed.join(', ')); }
    else if (skipped.length) { showError('ไม่รองรับไฟล์ชนิดนี้: ' + skipped.join(', ')); }
    afterFilesChange();
  }

  async function download() {
    var c = readCfg();
    var total = totalSheets();
    dlBtn.disabled = true;
    dlBtn.textContent = 'กำลังสร้างไฟล์…';
    try {
      await tick();
      var bytes = await build(0, total, function (d, t) { dlBtn.textContent = 'กำลังสร้างไฟล์ ' + d + '/' + t; });
      var blob = new Blob([bytes], { type: 'application/pdf' });
      var url = URL.createObjectURL(blob);
      var a = document.createElement('a');
      var base = (files[0] ? files[0].name : 'document').replace(/\.[^.]+$/, '');
      a.href = url;
      a.download = base + '-' + c.n + '-per-sheet.pdf';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(url); }, 10000);
    } catch (e) {
      showError('สร้างไฟล์ไม่สำเร็จ: ' + (e && e.message ? e.message : e));
    }
    dlBtn.textContent = 'ดาวน์โหลด PDF';
    dlBtn.disabled = false;
  }

  function resetSettings() {
    $('pps-n').value = '4';
    $('pps-paper').value = 'a4';
    $('pps-orient').value = 'auto';
    $('pps-order').value = 'row';
    $('pps-margin').value = '5';
    $('pps-bg').value = '#ffffff';
    $('pps-border').checked = false;
    document.querySelector('input[name="pps-mode"][value="fit"]').checked = true;
    update(true);
  }

  drop.addEventListener('click', function () { fileInput.click(); });
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileInput.click(); }
  });
  drop.addEventListener('dragover', function (e) { e.preventDefault(); drop.classList.add('pps-over'); });
  drop.addEventListener('dragleave', function () { drop.classList.remove('pps-over'); });
  drop.addEventListener('drop', function (e) {
    e.preventDefault();
    drop.classList.remove('pps-over');
    if (e.dataTransfer && e.dataTransfer.files.length) { addFiles(e.dataTransfer.files); }
  });
  fileInput.addEventListener('change', function () {
    if (fileInput.files.length) { addFiles(fileInput.files); }
    fileInput.value = '';
  });
  document.addEventListener('paste', function (e) {
    var cd = e.clipboardData;
    if (cd && cd.files && cd.files.length) { addFiles(cd.files); }
  });

  $('pps-add').addEventListener('click', function () { fileInput.click(); });
  $('pps-clear').addEventListener('click', function () { files = []; afterFilesChange(); showError(''); });
  $('pps-reset').addEventListener('click', resetSettings);
  $('pps-prev').addEventListener('click', function () { curSheet--; update(true); });
  $('pps-next').addEventListener('click', function () { curSheet++; update(true); });
  dlBtn.addEventListener('click', download);

  ['pps-n', 'pps-paper', 'pps-orient', 'pps-order', 'pps-margin', 'pps-bg', 'pps-border'].forEach(function (id) {
    $(id).addEventListener('input', function () { update(false); });
    $(id).addEventListener('change', function () { update(false); });
  });
  Array.prototype.forEach.call(document.querySelectorAll('input[name="pps-mode"]'), function (r) {
    r.addEventListener('change', function () { update(false); });
  });
})();
</script>

## วิธีใช้งานเครื่องมือ

1. **เพิ่มไฟล์** ลากไฟล์ PDF มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์จากเครื่อง หรือกด `Ctrl`+`V` เพื่อวางไฟล์ที่คัดลอกไว้ รองรับ PDF, JPG และ PNG และเพิ่มได้หลายไฟล์ ใช้ปุ่ม ▲ ▼ จัดลำดับไฟล์ และปุ่ม ✕ เพื่อลบไฟล์ที่ไม่ต้องการ
2. **เลือกจำนวนหน้าต่อแผ่น** เลือก 2, 4, 6, 9 หรือ 16 หน้า เครื่องมือจะจัดหน้าเรียงกันในแผ่นเดียวให้อัตโนมัติ
3. **ตั้งค่ากระดาษ** เลือกขนาดกระดาษ (A4, A3, A5, Letter, Legal หรือขนาดหน้าเดิม) และแนวกระดาษ ถ้าเลือก "อัตโนมัติ" เครื่องมือจะเลือกแนวตั้งหรือแนวนอนที่ทำให้แต่ละหน้าใหญ่ที่สุด
4. **ปรับรายละเอียด** เลือกลำดับการเรียงหน้า ใส่ระยะขอบ เปิดเส้นขอบ หรือเปลี่ยนสีพื้นหลังตามต้องการ และเลือกโหมด "ย่อให้พอดี" หรือ "ขนาดจริง"
5. **ตรวจตัวอย่าง** ดูตัวอย่างแต่ละแผ่นด้วยปุ่ม ‹ และ › ตัวอย่างจะเปลี่ยนทันทีเมื่อปรับการตั้งค่า
6. **ดาวน์โหลด** กดปุ่ม "ดาวน์โหลด PDF" ได้ไฟล์ใหม่ที่มีจำนวนแผ่นน้อยลง พร้อมสั่งพิมพ์ ส่งต่อ หรือเก็บไว้ได้ทันที

หากต้องการกลับไปใช้ค่าเริ่มต้น กดปุ่ม "รีเซ็ตการตั้งค่า"

## อธิบายคำศัพท์

**หน้าต่อแผ่น**
: จำนวนหน้าของเอกสารที่นำมาวางรวมกันในกระดาษ 1 แผ่น เช่น เลือก 4 หน้าต่อแผ่น เอกสาร 20 หน้าจะเหลือ 5 แผ่น ประหยัดกระดาษได้ถึงสามในสี่

**แผ่น กับ หน้า**
: "หน้า" คือหน้าของเอกสารต้นฉบับ ส่วน "แผ่น" คือกระดาษหนึ่งแผ่นในไฟล์ผลลัพธ์ ซึ่งอาจมีหลายหน้าวางอยู่

**ขนาดกระดาษ**
: ขนาดของแผ่นผลลัพธ์ เช่น A4 (210×297 มม.), A3, A5, Letter, Legal ส่วน "ขนาดหน้าเดิม" คือใช้ขนาดเดียวกับหน้าแรกของไฟล์ต้นฉบับ

**แนวกระดาษ**
: ทิศทางการวางกระดาษ มี แนวตั้ง แนวนอน และอัตโนมัติ ซึ่งเครื่องมือจะเลือกแนวและการจัดตารางที่ทำให้แต่ละหน้าแสดงได้ใหญ่ที่สุด

**ย่อให้พอดี**
: ย่อแต่ละหน้าให้พอดีกับช่องของมัน เหมาะกับการพิมพ์เอกสารอ่านทั่วไป เช่น รายงานหรือสไลด์เพื่อประหยัดกระดาษ

**ขนาดจริง**
: คงขนาดเดิมของแต่ละหน้าไว้ ส่วนที่เกินช่องจะถูกตัดออก เหมาะกับงานที่ต้องมีขนาดตรงตามจริง เช่น สติกเกอร์หรือตั๋ว รูปภาพไม่มีข้อมูลขนาดจริงในตัว จึงใช้ขนาดมาตรฐานของหน้าจอ (96 พิกเซลต่อนิ้ว) ควรวัดขนาดบนกระดาษที่พิมพ์ออกมาก่อนใช้งานจริง

**ลำดับ (ตามแถว / ตามคอลัมน์)**
: ตามแถวคือเรียงจากซ้ายไปขวา แล้วลงแถวถัดไป เช่น หน้า 1 และ 2 อยู่แถวบน ส่วนตามคอลัมน์คือเรียงจากบนลงล่าง แล้วไปคอลัมน์ขวา เหมาะกับการตัดแผ่นเป็นแถบหรืออ่านเป็นคอลัมน์

**ระยะขอบ**
: พื้นที่ว่างรอบแผ่นกระดาษ มีหน่วยเป็นมิลลิเมตร ควรเว้นไว้สักเล็กน้อยหากเครื่องพิมพ์ของคุณพิมพ์ไม่ถึงขอบกระดาษ ไม่มีระยะห่างระหว่างหน้า เพราะแต่ละหน้ามีขอบขาวของตัวเองอยู่แล้ว

**เส้นขอบ**
: เส้นบางๆ ที่ลากรอบแต่ละหน้า ช่วยแยกหน้าที่พื้นสีขาวไม่ให้ติดกัน และใช้เป็นแนวตัดกระดาษได้

**พื้นหลัง**
: สีพื้นของแผ่นกระดาษ ซึ่งจะเห็นในส่วนที่ไม่มีหน้าเอกสารวางอยู่ ค่าเริ่มต้นคือสีขาว หากจะพิมพ์ ควรใช้สีขาวเพื่อประหยัดหมึก

**ตัวอย่าง (พรีวิว)**
: ภาพแสดงผลลัพธ์ของแต่ละแผ่นก่อนดาวน์โหลด ใช้ตรวจตำแหน่งและลำดับของแต่ละหน้า

**ประมวลผลในเบราว์เซอร์**
: การทำงานทั้งหมดเกิดขึ้นบนอุปกรณ์ของคุณเอง ไฟล์ PDF ไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์

## ข้อควรรู้

- เครื่องมือนี้จัดเรียงหน้าของไฟล์ให้อยู่ในแผ่นที่น้อยลง ไม่ใช่การนำหลายไฟล์มาต่อกันเป็นเอกสารเดียว หากต้องการรวมไฟล์ ให้ใช้เครื่องมือรวม PDF แทน
- หน้าที่ย่อเล็กลงยังเป็นข้อความจริง เลือกและค้นหาได้ และยังคมชัดเมื่อพิมพ์ ไม่เบลอเหมือนภาพหน้าจอ
- ลิงก์และฟิลด์ฟอร์มในไฟล์ต้นฉบับจะไม่ถูกนำมาในแผ่นที่จัดหน้าใหม่
- ไฟล์ PDF ที่ตั้งรหัสผ่านอาจเปิดไม่ได้ ให้ปลดล็อกไฟล์ก่อนใช้งาน