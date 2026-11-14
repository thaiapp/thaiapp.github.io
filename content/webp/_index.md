---
title: เครื่องมือแปลง WebP ออนไลน์ ฟรี
h1: เครื่องมือแปลง WebP ออนไลน์
description: เครื่องมือแปลง WebP ออนไลน์ฟรี แปลง JPG PNG เป็น WebP และกลับเป็น JPG PNG ได้ครั้งละหลายไฟล์ ปรับคุณภาพ ย่อขนาดรูป ประมวลผลในเครื่อง ไม่ต้องอัปโหลดไฟล์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-14T09:08:00+07:00'
weight: 115
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- เครื่องมือแปลง WebP ออนไลน์
- รูปภาพ
---

<style>
.wp-tool{--wp-ac:#2563eb;--wp-bd:rgba(128,128,128,.35);--wp-bg:rgba(128,128,128,.08);margin:1rem 0 2rem;font-size:15px;line-height:1.5}
.wp-tool *{box-sizing:border-box}
.wp-drop{border:2px dashed var(--wp-bd);border-radius:12px;padding:28px 16px;text-align:center;cursor:pointer;background:var(--wp-bg);display:flex;flex-direction:column;gap:6px;align-items:center;transition:border-color .15s}
.wp-drop:hover,.wp-drop:focus-visible,.wp-drop.wp-over{border-color:var(--wp-ac);outline:none}
.wp-drop span{font-size:.9em;opacity:.75}
.wp-panel{display:grid;grid-template-columns:repeat(auto-fit,minmax(210px,1fr));gap:12px;margin:14px 0}
.wp-panel label{display:flex;flex-direction:column;gap:4px;font-size:.9em;font-weight:600}
.wp-panel input[type=number],.wp-panel select{padding:7px 9px;border:1px solid var(--wp-bd);border-radius:8px;background:transparent;color:inherit;font:inherit;font-weight:400}
.wp-panel input[type=color]{width:100%;height:36px;padding:2px;border:1px solid var(--wp-bd);border-radius:8px;background:transparent}
.wp-panel input[type=range]{width:100%}
.wp-chk{flex-direction:row!important;align-items:center;gap:8px!important;font-weight:400!important}
.wp-presets{display:flex;flex-wrap:wrap;gap:6px}
.wp-btn{padding:8px 14px;border:1px solid var(--wp-bd);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer;text-decoration:none;display:inline-block}
.wp-btn:hover{border-color:var(--wp-ac)}
.wp-btn.wp-pri{background:var(--wp-ac);border-color:var(--wp-ac);color:#fff}
.wp-btn:disabled{opacity:.45;cursor:not-allowed}
.wp-bar{display:flex;flex-wrap:wrap;gap:8px;margin:8px 0;align-items:center}
.wp-msg{min-height:1.4em;margin:6px 0;font-size:.92em}
.wp-row{display:grid;grid-template-columns:auto 1fr auto;gap:12px;align-items:center;padding:10px;border:1px solid var(--wp-bd);border-radius:10px;margin:8px 0}
.wp-th{display:flex;gap:6px}
.wp-th figure{margin:0;text-align:center;font-size:.7em}
.wp-th img{display:block;width:64px;height:64px;object-fit:cover;border-radius:6px;background:var(--wp-bg)}
.wp-info{min-width:0;font-size:.9em}
.wp-info b{display:block;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.wp-good{color:#16a34a}
.wp-bad{color:#dc2626}
.wp-code textarea{width:100%;min-height:150px;padding:10px;border:1px solid var(--wp-bd);border-radius:8px;background:var(--wp-bg);color:inherit;font:13px/1.5 ui-monospace,Menlo,Consolas,monospace;resize:vertical}
.wp-tabs{display:flex;flex-wrap:wrap;gap:6px;margin:6px 0}
.wp-tabs .wp-btn[aria-pressed=true]{border-color:var(--wp-ac);box-shadow:inset 0 0 0 1px var(--wp-ac)}
@media (max-width:560px){.wp-row{grid-template-columns:1fr}.wp-th img{width:56px;height:56px}}
</style>
<div class="wp-tool" id="wpTool">
<noscript>ต้องเปิดใช้งาน JavaScript เพื่อใช้เครื่องมือนี้</noscript>
<div class="wp-drop" id="wpDrop" tabindex="0" role="button" aria-label="เลือกไฟล์รูปภาพ">
<strong>ลากไฟล์รูปมาวางที่นี่</strong>
<span>หรือคลิกเพื่อเลือกไฟล์ · วางจากคลิปบอร์ดด้วย Ctrl+V ได้ · เลือกได้หลายไฟล์</span>
<span>รองรับ JPG, PNG, WebP, GIF (เฟรมแรก), BMP, AVIF และ SVG · ไฟล์ไม่ถูกอัปโหลดออกจากเครื่อง</span>
</div>
<input type="file" id="wpFile" accept="image/*" multiple hidden>
<div class="wp-panel">
<label>แปลงเป็นรูปแบบ
<select id="wpFmt"><option value="image/webp">WebP</option><option value="image/jpeg">JPG</option><option value="image/png">PNG</option></select>
</label>
<label>คุณภาพ: <b id="wpQv">80</b>
<input type="range" id="wpQ" min="1" max="100" value="80">
<span class="wp-presets">
<button type="button" class="wp-btn" data-wpq="50">เล็กสุด</button>
<button type="button" class="wp-btn" data-wpq="80">สมดุล</button>
<button type="button" class="wp-btn" data-wpq="92">คมชัด</button>
<button type="button" class="wp-btn" data-wpq="100">สูงสุด</button>
</span>
</label>
<label>ขนาดไฟล์เป้าหมาย (KB)
<input type="number" id="wpTarget" min="1" step="1" placeholder="ไม่ระบุ เช่น 100">
</label>
<label>ความกว้างสูงสุด (px)
<input type="number" id="wpMaxW" min="1" step="1" placeholder="ใช้ขนาดเดิม เช่น 1200">
</label>
<label>สีพื้นหลัง (ใช้เมื่อแปลงเป็น JPG)
<input type="color" id="wpBg" value="#ffffff">
</label>
<label class="wp-chk"><input type="checkbox" id="wpCmp" checked> เทียบขนาดกับ JPG ที่คุณภาพเดียวกัน</label>
</div>
<div class="wp-bar">
<button type="button" class="wp-btn wp-pri" id="wpZip" disabled>ดาวน์โหลดทั้งหมด (ZIP)</button>
<button type="button" class="wp-btn" id="wpRe" disabled>แปลงใหม่</button>
<button type="button" class="wp-btn" id="wpClear" disabled>ล้างทั้งหมด</button>
<span id="wpSum"></span>
</div>
<p class="wp-msg" id="wpMsg" role="status" aria-live="polite"></p>
<div id="wpList"></div>
<div class="wp-code">
<strong>โค้ดสำหรับนำไปใช้บนเว็บไซต์</strong>
<div class="wp-tabs">
<button type="button" class="wp-btn" data-wptab="picture" aria-pressed="true">HTML picture</button>
<button type="button" class="wp-btn" data-wptab="apache" aria-pressed="false">Apache .htaccess</button>
<button type="button" class="wp-btn" data-wptab="nginx" aria-pressed="false">Nginx</button>
<button type="button" class="wp-btn" id="wpCopy">คัดลอกโค้ด</button>
</div>
<textarea id="wpCode" readonly rows="8" aria-label="โค้ดตัวอย่าง"></textarea>
</div>
</div>
<script>
(function () {
'use strict';
var $ = function (id) { return document.getElementById(id); };
if (!$('wpTool')) { return; }
var items = [], seq = 0, busy = false, again = false, timer = null, tab = 'picture';
var EXT = { 'image/webp': 'webp', 'image/jpeg': 'jpg', 'image/png': 'png' };
var canWebp = false;
try {
  var t0 = document.createElement('canvas');
  t0.width = 1; t0.height = 1;
  canWebp = t0.toDataURL('image/webp').indexOf('data:image/webp') === 0;
} catch (e0) { canWebp = false; }
/*ZIP-START*/
var CT = (function () {
  var t = [], c, n, k;
  for (n = 0; n < 256; n++) {
    c = n;
    for (k = 0; k < 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
    t[n] = c >>> 0;
  }
  return t;
})();
function crc32(b) {
  var c = 0xFFFFFFFF, i;
  for (i = 0; i < b.length; i++) { c = CT[(c ^ b[i]) & 255] ^ (c >>> 8); }
  return (c ^ 0xFFFFFFFF) >>> 0;
}
function makeZip(files) {
  var enc = new TextEncoder(), parts = [], central = [], offset = 0, d = new Date();
  var dt = ((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate();
  var tm = (d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1);
  files.forEach(function (f) {
    var nm = enc.encode(f.name), crc = crc32(f.data), sz = f.data.length;
    var lh = new DataView(new ArrayBuffer(30));
    lh.setUint32(0, 0x04034b50, true); lh.setUint16(4, 20, true); lh.setUint16(6, 0x0800, true);
    lh.setUint16(8, 0, true); lh.setUint16(10, tm, true); lh.setUint16(12, dt, true);
    lh.setUint32(14, crc, true); lh.setUint32(18, sz, true); lh.setUint32(22, sz, true);
    lh.setUint16(26, nm.length, true); lh.setUint16(28, 0, true);
    parts.push(new Uint8Array(lh.buffer), nm, f.data);
    var ch = new DataView(new ArrayBuffer(46));
    ch.setUint32(0, 0x02014b50, true); ch.setUint16(4, 20, true); ch.setUint16(6, 20, true);
    ch.setUint16(8, 0x0800, true); ch.setUint16(10, 0, true); ch.setUint16(12, tm, true);
    ch.setUint16(14, dt, true); ch.setUint32(16, crc, true); ch.setUint32(20, sz, true);
    ch.setUint32(24, sz, true); ch.setUint16(28, nm.length, true); ch.setUint16(30, 0, true);
    ch.setUint16(32, 0, true); ch.setUint16(34, 0, true); ch.setUint16(36, 0, true);
    ch.setUint32(38, 0, true); ch.setUint32(42, offset, true);
    central.push(new Uint8Array(ch.buffer), nm);
    offset += 30 + nm.length + sz;
  });
  var cdSize = 0;
  central.forEach(function (p) { cdSize += p.length; });
  var end = new DataView(new ArrayBuffer(22));
  end.setUint32(0, 0x06054b50, true); end.setUint16(4, 0, true); end.setUint16(6, 0, true);
  end.setUint16(8, files.length, true); end.setUint16(10, files.length, true);
  end.setUint32(12, cdSize, true); end.setUint32(16, offset, true); end.setUint16(20, 0, true);
  return new Blob(parts.concat(central, [new Uint8Array(end.buffer)]), { type: 'application/zip' });
}
/*ZIP-END*/
function fmt(n) {
  if (n < 1024) { return n + ' B'; }
  if (n < 1048576) { return (n / 1024).toFixed(1) + ' KB'; }
  return (n / 1048576).toFixed(2) + ' MB';
}
function msg(t) { $('wpMsg').textContent = t || ''; }
function el(tag, cls, text) {
  var e = document.createElement(tag);
  if (cls) { e.className = cls; }
  if (text !== undefined) { e.textContent = text; }
  return e;
}
function opts() {
  var t = parseFloat($('wpTarget').value), w = parseInt($('wpMaxW').value, 10);
  return {
    mime: $('wpFmt').value,
    q: $('wpQ').value / 100,
    target: t > 0 ? Math.round(t * 1024) : 0,
    maxW: w > 0 ? w : 0,
    bg: $('wpBg').value,
    cmp: $('wpCmp').checked
  };
}
function loadImg(it) {
  return new Promise(function (res, rej) {
    var im = new Image();
    im.onload = function () {
      if (!im.naturalWidth || !im.naturalHeight) { rej(new Error('อ่านขนาดภาพไม่ได้')); return; }
      it.img = im; it.w = im.naturalWidth; it.h = im.naturalHeight; res();
    };
    im.onerror = function () {
      rej(new Error('เบราว์เซอร์เปิดไฟล์ภาพนี้ไม่ได้ (เช่น HEIC หรือ RAW) ลองแปลงเป็น JPG หรือ PNG ก่อน'));
    };
    im.src = it.origUrl;
  });
}
function draw(it, maxW, bg, fill) {
  var w = it.w, h = it.h;
  if (maxW && w > maxW) { h = Math.max(1, Math.round(h * maxW / w)); w = maxW; }
  var cv = document.createElement('canvas');
  cv.width = w; cv.height = h;
  var cx = cv.getContext('2d');
  if (fill) { cx.fillStyle = bg; cx.fillRect(0, 0, w, h); }
  cx.imageSmoothingQuality = 'high';
  cx.drawImage(it.img, 0, 0, w, h);
  return cv;
}
function enc(cv, mime, q) {
  return new Promise(function (res) { cv.toBlob(function (b) { res(b); }, mime, q); });
}
async function convertOne(it, o) {
  if (!it.img) { await loadImg(it); }
  var cv = draw(it, o.maxW, o.bg, o.mime === 'image/jpeg');
  var blob = null, uq = o.q, note = '';
  if (o.mime === 'image/png') {
    blob = await enc(cv, o.mime);
  } else if (o.target) {
    var lo = 0.05, hi = 1, b0 = await enc(cv, o.mime, lo);
    if (!b0) { throw new Error('สร้างไฟล์ไม่สำเร็จ'); }
    blob = b0; uq = lo;
    if (b0.size > o.target) {
      note = 'ย่อไม่ถึงเป้าหมายแม้ใช้คุณภาพต่ำสุด ลองลดความกว้างสูงสุดเพิ่ม';
    } else {
      for (var k = 0; k < 7; k++) {
        var mid = (lo + hi) / 2, tb = await enc(cv, o.mime, mid);
        if (tb && tb.size <= o.target) { blob = tb; uq = mid; lo = mid; } else { hi = mid; }
      }
    }
  } else {
    blob = await enc(cv, o.mime, o.q);
  }
  if (!blob) { throw new Error('สร้างไฟล์ไม่สำเร็จ (ภาพอาจใหญ่เกินที่เบราว์เซอร์รองรับ)'); }
  if (blob.type !== o.mime) {
    throw new Error(o.mime === 'image/webp'
      ? 'เบราว์เซอร์นี้สร้างไฟล์ WebP ไม่ได้ ลองใช้ Chrome, Edge หรือ Firefox'
      : 'เบราว์เซอร์นี้ไม่รองรับรูปแบบปลายทางที่เลือก');
  }
  var jpg = 0;
  if (o.cmp && o.mime === 'image/webp') {
    var jb = await enc(draw(it, o.maxW, o.bg, true), 'image/jpeg', uq);
    if (jb && jb.type === 'image/jpeg') { jpg = jb.size; }
  }
  if (it.out && it.out.url) { URL.revokeObjectURL(it.out.url); }
  var base = it.name.replace(/\.[^.\/\\]+$/, '') || 'image';
  it.out = {
    blob: blob, url: URL.createObjectURL(blob), size: blob.size, w: cv.width, h: cv.height,
    jpg: jpg, note: note, fname: base + '.' + EXT[o.mime], mime: o.mime
  };
}
function fig(src, cap) {
  var f = el('figure');
  var im = document.createElement('img');
  im.alt = cap; im.loading = 'lazy';
  if (src) { im.src = src; }
  f.appendChild(im);
  f.appendChild(el('figcaption', '', cap));
  return f;
}
function rowEl(it) {
  var row = el('div', 'wp-row');
  var th = el('div', 'wp-th');
  th.appendChild(fig(it.origUrl, 'ก่อน'));
  if (it.out) { th.appendChild(fig(it.out.url, 'หลัง')); }
  row.appendChild(th);
  var info = el('div', 'wp-info');
  info.appendChild(el('b', '', it.name));
  if (it.status === 'done' && it.out) {
    var pct = Math.round((1 - it.out.size / it.origSize) * 100);
    info.appendChild(el('div', '', fmt(it.origSize) + ' → ' + fmt(it.out.size) + ' · ' + it.w + '×' + it.h + ' → ' + it.out.w + '×' + it.out.h + ' px'));
    info.appendChild(el('div', pct >= 0 ? 'wp-good' : 'wp-bad', pct >= 0 ? 'ลดลง ' + pct + '%' : 'ใหญ่ขึ้น ' + Math.abs(pct) + '%'));
    if (it.out.jpg) {
      var r = Math.round((1 - it.out.size / it.out.jpg) * 100);
      info.appendChild(el('div', '', 'JPG คุณภาพเดียวกัน: ' + fmt(it.out.jpg) + (r >= 0 ? ' (WebP เล็กกว่า ' + r + '%)' : ' (WebP ใหญ่กว่า ' + Math.abs(r) + '%)')));
    }
    if (it.out.note) { info.appendChild(el('div', 'wp-bad', it.out.note)); }
  } else if (it.status === 'work') {
    info.appendChild(el('div', '', 'กำลังแปลง…'));
  } else if (it.status === 'err') {
    info.appendChild(el('div', 'wp-bad', it.err));
  } else {
    info.appendChild(el('div', '', 'รอคิว…'));
  }
  row.appendChild(info);
  var act = el('div', 'wp-bar');
  if (it.status === 'done' && it.out) {
    var a = el('a', 'wp-btn', 'ดาวน์โหลด');
    a.href = it.out.url; a.download = it.out.fname;
    act.appendChild(a);
  }
  var rm = el('button', 'wp-btn', 'ลบ');
  rm.type = 'button';
  rm.addEventListener('click', function () { removeItem(it.id); });
  act.appendChild(rm);
  row.appendChild(act);
  return row;
}
function render() {
  var list = $('wpList');
  list.textContent = '';
  items.forEach(function (it) { it.el = rowEl(it); list.appendChild(it.el); });
  refreshUI();
}
function updateRow(it) {
  var n = rowEl(it);
  if (it.el && it.el.parentNode) { it.el.parentNode.replaceChild(n, it.el); }
  it.el = n;
  refreshUI();
}
function doneItems() {
  return items.filter(function (i) { return i.status === 'done' && i.out; });
}
function updateSnippet(done) {
  var ta = $('wpCode');
  if (!done.length) { ta.value = 'แปลงไฟล์ก่อน แล้วโค้ดตัวอย่างจะปรากฏที่นี่'; return; }
  var d0 = done[0], name = d0.out.fname, base = name.replace(/\.[^.]+$/, '');
  var m = d0.name.match(/\.([A-Za-z0-9]+)$/), ext = m ? m[1].toLowerCase() : 'jpg';
  var L;
  if (tab === 'picture') {
    if (d0.out.mime !== 'image/webp') { ta.value = 'เลือกแปลงเป็น WebP เพื่อสร้างโค้ดนี้'; return; }
    L = [
      '<picture>',
      '  <source srcset="' + name + '" type="image/webp">',
      '  <img src="' + base + '.' + ext + '" alt="คำอธิบายภาพ" width="' + d0.out.w + '" height="' + d0.out.h + '" loading="lazy" decoding="async">',
      '</picture>'
    ];
  } else if (tab === 'apache') {
    L = [
      '# ส่งไฟล์ .webp แทน .jpg/.png เมื่อเบราว์เซอร์รองรับ (ต้องมีไฟล์ชื่อเดียวกันนามสกุล .webp)',
      '<IfModule mod_rewrite.c>',
      'RewriteEngine On',
      'RewriteCond %{HTTP_ACCEPT} image/webp',
      'RewriteCond %{REQUEST_FILENAME} (.+)\\.(jpe?g|png)$',
      'RewriteCond %1.webp -f',
      'RewriteRule (.+)\\.(jpe?g|png)$ $1.webp [T=image/webp,E=accept:1]',
      '</IfModule>',
      '<IfModule mod_headers.c>',
      'Header append Vary Accept env=accept',
      '</IfModule>',
      'AddType image/webp .webp'
    ];
  } else {
    L = [
      '# วางส่วนนี้ในบล็อก http',
      'map $http_accept $webp_suffix {',
      '  default "";',
      '  "~*webp" ".webp";',
      '}',
      '',
      '# วางส่วนนี้ในบล็อก server',
      'location ~* ^(.+)\\.(jpe?g|png)$ {',
      '  add_header Vary Accept;',
      '  try_files $1$webp_suffix $uri =404;',
      '}'
    ];
  }
  ta.value = L.join('\n');
}
function refreshUI() {
  var done = doneItems(), tin = 0, tout = 0;
  done.forEach(function (i) { tin += i.origSize; tout += i.out.size; });
  $('wpZip').disabled = done.length < 1;
  $('wpClear').disabled = items.length < 1;
  $('wpRe').disabled = items.length < 1;
  if (done.length) {
    var p = Math.round((1 - tout / tin) * 100);
    $('wpSum').textContent = 'รวม ' + done.length + ' ไฟล์: ' + fmt(tin) + ' → ' + fmt(tout) + (p >= 0 ? ' (ประหยัด ' + p + '%)' : ' (ใหญ่ขึ้น ' + Math.abs(p) + '%)');
  } else {
    $('wpSum').textContent = '';
  }
  updateSnippet(done);
}
async function convertAll() {
  if (busy) { again = true; return; }
  busy = true;
  var o = opts();
  for (var i = 0; i < items.length; i++) {
    var it = items[i];
    it.status = 'work'; updateRow(it);
    try {
      await convertOne(it, o);
      it.status = 'done'; it.err = '';
    } catch (e) {
      it.status = 'err';
      it.err = (e && e.message) ? e.message : 'แปลงไฟล์ไม่สำเร็จ';
    }
    updateRow(it);
  }
  busy = false;
  if (again) { again = false; convertAll(); return; }
  var ok = doneItems().length, bad = items.length - ok;
  if (items.length) { msg('แปลงเสร็จ ' + ok + ' ไฟล์' + (bad ? ' · ผิดพลาด ' + bad + ' ไฟล์' : '')); }
}
function schedule() {
  clearTimeout(timer);
  if (items.length) { timer = setTimeout(convertAll, 350); }
}
function addFiles(list) {
  var files = Array.prototype.slice.call(list || []), added = 0, skipped = 0;
  files.forEach(function (f) {
    if (!f.type || f.type.indexOf('image/') !== 0) { skipped++; return; }
    seq++;
    items.push({
      id: seq, file: f, name: f.name || ('image-' + seq), origSize: f.size, status: 'wait',
      err: '', img: null, origUrl: URL.createObjectURL(f), w: 0, h: 0, out: null, el: null
    });
    added++;
  });
  msg(skipped ? 'ข้าม ' + skipped + ' ไฟล์ที่ไม่ใช่รูปภาพหรือเบราว์เซอร์ไม่รู้จักชนิดไฟล์' : '');
  render();
  if (added) { convertAll(); }
}
function freeItem(it) {
  if (it.origUrl) { URL.revokeObjectURL(it.origUrl); }
  if (it.out && it.out.url) { URL.revokeObjectURL(it.out.url); }
}
function removeItem(id) {
  items = items.filter(function (it) {
    if (it.id === id) { freeItem(it); return false; }
    return true;
  });
  render();
}
async function downloadZip() {
  var done = doneItems();
  if (!done.length) { return; }
  msg('กำลังสร้างไฟล์ ZIP…');
  try {
    var used = {}, files = [];
    for (var i = 0; i < done.length; i++) {
      var n = done[i].out.fname;
      if (used[n]) {
        var dot = n.lastIndexOf('.'), c = used[n]++;
        n = n.slice(0, dot) + '-' + c + n.slice(dot);
      }
      used[n] = used[n] || 1;
      files.push({ name: n, data: new Uint8Array(await done[i].out.blob.arrayBuffer()) });
    }
    var zb = makeZip(files), u = URL.createObjectURL(zb), a = document.createElement('a');
    a.href = u; a.download = 'converted-images.zip';
    document.body.appendChild(a); a.click(); document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(u); }, 4000);
    msg('ดาวน์โหลด ZIP แล้ว (' + files.length + ' ไฟล์)');
  } catch (e) {
    msg('สร้าง ZIP ไม่สำเร็จ ลองดาวน์โหลดทีละไฟล์แทน');
  }
}
function copyCode() {
  var ta = $('wpCode'), text = ta.value;
  function fallback() {
    ta.select();
    try { document.execCommand('copy'); msg('คัดลอกโค้ดแล้ว'); } catch (e) { msg('คัดลอกไม่สำเร็จ ลองเลือกข้อความแล้วกด Ctrl+C'); }
  }
  if (navigator.clipboard && navigator.clipboard.writeText) {
    navigator.clipboard.writeText(text).then(function () { msg('คัดลอกโค้ดแล้ว'); }, fallback);
  } else { fallback(); }
}
function syncFmt() {
  var m = $('wpFmt').value;
  $('wpQ').disabled = m === 'image/png';
  $('wpTarget').disabled = m === 'image/png';
  $('wpCmp').disabled = m !== 'image/webp';
}
var dz = $('wpDrop');
dz.addEventListener('click', function () { $('wpFile').click(); });
dz.addEventListener('keydown', function (e) {
  if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); $('wpFile').click(); }
});
['dragenter', 'dragover'].forEach(function (n) {
  dz.addEventListener(n, function (e) { e.preventDefault(); dz.classList.add('wp-over'); });
});
['dragleave', 'drop'].forEach(function (n) {
  dz.addEventListener(n, function (e) { e.preventDefault(); dz.classList.remove('wp-over'); });
});
dz.addEventListener('drop', function (e) { if (e.dataTransfer) { addFiles(e.dataTransfer.files); } });
$('wpFile').addEventListener('change', function () { addFiles(this.files); this.value = ''; });
document.addEventListener('paste', function (e) {
  var f = e.clipboardData && e.clipboardData.files;
  if (f && f.length) { addFiles(f); }
});
$('wpFmt').addEventListener('change', function () { syncFmt(); schedule(); });
$('wpQ').addEventListener('input', function () { $('wpQv').textContent = this.value; schedule(); });
['wpTarget', 'wpMaxW'].forEach(function (id) { $(id).addEventListener('input', schedule); });
['wpBg', 'wpCmp'].forEach(function (id) { $(id).addEventListener('change', schedule); });
Array.prototype.forEach.call(document.querySelectorAll('[data-wpq]'), function (b) {
  b.addEventListener('click', function () {
    var v = this.getAttribute('data-wpq');
    $('wpQ').value = v; $('wpQv').textContent = v; schedule();
  });
});
Array.prototype.forEach.call(document.querySelectorAll('[data-wptab]'), function (b) {
  b.addEventListener('click', function () {
    tab = this.getAttribute('data-wptab');
    Array.prototype.forEach.call(document.querySelectorAll('[data-wptab]'), function (x) {
      x.setAttribute('aria-pressed', x === b ? 'true' : 'false');
    });
    refreshUI();
  });
});
$('wpCopy').addEventListener('click', copyCode);
$('wpZip').addEventListener('click', downloadZip);
$('wpRe').addEventListener('click', function () { clearTimeout(timer); convertAll(); });
$('wpClear').addEventListener('click', function () {
  items.forEach(freeItem); items = []; msg(''); render();
});
syncFmt();
render();
if (!canWebp) {
  msg('หมายเหตุ: เบราว์เซอร์นี้อาจสร้างไฟล์ WebP ไม่ได้ (เช่น Safari) แนะนำ Chrome, Edge หรือ Firefox ส่วนการแปลงเป็น JPG/PNG ใช้ได้ตามปกติ');
}
})();
</script>

## วิธีใช้งานเครื่องมือแปลง WebP

1. **เพิ่มรูปภาพ** – ลากไฟล์มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือคัดลอกรูปแล้วกด `Ctrl+V` เลือกได้หลายไฟล์พร้อมกัน
2. **เลือกรูปแบบปลายทาง** – เลือก WebP (ย่อไฟล์สำหรับเว็บ) หรือเลือก JPG/PNG หากต้องการแปลงไฟล์ WebP กลับเป็นรูปแบบที่เปิดได้ทุกแอป
3. **ปรับคุณภาพ** – เลื่อนแถบคุณภาพ หรือกดปุ่มลัด "เล็กสุด / สมดุล / คมชัด / สูงสุด" ระบบจะแปลงใหม่ให้อัตโนมัติ
4. **ตั้งค่าเพิ่มเติม (ไม่บังคับ)** – ใส่ขนาดไฟล์เป้าหมาย (KB) เพื่อให้เครื่องมือลองปรับคุณภาพเอง หรือใส่ความกว้างสูงสุด (px) เพื่อย่อขนาดภาพ
5. **ตรวจผลลัพธ์** – ดูภาพก่อน/หลัง ขนาดไฟล์ที่ลดลง และขนาดเมื่อเทียบกับ JPG ที่คุณภาพเดียวกัน
6. **ดาวน์โหลด** – กด "ดาวน์โหลด" ทีละไฟล์ หรือ "ดาวน์โหลดทั้งหมด (ZIP)" เพื่อรับทุกไฟล์ในครั้งเดียว
7. **นำไปใช้บนเว็บ** – คัดลอกโค้ด `<picture>` หรือค่าตั้งค่า Apache/Nginx ที่สร้างให้ ไปวางในเว็บไซต์ของคุณ

### คุณภาพที่แนะนำ

| ประเภทภาพ | ค่าคุณภาพที่แนะนำ |
| --- | --- |
| ภาพถ่ายทั่วไปบนเว็บไซต์/บล็อก | 75–85 |
| ภาพหน้าปกหรือแบนเนอร์ที่ต้องการความคมชัด | 80–90 |
| ภาพขนาดย่อ (thumbnail) | 60–75 |
| สกรีนช็อต โลโก้ หรือกราฟิกที่มีตัวอักษร | 90–100 หรือเลือก PNG |

## จุดเด่นของเครื่องมือ

- **ประมวลผลในเครื่อง 100%** – ไฟล์ไม่ถูกอัปโหลดไปเซิร์ฟเวอร์ใด ๆ ปลอดภัยกับภาพส่วนตัวและเอกสาร
- **แปลงได้สองทาง** – JPG, PNG, GIF, BMP, AVIF, SVG เป็น WebP และ WebP เป็น JPG หรือ PNG
- **แปลงหลายไฟล์พร้อมกัน** – ไม่จำกัดจำนวนไฟล์ ดาวน์โหลดรวมเป็น ZIP ได้
- **ตั้งขนาดไฟล์เป้าหมาย** – เหมาะกับเว็บที่จำกัดขนาดอัปโหลด เช่น ไม่เกิน 100 KB
- **ย่อความกว้างภาพ** – รักษาสัดส่วนเดิม และไม่ขยายภาพที่เล็กกว่าค่าที่ตั้ง
- **เทียบกับ JPG ทันที** – เห็นว่า WebP ประหยัดกว่า JPG เท่าไรที่คุณภาพเดียวกัน
- **รักษาความโปร่งใส** – PNG ที่มีพื้นหลังโปร่งใสแปลงเป็น WebP ได้ และเลือกสีพื้นหลังเมื่อแปลงเป็น JPG
- **ลบข้อมูล EXIF โดยอัตโนมัติ** – ไฟล์ใหม่ไม่มีพิกัด GPS หรือข้อมูลกล้องติดไปด้วย
- **สร้างโค้ดให้พร้อมใช้** – `<picture>` พร้อมรูปสำรอง, `.htaccess` สำหรับ Apache และตัวอย่างสำหรับ Nginx

## อธิบายศัพท์ที่เกี่ยวข้อง

| ศัพท์ | ความหมายสั้น ๆ |
| --- | --- |
| WebP | รูปแบบไฟล์ภาพจาก Google ที่บีบอัดได้เล็กกว่า JPG และ PNG รองรับความโปร่งใสและแอนิเมชัน |
| Lossy | การบีบอัดแบบสูญเสียข้อมูลบางส่วนที่ตามองแทบไม่เห็น ไฟล์เล็กมาก เหมาะกับภาพถ่าย |
| Lossless | การบีบอัดแบบไม่สูญเสียข้อมูล ภาพเหมือนต้นฉบับทุกพิกเซล แต่ไฟล์ใหญ่กว่า Lossy |
| คุณภาพ (Quality) | ค่า 1–100 ยิ่งสูงภาพยิ่งคมแต่ไฟล์ใหญ่ ใช้กับ WebP และ JPG (PNG ไม่ใช้ค่านี้) ที่ค่า 100 บางเบราว์เซอร์อาจเข้ารหัสแบบ Lossless |
| Alpha / ความโปร่งใส | ข้อมูลที่ทำให้บางส่วนของภาพโปร่งใส ใช้ได้กับ PNG และ WebP แต่ JPG ไม่รองรับ |
| สีพื้นหลัง | สีที่ใช้เติมแทนส่วนโปร่งใสเมื่อแปลงเป็น JPG (ค่าเริ่มต้นคือสีขาว) |
| EXIF / Metadata | ข้อมูลแฝงในไฟล์ภาพ เช่น วันที่ถ่าย รุ่นกล้อง พิกัด GPS ไฟล์ที่แปลงด้วยเครื่องมือนี้จะไม่มีข้อมูลเหล่านี้ |
| ขนาดไฟล์เป้าหมาย | ขนาดสูงสุดที่ต้องการ เครื่องมือจะลองปรับคุณภาพหลายรอบเพื่อให้ไฟล์ไม่เกินค่านี้ |
| ความกว้างสูงสุด (Resize) | ย่อภาพให้กว้างไม่เกินค่าที่กำหนด โดยรักษาอัตราส่วนเดิม ช่วยลดขนาดไฟล์ได้มาก |
| Batch | การแปลงหลายไฟล์ในครั้งเดียว |
| ZIP | ไฟล์รวมที่เก็บหลายไฟล์ไว้ด้วยกัน สะดวกต่อการดาวน์โหลดจำนวนมาก |
| ประมวลผลในเครื่อง (Client-side) | การทำงานบนเบราว์เซอร์ของคุณเอง ไฟล์ไม่ถูกส่งออกไปที่อื่น |
| Canvas | พื้นที่วาดภาพในเบราว์เซอร์ที่เครื่องมือใช้เปิดและเข้ารหัสภาพใหม่ |
| MIME type | ป้ายบอกชนิดไฟล์ให้เบราว์เซอร์รู้ เช่น `image/webp` |
| `<picture>` | แท็ก HTML ที่ให้เบราว์เซอร์เลือกรูปแบบภาพที่รองรับ พร้อมรูปสำรอง |
| Fallback | ไฟล์สำรอง เช่น JPG สำหรับเบราว์เซอร์หรือแอปที่เปิด WebP ไม่ได้ |
| Core Web Vitals / LCP | ตัวชี้วัดความเร็วเว็บของ Google โดย LCP คือเวลาที่องค์ประกอบใหญ่สุดในหน้า (มักเป็นรูปหลัก) โหลดเสร็จ |
| AVIF | รูปแบบภาพรุ่นใหม่ที่มักเล็กกว่า WebP แต่ใช้เวลาเข้ารหัสนานกว่า |
| .htaccess / Nginx | ไฟล์ตั้งค่าเซิร์ฟเวอร์ที่ใช้สลับส่ง WebP ให้เบราว์เซอร์ที่รองรับโดยไม่ต้องแก้ HTML |

## WebP เทียบกับ JPG, PNG และ AVIF

| คุณสมบัติ | WebP | JPG | PNG | AVIF |
| --- | --- | --- | --- | --- |
| ขนาดไฟล์ | เล็กกว่า JPG ราว 25–35% ตามข้อมูลของ Google | ปานกลาง | ใหญ่ | มักเล็กที่สุด |
| ความโปร่งใส | รองรับ | ไม่รองรับ | รองรับ | รองรับ |
| แอนิเมชัน | รองรับ | ไม่รองรับ | ไม่รองรับ | รองรับ |
| Lossy / Lossless | ได้ทั้งสองแบบ | Lossy | Lossless | ได้ทั้งสองแบบ |
| การเปิดใช้งาน | เบราว์เซอร์สมัยใหม่ส่วนใหญ่ | ทุกอุปกรณ์ | ทุกอุปกรณ์ | เบราว์เซอร์รุ่นใหม่ |

## คำถามที่พบบ่อย

### ไฟล์ของฉันถูกอัปโหลดไปที่ไหนหรือไม่

ไม่ การแปลงทั้งหมดทำงานบนเบราว์เซอร์ของคุณ ไฟล์จึงไม่ถูกส่งไปยังเซิร์ฟเวอร์ใด ๆ

### WebP ดีต่อ SEO หรือไม่

ไฟล์ภาพที่เล็กลงช่วยให้หน้าเว็บโหลดเร็วขึ้น ซึ่งส่งผลดีต่อ Core Web Vitals และประสบการณ์ผู้ใช้ แต่การจัดอันดับยังขึ้นกับปัจจัยอื่นด้วย เช่น เนื้อหา ข้อความอธิบายภาพ (alt) และความเกี่ยวข้อง

### ทำไมไฟล์ที่แปลงแล้วใหญ่กว่าต้นฉบับ

มักเกิดกับไฟล์ที่ถูกบีบอัดมาดีอยู่แล้ว หรือเมื่อตั้งคุณภาพสูงมาก ลองลดคุณภาพลง ตั้งขนาดไฟล์เป้าหมาย หรือย่อความกว้างภาพ

### ภาพที่แปลงแล้วดูเบลอหรือมีรอยแตก ควรทำอย่างไร

เพิ่มค่าคุณภาพขึ้นเป็น 85–92 สำหรับภาพที่มีรายละเอียดสูง และสำหรับภาพที่มีตัวอักษรหรือเส้นคมให้ใช้คุณภาพ 100 หรือเลือก PNG

### แปลง GIF เคลื่อนไหวเป็น WebP เคลื่อนไหวได้ไหม

ยังไม่ได้ เครื่องมือนี้แปลงเฉพาะเฟรมแรกของ GIF เป็นภาพนิ่ง หากต้องการแอนิเมชันควรใช้เครื่องมือเฉพาะทาง

### รองรับไฟล์ HEIC หรือ RAW หรือไม่

ขึ้นอยู่กับเบราว์เซอร์ที่ใช้ หากเบราว์เซอร์เปิดไฟล์ไม่ได้ เครื่องมือจะแจ้งข้อความที่ไฟล์นั้น ให้แปลงเป็น JPG หรือ PNG ก่อนแล้วค่อยนำมาแปลงเป็น WebP

### ทำไมแปลงเป็น WebP ไม่ได้บน Safari

บางเบราว์เซอร์ยังไม่รองรับการสร้างไฟล์ WebP จากหน้าเว็บ แนะนำให้ใช้ Chrome, Edge หรือ Firefox ส่วนการแปลงเป็น JPG หรือ PNG ใช้ได้ตามปกติ

### เปิดไฟล์ WebP ในแอปเก่าไม่ได้ ต้องทำอย่างไร

เลือกแปลงเป็น JPG หรือ PNG ในเครื่องมือด้านบน หากใช้บนเว็บไซต์ ให้ใช้โค้ด `<picture>` ที่มีรูป JPG เป็นตัวสำรอง