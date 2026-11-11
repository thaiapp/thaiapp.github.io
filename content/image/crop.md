---
title: ครอปรูปออนไลน์ ฟรี
h1: ครอปรูปออนไลน์
description: ครอปรูปออนไลน์ฟรี ตัดรูปภาพในเบราว์เซอร์ทันที เลือกอัตราส่วน 1:1 4:3 3:2 หรือกำหนดเอง ไม่ต้องอัปโหลด ไม่ต้องสมัคร ดาวน์โหลดได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-11T09:00:00+07:00'
weight: 99
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ครอปรูปออนไลน์
- รูปภาพ
---
<div id="crop-tool" class="ct">
<div class="ct-row" role="group" aria-label="อัตราส่วนภาพ">
<button type="button" class="ct-chip is-active" data-ratio="free" aria-pressed="true">อิสระ</button>
<button type="button" class="ct-chip" data-ratio="1:1" aria-pressed="false">1:1</button>
<button type="button" class="ct-chip" data-ratio="4:3" aria-pressed="false">4:3</button>
<button type="button" class="ct-chip" data-ratio="3:2" aria-pressed="false">3:2</button>
<button type="button" class="ct-chip" data-ratio="custom" aria-pressed="false">กำหนดเอง</button>
<button type="button" class="ct-chip" data-ratio="max" aria-pressed="false">สูงสุด</button>
<span id="ct-custom" class="ct-custom" hidden>
<input type="number" id="ct-rw" min="1" max="100" step="any" value="16" aria-label="อัตราส่วนด้านกว้าง">
<span aria-hidden="true">:</span>
<input type="number" id="ct-rh" min="1" max="100" step="any" value="9" aria-label="อัตราส่วนด้านสูง">
</span>
</div>
<div id="ct-stage" class="ct-stage">
<canvas id="ct-canvas" aria-label="พื้นที่ครอปรูปภาพ"></canvas>
<div id="ct-drop" class="ct-drop">
<p class="ct-drop-title">วางรูปภาพที่นี่</p>
<p>ลากรูปภาพมาที่นี่ หรือกด Ctrl+V เพื่อวาง</p>
<button type="button" id="ct-pick" class="ct-btn ct-primary">เลือกไฟล์…</button>
<p class="ct-hint">รองรับ JPG, PNG, WebP, GIF และ HEIC</p>
</div>
</div>
<div class="ct-row">
<button type="button" class="ct-btn" data-zoom="out" aria-label="ซูมออก" disabled>−</button>
<button type="button" class="ct-btn" data-zoom="fit" aria-label="พอดีกับพื้นที่" disabled>0</button>
<button type="button" class="ct-btn" data-zoom="in" aria-label="ซูมเข้า" disabled>+</button>
<span id="ct-size" class="ct-size">ครอบตัด: –</span>
</div>
<div class="ct-row">
<button type="button" id="ct-crop" class="ct-btn ct-primary" disabled>ครอบตัดรูปภาพ</button>
<button type="button" id="ct-undo" class="ct-btn" disabled>เลิกทำ</button>
<button type="button" id="ct-download" class="ct-btn" disabled>ดาวน์โหลด</button>
<button type="button" id="ct-copy" class="ct-btn" disabled>คัดลอกรูปภาพ</button>
<button type="button" id="ct-clear" class="ct-btn" disabled>ล้าง</button>
</div>
<p id="ct-msg" class="ct-msg" role="status" aria-live="polite"></p>
<input type="file" id="ct-file" accept="image/*,.heic,.heif" hidden>
</div>

<style>
#crop-tool{margin:1.25rem 0;color:inherit;font:inherit;--ct-line:rgba(128,128,128,.4);--ct-fill:rgba(128,128,128,.14);--ct-accent:#2563eb}
#crop-tool [hidden]{display:none!important}
#crop-tool .ct-row{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.6rem 0}
#crop-tool button{font:inherit;color:inherit;cursor:pointer;min-height:40px;padding:0 .9rem;border:1px solid var(--ct-line);border-radius:8px;background:var(--ct-fill)}
#crop-tool button:hover:not(:disabled){border-color:var(--ct-accent)}
#crop-tool button:disabled{opacity:.45;cursor:not-allowed}
#crop-tool button:focus-visible,#crop-tool input:focus-visible{outline:2px solid var(--ct-accent);outline-offset:2px}
#crop-tool .ct-chip.is-active{border-color:var(--ct-accent);background:var(--ct-accent);color:#fff}
#crop-tool .ct-primary{border-color:var(--ct-accent);background:var(--ct-accent);color:#fff}
#crop-tool .ct-custom{display:inline-flex;align-items:center;gap:.35rem}
#crop-tool input[type=number]{width:4.5rem;min-height:40px;padding:0 .5rem;font:inherit;color:inherit;background:transparent;border:1px solid var(--ct-line);border-radius:8px}
#crop-tool .ct-stage{position:relative;width:100%;min-height:260px;overflow:hidden;border:1px dashed var(--ct-line);border-radius:10px;background:var(--ct-fill)}
#crop-tool .ct-stage.has-image{border-style:solid;background:#1f2937}
#crop-tool .ct-stage.is-over{outline:2px solid var(--ct-accent)}
#crop-tool canvas{display:block;max-width:none;margin:0}
#crop-tool .ct-stage.has-image canvas{touch-action:none}
#crop-tool .ct-drop{position:absolute;inset:0;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:.4rem;padding:1rem;text-align:center}
#crop-tool .ct-drop p{margin:0}
#crop-tool .ct-drop-title{font-size:1.15rem;font-weight:600}
#crop-tool .ct-hint{font-size:.875rem;opacity:.75}
#crop-tool .ct-size{margin-left:auto;font-variant-numeric:tabular-nums}
#crop-tool .ct-msg{min-height:1.5em;margin:.25rem 0 0;font-size:.95rem}
#crop-tool .ct-msg.is-error{color:#dc2626}
</style>
<script>
(function () {
  'use strict';
  var root = document.getElementById('crop-tool');
  if (!root) { return; }
  function $(s) { return root.querySelector(s); }
  var stage = $('#ct-stage'), canvas = $('#ct-canvas'), ctx = canvas.getContext('2d');
  var drop = $('#ct-drop'), fileInput = $('#ct-file'), msgEl = $('#ct-msg'), sizeEl = $('#ct-size');
  var customBox = $('#ct-custom'), rwEl = $('#ct-rw'), rhEl = $('#ct-rh');
  var btnCrop = $('#ct-crop'), btnUndo = $('#ct-undo'), btnDown = $('#ct-download'), btnCopy = $('#ct-copy'), btnClear = $('#ct-clear');
  var zoomBtns = root.querySelectorAll('[data-zoom]');
  var ratioBtns = root.querySelectorAll('[data-ratio]');
  var HIT = 16, MIN = 8, MAXSIDE = 12000, MAXHIST = 20;
  var CURSORS = { '-1,-1': 'nwse-resize', '1,1': 'nwse-resize', '1,-1': 'nesw-resize', '-1,1': 'nesw-resize', '0,-1': 'ns-resize', '0,1': 'ns-resize', '-1,0': 'ew-resize', '1,0': 'ew-resize' };
  var src = null, history = [], fileInfo = { name: 'image', type: 'image/png', ext: 'png' };
  var crop = { x: 0, y: 0, w: 0, h: 0 };
  var ratio = null, mode = 'free';
  var view = { zoom: 1, fit: 1, ox: 0, oy: 0 };
  var cw = 300, ch = 300, dpr = 1, drag = null;
  function clamp(v, a, b) { return Math.min(b, Math.max(a, v)); }
  function scale() { return view.fit * view.zoom; }
  function setMsg(t, err) { msgEl.textContent = t || ''; msgEl.className = 'ct-msg' + (err ? ' is-error' : ''); }
  function resizeCanvas() {
    var w = stage.getBoundingClientRect().width;
    dpr = window.devicePixelRatio || 1;
    cw = Math.max(200, Math.floor(w));
    ch = Math.max(260, Math.min(480, Math.round(window.innerHeight * 0.6)));
    stage.style.height = ch + 'px';
    canvas.width = Math.round(cw * dpr);
    canvas.height = Math.round(ch * dpr);
    canvas.style.width = cw + 'px';
    canvas.style.height = ch + 'px';
    if (src) { fitView(); }
    draw();
  }
  function fitView() {
    var pad = 24;
    view.fit = Math.min(8, Math.max(0.01, Math.min((cw - pad * 2) / src.width, (ch - pad * 2) / src.height)));
    view.zoom = 1;
    var s = scale();
    view.ox = (cw - src.width * s) / 2;
    view.oy = (ch - src.height * s) / 2;
  }
  function zoomAt(f, cx, cy) {
    var old = scale();
    var nz = clamp(view.zoom * f, 0.2, 8);
    var ns = view.fit * nz;
    view.ox = cx - (cx - view.ox) * ns / old;
    view.oy = cy - (cy - view.oy) * ns / old;
    view.zoom = nz;
  }
  function draw() {
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.clearRect(0, 0, cw, ch);
    if (!src) { return; }
    var s = scale();
    ctx.imageSmoothingEnabled = true;
    ctx.imageSmoothingQuality = 'high';
    ctx.drawImage(src, view.ox, view.oy, src.width * s, src.height * s);
    var X = view.ox + crop.x * s, Y = view.oy + crop.y * s, W = crop.w * s, H = crop.h * s;
    ctx.fillStyle = 'rgba(0,0,0,0.55)';
    ctx.beginPath();
    ctx.rect(0, 0, cw, ch);
    ctx.rect(X, Y, W, H);
    ctx.fill('evenodd');
    ctx.lineWidth = 1;
    ctx.strokeStyle = 'rgba(255,255,255,0.35)';
    ctx.beginPath();
    for (var i = 1; i < 3; i++) {
      ctx.moveTo(X + W * i / 3, Y); ctx.lineTo(X + W * i / 3, Y + H);
      ctx.moveTo(X, Y + H * i / 3); ctx.lineTo(X + W, Y + H * i / 3);
    }
    ctx.stroke();
    ctx.lineWidth = 1.5;
    ctx.strokeStyle = '#ffffff';
    ctx.strokeRect(X, Y, W, H);
    ctx.fillStyle = '#ffffff';
    for (var hy = -1; hy <= 1; hy++) {
      for (var hx = -1; hx <= 1; hx++) {
        if (hx === 0 && hy === 0) { continue; }
        var px = X + (hx + 1) / 2 * W, py = Y + (hy + 1) / 2 * H;
        ctx.fillRect(px - 4, py - 4, 8, 8);
        ctx.strokeStyle = 'rgba(0,0,0,0.6)';
        ctx.lineWidth = 1;
        ctx.strokeRect(px - 4, py - 4, 8, 8);
      }
    }
  }
  function updateUI() {
    var has = !!src;
    drop.hidden = has;
    stage.classList.toggle('has-image', has);
    btnCrop.disabled = !has;
    btnUndo.disabled = history.length === 0;
    btnDown.disabled = !has;
    btnCopy.disabled = !has;
    btnClear.disabled = !has;
    for (var i = 0; i < zoomBtns.length; i++) { zoomBtns[i].disabled = !has; }
    sizeEl.textContent = has ? 'ครอบตัด: ' + Math.round(crop.w) + ' × ' + Math.round(crop.h) + ' px' : 'ครอบตัด: –';
  }
  function fullCrop() { crop = { x: 0, y: 0, w: src.width, h: src.height }; }
  function applyRatio(val) {
    ratio = val;
    if (!src || !val) { return; }
    var W = src.width, H = src.height;
    var w = W, h = w / val;
    if (h > H) { h = H; w = h * val; }
    w *= 0.9; h *= 0.9;
    crop = { x: (W - w) / 2, y: (H - h) / 2, w: w, h: h };
  }
  function setMode(m) {
    mode = m;
    for (var i = 0; i < ratioBtns.length; i++) {
      var on = ratioBtns[i].getAttribute('data-ratio') === m;
      ratioBtns[i].classList.toggle('is-active', on);
      ratioBtns[i].setAttribute('aria-pressed', on ? 'true' : 'false');
    }
    customBox.hidden = m !== 'custom';
    if (m === 'free') { ratio = null; }
    else if (m === 'max') { ratio = null; if (src) { fullCrop(); } }
    else if (m === 'custom') { applyRatio(customRatio()); }
    else { var p = m.split(':'); applyRatio(Number(p[0]) / Number(p[1])); }
    updateUI();
    draw();
  }
  function customRatio() {
    var a = parseFloat(rwEl.value), b = parseFloat(rhEl.value);
    return a > 0 && b > 0 ? a / b : null;
  }
  function start(c, file) {
    src = c;
    history = [];
    var n = (file.name || 'image').replace(/\.[^.]+$/, '') || 'image';
    var t = (file.type || '').toLowerCase();
    var ext = ((file.name || '').split('.').pop() || '').toLowerCase();
    var type = 'image/png', outExt = 'png';
    if (t === 'image/jpeg' || ext === 'jpg' || ext === 'jpeg' || ext === 'heic' || ext === 'heif' || t === 'image/heic' || t === 'image/heif') { type = 'image/jpeg'; outExt = 'jpg'; }
    else if (t === 'image/webp' || ext === 'webp') { type = 'image/webp'; outExt = 'webp'; }
    fileInfo = { name: n, type: type, ext: outExt };
    fitView();
    fullCrop();
    setMode(mode);
    setMsg('');
  }
  function fail() { setMsg('เปิดรูปนี้ไม่ได้ ลองใช้ไฟล์ JPG หรือ PNG (HEIC ใช้ได้เฉพาะเบราว์เซอร์ที่รองรับ เช่น Safari)', true); }
  function toCanvas(img, w, h) {
    var f = Math.min(1, MAXSIDE / Math.max(w, h));
    var c = document.createElement('canvas');
    c.width = Math.max(1, Math.round(w * f));
    c.height = Math.max(1, Math.round(h * f));
    c.getContext('2d').drawImage(img, 0, 0, c.width, c.height);
    return c;
  }
  function loadFile(file) {
    if (!file) { return; }
    var ok = /^image\//.test(file.type || '') || /\.(heic|heif|jpe?g|png|webp|gif)$/i.test(file.name || '');
    if (!ok) { setMsg('ไฟล์นี้ไม่ใช่รูปภาพ กรุณาเลือกไฟล์ JPG, PNG, WebP, GIF หรือ HEIC', true); return; }
    setMsg('กำลังโหลดรูปภาพ...');
    var url = URL.createObjectURL(file);
    var img = new Image();
    img.onload = function () {
      URL.revokeObjectURL(url);
      if (!img.naturalWidth || !img.naturalHeight) { fail(); return; }
      try { start(toCanvas(img, img.naturalWidth, img.naturalHeight), file); } catch (e) { fail(); }
    };
    img.onerror = function () {
      URL.revokeObjectURL(url);
      if (window.createImageBitmap) {
        createImageBitmap(file).then(function (bmp) {
          start(toCanvas(bmp, bmp.width, bmp.height), file);
        }).catch(fail);
      } else { fail(); }
    };
    img.src = url;
  }
  function isFull() {
    return Math.round(crop.x) === 0 && Math.round(crop.y) === 0 && Math.round(crop.w) === src.width && Math.round(crop.h) === src.height;
  }
  function cropCanvas() {
    var w = Math.max(1, Math.round(crop.w)), h = Math.max(1, Math.round(crop.h));
    var c = document.createElement('canvas');
    c.width = w; c.height = h;
    c.getContext('2d').drawImage(src, Math.round(crop.x), Math.round(crop.y), w, h, 0, 0, w, h);
    return c;
  }
  function applyCrop() {
    if (!src) { return; }
    if (isFull()) { setMsg('ลากกรอบให้เล็กกว่ารูปก่อน แล้วกดครอบตัดรูปภาพ'); return; }
    var c = cropCanvas();
    history.push(src);
    if (history.length > MAXHIST) { history.shift(); }
    src = c;
    fitView();
    fullCrop();
    setMsg('ครอบตัดแล้ว กดดาวน์โหลดเพื่อบันทึก หรือครอบตัดต่อได้');
    updateUI();
    draw();
  }
  function undo() {
    if (!history.length) { return; }
    src = history.pop();
    fitView();
    fullCrop();
    setMsg('');
    updateUI();
    draw();
  }
  function clearAll() {
    src = null; history = []; drag = null;
    setMsg('');
    updateUI();
    draw();
  }
  function exportCanvas() { return isFull() ? src : cropCanvas(); }
  function download() {
    if (!src) { return; }
    exportCanvas().toBlob(function (blob) {
      if (!blob) { setMsg('บันทึกไฟล์ไม่สำเร็จ ลองใหม่อีกครั้ง', true); return; }
      var a = document.createElement('a');
      var u = URL.createObjectURL(blob);
      a.href = u;
      a.download = fileInfo.name + '-crop.' + fileInfo.ext;
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(u); }, 1000);
      setMsg('ดาวน์โหลดแล้ว');
    }, fileInfo.type, 0.92);
  }
  function copyImage() {
    if (!src) { return; }
    if (!(navigator.clipboard && window.ClipboardItem)) { setMsg('เบราว์เซอร์นี้ยังไม่รองรับการคัดลอกรูป กรุณาใช้ปุ่มดาวน์โหลดแทน', true); return; }
    exportCanvas().toBlob(function (blob) {
      if (!blob) { setMsg('คัดลอกไม่สำเร็จ', true); return; }
      var item = new window.ClipboardItem({ 'image/png': blob });
      navigator.clipboard.write([item]).then(function () { setMsg('คัดลอกรูปภาพแล้ว'); }).catch(function () { setMsg('คัดลอกไม่สำเร็จ กรุณาอนุญาตการเข้าถึงคลิปบอร์ด หรือใช้ปุ่มดาวน์โหลดแทน', true); });
    }, 'image/png');
  }
  function hit(sx, sy) {
    var s = scale(), X = view.ox + crop.x * s, Y = view.oy + crop.y * s, W = crop.w * s, H = crop.h * s;
    var best = null, bd = HIT + 1, hx, hy;
    for (hy = -1; hy <= 1; hy += 2) {
      for (hx = -1; hx <= 1; hx += 2) {
        var d = Math.max(Math.abs(sx - (X + (hx + 1) / 2 * W)), Math.abs(sy - (Y + (hy + 1) / 2 * H)));
        if (d < bd) { bd = d; best = { t: 'resize', hx: hx, hy: hy }; }
      }
    }
    if (best) { return best; }
    var inX = sx >= X - HIT && sx <= X + W + HIT, inY = sy >= Y - HIT && sy <= Y + H + HIT;
    var edges = [
      { d: Math.abs(sx - X), ok: inY, hx: -1, hy: 0 },
      { d: Math.abs(sx - (X + W)), ok: inY, hx: 1, hy: 0 },
      { d: Math.abs(sy - Y), ok: inX, hx: 0, hy: -1 },
      { d: Math.abs(sy - (Y + H)), ok: inX, hx: 0, hy: 1 }
    ];
    for (var i = 0; i < edges.length; i++) {
      if (edges[i].ok && edges[i].d <= HIT && edges[i].d < bd) { bd = edges[i].d; best = { t: 'resize', hx: edges[i].hx, hy: edges[i].hy }; }
    }
    if (best) { return best; }
    if (sx >= X && sx <= X + W && sy >= Y && sy <= Y + H) { return { t: 'move' }; }
    return { t: 'pan' };
  }
  function resizeCrop(hx, hy, px, py, st) {
    var W = src.width, H = src.height;
    px = clamp(px, 0, W); py = clamp(py, 0, H);
    var L = st.x, R = st.x + st.w, T = st.y, B = st.y + st.h;
    if (hx < 0) { L = Math.min(px, R - MIN); }
    if (hx > 0) { R = Math.max(px, L + MIN); }
    if (hy < 0) { T = Math.min(py, B - MIN); }
    if (hy > 0) { B = Math.max(py, T + MIN); }
    if (ratio) {
      var w = R - L, h = B - T, availW, availH;
      if (hx !== 0 && hy !== 0) {
        w = Math.max(w, h * ratio);
        availW = hx > 0 ? W - L : R;
        availH = hy > 0 ? H - T : B;
        w = Math.min(w, availW, availH * ratio);
        h = w / ratio;
        if (hx > 0) { R = L + w; } else { L = R - w; }
        if (hy > 0) { B = T + h; } else { T = B - h; }
      } else if (hx !== 0) {
        var cy = st.y + st.h / 2;
        availW = hx > 0 ? W - L : R;
        w = Math.min(w, availW, 2 * Math.min(cy, H - cy) * ratio);
        h = w / ratio;
        if (hx > 0) { R = L + w; } else { L = R - w; }
        T = cy - h / 2; B = cy + h / 2;
      } else {
        var cx = st.x + st.w / 2;
        availH = hy > 0 ? H - T : B;
        h = Math.min(h, availH, 2 * Math.min(cx, W - cx) / ratio);
        w = h * ratio;
        if (hy > 0) { B = T + h; } else { T = B - h; }
        L = cx - w / 2; R = cx + w / 2;
      }
    }
    crop = { x: L, y: T, w: R - L, h: B - T };
  }
  function pos(e) {
    var r = canvas.getBoundingClientRect();
    return { x: e.clientX - r.left, y: e.clientY - r.top };
  }
  canvas.addEventListener('pointerdown', function (e) {
    if (!src) { return; }
    var p = pos(e), h = hit(p.x, p.y);
    drag = { t: h.t, hx: h.hx, hy: h.hy, sx: p.x, sy: p.y, st: { x: crop.x, y: crop.y, w: crop.w, h: crop.h }, ox: view.ox, oy: view.oy };
    try { canvas.setPointerCapture(e.pointerId); } catch (err) { /* ignore */ }
    e.preventDefault();
  });
  canvas.addEventListener('pointermove', function (e) {
    if (!src) { return; }
    var p = pos(e), s = scale();
    if (!drag) {
      var h = hit(p.x, p.y);
      canvas.style.cursor = h.t === 'resize' ? CURSORS[h.hx + ',' + h.hy] : (h.t === 'move' ? 'move' : 'grab');
      return;
    }
    if (drag.t === 'pan') {
      view.ox = drag.ox + (p.x - drag.sx);
      view.oy = drag.oy + (p.y - drag.sy);
    } else if (drag.t === 'move') {
      crop.x = clamp(drag.st.x + (p.x - drag.sx) / s, 0, src.width - crop.w);
      crop.y = clamp(drag.st.y + (p.y - drag.sy) / s, 0, src.height - crop.h);
    } else {
      resizeCrop(drag.hx, drag.hy, (p.x - view.ox) / s, (p.y - view.oy) / s, drag.st);
    }
    updateUI();
    draw();
  });
  function endDrag() { drag = null; }
  canvas.addEventListener('pointerup', endDrag);
  canvas.addEventListener('pointercancel', endDrag);
  canvas.addEventListener('wheel', function (e) {
    if (!src) { return; }
    e.preventDefault();
    var p = pos(e);
    zoomAt(e.deltaY < 0 ? 1.1 : 1 / 1.1, p.x, p.y);
    draw();
  }, { passive: false });
  for (var i = 0; i < ratioBtns.length; i++) {
    ratioBtns[i].addEventListener('click', function () { setMode(this.getAttribute('data-ratio')); });
  }
  function onCustomInput() {
    if (mode !== 'custom') { return; }
    applyRatio(customRatio());
    updateUI();
    draw();
  }
  rwEl.addEventListener('input', onCustomInput);
  rhEl.addEventListener('input', onCustomInput);
  for (var j = 0; j < zoomBtns.length; j++) {
    zoomBtns[j].addEventListener('click', function () {
      if (!src) { return; }
      var z = this.getAttribute('data-zoom');
      if (z === 'fit') { fitView(); } else { zoomAt(z === 'in' ? 1.25 : 0.8, cw / 2, ch / 2); }
      draw();
    });
  }
  btnCrop.addEventListener('click', applyCrop);
  btnUndo.addEventListener('click', undo);
  btnDown.addEventListener('click', download);
  btnCopy.addEventListener('click', copyImage);
  btnClear.addEventListener('click', clearAll);
  $('#ct-pick').addEventListener('click', function () { fileInput.click(); });
  fileInput.addEventListener('change', function () {
    if (fileInput.files && fileInput.files[0]) { loadFile(fileInput.files[0]); }
    fileInput.value = '';
  });
  stage.addEventListener('dragover', function (e) { e.preventDefault(); stage.classList.add('is-over'); });
  stage.addEventListener('dragleave', function () { stage.classList.remove('is-over'); });
  stage.addEventListener('drop', function (e) {
    e.preventDefault();
    stage.classList.remove('is-over');
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    if (f) { loadFile(f); }
  });
  document.addEventListener('paste', function (e) {
    var t = e.target;
    if (t && (t.tagName === 'INPUT' || t.tagName === 'TEXTAREA' || t.isContentEditable)) { return; }
    var items = e.clipboardData && e.clipboardData.items;
    if (!items) { return; }
    for (var k = 0; k < items.length; k++) {
      if (items[k].kind === 'file' && /^image\//.test(items[k].type)) {
        loadFile(items[k].getAsFile());
        e.preventDefault();
        return;
      }
    }
  });
  window.addEventListener('resize', resizeCanvas);
  resizeCanvas();
  updateUI();
})();
</script>

เครื่องมือครอปรูปออนไลน์นี้ช่วยตัดส่วนที่ไม่ต้องการออกจากรูปภาพได้โดยตรงในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ ไม่ต้องสมัครสมาชิก และไม่จำกัดขนาดไฟล์ เหมาะสำหรับเตรียมรูปโปรไฟล์ รูปโพสต์โซเชียลมีเดีย ตัดภาพหน้าจอ หรือสร้างรูปขนาดย่อ รูปทั้งหมดถูกประมวลผลบนอุปกรณ์ของคุณเอง

## วิธีใช้งาน

1. **เลือกรูปภาพ** ลากไฟล์มาวางในกรอบด้านบน กดปุ่ม **เลือกไฟล์…** หรือกด `Ctrl`+`V` (`⌘`+`V` บน Mac) เพื่อวางรูปจากคลิปบอร์ด
2. **เลือกอัตราส่วน** กดปุ่ม **1:1**, **4:3** หรือ **3:2** เพื่อล็อกสัดส่วนกรอบ หรือกด **กำหนดเอง** แล้วใส่สัดส่วนที่ต้องการ เช่น 16:9 หรือ 9:16 ถ้าไม่ต้องการล็อก ให้ใช้ **อิสระ**
3. **ปรับกรอบครอป** ลากมุมหรือขอบเพื่อเปลี่ยนขนาดกรอบ ลากภายในกรอบเพื่อย้ายกรอบ และลากนอกกรอบเพื่อเลื่อนภาพ
4. **ซูมเพื่อความแม่นยำ** กดปุ่ม **+** หรือ **−** หรือเลื่อนล้อเมาส์เพื่อซูมเข้าออก กด **0** เพื่อให้ภาพพอดีกับพื้นที่แสดงผล
5. **ตรวจขนาด** ดูตัวเลขหลัง **ครอบตัด:** ที่แสดงความกว้าง × ความสูงของพื้นที่ที่เลือก หน่วยเป็นพิกเซล
6. **ครอบตัดรูปภาพ** กดปุ่ม **ครอบตัดรูปภาพ** เพื่อตัดตามกรอบ หากไม่พอใจกด **เลิกทำ** แล้วลองใหม่ หรือครอบตัดซ้ำได้หลายครั้ง
7. **บันทึกผลลัพธ์** กด **ดาวน์โหลด** เพื่อบันทึกไฟล์ หรือกด **คัดลอกรูปภาพ** เพื่อนำไปวางในแอปอื่น หากต้องการเริ่มรูปใหม่ให้กด **ล้าง**

## คำอธิบายศัพท์

- **ครอป (Crop)** การตัดบางส่วนของรูปภาพออก เหลือไว้เฉพาะส่วนที่ต้องการ
- **กรอบครอป** กรอบสี่เหลี่ยมบนภาพที่กำหนดพื้นที่ซึ่งจะถูกเก็บไว้ ส่วนนอกกรอบจะมืดลงและถูกตัดทิ้ง
- **อัตราส่วนภาพ (Aspect Ratio)** สัดส่วนความกว้างต่อความสูงของรูป เช่น 4:3 หมายถึงกว้าง 4 ส่วนต่อสูง 3 ส่วน
- **อิสระ** ปรับกรอบเป็นรูปทรงใดก็ได้ ไม่ล็อกสัดส่วน
- **1:1** อัตราส่วนสี่เหลี่ยมจัตุรัส นิยมใช้กับรูปโปรไฟล์และโพสต์โซเชียลมีเดีย
- **4:3** อัตราส่วนมาตรฐานของรูปถ่ายทั่วไปและหน้าจอรุ่นเก่า
- **3:2** อัตราส่วนของภาพจากกล้องถ่ายรูปและขนาดภาพสำหรับพิมพ์
- **กำหนดเอง** ใส่อัตราส่วนเองได้ เช่น 16:9 สำหรับจอกว้างและวิดีโอ หรือ 9:16 สำหรับสตอรี่และคลิปแนวตั้ง
- **สูงสุด** เลือกพื้นที่ทั้งภาพ ใช้เป็นจุดเริ่มต้นก่อนค่อยปรับกรอบให้เล็กลง
- **ซูม (+ / − / 0)** ขยายหรือย่อภาพเพื่อวางกรอบให้แม่นยำ ปุ่ม 0 คือรีเซ็ตให้ภาพพอดีหน้าจอ ซูมไม่ได้เปลี่ยนขนาดไฟล์จริง
- **เลื่อนภาพ (Pan)** ลากบริเวณนอกกรอบเพื่อขยับตำแหน่งภาพ โดยกรอบครอปไม่ขยับตาม
- **พิกเซล (px)** หน่วยของจุดภาพ ยิ่งมีพิกเซลมาก รูปยิ่งละเอียดและไฟล์ยิ่งใหญ่
- **ครอบตัดรูปภาพ** ปุ่มยืนยันการตัดรูปตามกรอบ ผลลัพธ์จะแทนที่รูปที่แสดงอยู่ แต่ยังเลิกทำได้
- **เลิกทำ (Undo)** ย้อนกลับไปเป็นรูปก่อนการครอบตัดครั้งล่าสุด
- **ดาวน์โหลด** บันทึกรูปที่ครอบตัดแล้วลงเครื่อง ไฟล์ JPG, HEIC จะได้เป็น JPG ส่วน WebP จะได้เป็น WebP และไฟล์อื่นจะได้เป็น PNG
- **คัดลอกรูปภาพ** ส่งรูปไปที่คลิปบอร์ดเพื่อวางต่อในแชต เอกสาร หรือโปรแกรมแต่งรูป
- **ล้าง** ปิดรูปปัจจุบันและกลับไปหน้าเลือกไฟล์
- **JPG / PNG / WebP / GIF** ชนิดไฟล์รูปภาพที่ใช้กันทั่วไป JPG เหมาะกับรูปถ่าย PNG รองรับพื้นหลังโปร่งใส WebP ไฟล์เล็กและคุณภาพดี GIF มักใช้กับภาพเคลื่อนไหว (เครื่องมือนี้จะครอบตัดเป็นภาพนิ่ง)
- **HEIC** ชนิดไฟล์รูปจาก iPhone เปิดได้ในเบราว์เซอร์ที่รองรับ เช่น Safari หากเปิดไม่ได้ให้แปลงเป็น JPG ก่อน
- **ประมวลผลในเบราว์เซอร์** รูปไม่ถูกส่งออกจากอุปกรณ์ของคุณ ทุกขั้นตอนทำงานในหน้าเว็บนี้