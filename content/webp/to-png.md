---
title: แปลงไฟล์ WebP เป็น PNG ออนไลน์ ฟรี
h1: แปลงไฟล์ WebP เป็น PNG ออนไลน์
description: แปลงไฟล์ WebP เป็น PNG ออนไลน์ฟรี ไม่ต้องอัปโหลด แปลงหลายไฟล์พร้อมกัน รองรับ WebP เคลื่อนไหวเป็น APNG ปรับขนาด เลือกสีพื้นหลังได้ ดาวน์โหลดเป็น ZIP ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-15T12:05:00+07:00'
weight: 117
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- แปลงไฟล์ WebP เป็น PNG ออนไลน์
- รูปภาพ
---

<style>
.w2p{position:relative;max-width:860px;margin:0 auto 28px;font-size:15px;line-height:1.5;color-scheme:light dark}
.w2p [hidden]{display:none !important}
.w2p-file{position:absolute;width:1px;height:1px;opacity:0;overflow:hidden;pointer-events:none}
.w2p-drop{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:6px;min-height:150px;padding:20px;text-align:center;border:2px dashed rgba(128,128,128,.55);border-radius:14px;cursor:pointer;transition:border-color .15s,background .15s}
.w2p-drop:hover,.w2p-drop.w2p-over{border-color:#2563eb;background:rgba(37,99,235,.08)}
.w2p-drop span{opacity:.75;font-size:13px}
.w2p-privacy{margin:10px 0 0;font-size:13px;opacity:.8;text-align:center}
.w2p-opts{display:grid;grid-template-columns:repeat(auto-fit,minmax(210px,1fr));gap:12px;margin:16px 0}
.w2p-opt label{display:block;font-weight:600;font-size:13px;margin-bottom:4px}
.w2p select,.w2p input[type=text],.w2p input[type=number]{width:100%;box-sizing:border-box;padding:8px 10px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;color:inherit;font:inherit}
.w2p input[type=color]{width:100%;height:38px;margin-top:6px;padding:2px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;cursor:pointer}
.w2p-rsrow{display:flex;gap:6px;align-items:center}
.w2p-rsrow select{flex:1}
.w2p-rsrow input{width:90px !important;flex:none}
.w2p-hint{display:block;margin-top:4px;font-size:12px;opacity:.7}
.w2p-bar{display:flex;flex-wrap:wrap;align-items:center;gap:8px;margin:8px 0}
.w2p-bar .w2p-grow{flex:1;min-width:140px;font-size:13px}
.w2p-btn{padding:8px 14px;border-radius:8px;border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;font:inherit;cursor:pointer}
.w2p-btn:disabled{opacity:.45;cursor:not-allowed}
.w2p-btn-primary{background:#2563eb;border-color:#2563eb;color:#fff}
.w2p-btn-ghost{padding:8px 10px}
.w2p progress{width:100%;height:8px}
.w2p-msg{margin:8px 0;padding:8px 12px;border-radius:8px;background:rgba(220,38,38,.12);color:#dc2626;font-size:13px}
.w2p-row{display:flex;align-items:center;gap:10px;padding:8px;margin-top:8px;border:1px solid rgba(128,128,128,.3);border-radius:10px}
.w2p-thumb{width:56px;height:56px;flex:none;object-fit:contain;border-radius:6px;background-image:conic-gradient(rgba(128,128,128,.35) 25%,transparent 0 50%,rgba(128,128,128,.35) 0 75%,transparent 0);background-size:12px 12px}
.w2p-info{flex:1;min-width:0;display:flex;flex-direction:column}
.w2p-name{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.w2p-meta{font-size:12px;opacity:.75}
.w2p-err{border-color:#dc2626}
.w2p-err .w2p-meta{color:#dc2626;opacity:1}
@media (max-width:520px){.w2p-row{flex-wrap:wrap}.w2p-info{flex-basis:calc(100% - 70px)}}
</style>

<div class="w2p" id="w2p-app">
<label class="w2p-drop" id="w2p-drop" for="w2p-input">
<strong>วางไฟล์ WebP ที่นี่ หรือคลิกเพื่อเลือกไฟล์</strong>
<span>เลือกได้หลายไฟล์ (สูงสุด 200 ไฟล์) · กด Ctrl/Cmd + V เพื่อวางภาพจากคลิปบอร์ด</span>
</label>
<input id="w2p-input" class="w2p-file" type="file" accept="image/*,.webp" multiple>
<input id="w2p-folder" class="w2p-file" type="file" webkitdirectory multiple>
<p class="w2p-privacy">🔒 การแปลงทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกอัปโหลดไปที่ไหน</p>
<div class="w2p-opts">
<div class="w2p-opt">
<label for="w2p-bg">พื้นหลัง</label>
<select id="w2p-bg">
<option value="transparent">โปร่งใส (คงเดิม)</option>
<option value="white">เติมสีขาว</option>
<option value="black">เติมสีดำ</option>
<option value="custom">กำหนดสีเอง</option>
</select>
<input type="color" id="w2p-bgcolor" value="#ffffff" aria-label="เลือกสีพื้นหลัง" hidden>
</div>
<div class="w2p-opt">
<label for="w2p-rs">ขนาดภาพ</label>
<div class="w2p-rsrow">
<select id="w2p-rs">
<option value="original">ขนาดเดิม</option>
<option value="percent">ย่อ/ขยายเป็น %</option>
<option value="width">กำหนดความกว้าง</option>
</select>
<input type="number" id="w2p-rsval" value="50" min="1" max="400" step="1" aria-label="ค่าขนาดภาพ" hidden>
<span id="w2p-rsunit" aria-hidden="true"></span>
</div>
<span class="w2p-hint">คงสัดส่วนภาพเดิมเสมอ</span>
</div>
<div class="w2p-opt">
<label for="w2p-anim">WebP เคลื่อนไหว</label>
<select id="w2p-anim">
<option value="apng">แปลงเป็น APNG (ครบทุกเฟรม)</option>
<option value="first">เฉพาะเฟรมแรก (PNG ปกติ)</option>
</select>
<span class="w2p-hint" id="w2p-animnote"></span>
</div>
<div class="w2p-opt">
<label for="w2p-pattern">รูปแบบชื่อไฟล์</label>
<input type="text" id="w2p-pattern" value="{name}" maxlength="80" autocomplete="off">
<span class="w2p-hint">{name} = ชื่อเดิม · {n} = ลำดับที่</span>
</div>
</div>
<div class="w2p-bar">
<button type="button" class="w2p-btn" id="w2p-folder-btn">เลือกทั้งโฟลเดอร์</button>
<button type="button" class="w2p-btn w2p-btn-primary" id="w2p-zip" disabled>ดาวน์โหลดทั้งหมดเป็น ZIP</button>
<button type="button" class="w2p-btn" id="w2p-clear" disabled>ล้างรายการ</button>
<span class="w2p-grow" id="w2p-summary" aria-live="polite"></span>
</div>
<progress id="w2p-progress" max="100" value="0" hidden></progress>
<p class="w2p-msg" id="w2p-msg" role="alert" hidden></p>
<div id="w2p-list"></div>
</div>

<script>
(function () {
  "use strict";

  var MAX_FILES = 200;
  var MAX_FRAMES = 600;
  var ZIP_LABEL = "ดาวน์โหลดทั้งหมดเป็น ZIP";

  /* helpers:start */
  var crcTable = (function () {
    var t = new Uint32Array(256);
    for (var n = 0; n < 256; n++) {
      var c = n;
      for (var k = 0; k < 8; k++) {
        c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1);
      }
      t[n] = c >>> 0;
    }
    return t;
  })();

  function crc32(u8, start, end) {
    var c = 0xFFFFFFFF;
    for (var i = start; i < end; i++) {
      c = crcTable[(c ^ u8[i]) & 255] ^ (c >>> 8);
    }
    return (c ^ 0xFFFFFFFF) >>> 0;
  }

  function mkChunk(type, data) {
    var out = new Uint8Array(12 + data.length);
    var dv = new DataView(out.buffer);
    dv.setUint32(0, data.length);
    for (var i = 0; i < 4; i++) { out[4 + i] = type.charCodeAt(i); }
    out.set(data, 8);
    dv.setUint32(8 + data.length, crc32(out, 4, 8 + data.length));
    return out;
  }

  function parsePng(u8) {
    var dv = new DataView(u8.buffer, u8.byteOffset, u8.byteLength);
    var pos = 8, ihdr = null, idat = [];
    while (pos + 8 <= u8.length) {
      var len = dv.getUint32(pos);
      var type = String.fromCharCode(u8[pos + 4], u8[pos + 5], u8[pos + 6], u8[pos + 7]);
      var data = u8.subarray(pos + 8, pos + 8 + len);
      if (type === "IHDR") { ihdr = data; }
      else if (type === "IDAT") { idat.push(data); }
      pos += 12 + len;
    }
    if (!ihdr || !idat.length) { throw new Error("อ่านเฟรมภาพไม่สำเร็จ"); }
    return { ihdr: ihdr, idat: idat };
  }

  function buildApng(pngs, delays, w, h, loops) {
    var parts = [new Uint8Array([137, 80, 78, 71, 13, 10, 26, 10])];
    parts.push(mkChunk("IHDR", pngs[0].ihdr));
    var actl = new Uint8Array(8);
    var av = new DataView(actl.buffer);
    av.setUint32(0, pngs.length);
    av.setUint32(4, loops);
    parts.push(mkChunk("acTL", actl));
    var seq = 0;
    for (var i = 0; i < pngs.length; i++) {
      var f = new Uint8Array(26);
      var fv = new DataView(f.buffer);
      fv.setUint32(0, seq++);
      fv.setUint32(4, w);
      fv.setUint32(8, h);
      fv.setUint32(12, 0);
      fv.setUint32(16, 0);
      fv.setUint16(20, Math.min(65535, Math.max(10, Math.round(delays[i]))));
      fv.setUint16(22, 1000);
      f[24] = 0;
      f[25] = 0;
      parts.push(mkChunk("fcTL", f));
      for (var j = 0; j < pngs[i].idat.length; j++) {
        var d = pngs[i].idat[j];
        if (i === 0) {
          parts.push(mkChunk("IDAT", d));
        } else {
          var fd = new Uint8Array(4 + d.length);
          new DataView(fd.buffer).setUint32(0, seq++);
          fd.set(d, 4);
          parts.push(mkChunk("fdAT", fd));
        }
      }
    }
    parts.push(mkChunk("IEND", new Uint8Array(0)));
    return new Blob(parts, { type: "image/png" });
  }

  function buildZip(entries) {
    var enc = new TextEncoder();
    var parts = [], central = [], offset = 0, d = new Date();
    var dt = ((d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1)) & 0xFFFF;
    var dd = (((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate()) & 0xFFFF;
    entries.forEach(function (e) {
      var nm = enc.encode(e.name);
      var size = e.data.length;
      var crc = crc32(e.data, 0, size);
      var lh = new Uint8Array(30 + nm.length);
      var lv = new DataView(lh.buffer);
      lv.setUint32(0, 0x04034b50, true);
      lv.setUint16(4, 20, true);
      lv.setUint16(6, 0x0800, true);
      lv.setUint16(8, 0, true);
      lv.setUint16(10, dt, true);
      lv.setUint16(12, dd, true);
      lv.setUint32(14, crc, true);
      lv.setUint32(18, size, true);
      lv.setUint32(22, size, true);
      lv.setUint16(26, nm.length, true);
      lv.setUint16(28, 0, true);
      lh.set(nm, 30);
      var ch = new Uint8Array(46 + nm.length);
      var cv = new DataView(ch.buffer);
      cv.setUint32(0, 0x02014b50, true);
      cv.setUint16(4, 20, true);
      cv.setUint16(6, 20, true);
      cv.setUint16(8, 0x0800, true);
      cv.setUint16(10, 0, true);
      cv.setUint16(12, dt, true);
      cv.setUint16(14, dd, true);
      cv.setUint32(16, crc, true);
      cv.setUint32(20, size, true);
      cv.setUint32(24, size, true);
      cv.setUint16(28, nm.length, true);
      cv.setUint16(30, 0, true);
      cv.setUint16(32, 0, true);
      cv.setUint16(34, 0, true);
      cv.setUint16(36, 0, true);
      cv.setUint32(38, 0, true);
      cv.setUint32(42, offset, true);
      ch.set(nm, 46);
      parts.push(lh, e.data);
      central.push(ch);
      offset += lh.length + size;
    });
    var cdSize = 0;
    central.forEach(function (c) { cdSize += c.length; });
    var end = new Uint8Array(22);
    var ev = new DataView(end.buffer);
    ev.setUint32(0, 0x06054b50, true);
    ev.setUint16(4, 0, true);
    ev.setUint16(6, 0, true);
    ev.setUint16(8, entries.length, true);
    ev.setUint16(10, entries.length, true);
    ev.setUint32(12, cdSize, true);
    ev.setUint32(16, offset, true);
    ev.setUint16(20, 0, true);
    return new Blob(parts.concat(central, [end]), { type: "application/zip" });
  }

  function isAnimatedWebp(u) {
    if (u.length < 21) { return false; }
    function s(a, b) { return String.fromCharCode.apply(null, Array.prototype.slice.call(u, a, b)); }
    return s(0, 4) === "RIFF" && s(8, 12) === "WEBP" && s(12, 16) === "VP8X" && (u[20] & 2) === 2;
  }
  /* helpers:end */

  function $(id) { return document.getElementById(id); }

  var drop = $("w2p-drop"), input = $("w2p-input"), folderInput = $("w2p-folder"), folderBtn = $("w2p-folder-btn");
  var bgSel = $("w2p-bg"), bgPick = $("w2p-bgcolor"), rsSel = $("w2p-rs"), rsVal = $("w2p-rsval"), rsUnit = $("w2p-rsunit");
  var pattern = $("w2p-pattern"), animSel = $("w2p-anim"), animNote = $("w2p-animnote");
  var zipBtn = $("w2p-zip"), clearBtn = $("w2p-clear"), summary = $("w2p-summary");
  var progress = $("w2p-progress"), list = $("w2p-list"), msg = $("w2p-msg");

  var needed = [drop, input, folderInput, folderBtn, bgSel, bgPick, rsSel, rsVal, rsUnit, pattern, animSel, animNote, zipBtn, clearBtn, summary, progress, list, msg];
  if (needed.some(function (x) { return !x; })) { return; }

  var items = [];
  var uid = 0;
  var optVer = 0;
  var running = false;
  var zipping = false;
  var tmr = 0;
  var msgTmr = 0;

  function fmt(n) {
    if (n < 1024) { return n + " B"; }
    if (n < 1048576) { return (n / 1024).toFixed(1) + " KB"; }
    return (n / 1048576).toFixed(2) + " MB";
  }

  function showMsg(t) {
    msg.textContent = t;
    msg.hidden = false;
    clearTimeout(msgTmr);
    msgTmr = setTimeout(function () { msg.hidden = true; }, 7000);
  }

  function saveBlob(blob, name) {
    var u = URL.createObjectURL(blob);
    var a = document.createElement("a");
    a.href = u;
    a.download = name;
    a.style.display = "none";
    document.body.appendChild(a);
    a.click();
    setTimeout(function () {
      if (a.parentNode) { a.parentNode.removeChild(a); }
      URL.revokeObjectURL(u);
    }, 4000);
  }

  function baseName(n) { return n.replace(/\.[^.\/\\]+$/, ""); }
  function cleanName(s) { return s.replace(/[\\\/:*?"<>|\u0000-\u001f]/g, "_").replace(/^\.+/, "").trim(); }

  function nameFor(it, idx) {
    var p = pattern.value || "{name}";
    var s = p.split("{name}").join(baseName(it.file.name)).split("{n}").join(String(idx + 1));
    s = cleanName(s);
    if (!s) { s = "image-" + (idx + 1); }
    return s + ".png";
  }

  function isImage(f) {
    return (f.type && f.type.indexOf("image/") === 0) || /\.(webp|avif|jpe?g|png|gif|bmp)$/i.test(f.name);
  }

  /* ---------- conversion ---------- */

  function bgColor() {
    var v = bgSel.value;
    if (v === "white") { return "#ffffff"; }
    if (v === "black") { return "#000000"; }
    return bgPick.value || "#ffffff";
  }

  function targetSize(w, h) {
    var m = rsSel.value, v = parseFloat(rsVal.value), nw = w, nh = h;
    if (m === "percent" && v > 0) {
      nw = Math.max(1, Math.round(w * v / 100));
      nh = Math.max(1, Math.round(h * v / 100));
    } else if (m === "width" && v > 0) {
      nw = Math.max(1, Math.round(v));
      nh = Math.max(1, Math.round(h * (nw / w)));
    }
    if (nw * nh > 100000000) { throw new Error("ขนาดภาพใหญ่เกินกว่าที่เบราว์เซอร์จะประมวลผลได้"); }
    return [nw, nh];
  }

  function paint(ctx, src, w, h) {
    if (bgSel.value !== "transparent") {
      ctx.fillStyle = bgColor();
      ctx.fillRect(0, 0, w, h);
    }
    ctx.imageSmoothingEnabled = true;
    ctx.imageSmoothingQuality = "high";
    ctx.drawImage(src, 0, 0, w, h);
  }

  function toPng(cv) {
    return new Promise(function (resolve, reject) {
      try {
        cv.toBlob(function (b) {
          if (b) { resolve(b); }
          else { reject(new Error("ภาพใหญ่เกินกว่าที่เบราว์เซอร์จะประมวลผลได้")); }
        }, "image/png");
      } catch (e) { reject(e); }
    });
  }

  function loadImg(file) {
    return new Promise(function (resolve, reject) {
      var u = URL.createObjectURL(file);
      var im = new Image();
      im.onload = function () { URL.revokeObjectURL(u); resolve(im); };
      im.onerror = function () { URL.revokeObjectURL(u); reject(new Error("อ่านไฟล์ภาพนี้ไม่ได้")); };
      im.src = u;
    });
  }

  function loadBitmap(file) {
    if (window.createImageBitmap) {
      return window.createImageBitmap(file).catch(function () { return loadImg(file); });
    }
    return loadImg(file);
  }

  async function convertStatic(file) {
    var img = await loadBitmap(file);
    var sw = img.naturalWidth || img.width;
    var sh = img.naturalHeight || img.height;
    if (!sw || !sh) { throw new Error("อ่านขนาดภาพไม่ได้"); }
    var sz = targetSize(sw, sh);
    var cv = document.createElement("canvas");
    cv.width = sz[0];
    cv.height = sz[1];
    var ctx = cv.getContext("2d");
    if (!ctx) { throw new Error("เบราว์เซอร์นี้ไม่รองรับ Canvas"); }
    paint(ctx, img, sz[0], sz[1]);
    if (img.close) { img.close(); }
    var blob = await toPng(cv);
    return { blob: blob, w: sz[0], h: sz[1], frames: 1, note: "" };
  }

  async function convertAnimated(buf) {
    var dec = new window.ImageDecoder({ data: buf, type: "image/webp" });
    try {
      await dec.tracks.ready;
      var track = dec.tracks.selectedTrack;
      var n = track ? track.frameCount : 0;
      if (!n || n < 2) { return null; }
      if (n > MAX_FRAMES) { throw new Error("เฟรมมากเกินไป"); }
      var pngs = [], delays = [], sz = null, ctx = null;
      var cv = document.createElement("canvas");
      for (var i = 0; i < n; i++) {
        var r = await dec.decode({ frameIndex: i });
        var fr = r.image;
        try {
          if (!sz) {
            sz = targetSize(fr.displayWidth, fr.displayHeight);
            cv.width = sz[0];
            cv.height = sz[1];
            ctx = cv.getContext("2d");
            if (!ctx) { throw new Error("เบราว์เซอร์นี้ไม่รองรับ Canvas"); }
          }
          ctx.clearRect(0, 0, sz[0], sz[1]);
          paint(ctx, fr, sz[0], sz[1]);
          delays.push(fr.duration ? fr.duration / 1000 : 100);
        } finally {
          fr.close();
        }
        var blob = await toPng(cv);
        pngs.push(parsePng(new Uint8Array(await blob.arrayBuffer())));
      }
      var rc = track.repetitionCount;
      var loops = (rc === Infinity || !(rc > 0)) ? 0 : Math.round(rc);
      return { blob: buildApng(pngs, delays, sz[0], sz[1], loops), w: sz[0], h: sz[1], frames: n, note: "" };
    } finally {
      dec.close();
    }
  }

  async function convertFile(file) {
    var isWebp = /\.webp$/i.test(file.name) || file.type === "image/webp";
    var animated = false;
    if (isWebp) {
      try {
        animated = isAnimatedWebp(new Uint8Array(await file.slice(0, 32).arrayBuffer()));
      } catch (e) { animated = false; }
    }
    if (animated && animSel.value === "apng" && typeof window.ImageDecoder !== "undefined") {
      try {
        var a = await convertAnimated(await file.arrayBuffer());
        if (a) { return a; }
      } catch (e2) {
        /* fall back to the first frame */
      }
    }
    var s = await convertStatic(file);
    if (animated) { s.note = "เฟรมแรกเท่านั้น"; }
    return s;
  }

  /* ---------- UI ---------- */

  function updateRow(it) {
    var e = it.els;
    if (!e) { return; }
    e.nm.textContent = nameFor(it, items.indexOf(it));
    e.row.className = "w2p-row" + (it.status === "error" ? " w2p-err" : "");
    if (it.url) {
      if (e.th.getAttribute("src") !== it.url) { e.th.src = it.url; }
      e.th.style.visibility = "visible";
    } else {
      e.th.removeAttribute("src");
      e.th.style.visibility = "hidden";
    }
    if (it.status === "done" && it.blob) {
      var t = it.w + " × " + it.h + " px · " + fmt(it.file.size) + " → " + fmt(it.blob.size);
      if (it.frames > 1) { t += " · APNG " + it.frames + " เฟรม"; }
      if (it.note) { t += " · " + it.note; }
      e.meta.textContent = t;
    } else if (it.status === "error") {
      e.meta.textContent = "ผิดพลาด: " + it.err;
    } else if (it.status === "working") {
      e.meta.textContent = "กำลังแปลง…";
    } else {
      e.meta.textContent = fmt(it.file.size) + " · รอคิว…";
    }
    e.dl.disabled = !(it.status === "done" && it.blob);
  }

  function updateAllRows() { items.forEach(updateRow); }

  function updateUi() {
    var total = items.length, done = 0, errs = 0;
    items.forEach(function (it) {
      if (it.status === "done") { done++; }
      else if (it.status === "error") { errs++; }
    });
    var pending = total - done - errs;
    summary.textContent = total ? ("แปลงสำเร็จ " + done + "/" + total + " ไฟล์" + (errs ? " · ผิดพลาด " + errs : "")) : "";
    progress.hidden = !(pending > 0);
    progress.value = total ? ((done + errs) / total * 100) : 0;
    zipBtn.disabled = (done === 0) || zipping;
    clearBtn.disabled = (total === 0);
  }

  function removeItem(it) {
    var i = items.indexOf(it);
    if (i < 0) { return; }
    items.splice(i, 1);
    if (it.url) { URL.revokeObjectURL(it.url); }
    if (it.els && it.els.row.parentNode) { it.els.row.parentNode.removeChild(it.els.row); }
    updateAllRows();
    updateUi();
  }

  function createRow(it) {
    var row = document.createElement("div");
    row.className = "w2p-row";
    var th = document.createElement("img");
    th.className = "w2p-thumb";
    th.alt = "";
    th.width = 56;
    th.height = 56;
    var info = document.createElement("div");
    info.className = "w2p-info";
    var nm = document.createElement("strong");
    nm.className = "w2p-name";
    var meta = document.createElement("span");
    meta.className = "w2p-meta";
    info.appendChild(nm);
    info.appendChild(meta);
    var dl = document.createElement("button");
    dl.type = "button";
    dl.className = "w2p-btn";
    dl.textContent = "ดาวน์โหลด";
    var rm = document.createElement("button");
    rm.type = "button";
    rm.className = "w2p-btn w2p-btn-ghost";
    rm.textContent = "ลบ";
    rm.setAttribute("aria-label", "ลบรายการนี้");
    dl.addEventListener("click", function () {
      if (it.blob) { saveBlob(it.blob, nameFor(it, items.indexOf(it))); }
    });
    rm.addEventListener("click", function () { removeItem(it); });
    row.appendChild(th);
    row.appendChild(info);
    row.appendChild(dl);
    row.appendChild(rm);
    it.els = { row: row, th: th, nm: nm, meta: meta, dl: dl };
    updateRow(it);
    return row;
  }

  async function convertItem(it) {
    var v = optVer;
    it.status = "working";
    updateRow(it);
    updateUi();
    var out = null, err = "";
    try {
      out = await convertFile(it.file);
    } catch (e) {
      err = (e && e.message) ? e.message : "แปลงไฟล์ไม่สำเร็จ";
    }
    if (items.indexOf(it) < 0) { return; }
    if (it.url) { URL.revokeObjectURL(it.url); it.url = null; }
    if (out) {
      it.blob = out.blob;
      it.url = URL.createObjectURL(out.blob);
      it.w = out.w;
      it.h = out.h;
      it.frames = out.frames;
      it.note = out.note || "";
      it.status = "done";
      it.err = "";
    } else {
      it.blob = null;
      it.status = "error";
      it.err = err || "แปลงไฟล์ไม่สำเร็จ";
    }
    it.ver = v;
    updateRow(it);
    updateUi();
  }

  async function pump() {
    if (running) { return; }
    running = true;
    try {
      for (;;) {
        var next = null;
        for (var i = 0; i < items.length; i++) {
          if (items[i].ver !== optVer) { next = items[i]; break; }
        }
        if (!next) { break; }
        try {
          await convertItem(next);
        } catch (e) {
          next.ver = optVer;
          next.status = "error";
          next.err = "แปลงไฟล์ไม่สำเร็จ";
          updateRow(next);
        }
        await new Promise(function (r) { setTimeout(r, 0); });
      }
    } finally {
      running = false;
      updateUi();
    }
  }

  function addFiles(fl) {
    var arr = Array.prototype.slice.call(fl || []);
    var added = 0;
    arr.forEach(function (f) {
      if (!isImage(f) || items.length >= MAX_FILES) { return; }
      var it = { id: ++uid, file: f, blob: null, url: null, status: "queue", err: "", ver: -1, w: 0, h: 0, frames: 1, note: "", els: null };
      items.push(it);
      list.appendChild(createRow(it));
      added++;
    });
    if (arr.length > added) {
      showMsg("ข้ามบางไฟล์ เพราะไม่ใช่ไฟล์ภาพ หรือเกินจำนวน " + MAX_FILES + " ไฟล์");
    }
    updateUi();
    pump();
  }

  function optsChanged() {
    clearTimeout(tmr);
    tmr = setTimeout(function () {
      optVer++;
      items.forEach(function (it) {
        if (it.status !== "working") { it.status = "queue"; }
        updateRow(it);
      });
      updateUi();
      pump();
    }, 250);
  }

  /* ---------- events ---------- */

  input.addEventListener("change", function () { addFiles(input.files); input.value = ""; });
  folderInput.addEventListener("change", function () { addFiles(folderInput.files); folderInput.value = ""; });
  folderBtn.addEventListener("click", function () { folderInput.click(); });

  ["dragenter", "dragover"].forEach(function (ev) {
    drop.addEventListener(ev, function (e) {
      e.preventDefault();
      drop.classList.add("w2p-over");
    });
  });
  ["dragleave", "drop"].forEach(function (ev) {
    drop.addEventListener(ev, function (e) {
      e.preventDefault();
      drop.classList.remove("w2p-over");
    });
  });
  drop.addEventListener("drop", function (e) {
    if (e.dataTransfer && e.dataTransfer.files) { addFiles(e.dataTransfer.files); }
  });

  document.addEventListener("paste", function (e) {
    var cd = e.clipboardData;
    if (!cd || !cd.files || !cd.files.length) { return; }
    addFiles(cd.files);
  });

  bgSel.addEventListener("change", function () {
    bgPick.hidden = (bgSel.value !== "custom");
    optsChanged();
  });
  bgPick.addEventListener("input", optsChanged);

  rsSel.addEventListener("change", function () {
    if (rsSel.value === "percent") {
      rsVal.value = "50"; rsVal.min = "1"; rsVal.max = "400"; rsUnit.textContent = "%";
    } else if (rsSel.value === "width") {
      rsVal.value = "800"; rsVal.min = "1"; rsVal.max = "16384"; rsUnit.textContent = "px";
    } else {
      rsUnit.textContent = "";
    }
    rsVal.hidden = (rsSel.value === "original");
    optsChanged();
  });
  rsVal.addEventListener("input", optsChanged);
  animSel.addEventListener("change", optsChanged);
  pattern.addEventListener("input", updateAllRows);

  clearBtn.addEventListener("click", function () {
    items.forEach(function (it) { if (it.url) { URL.revokeObjectURL(it.url); } });
    items.length = 0;
    while (list.firstChild) { list.removeChild(list.firstChild); }
    updateUi();
  });

  zipBtn.addEventListener("click", async function () {
    var done = items.filter(function (it) { return it.status === "done" && it.blob; });
    if (!done.length || zipping) { return; }
    zipping = true;
    zipBtn.textContent = "กำลังสร้าง ZIP…";
    updateUi();
    try {
      var used = Object.create(null), entries = [];
      for (var i = 0; i < done.length; i++) {
        var it = done[i];
        var nm = nameFor(it, items.indexOf(it));
        var key = nm.toLowerCase();
        if (used[key]) {
          var k = 2, base = nm.replace(/\.png$/i, "");
          while (used[(base + "-" + k + ".png").toLowerCase()]) { k++; }
          nm = base + "-" + k + ".png";
          key = nm.toLowerCase();
        }
        used[key] = true;
        entries.push({ name: nm, data: new Uint8Array(await it.blob.arrayBuffer()) });
      }
      saveBlob(buildZip(entries), "webp-to-png.zip");
    } catch (e) {
      showMsg("สร้างไฟล์ ZIP ไม่สำเร็จ ลองลดจำนวนไฟล์แล้วลองใหม่");
    } finally {
      zipping = false;
      zipBtn.textContent = ZIP_LABEL;
      updateUi();
    }
  });

  if (typeof window.ImageDecoder === "undefined") {
    animNote.textContent = "เบราว์เซอร์นี้ยังไม่รองรับการแปลง WebP เคลื่อนไหวเป็น APNG ระบบจะแปลงเฉพาะเฟรมแรก (แนะนำ Chrome หรือ Edge รุ่นใหม่)";
  }
  updateUi();
})();
</script>

## วิธีใช้งานเครื่องมือแปลง WebP เป็น PNG

1. **เพิ่มไฟล์** – ลากไฟล์ WebP มาวางในกรอบด้านบน หรือคลิกเพื่อเลือกไฟล์ จะกดปุ่ม "เลือกทั้งโฟลเดอร์" หรือกด Ctrl/Cmd + V เพื่อวางภาพจากคลิปบอร์ดก็ได้ (เพิ่มได้สูงสุด 200 ไฟล์ต่อครั้ง)
2. **ปรับตัวเลือก (ไม่บังคับ)** – เลือกพื้นหลัง ขนาดภาพ วิธีจัดการ WebP เคลื่อนไหว และรูปแบบชื่อไฟล์ หากไม่ปรับอะไร เครื่องมือจะคงความโปร่งใสและขนาดเดิมไว้
3. **รอการแปลง** – แต่ละไฟล์จะมีภาพย่อ ขนาดภาพ และขนาดไฟล์ก่อน/หลังแปลงแสดงให้ดู เมื่อเปลี่ยนตัวเลือก ระบบจะแปลงไฟล์ทั้งหมดใหม่ให้อัตโนมัติ
4. **ดาวน์โหลด** – กด "ดาวน์โหลด" ที่ไฟล์ที่ต้องการ หรือกด "ดาวน์โหลดทั้งหมดเป็น ZIP" เพื่อรับทุกไฟล์ในครั้งเดียว
5. **ล้างรายการ** – กด "ลบ" ที่ไฟล์ใดไฟล์หนึ่ง หรือ "ล้างรายการ" เพื่อเริ่มใหม่ เมื่อปิดหรือรีเฟรชหน้านี้ รายการทั้งหมดจะหายไป

## ตัวเลือกและคำศัพท์ที่ควรรู้

- **WebP** – รูปแบบไฟล์ภาพที่ Google พัฒนา ไฟล์มักเล็กกว่า JPG และ PNG รองรับความโปร่งใสและภาพเคลื่อนไหว แต่บางโปรแกรมหรือเอกสารยังเปิดไม่ได้
- **PNG** – รูปแบบภาพแบบไม่สูญเสียคุณภาพ รองรับความโปร่งใส และเปิดได้เกือบทุกโปรแกรม เช่น Photoshop และ Figma
- **APNG (Animated PNG)** – PNG ที่เก็บภาพเคลื่อนไหวหลายเฟรมไว้ในไฟล์เดียว ใช้แทน WebP เคลื่อนไหวได้ในเบราว์เซอร์ส่วนใหญ่
- **WebP เคลื่อนไหว (Animated WebP)** – ไฟล์ WebP ที่มีหลายเฟรมต่อกัน คล้ายไฟล์ GIF
- **เฟรม (Frame)** – ภาพนิ่งหนึ่งภาพในภาพเคลื่อนไหว
- **Lossy / Lossless** – Lossy คือการบีบอัดแบบตัดรายละเอียดบางส่วนทิ้งเพื่อให้ไฟล์เล็กลง ส่วน Lossless คือการบีบอัดที่ไม่ทำให้ภาพเสียคุณภาพ
- **ความโปร่งใส (Alpha channel)** – ข้อมูลที่ทำให้บางส่วนของภาพโปร่งใส เห็นพื้นหลังด้านหลังได้
- **พื้นหลัง** – "โปร่งใส" คงส่วนโปร่งใสไว้ตามเดิม ส่วน "เติมสีขาว/ดำ/กำหนดสีเอง" จะเติมสีทึบแทนส่วนโปร่งใส เหมาะกับงานที่ไม่รองรับความโปร่งใส
- **ขนาดภาพ** – "ขนาดเดิม" ไม่เปลี่ยนขนาด, "% " ย่อหรือขยายตามเปอร์เซ็นต์, "กำหนดความกว้าง" ปรับเป็นความกว้างที่ระบุ (หน่วย px) โดยคงสัดส่วนภาพเดิม
- **รูปแบบชื่อไฟล์** – ตั้งชื่อไฟล์ผลลัพธ์ด้วย `{name}` (ชื่อเดิมไม่รวมนามสกุล) และ `{n}` (ลำดับที่ในรายการ) เช่น `รูป-{n}` จะได้ `รูป-1.png`, `รูป-2.png`
- **ZIP** – ไฟล์บีบรวมที่เก็บหลายไฟล์ไว้ด้วยกัน ช่วยให้ดาวน์โหลดผลลัพธ์ทั้งหมดได้ในครั้งเดียว
- **เมตาดาตา (Metadata/EXIF)** – ข้อมูลที่แนบมากับภาพ เช่น รุ่นกล้องหรือพิกัด ไฟล์ PNG ที่แปลงแล้วโดยปกติจะไม่มีข้อมูลเหล่านี้
- **ประมวลผลในเบราว์เซอร์ (Client-side)** – การแปลงทำงานบนอุปกรณ์ของคุณเอง ไม่ส่งไฟล์ไปยังเซิร์ฟเวอร์
- **คลิปบอร์ด (Clipboard)** – ที่พักข้อมูลชั่วคราวของอุปกรณ์ ใช้ Ctrl/Cmd + V วางภาพที่คัดลอกไว้ลงในเครื่องมือได้ทันที

## WebP กับ PNG ต่างกันอย่างไร

| หัวข้อ | WebP | PNG |
| --- | --- | --- |
| การบีบอัด | แบบ Lossy หรือ Lossless | Lossless เท่านั้น |
| ขนาดไฟล์ | มักเล็กกว่า | มักใหญ่กว่า |
| ความโปร่งใส | รองรับ | รองรับ |
| ภาพเคลื่อนไหว | รองรับ | รองรับผ่าน APNG |
| ความเข้ากันได้ | บางโปรแกรมและเอกสารเปิดไม่ได้ | เปิดได้เกือบทุกที่ |

PNG เหมาะเมื่อต้องการนำภาพไปแก้ไขต่อ พิมพ์ แทรกในเอกสาร หรือใช้กับโปรแกรมที่ยังไม่รองรับ WebP

## ตรวจสอบเองว่าไฟล์ไม่ถูกอัปโหลด

1. เปิดหน้านี้ แล้วกด F12 เพื่อเปิดเครื่องมือนักพัฒนา (DevTools)
2. เลือกแท็บ **Network** แล้วเริ่มแปลงไฟล์
3. สังเกตว่าไม่มีคำขอ (request) ที่ส่งข้อมูลไฟล์ภาพออกไป เพราะการแปลงทำงานในเบราว์เซอร์ของคุณ

## คำถามที่พบบ่อย

### ไฟล์ของฉันถูกอัปโหลดไปยังเซิร์ฟเวอร์หรือไม่?

ไม่ การแปลงทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จึงไม่ออกจากอุปกรณ์ และตรวจสอบได้เองผ่านแท็บ Network ใน DevTools

### แปลง WebP เป็น PNG แล้วคุณภาพลดลงหรือไม่?

PNG เป็นรูปแบบแบบไม่สูญเสียคุณภาพ จึงไม่ลดคุณภาพเพิ่มระหว่างการแปลง แต่ถ้าไฟล์ WebP ต้นฉบับเป็นแบบ Lossy ที่ตัดรายละเอียดไปแล้ว รายละเอียดนั้นจะไม่กลับมา และไฟล์ PNG มักมีขนาดใหญ่กว่าไฟล์ WebP

### ความโปร่งใสของภาพยังอยู่หรือไม่?

อยู่ หากเลือกพื้นหลังเป็น "โปร่งใส (คงเดิม)" แต่ถ้าต้องการพื้นหลังสีทึบ ให้เลือกเติมสีขาว สีดำ หรือกำหนดสีเอง

### แปลง WebP เคลื่อนไหวได้หรือไม่?

ได้ โดยแปลงเป็น APNG ที่เก็บครบทุกเฟรม บนเบราว์เซอร์ที่รองรับ ImageDecoder เช่น Chrome และ Edge รุ่นใหม่ หากเบราว์เซอร์ไม่รองรับ หรือเลือก "เฉพาะเฟรมแรก" จะได้ PNG ปกติจากเฟรมแรก

### แปลงได้กี่ไฟล์พร้อมกัน?

เพิ่มได้สูงสุด 200 ไฟล์ต่อครั้ง ความเร็วขึ้นอยู่กับขนาดไฟล์และประสิทธิภาพของอุปกรณ์ เพราะการแปลงใช้หน่วยความจำของเครื่องคุณเอง

### ไฟล์ PNG ที่ได้ยังมี EXIF หรือไม่?

โดยปกติไม่มี ไฟล์ผลลัพธ์จะเป็นภาพที่วาดใหม่ จึงไม่ติดข้อมูลเมตาดาตาจากไฟล์ต้นฉบับมาด้วย

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"WebApplication","name":"แปลงไฟล์ WebP เป็น PNG ออนไลน์","applicationCategory":"MultimediaApplication","operatingSystem":"Any","inLanguage":"th","description":"แปลงไฟล์ WebP เป็น PNG ออนไลน์ฟรี ในเบราว์เซอร์ ไม่อัปโหลดไฟล์ แปลงหลายไฟล์พร้อมกัน รองรับ WebP เคลื่อนไหวเป็น APNG","offers":{"@type":"Offer","price":"0","priceCurrency":"THB"}}
</script>

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[
{"@type":"Question","name":"ไฟล์ของฉันถูกอัปโหลดไปยังเซิร์ฟเวอร์หรือไม่?","acceptedAnswer":{"@type":"Answer","text":"ไม่ การแปลงทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จึงไม่ออกจากอุปกรณ์ และตรวจสอบได้เองผ่านแท็บ Network ใน DevTools"}},
{"@type":"Question","name":"แปลง WebP เป็น PNG แล้วคุณภาพลดลงหรือไม่?","acceptedAnswer":{"@type":"Answer","text":"PNG เป็นรูปแบบแบบไม่สูญเสียคุณภาพ จึงไม่ลดคุณภาพเพิ่มระหว่างการแปลง แต่ถ้าไฟล์ WebP ต้นฉบับเป็นแบบ Lossy ที่ตัดรายละเอียดไปแล้ว รายละเอียดนั้นจะไม่กลับมา และไฟล์ PNG มักมีขนาดใหญ่กว่าไฟล์ WebP"}},
{"@type":"Question","name":"ความโปร่งใสของภาพยังอยู่หรือไม่?","acceptedAnswer":{"@type":"Answer","text":"อยู่ หากเลือกพื้นหลังเป็น โปร่งใส (คงเดิม) แต่ถ้าต้องการพื้นหลังสีทึบ ให้เลือกเติมสีขาว สีดำ หรือกำหนดสีเอง"}},
{"@type":"Question","name":"แปลง WebP เคลื่อนไหวได้หรือไม่?","acceptedAnswer":{"@type":"Answer","text":"ได้ โดยแปลงเป็น APNG ที่เก็บครบทุกเฟรม บนเบราว์เซอร์ที่รองรับ ImageDecoder เช่น Chrome และ Edge รุ่นใหม่ หากเบราว์เซอร์ไม่รองรับ หรือเลือกเฉพาะเฟรมแรก จะได้ PNG ปกติจากเฟรมแรก"}},
{"@type":"Question","name":"แปลงได้กี่ไฟล์พร้อมกัน?","acceptedAnswer":{"@type":"Answer","text":"เพิ่มได้สูงสุด 200 ไฟล์ต่อครั้ง ความเร็วขึ้นอยู่กับขนาดไฟล์และประสิทธิภาพของอุปกรณ์ เพราะการแปลงใช้หน่วยความจำของเครื่องคุณเอง"}},
{"@type":"Question","name":"ไฟล์ PNG ที่ได้ยังมี EXIF หรือไม่?","acceptedAnswer":{"@type":"Answer","text":"โดยปกติไม่มี ไฟล์ผลลัพธ์จะเป็นภาพที่วาดใหม่ จึงไม่ติดข้อมูลเมตาดาตาจากไฟล์ต้นฉบับมาด้วย"}}
]}
</script>