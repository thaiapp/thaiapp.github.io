---
title: โปรแกรมทำรูปติดบัตร ออนไลน์ ฟรี
h1: โปรแกรมทำรูปติดบัตร
description: ทำรูปติดบัตรออนไลน์ฟรี เลือกขนาด 1 นิ้ว พาสปอร์ต วีซ่า ครอปให้พอดี เปลี่ยนสีพื้นหลัง ดาวน์โหลด JPG/PNG และจัดแผ่นพิมพ์ได้ ไม่ต้องอัปโหลดรูปหรือสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-09T09:00:00+07:00'
weight: 94
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- โปรแกรมทำรูปติดบัตร
- โปรแกรมทำรูปติดบัตร ออนไลน์
- รูปภาพ
---

<style>
.idp{max-width:100%;margin:1rem 0;font-size:15px;line-height:1.5}
.idp *{box-sizing:border-box}
.idp [hidden]{display:none!important}
.idp-drop{border:2px dashed rgba(127,127,127,.5);border-radius:12px;padding:24px 16px;text-align:center;background:rgba(127,127,127,.06)}
.idp-drop.idp-over{border-color:#2563eb;background:rgba(37,99,235,.1)}
.idp-drop small{display:block;margin-top:6px;opacity:.75}
.idp button,.idp select,.idp input{font:inherit}
.idp-btn{border:1px solid rgba(127,127,127,.5);background:rgba(127,127,127,.1);color:inherit;border-radius:8px;padding:8px 14px;cursor:pointer}
.idp-btn:hover{background:rgba(127,127,127,.22)}
.idp-pri{background:#2563eb;border-color:#2563eb;color:#fff}
.idp-pri:hover{background:#1d4ed8}
.idp-work{display:grid;gap:20px;margin-top:16px;grid-template-columns:minmax(0,1fr)}
@media(min-width:760px){.idp-work{grid-template-columns:minmax(0,340px) minmax(0,1fr)}}
.idp-stage{position:relative;width:100%;max-width:340px;margin:0 auto;line-height:0;border:1px solid rgba(127,127,127,.5);overflow:hidden;touch-action:none;cursor:grab;background:#fff}
.idp-stage canvas{width:100%;height:auto;display:block}
.idp-guide{position:absolute;left:0;right:0;border-top:2px dashed #ef4444;pointer-events:none}
.idp-guide span{position:absolute;right:4px;top:2px;font-size:11px;line-height:1.2;color:#fff;background:#ef4444;padding:1px 5px;border-radius:4px}
.idp-g1{top:10%}
.idp-g2{top:85%}
.idp-row{margin-bottom:14px}
.idp-lbl{display:block;font-weight:600;margin-bottom:4px}
.idp-row select,.idp-row input[type=number]{width:100%;padding:7px 8px;border:1px solid rgba(127,127,127,.5);border-radius:8px;background:transparent;color:inherit}
.idp-row input[type=range]{width:100%}
.idp-inline{display:flex;gap:8px;flex-wrap:wrap;align-items:center}
.idp-opts label{display:inline-flex;align-items:center;gap:6px;margin:0 14px 6px 0;cursor:pointer}
.idp-sw{width:16px;height:16px;border-radius:50%;border:1px solid rgba(127,127,127,.7);display:inline-block}
.idp-info{font-size:13px;opacity:.9;margin:6px 0}
.idp-warn{color:#d97706;font-weight:600}
.idp-sheet{margin-top:20px;padding-top:16px;border-top:1px solid rgba(127,127,127,.3)}
.idp-sheet canvas{width:100%;max-width:420px;height:auto;border:1px solid rgba(127,127,127,.5);background:#fff;display:block;margin-top:10px}
</style>
<div class="idp" id="idp-app">
<div class="idp-drop" id="idp-drop">
<input type="file" id="idp-file" accept="image/*" hidden>
<p style="margin:0"><strong>ลากรูปมาวางที่นี่</strong> หรือกด Ctrl+V เพื่อวางรูป</p>
<p style="margin:10px 0 0"><button type="button" class="idp-btn idp-pri" id="idp-pick">เลือกรูปจากอุปกรณ์</button></p>
<small>ประมวลผลในเบราว์เซอร์ทั้งหมด รูปของคุณไม่ถูกอัปโหลดไปที่ใด</small>
<small>แนะนำ: พื้นหลังเรียบ ถ่ายตรง แสงสว่างพอ</small>
<small class="idp-warn" id="idp-err"></small>
</div>
<div class="idp-work" id="idp-work" hidden>
<div>
<div class="idp-stage" id="idp-stage"><canvas id="idp-cv" width="295" height="354"></canvas><div class="idp-guide idp-g1"><span>กระหม่อม</span></div><div class="idp-guide idp-g2"><span>คาง</span></div></div>
<p class="idp-info" style="text-align:center">ลากรูปเพื่อขยับ · เลื่อนลูกกลิ้งเมาส์เพื่อซูม<br>วางกระหม่อม (รวมผม) บนเส้นบน และคางบนเส้นล่าง</p>
</div>
<div>
<div class="idp-row">
<label class="idp-lbl" for="idp-size">ขนาดรูป</label>
<select id="idp-size"></select>
<div class="idp-inline" id="idp-custom" style="margin-top:8px" hidden>
<input type="number" id="idp-cw" value="30" min="10" max="300" step="0.1" style="width:90px"> ×
<input type="number" id="idp-ch" value="40" min="10" max="300" step="0.1" style="width:90px"> มม. (กว้าง × สูง)
</div>
</div>
<div class="idp-row">
<label class="idp-lbl" for="idp-zoom">ซูม <span id="idp-zv">100%</span></label>
<input type="range" id="idp-zoom" min="50" max="400" value="100" step="1">
<label class="idp-lbl" for="idp-ang" style="margin-top:8px">ปรับองศา <span id="idp-av">0°</span></label>
<input type="range" id="idp-ang" min="-15" max="15" value="0" step="0.5">
<div class="idp-inline" style="margin-top:8px">
<button type="button" class="idp-btn" id="idp-rot">↻ หมุน 90°</button>
<button type="button" class="idp-btn" id="idp-flip">⇋ กลับด้าน</button>
<button type="button" class="idp-btn" id="idp-reset">รีเซ็ต</button>
</div>
</div>
<div class="idp-row idp-opts">
<span class="idp-lbl">พื้นหลัง</span>
<label><input type="radio" name="idp-bg" value="orig" checked> ตามต้นฉบับ</label>
<label><input type="radio" name="idp-bg" value="#ffffff"><span class="idp-sw" style="background:#fff"></span> ขาว</label>
<label><input type="radio" name="idp-bg" value="#2d7fd3"><span class="idp-sw" style="background:#2d7fd3"></span> ฟ้า</label>
<label><input type="radio" name="idp-bg" value="#d62828"><span class="idp-sw" style="background:#d62828"></span> แดง</label>
<label><input type="radio" name="idp-bg" value="custom"><input type="color" id="idp-color" value="#cfe3f7"> สีอื่น</label>
<div id="idp-bgopt" hidden>
<label class="idp-lbl" for="idp-tol" style="margin-top:6px">ความไวการแยกสีพื้นหลัง <span id="idp-tv">45</span></label>
<input type="range" id="idp-tol" min="10" max="120" value="45" step="1">
<label class="idp-lbl" for="idp-soft" style="margin-top:6px">ความนุ่มของขอบ <span id="idp-sv">1</span></label>
<input type="range" id="idp-soft" min="0" max="3" value="1" step="1">
<p class="idp-info">ใช้ได้ดีที่สุดกับพื้นหลังสีเรียบ ถ้าขอบผมไม่เรียบร้อยให้ปรับความไวหรือเลือก "ตามต้นฉบับ"</p>
</div>
</div>
<div class="idp-row idp-opts">
<span class="idp-lbl">รูปแบบไฟล์</span>
<label><input type="radio" name="idp-fmt" value="jpeg" checked> JPG</label>
<label><input type="radio" name="idp-fmt" value="png"> PNG</label>
<div class="idp-inline" style="margin-top:6px">
<label for="idp-kb">ขนาดไฟล์สูงสุด</label>
<input type="number" id="idp-kb" min="10" step="10" placeholder="ไม่จำกัด" style="width:110px"> KB
</div>
</div>
<p class="idp-info" id="idp-info"></p>
<p class="idp-info idp-warn" id="idp-up" hidden>รูปต้นฉบับมีความละเอียดต่ำกว่าขนาดที่เลือก รูปจะถูกขยายและอาจเบลอ</p>
<div class="idp-inline">
<button type="button" class="idp-btn idp-pri" id="idp-dl">ดาวน์โหลดรูป</button>
<button type="button" class="idp-btn" id="idp-sheetbtn">แผ่นพิมพ์</button>
</div>
<p class="idp-info" id="idp-msg"></p>
</div>
</div>
<div class="idp-sheet" id="idp-sheet" hidden>
<div class="idp-inline">
<label for="idp-paper"><strong>กระดาษ</strong></label>
<select id="idp-paper" style="width:auto"></select>
<label for="idp-copies"><strong>จำนวนรูป</strong></label>
<input type="number" id="idp-copies" min="1" placeholder="สูงสุด" style="width:90px">
<button type="button" class="idp-btn idp-pri" id="idp-sdl">ดาวน์โหลดแผ่นพิมพ์</button>
</div>
<p class="idp-info" id="idp-sinfo"></p>
<canvas id="idp-sc" width="300" height="200"></canvas>
</div>
</div>
<script>
(function () {
"use strict";
var $ = function (id) { return document.getElementById(id); };
var DPI = 300, MAXPX = 3600;
var PRESETS = [
  { l: "25×30 มม. — 1 นิ้ว", w: 25, h: 30 },
  { l: "30×40 มม. — เรซูเม่ / ทั่วไป", w: 30, h: 40 },
  { l: "35×45 มม. — พาสปอร์ตสากล วีซ่ายุโรป ออสเตรเลีย", w: 35, h: 45 },
  { l: "33×48 มม. — วีซ่าจีน", w: 33, h: 48 },
  { l: "51×51 มม. (2×2 นิ้ว) — พาสปอร์ต วีซ่าสหรัฐฯ", w: 51, h: 51 },
  { l: "50×70 มม. — แคนาดา", w: 50, h: 70 }
];
var PAPERS = [
  { l: "4×6 นิ้ว (102×152 มม.)", w: 101.6, h: 152.4 },
  { l: "5×7 นิ้ว (127×178 มม.)", w: 127, h: 177.8 },
  { l: "A4 (210×297 มม.)", w: 210, h: 297 },
  { l: "A5 (148×210 มม.)", w: 148, h: 210 }
];
var S = { img: null, iw: 0, ih: 0, zoom: 1, angle: 0, rot: 0, flip: false, ox: 0, oy: 0, bg: "orig", tol: 45, soft: 1, fmt: "jpeg", w: 25, h: 30 };
var cv = $("idp-cv"), ctx = cv.getContext("2d");
var raf = 0, sheetTimer = 0;
function fillSelect(el, list) {
  list.forEach(function (p, i) {
    var o = document.createElement("option");
    o.value = String(i);
    o.textContent = p.l;
    el.appendChild(o);
  });
}
fillSelect($("idp-size"), PRESETS);
var oc = document.createElement("option");
oc.value = "custom";
oc.textContent = "กำหนดเอง (มม.)";
$("idp-size").appendChild(oc);
fillSelect($("idp-paper"), PAPERS);
function dims() {
  var W = Math.round(S.w / 25.4 * DPI), H = Math.round(S.h / 25.4 * DPI);
  var m = Math.max(W, H);
  if (m > MAXPX) { var k = MAXPX / m; W = Math.round(W * k); H = Math.round(H * k); }
  return [Math.max(W, 20), Math.max(H, 20)];
}
function baseScale(W, H) {
  var sw = S.rot % 2 !== 0;
  var rw = sw ? S.ih : S.iw, rh = sw ? S.iw : S.ih;
  return Math.max(W / rw, H / rh);
}
function hexToRgb(h) {
  var n = parseInt(h.replace("#", ""), 16);
  return [(n >> 16) & 255, (n >> 8) & 255, n & 255];
}
function blur3(m, W, H) {
  var o = new Float32Array(W * H), x, y, dx, dy, xx, yy, s, k;
  for (y = 0; y < H; y++) {
    for (x = 0; x < W; x++) {
      s = 0; k = 0;
      for (dy = -1; dy <= 1; dy++) {
        yy = y + dy;
        if (yy < 0 || yy >= H) continue;
        for (dx = -1; dx <= 1; dx++) {
          xx = x + dx;
          if (xx < 0 || xx >= W) continue;
          s += m[yy * W + xx]; k++;
        }
      }
      o[y * W + x] = s / k;
    }
  }
  return o;
}
function replaceBg(W, H) {
  var id = ctx.getImageData(0, 0, W, H), d = id.data;
  var r = 0, g = 0, b = 0, n = 0, i, x, y;
  function add(px, py) { i = (py * W + px) * 4; r += d[i]; g += d[i + 1]; b += d[i + 2]; n++; }
  for (x = 0; x < W; x += 2) { add(x, 0); add(x, 1); }
  for (y = 0; y < H * 0.4; y += 2) { add(0, y); add(W - 1, y); }
  r /= n; g /= n; b /= n;
  var tol2 = S.tol * S.tol;
  var mask = new Uint8Array(W * H), stack = new Int32Array(W * H), sp = 0;
  function near(p) {
    var k = p * 4, dr = d[k] - r, dg = d[k + 1] - g, db = d[k + 2] - b;
    return dr * dr + dg * dg + db * db <= tol2;
  }
  function seed(p) { if (!mask[p] && near(p)) { mask[p] = 1; stack[sp++] = p; } }
  for (x = 0; x < W; x++) { seed(x); seed((H - 1) * W + x); }
  for (y = 0; y < H; y++) { seed(y * W); seed(y * W + W - 1); }
  while (sp > 0) {
    var p = stack[--sp], px = p % W, py = (p / W) | 0;
    if (px > 0) seed(p - 1);
    if (px < W - 1) seed(p + 1);
    if (py > 0) seed(p - W);
    if (py < H - 1) seed(p + W);
  }
  var m = new Float32Array(W * H), j;
  for (j = 0; j < m.length; j++) m[j] = mask[j];
  for (j = 0; j < S.soft; j++) m = blur3(m, W, H);
  var hex = S.bg === "custom" ? $("idp-color").value : S.bg;
  var c = hexToRgb(hex);
  for (j = 0; j < m.length; j++) {
    var a = m[j];
    if (a <= 0) continue;
    var k = j * 4;
    d[k] = d[k] * (1 - a) + c[0] * a;
    d[k + 1] = d[k + 1] * (1 - a) + c[1] * a;
    d[k + 2] = d[k + 2] * (1 - a) + c[2] * a;
  }
  ctx.putImageData(id, 0, 0);
}
function render() {
  if (!S.img) return;
  var d = dims(), W = d[0], H = d[1];
  if (cv.width !== W || cv.height !== H) { cv.width = W; cv.height = H; }
  ctx.setTransform(1, 0, 0, 1, 0, 0);
  ctx.fillStyle = "#ffffff";
  ctx.fillRect(0, 0, W, H);
  var s = baseScale(W, H) * S.zoom;
  ctx.save();
  ctx.translate(W / 2 + S.ox, H / 2 + S.oy);
  ctx.rotate((S.rot * 90 + S.angle) * Math.PI / 180);
  ctx.scale(S.flip ? -s : s, s);
  ctx.imageSmoothingEnabled = true;
  ctx.imageSmoothingQuality = "high";
  ctx.drawImage(S.img, -S.iw / 2, -S.ih / 2);
  ctx.restore();
  if (S.bg !== "orig") replaceBg(W, H);
  $("idp-info").textContent = "ผลลัพธ์: " + S.w + "×" + S.h + " มม. = " + W + "×" + H + " px (" + DPI + " DPI)";
  $("idp-up").hidden = !(s > 1.001);
  if (!$("idp-sheet").hidden) {
    clearTimeout(sheetTimer);
    sheetTimer = setTimeout(drawSheet, 250);
  }
}
function schedule() {
  if (raf) return;
  raf = requestAnimationFrame(function () { raf = 0; render(); });
}
function sync() {
  $("idp-zoom").value = String(Math.round(S.zoom * 100));
  $("idp-zv").textContent = Math.round(S.zoom * 100) + "%";
  $("idp-ang").value = String(S.angle);
  $("idp-av").textContent = S.angle + "°";
}
function resetPos() {
  S.zoom = 1; S.angle = 0; S.rot = 0; S.flip = false; S.ox = 0; S.oy = 0;
  sync();
}
function loadFile(f) {
  var err = $("idp-err");
  err.textContent = "";
  var okType = f && ((f.type && f.type.indexOf("image/") === 0) || /\.(heic|heif|jpe?g|png|webp|bmp|gif)$/i.test(f.name || ""));
  if (!okType) { err.textContent = "กรุณาเลือกไฟล์รูปภาพ"; return; }
  var url = URL.createObjectURL(f), im = new Image();
  im.onload = function () {
    var w = im.naturalWidth, h = im.naturalHeight, src = im;
    var big = Math.max(w, h);
    if (big > 3000) {
      var k = 3000 / big, t = document.createElement("canvas");
      t.width = Math.round(w * k); t.height = Math.round(h * k);
      t.getContext("2d").drawImage(im, 0, 0, t.width, t.height);
      src = t; w = t.width; h = t.height;
    }
    S.img = src; S.iw = w; S.ih = h;
    resetPos();
    $("idp-work").hidden = false;
    render();
    URL.revokeObjectURL(url);
  };
  im.onerror = function () {
    URL.revokeObjectURL(url);
    err.textContent = "เปิดรูปนี้ไม่ได้ (ไฟล์ HEIC อาจไม่รองรับในเบราว์เซอร์นี้) ลองแปลงเป็น JPG หรือ PNG ก่อน";
  };
  im.src = url;
}
/* upload */
$("idp-pick").addEventListener("click", function () { $("idp-file").click(); });
$("idp-file").addEventListener("change", function () {
  if (this.files && this.files[0]) loadFile(this.files[0]);
  this.value = "";
});
var dz = $("idp-drop");
dz.addEventListener("dragover", function (e) { e.preventDefault(); dz.classList.add("idp-over"); });
dz.addEventListener("dragleave", function () { dz.classList.remove("idp-over"); });
dz.addEventListener("drop", function (e) {
  e.preventDefault();
  dz.classList.remove("idp-over");
  if (e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0]) loadFile(e.dataTransfer.files[0]);
});
document.addEventListener("paste", function (e) {
  var it = e.clipboardData && e.clipboardData.items;
  if (!it) return;
  for (var i = 0; i < it.length; i++) {
    if (it[i].type.indexOf("image") === 0) { loadFile(it[i].getAsFile()); break; }
  }
});
/* size */
function applyCustom() {
  var w = parseFloat($("idp-cw").value), h = parseFloat($("idp-ch").value);
  if (w >= 10 && w <= 300 && h >= 10 && h <= 300) { S.w = w; S.h = h; schedule(); }
}
$("idp-size").addEventListener("change", function () {
  if (this.value === "custom") {
    $("idp-custom").hidden = false;
    applyCustom();
  } else {
    $("idp-custom").hidden = true;
    var p = PRESETS[parseInt(this.value, 10)];
    S.w = p.w; S.h = p.h;
    schedule();
  }
});
$("idp-cw").addEventListener("input", applyCustom);
$("idp-ch").addEventListener("input", applyCustom);
/* transform */
$("idp-zoom").addEventListener("input", function () { S.zoom = this.value / 100; sync(); schedule(); });
$("idp-ang").addEventListener("input", function () { S.angle = parseFloat(this.value); sync(); schedule(); });
$("idp-rot").addEventListener("click", function () { S.rot = (S.rot + 1) % 4; schedule(); });
$("idp-flip").addEventListener("click", function () { S.flip = !S.flip; schedule(); });
$("idp-reset").addEventListener("click", function () { resetPos(); schedule(); });
var stage = $("idp-stage"), drag = null;
stage.addEventListener("pointerdown", function (e) {
  if (!S.img) return;
  drag = { x: e.clientX, y: e.clientY };
  stage.setPointerCapture(e.pointerId);
  stage.style.cursor = "grabbing";
});
stage.addEventListener("pointermove", function (e) {
  if (!drag) return;
  var r = stage.getBoundingClientRect(), k = cv.width / r.width;
  S.ox += (e.clientX - drag.x) * k;
  S.oy += (e.clientY - drag.y) * k;
  drag.x = e.clientX; drag.y = e.clientY;
  schedule();
});
function endDrag() { drag = null; stage.style.cursor = "grab"; }
stage.addEventListener("pointerup", endDrag);
stage.addEventListener("pointercancel", endDrag);
stage.addEventListener("wheel", function (e) {
  if (!S.img) return;
  e.preventDefault();
  var z = S.zoom * (e.deltaY < 0 ? 1.06 : 0.94);
  S.zoom = Math.min(4, Math.max(0.5, z));
  sync();
  schedule();
}, { passive: false });
/* background */
Array.prototype.forEach.call(document.getElementsByName("idp-bg"), function (r) {
  r.addEventListener("change", function () {
    if (!this.checked) return;
    S.bg = this.value;
    $("idp-bgopt").hidden = (S.bg === "orig");
    schedule();
  });
});
$("idp-color").addEventListener("input", function () {
  var rs = document.getElementsByName("idp-bg");
  for (var i = 0; i < rs.length; i++) { if (rs[i].value === "custom") rs[i].checked = true; }
  S.bg = "custom";
  $("idp-bgopt").hidden = false;
  schedule();
});
$("idp-tol").addEventListener("input", function () { S.tol = parseInt(this.value, 10); $("idp-tv").textContent = String(S.tol); schedule(); });
$("idp-soft").addEventListener("input", function () { S.soft = parseInt(this.value, 10); $("idp-sv").textContent = String(S.soft); schedule(); });
/* format + download */
Array.prototype.forEach.call(document.getElementsByName("idp-fmt"), function (r) {
  r.addEventListener("change", function () { if (this.checked) S.fmt = this.value; });
});
function makeBlob(cb) {
  var png = S.fmt === "png", type = png ? "image/png" : "image/jpeg";
  var kb = parseFloat($("idp-kb").value);
  if (png || !(kb > 0)) { cv.toBlob(function (b) { cb(b, true); }, type, 0.95); return; }
  var max = kb * 1024, lo = 0.05, hi = 0.95, best = null, n = 0;
  (function step() {
    var q = (lo + hi) / 2;
    cv.toBlob(function (b) {
      n++;
      if (b.size <= max) { best = b; lo = q; } else { hi = q; }
      if (n < 8) step();
      else if (best) cb(best, true);
      else cv.toBlob(function (x) { cb(x, false); }, type, 0.05);
    }, type, q);
  })();
}
function saveBlob(b, name) {
  var a = document.createElement("a"), u = URL.createObjectURL(b);
  a.href = u; a.download = name;
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  setTimeout(function () { URL.revokeObjectURL(u); }, 2000);
}
$("idp-dl").addEventListener("click", function () {
  if (!S.img) return;
  makeBlob(function (b, ok) {
    saveBlob(b, "id-photo-" + S.w + "x" + S.h + "mm." + (S.fmt === "png" ? "png" : "jpg"));
    var kbs = (b.size / 1024).toFixed(1);
    $("idp-msg").textContent = ok ? "ดาวน์โหลดแล้ว · ขนาดไฟล์ " + kbs + " KB" : "บีบอัดไม่ถึงขนาดที่ตั้งไว้ ไฟล์ได้ " + kbs + " KB ลองเพิ่มค่าสูงสุดหรือเลือกขนาดรูปที่เล็กลง";
    if (S.fmt === "png" && parseFloat($("idp-kb").value) > 0) $("idp-msg").textContent += " (PNG ไม่รองรับการจำกัดขนาด ใช้ JPG แทน)";
  });
});
/* print sheet */
function drawSheet() {
  if (!S.img) return;
  var p = PAPERS[$("idp-paper").selectedIndex], k = DPI / 25.4;
  var pw = S.w, ph = S.h, m = 3, g = 2;
  function fit(A, B) {
    return { c: Math.max(0, Math.floor((A - 2 * m + g) / (pw + g))), r: Math.max(0, Math.floor((B - 2 * m + g) / (ph + g))), W: A, H: B };
  }
  var a = fit(p.w, p.h), b = fit(p.h, p.w);
  var L = (a.c * a.r >= b.c * b.r) ? a : b, max = L.c * L.r;
  var sc = $("idp-sc");
  sc.width = Math.round(L.W * k);
  sc.height = Math.round(L.H * k);
  var c = sc.getContext("2d");
  c.fillStyle = "#ffffff";
  c.fillRect(0, 0, sc.width, sc.height);
  if (max < 1) { $("idp-sinfo").textContent = "รูปใหญ่เกินกว่ากระดาษที่เลือก"; return; }
  var want = parseInt($("idp-copies").value, 10);
  if (!(want > 0) || want > max) want = max;
  var cols = Math.min(L.c, want), rows = Math.ceil(want / cols);
  var gw = cols * pw + (cols - 1) * g, gh = rows * ph + (rows - 1) * g;
  var x0 = (L.W - gw) / 2, y0 = (L.H - gh) / 2;
  for (var i = 0; i < want; i++) {
    var cx = i % cols, cy = Math.floor(i / cols);
    var x = (x0 + cx * (pw + g)) * k, y = (y0 + cy * (ph + g)) * k;
    c.drawImage(cv, x, y, pw * k, ph * k);
    c.strokeStyle = "#b5b5b5";
    c.lineWidth = 1;
    c.strokeRect(x - 0.5, y - 0.5, pw * k + 1, ph * k + 1);
  }
  $("idp-sinfo").textContent = "วางได้สูงสุด " + max + " รูป · ตอนนี้ " + want + " รูป · พิมพ์ที่ขนาด 100% (Actual size) เพื่อให้ได้ขนาดจริง";
}
$("idp-sheetbtn").addEventListener("click", function () {
  var s = $("idp-sheet");
  s.hidden = !s.hidden;
  if (!s.hidden) drawSheet();
});
$("idp-paper").addEventListener("change", drawSheet);
$("idp-copies").addEventListener("input", drawSheet);
$("idp-sdl").addEventListener("click", function () {
  $("idp-sc").toBlob(function (b) { saveBlob(b, "id-photo-sheet.jpg"); }, "image/jpeg", 0.95);
});
})();
</script>

## วิธีใช้งานโปรแกรมทำรูปติดบัตร

1. **ใส่รูป** — ลากรูปมาวางในกรอบ กดปุ่ม "เลือกรูปจากอุปกรณ์" หรือกด Ctrl+V เพื่อวางรูปจากคลิปบอร์ด รองรับไฟล์ JPG, PNG, WebP และ GIF ใช้รูปจากมือถือได้เลย ควรเป็นรูปหน้าตรง แสงพอ และพื้นหลังเรียบ
2. **เลือกขนาดรูป** — เลือกขนาดที่หน่วยงานหรือแบบฟอร์มกำหนด เช่น 1 นิ้ว หรือ 35×45 มม. ถ้าไม่มีในรายการให้เลือก "กำหนดเอง" แล้วพิมพ์กว้าง × สูงเป็นมิลลิเมตร
3. **จัดตำแหน่งใบหน้า** — ลากรูปเพื่อขยับ ใช้แถบซูมหรือเลื่อนลูกกลิ้งเมาส์เพื่อขยายและย่อ ให้กระหม่อม (รวมผม) อยู่บนเส้นประบน และคางอยู่บนเส้นประล่าง
4. **ปรับรูปให้ตรง** — ถ้ารูปเอียง ใช้แถบ "ปรับองศา" ถ้ารูปตะแคงให้กด "หมุน 90°" และกด "กลับด้าน" เมื่อต้องการพลิกซ้ายขวา กด "รีเซ็ต" เพื่อเริ่มจัดใหม่
5. **เปลี่ยนสีพื้นหลัง** — เลือกพื้นหลังขาว ฟ้า แดง หรือสีที่ต้องการ ถ้าสีพื้นหลังเดิมยังเหลือหรือขอบผมกินเข้าไป ให้ปรับ "ความไวการแยกสีพื้นหลัง" และ "ความนุ่มของขอบ" หากยังไม่พอใจให้กลับไปเลือก "ตามต้นฉบับ"
6. **ตั้งค่าไฟล์แล้วดาวน์โหลด** — เลือกรูปแบบ JPG หรือ PNG ถ้าเว็บที่ส่งเอกสารจำกัดขนาดไฟล์ ให้ใส่ "ขนาดไฟล์สูงสุด" เป็น KB (ใช้กับ JPG) จากนั้นกด "ดาวน์โหลดรูป"
7. **จัดแผ่นพิมพ์ (ถ้าต้องการ)** — กด "แผ่นพิมพ์" เลือกกระดาษและจำนวนรูป โปรแกรมจะจัดรูปซ้ำลงบนกระดาษให้เต็มแผ่น พร้อมเส้นสำหรับตัด แล้วกด "ดาวน์โหลดแผ่นพิมพ์" เวลาพิมพ์ให้เลือกขนาด 100% (Actual size) เพื่อให้ได้ขนาดจริง

## คำอธิบายศัพท์ที่ใช้ในโปรแกรม

| ศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| กระหม่อม | จุดบนสุดของศีรษะ (รวมเส้นผม) ใช้วางให้ตรงกับเส้นประบน |
| คาง | จุดล่างสุดของใบหน้า ใช้วางให้ตรงกับเส้นประล่าง |
| เส้นไกด์ | เส้นประสีแดงช่วยจัดสัดส่วนใบหน้าให้พอดีกรอบ ไม่ปรากฏในไฟล์ที่ดาวน์โหลด |
| ครอป (Crop) | การตัดรูปให้เหลือเฉพาะส่วนที่ต้องการ ในโปรแกรมนี้คือส่วนที่อยู่ในกรอบ |
| ซูม | ขยายหรือย่อรูปในกรอบ เพื่อให้ใบหน้ามีขนาดพอดีตามเกณฑ์ |
| ปรับองศา | หมุนรูปเล็กน้อย (−15° ถึง +15°) เพื่อแก้รูปที่เอียง |
| หมุน 90° | หมุนรูปทีละ 90 องศา ใช้กับรูปที่ตะแคง |
| กลับด้าน | พลิกรูปซ้าย–ขวาเหมือนเงาในกระจก |
| มม. (มิลลิเมตร) | หน่วยความยาวจริงของรูปบนกระดาษ ขนาดรูปติดบัตรมักระบุเป็นมม. |
| นิ้ว | หน่วยความยาวอีกแบบ 1 นิ้ว เท่ากับ 25.4 มม. ชื่อ "รูป 1 นิ้ว" เป็นชื่อเรียกขนาด ไม่ได้ยาว 1 นิ้วพอดี |
| px (พิกเซล) | จุดสีเล็กๆ ที่ประกอบเป็นภาพดิจิทัล จำนวนพิกเซลยิ่งมาก รูปยิ่งคมชัด |
| DPI | จำนวนพิกเซลต่อ 1 นิ้ว โปรแกรมนี้ใช้ 300 DPI ซึ่งเป็นความละเอียดมาตรฐานสำหรับงานพิมพ์ |
| รูปถูกขยาย | เมื่อรูปต้นฉบับมีพิกเซลน้อยกว่าที่ขนาดผลลัพธ์ต้องใช้ ระบบต้องยืดภาพ ทำให้เบลอ |
| พื้นหลัง | สีด้านหลังตัวบุคคล เอกสารส่วนใหญ่กำหนดเป็นสีขาวหรือสีฟ้า |
| ความไวการแยกสีพื้นหลัง | ค่ายิ่งสูง ระบบยิ่งนับสีใกล้เคียงว่าเป็นพื้นหลังมากขึ้น ถ้าสูงเกินไปอาจกินส่วนผมหรือเสื้อ |
| ความนุ่มของขอบ | ทำให้ขอบระหว่างตัวบุคคลกับพื้นหลังเนียนขึ้น ค่า 0 คือขอบคมที่สุด |
| JPG | ไฟล์รูปบีบอัด ขนาดเล็ก เหมาะกับการอัปโหลดเอกสารออนไลน์ |
| PNG | ไฟล์รูปคุณภาพคงเดิม ไม่สูญเสียรายละเอียด แต่ขนาดไฟล์ใหญ่กว่า JPG |
| ขนาดไฟล์สูงสุด (KB) | เพดานขนาดไฟล์ที่ต้องการ 1 MB เท่ากับ 1,024 KB โปรแกรมจะลดคุณภาพ JPG ให้ไม่เกินค่านี้ |
| แผ่นพิมพ์ | กระดาษที่จัดรูปติดบัตรซ้ำหลายใบในแผ่นเดียว เพื่อพิมพ์และตัดแยก |
| จำนวนรูป | จำนวนรูปที่ต้องการวางบนแผ่นพิมพ์ ถ้าเว้นว่าง โปรแกรมจะวางให้มากที่สุดเท่าที่กระดาษรับได้ |
| Actual size | ตัวเลือกตอนพิมพ์ที่ไม่ย่อหรือขยายภาพ ต้องเลือกเพื่อให้รูปได้ขนาดจริง |

## เคล็ดลับให้ได้รูปติดบัตรที่ผ่านเกณฑ์

- ตรวจสอบเงื่อนไขของหน่วยงานที่รับรูปทุกครั้ง เช่น สีพื้นหลัง สีหน้า การสวมแว่น และอายุของรูป เพราะแต่ละที่ไม่เหมือนกัน
- ถ่ายรูปในที่ที่มีแสงสม่ำเสมอ ไม่มีเงาบนใบหน้า และไม่มีเงาของคนหรือสิ่งของบนผนังด้านหลัง
- ใช้ผนังสีเรียบเป็นฉากหลัง จะแยกพื้นหลังได้สะอาดกว่าฉากที่มีลวดลาย
- ใช้รูปความละเอียดสูง ถ่ายด้วยกล้องหลังของมือถือ จะพิมพ์ออกมาคมกว่ารูปที่ถ่ายด้วยกล้องหน้า

## คำถามที่พบบ่อย

### รูปของฉันถูกอัปโหลดไปเก็บไว้ที่เซิร์ฟเวอร์หรือไม่

ไม่ การครอป ปรับพื้นหลัง และสร้างไฟล์ทั้งหมดทำงานในเบราว์เซอร์ของคุณ รูปไม่ถูกส่งออกจากอุปกรณ์

### ใช้ได้ฟรีหรือไม่ ต้องสมัครสมาชิกหรือเปล่า

ใช้ได้ฟรีและไม่ต้องสมัครสมาชิก

### ทำไมขอบผมหรือพื้นหลังดูไม่เนียน

เครื่องมือแยกพื้นหลังด้วยการเทียบสี จึงเหมาะกับรูปที่มีพื้นหลังสีเรียบ ลองปรับ "ความไวการแยกสีพื้นหลัง" ทีละน้อย หรือถ่ายรูปหน้าผนังสีเรียบใหม่