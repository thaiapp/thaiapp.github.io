---
title: แปลง JPG เป็น PDF ออนไลน์ ฟรี
h1: แปลง JPG เป็น PDF
description: แปลง JPG เป็น PDF ออนไลน์ฟรี รองรับ PNG, WebP, GIF, BMP จัดเรียงและหมุนภาพได้ เลือกขนาด A4 หรือ Letter ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลด ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-07T09:00:00+07:00'
weight: 82
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- แปลง JPG เป็น PDF
- แปลง JPG เป็น PDF ออนไลน์
- PDF และไฟล์
---

<style>
.j2p{max-width:860px;margin:0 auto;font-size:16px;line-height:1.5}
.j2p *{box-sizing:border-box}
.j2p-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:28px 16px;text-align:center}
.j2p-drop.on{border-color:#2563eb;background:rgba(37,99,235,.08)}
.j2p-drop p{margin:6px 0}
.j2p-ic{font-size:36px;line-height:1}
.j2p-sub{font-size:14px;opacity:.7;margin:8px 0}
.j2p-opts{display:flex;flex-wrap:wrap;gap:12px;align-items:center;margin:16px 0}
.j2p-opts select,.j2p-opts input{font:inherit;padding:6px 8px;border:1px solid rgba(128,128,128,.6);border-radius:6px;background:transparent;color:inherit}
.j2p-opts input{width:72px}
.j2p-btn{font:inherit;cursor:pointer;padding:7px 14px;border:1px solid rgba(128,128,128,.6);border-radius:6px;background:transparent;color:inherit}
.j2p-btn:disabled{opacity:.45;cursor:not-allowed}
.j2p-main{background:#2563eb;border-color:#2563eb;color:#fff}
.j2p-btn:focus-visible{outline:3px solid #f59e0b;outline-offset:2px}
.j2p-msg{min-height:1.5em;margin:4px 0}
.j2p-err{color:#dc2626}
.j2p-list{list-style:none;margin:0;padding:0;display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:12px}
.j2p-card{border:1px solid rgba(128,128,128,.45);border-radius:10px;padding:8px;cursor:grab;min-width:0}
.j2p-th{height:120px;display:flex;align-items:center;justify-content:center;overflow:hidden;background:rgba(128,128,128,.12);border-radius:6px}
.j2p-th img{width:100%;height:100%;object-fit:contain;transition:transform .15s}
.j2p-nm{font-size:13px;margin-top:6px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.j2p-sz{font-size:12px;opacity:.7}
.j2p-bar{display:flex;gap:4px;margin-top:6px;flex-wrap:wrap}
.j2p-bar .j2p-btn{padding:3px 7px;font-size:13px}
</style>

<div class="j2p" id="jpg2pdf">
<div class="j2p-drop" id="j2pDrop">
<div class="j2p-ic" aria-hidden="true">🖼</div>
<button type="button" class="j2p-btn j2p-main" id="j2pPick">เลือกรูปภาพ…</button>
<p>วางรูปภาพที่นี่ หรือกด <kbd>Ctrl</kbd>+<kbd>V</kbd> เพื่อวาง</p>
<p class="j2p-sub">รองรับ JPG, PNG, WebP, GIF, BMP และ HEIC</p>
<input type="file" id="j2pFile" accept="image/*,.heic,.heif" multiple hidden>
</div>
<p class="j2p-sub">การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์ของคุณ</p>
<div class="j2p-opts">
<label>ขนาดหน้า <select id="j2pSize"><option value="a4">A4</option><option value="letter">Letter</option><option value="fit">พอดี</option></select></label>
<label>ระยะขอบ <input type="number" id="j2pMargin" min="0" max="50" step="1" value="0"> mm</label>
<button type="button" class="j2p-btn j2p-main" id="j2pGo" disabled>สร้าง PDF</button>
<button type="button" class="j2p-btn" id="j2pClear" disabled>ล้าง</button>
</div>
<p id="j2pMsg" class="j2p-msg" role="status" aria-live="polite"></p>
<ul id="j2pList" class="j2p-list"></ul>
</div>

<script>
(function () {
  'use strict';
  // ==CORE START==
  function exifOrient(u, t) {
    var le = u[t] === 0x49;
    function r16(p) { return le ? (u[p] | (u[p + 1] << 8)) : ((u[p] << 8) | u[p + 1]); }
    function r32(p) { return (le ? (u[p] | (u[p + 1] << 8) | (u[p + 2] << 16) | (u[p + 3] << 24)) : ((u[p] << 24) | (u[p + 1] << 16) | (u[p + 2] << 8) | u[p + 3])) >>> 0; }
    if (r16(t + 2) !== 42) return 1;
    var ifd = t + r32(t + 4);
    if (ifd + 2 > u.length) return 1;
    var n = r16(ifd);
    for (var k = 0; k < n; k++) {
      var e = ifd + 2 + k * 12;
      if (e + 12 > u.length) break;
      if (r16(e) === 0x0112) return r16(e + 8) || 1;
    }
    return 1;
  }
  // returns {w,h,c,o} for JPEG (baseline/progressive), otherwise null
  function parseJpeg(u) {
    if (u.length < 4 || u[0] !== 0xFF || u[1] !== 0xD8) return null;
    var i = 2, o = 1;
    while (i + 4 < u.length) {
      if (u[i] !== 0xFF) { i++; continue; }
      var m = u[i + 1];
      if (m === 0xFF) { i++; continue; }
      if (m === 0xD8 || m === 0x01 || (m >= 0xD0 && m <= 0xD7)) { i += 2; continue; }
      if (m === 0xD9 || m === 0xDA) return null;
      var L = (u[i + 2] << 8) | u[i + 3];
      if (m === 0xE1 && u[i + 4] === 0x45 && u[i + 5] === 0x78 && u[i + 6] === 0x69 && u[i + 7] === 0x66) o = exifOrient(u, i + 10);
      if (m === 0xC0 || m === 0xC1 || m === 0xC2) {
        if (u[i + 4] !== 8) return null;
        return { h: (u[i + 5] << 8) | u[i + 6], w: (u[i + 7] << 8) | u[i + 8], c: u[i + 9], o: o };
      }
      i += 2 + L;
    }
    return null;
  }
  function fmt(n) { return n.toFixed(3); }
  // items: [{bytes,w,h,comps,rot}] ; o: {size:'a4'|'letter'|'fit', margin:mm}
  function buildPdf(items, o) {
    var enc = new TextEncoder(), ch = [], len = 0, off = [];
    function add(x) { var b = typeof x === 'string' ? enc.encode(x) : x; ch.push(b); len += b.length; }
    function begin(n) { off[n] = len; add(n + ' 0 obj\n'); }
    var n = items.length, total = 2 + 3 * n;
    var m = Math.min(50, Math.max(0, o.margin || 0)) * 2.834646;
    add(new Uint8Array([37, 80, 68, 70, 45, 49, 46, 52, 10, 37, 226, 227, 207, 211, 10]));
    begin(1); add('<< /Type /Catalog /Pages 2 0 R >>\nendobj\n');
    var kids = [];
    for (var q = 0; q < n; q++) kids.push((3 + 3 * q) + ' 0 R');
    begin(2); add('<< /Type /Pages /Kids [' + kids.join(' ') + '] /Count ' + n + ' >>\nendobj\n');
    items.forEach(function (it, i) {
      var r = it.rot % 360, sw = (r === 90 || r === 270);
      var iw = sw ? it.h : it.w, ih = sw ? it.w : it.h;
      var pw, ph;
      if (o.size === 'fit') {
        pw = iw * 0.75 + 2 * m; ph = ih * 0.75 + 2 * m;
      } else {
        var b = o.size === 'letter' ? [612, 792] : [595.276, 841.89];
        pw = b[0]; ph = b[1];
        if (iw > ih) { pw = b[1]; ph = b[0]; }
      }
      var s = Math.min((pw - 2 * m) / iw, (ph - 2 * m) / ih, 0.75); // never enlarge beyond 96 dpi (keeps small images sharp)
      var dw = iw * s, dh = ih * s, x = (pw - dw) / 2, y = (ph - dh) / 2;
      var cm = r === 90 ? [0, -dh, dw, 0, x, y + dh]
        : r === 180 ? [-dw, 0, 0, -dh, x + dw, y + dh]
        : r === 270 ? [0, dh, -dw, 0, x + dw, y]
        : [dw, 0, 0, dh, x, y];
      var cs = 'q ' + cm.map(fmt).join(' ') + ' cm /Im0 Do Q';
      var p = 3 + 3 * i;
      begin(p); add('<< /Type /Page /Parent 2 0 R /MediaBox [0 0 ' + fmt(pw) + ' ' + fmt(ph) + '] /Resources << /XObject << /Im0 ' + (p + 2) + ' 0 R >> >> /Contents ' + (p + 1) + ' 0 R >>\nendobj\n');
      begin(p + 1); add('<< /Length ' + cs.length + ' >>\nstream\n' + cs + '\nendstream\nendobj\n');
      begin(p + 2); add('<< /Type /XObject /Subtype /Image /Width ' + it.w + ' /Height ' + it.h + ' /ColorSpace /' + (it.comps === 1 ? 'DeviceGray' : 'DeviceRGB') + ' /BitsPerComponent 8 /Filter /DCTDecode /Length ' + it.bytes.length + ' >>\nstream\n');
      add(it.bytes); add('\nendstream\nendobj\n');
    });
    var xo = len, xr = 'xref\n0 ' + (total + 1) + '\n0000000000 65535 f \n';
    for (var k = 1; k <= total; k++) xr += ('0000000000' + off[k]).slice(-10) + ' 00000 n \n';
    add(xr + 'trailer\n<< /Size ' + (total + 1) + ' /Root 1 0 R >>\nstartxref\n' + xo + '\n%%EOF\n');
    return new Blob(ch, { type: 'application/pdf' });
  }
  // ==CORE END==

  var root = document.getElementById('jpg2pdf');
  if (!root) return;
  function $(id) { return document.getElementById(id); }
  var drop = $('j2pDrop'), pick = $('j2pPick'), fileIn = $('j2pFile'), list = $('j2pList'),
      msg = $('j2pMsg'), go = $('j2pGo'), clr = $('j2pClear');
  var items = [], busy = false, uid = 0, dragIdx = null;

  function say(t, err) { msg.textContent = t || ''; msg.className = 'j2p-msg' + (err ? ' j2p-err' : ''); }
  function sync() { go.disabled = busy || !items.length; clr.disabled = busy || !items.length; }

  // Non-JPEG (or rotated/CMYK JPEG): draw to canvas and encode as high-quality JPEG
  async function raster(f) {
    var src, w, h, u = null;
    try {
      src = await createImageBitmap(f); w = src.width; h = src.height;
    } catch (e) {
      u = URL.createObjectURL(f);
      src = await new Promise(function (res, rej) {
        var im = new Image();
        im.onload = function () { res(im); };
        im.onerror = function () { rej(new Error('decode')); };
        im.src = u;
      });
      w = src.naturalWidth; h = src.naturalHeight;
    }
    if (!w || !h) throw new Error('empty');
    var c = document.createElement('canvas');
    c.width = w; c.height = h;
    var x = c.getContext('2d');
    x.fillStyle = '#fff'; x.fillRect(0, 0, w, h); x.drawImage(src, 0, 0);
    if (u) URL.revokeObjectURL(u);
    var blob = await new Promise(function (res) { c.toBlob(res, 'image/jpeg', 0.95); });
    if (!blob) throw new Error('encode');
    return { bytes: new Uint8Array(await blob.arrayBuffer()), w: w, h: h, comps: 3 };
  }

  async function addFiles(fs) {
    fs = Array.prototype.filter.call(fs, function (f) {
      return /^image\//.test(f.type) || /\.(jpe?g|png|webp|gif|bmp|heic|heif)$/i.test(f.name);
    });
    if (!fs.length) { say('ไม่พบไฟล์รูปภาพที่รองรับ', true); return; }
    busy = true; sync();
    var bad = [];
    for (var i = 0; i < fs.length; i++) {
      var f = fs[i];
      say('กำลังเตรียมรูปภาพ ' + (i + 1) + '/' + fs.length + '...');
      try {
        var u8 = new Uint8Array(await f.arrayBuffer()), p = parseJpeg(u8), d;
        if (p && (p.c === 1 || p.c === 3) && p.o === 1 && p.w > 0 && p.h > 0) d = { bytes: u8, w: p.w, h: p.h, comps: p.c };
        else d = await raster(f);
        d.id = ++uid; d.name = f.name || 'image'; d.rot = 0; d.url = URL.createObjectURL(f);
        items.push(d);
      } catch (e) { bad.push(f.name || 'image'); }
    }
    busy = false;
    if (bad.length) {
      say('ไม่สามารถอ่านไฟล์: ' + bad.join(', ') + (/\.hei[cf]/i.test(bad.join()) ? ' (เบราว์เซอร์นี้อาจไม่รองรับ HEIC ลองใช้ Safari หรือแปลงเป็น JPG ก่อน)' : ''), true);
    } else { say(''); }
    render();
  }

  function btn(t, label, fn) {
    var b = document.createElement('button');
    b.type = 'button'; b.className = 'j2p-btn'; b.textContent = t;
    b.title = label; b.setAttribute('aria-label', label);
    b.addEventListener('click', fn);
    return b;
  }
  function move(i, j) {
    if (j < 0 || j >= items.length || i === j) return;
    var t = items.splice(i, 1)[0];
    items.splice(j, 0, t);
    render();
  }

  function render() {
    list.textContent = '';
    items.forEach(function (it, i) {
      var li = document.createElement('li');
      li.className = 'j2p-card'; li.draggable = true;
      li.addEventListener('dragstart', function (e) {
        dragIdx = i;
        if (e.dataTransfer) { e.dataTransfer.effectAllowed = 'move'; e.dataTransfer.setData('text/plain', String(i)); }
      });
      li.addEventListener('dragover', function (e) { if (dragIdx !== null) e.preventDefault(); });
      li.addEventListener('drop', function (e) {
        if (dragIdx === null) return;
        e.preventDefault(); e.stopPropagation();
        var from = dragIdx; dragIdx = null; move(from, i);
      });
      li.addEventListener('dragend', function () { dragIdx = null; });
      var th = document.createElement('div'); th.className = 'j2p-th';
      var im = document.createElement('img');
      im.src = it.url; im.alt = it.name; im.draggable = false;
      im.style.transform = 'rotate(' + it.rot + 'deg)';
      im.addEventListener('error', function () { im.style.display = 'none'; });
      th.appendChild(im);
      var nm = document.createElement('div'); nm.className = 'j2p-nm'; nm.textContent = (i + 1) + '. ' + it.name; nm.title = it.name;
      var sz = document.createElement('div'); sz.className = 'j2p-sz'; sz.textContent = it.w + ' × ' + it.h;
      var bar = document.createElement('div'); bar.className = 'j2p-bar';
      bar.appendChild(btn('◀', 'เลื่อนไปก่อนหน้า', function () { move(i, i - 1); }));
      bar.appendChild(btn('▶', 'เลื่อนไปถัดไป', function () { move(i, i + 1); }));
      bar.appendChild(btn('↻ 90°', 'หมุน 90 องศา', function () { it.rot = (it.rot + 90) % 360; render(); }));
      bar.appendChild(btn('×', 'ลบรูปนี้', function () { URL.revokeObjectURL(it.url); items.splice(i, 1); render(); }));
      li.appendChild(th); li.appendChild(nm); li.appendChild(sz); li.appendChild(bar);
      list.appendChild(li);
    });
    sync();
  }

  pick.addEventListener('click', function () { fileIn.click(); });
  fileIn.addEventListener('change', function () {
    if (fileIn.files && fileIn.files.length) addFiles(fileIn.files);
    fileIn.value = '';
  });
  root.addEventListener('dragover', function (e) {
    if (dragIdx === null) { e.preventDefault(); drop.classList.add('on'); }
  });
  root.addEventListener('dragleave', function () { drop.classList.remove('on'); });
  root.addEventListener('drop', function (e) {
    drop.classList.remove('on');
    if (dragIdx !== null) return;
    e.preventDefault();
    if (e.dataTransfer && e.dataTransfer.files.length) addFiles(e.dataTransfer.files);
  });
  document.addEventListener('paste', function (e) {
    var fs = e.clipboardData && e.clipboardData.files;
    if (fs && fs.length) { e.preventDefault(); addFiles(fs); }
  });
  clr.addEventListener('click', function () {
    items.forEach(function (it) { URL.revokeObjectURL(it.url); });
    items = []; say(''); render();
  });
  go.addEventListener('click', function () {
    if (!items.length) return;
    try {
      var blob = buildPdf(items, { size: $('j2pSize').value, margin: parseFloat($('j2pMargin').value) || 0 });
      var url = URL.createObjectURL(blob), a = document.createElement('a');
      a.href = url; a.download = 'converted-images.pdf';
      document.body.appendChild(a); a.click(); a.remove();
      setTimeout(function () { URL.revokeObjectURL(url); }, 5000);
      say('สร้าง PDF สำเร็จ (' + items.length + ' หน้า)');
    } catch (e) { say('สร้าง PDF ไม่สำเร็จ กรุณาลองใหม่อีกครั้ง', true); }
  });
  render();
})();
</script>

แปลงรูปภาพ JPG เป็น PDF ได้ทันทีในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ ไม่ต้องสมัครสมาชิก และไม่ต้องติดตั้งโปรแกรม รองรับ JPG, PNG, WebP, GIF, BMP และ HEIC (HEIC ใช้ได้เมื่อเบราว์เซอร์รองรับ) รวมรูปหลายภาพเป็น PDF ไฟล์เดียวได้ โดยแต่ละรูปจะเป็นหนึ่งหน้า

## รักษาคุณภาพต้นฉบับ

ไฟล์ JPG จะถูกฝังลงใน PDF โดยตรงโดยไม่บีบอัดซ้ำ จึงคงคุณภาพเดิมของภาพ ส่วนไฟล์ชนิดอื่น เช่น PNG, WebP, GIF และ BMP จะถูกแปลงเป็น JPEG คุณภาพสูง (95%) ก่อนใส่ใน PDF โดยพื้นที่โปร่งใสจะกลายเป็นสีขาว

## วิธีใช้งานเครื่องมือแปลง JPG เป็น PDF

1. **เพิ่มรูปภาพ** คลิกปุ่ม "เลือกรูปภาพ…" ลากไฟล์มาวางในกรอบ หรือกด Ctrl+V (⌘+V บน Mac) เพื่อวางรูปจากคลิปบอร์ด เพิ่มได้หลายรูปพร้อมกัน
2. **เลือกขนาดหน้า** เลือก A4, Letter หรือ พอดี (ขนาดหน้าเท่ากับรูปภาพ) รูปที่ใหญ่กว่ากระดาษจะถูกย่อให้พอดี ส่วนรูปที่เล็กกว่าจะไม่ถูกขยาย เพื่อไม่ให้ภาพแตกเป็นเม็ด
3. **ตั้งระยะขอบ (ถ้าต้องการ)** ใส่ตัวเลขหน่วยมิลลิเมตร เพื่อเว้นขอบกระดาษว่างรอบรูปแต่ละภาพ ค่าเริ่มต้นคือ 0
4. **จัดลำดับหน้า** ลากการ์ดรูปภาพไปวางตำแหน่งใหม่ หรือกดปุ่ม ◀ ▶ (เหมาะกับมือถือ)
5. **หมุนหรือลบรูป** กดปุ่ม ↻ 90° เพื่อหมุนรูปตามเข็มนาฬิกาครั้งละ 90 องศา หรือกด × เพื่อลบรูปที่ไม่ต้องการ
6. **สร้างไฟล์** กดปุ่ม "สร้าง PDF" แล้วไฟล์จะถูกดาวน์โหลดโดยอัตโนมัติ หากต้องการเริ่มใหม่ให้กดปุ่ม "ล้าง"

## คำอธิบายศัพท์ที่ควรรู้

- **JPG / JPEG** รูปแบบไฟล์ภาพที่ใช้กันแพร่หลายที่สุด บีบอัดแล้วไฟล์เล็ก เหมาะกับภาพถ่าย
- **PNG** ไฟล์ภาพที่คมชัดและรองรับพื้นหลังโปร่งใส นิยมใช้กับภาพหน้าจอและโลโก้
- **WebP** ไฟล์ภาพรูปแบบใหม่จาก Google ขนาดเล็กกว่า JPG ในคุณภาพใกล้เคียงกัน
- **GIF** ไฟล์ภาพที่มีสีจำกัด มักใช้กับภาพเคลื่อนไหว เครื่องมือนี้จะใช้เฟรมแรก
- **BMP** ไฟล์ภาพแบบไม่บีบอัด คุณภาพสูงแต่ไฟล์มีขนาดใหญ่
- **HEIC** รูปแบบภาพที่ iPhone ใช้บันทึกภาพถ่าย ไฟล์เล็กแต่บางเบราว์เซอร์ยังเปิดไม่ได้
- **PDF** รูปแบบเอกสารที่แสดงผลเหมือนกันทุกอุปกรณ์ เหมาะกับการส่งงาน พิมพ์ และเก็บเอกสาร
- **A4** ขนาดกระดาษมาตรฐานในประเทศไทย กว้าง 210 × สูง 297 มิลลิเมตร
- **Letter** ขนาดกระดาษมาตรฐานในสหรัฐอเมริกา กว้าง 8.5 × สูง 11 นิ้ว
- **พอดี (Fit)** ขนาดหน้า PDF จะปรับให้เท่ากับขนาดของแต่ละรูปภาพ ไม่มีพื้นที่ว่างเกินความจำเป็น
- **ระยะขอบ (Margin)** พื้นที่ว่างระหว่างขอบกระดาษกับรูปภาพ มีหน่วยเป็นมิลลิเมตร (mm)
- **มิลลิเมตร (mm)** หน่วยวัดความยาว 1 เซนติเมตรเท่ากับ 10 มิลลิเมตร
- **หมุน 90°** หมุนรูปตามเข็มนาฬิกาครั้งละ 90 องศา เหมาะกับรูปที่ถ่ายในแนวที่ไม่ตรงกับที่ต้องการ
- **ประมวลผลในเบราว์เซอร์** การแปลงไฟล์ทำบนอุปกรณ์ของคุณเอง ไฟล์ไม่ถูกส่งไปยังเซิร์ฟเวอร์