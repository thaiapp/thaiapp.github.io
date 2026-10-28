---
title: ไม้วัดมุม ออนไลน์ ฟรี
description: 'ไม้วัดมุมออนไลน์ฟรี วัดมุมและความชันได้ทันที ลากหมุดปรับมุม หรือเปิดกล้องมือถือวัดมุมวัตถุจริง ใช้ได้ทั้งมือถือ แท็บเล็ต คอมพิวเตอร์ ไม่ต้องติดตั้งแอปเพิ่ม'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-28T09:00:00+07:00'
weight: 15
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ไม้วัดมุม
- ไม้วัดมุม ออนไลน์
- ทดสอบและวัดค่า
---

<style>
.pa-wrap{max-width:760px;margin:0 auto 28px;color:#1b2733}
.pa-stage{position:relative;width:100%;aspect-ratio:4/3;min-height:240px;background:#ffffff;border:1px solid #cfd6df;border-radius:12px;overflow:hidden}
.pa-video{position:absolute;left:0;top:0;width:100%;height:100%;object-fit:cover;background:#000000;display:none}
.pa-canvas{position:absolute;left:0;top:0;width:100%;height:100%;touch-action:none;cursor:crosshair;-webkit-user-select:none;user-select:none}
.pa-bar{display:flex;flex-wrap:wrap;gap:10px;align-items:center;margin-top:12px}
.pa-btn{appearance:none;-webkit-appearance:none;background:#ffffff;color:#1b2733;border:1px solid #9aa7b6;border-radius:8px;padding:9px 14px;font-size:15px;line-height:1.2;cursor:pointer}
.pa-btn:hover{background:#eef2f6}
.pa-btn:disabled{opacity:.5;cursor:not-allowed}
.pa-field{display:flex;align-items:center;gap:6px;font-size:15px}
.pa-num{width:92px;padding:8px 10px;border:1px solid #9aa7b6;border-radius:8px;font-size:16px;background:#ffffff;color:#1b2733}
.pa-range{width:130px}
.pa-msg{min-height:20px;margin-top:8px;font-size:14px;color:#b71c1c}
.pa-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(170px,1fr));gap:8px;margin-top:12px}
.pa-item{background:#ffffff;border:1px solid #d9e0e8;border-radius:10px;padding:8px 12px}
.pa-item span{display:block;font-size:12px;color:#5b6b7c}
.pa-item b{display:block;font-size:17px;color:#1b2733;word-break:break-word}
</style>
<div class="pa-wrap" id="pa-wrap">
<div class="pa-stage" id="pa-stage">
<video class="pa-video" id="pa-video" autoplay muted playsinline></video>
<canvas class="pa-canvas" id="pa-canvas"></canvas>
</div>
<div class="pa-bar">
<label class="pa-field" for="pa-angle">ค่ามุม <input class="pa-num" id="pa-angle" type="number" min="0" max="180" step="0.1" inputmode="decimal" value="45.0"> °</label>
<label class="pa-field" for="pa-size">ขนาด <input class="pa-range" id="pa-size" type="range" min="25" max="48" step="1" value="38"></label>
<label class="pa-field" for="pa-snap"><input id="pa-snap" type="checkbox"> ปัดเป็นองศาเต็ม</label>
</div>
<div class="pa-bar">
<button class="pa-btn" id="pa-cam" type="button">เปิดกล้อง</button>
<button class="pa-btn" id="pa-flip" type="button" disabled>สลับกล้อง</button>
<button class="pa-btn" id="pa-reset" type="button">รีเซ็ต</button>
</div>
<div class="pa-msg" id="pa-msg" role="status"></div>
<div class="pa-grid">
<div class="pa-item"><span>มุมที่วัดได้</span><b id="pa-o-deg">45.0°</b></div>
<div class="pa-item"><span>ชนิดของมุม</span><b id="pa-o-type">มุมแหลม</b></div>
<div class="pa-item"><span>เรเดียน</span><b id="pa-o-rad">0.7854 rad</b></div>
<div class="pa-item"><span>มุมกลับ (360° - ค่ามุม)</span><b id="pa-o-ref">315.0°</b></div>
<div class="pa-item"><span>มุมประกอบมุมฉาก (90° - ค่ามุม)</span><b id="pa-o-comp">45.0°</b></div>
<div class="pa-item"><span>มุมประกอบมุมตรง (180° - ค่ามุม)</span><b id="pa-o-supp">135.0°</b></div>
<div class="pa-item"><span>แขนที่ 2 เทียบแนวนอน</span><b id="pa-o-slope">45.0° (100.0%)</b></div>
</div>
</div>
<script>
(function () {
  'use strict';
  var stage = document.getElementById('pa-stage');
  var canvas = document.getElementById('pa-canvas');
  var video = document.getElementById('pa-video');
  var inEl = document.getElementById('pa-angle');
  var sizeEl = document.getElementById('pa-size');
  var snapEl = document.getElementById('pa-snap');
  var btnCam = document.getElementById('pa-cam');
  var btnFlip = document.getElementById('pa-flip');
  var btnReset = document.getElementById('pa-reset');
  var msgEl = document.getElementById('pa-msg');
  var out = {
    deg: document.getElementById('pa-o-deg'),
    type: document.getElementById('pa-o-type'),
    rad: document.getElementById('pa-o-rad'),
    ref: document.getElementById('pa-o-ref'),
    comp: document.getElementById('pa-o-comp'),
    supp: document.getElementById('pa-o-supp'),
    slope: document.getElementById('pa-o-slope')
  };
  if (!stage || !canvas || !canvas.getContext) { return; }
  var ctx = canvas.getContext('2d');
  var W = 300, H = 225, dpr = 1;
  var st = { cx: 0.5, cy: 0.55, L: 0.38, a1: 0, a2: 45, side: 1 };
  var drag = null;
  var stream = null;
  var facing = 'environment';
  function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
  function rad(d) { return d * Math.PI / 180; }
  function norm(a) {
    a = a % 360;
    if (a > 180) { a -= 360; }
    if (a <= -180) { a += 360; }
    return a;
  }
  function geom() {
    var m = Math.min(W, H);
    return { cx: st.cx * W, cy: st.cy * H, L: st.L * m, R: st.L * m * 0.84 };
  }
  function pt(g, deg, len) {
    return { x: g.cx + len * Math.cos(rad(deg)), y: g.cy - len * Math.sin(rad(deg)) };
  }
  function angleTo(g, x, y) {
    return Math.atan2(-(y - g.cy), x - g.cx) * 180 / Math.PI;
  }
  function info() {
    var d = norm(st.a2 - st.a1);
    var side = st.side;
    if (d > 0) { side = 1; } else if (d < 0) { side = -1; }
    st.side = side;
    return { val: Math.abs(d), side: side };
  }
  function snapVal(a) {
    return snapEl.checked ? Math.round(a) : Math.round(a * 10) / 10;
  }
  function typeName(v) {
    if (v < 0.05) { return 'มุมศูนย์'; }
    if (Math.abs(v - 90) < 0.05) { return 'มุมฉาก'; }
    if (v > 179.95) { return 'มุมตรง'; }
    if (v < 90) { return 'มุมแหลม'; }
    return 'มุมป้าน';
  }
  function slopeText() {
    var e = Math.abs(norm(st.a2));
    if (e > 90) { e = 180 - e; }
    if (e >= 89.95) { return e.toFixed(1) + '° (ตั้งฉาก)'; }
    return e.toFixed(1) + '° (' + (Math.tan(rad(e)) * 100).toFixed(1) + '%)';
  }
  function ui() {
    var v = info().val;
    if (document.activeElement !== inEl) { inEl.value = v.toFixed(1); }
    out.deg.textContent = v.toFixed(1) + '°';
    out.type.textContent = typeName(v);
    out.rad.textContent = rad(v).toFixed(4) + ' rad';
    out.ref.textContent = (360 - v).toFixed(1) + '°';
    out.comp.textContent = v <= 90 ? (90 - v).toFixed(1) + '°' : '-';
    out.supp.textContent = (180 - v).toFixed(1) + '°';
    out.slope.textContent = slopeText();
  }
  function line(x1, y1, x2, y2, color, w) {
    ctx.beginPath();
    ctx.moveTo(x1, y1);
    ctx.lineTo(x2, y2);
    ctx.strokeStyle = color;
    ctx.lineWidth = w;
    ctx.lineCap = 'round';
    ctx.stroke();
  }
  function label(txt, x, y, size, color) {
    ctx.font = '600 ' + size + 'px sans-serif';
    ctx.textAlign = 'center';
    ctx.textBaseline = 'middle';
    ctx.lineJoin = 'round';
    ctx.lineWidth = 3;
    ctx.strokeStyle = 'rgba(255,255,255,0.92)';
    ctx.strokeText(txt, x, y);
    ctx.fillStyle = color;
    ctx.fillText(txt, x, y);
  }
  function pin(p, fill, r) {
    ctx.beginPath();
    ctx.arc(p.x, p.y, r, 0, Math.PI * 2);
    ctx.fillStyle = fill;
    ctx.fill();
    ctx.lineWidth = 3;
    ctx.strokeStyle = '#ffffff';
    ctx.stroke();
    ctx.beginPath();
    ctx.arc(p.x, p.y, r * 0.28, 0, Math.PI * 2);
    ctx.fillStyle = '#ffffff';
    ctx.fill();
  }
  function draw() {
    var g = geom();
    var f = info();
    var s = f.side;
    var ccw = (s === 1);
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.clearRect(0, 0, W, H);
    ctx.beginPath();
    ctx.moveTo(g.cx, g.cy);
    ctx.arc(g.cx, g.cy, g.R, -rad(st.a1), -rad(st.a1 + s * 180), ccw);
    ctx.closePath();
    ctx.fillStyle = 'rgba(255,255,255,0.55)';
    ctx.fill();
    ctx.lineWidth = 1.5;
    ctx.strokeStyle = '#1b2733';
    ctx.stroke();
    if (f.val > 0.05) {
      ctx.beginPath();
      ctx.moveTo(g.cx, g.cy);
      ctx.arc(g.cx, g.cy, g.R * 0.55, -rad(st.a1), -rad(st.a2), ccw);
      ctx.closePath();
      ctx.fillStyle = 'rgba(229,57,53,0.22)';
      ctx.fill();
    }
    var step = (g.R * Math.PI / 180 >= 2.2) ? 1 : 5;
    var labelStep = g.R >= 150 ? 10 : (g.R >= 100 ? 20 : 30);
    var fs = clamp(g.R / 16, 10, 13);
    for (var t = 0; t <= 180; t += step) {
      var isTen = (t % 10 === 0);
      var isFive = (t % 5 === 0);
      var len = isTen ? 16 : (isFive ? 11 : 6);
      var d = st.a1 + s * t;
      var p1 = pt(g, d, g.R);
      var p2 = pt(g, d, g.R - len);
      line(p1.x, p1.y, p2.x, p2.y, '#1b2733', isTen ? 1.4 : 0.8);
      if (t % labelStep === 0) {
        var pl = pt(g, d, g.R - 28);
        label(String(t), pl.x, pl.y, fs, '#1b2733');
      }
    }
    var e1 = pt(g, st.a1, g.L);
    var e2 = pt(g, st.a2, g.L);
    line(g.cx, g.cy, e1.x, e1.y, '#1b2733', 3);
    line(g.cx, g.cy, e2.x, e2.y, '#e53935', 3);
    var mid = st.a1 + s * f.val / 2;
    var tp = pt(g, mid, f.val < 25 ? g.R * 0.66 : g.R * 0.36);
    label(f.val.toFixed(1) + '\u00B0', tp.x, tp.y, 15, '#b71c1c');
    pin(e1, '#e53935', 11);
    pin(e2, '#e53935', 11);
    pin({ x: g.cx, y: g.cy }, '#1b2733', 9);
    ui();
  }
  function resize() {
    var r = stage.getBoundingClientRect();
    W = Math.max(1, Math.round(r.width));
    H = Math.max(1, Math.round(r.height));
    dpr = window.devicePixelRatio || 1;
    canvas.width = Math.round(W * dpr);
    canvas.height = Math.round(H * dpr);
    draw();
  }
  function pos(ev) {
    var r = canvas.getBoundingClientRect();
    return { x: (ev.clientX - r.left) * (W / r.width), y: (ev.clientY - r.top) * (H / r.height) };
  }
  function dist(x1, y1, x2, y2) { return Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)); }
  canvas.addEventListener('pointerdown', function (ev) {
    var p = pos(ev);
    var g = geom();
    var e1 = pt(g, st.a1, g.L);
    var e2 = pt(g, st.a2, g.L);
    var cands = [
      { id: 'a2', x: e2.x, y: e2.y },
      { id: 'a1', x: e1.x, y: e1.y },
      { id: 'v', x: g.cx, y: g.cy }
    ];
    var best = null;
    var bd = 1e9;
    for (var i = 0; i !== cands.length; i++) {
      var dd = dist(p.x, p.y, cands[i].x, cands[i].y);
      if (dd < bd) { bd = dd; best = cands[i].id; }
    }
    if (best !== null && bd <= 26) {
      drag = best;
    } else {
      drag = 'a2';
      st.a2 = snapVal(angleTo(g, p.x, p.y));
      draw();
    }
    try { canvas.setPointerCapture(ev.pointerId); } catch (err) { }
    ev.preventDefault();
  });
  canvas.addEventListener('pointermove', function (ev) {
    if (drag === null) { return; }
    var p = pos(ev);
    var g = geom();
    if (drag === 'v') {
      st.cx = clamp(p.x / W, 0.02, 0.98);
      st.cy = clamp(p.y / H, 0.02, 0.98);
    } else if (drag === 'a1') {
      st.a1 = snapVal(angleTo(g, p.x, p.y));
    } else {
      st.a2 = snapVal(angleTo(g, p.x, p.y));
    }
    draw();
    ev.preventDefault();
  });
  function endDrag() { drag = null; }
  canvas.addEventListener('pointerup', endDrag);
  canvas.addEventListener('pointercancel', endDrag);
  inEl.addEventListener('input', function () {
    var v = parseFloat(inEl.value);
    if (isNaN(v)) { return; }
    v = clamp(v, 0, 180);
    var f = info();
    st.a2 = st.a1 + f.side * v;
    draw();
  });
  inEl.addEventListener('change', function () {
    inEl.value = info().val.toFixed(1);
  });
  sizeEl.addEventListener('input', function () {
    st.L = clamp(parseFloat(sizeEl.value) / 100, 0.25, 0.48);
    draw();
  });
  btnReset.addEventListener('click', function () {
    st.cx = 0.5;
    st.cy = 0.55;
    st.L = 0.38;
    st.a1 = 0;
    st.a2 = 45;
    st.side = 1;
    sizeEl.value = '38';
    draw();
  });
  function setMsg(t) { msgEl.textContent = t || ''; }
  function releaseTracks() {
    if (stream) {
      stream.getTracks().forEach(function (tr) { tr.stop(); });
      stream = null;
    }
  }
  function stopCam() {
    releaseTracks();
    video.srcObject = null;
    video.style.display = 'none';
    btnCam.textContent = 'เปิดกล้อง';
    btnFlip.disabled = true;
  }
  function startCam() {
    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
      setMsg('เบราว์เซอร์นี้ไม่รองรับการเปิดกล้อง');
      return;
    }
    releaseTracks();
    navigator.mediaDevices.getUserMedia({ video: { facingMode: { ideal: facing } }, audio: false })
      .then(function (s) {
        stream = s;
        video.srcObject = s;
        video.style.transform = facing === 'user' ? 'scaleX(-1)' : 'none';
        video.style.display = 'block';
        var pr = video.play();
        if (pr && pr.catch) { pr.catch(function () { }); }
        btnCam.textContent = 'ปิดกล้อง';
        btnFlip.disabled = false;
        setMsg('');
      })
      .catch(function () {
        stopCam();
        setMsg('ไม่สามารถเปิดกล้องได้ กรุณาอนุญาตการใช้กล้อง และเปิดหน้านี้ผ่าน HTTPS');
      });
  }
  btnCam.addEventListener('click', function () {
    if (stream) { stopCam(); setMsg(''); } else { startCam(); }
  });
  btnFlip.addEventListener('click', function () {
    facing = (facing === 'environment') ? 'user' : 'environment';
    startCam();
  });
  window.addEventListener('pagehide', releaseTracks);
  if (window.ResizeObserver) {
    new ResizeObserver(resize).observe(stage);
  } else {
    window.addEventListener('resize', resize);
  }
  resize();
})();
</script>

## วิธีใช้ไม้วัดมุมออนไลน์

1. **ตั้งจุดยอดมุม** ลากจุดกลมสีเข้มตรงกลางไปวางที่จุดยอดของมุมที่ต้องการวัด
2. **วางแขนทั้งสองข้าง** ลากหมุดสีแดงที่ปลายแขนที่ 1 (เส้นสีเข้ม) และแขนที่ 2 (เส้นสีแดง) ให้ทับด้านของมุม หรือแตะ/คลิกที่ใดก็ได้บนพื้นที่วัด แขนที่ 2 จะหันไปยังจุดนั้นทันที
3. **อ่านค่ามุม** ดูได้จากช่อง "ค่ามุม" ตัวเลขบนกราฟ หรือตัวเลขบนสเกลที่แขนที่ 2 ชี้อยู่ ค่าที่ได้เป็นองศา (0° ถึง 180°)
4. **กำหนดมุมเอง** พิมพ์ตัวเลขในช่อง "ค่ามุม" แขนที่ 2 จะหมุนไปยังมุมนั้นโดยอัตโนมัติ
5. **วัดวัตถุจริง** กด "เปิดกล้อง" แล้วอนุญาตการใช้กล้อง หันกล้องไปที่วัตถุ จากนั้นลากหมุดให้ตรงกับขอบของวัตถุ บนมือถือกด "สลับกล้อง" เพื่อเปลี่ยนระหว่างกล้องหลังและกล้องหน้า
6. **ปรับให้เหมาะกับงาน** ใช้แถบ "ขนาด" ขยายหรือย่อไม้วัดมุม เลือก "ปัดเป็นองศาเต็ม" หากต้องการค่าเป็นจำนวนเต็ม และกด "รีเซ็ต" เพื่อเริ่มใหม่

**เคล็ดลับ:** ถือโทรศัพท์ให้นิ่งและขนานกับวัตถุเพื่อลดความคลาดเคลื่อน ภาพจากกล้องแสดงผลบนอุปกรณ์ของคุณเท่านั้น ไม่มีการอัปโหลดไปที่ใด

## คำศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| ไม้วัดมุม | เครื่องมือสำหรับวัดขนาดของมุม มักเป็นรูปครึ่งวงกลมที่มีสเกล 0° ถึง 180° |
| องศา (°) | หน่วยวัดขนาดของมุม โดยหนึ่งรอบวงกลมเท่ากับ 360° |
| เรเดียน (rad) | หน่วยวัดมุมอีกแบบที่ใช้ในคณิตศาสตร์และวิทยาศาสตร์ 180° เท่ากับ π เรเดียน |
| จุดยอดมุม | จุดที่แขนสองข้างของมุมมาบรรจบกัน คือจุดกลมสีเข้มในเครื่องมือ |
| แขนของมุม | เส้นตรงสองเส้นที่ประกอบกันเป็นมุม แขนที่ 1 เป็นเส้นอ้างอิง (0°) และแขนที่ 2 เป็นเส้นที่ใช้อ่านค่า |
| หมุดสีแดง | จุดจับที่ปลายแขน ลากเพื่อปรับทิศทางของแขนนั้น |
| สเกล | ขีดและตัวเลขรอบครึ่งวงกลมที่ใช้อ่านค่ามุม |
| ค่ามุม | ขนาดของมุมระหว่างแขนที่ 1 และแขนที่ 2 มีหน่วยเป็นองศา |
| มุมแหลม | มุมที่มีขนาดมากกว่า 0° แต่น้อยกว่า 90° |
| มุมฉาก | มุมที่มีขนาดเท่ากับ 90° พอดี เหมือนมุมของกระดาษ A4 |
| มุมป้าน | มุมที่มีขนาดมากกว่า 90° แต่น้อยกว่า 180° |
| มุมตรง | มุมที่มีขนาดเท่ากับ 180° แขนสองข้างเรียงเป็นเส้นตรง |
| มุมกลับ | มุมที่มีขนาดมากกว่า 180° หาได้จาก 360° ลบค่ามุม |
| มุมประกอบมุมฉาก | มุมที่รวมกับค่ามุมแล้วได้ 90° ใช้ได้เมื่อค่ามุมไม่เกิน 90° |
| มุมประกอบมุมตรง | มุมที่รวมกับค่ามุมแล้วได้ 180° |
| ความชัน | ระดับความเอียงของเส้นเทียบแนวนอน แสดงเป็นองศาและเปอร์เซ็นต์ (ความสูงต่อระยะทางแนวนอน × 100) |
| ปัดเป็นองศาเต็ม | ตัวเลือกที่ปัดค่ามุมเป็นจำนวนเต็ม เหมาะกับการวัดแบบรวดเร็ว |