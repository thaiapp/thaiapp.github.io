---
title: ปรับขนาดรูปภาพออนไลน์ ฟรี
h1: ปรับขนาดรูปภาพออนไลน์
description: ปรับขนาดรูปภาพออนไลน์ฟรี ย่อหรือครอปรูป JPG, PNG, WebP ได้หลายไฟล์พร้อมกัน กำหนดเป็นเปอร์เซ็นต์หรือพิกเซลได้ ไม่ต้องอัปโหลด ปลอดภัย ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-12T09:00:00+07:00'
weight: 104
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ปรับขนาดรูปภาพออนไลน์
- รูปภาพ
---

ปรับขนาดหลายรูปพร้อมกัน ไม่ต้องอัปโหลด รองรับแบบกลุ่ม ฟรี

<style>
#rz-app{--rz-bg:#fff;--rz-fg:#1f2430;--rz-mut:#667085;--rz-line:#d9dee7;--rz-acc:#2563eb;--rz-acc-fg:#fff;--rz-soft:#eef3ff;--rz-card:#f7f8fb;max-width:880px;margin:1.25rem 0;color:var(--rz-fg);font-size:15px;line-height:1.5}
@media (prefers-color-scheme:dark){#rz-app{--rz-bg:#14171f;--rz-fg:#e8ebf2;--rz-mut:#9aa3b5;--rz-line:#2c3342;--rz-acc:#6ea0ff;--rz-acc-fg:#0b1020;--rz-soft:#1b2540;--rz-card:#1a1e29}}
#rz-app *{box-sizing:border-box}
#rz-drop{border:2px dashed var(--rz-line);border-radius:14px;padding:28px 16px;text-align:center;background:var(--rz-card);cursor:pointer;transition:border-color .15s,background .15s}
#rz-drop:hover,#rz-drop:focus,#rz-drop.rz-over{border-color:var(--rz-acc);background:var(--rz-soft);outline:none}
#rz-drop b{display:block;font-size:1.05rem;margin-bottom:4px}
#rz-drop span{color:var(--rz-mut);font-size:.88rem}
#rz-panel{margin-top:14px;padding:14px;border:1px solid var(--rz-line);border-radius:14px;background:var(--rz-bg)}
.rz-row{display:flex;flex-wrap:wrap;gap:10px;align-items:center}
.rz-row+.rz-row{margin-top:10px}
#rz-app select,#rz-app input[type=text],#rz-app input[type=number]{font:inherit;color:var(--rz-fg);background:var(--rz-bg);border:1px solid var(--rz-line);border-radius:10px;padding:8px 10px;min-height:40px}
#rz-value{width:120px}
#rz-unit{color:var(--rz-mut)}
#rz-app button{font:inherit;cursor:pointer;border-radius:10px;border:1px solid var(--rz-line);background:var(--rz-bg);color:var(--rz-fg);padding:7px 14px;min-height:40px}
#rz-app button:hover{border-color:var(--rz-acc)}
#rz-app button.rz-primary{background:var(--rz-acc);color:var(--rz-acc-fg);border-color:var(--rz-acc);font-weight:600}
#rz-app button:disabled{opacity:.45;cursor:not-allowed}
.rz-chip{min-height:34px!important;padding:3px 12px!important;border-radius:999px!important;font-size:.88rem}
.rz-chip.rz-on{background:var(--rz-soft)!important;border-color:var(--rz-acc)!important}
#rz-hint{color:var(--rz-mut);font-size:.88rem}
#rz-list{margin-top:14px;display:grid;gap:10px}
.rz-card{display:flex;gap:12px;align-items:center;padding:10px;border:1px solid var(--rz-line);border-radius:12px;background:var(--rz-bg)}
.rz-card img{width:64px;height:64px;object-fit:cover;border-radius:8px;background:var(--rz-card);flex:none}
.rz-meta{flex:1;min-width:0;display:flex;flex-direction:column;gap:2px}
.rz-name{font-weight:600;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.rz-dim{color:var(--rz-mut);font-size:.9rem}
.rz-dim b{color:var(--rz-fg)}
.rz-tag{font-size:.8rem;color:var(--rz-mut)}
.rz-err{color:#d92d20;font-size:.85rem}
.rz-btns{display:flex;gap:6px;flex-wrap:wrap;justify-content:flex-end}
.rz-btns button{padding:5px 11px!important;min-height:36px!important;font-size:.9rem}
#rz-toast{min-height:1.4em;margin-top:10px;font-size:.9rem;color:var(--rz-mut)}
#rz-note{margin-top:10px;font-size:.85rem;color:var(--rz-mut)}
@media (max-width:520px){.rz-card{flex-wrap:wrap}.rz-btns{width:100%;justify-content:flex-start}}
</style>
<div id="rz-app">
<div id="rz-drop" tabindex="0" role="button" aria-label="เพิ่มรูปภาพ"><b>วางรูปภาพที่นี่</b><span>ลากไฟล์มาวาง คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวางจากคลิปบอร์ด (เลือกได้หลายไฟล์)</span></div>
<input type="file" id="rz-file" accept="image/*" multiple hidden>
<div id="rz-panel">
<div class="rz-row"><label for="rz-mode">รูปแบบ</label><select id="rz-mode"></select><input type="text" id="rz-value" inputmode="decimal" autocomplete="off" aria-label="ค่าที่ต้องการ"><span id="rz-unit"></span></div>
<div class="rz-row" id="rz-chips"></div>
<div class="rz-row" id="rz-hint"></div>
<div class="rz-row"><button type="button" class="rz-primary" id="rz-zip" disabled>ดาวน์โหลดทั้งหมด (Zip)</button><button type="button" id="rz-dir" disabled hidden>ส่งออกไปยังโฟลเดอร์</button><button type="button" id="rz-clear" disabled>ล้าง</button></div>
</div>
<div id="rz-list" aria-live="polite"></div>
<div id="rz-toast" role="status" aria-live="polite"></div>
<div id="rz-note">🛡️ การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกส่งออกจากอุปกรณ์ของคุณ</div>
</div>
<script>
(function () {
  'use strict';
  var MODES = [
    { key: 'percent', label: 'เปอร์เซ็นต์ (ย่อตามสัดส่วน)', unit: '%', def: '50', presets: ['25', '50', '75'], hint: 'ย่อทั้งภาพตามเปอร์เซ็นต์ที่กำหนด รูปทรงเหมือนเดิมและไม่ตัดส่วนใดออก' },
    { key: 'long', label: 'ด้านที่ยาวที่สุด (สูงสุด)', unit: 'px (สูงสุด)', def: '1200', presets: ['800', '1200', '1920'], hint: 'จำกัดด้านที่ยาวที่สุดไม่ให้เกินค่าที่กำหนด รูปที่เล็กกว่าอยู่แล้วจะไม่ถูกขยาย' },
    { key: 'width', label: 'ความกว้าง', unit: 'px (กว้าง)', def: '800', presets: ['800', '1200', '1920'], hint: 'กำหนดความกว้าง ความสูงจะปรับตามอัตโนมัติเพื่อคงสัดส่วนเดิม' },
    { key: 'height', label: 'ความสูง', unit: 'px (สูง)', def: '600', presets: ['600', '800', '1080'], hint: 'กำหนดความสูง ความกว้างจะปรับตามอัตโนมัติเพื่อคงสัดส่วนเดิม' },
    { key: 'ratio', label: 'กำหนดเอง: อัตราส่วน (ครอบตัด)', unit: 'เช่น 1:1', def: '1:1', presets: ['1:1', '4:3', '16:9', '4:6'], hint: 'ครอบตัดจากกึ่งกลางให้ได้อัตราส่วนที่ต้องการ โดยคงความละเอียดเต็มรูปแบบ' },
    { key: 'exact', label: 'กำหนดเอง: ขนาดที่แน่นอน (ครอบตัด)', unit: 'เช่น 600x800', def: '600x800', presets: ['600x800', '1080x1080', '413x531'], hint: 'ครอบตัดให้ได้สัดส่วนก่อน แล้วปรับเป็นขนาดพิกเซลที่แน่นอน เหมาะกับรูปติดบัตรหรือแบบฟอร์ม' }
  ];
  var EXT = { 'image/jpeg': '.jpg', 'image/png': '.png', 'image/webp': '.webp' };
  var items = [];
  var uid = 0;
  var state = { mode: 'percent', value: '50' };
  var $ = function (id) { return document.getElementById(id); };
  var elMode = $('rz-mode'), elValue = $('rz-value'), elUnit = $('rz-unit'), elChips = $('rz-chips');
  var elHint = $('rz-hint'), elList = $('rz-list'), elToast = $('rz-toast'), elFile = $('rz-file');
  var elDrop = $('rz-drop'), btnZip = $('rz-zip'), btnClear = $('rz-clear'), btnDir = $('rz-dir');
  var toastTimer = null;
  function esc(s) {
    return String(s).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  }
  function toast(msg) {
    elToast.textContent = msg;
    clearTimeout(toastTimer);
    toastTimer = setTimeout(function () { elToast.textContent = ''; }, 5000);
  }
  function modeDef() {
    for (var i = 0; i < MODES.length; i++) { if (MODES[i].key === state.mode) { return MODES[i]; } }
    return MODES[0];
  }
  function parsePair(v) {
    var m = /^\s*(\d+(?:\.\d+)?)\s*[x×:*]\s*(\d+(?:\.\d+)?)\s*$/i.exec(v);
    if (!m) { return null; }
    var a = parseFloat(m[1]), b = parseFloat(m[2]);
    return (a > 0 && b > 0) ? [a, b] : null;
  }
  function cropTo(r, ow, oh, t) {
    if (ow / oh > t) { r.sh = oh; r.sw = Math.max(1, Math.round(oh * t)); }
    else { r.sw = ow; r.sh = Math.max(1, Math.round(ow / t)); }
    r.sx = Math.round((ow - r.sw) / 2);
    r.sy = Math.round((oh - r.sh) / 2);
  }
  function compute(it) {
    var ow = it.w, oh = it.h, m = state.mode, v = state.value;
    var r = { w: ow, h: oh, sx: 0, sy: 0, sw: ow, sh: oh, same: false, err: false, crop: false };
    var n, p, k, base, pr;
    if (m === 'percent') {
      p = parseFloat(v);
      if (!(p > 0) || p > 1000) { r.err = true; return r; }
      r.w = Math.max(1, Math.round(ow * p / 100));
      r.h = Math.max(1, Math.round(oh * p / 100));
      r.same = (r.w === ow && r.h === oh);
      return r;
    }
    if (m === 'long' || m === 'width' || m === 'height') {
      n = parseInt(v, 10);
      if (!(n > 0) || n > 20000) { r.err = true; return r; }
      base = m === 'long' ? Math.max(ow, oh) : (m === 'width' ? ow : oh);
      if (n >= base) { r.same = true; return r; }
      k = n / base;
      r.w = Math.max(1, Math.round(ow * k));
      r.h = Math.max(1, Math.round(oh * k));
      return r;
    }
    pr = parsePair(v);
    if (!pr) { r.err = true; return r; }
    r.crop = true;
    if (m === 'ratio') {
      cropTo(r, ow, oh, pr[0] / pr[1]);
      r.w = r.sw; r.h = r.sh;
      r.same = (r.sw === ow && r.sh === oh);
      return r;
    }
    if (pr[0] > 20000 || pr[1] > 20000) { r.err = true; return r; }
    cropTo(r, ow, oh, pr[0] / pr[1]);
    r.w = Math.round(pr[0]); r.h = Math.round(pr[1]);
    return r;
  }
  function outType(file) {
    return EXT[file.type] ? file.type : 'image/jpeg';
  }
  function baseName(name) {
    var i = name.lastIndexOf('.');
    return i > 0 ? name.slice(0, i) : name;
  }
  function origExt(name) {
    var i = name.lastIndexOf('.');
    return i > 0 ? name.slice(i) : '';
  }
  function outName(it, r) {
    if (r.same) { return it.file.name; }
    return baseName(it.file.name) + '-' + r.w + 'x' + r.h + EXT[outType(it.file)];
  }
  function render(it, forcePng) {
    return new Promise(function (resolve, reject) {
      var r = compute(it);
      if (r.err) { reject(new Error('ค่าที่กำหนดไม่ถูกต้อง')); return; }
      if (r.same && !forcePng) { resolve(it.file); return; }
      var type = forcePng ? 'image/png' : outType(it.file);
      var c = document.createElement('canvas');
      c.width = r.w; c.height = r.h;
      var x = c.getContext('2d');
      if (type === 'image/jpeg') { x.fillStyle = '#ffffff'; x.fillRect(0, 0, r.w, r.h); }
      x.imageSmoothingEnabled = true;
      x.imageSmoothingQuality = 'high';
      x.drawImage(it.img, r.sx, r.sy, r.sw, r.sh, 0, 0, r.w, r.h);
      c.toBlob(function (b) {
        if (b) { resolve(b); } else { reject(new Error('สร้างไฟล์ไม่สำเร็จ')); }
      }, type, 0.92);
    });
  }
  function saveBlob(blob, name) {
    var a = document.createElement('a');
    var url = URL.createObjectURL(blob);
    a.href = url; a.download = name;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
  }
  function findItem(id) {
    for (var i = 0; i < items.length; i++) { if (items[i].id === id) { return items[i]; } }
    return null;
  }
  function uniqueName(name, used) {
    if (!used[name]) { used[name] = 1; return name; }
    var b = baseName(name), e = origExt(name), n = used[name] + 1, cand;
    do { cand = b + '-' + n + e; n++; } while (used[cand]);
    used[name] = n - 1; used[cand] = 1;
    return cand;
  }
  function renderAll() {
    return Promise.all(items.map(function (it) {
      return render(it).then(function (blob) {
        return { name: outName(it, compute(it)), blob: blob };
      });
    }));
  }
  // ZIP (tanpa pustaka luar, mode "store")
  var crcTable = (function () {
    var t = [], c, n, k;
    for (n = 0; n < 256; n++) {
      c = n;
      for (k = 0; k < 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
      t[n] = c >>> 0;
    }
    return t;
  })();
  function crc32(u8) {
    var c = 0xFFFFFFFF;
    for (var i = 0; i < u8.length; i++) { c = crcTable[(c ^ u8[i]) & 255] ^ (c >>> 8); }
    return (c ^ 0xFFFFFFFF) >>> 0;
  }
  function buildZip(files) {
    var enc = new TextEncoder(), parts = [], cen = [], off = 0, d = new Date();
    var time = (d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1);
    var date = ((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate();
    files.forEach(function (f) {
      var nm = enc.encode(f.name), crc = crc32(f.data), sz = f.data.length;
      var lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true); lh.setUint16(4, 20, true); lh.setUint16(6, 0x0800, true);
      lh.setUint16(8, 0, true); lh.setUint16(10, time, true); lh.setUint16(12, date, true);
      lh.setUint32(14, crc, true); lh.setUint32(18, sz, true); lh.setUint32(22, sz, true);
      lh.setUint16(26, nm.length, true); lh.setUint16(28, 0, true);
      parts.push(new Uint8Array(lh.buffer), nm, f.data);
      var ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true); ch.setUint16(4, 20, true); ch.setUint16(6, 20, true);
      ch.setUint16(8, 0x0800, true); ch.setUint16(10, 0, true); ch.setUint16(12, time, true);
      ch.setUint16(14, date, true); ch.setUint32(16, crc, true); ch.setUint32(20, sz, true);
      ch.setUint32(24, sz, true); ch.setUint16(28, nm.length, true); ch.setUint32(42, off, true);
      cen.push(new Uint8Array(ch.buffer), nm);
      off += 30 + nm.length + sz;
    });
    var csz = 0;
    cen.forEach(function (p) { csz += p.length; });
    var e = new DataView(new ArrayBuffer(22));
    e.setUint32(0, 0x06054b50, true); e.setUint16(8, files.length, true); e.setUint16(10, files.length, true);
    e.setUint32(12, csz, true); e.setUint32(16, off, true);
    return new Blob(parts.concat(cen, [new Uint8Array(e.buffer)]), { type: 'application/zip' });
  }
  function draw() {
    var html = '';
    items.forEach(function (it) {
      var r = compute(it);
      var info;
      if (r.err) {
        info = '<span class="rz-err">ค่าที่กำหนดไม่ถูกต้อง</span>';
      } else if (r.same) {
        info = '<span class="rz-dim">' + it.w + ' × ' + it.h + '</span> <span class="rz-tag">ไม่เปลี่ยน (ส่งออกขนาดเดิม)</span>';
      } else {
        info = '<span class="rz-dim">' + it.w + ' × ' + it.h + ' → <b>' + r.w + ' × ' + r.h + '</b>' + (r.crop ? ' ✂' : '') + '</span>';
      }
      html += '<div class="rz-card" data-id="' + it.id + '"><img src="' + esc(it.url) + '" alt="">' +
        '<div class="rz-meta"><span class="rz-name" title="' + esc(it.file.name) + '">' + esc(it.file.name) + '</span>' + info + '</div>' +
        '<div class="rz-btns"><button type="button" data-act="dl"' + (r.err ? ' disabled' : '') + '>ดาวน์โหลด</button>' +
        '<button type="button" data-act="cp"' + (r.err ? ' disabled' : '') + '>คัดลอก</button>' +
        '<button type="button" data-act="rm" aria-label="ลบรูปนี้">✕</button></div></div>';
    });
    elList.innerHTML = html;
    var has = items.length > 0;
    btnZip.disabled = !has; btnClear.disabled = !has; btnDir.disabled = !has;
  }
  function drawControls() {
    var m = modeDef();
    elUnit.textContent = m.unit;
    elHint.textContent = m.hint;
    var h = '';
    m.presets.forEach(function (p) {
      h += '<button type="button" class="rz-chip' + (p === state.value ? ' rz-on' : '') + '" data-v="' + esc(p) + '">' + esc(p) + (m.key === 'percent' ? '%' : (m.key === 'ratio' || m.key === 'exact' ? '' : 'px')) + '</button>';
    });
    elChips.innerHTML = h;
  }
  function addFiles(list) {
    var n = 0;
    Array.prototype.forEach.call(list, function (f) {
      if (!/^image\//.test(f.type) && !/\.(jpe?g|png|webp|gif|bmp|avif|heic|heif)$/i.test(f.name)) { return; }
      n++;
      var url = URL.createObjectURL(f);
      var img = new Image();
      img.onload = function () {
        items.push({ id: ++uid, file: f, url: url, img: img, w: img.naturalWidth, h: img.naturalHeight });
        draw();
      };
      img.onerror = function () {
        URL.revokeObjectURL(url);
        toast('เบราว์เซอร์นี้เปิดไฟล์ "' + f.name + '" ไม่ได้ ลองแปลงเป็น JPG หรือ PNG ก่อน');
      };
      img.src = url;
    });
    if (!n) { toast('ไม่พบไฟล์รูปภาพ'); }
  }
  MODES.forEach(function (m) {
    var o = document.createElement('option');
    o.value = m.key; o.textContent = m.label;
    elMode.appendChild(o);
  });
  elValue.value = state.value;
  drawControls();
  elMode.addEventListener('change', function () {
    state.mode = elMode.value;
    state.value = modeDef().def;
    elValue.value = state.value;
    drawControls(); draw();
  });
  elValue.addEventListener('input', function () {
    state.value = elValue.value;
    drawControls(); draw();
  });
  elChips.addEventListener('click', function (e) {
    var b = e.target.closest ? e.target.closest('button[data-v]') : null;
    if (!b) { return; }
    state.value = b.getAttribute('data-v');
    elValue.value = state.value;
    drawControls(); draw();
  });
  elDrop.addEventListener('click', function () { elFile.click(); });
  elDrop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); elFile.click(); }
  });
  elFile.addEventListener('change', function () {
    addFiles(elFile.files);
    elFile.value = '';
  });
  ['dragenter', 'dragover'].forEach(function (ev) {
    elDrop.addEventListener(ev, function (e) { e.preventDefault(); elDrop.classList.add('rz-over'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    elDrop.addEventListener(ev, function (e) { e.preventDefault(); elDrop.classList.remove('rz-over'); });
  });
  elDrop.addEventListener('drop', function (e) {
    if (e.dataTransfer && e.dataTransfer.files) { addFiles(e.dataTransfer.files); }
  });
  document.addEventListener('paste', function (e) {
    var t = e.target;
    if (t && (t.tagName === 'INPUT' || t.tagName === 'TEXTAREA')) { return; }
    var files = [];
    var list = (e.clipboardData && e.clipboardData.items) || [];
    for (var i = 0; i < list.length; i++) {
      if (list[i].kind === 'file') {
        var f = list[i].getAsFile();
        if (f) { files.push(f); }
      }
    }
    if (files.length) { e.preventDefault(); addFiles(files); }
  });
  elList.addEventListener('click', function (e) {
    var b = e.target.closest ? e.target.closest('button[data-act]') : null;
    if (!b) { return; }
    var card = b.closest('.rz-card');
    var it = card ? findItem(parseInt(card.getAttribute('data-id'), 10)) : null;
    if (!it) { return; }
    var act = b.getAttribute('data-act');
    if (act === 'rm') {
      URL.revokeObjectURL(it.url);
      items = items.filter(function (x) { return x !== it; });
      draw();
    } else if (act === 'dl') {
      render(it).then(function (blob) { saveBlob(blob, outName(it, compute(it))); })
        .catch(function (err) { toast(err.message); });
    } else if (act === 'cp') {
      if (!(navigator.clipboard && window.ClipboardItem)) { toast('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูปภาพ'); return; }
      render(it, true).then(function (blob) {
        return navigator.clipboard.write([new ClipboardItem({ 'image/png': blob })]);
      }).then(function () { toast('คัดลอกรูปภาพแล้ว'); })
        .catch(function () { toast('คัดลอกไม่สำเร็จ ลองใช้ปุ่มดาวน์โหลดแทน'); });
    }
  });
  btnZip.addEventListener('click', function () {
    if (!items.length) { return; }
    btnZip.disabled = true;
    renderAll().then(function (res) {
      var used = {};
      return Promise.all(res.map(function (x) {
        return x.blob.arrayBuffer().then(function (buf) {
          return { name: uniqueName(x.name, used), data: new Uint8Array(buf) };
        });
      }));
    }).then(function (files) {
      saveBlob(buildZip(files), 'resized-images.zip');
      toast('สร้างไฟล์ Zip แล้ว (' + files.length + ' รูป)');
    }).catch(function (err) { toast(err.message); })
      .then(function () { btnZip.disabled = !items.length; });
  });
  if (window.showDirectoryPicker) {
    btnDir.hidden = false;
    btnDir.addEventListener('click', function () {
      if (!items.length) { return; }
      var dir;
      window.showDirectoryPicker({ mode: 'readwrite' }).then(function (d) {
        dir = d;
        return renderAll();
      }).then(function (res) {
        var used = {};
        return res.reduce(function (chain, x) {
          return chain.then(function () {
            return dir.getFileHandle(uniqueName(x.name, used), { create: true }).then(function (fh) {
              return fh.createWritable();
            }).then(function (w) {
              return w.write(x.blob).then(function () { return w.close(); });
            });
          });
        }, Promise.resolve()).then(function () { toast('บันทึกลงโฟลเดอร์แล้ว (' + res.length + ' รูป)'); });
      }).catch(function (err) {
        if (err && err.name !== 'AbortError') { toast('บันทึกลงโฟลเดอร์ไม่สำเร็จ'); }
      });
    });
  }
  btnClear.addEventListener('click', function () {
    items.forEach(function (it) { URL.revokeObjectURL(it.url); });
    items = [];
    draw();
  });
  draw();
})();
</script>

## วิธีใช้งาน

1. **เพิ่มรูปภาพ** ลากไฟล์มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด `Ctrl`+`V` เพื่อวางจากคลิปบอร์ด เลือกได้หลายไฟล์พร้อมกัน (กด `Ctrl` ค้างไว้ตอนเลือกไฟล์)
2. **เลือกรูปแบบการปรับขนาด** จากเมนู "รูปแบบ" เช่น เปอร์เซ็นต์, ด้านที่ยาวที่สุด, ความกว้าง, ความสูง หรือโหมดกำหนดเองที่ครอบตัดให้พอดี
3. **ใส่ค่าที่ต้องการ** พิมพ์ตัวเลขในช่องค่า หรือกดปุ่มพรีเซ็ตด่วน เช่น 800px, 1200px, 50% ขนาดใหม่ของทุกรูปจะอัปเดตทันที
4. **ตรวจสอบขนาด** แต่ละรูปจะแสดงขนาดเดิมและขนาดใหม่ที่คำนวณไว้ หากรูปเล็กกว่าเป้าหมายจะแสดงว่า "ไม่เปลี่ยน"
5. **บันทึกผลลัพธ์** กด "ดาวน์โหลด" ที่รูปใดรูปหนึ่ง กด "คัดลอก" เพื่อนำไปวางที่อื่น หรือกด "ดาวน์โหลดทั้งหมด (Zip)" เพื่อรับทุกรูปในไฟล์เดียว ถ้าเบราว์เซอร์รองรับ จะมีปุ่ม "ส่งออกไปยังโฟลเดอร์" ให้บันทึกลงโฟลเดอร์ที่เลือกโดยตรง
6. **เริ่มใหม่** กด "✕" เพื่อลบรูปเดียว หรือกด "ล้าง" เพื่อลบทั้งหมด

### เลือกโหมดไหนดี

- **เปอร์เซ็นต์** เหมาะกับการย่อรูปแบบรวดเร็ว เช่น 50% ได้ขนาดครึ่งหนึ่งโดยสัดส่วนเท่าเดิม
- **ด้านที่ยาวที่สุด** เหมาะเมื่อต้องการแค่ "ไม่เกิน N พิกเซล" รูปแนวตั้งและแนวนอนใช้ค่าเดียวกันได้
- **ความกว้าง / ความสูง** กำหนดด้านเดียว อีกด้านปรับตามเพื่อไม่ให้ภาพเพี้ยน
- **อัตราส่วน (ครอบตัด)** เช่น 1:1 สำหรับรูปโปรไฟล์ หรือ 16:9 สำหรับภาพหน้าปก จะตัดขอบออกจากกึ่งกลางภาพ
- **ขนาดที่แน่นอน (ครอบตัด)** เช่น 600x800 สำหรับรูปติดบัตรหรืออัปโหลดแบบฟอร์มที่กำหนดพิกเซลตายตัว

## คำอธิบายศัพท์

- **พิกเซล (px)** จุดสีเล็ก ๆ ที่ประกอบกันเป็นรูปภาพ ยิ่งจำนวนพิกเซลมาก ภาพยิ่งละเอียดและไฟล์ยิ่งใหญ่
- **เปอร์เซ็นต์ (%)** สัดส่วนเทียบกับขนาดเดิม เช่น 50% คือกว้างและสูงเหลือครึ่งหนึ่ง
- **ด้านที่ยาวที่สุด (สูงสุด)** ด้านที่มากกว่าระหว่างความกว้างกับความสูง ใช้จำกัดขนาดสูงสุดของรูป
- **ความกว้าง / ความสูง** ขนาดแนวนอนและแนวตั้งของรูป หน่วยเป็นพิกเซล
- **อัตราส่วน (Aspect Ratio)** สัดส่วนความกว้างต่อความสูง เช่น 1:1 คือสี่เหลี่ยมจัตุรัส 16:9 คือแนวนอนแบบจอกว้าง
- **คงสัดส่วน** ปรับขนาดโดยไม่ยืดหรือบีบภาพ ความกว้างและความสูงเปลี่ยนในอัตราเดียวกัน
- **ครอบตัด (Crop)** ตัดขอบภาพส่วนเกินออกเพื่อให้ได้รูปทรงที่ต้องการ โดยเก็บส่วนกลางภาพไว้ (สัญลักษณ์ ✂ บนการ์ดรูป)
- **กำหนดเอง** โหมดที่ระบุอัตราส่วนหรือขนาดพิกเซลเอง และครอบตัดภาพให้พอดี
- **ไม่เปลี่ยน** รูปที่เล็กกว่าค่าที่ตั้งไว้ ระบบจะไม่ขยายเพื่อรักษาคุณภาพ และส่งออกด้วยไฟล์เดิม
- **พรีเซ็ตด่วน** ปุ่มค่าที่ใช้บ่อยให้กดเลือกได้ทันที ไม่ต้องพิมพ์เอง
- **คัดลอก** ส่งรูปที่ปรับขนาดแล้วไปยังคลิปบอร์ด เพื่อวางต่อในแอปอื่น (ในรูปแบบ PNG)
- **ดาวน์โหลดทั้งหมด (Zip)** รวมรูปที่ปรับขนาดแล้วทั้งหมดเป็นไฟล์บีบอัดไฟล์เดียว
- **ส่งออกไปยังโฟลเดอร์** บันทึกรูปทั้งหมดลงโฟลเดอร์ในเครื่องโดยตรง ใช้ได้เฉพาะเบราว์เซอร์ที่รองรับ เช่น Chrome และ Edge บนคอมพิวเตอร์
- **JPG / PNG / WebP** ชนิดไฟล์ภาพยอดนิยม JPG เล็กและเหมาะกับภาพถ่าย PNG คมชัดและรองรับพื้นหลังโปร่งใส WebP เล็กกว่าและใช้บนเว็บได้ดี
- **HEIC** ไฟล์ภาพจาก iPhone/iPad ใช้ได้เมื่อเบราว์เซอร์เปิดไฟล์ได้ (เช่น Safari) ไฟล์ที่ไม่ใช่ JPG, PNG, WebP จะส่งออกเป็น JPG
- **ประมวลผลในเครื่อง** การย่อรูปทำในเบราว์เซอร์ของคุณเอง ไฟล์ไม่ถูกอัปโหลดไปที่เซิร์ฟเวอร์

## รูปแบบที่รองรับ

รูป JPG, PNG และ WebP จะคงรูปแบบเดิมหลังปรับขนาด ส่วนรูปชนิดอื่นที่เบราว์เซอร์เปิดได้ เช่น GIF, BMP หรือ HEIC จะถูกส่งออกเป็น JPG รูปที่เล็กกว่าขนาดเป้าหมายจะแสดงเป็น "ไม่เปลี่ยน" และส่งออกในขนาดเดิม

ปรับขนาดหลายรูปพร้อมกันในเบราว์เซอร์โดยไม่ต้องอัปโหลด ย่อรูปสำหรับโซเชียลมีเดีย อีเมล หรือเว็บไซต์ เลือกความกว้าง ความสูง หรือเปอร์เซ็นต์เป้าหมาย แล้วรูปทั้งหมดจะอัปเดตทันที ทุกอย่างทำงานในเครื่องของคุณ ไฟล์ของคุณจะเป็นส่วนตัวอย่างสมบูรณ์