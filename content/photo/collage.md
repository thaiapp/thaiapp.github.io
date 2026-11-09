---
title: รวมรูป คอลลาจออนไลน์ ฟรี
h1: รวมรูป คอลลาจออนไลน์
description: รวมรูป คอลลาจออนไลน์ฟรี เลือกเทมเพลต 2-9 ช่องหรือสร้างตารางเอง ปรับช่องว่าง มุมมน สัดส่วน และสีพื้นหลัง รองรับ JPG, PNG ดาวน์โหลดได้เลย ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-09T09:00:00+07:00'
weight: 93
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- รวมรูป คอลลาจออนไลน์
- รูปภาพ
---

<style>
.cl-app{--cl-bg:#fff;--cl-fg:#1f2937;--cl-mut:#6b7280;--cl-bd:#d1d5db;--cl-ac:#2563eb;--cl-sf:#f3f4f6;--cl-acf:#fff;max-width:760px;margin:0 auto 24px;color:var(--cl-fg);font-size:15px;line-height:1.5}
@media (prefers-color-scheme:dark){.cl-app{--cl-bg:#111827;--cl-fg:#e5e7eb;--cl-mut:#9ca3af;--cl-bd:#374151;--cl-ac:#60a5fa;--cl-sf:#1f2937;--cl-acf:#0b1220}}
.cl-app *{box-sizing:border-box}
.cl-drop{display:flex;flex-wrap:wrap;align-items:center;gap:10px;padding:14px;border:2px dashed var(--cl-bd);border-radius:12px;background:var(--cl-sf);margin-bottom:12px}
.cl-drop.cl-over{border-color:var(--cl-ac)}
.cl-drop small{color:var(--cl-mut)}
.cl-row{display:flex;flex-wrap:wrap;align-items:center;gap:8px 12px;margin:10px 0}
.cl-lbl{min-width:84px;font-weight:600}
.cl-tpls{display:flex;flex-wrap:wrap;gap:6px}
.cl-tpl{position:relative;width:40px;height:40px;padding:0;border:2px solid var(--cl-bd);border-radius:8px;background:var(--cl-bg);cursor:pointer}
.cl-tpl.cl-on{border-color:var(--cl-ac)}
.cl-tpl i{position:absolute;background:var(--cl-mut);border-radius:1px}
.cl-tpl.cl-on i{background:var(--cl-ac)}
.cl-app button,.cl-app select,.cl-app input[type=number]{font:inherit;color:var(--cl-fg)}
.cl-btn{padding:6px 12px;border:1px solid var(--cl-bd);border-radius:8px;background:var(--cl-bg);cursor:pointer}
.cl-btn:hover:not(:disabled){border-color:var(--cl-ac)}
.cl-btn:disabled{opacity:.4;cursor:not-allowed}
.cl-btn.cl-pri{background:var(--cl-ac);border-color:var(--cl-ac);color:var(--cl-acf);font-weight:600}
.cl-btn.cl-on{border-color:var(--cl-ac);background:var(--cl-ac);color:var(--cl-acf)}
.cl-app input[type=number],.cl-app select{padding:5px 8px;border:1px solid var(--cl-bd);border-radius:8px;background:var(--cl-bg)}
.cl-app input[type=number]{width:64px}
.cl-app input[type=color]{width:40px;height:32px;padding:0;border:1px solid var(--cl-bd);border-radius:8px;background:none;cursor:pointer}
.cl-app input[type=range]{width:150px}
.cl-stage{margin:12px 0;padding:10px;border:1px solid var(--cl-bd);border-radius:12px;background:var(--cl-sf)}
.cl-stage canvas{display:block;margin:0 auto;max-width:100%;max-height:70vh;width:auto;height:auto;touch-action:none;cursor:grab;border-radius:6px;background:#fff}
.cl-bar{display:flex;flex-wrap:wrap;align-items:center;justify-content:center;gap:8px;margin-top:10px}
.cl-msg{min-height:22px;text-align:center;color:var(--cl-mut);font-size:14px}
.cl-hint{color:var(--cl-mut);font-size:13px}
</style>
<div class="cl-app" id="cl-app">
<div class="cl-drop" id="cl-drop">
<span aria-hidden="true">📁</span>
<button type="button" class="cl-btn cl-pri" id="cl-pick">เลือกรูป…</button>
<small>ลากรูปมาที่นี่ หรือ <code>Ctrl</code>+<code>V</code> เพื่อวาง · กด <code>Ctrl</code> ค้างเพื่อเลือกหลายไฟล์</small>
</div>
<input type="file" id="cl-file" accept="image/*,.heic,.heif" multiple hidden>
<div class="cl-row"><span class="cl-lbl">เทมเพลต</span><div class="cl-tpls" id="cl-tpls"></div></div>
<div class="cl-row"><span class="cl-lbl">ตารางเอง</span><input type="number" id="cl-cols" min="1" max="10" value="2" aria-label="จำนวนคอลัมน์"> × <input type="number" id="cl-rows" min="1" max="10" value="2" aria-label="จำนวนแถว"> <button type="button" class="cl-btn" id="cl-grid">ใช้ตาราง</button> <span class="cl-hint">สูงสุด 10×10</span></div>
<div class="cl-row"><span class="cl-lbl">ช่องว่าง <b id="cl-gapv">2</b>%</span><input type="range" id="cl-gap" min="0" max="10" step="0.5" value="2"><span class="cl-lbl">มุมมน <b id="cl-radv">0</b>%</span><input type="range" id="cl-rad" min="0" max="50" step="1" value="0"></div>
<div class="cl-row"><span class="cl-lbl">สัดส่วน</span><div class="cl-tpls" id="cl-ratios"></div></div>
<div class="cl-row"><span class="cl-lbl">สีพื้นหลัง</span><input type="color" id="cl-bg" value="#ffffff" aria-label="สีพื้นหลัง"><button type="button" class="cl-btn" id="cl-rnd" title="สุ่มสี">↻</button></div>
<div class="cl-stage"><canvas id="cl-canvas" width="1000" height="1000" aria-label="ตัวอย่างคอลลาจ"></canvas>
<div class="cl-bar"><button type="button" class="cl-btn" id="cl-prev" title="สลับไปช่องก่อนหน้า" disabled>⬅</button><span id="cl-count">-/4</span><button type="button" class="cl-btn" id="cl-next" title="สลับไปช่องถัดไป" disabled>⮕</button><button type="button" class="cl-btn" id="cl-zout" title="ซูมออก" disabled>−</button><button type="button" class="cl-btn" id="cl-zin" title="ซูมเข้า" disabled>+</button><button type="button" class="cl-btn" id="cl-del" title="ลบรูปในช่องนี้" disabled>🗑</button></div></div>
<div class="cl-bar"><button type="button" class="cl-btn" id="cl-add">+ เพิ่มรูป</button><button type="button" class="cl-btn" id="cl-clear">ล้าง</button><span class="cl-hint" id="cl-total">รูปทั้งหมด 0 รูป</span></div>
<div class="cl-row" style="justify-content:center"><select id="cl-out" aria-label="ขนาดเอาต์พุต"><option value="auto">อัตโนมัติ</option><option value="1200">1200px</option><option value="2000">2000px</option><option value="3000">3000px</option><option value="4000">4000px</option></select><select id="cl-fmt" aria-label="รูปแบบไฟล์"><option value="jpeg">JPEG</option><option value="png">PNG</option></select><span class="cl-hint" id="cl-info">1000 × 1000px</span></div>
<div class="cl-bar"><button type="button" class="cl-btn cl-pri" id="cl-dl">ดาวน์โหลด</button><button type="button" class="cl-btn" id="cl-copy">คัดลอกรูป</button></div>
<div class="cl-msg" id="cl-msg" role="status" aria-live="polite"></div>
</div>

<script>
(function () {
  'use strict';
  function $(id) { return document.getElementById(id); }
  function clamp(v, a, b) { return Math.max(a, Math.min(b, v)); }
  function G(c, r) {
    var a = [], x, y;
    for (y = 0; y < r; y++) { for (x = 0; x < c; x++) { a.push([x, y, 1, 1]); } }
    return { cols: c, rows: r, cells: a };
  }
  function M(c, r, a) { return { cols: c, rows: r, cells: a }; }
  var TPL = [
    G(2, 1), G(1, 2),
    G(3, 1), G(1, 3),
    M(2, 2, [[0, 0, 1, 2], [1, 0, 1, 1], [1, 1, 1, 1]]),
    M(2, 2, [[0, 0, 2, 1], [0, 1, 1, 1], [1, 1, 1, 1]]),
    G(2, 2), G(4, 1),
    M(6, 2, [[0, 0, 2, 1], [2, 0, 2, 1], [4, 0, 2, 1], [0, 1, 3, 1], [3, 1, 3, 1]]),
    G(3, 2), G(2, 3),
    M(12, 2, [[0, 0, 3, 1], [3, 0, 3, 1], [6, 0, 3, 1], [9, 0, 3, 1], [0, 1, 4, 1], [4, 1, 4, 1], [8, 1, 4, 1]]),
    G(4, 2), G(3, 3)
  ];
  var RATIOS = ['1:1', '4:5', '9:16', '16:9', '3:2', '2:3'];
  var S = { layout: TPL[6], tpl: 6, items: [], sel: -1, gap: 2, radius: 0, ratio: '1:1', bg: '#ffffff', out: 'auto', fmt: 'jpeg' };
  var cv = $('cl-canvas');
  var ctx = cv.getContext('2d');
  var fileInput = $('cl-file');
  var msgTimer = null;
  function toast(t) {
    var el = $('cl-msg');
    el.textContent = t;
    clearTimeout(msgTimer);
    msgTimer = setTimeout(function () { el.textContent = ''; }, 3500);
  }
  function ratioParts() {
    var p = S.ratio.split(':');
    return [+p[0], +p[1]];
  }
  function gapPx(W, H) {
    var L = S.layout;
    var g = Math.min(W, H) * S.gap / 100;
    return Math.min(g, W / (L.cols + 1) * 0.5, H / (L.rows + 1) * 0.5);
  }
  function rects(W, H) {
    var L = S.layout, gp = gapPx(W, H);
    var uw = (W - gp * (L.cols + 1)) / L.cols;
    var uh = (H - gp * (L.rows + 1)) / L.rows;
    return L.cells.map(function (c) {
      return {
        x: gp + c[0] * (uw + gp),
        y: gp + c[1] * (uh + gp),
        w: c[2] * uw + (c[2] - 1) * gp,
        h: c[3] * uh + (c[3] - 1) * gp
      };
    });
  }
  function rr(c, x, y, w, h, r) {
    c.beginPath();
    c.moveTo(x + r, y);
    c.arcTo(x + w, y, x + w, y + h, r);
    c.arcTo(x + w, y + h, x, y + h, r);
    c.arcTo(x, y + h, x, y, r);
    c.arcTo(x, y, x + w, y, r);
    c.closePath();
  }
  function draw(c, W, H, preview) {
    c.imageSmoothingEnabled = true;
    c.imageSmoothingQuality = 'high';
    c.fillStyle = S.bg;
    c.fillRect(0, 0, W, H);
    var R = rects(W, H);
    R.forEach(function (r, i) {
      var it = S.items[i];
      var m = Math.min(r.w, r.h);
      var rad = Math.min(S.radius / 100 * m, m / 2);
      c.save();
      rr(c, r.x, r.y, r.w, r.h, rad);
      if (it) {
        c.clip();
        var base = Math.max(r.w / it.w, r.h / it.h);
        var s = base * it.zoom, dw = it.w * s, dh = it.h * s;
        var mx = Math.max(0, (dw - r.w) / 2), my = Math.max(0, (dh - r.h) / 2);
        var ox = clamp(it.ox * r.w, -mx, mx), oy = clamp(it.oy * r.h, -my, my);
        if (preview) { it.ox = ox / r.w; it.oy = oy / r.h; }
        c.drawImage(it.bmp, r.x + r.w / 2 + ox - dw / 2, r.y + r.h / 2 + oy - dh / 2, dw, dh);
      } else if (preview) {
        c.fillStyle = 'rgba(128,128,128,0.18)';
        c.fill();
        c.strokeStyle = 'rgba(128,128,128,0.7)';
        c.lineWidth = Math.max(2, W / 300);
        var cx = r.x + r.w / 2, cy = r.y + r.h / 2, k = Math.min(r.w, r.h) * 0.12;
        c.beginPath();
        c.moveTo(cx - k, cy); c.lineTo(cx + k, cy);
        c.moveTo(cx, cy - k); c.lineTo(cx, cy + k);
        c.stroke();
      }
      c.restore();
    });
    if (preview && S.sel >= 0 && S.sel < R.length) {
      var q = R[S.sel];
      var mm = Math.min(q.w, q.h);
      c.save();
      rr(c, q.x, q.y, q.w, q.h, Math.min(S.radius / 100 * mm, mm / 2));
      c.strokeStyle = '#2563eb';
      c.lineWidth = Math.max(3, W / 250);
      c.stroke();
      c.restore();
    }
  }
  function exportDims() {
    var p = ratioParts(), W;
    if (S.out === 'auto') {
      var mx = 0;
      S.items.forEach(function (it) { mx = Math.max(mx, it.w); });
      var vis = Math.min(S.items.length, S.layout.cells.length) || 1;
      W = clamp(mx * Math.ceil(Math.sqrt(vis)), 1200, 4000);
    } else {
      W = +S.out;
    }
    var H = Math.round(W * p[1] / p[0]);
    var maxArea = 16000000;
    if (W * H > maxArea) {
      var k = Math.sqrt(maxArea / (W * H));
      W = Math.floor(W * k);
      H = Math.floor(H * k);
    }
    return [W, H];
  }
  function updateUI() {
    var n = S.layout.cells.length;
    if (S.sel >= n) { S.sel = -1; }
    var has = S.sel >= 0 && S.sel < S.items.length;
    $('cl-count').textContent = (S.sel >= 0 ? (S.sel + 1) : '-') + '/' + n;
    ['cl-prev', 'cl-next', 'cl-zin', 'cl-zout', 'cl-del'].forEach(function (id) { $(id).disabled = !has; });
    $('cl-total').textContent = 'รูปทั้งหมด ' + S.items.length + ' รูป (แสดง ' + Math.min(S.items.length, n) + ' ช่อง)';
    var d = exportDims();
    $('cl-info').textContent = d[0] + ' × ' + d[1] + 'px';
    var on = document.querySelectorAll('#cl-tpls .cl-tpl');
    for (var i = 0; i < on.length; i++) {
      if (i === S.tpl) { on[i].classList.add('cl-on'); } else { on[i].classList.remove('cl-on'); }
    }
  }
  function render() {
    draw(ctx, cv.width, cv.height, true);
    updateUI();
  }
  function setRatio(r) {
    S.ratio = r;
    var p = ratioParts();
    cv.width = 1000;
    cv.height = Math.round(1000 * p[1] / p[0]);
    var b = document.querySelectorAll('#cl-ratios .cl-btn');
    for (var i = 0; i < b.length; i++) {
      if (b[i].getAttribute('data-r') === r) { b[i].classList.add('cl-on'); } else { b[i].classList.remove('cl-on'); }
    }
    render();
  }
  function buildTemplates() {
    var box = $('cl-tpls');
    TPL.forEach(function (t, idx) {
      var b = document.createElement('button');
      b.type = 'button';
      b.className = 'cl-tpl';
      b.title = t.cells.length + ' ช่อง';
      b.setAttribute('aria-label', 'เทมเพลต ' + t.cells.length + ' ช่อง');
      t.cells.forEach(function (c) {
        var i = document.createElement('i');
        i.style.left = 'calc(' + (c[0] / t.cols * 100) + '% + 3px)';
        i.style.top = 'calc(' + (c[1] / t.rows * 100) + '% + 3px)';
        i.style.width = 'calc(' + (c[2] / t.cols * 100) + '% - 3px)';
        i.style.height = 'calc(' + (c[3] / t.rows * 100) + '% - 3px)';
        b.appendChild(i);
      });
      b.addEventListener('click', function () {
        S.layout = TPL[idx];
        S.tpl = idx;
        $('cl-cols').value = t.cols > 10 ? 4 : t.cols;
        $('cl-rows').value = t.rows;
        render();
      });
      box.appendChild(b);
    });
    var rb = $('cl-ratios');
    RATIOS.forEach(function (r) {
      var b = document.createElement('button');
      b.type = 'button';
      b.className = 'cl-btn';
      b.textContent = r;
      b.setAttribute('data-r', r);
      b.addEventListener('click', function () { setRatio(r); });
      rb.appendChild(b);
    });
  }
  function loadFile(file) {
    return new Promise(function (resolve, reject) {
      function viaImg() {
        var u = URL.createObjectURL(file);
        var im = new Image();
        im.onload = function () {
          if (!im.naturalWidth || !im.naturalHeight) { reject(new Error('empty')); return; }
          resolve({ bmp: im, w: im.naturalWidth, h: im.naturalHeight });
        };
        im.onerror = function () { URL.revokeObjectURL(u); reject(new Error('decode')); };
        im.src = u;
      }
      if (window.createImageBitmap) {
        createImageBitmap(file).then(function (b) {
          if (!b.width || !b.height) { viaImg(); return; }
          resolve({ bmp: b, w: b.width, h: b.height });
        }).catch(viaImg);
      } else {
        viaImg();
      }
    });
  }
  function isImage(f) {
    return (f.type && f.type.indexOf('image/') === 0) || /\.(heic|heif|jpe?g|png|webp|gif|bmp|avif)$/i.test(f.name || '');
  }
  function addFiles(list) {
    var files = Array.prototype.slice.call(list || []).filter(isImage);
    if (!files.length) { toast('ไม่พบไฟล์รูปภาพ'); return; }
    var failed = 0, chain = Promise.resolve();
    files.forEach(function (f) {
      chain = chain.then(function () {
        if (S.items.length >= 100) { return null; }
        return loadFile(f).then(function (o) {
          S.items.push({ bmp: o.bmp, w: o.w, h: o.h, zoom: 1, ox: 0, oy: 0 });
        }).catch(function () { failed++; });
      });
    });
    chain.then(function () {
      if (failed) { toast('เปิดรูปไม่ได้ ' + failed + ' ไฟล์ (เบราว์เซอร์อาจไม่รองรับรูปแบบนี้ เช่น HEIC)'); }
      render();
    });
  }
  function pt(e) {
    var r = cv.getBoundingClientRect();
    return { x: (e.clientX - r.left) * cv.width / r.width, y: (e.clientY - r.top) * cv.height / r.height, k: cv.width / r.width };
  }
  function hit(x, y) {
    var R = rects(cv.width, cv.height), i;
    for (i = 0; i < R.length; i++) {
      if (x >= R[i].x && x <= R[i].x + R[i].w && y >= R[i].y && y <= R[i].y + R[i].h) { return i; }
    }
    return -1;
  }
  var ptrs = {}, drag = null, pinch = null;
  function ptrCount() { return Object.keys(ptrs).length; }
  function ptrDist() {
    var k = Object.keys(ptrs);
    var a = ptrs[k[0]], b = ptrs[k[1]];
    return Math.sqrt((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y)) || 1;
  }
  cv.addEventListener('pointerdown', function (e) {
    try { cv.setPointerCapture(e.pointerId); } catch (err) { /* ignore */ }
    ptrs[e.pointerId] = { x: e.clientX, y: e.clientY };
    if (ptrCount() === 1) {
      var p = pt(e), i = hit(p.x, p.y);
      S.sel = i;
      drag = { i: i, moved: false, sx: e.clientX, sy: e.clientY };
      render();
    } else if (ptrCount() === 2 && S.items[S.sel]) {
      pinch = { d: ptrDist(), z: S.items[S.sel].zoom };
      if (drag) { drag.moved = true; }
    }
  });
  cv.addEventListener('pointermove', function (e) {
    var prev = ptrs[e.pointerId];
    if (!prev) { return; }
    var dx = e.clientX - prev.x, dy = e.clientY - prev.y;
    ptrs[e.pointerId] = { x: e.clientX, y: e.clientY };
    var it = S.items[S.sel];
    if (!it) { return; }
    if (ptrCount() === 2 && pinch) {
      it.zoom = clamp(pinch.z * ptrDist() / pinch.d, 1, 8);
      render();
      return;
    }
    if (drag && ptrCount() === 1) {
      if (Math.abs(e.clientX - drag.sx) + Math.abs(e.clientY - drag.sy) > 4) { drag.moved = true; }
      var R = rects(cv.width, cv.height)[S.sel];
      var k = pt(e).k;
      if (R) {
        it.ox += dx * k / R.w;
        it.oy += dy * k / R.h;
        render();
      }
    }
  });
  function endPtr(e) {
    delete ptrs[e.pointerId];
    if (ptrCount() < 2) { pinch = null; }
    if (ptrCount() === 0) {
      if (drag && !drag.moved && drag.i >= 0 && !S.items[drag.i] && e.type === 'pointerup') { fileInput.click(); }
      drag = null;
    }
  }
  cv.addEventListener('pointerup', endPtr);
  cv.addEventListener('pointercancel', endPtr);
  cv.addEventListener('wheel', function (e) {
    var p = pt(e), i = hit(p.x, p.y);
    if (i < 0 || !S.items[i]) { return; }
    e.preventDefault();
    S.sel = i;
    S.items[i].zoom = clamp(S.items[i].zoom * (e.deltaY < 0 ? 1.1 : 1 / 1.1), 1, 8);
    render();
  }, { passive: false });
  cv.addEventListener('dblclick', function (e) {
    var p = pt(e), i = hit(p.x, p.y);
    if (i >= 0 && S.items[i]) {
      S.items[i].zoom = 1; S.items[i].ox = 0; S.items[i].oy = 0;
      render();
    }
  });
  function zoomSel(f) {
    var it = S.items[S.sel];
    if (!it) { return; }
    it.zoom = clamp(it.zoom * f, 1, 8);
    render();
  }
  function swapSel(d) {
    var a = S.sel, b = S.sel + d;
    if (!S.items[a] || b < 0 || b >= S.items.length) { return; }
    var t = S.items[a]; S.items[a] = S.items[b]; S.items[b] = t;
    S.sel = b;
    render();
  }
  function delSel() {
    if (!S.items[S.sel]) { return; }
    S.items.splice(S.sel, 1);
    if (S.sel >= S.items.length) { S.sel = S.items.length - 1; }
    render();
  }
  $('cl-prev').addEventListener('click', function () { swapSel(-1); });
  $('cl-next').addEventListener('click', function () { swapSel(1); });
  $('cl-zin').addEventListener('click', function () { zoomSel(1.15); });
  $('cl-zout').addEventListener('click', function () { zoomSel(1 / 1.15); });
  $('cl-del').addEventListener('click', delSel);
  $('cl-pick').addEventListener('click', function () { fileInput.click(); });
  $('cl-add').addEventListener('click', function () { fileInput.click(); });
  $('cl-clear').addEventListener('click', function () { S.items = []; S.sel = -1; render(); });
  fileInput.addEventListener('change', function () { addFiles(fileInput.files); fileInput.value = ''; });
  $('cl-grid').addEventListener('click', function () {
    var c = clamp(parseInt($('cl-cols').value, 10) || 1, 1, 10);
    var r = clamp(parseInt($('cl-rows').value, 10) || 1, 1, 10);
    $('cl-cols').value = c;
    $('cl-rows').value = r;
    S.layout = G(c, r);
    S.tpl = -1;
    render();
  });
  $('cl-gap').addEventListener('input', function () { S.gap = +this.value; $('cl-gapv').textContent = this.value; render(); });
  $('cl-rad').addEventListener('input', function () { S.radius = +this.value; $('cl-radv').textContent = this.value; render(); });
  $('cl-bg').addEventListener('input', function () { S.bg = this.value; render(); });
  $('cl-rnd').addEventListener('click', function () {
    var h = '#';
    for (var i = 0; i < 6; i++) { h += '0123456789abcdef'.charAt(Math.floor(Math.random() * 16)); }
    S.bg = h;
    $('cl-bg').value = h;
    render();
  });
  $('cl-out').addEventListener('change', function () { S.out = this.value; updateUI(); });
  $('cl-fmt').addEventListener('change', function () { S.fmt = this.value; });
  function makeExport() {
    if (!S.items.length) { toast('กรุณาเพิ่มรูปก่อน'); return null; }
    var d = exportDims();
    var c = document.createElement('canvas');
    c.width = d[0];
    c.height = d[1];
    draw(c.getContext('2d'), d[0], d[1], false);
    return c;
  }
  $('cl-dl').addEventListener('click', function () {
    var c = makeExport();
    if (!c) { return; }
    var isPng = S.fmt === 'png';
    c.toBlob(function (blob) {
      if (!blob) { toast('สร้างไฟล์ไม่สำเร็จ ลองลดขนาดเอาต์พุต'); return; }
      var u = URL.createObjectURL(blob);
      var a = document.createElement('a');
      var n = new Date();
      function z(v) { return (v < 10 ? '0' : '') + v; }
      a.href = u;
      a.download = 'collage-' + n.getFullYear() + z(n.getMonth() + 1) + z(n.getDate()) + '-' + z(n.getHours()) + z(n.getMinutes()) + z(n.getSeconds()) + (isPng ? '.png' : '.jpg');
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(u); }, 4000);
      toast('ดาวน์โหลดแล้ว');
    }, isPng ? 'image/png' : 'image/jpeg', 0.92);
  });
  $('cl-copy').addEventListener('click', function () {
    var c = makeExport();
    if (!c) { return; }
    if (!navigator.clipboard || !window.ClipboardItem) { toast('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูป ลองใช้ปุ่มดาวน์โหลดแทน'); return; }
    var p = new Promise(function (res, rej) {
      c.toBlob(function (b) { if (b) { res(b); } else { rej(new Error('blob')); } }, 'image/png');
    });
    navigator.clipboard.write([new ClipboardItem({ 'image/png': p })]).then(function () {
      toast('คัดลอกรูปแล้ว');
    }).catch(function () { toast('คัดลอกไม่สำเร็จ ลองใช้ปุ่มดาวน์โหลดแทน'); });
  });
  var app = $('cl-app'), drop = $('cl-drop');
  app.addEventListener('dragover', function (e) { e.preventDefault(); drop.classList.add('cl-over'); });
  app.addEventListener('dragleave', function () { drop.classList.remove('cl-over'); });
  app.addEventListener('drop', function (e) {
    e.preventDefault();
    drop.classList.remove('cl-over');
    if (e.dataTransfer && e.dataTransfer.files) { addFiles(e.dataTransfer.files); }
  });
  document.addEventListener('paste', function (e) {
    var cd = e.clipboardData;
    if (!cd) { return; }
    var files = [], i;
    if (cd.files && cd.files.length) {
      files = Array.prototype.slice.call(cd.files);
    } else if (cd.items) {
      for (i = 0; i < cd.items.length; i++) {
        if (cd.items[i].kind === 'file') {
          var f = cd.items[i].getAsFile();
          if (f) { files.push(f); }
        }
      }
    }
    files = files.filter(isImage);
    if (files.length) { e.preventDefault(); addFiles(files); }
  });
  document.addEventListener('keydown', function (e) {
    var t = e.target && e.target.tagName;
    if (t === 'INPUT' || t === 'SELECT' || t === 'TEXTAREA') { return; }
    if (S.sel < 0) { return; }
    var k = e.key;
    if (k === 'ArrowLeft' && S.items[S.sel]) { e.preventDefault(); swapSel(-1); }
    else if (k === 'ArrowRight' && S.items[S.sel]) { e.preventDefault(); swapSel(1); }
    else if ((k === '+' || k === '=') && S.items[S.sel]) { e.preventDefault(); zoomSel(1.15); }
    else if ((k === '-' || k === '_') && S.items[S.sel]) { e.preventDefault(); zoomSel(1 / 1.15); }
    else if ((k === 'Delete') && S.items[S.sel]) { e.preventDefault(); delSel(); }
    else if (k === 'Escape') { S.sel = -1; render(); }
  });
  buildTemplates();
  setRatio('1:1');
})();
</script>

## วิธีใช้งานเครื่องมือรวมรูป คอลลาจออนไลน์

1. **เพิ่มรูป** – ลากรูปมาวางในกรอบด้านบน กดปุ่ม **เลือกรูป…** หรือกด `Ctrl`+`V` เพื่อวางรูปจากคลิปบอร์ด กด `Ctrl` ค้างเพื่อเลือกหลายไฟล์พร้อมกัน หรือคลิกช่องว่างในคอลลาจเพื่อเพิ่มรูปเข้าไปทีละช่อง
2. **เลือกเลย์เอาต์** – คลิกเทมเพลต 2 ถึง 9 ช่อง หรือกรอกจำนวนคอลัมน์และแถวในช่อง **ตารางเอง** (สูงสุด 10×10) แล้วกด **ใช้ตาราง**
3. **จัดตำแหน่งรูปในช่อง** – ลากรูปภายในช่องเพื่อเลื่อนตำแหน่ง หมุนล้อเมาส์หรือใช้สองนิ้วบีบเพื่อซูม และดับเบิลคลิกเพื่อรีเซ็ตกลับค่าเริ่มต้น
4. **สลับหรือลบรูป** – เลือกช่องที่ต้องการ แล้วกด ⬅ หรือ ⮕ เพื่อสลับตำแหน่งกับรูปข้างเคียง กด **+** หรือ **−** เพื่อซูม และกด 🗑 เพื่อลบรูปในช่องนั้น
5. **ปรับแต่งรูปลักษณ์** – เลื่อนแถบ **ช่องว่าง** และ **มุมมน** เลือก **สัดส่วน** ภาพที่ต้องการ และตั้ง **สีพื้นหลัง** (กด ↻ เพื่อสุ่มสี)
6. **เลือกขนาดและบันทึก** – เลือกขนาดเอาต์พุตและรูปแบบไฟล์ (JPEG หรือ PNG) จากนั้นกด **ดาวน์โหลด** หรือ **คัดลอกรูป** เพื่อนำไปวางในแอปอื่นได้ทันที

**คีย์ลัด:** `←` `→` สลับตำแหน่งรูป · `+` `−` ซูมเข้า/ออก · `Delete` ลบรูปในช่องที่เลือก · `Esc` ยกเลิกการเลือก

เครื่องมือนี้ประมวลผลรูปในเบราว์เซอร์ของคุณทั้งหมด รูปจึงไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์

## คำอธิบายศัพท์ในเครื่องมือ

- **คอลลาจ (Collage)** – ภาพที่นำรูปหลายรูปมาจัดวางรวมกันเป็นภาพเดียว
- **เทมเพลต** – รูปแบบการจัดวางสำเร็จรูป เช่น 2 ช่อง 4 ช่อง หรือ 9 ช่อง เลือกแล้วใช้ได้ทันที
- **ตารางเอง (ตารางกำหนดเอง)** – การกำหนดจำนวนคอลัมน์และแถวเองได้สูงสุด 10×10 เหมาะกับการรวมรูปจำนวนมาก
- **ช่อง (Cell)** – พื้นที่แต่ละกรอบในคอลลาจ ซึ่งใส่รูปได้ช่องละหนึ่งรูป
- **ช่องว่าง (Gap)** – ระยะห่างระหว่างช่อง และระยะขอบรอบคอลลาจ คิดเป็นเปอร์เซ็นต์ของด้านที่สั้นกว่า
- **มุมมน (Corner radius)** – ความโค้งของมุมแต่ละช่อง ยิ่งค่ามากมุมยิ่งมน
- **สัดส่วน (Aspect ratio)** – อัตราส่วนความกว้างต่อความสูงของภาพรวม เช่น 1:1 สี่เหลี่ยมจัตุรัส 4:5 โพสต์แนวตั้ง 9:16 สตอรี่ 16:9 แนวนอน
- **สีพื้นหลัง** – สีที่เห็นในช่องว่างและขอบของคอลลาจ ปุ่ม ↻ ใช้สุ่มสีใหม่
- **ซูม (Zoom)** – การขยายรูปภายในช่องเพื่อเลือกส่วนที่ต้องการให้เห็น ซูมได้ 1 ถึง 8 เท่า
- **ขนาดเอาต์พุต** – ความกว้างของไฟล์ที่ดาวน์โหลด ตัวเลือก **อัตโนมัติ** จะปรับตามความละเอียดของรูปที่เพิ่มเพื่อให้ภาพคมชัด
- **JPEG** – ไฟล์รูปที่บีบอัดแล้ว ขนาดเล็ก เหมาะกับการแชร์หรืออัปโหลด
- **PNG** – ไฟล์รูปคุณภาพสูงแบบไม่สูญเสียรายละเอียด ขนาดไฟล์ใหญ่กว่า JPEG
- **HEIC** – รูปแบบไฟล์ที่ iPhone ใช้ รองรับหรือไม่ขึ้นอยู่กับเบราว์เซอร์ที่ใช้งาน
- **คัดลอกรูป** – คัดลอกคอลลาจเป็นรูปภาพไปยังคลิปบอร์ดเพื่อวางลงในแชทหรือเอกสารได้โดยตรง
- **ประมวลผลในเครื่อง** – การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไม่มีการส่งรูปออกไปที่อื่น