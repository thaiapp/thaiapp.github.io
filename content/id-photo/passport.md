---
title: โปรแกรมทำรูปพาสปอร์ต ออนไลน์ ฟรี
h1: โปรแกรมทำรูปพาสปอร์ต
description: โปรแกรมทำรูปพาสปอร์ต จัดการรูปภาพได้ง่ายในเบราว์เซอร์ มีเส้นไกด์ตำแหน่งศีรษะ เปลี่ยนพื้นหลังเป็นสีขาว ย่อขนาดไฟล์ ทำแผ่นพิมพ์ได้ ใช้ฟรี ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-10T09:00:00+07:00'
weight: 95
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- โปรแกรมทำรูปพาสปอร์ต
- โปรแกรมทำรูปพาสปอร์ต ออนไลน์
- รูปภาพ
---

<style>
.pp{max-width:780px;margin:1rem auto;color:inherit}
.pp *{box-sizing:border-box}
.pp [hidden]{display:none!important}
.pp-box{border:1px solid rgba(128,128,128,.35);border-radius:10px;padding:14px;margin:12px 0}
.pp-drop{border-style:dashed;text-align:center;padding:26px 14px}
.pp-drop.on{background:rgba(37,99,235,.08);border-color:#2563eb}
.pp-btn,.pp label.pp-btn{display:inline-block;margin:2px 0;padding:8px 14px;border:1px solid #2563eb;background:#2563eb;color:#fff;border-radius:8px;cursor:pointer;font:inherit;font-size:.95em;text-align:center}
.pp-btn.alt,.pp label.pp-btn.alt{background:transparent;color:inherit;border-color:rgba(128,128,128,.6)}
.pp-btn:focus-visible,.pp input:focus-visible,.pp select:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
.pp label{display:block;font-size:.9em;margin:10px 0 4px}
.pp select,.pp input[type=number]{width:100%;padding:7px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font:inherit}
.pp input[type=range]{width:100%}
.pp-row{display:flex;gap:10px;flex-wrap:wrap;align-items:flex-end}
.pp-row>*{flex:1 1 130px}
.pp-grid{display:flex;gap:18px;flex-wrap:wrap}
.pp-l{flex:1 1 300px}
.pp-r{flex:1 1 280px}
.pp-stage{display:flex;justify-content:center}
.pp-stage canvas{touch-action:none;cursor:grab;border:1px solid rgba(128,128,128,.5);background:#fff}
.pp-view{display:flex;justify-content:center;margin:8px 0}
.pp-view canvas{max-width:100%;height:auto;border:1px solid rgba(128,128,128,.5);background:#fff}
.pp-note{font-size:.85em;opacity:.78;margin:6px 0}
.pp-msg{color:#d97706;font-size:.9em;margin:6px 0;min-height:1em}
.pp-modal{position:fixed;inset:0;background:rgba(0,0,0,.85);display:flex;flex-direction:column;align-items:center;justify-content:center;gap:12px;padding:12px;z-index:9999;color:#fff}
.pp-cam{position:relative;width:min(92vw,420px);overflow:hidden;background:#000}
.pp-cam video,.pp-cam canvas{position:absolute;left:0;top:0;width:100%;height:100%}
.pp-cam video{object-fit:cover;transform:scaleX(-1)}
</style>
<div class="pp" id="pp">
<div class="pp-box pp-drop" id="pp-drop">
<p><strong>วางรูปที่นี่</strong></p>
<p class="pp-note">ลากรูปมาวางที่นี่ หรือกด Ctrl+V เพื่อวาง · ใช้รูปจากมือถือได้เลย พื้นหลังเรียบ ถ่ายตรง แสงสว่างพอ</p>
<label class="pp-btn" for="pp-file">เลือกรูป</label>
<button type="button" class="pp-btn alt" id="pp-cam-open">ถ่ายรูป</button>
<input type="file" id="pp-file" accept="image/*" hidden>
<p class="pp-note">ประมวลผลทั้งหมดในเบราว์เซอร์ของคุณ รูปของคุณไม่ถูกส่งออกจากอุปกรณ์เลย</p>
<p class="pp-msg" id="pp-err" role="alert"></p>
</div>
<div id="pp-editor" hidden>
<div class="pp-box">
<label for="pp-spec">ประเภทรูป / ประเทศ</label>
<select id="pp-spec"></select>
<div class="pp-row" id="pp-custom" hidden>
<div><label for="pp-cw">กว้าง (มม.)</label><input type="number" id="pp-cw" value="35" min="10" max="200" step="0.5"></div>
<div><label for="pp-ch">สูง (มม.)</label><input type="number" id="pp-ch" value="45" min="10" max="300" step="0.5"></div>
</div>
<p class="pp-note" id="pp-info"></p>
<p class="pp-note" id="pp-src"></p>
</div>
<div class="pp-grid">
<div class="pp-l">
<div class="pp-stage"><canvas id="pp-cv" aria-label="กรอบจัดตำแหน่งรูป ลากเพื่อขยับ"></canvas></div>
<p class="pp-note">ลากเพื่อขยับรูป เลื่อนล้อเมาส์หรือใช้สองนิ้วเพื่อซูม ให้กระหม่อม (รวมเส้นผม) อยู่บนเส้นบน และคางอยู่บนเส้นล่าง</p>
</div>
<div class="pp-r">
<label for="pp-zoom">ซูม</label>
<input type="range" id="pp-zoom" min="0.3" max="4" step="0.01" value="1">
<label for="pp-ang">ปรับรูปที่เอียง (<span id="pp-angv">0</span>°)</label>
<input type="range" id="pp-ang" min="-15" max="15" step="0.1" value="0">
<div class="pp-row">
<button type="button" class="pp-btn alt" id="pp-rot">↻ หมุน 90°</button>
<button type="button" class="pp-btn alt" id="pp-flip">⇋ กลับซ้าย-ขวา</button>
<button type="button" class="pp-btn alt" id="pp-reset">รีเซ็ต</button>
</div>
<label for="pp-bg">พื้นหลัง</label>
<select id="pp-bg">
<option value="orig">ใช้พื้นหลังเดิม</option>
<option value="white">สีขาว</option>
<option value="gray">เทาอ่อน</option>
<option value="lblue">ฟ้าอ่อน</option>
<option value="blue">น้ำเงิน</option>
<option value="red">แดง</option>
</select>
<div id="pp-tolw" hidden>
<label for="pp-tol">ความไวในการลบพื้นหลัง (<span id="pp-tolv">45</span>)</label>
<input type="range" id="pp-tol" min="10" max="120" step="1" value="45">
<p class="pp-note">ใช้ได้ดีกับผนังหรือฉากหลังสีเรียบ หากยังเหลือคราบพื้นหลังให้เพิ่มค่า หากเนื้อผมหรือเสื้อถูกลบให้ลดค่า</p>
</div>
<div class="pp-row">
<div><label for="pp-fmt">รูปแบบไฟล์</label><select id="pp-fmt"><option value="jpg">JPG</option><option value="png">PNG</option></select></div>
<div><label for="pp-dpi">ความละเอียด</label><select id="pp-dpi"><option value="150">150 dpi</option><option value="300" selected>300 dpi</option><option value="600">600 dpi</option></select></div>
</div>
<div class="pp-row">
<div><label for="pp-max">ขนาดไฟล์สูงสุด (เว้นว่าง = ไม่จำกัด)</label><input type="number" id="pp-max" min="1" step="1" placeholder="เช่น 240"></div>
<div><label for="pp-unit">หน่วย</label><select id="pp-unit"><option value="1024">KB</option><option value="1048576">MB</option></select></div>
</div>
</div>
</div>
<div class="pp-box">
<strong>ผลลัพธ์</strong>
<p class="pp-note" id="pp-size"></p>
<div class="pp-view"><canvas id="pp-out"></canvas></div>
<button type="button" class="pp-btn" id="pp-dl">ดาวน์โหลดรูป</button>
<p class="pp-msg" id="pp-msg" role="status"></p>
</div>
<div class="pp-box">
<strong>แผ่นพิมพ์</strong>
<div class="pp-row">
<div><label for="pp-paper">กระดาษ</label><select id="pp-paper"></select></div>
<div><label for="pp-n">จำนวนรูป (เว้นว่าง = เต็มแผ่น)</label><input type="number" id="pp-n" min="1" step="1"></div>
</div>
<p class="pp-note" id="pp-sheetinfo"></p>
<div class="pp-view"><canvas id="pp-sheet"></canvas></div>
<button type="button" class="pp-btn" id="pp-dls">ดาวน์โหลดแผ่นพิมพ์</button>
</div>
</div>
<div class="pp-modal" id="pp-modal" hidden>
<div class="pp-cam" id="pp-camwrap"><video id="pp-vid" autoplay playsinline muted></video><canvas id="pp-camg"></canvas></div>
<p class="pp-note">ขยับตัวให้เต็มกรอบ: ให้กระหม่อม (รวมเส้นผม) อยู่บนเส้นบน และคางอยู่บนเส้นล่าง</p>
<div>
<button type="button" class="pp-btn alt" id="pp-cam-cancel">ยกเลิก</button>
<button type="button" class="pp-btn" id="pp-cam-shot">ถ่าย</button>
</div>
</div>
</div>

<script>
(function () {
'use strict';
var $ = function (id) { return document.getElementById(id); };
var SPECS = [
{ n: 'ไทย — พาสปอร์ต (40×60 มม.)', w: 40, h: 60, a: 42, b: 48, bg: 'ขาว', s: 'กระทรวงการต่างประเทศ' },
{ n: 'อินโดนีเซีย — พาสปอร์ต (40×60 มม.)', w: 40, h: 60, a: 42, b: 48, bg: 'ขาว', s: 'กรมตรวจคนเข้าเมืองอินโดนีเซีย' },
{ n: 'สหรัฐอเมริกา — พาสปอร์ต / วีซ่า (51×51 มม.)', w: 51, h: 51, a: 25, b: 35, bg: 'ขาว', s: 'U.S. Department of State' },
{ n: 'สหราชอาณาจักร — พาสปอร์ต (35×45 มม.)', w: 35, h: 45, a: 29, b: 34, bg: 'ครีมหรือเทาอ่อน', s: 'HM Passport Office (GOV.UK)' },
{ n: 'สหภาพยุโรป / เชงเกน — วีซ่า (35×45 มม.)', w: 35, h: 45, a: 32, b: 36, bg: 'ขาวหรือเทาอ่อน', s: 'สถานทูต/ศูนย์ยื่นวีซ่าของประเทศปลายทาง' },
{ n: 'แคนาดา — พาสปอร์ต (50×70 มม.)', w: 50, h: 70, a: 31, b: 36, bg: 'ขาว', s: 'IRCC / Passport Canada' },
{ n: 'ออสเตรเลีย — พาสปอร์ต (35×45 มม.)', w: 35, h: 45, a: 32, b: 36, bg: 'ขาวหรือครีม', s: 'Australian Passport Office' },
{ n: 'ญี่ปุ่น — พาสปอร์ต (35×45 มม.)', w: 35, h: 45, a: 32, b: 36, bg: 'ขาว', s: 'กระทรวงการต่างประเทศญี่ปุ่น' },
{ n: 'เกาหลีใต้ — พาสปอร์ต (35×45 มม.)', w: 35, h: 45, a: 32, b: 36, bg: 'ขาว', s: 'กระทรวงการต่างประเทศเกาหลีใต้' },
{ n: 'จีน — พาสปอร์ต / วีซ่า (33×48 มม.)', w: 33, h: 48, a: 28, b: 33, bg: 'ขาว', s: 'สถานทูต/ศูนย์ยื่นวีซ่าจีน' },
{ n: 'อินเดีย — พาสปอร์ต / วีซ่า (51×51 มม.)', w: 51, h: 51, a: 25, b: 35, bg: 'ขาว', s: 'Passport Seva / สถานทูตอินเดีย' },
{ n: 'สิงคโปร์ — พาสปอร์ต (35×45 มม.)', w: 35, h: 45, a: 25, b: 35, bg: 'ขาว', s: 'ICA Singapore' },
{ n: 'มาเลเซีย — พาสปอร์ต (35×50 มม.)', w: 35, h: 50, a: 35, b: 40, bg: 'ขาว', s: 'กรมตรวจคนเข้าเมืองมาเลเซีย' },
{ n: 'กำหนดเอง…', w: 35, h: 45, a: 0, b: 0, bg: 'ตามที่หน่วยงานกำหนด', s: '', custom: true }
];
var PAPERS = [['3R (89×127 มม.)', 89, 127], ['4R (102×152 มม. · 4×6 นิ้ว)', 102, 152], ['5R (127×178 มม. · 5×7 นิ้ว)', 127, 178], ['6R (152×203 มม. · 6×8 นิ้ว)', 152, 203], ['A4 (210×297 มม.)', 210, 297]];
var COL = { white: '#ffffff', gray: '#e4e4e4', lblue: '#cfe2f3', blue: '#2f6db5', red: '#c8342f' };
var spec = SPECS[0], img = null, iw = 0, ih = 0, SW = 0, SH = 0, timer = 0, stream = null, lastRes = null;
var V = { z: 1, x: 0, y: 0, ang: 0, rot: 0, flip: 1 };
var cv = $('pp-cv'), cx = cv.getContext('2d');
SPECS.forEach(function (s, i) { var o = document.createElement('option'); o.value = i; o.textContent = s.n; $('pp-spec').appendChild(o); });
PAPERS.forEach(function (p, i) { var o = document.createElement('option'); o.value = i; o.textContent = p[0]; if (i === 1) o.selected = true; $('pp-paper').appendChild(o); });
function err(t) { $('pp-err').textContent = t || ''; }
function readSpec() {
  spec = SPECS[+$('pp-spec').value];
  $('pp-custom').hidden = !spec.custom;
  if (spec.custom) {
    spec.w = Math.max(10, +$('pp-cw').value || 35);
    spec.h = Math.max(10, +$('pp-ch').value || 45);
    spec.a = Math.round(spec.h * 0.7 * 10) / 10;
    spec.b = Math.round(spec.h * 0.8 * 10) / 10;
  }
  $('pp-info').textContent = 'ขนาด ' + spec.w + '×' + spec.h + ' มม. · ความสูงศีรษะที่แนะนำ ' + spec.a + '–' + spec.b + ' มม. · พื้นหลัง: ' + spec.bg;
  $('pp-src').textContent = spec.s ? 'ตรวจสอบเงื่อนไขล่าสุดจากแหล่งข้อมูลทางการ: ' + spec.s : 'โปรดตรวจสอบเงื่อนไขกับหน่วยงานที่รับยื่นก่อนใช้งานจริง';
}
function setStage() {
  var box = $('pp-cv').parentNode.clientWidth || 320;
  var W = Math.min(box, 340), H = W * spec.h / spec.w;
  if (H > 480) { H = 480; W = H * spec.w / spec.h; }
  var d = window.devicePixelRatio || 1;
  cv.style.width = W + 'px'; cv.style.height = H + 'px';
  cv.width = Math.round(W * d); cv.height = Math.round(H * d);
  SW = cv.width; SH = cv.height;
}
function draw(c, W, H, bg) {
  c.setTransform(1, 0, 0, 1, 0, 0);
  c.fillStyle = bg || '#fff';
  c.fillRect(0, 0, W, H);
  if (!img) return;
  var odd = V.rot % 2 !== 0, bw = odd ? ih : iw, bh = odd ? iw : ih;
  var s = Math.max(W / bw, H / bh) * V.z;
  c.imageSmoothingEnabled = true;
  c.imageSmoothingQuality = 'high';
  c.translate(W / 2 + V.x * W, H / 2 + V.y * W);
  c.scale(V.flip, 1);
  c.rotate((V.rot * 90 + V.ang) * Math.PI / 180);
  c.scale(s, s);
  c.drawImage(img, -iw / 2, -ih / 2);
  c.setTransform(1, 0, 0, 1, 0, 0);
}
function guides(c, W, H) {
  var k = H / spec.h, hm = (spec.a + spec.b) / 2, top = (spec.h - hm) * 0.4;
  var yC = top * k, yMin = (top + spec.a) * k, yMax = (top + spec.b) * k, yM = (top + hm) * k;
  var fs = Math.max(11, Math.round(W / 24));
  c.save();
  c.fillStyle = 'rgba(37,99,235,.16)';
  c.fillRect(0, yMin, W, yMax - yMin);
  c.lineWidth = Math.max(1.5, W / 220);
  c.strokeStyle = '#e11d48';
  c.beginPath(); c.moveTo(0, yC); c.lineTo(W, yC); c.stroke();
  c.strokeStyle = '#2563eb';
  c.beginPath(); c.moveTo(0, yM); c.lineTo(W, yM); c.stroke();
  c.setLineDash([6, 6]);
  c.strokeStyle = 'rgba(255,255,255,.9)';
  c.beginPath(); c.moveTo(W / 2, 0); c.lineTo(W / 2, H); c.stroke();
  c.setLineDash([]);
  c.font = fs + 'px sans-serif';
  c.fillStyle = '#e11d48'; c.fillText('กระหม่อม', 6, yC - 4);
  c.fillStyle = '#2563eb'; c.fillText('คาง', 6, yM - 4);
  c.restore();
}
function preview() { draw(cx, SW, SH, '#fff'); guides(cx, SW, SH); }
function hex(h) { return [parseInt(h.substr(1, 2), 16), parseInt(h.substr(3, 2), 16), parseInt(h.substr(5, 2), 16)]; }
function removeBg(c, key, tol) {
  var w = c.width, h = c.height, g = c.getContext('2d'), d = g.getImageData(0, 0, w, h), p = d.data, n = w * h;
  var bg = hex(COL[key]), q = Math.max(4, Math.round(Math.min(w, h) * 0.05)), refs = [];
  [[0, 0], [w - q, 0]].forEach(function (o) {
    var r = 0, gg = 0, b = 0, k = 0;
    for (var j = 0; j < q; j++) for (var i = 0; i < q; i++) { var t = ((o[1] + j) * w + o[0] + i) * 4; r += p[t]; gg += p[t + 1]; b += p[t + 2]; k++; }
    refs.push([r / k, gg / k, b / k]);
  });
  var T = tol * tol, m = new Uint8Array(n), st = new Int32Array(n), sp = 0;
  function match(i) {
    var t = i * 4, best = 1e9;
    for (var k = 0; k < refs.length; k++) {
      var dr = p[t] - refs[k][0], dg = p[t + 1] - refs[k][1], db = p[t + 2] - refs[k][2], e = dr * dr + dg * dg + db * db;
      if (e < best) best = e;
    }
    return best <= T;
  }
  function push(i) { if (!m[i] && match(i)) { m[i] = 1; st[sp++] = i; } }
  var i, j;
  for (i = 0; i < w; i++) { push(i); push((h - 1) * w + i); }
  for (j = 0; j < h; j++) { push(j * w); push(j * w + w - 1); }
  while (sp) {
    var v = st[--sp], X = v % w, Y = (v - X) / w;
    if (X > 0) push(v - 1);
    if (X < w - 1) push(v + 1);
    if (Y > 0) push(v - w);
    if (Y < h - 1) push(v + w);
  }
  for (j = 0; j < h; j++) {
    for (i = 0; i < w; i++) {
      var s = 0, cnt = 0;
      for (var dy = -1; dy <= 1; dy++) {
        var yy = j + dy;
        if (yy < 0 || yy >= h) continue;
        for (var dx = -1; dx <= 1; dx++) {
          var xx = i + dx;
          if (xx < 0 || xx >= w) continue;
          s += m[yy * w + xx]; cnt++;
        }
      }
      var a = s / cnt;
      if (a > 0) {
        var t2 = (j * w + i) * 4;
        p[t2] += (bg[0] - p[t2]) * a;
        p[t2 + 1] += (bg[1] - p[t2 + 1]) * a;
        p[t2 + 2] += (bg[2] - p[t2 + 2]) * a;
      }
    }
  }
  g.putImageData(d, 0, 0);
}
function build(dpi) {
  var w = Math.max(50, Math.round(spec.w / 25.4 * dpi)), h = Math.max(50, Math.round(spec.h / 25.4 * dpi));
  var c = document.createElement('canvas');
  c.width = w; c.height = h;
  draw(c.getContext('2d'), w, h, '#fff');
  var key = $('pp-bg').value;
  if (key !== 'orig') removeBg(c, key, +$('pp-tol').value);
  return c;
}
function updateResult() {
  if (!img) return;
  lastRes = build(300);
  var o = $('pp-out');
  o.width = lastRes.width; o.height = lastRes.height;
  o.getContext('2d').drawImage(lastRes, 0, 0);
  o.style.maxHeight = '360px';
  o.style.width = 'auto';
  var dpi = +$('pp-dpi').value;
  $('pp-size').textContent = 'ขนาดพิมพ์ ' + spec.w + '×' + spec.h + ' มม. · ไฟล์ที่ดาวน์โหลด ' + Math.round(spec.w / 25.4 * dpi) + '×' + Math.round(spec.h / 25.4 * dpi) + ' px';
  updateSheet();
}
function refresh() {
  if (!img) return;
  preview();
  clearTimeout(timer);
  timer = setTimeout(updateResult, 250);
}
function setZoom(z) {
  V.z = Math.min(4, Math.max(0.3, z));
  $('pp-zoom').value = V.z;
}
function resetView() {
  V.z = 1; V.x = 0; V.y = 0; V.ang = 0; V.rot = 0; V.flip = 1;
  $('pp-zoom').value = 1; $('pp-ang').value = 0; $('pp-angv').textContent = '0';
}
function setImg(src) {
  img = src;
  iw = src.naturalWidth || src.width;
  ih = src.naturalHeight || src.height;
  err('');
  $('pp-editor').hidden = false;
  resetView();
  readSpec();
  setStage();
  refresh();
  $('pp-editor').scrollIntoView({ behavior: 'smooth', block: 'start' });
}
function loadFile(f) {
  if (!f) return;
  var u = URL.createObjectURL(f), im = new Image();
  im.onload = function () {
    var s = Math.max(im.naturalWidth, im.naturalHeight), src = im;
    if (s > 4096) {
      var k = 4096 / s, c = document.createElement('canvas');
      c.width = Math.round(im.naturalWidth * k); c.height = Math.round(im.naturalHeight * k);
      c.getContext('2d').drawImage(im, 0, 0, c.width, c.height);
      src = c;
    }
    URL.revokeObjectURL(u);
    setImg(src);
  };
  im.onerror = function () {
    URL.revokeObjectURL(u);
    err('เปิดรูปนี้ไม่ได้ ลองใช้ไฟล์ JPG หรือ PNG (ไฟล์ HEIC อาจไม่รองรับในเบราว์เซอร์นี้)');
  };
  im.src = u;
}
$('pp-file').addEventListener('change', function (e) { loadFile(e.target.files[0]); e.target.value = ''; });
var drop = $('pp-drop');
['dragenter', 'dragover'].forEach(function (n) { drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.add('on'); }); });
['dragleave', 'drop'].forEach(function (n) { drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.remove('on'); }); });
drop.addEventListener('drop', function (e) {
  var f = e.dataTransfer && e.dataTransfer.files[0];
  if (f && f.type.indexOf('image/') === 0) loadFile(f); else err('กรุณาเลือกไฟล์รูปภาพ');
});
document.addEventListener('paste', function (e) {
  var items = (e.clipboardData && e.clipboardData.items) || [];
  for (var i = 0; i < items.length; i++) {
    if (items[i].type.indexOf('image/') === 0) { loadFile(items[i].getAsFile()); e.preventDefault(); return; }
  }
});
var ptrs = {}, lastD = 0;
cv.addEventListener('pointerdown', function (e) {
  cv.setPointerCapture(e.pointerId);
  ptrs[e.pointerId] = { x: e.clientX, y: e.clientY };
  lastD = 0;
  cv.style.cursor = 'grabbing';
});
cv.addEventListener('pointermove', function (e) {
  var p = ptrs[e.pointerId];
  if (!p || !img) return;
  var ids = Object.keys(ptrs), rw = cv.getBoundingClientRect().width;
  if (ids.length === 1) { V.x += (e.clientX - p.x) / rw; V.y += (e.clientY - p.y) / rw; }
  ptrs[e.pointerId] = { x: e.clientX, y: e.clientY };
  if (ids.length === 2) {
    var a = ptrs[ids[0]], b = ptrs[ids[1]], d = Math.hypot(a.x - b.x, a.y - b.y);
    if (lastD) setZoom(V.z * d / lastD);
    lastD = d;
  }
  refresh();
});
function endPtr(e) { delete ptrs[e.pointerId]; lastD = 0; cv.style.cursor = 'grab'; }
cv.addEventListener('pointerup', endPtr);
cv.addEventListener('pointercancel', endPtr);
cv.addEventListener('wheel', function (e) { if (!img) return; e.preventDefault(); setZoom(V.z * (e.deltaY < 0 ? 1.05 : 0.95)); refresh(); }, { passive: false });
$('pp-zoom').addEventListener('input', function () { V.z = +this.value; refresh(); });
$('pp-ang').addEventListener('input', function () { V.ang = +this.value; $('pp-angv').textContent = this.value; refresh(); });
$('pp-rot').addEventListener('click', function () { V.rot = (V.rot + 1) % 4; refresh(); });
$('pp-flip').addEventListener('click', function () { V.flip = -V.flip; refresh(); });
$('pp-reset').addEventListener('click', function () { resetView(); refresh(); });
$('pp-spec').addEventListener('change', function () { readSpec(); setStage(); refresh(); });
['pp-cw', 'pp-ch'].forEach(function (id) { $(id).addEventListener('input', function () { readSpec(); setStage(); refresh(); }); });
$('pp-bg').addEventListener('change', function () { $('pp-tolw').hidden = this.value === 'orig'; refresh(); });
$('pp-tol').addEventListener('input', function () { $('pp-tolv').textContent = this.value; refresh(); });
$('pp-dpi').addEventListener('change', updateResult);
window.addEventListener('resize', function () { if (img) { setStage(); refresh(); } });
function toBlob(c, t, q) { return new Promise(function (r) { c.toBlob(r, t, q); }); }
function fmtSize(b) { return b >= 1048576 ? (b / 1048576).toFixed(2) + ' MB' : Math.round(b / 1024) + ' KB'; }
function setDpi(b, dpi) {
  if (b.type !== 'image/jpeg') return Promise.resolve(b);
  return b.arrayBuffer().then(function (buf) {
    var u = new Uint8Array(buf);
    if (u[2] === 255 && u[3] === 224 && u[6] === 74 && u[7] === 70) {
      u[13] = 1; u[14] = dpi >> 8; u[15] = dpi & 255; u[16] = dpi >> 8; u[17] = dpi & 255;
      return new Blob([u], { type: 'image/jpeg' });
    }
    return b;
  });
}
async function exportCv(c, fmt, max, dpi) {
  var type = fmt === 'png' ? 'image/png' : 'image/jpeg', b = await toBlob(c, type, 0.92), cur = c, guard = 0;
  if (max && b.size > max) {
    if (fmt === 'jpg') {
      var lo = 0.2, hi = 0.92;
      for (var i = 0; i < 7; i++) {
        var mid = (lo + hi) / 2, t = await toBlob(c, type, mid);
        if (t.size <= max) { lo = mid; b = t; } else { hi = mid; }
      }
    }
    while (b.size > max && guard++ < 25 && cur.width > 100) {
      var f = Math.min(0.95, Math.sqrt(max / b.size) * 0.95), n = document.createElement('canvas');
      n.width = Math.max(100, Math.round(cur.width * f));
      n.height = Math.max(100, Math.round(cur.height * f));
      n.getContext('2d').drawImage(cur, 0, 0, n.width, n.height);
      cur = n;
      b = await toBlob(n, type, fmt === 'jpg' ? 0.85 : undefined);
    }
  }
  var realDpi = Math.round(dpi * cur.width / c.width);
  b = await setDpi(b, realDpi);
  return { blob: b, w: cur.width, h: cur.height, ok: !max || b.size <= max };
}
function save(blob, name) {
  var a = document.createElement('a');
  a.href = URL.createObjectURL(blob);
  a.download = name;
  document.body.appendChild(a);
  a.click();
  setTimeout(function () { URL.revokeObjectURL(a.href); a.remove(); }, 1500);
}
$('pp-dl').addEventListener('click', async function () {
  if (!img) return;
  var btn = this, msg = $('pp-msg');
  btn.disabled = true; msg.textContent = 'กำลังสร้างไฟล์...';
  try {
    var dpi = +$('pp-dpi').value, fmt = $('pp-fmt').value;
    var max = Math.round((+$('pp-max').value || 0) * (+$('pp-unit').value));
    var r = await exportCv(build(dpi), fmt, max, dpi);
    save(r.blob, 'passport-photo.' + (fmt === 'png' ? 'png' : 'jpg'));
    msg.textContent = 'ดาวน์โหลดแล้ว: ' + r.w + '×' + r.h + ' px · ' + fmtSize(r.blob.size) + (r.ok ? '' : ' (ยังเกินขนาดที่กำหนด ลองใช้ JPG)');
  } catch (e) {
    msg.textContent = 'สร้างไฟล์ไม่สำเร็จ ลองลดความละเอียดแล้วลองใหม่';
  }
  btn.disabled = false;
});
function layout(pw, ph) {
  var M = 4, G = 2, best = null;
  [[pw, ph], [ph, pw]].forEach(function (o) {
    var cols = Math.floor((o[0] - 2 * M + G) / (spec.w + G)), rows = Math.floor((o[1] - 2 * M + G) / (spec.h + G));
    var n = Math.max(0, cols) * Math.max(0, rows);
    if (!best || n > best.n) best = { W: o[0], H: o[1], cols: cols, rows: rows, n: n };
  });
  return best;
}
function makeSheet() {
  var p = PAPERS[+$('pp-paper').value], L = layout(p[1], p[2]);
  if (!lastRes || L.n < 1) return null;
  var want = parseInt($('pp-n').value, 10), n = want > 0 ? Math.min(want, L.n) : L.n;
  var k = 300 / 25.4, G = 2, c = document.createElement('canvas');
  c.width = Math.round(L.W * k); c.height = Math.round(L.H * k);
  var g = c.getContext('2d');
  g.fillStyle = '#fff'; g.fillRect(0, 0, c.width, c.height);
  g.imageSmoothingQuality = 'high';
  g.strokeStyle = '#b5b5b5'; g.lineWidth = 1;
  var tw = L.cols * spec.w + (L.cols - 1) * G, th = L.rows * spec.h + (L.rows - 1) * G;
  var ox = (L.W - tw) / 2, oy = (L.H - th) / 2;
  for (var i = 0; i < n; i++) {
    var px = (ox + (i % L.cols) * (spec.w + G)) * k, py = (oy + Math.floor(i / L.cols) * (spec.h + G)) * k;
    g.drawImage(lastRes, px, py, spec.w * k, spec.h * k);
    g.strokeRect(px - 1, py - 1, spec.w * k + 2, spec.h * k + 2);
  }
  return { c: c, n: n, max: L.n, name: p[0] };
}
function updateSheet() {
  var s = makeSheet(), sc = $('pp-sheet');
  if (!s) {
    sc.width = 10; sc.height = 10;
    $('pp-sheetinfo').textContent = 'รูปขนาดนี้ใหญ่เกินกว่าจะวางบนกระดาษที่เลือก กรุณาเลือกกระดาษที่ใหญ่ขึ้น';
    return;
  }
  sc.width = Math.round(s.c.width / 2); sc.height = Math.round(s.c.height / 2);
  sc.getContext('2d').drawImage(s.c, 0, 0, sc.width, sc.height);
  sc.style.maxHeight = '420px'; sc.style.width = 'auto';
  $('pp-sheetinfo').textContent = 'วางได้ ' + s.n + ' รูป (สูงสุด ' + s.max + ' รูป) · ' + s.name + ' · พิมพ์ที่ 300 dpi ขนาดจริง 100%';
}
$('pp-paper').addEventListener('change', updateSheet);
$('pp-n').addEventListener('input', updateSheet);
$('pp-dls').addEventListener('click', async function () {
  var s = makeSheet();
  if (!s) return;
  var fmt = $('pp-fmt').value, r = await exportCv(s.c, fmt, 0, 300);
  save(r.blob, 'passport-sheet.' + (fmt === 'png' ? 'png' : 'jpg'));
});
function stopCam() {
  if (stream) { stream.getTracks().forEach(function (t) { t.stop(); }); stream = null; }
  $('pp-modal').hidden = true;
}
$('pp-cam-open').addEventListener('click', async function () {
  if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
    err('เบราว์เซอร์นี้ไม่รองรับกล้อง หรือหน้าเว็บไม่ได้เปิดผ่าน HTTPS');
    return;
  }
  try {
    stream = await navigator.mediaDevices.getUserMedia({ video: { facingMode: 'user', width: { ideal: 1920 }, height: { ideal: 1920 } }, audio: false });
  } catch (e) {
    err('เปิดกล้องไม่ได้ กรุณาอนุญาตการใช้กล้องในเบราว์เซอร์');
    return;
  }
  readSpec();
  var wrap = $('pp-camwrap'), g = $('pp-camg');
  wrap.style.aspectRatio = spec.w + ' / ' + spec.h;
  $('pp-vid').srcObject = stream;
  $('pp-modal').hidden = false;
  var r = wrap.getBoundingClientRect();
  g.width = Math.round(r.width || 360); g.height = Math.round(r.height || 360 * spec.h / spec.w);
  guides(g.getContext('2d'), g.width, g.height);
});
$('pp-cam-cancel').addEventListener('click', stopCam);
$('pp-cam-shot').addEventListener('click', function () {
  var v = $('pp-vid'), vw = v.videoWidth, vh = v.videoHeight;
  if (!vw || !vh) return;
  var ar = spec.w / spec.h, sw = vw, sh = vh;
  if (vw / vh > ar) { sw = vh * ar; } else { sh = vw / ar; }
  var c = document.createElement('canvas');
  c.width = Math.round(sw); c.height = Math.round(sh);
  c.getContext('2d').drawImage(v, (vw - sw) / 2, (vh - sh) / 2, sw, sh, 0, 0, c.width, c.height);
  stopCam();
  setImg(c);
});
})();
</script>

## วิธีใช้งานโปรแกรมทำรูปพาสปอร์ต

1. **เพิ่มรูป** — กด "เลือกรูป" ลากไฟล์มาวางในกรอบ กด `Ctrl`+`V` เพื่อวางรูปจากคลิปบอร์ด หรือกด "ถ่ายรูป" เพื่อใช้กล้อง ควรใช้รูปที่ถ่ายตรงหน้า พื้นหลังเรียบ และแสงสว่างพอ
2. **เลือกประเภทรูป / ประเทศ** — ขนาดรูปและความสูงศีรษะของแต่ละประเทศไม่เท่ากัน เลือกประเทศที่ออกเอกสาร หรือเลือก "กำหนดเอง…" แล้วกรอกขนาดเป็นมิลลิเมตร
3. **จัดตำแหน่งใบหน้า** — ลากรูปให้ใบหน้าอยู่กึ่งกลางเส้นประแนวตั้ง ซูมเข้า-ออกให้กระหม่อม (รวมเส้นผม) อยู่บนเส้นบน และคางอยู่บนเส้นล่าง หากรูปเอียงให้ใช้แถบ "ปรับรูปที่เอียง" หรือกด "หมุน 90°"
4. **เปลี่ยนพื้นหลัง (ถ้าต้องการ)** — เลือกสีพื้นหลังตามที่หน่วยงานกำหนด แล้วปรับ "ความไวในการลบพื้นหลัง" จนขอบผมและเสื้อดูเป็นธรรมชาติ
5. **ตั้งค่าไฟล์** — เลือกรูปแบบไฟล์ (JPG หรือ PNG) ความละเอียด และขนาดไฟล์สูงสุด หากช่องทางยื่นคำร้องจำกัดขนาด เช่น 240 KB โปรแกรมจะบีบอัดให้พอดีโดยอัตโนมัติ
6. **ดาวน์โหลด** — ตรวจดูภาพในส่วน "ผลลัพธ์" แล้วกด "ดาวน์โหลดรูป" ได้ทันที
7. **ทำแผ่นพิมพ์ (ถ้าต้องการ)** — เลือกขนาดกระดาษและจำนวนรูป ดูตัวอย่างการจัดวาง แล้วกด "ดาวน์โหลดแผ่นพิมพ์" นำไปพิมพ์ที่ร้านถ่ายรูปหรือเครื่องพิมพ์ที่บ้านด้วยขนาดจริง 100% (Actual size)

รูปทั้งหมดถูกประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดไปยังเซิร์ฟเวอร์

## คำอธิบายศัพท์

- **กระหม่อม** — จุดบนสุดของศีรษะ (รวมเส้นผม) ต้องอยู่ตรงเส้นบนของไกด์
- **คาง** — จุดล่างสุดของคาง ต้องอยู่ตรงเส้นล่างของไกด์ ช่วงสีฟ้าคือช่วงความสูงศีรษะที่แนะนำ
- **เส้นไกด์** — เส้นช่วยจัดตำแหน่งศีรษะ ใบหน้าที่เล็กหรือใหญ่เกินไปเป็นสาเหตุหลักที่รูปถูกปฏิเสธ เส้นนี้จะไม่ติดไปกับรูปที่ดาวน์โหลด
- **ประเภทรูป / ประเทศ** — ชุดขนาดรูปมาตรฐานของแต่ละประเทศ ควรตรวจสอบเงื่อนไขล่าสุดกับหน่วยงานที่รับยื่นก่อนใช้งานจริง
- **มม. (มิลลิเมตร)** — หน่วยขนาดรูปที่พิมพ์ออกมาจริง เช่น 35×45 มม.
- **ซูม** — ขยายหรือย่อรูปให้ใบหน้ามีขนาดพอดีกับเส้นไกด์
- **ปรับรูปที่เอียง** — หมุนรูปเล็กน้อย (±15°) เพื่อให้ศีรษะและไหล่ตั้งตรง
- **หมุน 90°** — หมุนรูปทีละ 90 องศา ใช้เมื่อรูปที่ถ่ายด้วยมือถือกลับด้าน
- **กลับซ้าย-ขวา** — พลิกรูปเป็นภาพสะท้อน เช่น รูปจากกล้องหน้าที่ถูกกลับด้านมา
- **รีเซ็ต** — คืนค่าซูม ตำแหน่ง การหมุน และการพลิกเป็นค่าเริ่มต้น
- **พื้นหลัง** — สีฉากหลังของรูป เลือก "ใช้พื้นหลังเดิม" หากไม่ต้องการเปลี่ยน
- **ความไวในการลบพื้นหลัง** — ค่ายิ่งสูงยิ่งลบสีใกล้เคียงพื้นหลังมาก แต่เสี่ยงลบส่วนผมหรือเสื้อที่สีคล้ายกัน
- **รูปแบบไฟล์ (JPG / PNG)** — JPG ไฟล์เล็ก เหมาะกับการอัปโหลดและพิมพ์ ส่วน PNG คมชัดไม่สูญเสียรายละเอียดแต่ไฟล์ใหญ่กว่า
- **ความละเอียด (dpi)** — จำนวนจุดต่อนิ้ว ยิ่งสูงยิ่งคม และไฟล์ยิ่งใหญ่ โดยทั่วไปใช้ 300 dpi สำหรับการพิมพ์
- **px (พิกเซล)** — หน่วยขนาดรูปบนหน้าจอ ใช้ตรวจว่ารูปตรงกับขนาดที่ฟอร์มออนไลน์กำหนดหรือไม่
- **ขนาดไฟล์สูงสุด (KB / MB)** — เพดานขนาดไฟล์ตามที่ช่องทางยื่นคำร้องกำหนด โปรแกรมจะลดคุณภาพหรือขนาดภาพให้พอดี
- **แผ่นพิมพ์** — กระดาษที่จัดวางรูปซ้ำหลายใบ พร้อมเส้นขอบบางๆ สำหรับตัด
- **3R / 4R / 5R / 6R** — ขนาดกระดาษภาพถ่ายมาตรฐาน (4R ≈ 4×6 นิ้ว) ที่ร้านล้างอัดรูปทั่วไปใช้
- **A4** — กระดาษขนาด 210×297 มม. ที่ใช้กับเครื่องพิมพ์ตามบ้านและสำนักงาน
- **จำนวนรูป** — จำนวนรูปที่ต้องการบนแผ่นเดียว เว้นว่างเพื่อให้วางเต็มแผ่น
- **ขนาดจริง 100% (Actual size)** — ตัวเลือกตอนพิมพ์ที่ไม่ย่อหรือขยายภาพ เพื่อให้ขนาดรูปตรงตามมาตรฐาน