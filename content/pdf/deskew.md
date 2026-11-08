---
title: แก้ PDF เอียง ออนไลน์ ฟรี
h1: แก้ PDF เอียง ออนไลน์
description: แก้ PDF เอียง ออนไลน์ ปรับหน้าสแกนเอียงให้ตรงอัตโนมัติ ช่วยให้งานเอกสารเสร็จเร็วขึ้น เหมาะกับงานออฟฟิศและการเรียน เริ่มใช้ได้ในไม่กี่วินาที ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-08T09:00:00+07:00'
weight: 88
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- แก้ PDF เอียง ออนไลน์
- PDF และไฟล์
---

<style>
.dsk{margin:1rem 0 2rem;color:inherit}
.dsk [hidden]{display:none!important}
.dsk *{box-sizing:border-box}
.dsk-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:2rem 1rem;text-align:center}
.dsk-drop.dsk-over{border-color:#2563eb;background:rgba(37,99,235,.08)}
.dsk-drop p{margin:.5rem 0}
.dsk-muted{font-size:.9em;opacity:.75}
.dsk-status{min-height:1.5em;margin:.75rem 0;font-size:.95em}
.dsk-status.dsk-err{color:#dc2626}
.dsk-btn{font:inherit;padding:.5rem .9rem;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:rgba(128,128,128,.12);color:inherit;cursor:pointer;touch-action:manipulation;user-select:none;-webkit-user-select:none}
.dsk-btn:hover:not(:disabled){background:rgba(128,128,128,.22)}
.dsk-btn:disabled{opacity:.45;cursor:not-allowed}
.dsk-btn.dsk-primary{background:#2563eb;border-color:#2563eb;color:#fff}
.dsk-btn.dsk-primary:hover:not(:disabled){background:#1d4ed8}
.dsk-btn:focus-visible,.dsk-chip:focus-visible,.dsk input:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
.dsk-bar,.dsk-opts,.dsk-ctrl,.dsk-nav,.dsk-list{display:flex;flex-wrap:wrap;align-items:center;gap:.5rem;margin:.5rem 0}
.dsk-name{overflow-wrap:anywhere}
.dsk-spacer{flex:1 1 auto}
.dsk-opts label,.dsk-ctrl label{display:inline-flex;align-items:center;gap:.4rem}
.dsk-opts input[type=color]{width:2.2rem;height:2rem;padding:0;border:1px solid rgba(128,128,128,.55);border-radius:6px;background:none}
.dsk-list{max-height:7.5rem;overflow:auto}
.dsk-ok{color:#16a34a}
.dsk-chip{font:inherit;min-width:2.4rem;padding:.2rem .6rem;border:1px solid rgba(128,128,128,.55);border-radius:999px;background:transparent;color:inherit;cursor:pointer}
.dsk-chip.dsk-on{background:#2563eb;border-color:#2563eb;color:#fff}
.dsk-nav{justify-content:center}
.dsk-stagewrap{text-align:center;max-width:100%}
.dsk-stage{position:relative;display:inline-block;max-width:100%;overflow:hidden;line-height:0;box-shadow:0 0 0 1px rgba(128,128,128,.5)}
.dsk-stage.dsk-alpha{background:repeating-conic-gradient(#d4d4d4 0 25%,#fff 0 50%) 0 0/16px 16px}
.dsk-stage canvas{display:block;width:auto;height:auto;max-width:100%;max-height:72vh;transform-origin:50% 50%}
.dsk-grid{position:absolute;top:0;right:0;bottom:0;left:0;pointer-events:none;background-image:linear-gradient(rgba(239,68,68,.45) 1px,transparent 1px),linear-gradient(90deg,rgba(239,68,68,.45) 1px,transparent 1px);background-size:24px 24px}
.dsk-ctrl{justify-content:center}
.dsk-ctrl input[type=range]{width:min(260px,60vw)}
.dsk-ctrl input[type=number]{width:5.2rem;font:inherit;padding:.35rem .5rem;border:1px solid rgba(128,128,128,.55);border-radius:6px;background:transparent;color:inherit}
</style>
<div class="dsk" id="dsk-app">
<div class="dsk-drop" id="dsk-drop">
<p>📄 วางไฟล์ PDF ที่นี่ หรือกด <kbd>Ctrl</kbd>+<kbd>V</kbd></p>
<p><button type="button" class="dsk-btn dsk-primary" id="dsk-pick">เลือกไฟล์ PDF</button></p>
<input type="file" id="dsk-file" accept="application/pdf,.pdf" hidden>
<p class="dsk-muted">การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์</p>
</div>
<p class="dsk-status" id="dsk-status" role="status" aria-live="polite"></p>
<div class="dsk-work" id="dsk-work" hidden>
<div class="dsk-bar">
<strong class="dsk-name" id="dsk-name"></strong>
<span class="dsk-spacer"></span>
<button type="button" class="dsk-btn" id="dsk-detall">ตรวจจับทั้งหมด</button>
<button type="button" class="dsk-btn" id="dsk-reset">คืนค่าทั้งหมด</button>
<button type="button" class="dsk-btn dsk-primary" id="dsk-dl">ดาวน์โหลด</button>
<button type="button" class="dsk-btn" id="dsk-clear">ล้าง</button>
</div>
<div class="dsk-opts">
<label><input type="checkbox" id="dsk-gridon" checked> เส้นตาราง</label>
<label><input type="checkbox" id="dsk-bgon" checked> พื้นหลัง</label>
<input type="color" id="dsk-bgcolor" value="#ffffff" aria-label="สีพื้นหลังที่เติมตรงมุม">
</div>
<div class="dsk-list" id="dsk-list"></div>
<p class="dsk-muted" id="dsk-linknote" hidden>หน้าที่ถูกหมุนแก้เอียงจะไม่เก็บลิงก์และช่องกรอกฟอร์มเดิมไว้ ส่วนหน้าที่ไม่ได้แก้ยังคงครบทุกอย่าง</p>
<div class="dsk-nav">
<button type="button" class="dsk-btn" id="dsk-prev" aria-label="หน้าก่อนหน้า">‹</button>
<span id="dsk-pagelbl"></span>
<button type="button" class="dsk-btn" id="dsk-next" aria-label="หน้าถัดไป">›</button>
</div>
<div class="dsk-stagewrap">
<div class="dsk-stage" id="dsk-stage">
<canvas id="dsk-canvas"></canvas>
<div class="dsk-grid" id="dsk-grid"></div>
</div>
</div>
<div class="dsk-ctrl">
<label>มุม <input type="range" id="dsk-range" min="-15" max="15" step="0.1" value="0"></label>
<span><input type="number" id="dsk-num" min="-15" max="15" step="0.1" value="0" aria-label="มุมเป็นองศา"> °</span>
<button type="button" class="dsk-btn" id="dsk-cmp">เปรียบเทียบ</button>
</div>
<div class="dsk-ctrl">
<button type="button" class="dsk-btn" id="dsk-det">ตรวจจับ</button>
<button type="button" class="dsk-btn" id="dsk-apply">ใช้กับหน้าอื่น</button>
<button type="button" class="dsk-btn" id="dsk-rot">หมุน 90°</button>
</div>
<p class="dsk-muted">เปิดแท็บนี้ไว้ขณะประมวลผล การสลับแอปหรือล็อกหน้าจออาจทำให้งานหยุดชั่วคราว</p>
</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js"></script>
<script>
(function () {
'use strict';
function $(id) { return document.getElementById(id); }
var E = {};
['drop','pick','file','status','work','name','detall','reset','dl','clear','gridon','bgon','bgcolor','list','linknote','prev','next','pagelbl','stage','canvas','grid','range','num','cmp','det','apply','rot'].forEach(function (k) { E[k] = $('dsk-' + k); });
if (!E.pick) { return; }
if (!E.canvas) { return; }
var WORKER = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';
var MAXA = 15, TILT = 0.3, DIM = 1000;
var S = { bytes: null, name: '', pdf: null, n: 0, angles: [], rots: [], cur: 0, busy: false, token: 0, pv: 0, base: null, detected: false, comparing: false };
var LOCK = ['detall','reset','dl','det','apply','rot','range','num'];
var NONE = { a: 0, none: true };
function libsReady() { return typeof pdfjsLib !== 'undefined' ? typeof PDFLib !== 'undefined' : false; }
function tick() { return new Promise(function (r) { setTimeout(r, 0); }); }
function setStatus(msg, err) { E.status.textContent = msg || ''; E.status.className = 'dsk-status' + (err ? ' dsk-err' : ''); }
function lock(b) { S.busy = b; LOCK.forEach(function (k) { E[k].disabled = b; }); }
function errText(e) { return (e ? (e.message || String(e)) : 'ไม่ทราบสาเหตุ'); }
/* ---------- render + measure ---------- */
async function renderBase(i, maxDim) {
  var page = await S.pdf.getPage(i + 1);
  var rot = (page.rotate + S.rots[i]) % 360;
  var v1 = page.getViewport({ scale: 1, rotation: rot });
  var sc = maxDim / Math.max(v1.width, v1.height);
  var v = page.getViewport({ scale: sc, rotation: rot });
  var c = document.createElement('canvas');
  c.width = Math.max(1, Math.floor(v.width));
  c.height = Math.max(1, Math.floor(v.height));
  var ctx = c.getContext('2d', { willReadFrequently: true });
  ctx.fillStyle = '#ffffff';
  ctx.fillRect(0, 0, c.width, c.height);
  await page.render({ canvasContext: ctx, viewport: v }).promise;
  page.cleanup();
  return c;
}
function measure(c) {
  var w = c.width, h = c.height, n = w * h;
  var d = c.getContext('2d').getImageData(0, 0, w, h).data;
  var gray = new Uint8Array(n), hist = new Float64Array(256), p, q, t;
  for (p = 0, q = 0; p !== n; p++, q += 4) {
    var g = Math.round((d[q] * 299 + d[q + 1] * 587 + d[q + 2] * 114) / 1000);
    gray[p] = g;
    hist[g]++;
  }
  var sum = 0;
  for (t = 0; t !== 256; t++) { sum += t * hist[t]; }
  var wB = 0, sB = 0, bestV = -1, thr = 128, diff = 0;
  for (t = 0; t !== 256; t++) {
    wB += hist[t];
    if (wB === 0) { continue; }
    var wF = n - wB;
    if (wF === 0) { break; }
    sB += t * hist[t];
    var mB = sB / wB, mF = (sum - sB) / wF;
    var v = wB * wF * (mB - mF) * (mB - mF);
    if (v > bestV) { bestV = v; thr = t; diff = mF - mB; }
  }
  if (40 > diff) { return NONE; }
  var dark = 0;
  for (p = 0; p !== n; p++) { if (thr >= gray[p]) { dark++; } }
  if (150 > dark) { return NONE; }
  if (dark > n * 0.4) { return NONE; }
  var stride = Math.max(1, Math.floor(dark / 25000));
  var pts = new Float32Array(Math.ceil(dark / stride) * 2 + 4), m = 0, k = 0;
  for (p = 0; p !== n; p++) {
    if (thr >= gray[p]) {
      if (k % stride === 0) { pts[m++] = p % w; pts[m++] = (p - (p % w)) / w; }
      k++;
    }
  }
  var off = w + 4, bins = new Float64Array(h + 2 * w + 12);
  function score(deg) {
    var r = deg * Math.PI / 180, s = Math.sin(r), co = Math.cos(r), i, tot = 0;
    bins.fill(0);
    for (i = 0; i !== m; i += 2) { bins[Math.floor(pts[i] * s + pts[i + 1] * co + off)]++; }
    for (i = 0; i !== bins.length; i++) { tot += bins[i] * bins[i]; }
    return tot;
  }
  var bestA = 0, bestS = -1, j, sc;
  for (j = -30; j !== 31; j++) {
    sc = score(j * 0.5);
    if (sc > bestS) { bestS = sc; bestA = j * 0.5; }
  }
  var c0 = bestA;
  for (j = -5; j !== 6; j++) {
    sc = score(c0 + j * 0.1);
    if (sc > bestS) { bestS = sc; bestA = c0 + j * 0.1; }
  }
  bestA = Math.max(-MAXA, Math.min(MAXA, Math.round(bestA * 10) / 10));
  if (TILT > Math.abs(bestA)) { bestA = 0; }
  return { a: bestA, none: false };
}
async function detectPage(i) {
  var c = await renderBase(i, DIM);
  return measure(c);
}
/* ---------- UI ---------- */
function tiltedPages() {
  var r = [], i;
  for (i = 0; i !== S.n; i++) { if (Math.abs(S.angles[i]) >= TILT) { r.push(i); } }
  return r;
}
function updateList() {
  var box = E.list, tp = tiltedPages();
  box.textContent = '';
  E.linknote.hidden = true;
  if (!S.detected) { return; }
  if (tp.length === 0) {
    var ok = document.createElement('span');
    ok.className = 'dsk-ok';
    ok.textContent = 'ทุกหน้าตรงดีอยู่แล้ว — ไม่มีอะไรต้องแก้';
    box.appendChild(ok);
    return;
  }
  var lab = document.createElement('span');
  lab.textContent = 'หน้าที่เอียง ' + tp.length + ' หน้า:';
  box.appendChild(lab);
  tp.forEach(function (i) {
    var b = document.createElement('button');
    b.type = 'button';
    b.className = 'dsk-chip' + (i === S.cur ? ' dsk-on' : '');
    b.textContent = String(i + 1);
    b.title = 'ไปที่หน้า ' + (i + 1) + ' (' + S.angles[i].toFixed(1) + '°)';
    b.addEventListener('click', function () { go(i); });
    box.appendChild(b);
  });
  E.linknote.hidden = false;
}
function sync() {
  var a = S.angles[S.cur] || 0;
  E.range.value = a;
  E.num.value = a.toFixed(1);
  E.pagelbl.textContent = (S.cur + 1) + ' / ' + S.n;
  E.prev.disabled = S.cur === 0;
  E.next.disabled = S.cur === S.n - 1;
}
function paint() {
  var a = S.comparing ? 0 : (S.angles[S.cur] || 0);
  E.canvas.style.transform = 'rotate(' + a + 'deg)';
  E.stage.style.background = E.bgon.checked ? E.bgcolor.value : '';
  E.stage.className = 'dsk-stage' + (E.bgon.checked ? '' : ' dsk-alpha');
  E.grid.hidden = !E.gridon.checked;
}
async function showPage() {
  var i = S.cur, tk = ++S.pv, token = S.token;
  try {
    var key = i + ':' + S.rots[i];
    var c = (S.base ? (S.base.key === key ? S.base.canvas : null) : null);
    if (!c) { c = await renderBase(i, DIM); }
    if (tk !== S.pv) { return; }
    if (token !== S.token) { return; }
    S.base = { key: key, canvas: c };
    E.canvas.width = c.width;
    E.canvas.height = c.height;
    E.canvas.getContext('2d').drawImage(c, 0, 0);
    paint();
  } catch (e) {
    if (token === S.token) { setStatus('แสดงตัวอย่างไม่สำเร็จ: ' + errText(e), true); }
  }
}
function go(i) {
  if (0 > i) { return; }
  if (i >= S.n) { return; }
  S.cur = i;
  sync();
  paint();
  updateList();
  showPage();
}
function setAngle(v) {
  v = Math.max(-MAXA, Math.min(MAXA, Math.round(v * 10) / 10));
  S.angles[S.cur] = v;
  S.detected = true;
  sync();
  paint();
  updateList();
}
async function runDetectCurrent() {
  var tk = S.token, i = S.cur;
  lock(true);
  setStatus('กำลังตรวจจับหน้า ' + (i + 1) + ' …');
  try {
    var r = await detectPage(i);
    if (tk !== S.token) { return; }
    S.angles[i] = r.a;
    S.detected = true;
    if (r.none) { setStatus('หน้า ' + (i + 1) + ' ไม่มีข้อความให้วัด จึงรายงานเป็น 0°'); }
    else if (r.a === 0) { setStatus('หน้า ' + (i + 1) + ' ตรงดีอยู่แล้ว (0°)'); }
    else { setStatus('หน้า ' + (i + 1) + ' เอียง ' + r.a.toFixed(1) + '° — ปรับมุมแก้ให้แล้ว'); }
  } catch (e) {
    if (tk === S.token) { setStatus('ตรวจจับไม่สำเร็จ: ' + errText(e), true); }
  } finally {
    if (tk === S.token) { lock(false); sync(); paint(); updateList(); }
  }
}
async function detectAll() {
  var tk = S.token, first = -1, i;
  lock(true);
  try {
    for (i = 0; i !== S.n; i++) {
      if (tk !== S.token) { return; }
      setStatus('กำลังตรวจจับหน้า ' + (i + 1) + ' / ' + S.n + ' …');
      var r = await detectPage(i);
      if (tk !== S.token) { return; }
      S.angles[i] = r.a;
      if (first === -1) { if (Math.abs(r.a) >= TILT) { first = i; } }
      await tick();
    }
    S.detected = true;
    var cnt = tiltedPages().length;
    setStatus(cnt === 0 ? 'ทุกหน้าตรงดีอยู่แล้ว — ไม่มีอะไรต้องแก้' : 'พบหน้าเอียง ' + cnt + ' หน้า จากทั้งหมด ' + S.n + ' หน้า');
    if (first !== -1) { S.cur = first; }
  } catch (e) {
    if (tk === S.token) { setStatus('ตรวจจับไม่สำเร็จ: ' + errText(e), true); }
  } finally {
    if (tk === S.token) { lock(false); sync(); paint(); updateList(); showPage(); }
  }
}
/* ---------- load / clear ---------- */
function resetState() {
  S.token++;
  S.pv++;
  if (S.pdf) { try { S.pdf.destroy(); } catch (e) { } }
  S.bytes = null; S.pdf = null; S.n = 0; S.angles = []; S.rots = []; S.cur = 0;
  S.base = null; S.detected = false; S.comparing = false;
  lock(false);
}
async function loadFile(file) {
  if (!file) { return; }
  var isPdf = file.type === 'application/pdf' || /\.pdf$/i.test(file.name);
  if (!isPdf) { setStatus('กรุณาเลือกไฟล์ PDF เท่านั้น', true); return; }
  if (!libsReady()) { setStatus('โหลดไลบรารีไม่สำเร็จ กรุณารีเฟรชหน้านี้แล้วลองใหม่', true); return; }
  try {
    pdfjsLib.GlobalWorkerOptions.workerSrc = WORKER;
    setStatus('กำลังเปิดไฟล์…');
    var buf = await file.arrayBuffer();
    var bytes = new Uint8Array(buf);
    var pdf = await pdfjsLib.getDocument({ data: bytes.slice(0) }).promise;
    resetState();
    S.bytes = bytes; S.name = file.name; S.pdf = pdf; S.n = pdf.numPages;
    var i;
    for (i = 0; i !== S.n; i++) { S.angles.push(0); S.rots.push(0); }
    E.name.textContent = file.name;
    E.drop.hidden = true;
    E.work.hidden = false;
    sync();
    paint();
    updateList();
    await showPage();
    await detectAll();
  } catch (e) {
    var nm = e ? e.name : '';
    if (nm === 'PasswordException') { setStatus('ไฟล์ PDF นี้มีรหัสผ่าน กรุณาปลดล็อกก่อนใช้งาน', true); }
    else { setStatus('เปิดไฟล์ไม่สำเร็จ: ' + errText(e), true); }
  }
}
function clearAll() {
  resetState();
  E.work.hidden = true;
  E.drop.hidden = false;
  E.file.value = '';
  E.list.textContent = '';
  setStatus('');
}
/* ---------- download ---------- */
async function download() {
  if (S.busy) { return; }
  var tk = S.token;
  lock(true);
  try {
    var L = PDFLib, i;
    setStatus('กำลังสร้างไฟล์…');
    await tick();
    var src = await L.PDFDocument.load(S.bytes, { ignoreEncryption: true });
    var out = await L.PDFDocument.create();
    var keepIdx = [], tiltIdx = [];
    for (i = 0; i !== S.n; i++) { if (S.angles[i] === 0) { keepIdx.push(i); } else { tiltIdx.push(i); } }
    var copied = keepIdx.length ? await out.copyPages(src, keepIdx) : [];
    var embedded = tiltIdx.length ? await out.embedPages(tiltIdx.map(function (x) { return src.getPage(x); })) : [];
    var hex = E.bgcolor.value;
    var cr = parseInt(hex.substr(1, 2), 16) / 255, cg = parseInt(hex.substr(3, 2), 16) / 255, cb = parseInt(hex.substr(5, 2), 16) / 255;
    var ki = 0, ti = 0;
    for (i = 0; i !== S.n; i++) {
      var sp = src.getPage(i);
      var R = (((sp.getRotation().angle + S.rots[i]) % 360) + 360) % 360;
      if (S.angles[i] === 0) {
        var cp = copied[ki++];
        cp.setRotation(L.degrees(R));
        out.addPage(cp);
      } else {
        var em = embedded[ti++], w = em.width, h = em.height;
        var swap = (R % 180) === 90;
        var W = swap ? h : w, H = swap ? w : h;
        var pg = out.addPage([W, H]);
        if (E.bgon.checked) { pg.drawRectangle({ x: 0, y: 0, width: W, height: H, color: L.rgb(cr, cg, cb) }); }
        var phi = -(R + S.angles[i]) * Math.PI / 180, cs = Math.cos(phi), sn = Math.sin(phi);
        var ox = (w / 2) * cs - (h / 2) * sn, oy = (w / 2) * sn + (h / 2) * cs;
        pg.drawPage(em, { x: W / 2 - ox, y: H / 2 - oy, rotate: L.degrees(phi * 180 / Math.PI) });
      }
    }
    var data = await out.save();
    var blob = new Blob([data], { type: 'application/pdf' });
    var url = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = url;
    a.download = S.name.replace(/\.pdf$/i, '') + '-deskewed.pdf';
    document.body.appendChild(a);
    a.click();
    a.remove();
    setTimeout(function () { URL.revokeObjectURL(url); }, 5000);
    if (tk === S.token) { setStatus('เสร็จแล้ว — ดาวน์โหลดไฟล์เรียบร้อย'); }
  } catch (e) {
    if (tk === S.token) { setStatus('สร้างไฟล์ไม่สำเร็จ: ' + errText(e), true); }
  } finally {
    if (tk === S.token) { lock(false); sync(); }
  }
}
/* ---------- events ---------- */
E.pick.addEventListener('click', function () { E.file.click(); });
E.file.addEventListener('change', function () { loadFile(E.file.files[0]); });
E.drop.addEventListener('dragover', function (e) { e.preventDefault(); E.drop.classList.add('dsk-over'); });
E.drop.addEventListener('dragleave', function () { E.drop.classList.remove('dsk-over'); });
E.drop.addEventListener('drop', function (e) {
  e.preventDefault();
  E.drop.classList.remove('dsk-over');
  var f = e.dataTransfer ? e.dataTransfer.files : null;
  if (f) { if (f.length) { loadFile(f[0]); } }
});
document.addEventListener('paste', function (e) {
  if (!E.work.hidden) { return; }
  var f = e.clipboardData ? e.clipboardData.files : null;
  if (f) { if (f.length) { loadFile(f[0]); } }
});
E.prev.addEventListener('click', function () { go(S.cur - 1); });
E.next.addEventListener('click', function () { go(S.cur + 1); });
E.range.addEventListener('input', function () { setAngle(parseFloat(E.range.value)); });
E.num.addEventListener('change', function () {
  var v = parseFloat(E.num.value);
  setAngle(isNaN(v) ? 0 : v);
});
E.gridon.addEventListener('change', paint);
E.bgon.addEventListener('change', paint);
E.bgcolor.addEventListener('input', paint);
function cmpOn() { S.comparing = true; paint(); }
function cmpOff() { S.comparing = false; paint(); }
E.cmp.addEventListener('pointerdown', cmpOn);
E.cmp.addEventListener('pointerup', cmpOff);
E.cmp.addEventListener('pointerleave', cmpOff);
E.cmp.addEventListener('pointercancel', cmpOff);
E.cmp.addEventListener('blur', cmpOff);
E.cmp.addEventListener('contextmenu', function (e) { e.preventDefault(); });
E.cmp.addEventListener('keydown', function (e) { if (e.key === ' ') { e.preventDefault(); cmpOn(); } else if (e.key === 'Enter') { e.preventDefault(); cmpOn(); } });
E.cmp.addEventListener('keyup', cmpOff);
E.det.addEventListener('click', function () { if (!S.busy) { runDetectCurrent(); } });
E.detall.addEventListener('click', function () { if (!S.busy) { detectAll(); } });
E.apply.addEventListener('click', function () {
  var a = S.angles[S.cur], r = S.rots[S.cur], i;
  for (i = 0; i !== S.n; i++) { S.angles[i] = a; S.rots[i] = r; }
  S.detected = true;
  S.base = null;
  sync();
  updateList();
  showPage();
  setStatus('ใช้มุม ' + a.toFixed(1) + '° และการหมุน ' + r + '° กับทุกหน้าแล้ว');
});
E.rot.addEventListener('click', async function () {
  if (S.busy) { return; }
  S.rots[S.cur] = (S.rots[S.cur] + 90) % 360;
  S.angles[S.cur] = 0;
  S.base = null;
  sync();
  paint();
  await showPage();
  await runDetectCurrent();
});
E.reset.addEventListener('click', function () {
  if (S.busy) { return; }
  var i;
  for (i = 0; i !== S.n; i++) { S.angles[i] = 0; S.rots[i] = 0; }
  S.base = null;
  sync();
  paint();
  updateList();
  showPage();
  setStatus('คืนค่าทุกหน้าเป็น 0° แล้ว');
});
E.dl.addEventListener('click', download);
E.clear.addEventListener('click', clearAll);
})();
</script>

## วิธีใช้งานเครื่องมือแก้ PDF เอียง

1. กดปุ่ม **เลือกไฟล์ PDF** ลากไฟล์มาวางในกรอบ หรือกด `Ctrl`+`V` เพื่อวางไฟล์ที่คัดลอกไว้
2. รอสักครู่ ระบบจะวัดความเอียงของทุกหน้าให้เอง หน้าที่เอียงจะแสดงเป็นเลขหน้าที่กดเข้าไปดูได้ทันที
3. ดูตัวอย่างหน้าที่เลือก มีเส้นตารางสีแดงทับอยู่ ลองเทียบบรรทัดข้อความกับเส้นตารางว่าตรงหรือยัง
4. ถ้ายังไม่ตรง ลากแถบเลื่อน **มุม** หรือพิมพ์ค่าองศาในช่องตัวเลขเพื่อปรับเพิ่ม
5. ถ้าหน้าถูกสแกนตะแคงหรือกลับหัว ให้กด **หมุน 90°** ก่อน แล้วค่อยปรับมุมเอียง
6. ถ้าทั้งไฟล์เอียงเท่า ๆ กัน ให้กด **ใช้กับหน้าอื่น** เพื่อคัดลอกการตั้งค่าไปทุกหน้า
7. กดปุ่ม **เปรียบเทียบ** ค้างไว้เพื่อดูหน้าเดิมก่อนแก้ ปล่อยเมื่อต้องการกลับมาดูหน้าที่แก้แล้ว
8. เลือกว่าจะเติมสีพื้นหลังตรงมุมหรือไม่ แล้วกด **ดาวน์โหลด** เพื่อบันทึกไฟล์ที่แก้แล้ว

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **แก้เอียง (Deskew)** คือการหมุนหน้าที่สแกนมาไม่ตรงให้กลับมาเป็นแนวนอนและแนวตั้งพอดี
- **มุม** คือจำนวนองศาที่ใช้หมุนหน้า ปรับได้ตั้งแต่ -15° ถึง +15° ทีละ 0.1° ค่าบวกหมุนตามเข็มนาฬิกา ค่าลบหมุนทวนเข็ม
- **ตรวจจับ** คือการให้ระบบวัดความเอียงของหน้าที่กำลังดูอยู่และตั้งมุมให้อัตโนมัติ
- **ตรวจจับทั้งหมด** คือการวัดความเอียงของทุกหน้าในไฟล์ใหม่อีกครั้ง
- **คืนค่าทั้งหมด** คือการล้างมุมและการหมุนของทุกหน้ากลับเป็น 0°
- **หมุน 90°** คือการหมุนหน้าทีละ 90° ใช้กับหน้าที่ตะแคงหรือกลับหัว
- **ใช้กับหน้าอื่น** คือการคัดลอกมุมและการหมุนของหน้าปัจจุบันไปใช้กับทุกหน้าที่เหลือ
- **เปรียบเทียบ** คือปุ่มที่กดค้างเพื่อดูหน้าต้นฉบับก่อนแก้ ปล่อยแล้วกลับมาเห็นหน้าที่แก้แล้ว
- **เส้นตาราง** คือเส้นสีแดงบางทับบนตัวอย่าง ใช้เป็นแนวอ้างอิงตรวจว่าบรรทัดข้อความตรงหรือไม่ ไม่ปรากฏในไฟล์ที่ดาวน์โหลด
- **พื้นหลัง** คือสีที่เติมในพื้นที่ว่างรูปสามเหลี่ยมตรงมุมหลังหมุนหน้า ค่าเริ่มต้นคือสีขาว ถ้าเอาเครื่องหมายถูกออก มุมจะโปร่งใส
- **0°** คือสถานะที่หน้านั้นตรงอยู่แล้ว หรือไม่มีข้อความให้วัด เช่น หน้าเปล่า รูปถ่าย หรือภาพเต็มหน้า จึงไม่แก้อะไร
- **หน้าที่เอียง** คือรายการเลขหน้าที่ระบบวัดได้ว่าเอียงตั้งแต่ประมาณ 0.3° ขึ้นไป กดที่เลขหน้าเพื่อข้ามไปดูหน้านั้น
- **ล้าง** คือการปิดไฟล์ปัจจุบันเพื่อเริ่มต้นใหม่ด้วยไฟล์อื่น

## ข้อควรรู้

- ทุกขั้นตอนทำงานในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกอัปโหลดไปที่ใด จึงไม่จำกัดจำนวนหน้าและไม่ต้องรอคิว
- หน้าที่ถูกแก้จะหมุนในรูปแบบเวกเตอร์ ข้อความยังเลือกและค้นหาได้ และภาพสแกนไม่ถูกบีบอัดซ้ำ
- หน้าที่ไม่ได้แก้จะถูกคัดลอกไปครบทุกอย่าง รวมถึงลิงก์และช่องกรอกฟอร์ม ส่วนหน้าที่หมุนแก้เอียงจะไม่เก็บสิ่งเหล่านี้ไว้
- หน้ากระดาษไม่ถูกขยายเพื่อกลบมุม ขอบจึงไม่ถูกตัด และขนาดหน้าเท่าเดิม
- ไฟล์ PDF ที่ตั้งรหัสผ่านต้องปลดล็อกก่อนจึงจะใช้งานได้