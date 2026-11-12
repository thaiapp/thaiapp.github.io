---
title: เบลอรูปภาพออนไลน์ ฟรี
h1: เบลอรูปภาพออนไลน์
description: เบลอรูปภาพออนไลน์ฟรี ซ่อนข้อมูลส่วนตัว ใบหน้า หรือข้อความในภาพได้ง่าย เลือกพื้นที่และปรับความเข้มเอง ประมวลผลในเบราว์เซอร์ ไม่อัปโหลด รองรับ JPG PNG WebP
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-12T09:00:00+07:00'
weight: 108
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- เบลอรูปภาพออนไลน์
- รูปภาพ
---

<style>
#blurTool{--bt-acc:#2563eb;--bt-bd:rgba(128,128,128,.35);font-size:15px;line-height:1.5}
#blurTool [hidden]{display:none!important}
#blurTool button{font:inherit;cursor:pointer;padding:6px 12px;border:1px solid var(--bt-bd);border-radius:8px;background:rgba(128,128,128,.1);color:inherit}
#blurTool button:hover:not(:disabled){border-color:var(--bt-acc)}
#blurTool button:disabled{opacity:.45;cursor:not-allowed}
#blurTool button.on,#blurTool button.bt-pri{background:var(--bt-acc);border-color:var(--bt-acc);color:#fff}
#blurTool .bt-bar,#blurTool .bt-actions{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:10px 0}
#blurTool .bt-str{display:flex;align-items:center;gap:8px;flex:1 1 220px}
#blurTool .bt-str input{flex:1;min-width:100px}
#blurTool .bt-drop{display:block;text-align:center;padding:36px 16px;border:2px dashed var(--bt-bd);border-radius:12px;cursor:pointer}
#blurTool .bt-drop.over{border-color:var(--bt-acc);background:rgba(37,99,235,.08)}
#blurTool .bt-drop input{display:none}
#blurTool .bt-pick{display:inline-block;padding:8px 18px;border-radius:8px;background:var(--bt-acc);color:#fff;font-weight:600;margin-bottom:8px}
#blurTool .bt-hint{font-size:13px;opacity:.75}
#blurTool .bt-stage{text-align:center;overflow:auto}
#blurTool .bt-wrap{position:relative;display:inline-block;max-width:100%;touch-action:none;user-select:none;-webkit-user-select:none;line-height:0;background:repeating-conic-gradient(#ccc 0 25%,#fff 0 50%) 50%/16px 16px}
#blurTool canvas{display:block;max-width:100%;height:auto}
#blurTool .bt-sel{position:absolute;border:2px solid var(--bt-acc);box-shadow:0 0 0 1px #fff inset;pointer-events:none;box-sizing:border-box}
#blurTool .bt-sel.el{border-radius:50%}
#blurTool .bt-h{position:absolute;width:12px;height:12px;margin:-6px 0 0 -6px;background:#fff;border:2px solid var(--bt-acc);border-radius:50%;box-sizing:border-box}
#blurTool .bt-info{font-size:13px;opacity:.8;min-height:20px}
</style>
<div id="blurTool">
  <div class="bt-bar" id="btBar" hidden>
    <button type="button" id="btRect" class="on" aria-pressed="true">▭ สี่เหลี่ยม</button>
    <button type="button" id="btEll" aria-pressed="false">⬭ วงรี</button>
    <label class="bt-str">ความเข้ม <input type="range" id="btStr" min="1" max="50" value="12"> <b id="btStrV">12</b></label>
    <label><input type="checkbox" id="btWhole"> ทั้งภาพ</label>
  </div>
  <label class="bt-drop" id="btDrop">
    <span class="bt-pick">📁 เลือกรูปภาพ…</span><br>
    <input type="file" id="btFile" accept="image/*">
    <span>ลากรูปภาพมาที่นี่ หรือกด Ctrl+V เพื่อวาง</span><br>
    <span class="bt-hint">รองรับ JPG, PNG, WebP และ GIF · ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดรูป</span>
  </label>
  <div class="bt-stage" id="btStage" hidden>
    <div class="bt-wrap" id="btWrap"><canvas id="btCv"></canvas><div class="bt-sel" id="btSel"></div></div>
  </div>
  <div class="bt-actions" id="btActions" hidden>
    <button type="button" id="btApply" class="bt-pri">นำไปใช้</button>
    <button type="button" id="btUndo">เลิกทำ</button>
    <button type="button" id="btReset">รีเซ็ต</button>
    <button type="button" id="btClear">ล้าง</button>
    <button type="button" id="btDl" class="bt-pri">ดาวน์โหลด</button>
    <button type="button" id="btCopy">คัดลอกรูปภาพ</button>
  </div>
  <div class="bt-info" id="btInfo" role="status" aria-live="polite"></div>
</div>
<script>
(function () {
  'use strict';
  var $ = function (id) { return document.getElementById(id); };
  var cv = $('btCv'), ctx = cv.getContext('2d'), wrap = $('btWrap'), selEl = $('btSel');
  var drop = $('btDrop'), fileIn = $('btFile'), stage = $('btStage'), bar = $('btBar'), acts = $('btActions'), info = $('btInfo');
  var strEl = $('btStr'), strV = $('btStrV'), whole = $('btWhole'), bRect = $('btRect'), bEll = $('btEll');
  var root = $('blurTool');
  var base = document.createElement('canvas'), bctx = base.getContext('2d');
  var orig = document.createElement('canvas');
  var blurC = document.createElement('canvas');
  var hasImg = false, sel = null, shape = 'rect', dirty = true, edits = 0, history = [], drag = null, raf = 0, note = '';
  var meta = { name: 'image', type: 'image/png' };
  var HAS_FILTER = (function () {
    try {
      var a = document.createElement('canvas'), b = document.createElement('canvas');
      a.width = b.width = 5; a.height = b.height = 1;
      var ac = a.getContext('2d'), bc = b.getContext('2d');
      ac.fillStyle = '#000'; ac.fillRect(2, 0, 1, 1);
      bc.filter = 'blur(1px)'; bc.drawImage(a, 0, 0);
      return bc.getImageData(1, 0, 1, 1).data[3] > 0;
    } catch (e) { return false; }
  })();
  function clamp(v, a, b) { return Math.max(a, Math.min(b, v)); }
  function scale() { var r = cv.getBoundingClientRect(); return r.width > 0 ? r.width / cv.width : 1; }
  function radius() { return Math.min(160, (+strEl.value) * Math.max(base.width, base.height) / 700); }
  function showInfo() {
    var dims = hasImg ? base.width + ' × ' + base.height + ' px' : '';
    info.textContent = dims + (note ? (dims ? ' · ' : '') + note : '');
  }
  function msg(t) { note = t || ''; showInfo(); }
  function pass(src, dst, w, h, r, horiz) {
    var n = horiz ? h : w, len = horiz ? w : h, step = horiz ? 4 : w * 4, ls = horiz ? w * 4 : 4, div = 2 * r + 1;
    var l, c, i, k, s, o, a, b;
    for (l = 0; n > l; l++) {
      o = l * ls;
      for (c = 0; 4 > c; c++) {
        s = 0;
        for (k = -r; r >= k; k++) { s += src[o + clamp(k, 0, len - 1) * step + c]; }
        for (i = 0; len > i; i++) {
          dst[o + i * step + c] = s / div;
          a = Math.min(len - 1, i + r + 1); b = Math.max(0, i - r);
          s += src[o + a * step + c] - src[o + b * step + c];
        }
      }
    }
  }
  function boxBlur(d, w, h, r) {
    var t = new Uint8ClampedArray(d.length), i;
    for (i = 0; 3 > i; i++) { pass(d, t, w, h, r, true); pass(t, d, w, h, r, false); }
  }
  function buildBlur() {
    var w = base.width, h = base.height, r = radius();
    blurC.width = w; blurC.height = h;
    var bc = blurC.getContext('2d');
    if (HAS_FILTER) {
      var p = Math.ceil(r * 3) + 2, t = document.createElement('canvas');
      t.width = w + 2 * p; t.height = h + 2 * p;
      var tc = t.getContext('2d');
      tc.drawImage(base, p, p);
      tc.drawImage(base, 0, 0, 1, h, 0, p, p, h);
      tc.drawImage(base, w - 1, 0, 1, h, w + p, p, p, h);
      tc.drawImage(base, 0, 0, w, 1, p, 0, w, p);
      tc.drawImage(base, 0, h - 1, w, 1, p, h + p, w, p);
      tc.drawImage(base, 0, 0, 1, 1, 0, 0, p, p);
      tc.drawImage(base, w - 1, 0, 1, 1, w + p, 0, p, p);
      tc.drawImage(base, 0, h - 1, 1, 1, 0, h + p, p, p);
      tc.drawImage(base, w - 1, h - 1, 1, 1, w + p, h + p, p, p);
      bc.filter = 'blur(' + r + 'px)';
      bc.drawImage(t, -p, -p);
      bc.filter = 'none';
    } else {
      bc.drawImage(base, 0, 0);
      var id = bc.getImageData(0, 0, w, h);
      boxBlur(id.data, w, h, Math.max(1, Math.round(r * 0.6)));
      bc.putImageData(id, 0, 0);
    }
    dirty = false;
  }
  function region() {
    if (whole.checked) return { x: 0, y: 0, w: base.width, h: base.height, shape: 'rect' };
    if (sel !== null && sel.w >= 1 && sel.h >= 1) return { x: sel.x, y: sel.y, w: sel.w, h: sel.h, shape: shape };
    return null;
  }
  function clipPath(c, r) {
    c.beginPath();
    if (r.shape === 'ellipse') { c.ellipse(r.x + r.w / 2, r.y + r.h / 2, r.w / 2, r.h / 2, 0, 0, Math.PI * 2); }
    else { c.rect(r.x, r.y, r.w, r.h); }
    c.clip();
  }
  function draw() {
    raf = 0;
    if (!hasImg) return;
    ctx.clearRect(0, 0, cv.width, cv.height);
    ctx.drawImage(base, 0, 0);
    var r = region();
    if (r !== null) {
      if (dirty) buildBlur();
      ctx.save(); clipPath(ctx, r); ctx.drawImage(blurC, 0, 0); ctx.restore();
    }
    if (r !== null && !whole.checked) {
      var s = scale();
      selEl.hidden = false;
      selEl.style.left = (r.x * s) + 'px';
      selEl.style.top = (r.y * s) + 'px';
      selEl.style.width = (r.w * s) + 'px';
      selEl.style.height = (r.h * s) + 'px';
      selEl.className = 'bt-sel' + (shape === 'ellipse' ? ' el' : '');
    } else { selEl.hidden = true; }
    $('btApply').disabled = (r === null);
    $('btUndo').disabled = (history.length === 0);
    $('btReset').disabled = (edits === 0);
  }
  function req() { if (!raf) raf = requestAnimationFrame(draw); }
  [[0, 0], [50, 0], [100, 0], [100, 50], [100, 100], [50, 100], [0, 100], [0, 50]].forEach(function (p) {
    var h = document.createElement('i');
    h.className = 'bt-h'; h.style.left = p[0] + '%'; h.style.top = p[1] + '%';
    selEl.appendChild(h);
  });
  function setup(img, w, h) {
    orig.width = base.width = cv.width = w;
    orig.height = base.height = cv.height = h;
    bctx.clearRect(0, 0, w, h); bctx.drawImage(img, 0, 0);
    var oc = orig.getContext('2d'); oc.clearRect(0, 0, w, h); oc.drawImage(base, 0, 0);
    history = []; edits = 0; dirty = true; hasImg = true; note = '';
    whole.checked = false;
    sel = { x: w * 0.3, y: h * 0.35, w: w * 0.4, h: h * 0.3 };
    drop.hidden = true; stage.hidden = false; bar.hidden = false; acts.hidden = false;
    showInfo(); req();
  }
  function loadFile(f) {
    if (!f) return;
    if (!/^image\//.test(f.type)) { msg('ไฟล์นี้ไม่ใช่รูปภาพ'); return; }
    meta.name = (f.name || 'image').replace(/\.[^.]+$/, '');
    meta.type = f.type;
    var url = URL.createObjectURL(f), img = new Image();
    img.onload = function () {
      URL.revokeObjectURL(url);
      if (!img.naturalWidth || !img.naturalHeight) { msg('เปิดไฟล์นี้ไม่ได้'); return; }
      setup(img, img.naturalWidth, img.naturalHeight);
    };
    img.onerror = function () {
      URL.revokeObjectURL(url);
      msg('เปิดไฟล์นี้ไม่ได้ โปรดใช้ JPG, PNG, WebP หรือ GIF');
    };
    img.src = url;
  }
  fileIn.addEventListener('change', function () { loadFile(fileIn.files[0]); fileIn.value = ''; });
  root.addEventListener('dragover', function (e) { e.preventDefault(); drop.classList.add('over'); });
  root.addEventListener('dragleave', function () { drop.classList.remove('over'); });
  root.addEventListener('drop', function (e) {
    e.preventDefault(); drop.classList.remove('over');
    if (e.dataTransfer && e.dataTransfer.files.length > 0) { loadFile(e.dataTransfer.files[0]); }
  });
  document.addEventListener('paste', function (e) {
    var items = (e.clipboardData && e.clipboardData.items) ? e.clipboardData.items : [], i;
    for (i = 0; items.length > i; i++) {
      if (items[i].type.indexOf('image') === 0) { loadFile(items[i].getAsFile()); e.preventDefault(); return; }
    }
  });
  function setShape(s) {
    shape = s;
    bRect.className = s === 'rect' ? 'on' : '';
    bEll.className = s === 'ellipse' ? 'on' : '';
    bRect.setAttribute('aria-pressed', String(s === 'rect'));
    bEll.setAttribute('aria-pressed', String(s === 'ellipse'));
    req();
  }
  bRect.addEventListener('click', function () { setShape('rect'); });
  bEll.addEventListener('click', function () { setShape('ellipse'); });
  strEl.addEventListener('input', function () { strV.textContent = strEl.value; dirty = true; req(); });
  whole.addEventListener('change', req);
  window.addEventListener('resize', req);
  function pt(e) {
    var r = cv.getBoundingClientRect(), s = scale();
    return { x: clamp((e.clientX - r.left) / s, 0, cv.width), y: clamp((e.clientY - r.top) / s, 0, cv.height) };
  }
  function cp(s) { return { x: s.x, y: s.y, w: s.w, h: s.h }; }
  function hit(p) {
    if (sel === null) return '';
    var t = 12 / scale(), x2 = sel.x + sel.w, y2 = sel.y + sel.h;
    var inX = p.x >= sel.x - t && x2 + t >= p.x, inY = p.y >= sel.y - t && y2 + t >= p.y;
    if (!inX || !inY) return '';
    var v = t >= Math.abs(p.y - sel.y) ? 'n' : (t >= Math.abs(p.y - y2) ? 's' : '');
    var hz = t >= Math.abs(p.x - sel.x) ? 'w' : (t >= Math.abs(p.x - x2) ? 'e' : '');
    if (v || hz) return v + hz;
    return 'move';
  }
  function cursorFor(h) {
    if (!h) return 'crosshair';
    if (h === 'move') return 'move';
    if (h === 'n' || h === 's') return 'ns-resize';
    if (h === 'e' || h === 'w') return 'ew-resize';
    return (h === 'nw' || h === 'se') ? 'nwse-resize' : 'nesw-resize';
  }
  wrap.addEventListener('pointerdown', function (e) {
    if (!hasImg || whole.checked) return;
    e.preventDefault();
    var p = pt(e), h = hit(p);
    try { wrap.setPointerCapture(e.pointerId); } catch (x) { }
    if (h === 'move') { drag = { m: 'move', p0: p, s0: cp(sel) }; }
    else if (h) { drag = { m: 'size', h: h, p0: p, s0: cp(sel) }; }
    else { drag = { m: 'draw', p0: p }; sel = { x: p.x, y: p.y, w: 0, h: 0 }; }
    req();
  });
  wrap.addEventListener('pointermove', function (e) {
    if (!hasImg || whole.checked) { wrap.style.cursor = 'default'; return; }
    var p = pt(e);
    if (!drag) { wrap.style.cursor = cursorFor(hit(p)); return; }
    var W0 = cv.width, H0 = cv.height, s0, dx, dy, l, r, t, b;
    if (drag.m === 'draw') {
      sel = { x: Math.min(drag.p0.x, p.x), y: Math.min(drag.p0.y, p.y), w: Math.abs(p.x - drag.p0.x), h: Math.abs(p.y - drag.p0.y) };
    } else if (drag.m === 'move') {
      s0 = drag.s0;
      sel = { x: clamp(s0.x + p.x - drag.p0.x, 0, W0 - s0.w), y: clamp(s0.y + p.y - drag.p0.y, 0, H0 - s0.h), w: s0.w, h: s0.h };
    } else {
      s0 = drag.s0; dx = p.x - drag.p0.x; dy = p.y - drag.p0.y;
      l = s0.x; r = s0.x + s0.w; t = s0.y; b = s0.y + s0.h;
      if (drag.h.indexOf('w') > -1) { l = clamp(s0.x + dx, 0, W0); }
      if (drag.h.indexOf('e') > -1) { r = clamp(s0.x + s0.w + dx, 0, W0); }
      if (drag.h.indexOf('n') > -1) { t = clamp(s0.y + dy, 0, H0); }
      if (drag.h.indexOf('s') > -1) { b = clamp(s0.y + s0.h + dy, 0, H0); }
      sel = { x: Math.min(l, r), y: Math.min(t, b), w: Math.abs(r - l), h: Math.abs(b - t) };
    }
    req();
  });
  function endDrag() {
    if (!drag) return;
    if (drag.m === 'draw') {
      var s = scale();
      if (5 > sel.w * s && 5 > sel.h * s) {
        var w = cv.width * 0.3, h = cv.height * 0.25;
        sel = { x: clamp(drag.p0.x - w / 2, 0, cv.width - w), y: clamp(drag.p0.y - h / 2, 0, cv.height - h), w: w, h: h };
      }
    }
    drag = null; req();
  }
  wrap.addEventListener('pointerup', endDrag);
  wrap.addEventListener('pointercancel', endDrag);
  function snapshot() {
    var c = document.createElement('canvas');
    c.width = base.width; c.height = base.height;
    c.getContext('2d').drawImage(base, 0, 0);
    return c;
  }
  $('btApply').addEventListener('click', function () {
    var r = region();
    if (r === null) return;
    if (dirty) buildBlur();
    history.push(snapshot());
    if (history.length > 10) history.shift();
    bctx.save(); clipPath(bctx, r); bctx.drawImage(blurC, 0, 0); bctx.restore();
    edits++; dirty = true;
    msg('เบลอแล้ว เพิ่มพื้นที่ใหม่ หรือกดดาวน์โหลดได้เลย');
    req();
  });
  $('btUndo').addEventListener('click', function () {
    var s = history.pop();
    if (!s) return;
    bctx.clearRect(0, 0, base.width, base.height); bctx.drawImage(s, 0, 0);
    edits = Math.max(0, edits - 1); dirty = true; msg(''); req();
  });
  $('btReset').addEventListener('click', function () {
    bctx.clearRect(0, 0, base.width, base.height); bctx.drawImage(orig, 0, 0);
    history = []; edits = 0; dirty = true; msg(''); req();
  });
  $('btClear').addEventListener('click', function () {
    hasImg = false; sel = null; history = []; edits = 0; drag = null;
    stage.hidden = true; bar.hidden = true; acts.hidden = true; drop.hidden = false;
    msg('');
  });
  function outType() { return (meta.type === 'image/jpeg' || meta.type === 'image/webp') ? meta.type : 'image/png'; }
  function ext(t) { return t === 'image/jpeg' ? 'jpg' : (t === 'image/webp' ? 'webp' : 'png'); }
  function ensureEdited() {
    if (edits === 0) { msg('ยังไม่ได้เบลอ กด “นำไปใช้” ก่อนดาวน์โหลดหรือคัดลอก'); return false; }
    return true;
  }
  $('btDl').addEventListener('click', function () {
    if (!ensureEdited()) return;
    var t = outType();
    base.toBlob(function (b) {
      if (!b) { msg('สร้างไฟล์ไม่สำเร็จ'); return; }
      var u = URL.createObjectURL(b), a = document.createElement('a');
      a.href = u; a.download = meta.name + '-blur.' + ext(t);
      document.body.appendChild(a); a.click(); document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(u); }, 2000);
    }, t, 0.92);
  });
  $('btCopy').addEventListener('click', function () {
    if (!ensureEdited()) return;
    base.toBlob(function (b) {
      if (!b || !navigator.clipboard || !window.ClipboardItem) { msg('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูปภาพ'); return; }
      navigator.clipboard.write([new ClipboardItem({ 'image/png': b })]).then(
        function () { msg('คัดลอกรูปภาพแล้ว'); },
        function () { msg('คัดลอกไม่สำเร็จ ลองดาวน์โหลดแทน'); }
      );
    }, 'image/png');
  });
})();
</script>

ต้องการซ่อนข้อมูลสำคัญในรูปก่อนแชร์? เครื่องมือเบลอรูปภาพนี้ช่วยให้คุณเบลอเฉพาะจุดได้ในไม่กี่คลิก เช่น ชื่อบนกล่องพัสดุ ข้อความในภาพหน้าจอ เลขบัญชี หรือใบหน้าคนในพื้นหลัง เลือกพื้นที่เป็นสี่เหลี่ยมหรือวงรี ปรับความเข้ม แล้วดาวน์โหลดได้ทันที ทุกขั้นตอนทำงานในเบราว์เซอร์ของคุณ รูปภาพจะไม่ถูกส่งไปยังเซิร์ฟเวอร์

## วิธีใช้งานเบลอรูปภาพ

1. **เลือกรูปภาพ** คลิกปุ่ม “เลือกรูปภาพ…” ลากไฟล์มาวางในกรอบ หรือกด Ctrl+V (Mac ใช้ Cmd+V) เพื่อวางรูปที่คัดลอกไว้
2. **เลือกรูปทรง** เลือก “สี่เหลี่ยม” หรือ “วงรี” ตามลักษณะของบริเวณที่ต้องการเบลอ
3. **กำหนดพื้นที่** หลังโหลดรูป จะมีกรอบเริ่มต้นอยู่กลางภาพ ลากภายในกรอบเพื่อย้ายตำแหน่ง ลากขอบหรือมุมเพื่อปรับขนาด คลิกจุดอื่นบนภาพเพื่อวางกรอบใหม่ หรือลากเพื่อวาดกรอบตามขนาดที่ต้องการ
4. **ปรับความเข้ม** เลื่อนแถบ “ความเข้ม” แล้วดูผลลัพธ์บนภาพทันที ค่าสูงจะซ่อนรายละเอียดได้มากขึ้น
5. **กด “นำไปใช้”** เพื่อยืนยันการเบลอพื้นที่นั้น จะเพิ่มพื้นที่อื่นต่อได้กี่จุดก็ได้ หรือเปิด “ทั้งภาพ” หากต้องการเบลอทั้งภาพพร้อมกัน
6. **บันทึกผลลัพธ์** กด “ดาวน์โหลด” เพื่อบันทึกไฟล์ หรือ “คัดลอกรูปภาพ” เพื่อนำไปวางในแอปอื่น

หมายเหตุ: การดาวน์โหลดและการคัดลอกจะใช้ภาพที่กด “นำไปใช้” แล้วเท่านั้น หากเห็นกรอบเลือกแต่ยังไม่ได้กดนำไปใช้ พื้นที่นั้นจะยังไม่ถูกเบลอในไฟล์ที่บันทึก

## คำอธิบายศัพท์

- **เบลอ (Blur)** เอฟเฟกต์ทำให้ภาพพร่ามัวอย่างนุ่มนวล รายละเอียดเล็ก ๆ เช่น ตัวอักษรหรือใบหน้าจะอ่านหรือจำไม่ได้ และกลมกลืนกับภาพรอบข้าง
- **ความเข้ม (Strength)** ระดับความแรงของการเบลอ ค่าน้อยพร่าเบา ๆ ค่ามากพร่าจนมองไม่เห็นรายละเอียด ระบบปรับตามขนาดภาพให้ผลลัพธ์ใกล้เคียงกัน
- **พื้นที่ (Area)** กรอบบนภาพที่ใช้กำหนดบริเวณที่จะถูกเบลอ ย้ายและปรับขนาดได้ก่อนยืนยัน
- **สี่เหลี่ยม / วงรี (Shape)** รูปทรงของพื้นที่เบลอ สี่เหลี่ยมเหมาะกับข้อความหรือป้าย วงรีเหมาะกับใบหน้าหรือวัตถุกลม
- **ทั้งภาพ (Whole image)** โหมดเบลอทุกส่วนของภาพพร้อมกัน โดยไม่ต้องเลือกพื้นที่
- **นำไปใช้ (Apply)** ยืนยันการเบลอพื้นที่ที่เลือกลงบนภาพ เพื่อให้ถูกรวมในไฟล์ที่ดาวน์โหลด
- **เลิกทำ (Undo)** ย้อนกลับการนำไปใช้ครั้งล่าสุด ย้อนได้สูงสุด 10 ครั้ง
- **รีเซ็ต (Reset)** คืนภาพกลับเป็นต้นฉบับที่เพิ่งโหลดเข้ามา ลบการเบลอที่ทำไว้ทั้งหมด
- **ล้าง (Clear)** ปิดรูปปัจจุบันและกลับไปหน้าเลือกรูปภาพใหม่
- **ดาวน์โหลด (Download)** บันทึกภาพที่เบลอแล้วลงเครื่อง ไฟล์ JPG และ WebP จะบันทึกเป็นชนิดเดิม ส่วนไฟล์อื่นบันทึกเป็น PNG
- **คัดลอกรูปภาพ (Copy image)** คัดลอกภาพที่เบลอแล้วไปยังคลิปบอร์ด เพื่อวางต่อในแชตหรือเอกสาร (บางเบราว์เซอร์อาจไม่รองรับ)
- **JPG / PNG / WebP / GIF** ชนิดไฟล์ภาพที่เครื่องมือรองรับ ส่วนไฟล์ชนิดอื่น เช่น HEIC อาจเปิดไม่ได้ในบางเบราว์เซอร์
- **ประมวลผลในเครื่อง (Local processing)** การทำงานทั้งหมดเกิดในเบราว์เซอร์ของคุณ รูปภาพไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์

## เมื่อไหร่ควรใช้เบลอ

การเบลอเหมาะกับการซ่อนข้อความ อีเมล เบอร์โทร และข้อมูลส่วนตัวในภาพหน้าจอ รวมถึงทำให้พื้นหลังที่รกตาในภาพสินค้าหรือภาพบุคคลดูนุ่มนวลขึ้น เพราะขอบของพื้นที่เบลอเปลี่ยนผ่านอย่างเป็นธรรมชาติ ไม่เป็นบล็อกเหมือนโมเสก หากข้อมูลสำคัญมาก ให้เพิ่มความเข้มให้สูงพอจนอ่านไม่ออกก่อนแชร์เสมอ