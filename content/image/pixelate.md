---
title: ใส่โมเสกรูปภาพออนไลน์ ฟรี
h1: ใส่โมเสกรูปภาพออนไลน์
description: ใส่โมเสกรูปภาพออนไลน์ฟรี ปิดบังใบหน้า ป้ายทะเบียน และข้อมูลส่วนตัวด้วยพิกเซล เบลอ หรือบล็อกทึบ ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดรูป รองรับ JPG PNG WebP
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-13T09:00:00+07:00'
weight: 109
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ใส่โมเสกรูปภาพออนไลน์
- รูปภาพ
---

<style>
.mz{max-width:980px;margin:1.5rem auto;font-size:15px;line-height:1.5}
.mz *{box-sizing:border-box}
.mz [hidden]{display:none!important}
.mz-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:40px 16px;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
.mz-drop:hover,.mz-drop:focus,.mz-over .mz-drop{border-color:#2563eb;background:rgba(37,99,235,.08);outline:none}
.mz-drop p{margin:.35rem 0}
.mz-drop-icon{font-size:40px;line-height:1}
.mz-muted{opacity:.7;font-size:13px}
.mz-bar{display:flex;flex-wrap:wrap;gap:10px 18px;align-items:flex-end;padding:12px;border:1px solid rgba(128,128,128,.35);border-radius:10px;margin-bottom:10px}
.mz-grp{display:flex;flex-direction:column;gap:4px;min-width:0}
.mz-lbl{font-size:12px;opacity:.75}
.mz-row{display:flex;flex-wrap:wrap;gap:6px;align-items:center}
.mz button,.mz select{font:inherit;color:inherit;border:1px solid rgba(128,128,128,.5);background:rgba(128,128,128,.1);border-radius:8px;padding:6px 12px;cursor:pointer}
.mz select{padding:6px 8px}
.mz button:hover:not(:disabled){background:rgba(128,128,128,.22)}
.mz button:disabled{opacity:.4;cursor:not-allowed}
.mz button[aria-pressed="true"]{background:#2563eb;border-color:#2563eb;color:#fff}
.mz .mz-primary{background:#2563eb;border-color:#2563eb;color:#fff}
.mz .mz-primary:hover:not(:disabled){background:#1d4ed8}
.mz input[type=range]{width:160px;max-width:100%}
.mz input[type=color]{width:42px;height:32px;padding:2px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;cursor:pointer}
.mz-stagewrap{text-align:center;padding:10px;border:1px solid rgba(128,128,128,.35);border-radius:10px;background:repeating-conic-gradient(rgba(128,128,128,.14) 0% 25%,transparent 0% 50%) 0 0/16px 16px;overflow:auto}
.mz-stage{position:relative;display:inline-block;max-width:100%;line-height:0}
.mz-stage canvas{display:block;max-width:100%;height:auto}
#mz-overlay{position:absolute;left:0;top:0;width:100%;height:100%;cursor:crosshair;touch-action:none}
.mz-info{font-size:13px;opacity:.75;margin:8px 0 0}
.mz-msg{min-height:1.4em;margin:8px 0 0;font-size:14px}
.mz-msg.mz-err{color:#dc2626}
</style>
<div class="mz" id="mz-app">
<div class="mz-drop" id="mz-drop" tabindex="0" role="button" aria-label="เลือกรูปภาพจากอุปกรณ์">
<div class="mz-drop-icon">📁</div>
<p><strong>ลากรูปภาพมาวางที่นี่</strong> หรือกดเพื่อเลือกไฟล์</p>
<p class="mz-muted">หรือกด Ctrl+V เพื่อวางรูปจากคลิปบอร์ด · รองรับ JPG, PNG, WebP, GIF</p>
</div>
<input type="file" id="mz-file" accept="image/*" hidden>
<div id="mz-editor" hidden>
<div class="mz-bar">
<div class="mz-grp"><span class="mz-lbl">ตั้งค่าด่วน</span><div class="mz-row">
<button type="button" data-preset="face">ใบหน้า</button>
<button type="button" data-preset="plate">ป้ายทะเบียน</button>
<button type="button" data-preset="doc">บัตร/เอกสาร</button>
<button type="button" data-preset="chat">แชต/ข้อความ</button>
</div></div>
<div class="mz-grp"><span class="mz-lbl">เอฟเฟกต์</span><div class="mz-row">
<button type="button" data-mode="pixelate" aria-pressed="true">พิกเซล</button>
<button type="button" data-mode="blur" aria-pressed="false">เบลอ</button>
<button type="button" data-mode="solid" aria-pressed="false">บล็อกทึบ</button>
</div></div>
<div class="mz-grp"><span class="mz-lbl">เลือกพื้นที่</span><div class="mz-row">
<button type="button" data-tool="rect" aria-pressed="true">▭ สี่เหลี่ยม</button>
<button type="button" data-tool="ellipse" aria-pressed="false">⬭ วงรี</button>
<button type="button" data-tool="brush" aria-pressed="false">🖌 แปรง</button>
</div></div>
<div class="mz-grp"><label class="mz-lbl" for="mz-strength">ความเข้ม: <b id="mz-strength-v">35</b></label><input type="range" id="mz-strength" min="1" max="100" value="35"></div>
<div class="mz-grp" id="mz-brush-grp" hidden><label class="mz-lbl" for="mz-brush">ขนาดแปรง: <b id="mz-brush-v">30</b></label><input type="range" id="mz-brush" min="1" max="100" value="30"></div>
<div class="mz-grp" id="mz-color-grp" hidden><label class="mz-lbl" for="mz-color">สีบล็อก</label><input type="color" id="mz-color" value="#000000"></div>
</div>
<div class="mz-bar">
<button type="button" class="mz-primary" id="mz-apply" disabled>นำไปใช้</button>
<button type="button" id="mz-all">ทั้งภาพ</button>
<button type="button" id="mz-undo" disabled>↶ เลิกทำ</button>
<button type="button" id="mz-redo" disabled>↷ ทำซ้ำ</button>
<button type="button" id="mz-reset" disabled>รีเซ็ต</button>
<button type="button" id="mz-change">เปลี่ยนรูป</button>
<button type="button" id="mz-clear">ล้างรูป</button>
</div>
<div class="mz-stagewrap"><div class="mz-stage"><canvas id="mz-canvas" width="300" height="150"></canvas><canvas id="mz-overlay" width="300" height="150"></canvas></div></div>
<p class="mz-info" id="mz-info"></p>
<div class="mz-bar" style="margin-top:10px">
<div class="mz-grp"><label class="mz-lbl" for="mz-format">รูปแบบไฟล์</label><select id="mz-format"><option value="image/png">PNG</option><option value="image/jpeg">JPG</option><option value="image/webp">WebP</option></select></div>
<div class="mz-grp" id="mz-q-grp" hidden><label class="mz-lbl" for="mz-quality">คุณภาพ: <b id="mz-quality-v">92</b></label><input type="range" id="mz-quality" min="40" max="100" value="92"></div>
<button type="button" class="mz-primary" id="mz-download">ดาวน์โหลด</button>
<button type="button" id="mz-copy">คัดลอกรูปภาพ</button>
</div>
</div>
<p class="mz-msg" id="mz-msg" role="status" aria-live="polite"></p>
<p class="mz-muted">🛡️ ประมวลผลในเบราว์เซอร์ของคุณทั้งหมด รูปภาพไม่ถูกอัปโหลดไปที่ใด</p>
</div>
<script>
(function () {
  'use strict';
  var $ = function (id) { return document.getElementById(id); };
  var app = $('mz-app');
  if (!app) { return; }
  var drop = $('mz-drop'), fileInput = $('mz-file'), editor = $('mz-editor');
  var canvas = $('mz-canvas'), overlay = $('mz-overlay'), msgEl = $('mz-msg');
  var ctx = canvas.getContext('2d', { willReadFrequently: true });
  var octx = overlay.getContext('2d');
  var MAX_SIDE = 4096;
  var PRESETS = {
    face: { mode: 'pixelate', tool: 'ellipse', strength: 40 },
    plate: { mode: 'pixelate', tool: 'rect', strength: 50 },
    doc: { mode: 'solid', tool: 'rect', strength: 50 },
    chat: { mode: 'blur', tool: 'rect', strength: 70 }
  };
  var orig = null, committed = null, cctx = null;
  var ops = [], redoStack = [], pending = null, drag = null, hover = null;
  var fileBase = 'image';
  var state = { mode: 'pixelate', tool: 'rect', strength: 35, brush: 30, color: '#000000' };
  var rafId = 0, needMain = false, needOv = false;
  var tmp = document.createElement('canvas');
  function each(list, fn) { Array.prototype.forEach.call(list, fn); }
  function showMsg(text, isErr) {
    msgEl.textContent = text || '';
    msgEl.className = 'mz-msg' + (isErr ? ' mz-err' : '');
  }
  function maxSide() { return Math.max(canvas.width, canvas.height); }
  function pixelSize(s) { return Math.max(2, Math.round(s / 100 * maxSide() * 0.05)); }
  function blurRadius(s) { return Math.max(1, Math.round(s / 100 * maxSide() * 0.03)); }
  function brushRadius(v) { return Math.max(3, Math.round(v / 100 * maxSide() * 0.06)); }
  /* ---------- effects ---------- */
  function pixelate(id, size) {
    var d = id.data, w = id.width, h = id.height;
    for (var by = 0; by < h; by += size) {
      var bh = Math.min(size, h - by);
      for (var bx = 0; bx < w; bx += size) {
        var bw = Math.min(size, w - bx);
        var r = 0, g = 0, b = 0, a = 0, n = bw * bh, x, y, i;
        for (y = 0; y < bh; y++) {
          for (x = 0; x < bw; x++) {
            i = ((by + y) * w + bx + x) * 4;
            r += d[i]; g += d[i + 1]; b += d[i + 2]; a += d[i + 3];
          }
        }
        r = Math.round(r / n); g = Math.round(g / n); b = Math.round(b / n); a = Math.round(a / n);
        for (y = 0; y < bh; y++) {
          for (x = 0; x < bw; x++) {
            i = ((by + y) * w + bx + x) * 4;
            d[i] = r; d[i + 1] = g; d[i + 2] = b; d[i + 3] = a;
          }
        }
      }
    }
  }
  function blurH(src, dst, w, h, r) {
    var div = r * 2 + 1;
    for (var y = 0; y < h; y++) {
      var row = y * w * 4;
      for (var c = 0; c < 4; c++) {
        var sum = 0, k, xx;
        for (k = -r; k <= r; k++) {
          xx = k < 0 ? 0 : (k >= w ? w - 1 : k);
          sum += src[row + xx * 4 + c];
        }
        for (var x = 0; x < w; x++) {
          dst[row + x * 4 + c] = sum / div;
          var addX = x + r + 1; if (addX >= w) { addX = w - 1; }
          var subX = x - r; if (subX < 0) { subX = 0; }
          sum += src[row + addX * 4 + c] - src[row + subX * 4 + c];
        }
      }
    }
  }
  function blurV(src, dst, w, h, r) {
    var div = r * 2 + 1, stride = w * 4;
    for (var x = 0; x < w; x++) {
      for (var c = 0; c < 4; c++) {
        var base = x * 4 + c, sum = 0, k, yy;
        for (k = -r; k <= r; k++) {
          yy = k < 0 ? 0 : (k >= h ? h - 1 : k);
          sum += src[yy * stride + base];
        }
        for (var y = 0; y < h; y++) {
          dst[y * stride + base] = sum / div;
          var addY = y + r + 1; if (addY >= h) { addY = h - 1; }
          var subY = y - r; if (subY < 0) { subY = 0; }
          sum += src[addY * stride + base] - src[subY * stride + base];
        }
      }
    }
  }
  function boxBlur(data, w, h, r) {
    var buf = new Uint8ClampedArray(data.length);
    for (var pass = 0; pass < 3; pass++) {
      blurH(data, buf, w, h, r);
      blurV(buf, data, w, h, r);
    }
  }
  function drawData(c, id, x, y) {
    tmp.width = id.width; tmp.height = id.height;
    tmp.getContext('2d').putImageData(id, 0, 0);
    c.drawImage(tmp, x, y);
  }
  /* ---------- operations ---------- */
  function makeOp(shape) {
    return { shape: shape, mode: state.mode, strength: state.strength, color: state.color };
  }
  function bounds(op) {
    var W = canvas.width, H = canvas.height, x0, y0, x1, y1, i;
    if (op.shape === 'all') { x0 = 0; y0 = 0; x1 = W; y1 = H; }
    else if (op.shape === 'brush') {
      x0 = Infinity; y0 = Infinity; x1 = -Infinity; y1 = -Infinity;
      for (i = 0; i < op.points.length; i++) {
        x0 = Math.min(x0, op.points[i][0] - op.r); x1 = Math.max(x1, op.points[i][0] + op.r);
        y0 = Math.min(y0, op.points[i][1] - op.r); y1 = Math.max(y1, op.points[i][1] + op.r);
      }
    } else {
      x0 = Math.min(op.x0, op.x1); x1 = Math.max(op.x0, op.x1);
      y0 = Math.min(op.y0, op.y1); y1 = Math.max(op.y0, op.y1);
    }
    x0 = Math.max(0, Math.floor(x0)); y0 = Math.max(0, Math.floor(y0));
    x1 = Math.min(W, Math.ceil(x1)); y1 = Math.min(H, Math.ceil(y1));
    if (x1 - x0 < 1 || y1 - y0 < 1) { return null; }
    return { x: x0, y: y0, w: x1 - x0, h: y1 - y0 };
  }
  function clipShape(c, op) {
    var i;
    c.beginPath();
    if (op.shape === 'brush') {
      for (i = 0; i < op.points.length; i++) {
        c.moveTo(op.points[i][0] + op.r, op.points[i][1]);
        c.arc(op.points[i][0], op.points[i][1], op.r, 0, Math.PI * 2);
      }
    } else if (op.shape === 'ellipse') {
      c.ellipse((op.x0 + op.x1) / 2, (op.y0 + op.y1) / 2, Math.max(Math.abs(op.x1 - op.x0) / 2, 0.5), Math.max(Math.abs(op.y1 - op.y0) / 2, 0.5), 0, 0, Math.PI * 2);
    } else if (op.shape === 'all') {
      c.rect(0, 0, canvas.width, canvas.height);
    } else {
      c.rect(Math.min(op.x0, op.x1), Math.min(op.y0, op.y1), Math.abs(op.x1 - op.x0), Math.abs(op.y1 - op.y0));
    }
    c.clip();
  }
  function applyOp(c, op) {
    var b = bounds(op);
    if (!b) { return; }
    c.save();
    clipShape(c, op);
    if (op.mode === 'solid') {
      c.fillStyle = op.color;
      c.fillRect(b.x, b.y, b.w, b.h);
    } else if (op.mode === 'blur') {
      var r = blurRadius(op.strength), pad = r * 3;
      var wx = Math.max(0, b.x - pad), wy = Math.max(0, b.y - pad);
      var wx2 = Math.min(canvas.width, b.x + b.w + pad), wy2 = Math.min(canvas.height, b.y + b.h + pad);
      var idb = c.getImageData(wx, wy, wx2 - wx, wy2 - wy);
      boxBlur(idb.data, idb.width, idb.height, r);
      drawData(c, idb, wx, wy);
    } else {
      var idp = c.getImageData(b.x, b.y, b.w, b.h);
      pixelate(idp, pixelSize(op.strength));
      drawData(c, idp, b.x, b.y);
    }
    c.restore();
  }
  function rebuildCommitted() {
    cctx.clearRect(0, 0, committed.width, committed.height);
    cctx.drawImage(orig, 0, 0);
    for (var i = 0; i < ops.length; i++) { applyOp(cctx, ops[i]); }
  }
  function commitPending() {
    if (!pending) { return; }
    applyOp(cctx, pending);
    ops.push(pending);
    redoStack = [];
    pending = null;
  }
  /* ---------- rendering ---------- */
  function outline(shape, x0, y0, x1, y1, lw) {
    octx.save();
    octx.beginPath();
    if (shape === 'ellipse') {
      octx.ellipse((x0 + x1) / 2, (y0 + y1) / 2, Math.abs(x1 - x0) / 2, Math.abs(y1 - y0) / 2, 0, 0, Math.PI * 2);
    } else {
      octx.rect(Math.min(x0, x1), Math.min(y0, y1), Math.abs(x1 - x0), Math.abs(y1 - y0));
    }
    octx.setLineDash([]);
    octx.strokeStyle = '#ffffff'; octx.lineWidth = lw * 2; octx.stroke();
    octx.setLineDash([lw * 5, lw * 4]);
    octx.strokeStyle = '#2563eb'; octx.lineWidth = lw; octx.stroke();
    octx.restore();
  }
  function drawOverlay() {
    var lw = Math.max(1, canvas.width / 500), i;
    octx.clearRect(0, 0, overlay.width, overlay.height);
    if (drag && drag.brush) {
      octx.fillStyle = 'rgba(37,99,235,0.35)';
      octx.beginPath();
      for (i = 0; i < drag.points.length; i++) {
        octx.moveTo(drag.points[i][0] + drag.r, drag.points[i][1]);
        octx.arc(drag.points[i][0], drag.points[i][1], drag.r, 0, Math.PI * 2);
      }
      octx.fill();
    } else if (drag) {
      outline(state.tool, drag.x0, drag.y0, drag.x1, drag.y1, lw);
    } else if (pending && pending.shape !== 'all') {
      outline(pending.shape, pending.x0, pending.y0, pending.x1, pending.y1, lw);
    }
    if (!drag && hover && state.tool === 'brush') {
      octx.save();
      octx.beginPath();
      octx.arc(hover.x, hover.y, brushRadius(state.brush), 0, Math.PI * 2);
      octx.strokeStyle = '#ffffff'; octx.lineWidth = lw * 2; octx.stroke();
      octx.strokeStyle = '#2563eb'; octx.lineWidth = lw; octx.stroke();
      octx.restore();
    }
  }
  function updateButtons() {
    $('mz-apply').disabled = !pending;
    $('mz-undo').disabled = !(pending || ops.length);
    $('mz-redo').disabled = !redoStack.length;
    $('mz-reset').disabled = !(pending || ops.length || redoStack.length);
  }
  function frame() {
    rafId = 0;
    if (!orig) { return; }
    if (needMain) {
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      ctx.drawImage(committed, 0, 0);
      if (pending) { applyOp(ctx, pending); }
    }
    if (needOv) { drawOverlay(); }
    needMain = false; needOv = false;
    updateButtons();
  }
  function schedule(main) {
    if (main) { needMain = true; }
    needOv = true;
    if (!rafId) { rafId = window.requestAnimationFrame(frame); }
  }
  /* ---------- loading images ---------- */
  function setImage(img, name) {
    var w = img.naturalWidth || img.width, h = img.naturalHeight || img.height;
    if (!w || !h) { showMsg('อ่านขนาดรูปภาพไม่ได้ กรุณาลองไฟล์อื่น', true); return; }
    var scale = Math.min(1, MAX_SIDE / Math.max(w, h));
    var cw = Math.max(1, Math.round(w * scale)), ch = Math.max(1, Math.round(h * scale));
    orig = document.createElement('canvas');
    orig.width = cw; orig.height = ch;
    orig.getContext('2d').drawImage(img, 0, 0, cw, ch);
    committed = document.createElement('canvas');
    committed.width = cw; committed.height = ch;
    cctx = committed.getContext('2d', { willReadFrequently: true });
    cctx.drawImage(orig, 0, 0);
    canvas.width = cw; canvas.height = ch;
    overlay.width = cw; overlay.height = ch;
    ops = []; redoStack = []; pending = null; drag = null; hover = null;
    fileBase = String(name || 'image').replace(/\.[^.]+$/, '') || 'image';
    drop.hidden = true; editor.hidden = false;
    $('mz-info').textContent = cw + ' × ' + ch + ' px' + (scale < 1 ? ' (ย่อจาก ' + w + ' × ' + h + ' px เพื่อให้ประมวลผลลื่นไหล)' : '');
    showMsg('');
    needMain = true; needOv = true;
    frame();
  }
  function loadFile(file) {
    if (!file) { return; }
    if (file.type && file.type.indexOf('image/') !== 0) { showMsg('ไฟล์นี้ไม่ใช่รูปภาพ', true); return; }
    var url = URL.createObjectURL(file);
    var img = new Image();
    img.onload = function () { URL.revokeObjectURL(url); setImage(img, file.name); };
    img.onerror = function () {
      URL.revokeObjectURL(url);
      showMsg('เปิดไฟล์นี้ไม่ได้ หากเป็น HEIC ให้แปลงเป็น JPG ก่อน หรือใช้เบราว์เซอร์ที่รองรับ', true);
    };
    img.src = url;
  }
  function clearImage() {
    orig = null; committed = null; cctx = null;
    ops = []; redoStack = []; pending = null; drag = null; hover = null;
    editor.hidden = true; drop.hidden = false;
    showMsg('');
  }
  /* ---------- UI state ---------- */
  function syncPending() {
    if (!pending) { return; }
    pending.mode = state.mode; pending.strength = state.strength; pending.color = state.color;
    schedule(true);
  }
  function setMode(m) {
    state.mode = m;
    each(document.querySelectorAll('#mz-app [data-mode]'), function (b) {
      b.setAttribute('aria-pressed', b.getAttribute('data-mode') === m ? 'true' : 'false');
    });
    $('mz-color-grp').hidden = (m !== 'solid');
    syncPending();
  }
  function setTool(t) {
    state.tool = t;
    each(document.querySelectorAll('#mz-app [data-tool]'), function (b) {
      b.setAttribute('aria-pressed', b.getAttribute('data-tool') === t ? 'true' : 'false');
    });
    $('mz-brush-grp').hidden = (t !== 'brush');
    if (orig) { schedule(false); }
  }
  function setStrength(v) {
    state.strength = v;
    $('mz-strength').value = String(v);
    $('mz-strength-v').textContent = String(v);
    syncPending();
  }
  function undo() {
    if (!orig || drag) { return; }
    if (pending) { pending = null; schedule(true); return; }
    if (!ops.length) { return; }
    redoStack.push(ops.pop());
    rebuildCommitted();
    schedule(true);
  }
  function redo() {
    if (!orig || drag || pending || !redoStack.length) { return; }
    var op = redoStack.pop();
    ops.push(op);
    applyOp(cctx, op);
    schedule(true);
  }
  /* ---------- pointer drawing ---------- */
  function toImg(e) {
    var rect = overlay.getBoundingClientRect();
    return {
      x: (e.clientX - rect.left) * canvas.width / Math.max(1, rect.width),
      y: (e.clientY - rect.top) * canvas.height / Math.max(1, rect.height)
    };
  }
  function addBrushPoint(p) {
    var pts = drag.points, last = pts[pts.length - 1];
    var dx = p.x - last[0], dy = p.y - last[1], dist = Math.sqrt(dx * dx + dy * dy);
    var step = Math.max(1, drag.r / 2);
    if (dist < step) { return; }
    var n = Math.ceil(dist / step);
    for (var k = 1; k <= n; k++) { pts.push([last[0] + dx * k / n, last[1] + dy * k / n]); }
  }
  overlay.addEventListener('pointerdown', function (e) {
    if (!orig || (e.pointerType === 'mouse' && e.button !== 0)) { return; }
    e.preventDefault();
    try { overlay.setPointerCapture(e.pointerId); } catch (err) { /* ignore */ }
    commitPending();
    var p = toImg(e);
    if (state.tool === 'brush') { drag = { brush: true, r: brushRadius(state.brush), points: [[p.x, p.y]] }; }
    else { drag = { x0: p.x, y0: p.y, x1: p.x, y1: p.y }; }
    schedule(true);
  });
  overlay.addEventListener('pointermove', function (e) {
    if (!orig) { return; }
    var p = toImg(e);
    hover = p;
    if (drag) {
      if (drag.brush) { addBrushPoint(p); }
      else { drag.x1 = p.x; drag.y1 = p.y; }
    }
    schedule(false);
  });
  function endDrag(e) {
    if (!drag) { return; }
    var d = drag;
    drag = null;
    try { overlay.releasePointerCapture(e.pointerId); } catch (err) { /* ignore */ }
    if (d.brush) {
      var bop = makeOp('brush');
      bop.r = d.r; bop.points = d.points;
      applyOp(cctx, bop);
      ops.push(bop);
      redoStack = [];
    } else if (Math.abs(d.x1 - d.x0) >= 3 && Math.abs(d.y1 - d.y0) >= 3) {
      pending = makeOp(state.tool);
      pending.x0 = d.x0; pending.y0 = d.y0; pending.x1 = d.x1; pending.y1 = d.y1;
      redoStack = [];
    }
    schedule(true);
  }
  overlay.addEventListener('pointerup', endDrag);
  overlay.addEventListener('pointercancel', function () { drag = null; schedule(true); });
  overlay.addEventListener('pointerleave', function () { hover = null; schedule(false); });
  /* ---------- export ---------- */
  function download() {
    if (!orig) { return; }
    var fmt = $('mz-format').value;
    var q = parseInt($('mz-quality').value, 10) / 100;
    var out = canvas;
    if (fmt === 'image/jpeg') {
      out = document.createElement('canvas');
      out.width = canvas.width; out.height = canvas.height;
      var oc = out.getContext('2d');
      oc.fillStyle = '#ffffff';
      oc.fillRect(0, 0, out.width, out.height);
      oc.drawImage(canvas, 0, 0);
    }
    out.toBlob(function (blob) {
      if (!blob) { showMsg('สร้างไฟล์ไม่สำเร็จ ลองเปลี่ยนรูปแบบไฟล์', true); return; }
      var ext = blob.type === 'image/jpeg' ? 'jpg' : (blob.type === 'image/webp' ? 'webp' : 'png');
      var a = document.createElement('a');
      var url = URL.createObjectURL(blob);
      a.href = url;
      a.download = fileBase + '-mosaic.' + ext;
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(url); }, 2000);
      showMsg('บันทึกรูปภาพแล้ว');
    }, fmt, q);
  }
  function copyImage() {
    if (!orig) { return; }
    if (!navigator.clipboard || !window.ClipboardItem) {
      showMsg('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูปภาพ กรุณาใช้ปุ่มดาวน์โหลดแทน', true);
      return;
    }
    canvas.toBlob(function (blob) {
      if (!blob) { showMsg('คัดลอกรูปภาพไม่สำเร็จ', true); return; }
      navigator.clipboard.write([new ClipboardItem({ 'image/png': blob })]).then(
        function () { showMsg('คัดลอกรูปภาพแล้ว'); },
        function () { showMsg('คัดลอกรูปภาพไม่สำเร็จ กรุณาใช้ปุ่มดาวน์โหลดแทน', true); }
      );
    }, 'image/png');
  }
  /* ---------- wiring ---------- */
  drop.addEventListener('click', function () { fileInput.click(); });
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileInput.click(); }
  });
  fileInput.addEventListener('change', function () {
    var f = fileInput.files && fileInput.files[0];
    loadFile(f);
    fileInput.value = '';
  });
  each(['dragenter', 'dragover'], function (ev) {
    app.addEventListener(ev, function (e) { e.preventDefault(); app.classList.add('mz-over'); });
  });
  each(['dragleave', 'drop'], function (ev) {
    app.addEventListener(ev, function () { app.classList.remove('mz-over'); });
  });
  app.addEventListener('drop', function (e) {
    e.preventDefault();
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    loadFile(f);
  });
  document.addEventListener('paste', function (e) {
    var items = e.clipboardData && e.clipboardData.items;
    if (!items) { return; }
    for (var i = 0; i < items.length; i++) {
      if (items[i].type && items[i].type.indexOf('image/') === 0) {
        var f = items[i].getAsFile();
        if (f) { e.preventDefault(); loadFile(f); }
        return;
      }
    }
  });
  document.addEventListener('keydown', function (e) {
    if (!orig || editor.hidden) { return; }
    var t = e.target;
    if (t && (t.tagName === 'TEXTAREA' || (t.tagName === 'INPUT' && (t.type === 'text' || t.type === 'search')))) { return; }
    var mod = e.ctrlKey || e.metaKey, k = String(e.key || '').toLowerCase();
    if (mod && k === 'z' && !e.shiftKey) { e.preventDefault(); undo(); }
    else if (mod && (k === 'y' || (k === 'z' && e.shiftKey))) { e.preventDefault(); redo(); }
    else if (k === 'escape' && pending) { pending = null; schedule(true); }
  });
  each(document.querySelectorAll('#mz-app [data-mode]'), function (b) {
    b.addEventListener('click', function () { setMode(b.getAttribute('data-mode')); });
  });
  each(document.querySelectorAll('#mz-app [data-tool]'), function (b) {
    b.addEventListener('click', function () { setTool(b.getAttribute('data-tool')); });
  });
  each(document.querySelectorAll('#mz-app [data-preset]'), function (b) {
    b.addEventListener('click', function () {
      var p = PRESETS[b.getAttribute('data-preset')];
      if (!p) { return; }
      state.strength = p.strength;
      $('mz-strength').value = String(p.strength);
      $('mz-strength-v').textContent = String(p.strength);
      setTool(p.tool);
      setMode(p.mode);
    });
  });
  $('mz-strength').addEventListener('input', function () { setStrength(parseInt(this.value, 10)); });
  $('mz-brush').addEventListener('input', function () {
    state.brush = parseInt(this.value, 10);
    $('mz-brush-v').textContent = String(state.brush);
    if (orig) { schedule(false); }
  });
  $('mz-color').addEventListener('input', function () { state.color = this.value; syncPending(); });
  $('mz-format').addEventListener('change', function () { $('mz-q-grp').hidden = (this.value === 'image/png'); });
  $('mz-quality').addEventListener('input', function () { $('mz-quality-v').textContent = this.value; });
  $('mz-apply').addEventListener('click', function () { commitPending(); schedule(true); });
  $('mz-all').addEventListener('click', function () {
    if (!orig) { return; }
    commitPending();
    var op = makeOp('all');
    applyOp(cctx, op);
    ops.push(op);
    redoStack = [];
    schedule(true);
  });
  $('mz-undo').addEventListener('click', undo);
  $('mz-redo').addEventListener('click', redo);
  $('mz-reset').addEventListener('click', function () {
    if (!orig) { return; }
    ops = []; redoStack = []; pending = null;
    rebuildCommitted();
    schedule(true);
  });
  $('mz-change').addEventListener('click', function () { fileInput.click(); });
  $('mz-clear').addEventListener('click', clearImage);
  $('mz-download').addEventListener('click', download);
  $('mz-copy').addEventListener('click', copyImage);
})();
</script>

## วิธีใส่โมเสกรูปภาพออนไลน์ ทีละขั้นตอน

1. **เลือกรูปภาพ** ลากไฟล์มาวางในกรอบด้านบน กดที่กรอบเพื่อเลือกไฟล์ หรือกด `Ctrl+V` (`⌘+V` บน Mac) เพื่อวางรูปจากคลิปบอร์ด รองรับ JPG, PNG, WebP และ GIF
2. **เลือกตั้งค่าด่วน (ถ้าต้องการ)** กดปุ่ม ใบหน้า, ป้ายทะเบียน, บัตร/เอกสาร หรือ แชต/ข้อความ เครื่องมือจะเลือกเอฟเฟกต์ รูปแบบพื้นที่ และความเข้มที่เหมาะสมให้ทันที
3. **เลือกเอฟเฟกต์** พิกเซล, เบลอ หรือบล็อกทึบ ตามระดับความปลอดภัยที่ต้องการ
4. **เลือกรูปแบบพื้นที่** สี่เหลี่ยม, วงรี หรือแปรง
5. **ปรับความเข้ม** เลื่อนแถบความเข้มไปทางขวาเพื่อให้โมเสกหยาบและปิดบังรายละเอียดมากขึ้น หากเลือกบล็อกทึบ ให้เลือกสีของบล็อกได้
6. **ลากบนรูปภาพ** แบบสี่เหลี่ยมและวงรี ให้ลากจากมุมหนึ่งไปอีกมุมหนึ่งแล้วปล่อย ผลลัพธ์จะแสดงทันที แบบแปรง ให้ลากทาทับบริเวณที่ต้องการปิดบัง
7. **นำไปใช้และเพิ่มพื้นที่อื่น** กด นำไปใช้ เพื่อล็อกพื้นที่ หรือเริ่มลากพื้นที่ใหม่ ระบบจะล็อกพื้นที่ก่อนหน้าให้อัตโนมัติ หากต้องการปิดบังทั้งรูป ให้กด ทั้งภาพ
8. **ตรวจและแก้ไข** กด เลิกทำ (`Ctrl+Z`) หรือ ทำซ้ำ (`Ctrl+Y`) ได้ กด `Esc` เพื่อยกเลิกพื้นที่ที่ยังไม่ได้นำไปใช้ หรือกด รีเซ็ต เพื่อเริ่มใหม่จากรูปต้นฉบับ
9. **บันทึกผลลัพธ์** เลือกรูปแบบไฟล์ (PNG, JPG หรือ WebP) แล้วกด ดาวน์โหลด หรือ คัดลอกรูปภาพ เพื่อนำไปวางในแชตหรือเอกสาร

> หมายเหตุ: ไฟล์ HEIC จะเปิดได้เมื่อเบราว์เซอร์รองรับ (เช่น Safari) หากเปิดไม่ได้ ให้แปลงเป็น JPG ก่อน

## อธิบายคำศัพท์และฟังก์ชันในเครื่องมือ

- **โมเสก (Mosaic)** การทำให้บางส่วนของรูปไม่ชัดเพื่อซ่อนข้อมูล เช่น ใบหน้า ป้ายทะเบียน หรือเลขบัตร
- **พิกเซล (Pixelate)** แทนที่รายละเอียดด้วยบล็อกสี่เหลี่ยมสีเดียว เป็นรูปแบบโมเสกที่คุ้นเคยจากทีวีและโซเชียลมีเดีย
- **เบลอ (Blur)** ทำให้ภาพพร่ามัวและนุ่มนวล เหมาะกับงานที่ต้องการความเนียน
- **บล็อกทึบ (Solid block)** ปิดทับด้วยสีเดียวแบบทึบ ซ่อนข้อมูลได้มิดชิดที่สุด เหมาะกับข้อมูลสำคัญ
- **ความเข้ม (Strength)** ระดับความแรงของเอฟเฟกต์ ยิ่งสูง บล็อกพิกเซลยิ่งใหญ่ หรือภาพยิ่งเบลอมาก
- **ตั้งค่าด่วน (Preset)** ชุดค่าที่ตั้งไว้ล่วงหน้าสำหรับงานที่พบบ่อย เช่น ใบหน้า ป้ายทะเบียน เอกสาร และแชต
- **พื้นที่ (Region)** ส่วนของรูปที่ต้องการใส่เอฟเฟกต์ มีให้เลือกแบบสี่เหลี่ยม วงรี และแปรง
- **แปรง (Brush)** เครื่องมือลากทาทับบริเวณที่ต้องการ เหมาะกับรูปทรงที่ไม่เป็นสี่เหลี่ยมหรือวงรี เช่น เส้นผมหรือขอบวัตถุ
- **ขนาดแปรง** ความกว้างของแปรงที่ใช้ทาทับ
- **นำไปใช้ (Apply)** ล็อกพื้นที่ที่เลือกให้เป็นส่วนหนึ่งของรูปภาพ
- **ทั้งภาพ (Whole image)** ใส่เอฟเฟกต์กับรูปทั้งรูปในครั้งเดียว
- **เลิกทำ / ทำซ้ำ (Undo / Redo)** ย้อนกลับหรือทำซ้ำขั้นตอนล่าสุด
- **รีเซ็ต (Reset)** ล้างเอฟเฟกต์ทั้งหมดและกลับไปใช้รูปต้นฉบับ
- **รูปแบบไฟล์ (PNG / JPG / WebP)** PNG คมชัดและคงพื้นหลังโปร่งใส JPG ไฟล์เล็กและใช้ได้ทั่วไป WebP ไฟล์เล็กและคุณภาพดี
- **คุณภาพ (Quality)** ระดับการบีบอัดของ JPG และ WebP ค่าสูงให้ภาพคมชัดแต่ไฟล์ใหญ่ขึ้น
- **EXIF** ข้อมูลที่ฝังมากับรูปถ่าย เช่น รุ่นกล้อง เวลาถ่าย และพิกัด GPS รูปที่บันทึกจากเครื่องมือนี้เป็นไฟล์ใหม่ จึงไม่ติดข้อมูล EXIF จากต้นฉบับไปด้วย
- **ประมวลผลในเบราว์เซอร์** ทุกขั้นตอนเกิดขึ้นบนอุปกรณ์ของคุณ รูปภาพไม่ถูกส่งขึ้นเซิร์ฟเวอร์

## เลือกเอฟเฟกต์แบบไหนดี

- **ใบหน้าและป้ายทะเบียนในรูปทั่วไป** ใช้ พิกเซล หรือ เบลอ ก็เพียงพอ ควรตั้งความเข้มให้สูงพอที่จะมองไม่ออกว่าเป็นใคร
- **บัตรประชาชน เลขบัญชี รหัสผ่าน หรือข้อมูลที่ห้ามรั่วไหล** แนะนำ บล็อกทึบ เพราะพิกเซลหรือเบลอที่เบาเกินไปอาจถูกวิเคราะห์ย้อนกลับเพื่อเดาข้อมูลเดิมได้
- **ต้องการให้ผู้ชมรู้ว่ามีการปิดบังโดยเจตนา** พิกเซลเป็นรูปแบบที่คนเข้าใจได้ทันที