---
title: ตัดรูปเป็นวงกลม ออนไลน์ ฟรี
h1: ตัดรูปเป็นวงกลม
description: 'ตัดรูปเป็นวงกลมออนไลน์ฟรี ครอปรูป JPG, PNG, WebP เป็นวงกลมพร้อมพื้นหลังโปร่งใส ลากปรับขนาดและตำแหน่งได้ง่าย ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลดรูปภาพเลย'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-11T09:00:00+07:00'
weight: 100
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ตัดรูปเป็นวงกลม
- ตัดรูปเป็นวงกลม ออนไลน์
- รูปภาพ
---
<div class="cc-app" id="cc-app">
<style>
.cc-app{max-width:760px;margin:0 auto 24px;font-family:inherit;color:inherit}
.cc-app *{box-sizing:border-box}
.cc-drop{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:8px;min-height:200px;padding:24px;text-align:center;border:2px dashed rgba(128,128,128,.55);border-radius:12px;cursor:pointer;transition:background .15s,border-color .15s}
.cc-drop:hover,.cc-drop.cc-over{background:rgba(128,128,128,.12);border-color:#3b82f6}
.cc-drop-icon{font-size:40px;line-height:1}
.cc-drop-title{font-weight:600}
.cc-drop-note{font-size:13px;opacity:.75}
.cc-pick{display:inline-block;margin-top:4px;padding:8px 18px;border-radius:8px;background:#3b82f6;color:#fff;font-weight:600}
.cc-file{position:absolute;width:1px;height:1px;opacity:0;pointer-events:none}
.cc-work{display:none}
.cc-bar{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:0 0 10px}
.cc-btn{appearance:none;border:1px solid rgba(128,128,128,.5);background:rgba(128,128,128,.12);color:inherit;font:inherit;font-size:14px;padding:7px 14px;border-radius:8px;cursor:pointer;min-width:40px}
.cc-btn:hover:not(:disabled){background:rgba(128,128,128,.25)}
.cc-btn:disabled{opacity:.4;cursor:not-allowed}
.cc-btn.cc-main{background:#3b82f6;border-color:#3b82f6;color:#fff;font-weight:600}
.cc-btn.cc-main:hover:not(:disabled){background:#2563eb}
.cc-sp{flex:1 1 auto}
.cc-stage{overflow:auto;max-height:78vh;border:1px solid rgba(128,128,128,.4);border-radius:10px;padding:8px;text-align:center;background-color:#d9d9d9;background-image:linear-gradient(45deg,#bdbdbd 25%,transparent 25%,transparent 75%,#bdbdbd 75%),linear-gradient(45deg,#bdbdbd 25%,transparent 25%,transparent 75%,#bdbdbd 75%);background-size:20px 20px;background-position:0 0,10px 10px}
.cc-canvas{display:inline-block;max-width:none;touch-action:none;vertical-align:top}
.cc-info{margin:10px 0 0;font-size:14px;opacity:.85}
.cc-msg{margin:6px 0 0;min-height:20px;font-size:14px;color:#2563eb}
.cc-privacy{margin:10px 0 0;font-size:13px;opacity:.75}
</style>
<label class="cc-drop" id="cc-drop" for="cc-file">
<span class="cc-drop-icon">📁</span>
<span class="cc-drop-title">ลากรูปภาพมาวางที่นี่ หรือกด Ctrl+V เพื่อวางรูป</span>
<span class="cc-drop-note">รองรับ JPG, PNG, WebP, GIF</span>
<span class="cc-pick">เลือกรูปภาพ…</span>
</label>
<input class="cc-file" id="cc-file" type="file" accept="image/*">
<div class="cc-work" id="cc-work">
<div class="cc-bar">
<button type="button" class="cc-btn" id="cc-zout" title="ซูมออก">−</button>
<button type="button" class="cc-btn" id="cc-zreset" title="รีเซ็ตซูม">0</button>
<button type="button" class="cc-btn" id="cc-zin" title="ซูมเข้า">+</button>
<span class="cc-sp"></span>
<button type="button" class="cc-btn cc-main" id="cc-crop">ครอปรูปภาพ</button>
<button type="button" class="cc-btn" id="cc-undo">เลิกทำ</button>
</div>
<div class="cc-stage" id="cc-stage"><canvas class="cc-canvas" id="cc-view"></canvas></div>
<p class="cc-info">ครอบตัด: <strong id="cc-size">0 × 0</strong> px</p>
<div class="cc-bar">
<button type="button" class="cc-btn cc-main" id="cc-down">ดาวน์โหลด</button>
<button type="button" class="cc-btn" id="cc-copy">คัดลอกรูปภาพ</button>
<span class="cc-sp"></span>
<button type="button" class="cc-btn" id="cc-clear">ล้าง</button>
</div>
</div>
<p class="cc-msg" id="cc-msg" role="status"></p>
<p class="cc-privacy">🛡️ ประมวลผลในเครื่องของคุณ 100% รูปภาพไม่ถูกอัปโหลดไปที่เซิร์ฟเวอร์</p>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('cc-drop'), fileIn = $('cc-file'), work = $('cc-work');
  var stage = $('cc-stage'), cv = $('cc-view'), ctx = cv.getContext('2d');
  var sizeEl = $('cc-size'), msgEl = $('cc-msg');
  var bCrop = $('cc-crop'), bUndo = $('cc-undo'), bDown = $('cc-down'), bCopy = $('cc-copy');
  var src = null, hist = [], zoom = 1, mode = '', last = null, msgTimer = 0;
  var sel = { x: 0, y: 0, r: 0 };
  function say(text) {
    msgEl.textContent = text;
    clearTimeout(msgTimer);
    msgTimer = setTimeout(function () { msgEl.textContent = ''; }, 4000);
  }
  function fitScale() {
    var avail = Math.max(120, stage.clientWidth - 18);
    return Math.min(avail / src.width, 480 / src.height, 4);
  }
  function scale() { return fitScale() * zoom; }
  function resetSel() {
    sel.x = src.width / 2;
    sel.y = src.height / 2;
    sel.r = Math.max(1, Math.min(src.width, src.height) / 2);
  }
  function clampSel() {
    var maxR = Math.min(src.width, src.height) / 2;
    sel.r = Math.max(Math.min(10, maxR), Math.min(sel.r, maxR));
    sel.x = Math.max(sel.r, Math.min(sel.x, src.width - sel.r));
    sel.y = Math.max(sel.r, Math.min(sel.y, src.height - sel.r));
  }
  function updateUi() {
    var has = !!src;
    bCrop.disabled = !has;
    bDown.disabled = !has;
    bCopy.disabled = !has;
    bUndo.disabled = hist.length === 0;
    sizeEl.textContent = has ? (Math.round(sel.r * 2) + ' × ' + Math.round(sel.r * 2)) : '0 × 0';
  }
  function draw() {
    if (!src) return;
    var W = src.width, H = src.height, s = scale();
    var dpr = window.devicePixelRatio || 1;
    var dw = Math.max(1, Math.round(W * s)), dh = Math.max(1, Math.round(H * s));
    cv.style.width = dw + 'px';
    cv.style.height = dh + 'px';
    cv.width = Math.max(1, Math.round(dw * dpr));
    cv.height = Math.max(1, Math.round(dh * dpr));
    var k = cv.width / W;
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    ctx.clearRect(0, 0, cv.width, cv.height);
    ctx.scale(k, k);
    ctx.drawImage(src, 0, 0);
    var cssPx = 1 / s;
    ctx.save();
    ctx.beginPath();
    ctx.rect(0, 0, W, H);
    ctx.moveTo(sel.x + sel.r, sel.y);
    ctx.arc(sel.x, sel.y, sel.r, 0, Math.PI * 2, true);
    ctx.fillStyle = 'rgba(0,0,0,0.55)';
    ctx.fill('evenodd');
    ctx.restore();
    ctx.beginPath();
    ctx.arc(sel.x, sel.y, sel.r, 0, Math.PI * 2);
    ctx.lineWidth = 4 * cssPx;
    ctx.strokeStyle = 'rgba(0,0,0,0.45)';
    ctx.stroke();
    ctx.lineWidth = 2 * cssPx;
    ctx.strokeStyle = '#ffffff';
    ctx.stroke();
    var d = sel.r * Math.SQRT1_2, hs = 7 * cssPx;
    var pts = [[-d, -d], [d, -d], [d, d], [-d, d]];
    for (var i = 0; i !== pts.length; i++) {
      ctx.beginPath();
      ctx.arc(sel.x + pts[i][0], sel.y + pts[i][1], hs, 0, Math.PI * 2);
      ctx.fillStyle = '#ffffff';
      ctx.fill();
      ctx.lineWidth = 2 * cssPx;
      ctx.strokeStyle = '#3b82f6';
      ctx.stroke();
    }
    updateUi();
  }
  function show(c) {
    src = c;
    zoom = 1;
    resetSel();
    drop.style.display = 'none';
    work.style.display = 'block';
    draw();
  }
  function loadFile(file) {
    if (!file) return;
    if (!file.type || file.type.indexOf('image/') !== 0) {
      say('ไฟล์นี้ไม่ใช่รูปภาพ กรุณาเลือกไฟล์ JPG, PNG, WebP หรือ GIF');
      return;
    }
    var url = URL.createObjectURL(file);
    var img = new Image();
    img.onload = function () {
      var c = document.createElement('canvas');
      c.width = img.naturalWidth;
      c.height = img.naturalHeight;
      c.getContext('2d').drawImage(img, 0, 0);
      URL.revokeObjectURL(url);
      hist = [];
      show(c);
    };
    img.onerror = function () {
      URL.revokeObjectURL(url);
      say('เปิดรูปนี้ไม่ได้ ลองใช้ไฟล์ JPG, PNG, WebP หรือ GIF');
    };
    img.src = url;
  }
  function render() {
    var d = Math.max(1, Math.round(sel.r * 2));
    var o = document.createElement('canvas');
    o.width = d;
    o.height = d;
    var c = o.getContext('2d');
    c.beginPath();
    c.arc(d / 2, d / 2, d / 2, 0, Math.PI * 2);
    c.closePath();
    c.clip();
    c.drawImage(src, sel.x - sel.r, sel.y - sel.r, sel.r * 2, sel.r * 2, 0, 0, d, d);
    return o;
  }
  function toPoint(e) {
    var rect = cv.getBoundingClientRect();
    var f = src.width / rect.width;
    return { x: (e.clientX - rect.left) * f, y: (e.clientY - rect.top) * f, tol: 16 * f };
  }
  function hit(p) {
    var dx = p.x - sel.x, dy = p.y - sel.y;
    var d = sel.r * Math.SQRT1_2;
    var cs = [[-d, -d], [d, -d], [d, d], [-d, d]];
    for (var i = 0; i !== cs.length; i++) {
      if (!(Math.hypot(dx - cs[i][0], dy - cs[i][1]) > p.tol)) return 'resize';
    }
    if (!(Math.hypot(dx, dy) > sel.r)) return 'move';
    return '';
  }
  cv.addEventListener('pointerdown', function (e) {
    if (!src) return;
    var p = toPoint(e);
    mode = hit(p);
    if (!mode) return;
    last = p;
    cv.setPointerCapture(e.pointerId);
    e.preventDefault();
  });
  cv.addEventListener('pointermove', function (e) {
    if (!src) return;
    var p = toPoint(e);
    if (!mode) {
      var h = hit(p);
      cv.style.cursor = h === 'resize' ? 'nwse-resize' : (h === 'move' ? 'move' : 'default');
      return;
    }
    if (mode === 'move') {
      sel.x += p.x - last.x;
      sel.y += p.y - last.y;
    } else {
      sel.r = Math.hypot(p.x - sel.x, p.y - sel.y);
    }
    last = p;
    clampSel();
    draw();
  });
  function endDrag(e) {
    mode = '';
    try { cv.releasePointerCapture(e.pointerId); } catch (err) { }
  }
  cv.addEventListener('pointerup', endDrag);
  cv.addEventListener('pointercancel', endDrag);
  function setZoom(z) {
    if (!src) return;
    zoom = Math.max(0.25, Math.min(4, z));
    draw();
  }
  $('cc-zin').addEventListener('click', function () { setZoom(zoom * 1.25); });
  $('cc-zout').addEventListener('click', function () { setZoom(zoom / 1.25); });
  $('cc-zreset').addEventListener('click', function () { setZoom(1); });
  bCrop.addEventListener('click', function () {
    if (!src) return;
    hist.push(src);
    src = render();
    resetSel();
    draw();
    say('ครอปเป็นวงกลมแล้ว กด "เลิกทำ" เพื่อย้อนกลับ');
  });
  bUndo.addEventListener('click', function () {
    if (hist.length === 0) return;
    src = hist.pop();
    resetSel();
    draw();
  });
  bDown.addEventListener('click', function () {
    if (!src) return;
    render().toBlob(function (blob) {
      if (!blob) { say('สร้างไฟล์ไม่สำเร็จ ลองใหม่อีกครั้ง'); return; }
      var a = document.createElement('a');
      var url = URL.createObjectURL(blob);
      a.href = url;
      a.download = 'circle-crop.png';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(url); }, 1000);
      say('ดาวน์โหลดไฟล์ PNG แล้ว');
    }, 'image/png');
  });
  bCopy.addEventListener('click', function () {
    if (!src) return;
    var ok = !!(navigator.clipboard) ? !!(window.ClipboardItem) : false;
    if (!ok) { say('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูป ใช้ปุ่มดาวน์โหลดแทน'); return; }
    render().toBlob(function (blob) {
      if (!blob) { say('สร้างรูปไม่สำเร็จ ลองใหม่อีกครั้ง'); return; }
      navigator.clipboard.write([new ClipboardItem({ 'image/png': blob })]).then(
        function () { say('คัดลอกรูปภาพแล้ว'); },
        function () { say('คัดลอกไม่สำเร็จ ใช้ปุ่มดาวน์โหลดแทน'); }
      );
    }, 'image/png');
  });
  $('cc-clear').addEventListener('click', function () {
    src = null;
    hist = [];
    fileIn.value = '';
    work.style.display = 'none';
    drop.style.display = 'flex';
    msgEl.textContent = '';
  });
  fileIn.addEventListener('change', function () { loadFile(fileIn.files[0]); });
  ['dragenter', 'dragover'].forEach(function (n) {
    document.addEventListener(n, function (e) {
      e.preventDefault();
      drop.classList.add('cc-over');
    });
  });
  ['dragleave', 'drop'].forEach(function (n) {
    document.addEventListener(n, function (e) {
      e.preventDefault();
      drop.classList.remove('cc-over');
    });
  });
  document.addEventListener('drop', function (e) {
    var f = e.dataTransfer ? e.dataTransfer.files : null;
    if (f) if (f.length !== 0) loadFile(f[0]);
  });
  document.addEventListener('paste', function (e) {
    var items = e.clipboardData ? e.clipboardData.items : null;
    if (!items) return;
    for (var i = 0; i !== items.length; i++) {
      if (items[i].type.indexOf('image/') === 0) {
        loadFile(items[i].getAsFile());
        e.preventDefault();
        return;
      }
    }
  });
  window.addEventListener('resize', function () { if (src) draw(); });
  updateUi();
})();
</script>
</div>

## วิธีใช้งานเครื่องมือตัดรูปเป็นวงกลม

1. **เพิ่มรูปภาพ** – ลากไฟล์มาวางในกรอบ กด **เลือกรูปภาพ…** หรือคัดลอกรูปจากที่อื่นแล้วกด `Ctrl`+`V` (Mac: `Cmd`+`V`)
2. **ปรับวงกลม** – ลากด้านในวงกลมเพื่อเลื่อนตำแหน่ง และลากจุดสีขาวที่มุมของวงกลมเพื่อขยายหรือย่อขนาด
3. **ซูมรูป (ถ้าต้องการ)** – ใช้ปุ่ม **+** เพื่อซูมเข้า, **−** เพื่อซูมออก และ **0** เพื่อกลับไปขนาดพอดีหน้าจอ ช่วยให้จัดวงกลมได้แม่นยำขึ้นกับรูปขนาดเล็ก
4. **ครอปรูปภาพ (ถ้าต้องการแก้ต่อ)** – กด **ครอปรูปภาพ** เพื่อตัดรูปตามวงกลมทันที ถ้าไม่พอใจกด **เลิกทำ** เพื่อย้อนกลับได้
5. **บันทึกผลลัพธ์** – กด **ดาวน์โหลด** เพื่อบันทึกเป็นไฟล์ PNG พื้นหลังโปร่งใส หรือกด **คัดลอกรูปภาพ** เพื่อนำไปวางในแชตหรือโปรแกรมอื่นได้ทันที
6. **เริ่มรูปใหม่** – กด **ล้าง** เพื่อปิดรูปปัจจุบันและเลือกรูปใหม่

> หมายเหตุ: ปุ่มดาวน์โหลดและคัดลอกจะใช้ส่วนที่อยู่ในวงกลมตอนนี้ จึงไม่จำเป็นต้องกด **ครอปรูปภาพ** ก่อนทุกครั้ง

## คำอธิบายศัพท์ที่ควรรู้

- **ครอป (Crop)** – การตัดเอาเฉพาะส่วนที่ต้องการออกจากรูปภาพ ส่วนที่เหลือจะถูกตัดทิ้ง
- **ครอปวงกลม** – การตัดรูปให้เป็นทรงกลมสมบูรณ์ (สัดส่วน 1:1) นิยมใช้ทำรูปโปรไฟล์และโลโก้
- **ที่จับมุม (Handle)** – จุดวงกลมสีขาวบนขอบวงกลม ใช้ลากเพื่อปรับขนาดพื้นที่ที่จะตัด
- **ซูม (Zoom)** – การขยายหรือย่อภาพที่แสดงบนหน้าจอเพื่อดูรายละเอียด ไม่ได้เปลี่ยนขนาดไฟล์จริง
- **เลิกทำ (Undo)** – ย้อนกลับไปยังรูปก่อนการครอปครั้งล่าสุด
- **ครอบตัด: กว้าง × สูง px** – ขนาดของรูปผลลัพธ์ที่จะได้ หน่วยเป็นพิกเซล (px) ซึ่งสำหรับวงกลมจะเท่ากับเส้นผ่านศูนย์กลาง
- **พิกเซล (px)** – จุดสีเล็ก ๆ ที่ประกอบกันเป็นรูปภาพ ยิ่งมีมากยิ่งคมชัด
- **PNG** – ไฟล์รูปภาพที่รองรับความโปร่งใส เหมาะกับรูปทรงวงกลมที่ไม่ต้องการมุมสีขาวหรือสีดำ
- **พื้นหลังโปร่งใส (Transparent Background)** – พื้นที่นอกวงกลมไม่มีสี เมื่อนำไปวางบนพื้นสีอื่นจะเห็นสีนั้นทะลุออกมา
- **JPG / WebP / GIF** – รูปแบบไฟล์รูปภาพที่เครื่องมือนี้เปิดได้ นอกเหนือจาก PNG
- **คัดลอกรูปภาพ** – ส่งรูปผลลัพธ์ไปยังคลิปบอร์ดเพื่อวางต่อในแอปอื่นโดยไม่ต้องบันทึกไฟล์
- **ประมวลผลในเบราว์เซอร์** – รูปถูกจัดการบนอุปกรณ์ของคุณเองและไม่ถูกส่งไปยังเซิร์ฟเวอร์ จึงปลอดภัยต่อความเป็นส่วนตัว