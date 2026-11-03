---
title: เครื่องมือไฟล์ออนไลน์ ฟรี | Prasslina
h1: เครื่องมือไฟล์ออนไลน์
description: 'เครื่องมือไฟล์ออนไลน์ฟรี บีบอัด ZIP แตกไฟล์ เข้ารหัส AES-256 สร้างแฮช MD5 SHA และเปลี่ยนชื่อไฟล์เป็นชุด ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลด ไม่ต้องสมัคร'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T09:00:00+07:00'
weight: 61
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- เครื่องมือไฟล์ออนไลน์
- PDF และไฟล์
---

ประมวลผลในเครื่อง 100% ไม่ต้องอัปโหลด ไฟล์ของคุณไม่ถูกส่งออกจากเบราว์เซอร์

<div class="pf-app" id="pf-app">
<div class="pf-tabs" role="tablist">
<button type="button" class="pf-tab pf-on" data-t="zip">📦 บีบอัด ZIP</button>
<button type="button" class="pf-tab" data-t="unzip">📂 แตกไฟล์ ZIP</button>
<button type="button" class="pf-tab" data-t="enc">🔒 เข้ารหัส</button>
<button type="button" class="pf-tab" data-t="md5">🔏 MD5</button>
<button type="button" class="pf-tab" data-t="sha">🛡️ SHA</button>
<button type="button" class="pf-tab" data-t="ren">✏️ เปลี่ยนชื่อเป็นชุด</button>
</div>
<section class="pf-panel" data-p="zip">
<h2>📦 บีบอัดไฟล์ สร้างไฟล์ ZIP</h2>
<p class="pf-row"><label>เลือกไฟล์ <input type="file" id="pf-zip-files" multiple></label> <label>หรือเลือกโฟลเดอร์ <input type="file" id="pf-zip-dir" webkitdirectory></label></p>
<p class="pf-row"><label>ชื่อไฟล์ ZIP <input type="text" id="pf-zip-name" value="archive.zip"></label> <label><input type="checkbox" id="pf-zip-cmp" checked> บีบอัดข้อมูล (Deflate)</label></p>
<p class="pf-row"><button type="button" class="pf-btn" id="pf-zip-go">สร้างและดาวน์โหลด ZIP</button> <button type="button" class="pf-btn pf-alt" id="pf-zip-clear">ล้างรายการ</button></p>
<ul class="pf-list" id="pf-zip-list"></ul>
<p class="pf-msg" id="pf-zip-msg" aria-live="polite"></p>
</section>
<section class="pf-panel" data-p="unzip" hidden>
<h2>📂 แตกไฟล์ ZIP</h2>
<p class="pf-row"><label>เลือกไฟล์ .zip <input type="file" id="pf-unzip-file" accept=".zip,application/zip"></label></p>
<ul class="pf-list" id="pf-unzip-list"></ul>
<p class="pf-msg" id="pf-unzip-msg" aria-live="polite"></p>
</section>
<section class="pf-panel" data-p="enc" hidden>
<h2>🔒 เข้ารหัสและถอดรหัสไฟล์ (AES-256)</h2>
<p class="pf-row"><label><input type="radio" name="pf-enc-mode" value="enc" checked> เข้ารหัส</label> <label><input type="radio" name="pf-enc-mode" value="dec"> ถอดรหัส (ไฟล์ .enc)</label></p>
<p class="pf-row"><label>เลือกไฟล์ <input type="file" id="pf-enc-file"></label></p>
<p class="pf-row"><label>รหัสผ่าน <input type="password" id="pf-enc-pw" autocomplete="new-password"></label></p>
<p class="pf-row"><button type="button" class="pf-btn" id="pf-enc-go">ดำเนินการและดาวน์โหลด</button></p>
<p class="pf-msg" id="pf-enc-msg" aria-live="polite"></p>
</section>
<section class="pf-panel" data-p="md5" hidden>
<h2>🔏 MD5 แฮช</h2>
<p class="pf-row"><label>เลือกไฟล์ <input type="file" id="pf-md5-files" multiple></label></p>
<p class="pf-row"><label>เปรียบเทียบกับค่าแฮชที่ได้รับ <input type="text" id="pf-md5-cmp" placeholder="วางค่า MD5 ที่นี่"></label></p>
<ul class="pf-list" id="pf-md5-list"></ul>
<p class="pf-msg" id="pf-md5-msg" aria-live="polite"></p>
</section>
<section class="pf-panel" data-p="sha" hidden>
<h2>🛡️ SHA แฮช (SHA-1, SHA-256, SHA-512)</h2>
<p class="pf-row"><label>เลือกไฟล์ <input type="file" id="pf-sha-files" multiple></label></p>
<p class="pf-row"><label>เปรียบเทียบกับค่าแฮชที่ได้รับ <input type="text" id="pf-sha-cmp" placeholder="วางค่า SHA ที่นี่"></label></p>
<ul class="pf-list" id="pf-sha-list"></ul>
<p class="pf-msg" id="pf-sha-msg" aria-live="polite"></p>
</section>
<section class="pf-panel" data-p="ren" hidden>
<h2>✏️ เปลี่ยนชื่อไฟล์เป็นชุด</h2>
<p class="pf-row"><label>เลือกไฟล์ <input type="file" id="pf-ren-files" multiple></label></p>
<p class="pf-row"><label>คำนำหน้า <input type="text" id="pf-ren-pre"></label> <label>คำต่อท้าย <input type="text" id="pf-ren-suf"></label></p>
<p class="pf-row"><label>ค้นหาข้อความ <input type="text" id="pf-ren-find"></label> <label>แทนที่ด้วย <input type="text" id="pf-ren-rep"></label></p>
<p class="pf-row"><label>ตัวพิมพ์ <select id="pf-ren-case"><option value="">ไม่เปลี่ยน</option><option value="lower">ตัวพิมพ์เล็กทั้งหมด</option><option value="upper">ตัวพิมพ์ใหญ่ทั้งหมด</option></select></label></p>
<p class="pf-row"><label><input type="checkbox" id="pf-ren-num"> ใส่เลขลำดับ</label> <label>เริ่มที่ <input type="number" id="pf-ren-start" value="1" min="0" style="width:5em"></label> <label>จำนวนหลัก <input type="number" id="pf-ren-pad" value="3" min="1" max="10" style="width:5em"></label> <label>ตำแหน่ง <select id="pf-ren-pos"><option value="after">หลังชื่อ</option><option value="before">หน้าชื่อ</option></select></label></p>
<p class="pf-row"><button type="button" class="pf-btn" id="pf-ren-go">ดาวน์โหลดไฟล์ที่เปลี่ยนชื่อ (ZIP)</button></p>
<ul class="pf-list" id="pf-ren-list"></ul>
<p class="pf-msg" id="pf-ren-msg" aria-live="polite"></p>
</section>
</div>

<style>
.pf-app{border:1px solid rgba(127,127,127,.35);border-radius:12px;padding:12px;margin:16px 0;max-width:100%}
.pf-tabs{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:12px}
.pf-tab{cursor:pointer;border:1px solid rgba(127,127,127,.4);background:transparent;color:inherit;border-radius:999px;padding:6px 12px;font:inherit;font-size:.9rem}
.pf-tab.pf-on{background:#2563eb;border-color:#2563eb;color:#fff}
.pf-panel h2{font-size:1.15rem;margin:0 0 10px}
.pf-row{display:flex;flex-wrap:wrap;gap:10px 16px;align-items:center;margin:8px 0}
.pf-row label{display:inline-flex;flex-wrap:wrap;gap:6px;align-items:center}
.pf-app input[type=text],.pf-app input[type=password],.pf-app input[type=number],.pf-app select{font:inherit;color:inherit;background:transparent;border:1px solid rgba(127,127,127,.5);border-radius:6px;padding:5px 8px;max-width:100%}
.pf-app input[type=file]{max-width:100%}
.pf-btn{cursor:pointer;border:0;border-radius:8px;background:#2563eb;color:#fff;padding:8px 16px;font:inherit}
.pf-btn.pf-alt{background:transparent;color:inherit;border:1px solid rgba(127,127,127,.5)}
.pf-btn:disabled{opacity:.5;cursor:wait}
.pf-list{list-style:none;margin:10px 0;padding:0}
.pf-list li{display:flex;flex-wrap:wrap;gap:6px 12px;align-items:center;justify-content:space-between;padding:6px 0;border-bottom:1px solid rgba(127,127,127,.25);word-break:break-all}
.pf-list code{font-size:.8rem;word-break:break-all}
.pf-list li.pf-ok{outline:2px solid #16a34a;outline-offset:2px}
.pf-msg{min-height:1.4em;margin:6px 0 0;font-size:.95rem}
.pf-msg.pf-err{color:#dc2626}
</style>

<script>
(function () {
  'use strict';
  var enc = new TextEncoder();
  var dec = new TextDecoder();
  function $(s) { return document.querySelector(s); }
  function all(s) { return Array.prototype.slice.call(document.querySelectorAll(s)); }
  function esc(s) {
    return String(s).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  }
  function fmt(n) {
    if (n < 1024) return n + ' B';
    var u = ['KB', 'MB', 'GB'], i = -1;
    do { n /= 1024; i++; } while (n >= 1024 && i < 2);
    return n.toFixed(1) + ' ' + u[i];
  }
  function say(el, text, isErr) {
    el.textContent = text;
    el.className = 'pf-msg' + (isErr ? ' pf-err' : '');
  }
  function download(blob, name) {
    var a = document.createElement('a');
    var url = URL.createObjectURL(blob);
    a.href = url;
    a.download = name;
    document.body.appendChild(a);
    a.click();
    a.remove();
    setTimeout(function () { URL.revokeObjectURL(url); }, 5000);
  }
  function hex(buf) {
    var u = new Uint8Array(buf), s = '';
    for (var i = 0; i < u.length; i++) s += (u[i] < 16 ? '0' : '') + u[i].toString(16);
    return s;
  }
  function pipe(u8, stream) {
    return new Response(new Blob([u8]).stream().pipeThrough(stream)).arrayBuffer().then(function (b) {
      return new Uint8Array(b);
    });
  }
  function hasStreams() {
    return typeof CompressionStream !== 'undefined' && typeof DecompressionStream !== 'undefined';
  }

  /* ---------- CRC32 ---------- */
  var CRC = (function () {
    var t = new Uint32Array(256);
    for (var n = 0; n < 256; n++) {
      var c = n;
      for (var k = 0; k < 8; k++) c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1);
      t[n] = c >>> 0;
    }
    return t;
  })();
  function crc32(u8) {
    var c = 0xFFFFFFFF;
    for (var i = 0; i < u8.length; i++) c = CRC[(c ^ u8[i]) & 255] ^ (c >>> 8);
    return (c ^ 0xFFFFFFFF) >>> 0;
  }

  /* ---------- ZIP writer ---------- */
  function dosParts(d) {
    var y = d.getFullYear();
    if (y < 1980) y = 1980;
    return {
      t: ((d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1)) & 0xFFFF,
      d: (((y - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate()) & 0xFFFF
    };
  }
  async function buildZip(entries, compress) {
    var parts = [], central = [], offset = 0, csize = 0;
    if (entries.length > 65534) throw new Error('จำนวนไฟล์มากเกินไปสำหรับ ZIP มาตรฐาน');
    for (var i = 0; i < entries.length; i++) {
      var e = entries[i];
      var nameB = enc.encode(e.name);
      var raw = e.data, body = raw, method = 0;
      var crc = crc32(raw);
      if (compress && hasStreams() && raw.length > 0) {
        var c = await pipe(raw, new CompressionStream('deflate-raw'));
        if (c.length < raw.length) { body = c; method = 8; }
      }
      if (body.length > 0xFFFFFFFE || offset > 0xFFFFFFFE) throw new Error('ไฟล์ใหญ่เกินขีดจำกัดของ ZIP มาตรฐาน (4 GB)');
      var dt = dosParts(e.date || new Date());
      var lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true);
      lh.setUint16(4, 20, true);
      lh.setUint16(6, 0x0800, true);
      lh.setUint16(8, method, true);
      lh.setUint16(10, dt.t, true);
      lh.setUint16(12, dt.d, true);
      lh.setUint32(14, crc, true);
      lh.setUint32(18, body.length, true);
      lh.setUint32(22, raw.length, true);
      lh.setUint16(26, nameB.length, true);
      lh.setUint16(28, 0, true);
      parts.push(new Uint8Array(lh.buffer), nameB, body);
      var ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true);
      ch.setUint16(4, 20, true);
      ch.setUint16(6, 20, true);
      ch.setUint16(8, 0x0800, true);
      ch.setUint16(10, method, true);
      ch.setUint16(12, dt.t, true);
      ch.setUint16(14, dt.d, true);
      ch.setUint32(16, crc, true);
      ch.setUint32(20, body.length, true);
      ch.setUint32(24, raw.length, true);
      ch.setUint16(28, nameB.length, true);
      ch.setUint32(42, offset, true);
      central.push(new Uint8Array(ch.buffer), nameB);
      csize += 46 + nameB.length;
      offset += 30 + nameB.length + body.length;
    }
    var end = new DataView(new ArrayBuffer(22));
    end.setUint32(0, 0x06054b50, true);
    end.setUint16(8, entries.length, true);
    end.setUint16(10, entries.length, true);
    end.setUint32(12, csize, true);
    end.setUint32(16, offset, true);
    return new Blob(parts.concat(central, [new Uint8Array(end.buffer)]), { type: 'application/zip' });
  }

  /* ---------- ZIP reader ---------- */
  function readZipIndex(buf) {
    var u8 = new Uint8Array(buf);
    if (u8.length < 22) throw new Error('ไม่ใช่ไฟล์ ZIP ที่ถูกต้อง');
    var v = new DataView(buf);
    var i = u8.length - 22, min = Math.max(0, u8.length - 22 - 65535);
    while (i >= min && v.getUint32(i, true) !== 0x06054b50) i--;
    if (i < min) throw new Error('ไม่ใช่ไฟล์ ZIP ที่ถูกต้อง');
    var n = v.getUint16(i + 10, true), off = v.getUint32(i + 16, true);
    if (n === 0xFFFF || off === 0xFFFFFFFF) throw new Error('ไม่รองรับ ZIP64');
    var list = [];
    for (var k = 0; k < n; k++) {
      if (off + 46 > u8.length || v.getUint32(off, true) !== 0x02014b50) throw new Error('โครงสร้าง ZIP เสียหาย');
      var nl = v.getUint16(off + 28, true), el = v.getUint16(off + 30, true), cl = v.getUint16(off + 32, true);
      list.push({
        flags: v.getUint16(off + 8, true),
        method: v.getUint16(off + 10, true),
        cs: v.getUint32(off + 20, true),
        us: v.getUint32(off + 24, true),
        lo: v.getUint32(off + 42, true),
        name: dec.decode(u8.subarray(off + 46, off + 46 + nl))
      });
      off += 46 + nl + el + cl;
    }
    return list;
  }
  async function readZipEntry(buf, entry) {
    var u8 = new Uint8Array(buf), v = new DataView(buf), lo = entry.lo;
    if (v.getUint32(lo, true) !== 0x04034b50) throw new Error('โครงสร้าง ZIP เสียหาย');
    var start = lo + 30 + v.getUint16(lo + 26, true) + v.getUint16(lo + 28, true);
    var data = u8.subarray(start, start + entry.cs);
    if (entry.flags & 1) throw new Error('ไม่รองรับไฟล์ ZIP ที่มีรหัสผ่าน');
    if (entry.method === 0) return data;
    if (entry.method === 8) {
      if (typeof DecompressionStream === 'undefined') throw new Error('เบราว์เซอร์นี้ไม่รองรับการแตกไฟล์ กรุณาอัปเดตเบราว์เซอร์');
      return pipe(data, new DecompressionStream('deflate-raw'));
    }
    throw new Error('ไม่รองรับวิธีบีบอัดแบบนี้ (method ' + entry.method + ')');
  }

  /* ---------- MD5 (incremental) ---------- */
  var MD5K = new Int32Array(64);
  for (var mi = 0; mi < 64; mi++) MD5K[mi] = Math.floor(Math.abs(Math.sin(mi + 1)) * 4294967296) | 0;
  var MD5S = [7, 12, 17, 22, 5, 9, 14, 20, 4, 11, 16, 23, 6, 10, 15, 21];
  function Md5() {
    this.h = [0x67452301, 0xefcdab89 | 0, 0x98badcfe | 0, 0x10325476];
    this.buf = new Uint8Array(64);
    this.n = 0;
    this.len = 0;
    this.m = new Int32Array(16);
  }
  Md5.prototype.block = function (b, o) {
    var m = this.m, j, i;
    for (j = 0; j < 16; j++) {
      m[j] = b[o + 4 * j] | (b[o + 4 * j + 1] << 8) | (b[o + 4 * j + 2] << 16) | (b[o + 4 * j + 3] << 24);
    }
    var a = this.h[0], bb = this.h[1], c = this.h[2], d = this.h[3], f, g, s, x;
    for (i = 0; i < 64; i++) {
      if (i < 16) { f = (bb & c) | (~bb & d); g = i; }
      else if (i < 32) { f = (d & bb) | (~d & c); g = (5 * i + 1) % 16; }
      else if (i < 48) { f = bb ^ c ^ d; g = (3 * i + 5) % 16; }
      else { f = c ^ (bb | ~d); g = (7 * i) % 16; }
      x = (f + a + MD5K[i] + m[g]) | 0;
      s = MD5S[(i >> 4) * 4 + (i & 3)];
      a = d; d = c; c = bb;
      bb = (bb + ((x << s) | (x >>> (32 - s)))) | 0;
    }
    this.h[0] = (this.h[0] + a) | 0;
    this.h[1] = (this.h[1] + bb) | 0;
    this.h[2] = (this.h[2] + c) | 0;
    this.h[3] = (this.h[3] + d) | 0;
  };
  Md5.prototype.feed = function (u8) {
    var i = 0, L = u8.length;
    if (this.n) {
      while (i < L && this.n < 64) this.buf[this.n++] = u8[i++];
      if (this.n === 64) { this.block(this.buf, 0); this.n = 0; }
    }
    for (; i + 64 <= L; i += 64) this.block(u8, i);
    while (i < L) this.buf[this.n++] = u8[i++];
  };
  Md5.prototype.update = function (u8) { this.len += u8.length; this.feed(u8); };
  Md5.prototype.digest = function () {
    var bits = this.len * 8;
    var padLen = (this.n < 56 ? 56 : 120) - this.n;
    var pad = new Uint8Array(padLen + 8);
    pad[0] = 0x80;
    var lo = bits % 4294967296, hi = Math.floor(bits / 4294967296);
    for (var k = 0; k < 4; k++) {
      pad[padLen + k] = (lo >>> (8 * k)) & 255;
      pad[padLen + 4 + k] = (hi >>> (8 * k)) & 255;
    }
    this.feed(pad);
    var out = '';
    for (var w = 0; w < 4; w++) {
      for (var q = 0; q < 4; q++) {
        var byte = (this.h[w] >>> (8 * q)) & 255;
        out += (byte < 16 ? '0' : '') + byte.toString(16);
      }
    }
    return out;
  };
  async function md5File(file) {
    var h = new Md5(), step = 4 * 1024 * 1024;
    for (var o = 0; o < file.size; o += step) {
      h.update(new Uint8Array(await file.slice(o, o + step).arrayBuffer()));
    }
    return h.digest();
  }

  /* ---------- Tabs ---------- */
  var tabs = all('.pf-tab'), panels = all('.pf-panel');
  tabs.forEach(function (b) {
    b.addEventListener('click', function () {
      var t = b.getAttribute('data-t');
      tabs.forEach(function (x) { x.classList.toggle('pf-on', x === b); });
      panels.forEach(function (p) { p.hidden = p.getAttribute('data-p') !== t; });
    });
  });
  if (!document.getElementById('pf-app')) return;

  /* ---------- ZIP tab ---------- */
  var zipFiles = [];
  var zipList = $('#pf-zip-list'), zipMsg = $('#pf-zip-msg');
  function zipPath(f) { return f.webkitRelativePath || f.name; }
  function zipRender() {
    var total = 0;
    zipList.innerHTML = zipFiles.map(function (f) {
      total += f.size;
      return '<li><span>' + esc(zipPath(f)) + '</span><span>' + fmt(f.size) + '</span></li>';
    }).join('');
    say(zipMsg, zipFiles.length ? zipFiles.length + ' ไฟล์ รวม ' + fmt(total) : '', false);
  }
  function zipAdd(input) {
    Array.prototype.forEach.call(input.files, function (f) { zipFiles.push(f); });
    input.value = '';
    zipRender();
  }
  $('#pf-zip-files').addEventListener('change', function () { zipAdd(this); });
  $('#pf-zip-dir').addEventListener('change', function () { zipAdd(this); });
  $('#pf-zip-clear').addEventListener('click', function () { zipFiles = []; zipRender(); });
  $('#pf-zip-go').addEventListener('click', async function () {
    var btn = this;
    if (!zipFiles.length) { say(zipMsg, 'กรุณาเลือกไฟล์หรือโฟลเดอร์ก่อน', true); return; }
    btn.disabled = true;
    say(zipMsg, 'กำลังสร้าง ZIP...', false);
    try {
      var entries = [];
      for (var i = 0; i < zipFiles.length; i++) {
        var f = zipFiles[i];
        entries.push({ name: zipPath(f), data: new Uint8Array(await f.arrayBuffer()), date: new Date(f.lastModified) });
      }
      var blob = await buildZip(entries, $('#pf-zip-cmp').checked);
      var name = ($('#pf-zip-name').value || 'archive.zip').trim();
      if (!/\.zip$/i.test(name)) name += '.zip';
      download(blob, name);
      say(zipMsg, 'เสร็จแล้ว ขนาดไฟล์ ZIP ' + fmt(blob.size), false);
    } catch (err) {
      say(zipMsg, 'เกิดข้อผิดพลาด: ' + err.message, true);
    }
    btn.disabled = false;
  });

  /* ---------- Unzip tab ---------- */
  var unBuf = null, unEntries = [];
  var unList = $('#pf-unzip-list'), unMsg = $('#pf-unzip-msg');
  $('#pf-unzip-file').addEventListener('change', async function () {
    var f = this.files[0];
    unList.innerHTML = '';
    unBuf = null;
    unEntries = [];
    if (!f) { say(unMsg, '', false); return; }
    try {
      unBuf = await f.arrayBuffer();
      unEntries = readZipIndex(unBuf);
      var shown = 0;
      unList.innerHTML = unEntries.map(function (e, i) {
        if (/\/$/.test(e.name)) return '';
        shown++;
        return '<li><span>' + esc(e.name) + ' (' + fmt(e.us) + ')</span><button type="button" class="pf-btn pf-alt" data-i="' + i + '">ดาวน์โหลด</button></li>';
      }).join('');
      say(unMsg, 'พบ ' + shown + ' ไฟล์', false);
    } catch (err) {
      say(unMsg, 'เกิดข้อผิดพลาด: ' + err.message, true);
    }
  });
  unList.addEventListener('click', async function (ev) {
    var b = ev.target.closest ? ev.target.closest('button[data-i]') : null;
    if (!b || !unBuf) return;
    var e = unEntries[Number(b.getAttribute('data-i'))];
    try {
      var data = await readZipEntry(unBuf, e);
      download(new Blob([data]), e.name.split('/').pop() || 'file');
      say(unMsg, 'ดาวน์โหลด ' + e.name + ' แล้ว', false);
    } catch (err) {
      say(unMsg, 'เกิดข้อผิดพลาด: ' + err.message, true);
    }
  });

  /* ---------- Encrypt tab (AES-256-GCM + PBKDF2) ---------- */
  var MAGIC = enc.encode('PRSL1');
  var encMsg = $('#pf-enc-msg');
  async function deriveKey(pw, salt) {
    var km = await crypto.subtle.importKey('raw', enc.encode(pw), 'PBKDF2', false, ['deriveKey']);
    return crypto.subtle.deriveKey(
      { name: 'PBKDF2', salt: salt, iterations: 250000, hash: 'SHA-256' },
      km, { name: 'AES-GCM', length: 256 }, false, ['encrypt', 'decrypt']
    );
  }
  $('#pf-enc-go').addEventListener('click', async function () {
    var btn = this;
    var f = $('#pf-enc-file').files[0];
    var pw = $('#pf-enc-pw').value;
    var mode = document.querySelector('input[name="pf-enc-mode"]:checked').value;
    if (!window.crypto || !crypto.subtle) { say(encMsg, 'ต้องเปิดผ่าน HTTPS จึงจะใช้การเข้ารหัสได้', true); return; }
    if (!f) { say(encMsg, 'กรุณาเลือกไฟล์ก่อน', true); return; }
    if (!pw) { say(encMsg, 'กรุณากรอกรหัสผ่าน', true); return; }
    btn.disabled = true;
    say(encMsg, 'กำลังประมวลผล...', false);
    try {
      var data = new Uint8Array(await f.arrayBuffer());
      if (mode === 'enc') {
        var salt = crypto.getRandomValues(new Uint8Array(16));
        var iv = crypto.getRandomValues(new Uint8Array(12));
        var nb = enc.encode(f.name);
        var plain = new Uint8Array(2 + nb.length + data.length);
        new DataView(plain.buffer).setUint16(0, nb.length, false);
        plain.set(nb, 2);
        plain.set(data, 2 + nb.length);
        var ct = new Uint8Array(await crypto.subtle.encrypt({ name: 'AES-GCM', iv: iv }, await deriveKey(pw, salt), plain));
        download(new Blob([MAGIC, salt, iv, ct], { type: 'application/octet-stream' }), f.name + '.enc');
        say(encMsg, 'เข้ารหัสเสร็จแล้ว กรุณาจำรหัสผ่านไว้ หากลืมจะกู้ไฟล์คืนไม่ได้', false);
      } else {
        if (data.length < 5 + 16 + 12 + 16) throw new Error('ไม่ใช่ไฟล์ที่เข้ารหัสด้วยเครื่องมือนี้');
        for (var i = 0; i < MAGIC.length; i++) {
          if (data[i] !== MAGIC[i]) throw new Error('ไม่ใช่ไฟล์ที่เข้ารหัสด้วยเครื่องมือนี้');
        }
        var salt2 = data.subarray(5, 21), iv2 = data.subarray(21, 33), ct2 = data.subarray(33);
        var out;
        try {
          out = new Uint8Array(await crypto.subtle.decrypt({ name: 'AES-GCM', iv: iv2 }, await deriveKey(pw, salt2), ct2));
        } catch (e2) {
          throw new Error('รหัสผ่านไม่ถูกต้องหรือไฟล์เสียหาย');
        }
        var nl = new DataView(out.buffer, out.byteOffset, out.byteLength).getUint16(0, false);
        var origName = dec.decode(out.subarray(2, 2 + nl)) || 'decrypted';
        download(new Blob([out.subarray(2 + nl)]), origName);
        say(encMsg, 'ถอดรหัสเสร็จแล้ว', false);
      }
    } catch (err) {
      say(encMsg, 'เกิดข้อผิดพลาด: ' + err.message, true);
    }
    btn.disabled = false;
  });

  /* ---------- Hash tabs ---------- */
  function hashPanel(inputId, listId, msgId, cmpId, compute) {
    var list = $(listId), msg = $(msgId), cmp = $(cmpId);
    function compare() {
      var want = cmp.value.trim().toLowerCase();
      var hit = false, any = false;
      all(listId + ' code').forEach(function (c) {
        any = true;
        var ok = !!want && c.textContent.toLowerCase() === want;
        c.parentNode.parentNode.classList.toggle('pf-ok', ok);
        if (ok) hit = true;
      });
      if (!want || !any) return;
      say(msg, hit ? '✓ ค่าแฮชตรงกัน ไฟล์ไม่ถูกแก้ไข' : '✗ ค่าแฮชไม่ตรงกัน', !hit);
    }
    cmp.addEventListener('input', compare);
    $(inputId).addEventListener('change', async function () {
      var files = Array.prototype.slice.call(this.files);
      list.innerHTML = '';
      if (!files.length) { say(msg, '', false); return; }
      say(msg, 'กำลังคำนวณ...', false);
      try {
        for (var i = 0; i < files.length; i++) {
          var rows = await compute(files[i]);
          list.innerHTML += rows.map(function (r) {
            return '<li><span><strong>' + esc(files[i].name) + '</strong> · ' + r[0] + '<br><code>' + r[1] + '</code></span></li>';
          }).join('');
        }
        say(msg, 'คำนวณเสร็จแล้ว ' + files.length + ' ไฟล์', false);
        compare();
      } catch (err) {
        say(msg, 'เกิดข้อผิดพลาด: ' + err.message, true);
      }
    });
  }
  hashPanel('#pf-md5-files', '#pf-md5-list', '#pf-md5-msg', '#pf-md5-cmp', async function (f) {
    return [['MD5', await md5File(f)]];
  });
  hashPanel('#pf-sha-files', '#pf-sha-list', '#pf-sha-msg', '#pf-sha-cmp', async function (f) {
    if (!window.crypto || !crypto.subtle) throw new Error('ต้องเปิดผ่าน HTTPS จึงจะคำนวณ SHA ได้');
    var buf = await f.arrayBuffer();
    var algos = ['SHA-1', 'SHA-256', 'SHA-512'], rows = [];
    for (var i = 0; i < algos.length; i++) {
      rows.push([algos[i], hex(await crypto.subtle.digest(algos[i], buf))]);
    }
    return rows;
  });

  /* ---------- Batch rename tab ---------- */
  var renFiles = [];
  var renList = $('#pf-ren-list'), renMsg = $('#pf-ren-msg');
  function renNames() {
    var pre = $('#pf-ren-pre').value, suf = $('#pf-ren-suf').value;
    var find = $('#pf-ren-find').value, rep = $('#pf-ren-rep').value;
    var cs = $('#pf-ren-case').value;
    var useNum = $('#pf-ren-num').checked;
    var start = parseInt($('#pf-ren-start').value, 10) || 0;
    var pad = Math.min(10, Math.max(1, parseInt($('#pf-ren-pad').value, 10) || 1));
    var pos = $('#pf-ren-pos').value;
    var used = {};
    return renFiles.map(function (f, i) {
      var dot = f.name.lastIndexOf('.');
      var base = dot > 0 ? f.name.slice(0, dot) : f.name;
      var ext = dot > 0 ? f.name.slice(dot) : '';
      if (find) base = base.split(find).join(rep);
      if (cs === 'lower') base = base.toLowerCase();
      if (cs === 'upper') base = base.toUpperCase();
      var name = pre + base + suf;
      if (useNum) {
        var num = String(start + i);
        while (num.length < pad) num = '0' + num;
        name = pos === 'before' ? num + '_' + name : name + '_' + num;
      }
      name = name.replace(/[\\\/:*?"<>|]/g, '_') + ext;
      var key = name.toLowerCase(), c = 1;
      while (used[key]) {
        c++;
        key = (name.slice(0, name.length - ext.length) + '_' + c + ext).toLowerCase();
      }
      used[key] = true;
      return c > 1 ? name.slice(0, name.length - ext.length) + '_' + c + ext : name;
    });
  }
  function renRender() {
    var names = renNames();
    renList.innerHTML = renFiles.map(function (f, i) {
      return '<li><span>' + esc(f.name) + '</span><span>→ <strong>' + esc(names[i]) + '</strong></span></li>';
    }).join('');
    say(renMsg, renFiles.length ? renFiles.length + ' ไฟล์' : '', false);
  }
  $('#pf-ren-files').addEventListener('change', function () {
    renFiles = Array.prototype.slice.call(this.files);
    renRender();
  });
  ['#pf-ren-pre', '#pf-ren-suf', '#pf-ren-find', '#pf-ren-rep', '#pf-ren-case', '#pf-ren-num', '#pf-ren-start', '#pf-ren-pad', '#pf-ren-pos'].forEach(function (s) {
    $(s).addEventListener('input', renRender);
    $(s).addEventListener('change', renRender);
  });
  $('#pf-ren-go').addEventListener('click', async function () {
    var btn = this;
    if (!renFiles.length) { say(renMsg, 'กรุณาเลือกไฟล์ก่อน', true); return; }
    btn.disabled = true;
    say(renMsg, 'กำลังสร้างไฟล์ ZIP...', false);
    try {
      var names = renNames(), entries = [];
      for (var i = 0; i < renFiles.length; i++) {
        entries.push({ name: names[i], data: new Uint8Array(await renFiles[i].arrayBuffer()), date: new Date(renFiles[i].lastModified) });
      }
      download(await buildZip(entries, false), 'renamed.zip');
      say(renMsg, 'เสร็จแล้ว', false);
    } catch (err) {
      say(renMsg, 'เกิดข้อผิดพลาด: ' + err.message, true);
    }
    btn.disabled = false;
  });
})();
</script>

## วิธีใช้งานเครื่องมือไฟล์ออนไลน์

เครื่องมือทุกตัวทำงานในเบราว์เซอร์ของคุณเอง ไม่มีการอัปโหลดไฟล์ไปยังเซิร์ฟเวอร์ ใช้งานได้ทันทีโดยไม่ต้องสมัครสมาชิก เลือกแท็บที่ต้องการด้านบน แล้วทำตามขั้นตอนด้านล่าง

### 📦 บีบอัดไฟล์เป็น ZIP

1. เปิดแท็บ **บีบอัด ZIP**
2. กด **เลือกไฟล์** หรือ **เลือกโฟลเดอร์** (เพิ่มได้หลายครั้ง รายการจะสะสมไว้)
3. ตั้งชื่อไฟล์ ZIP และเลือกว่าจะบีบอัดข้อมูลหรือไม่
4. กด **สร้างและดาวน์โหลด ZIP** แล้วรอไฟล์ถูกบันทึกลงเครื่อง

### 📂 แตกไฟล์ ZIP

1. เปิดแท็บ **แตกไฟล์ ZIP**
2. เลือกไฟล์ `.zip` จากเครื่อง
3. รายการไฟล์ภายในจะแสดงพร้อมขนาด
4. กด **ดาวน์โหลด** ที่ไฟล์ที่ต้องการ

### 🔒 เข้ารหัสและถอดรหัสไฟล์

1. เปิดแท็บ **เข้ารหัส** แล้วเลือกโหมด **เข้ารหัส** หรือ **ถอดรหัส**
2. เลือกไฟล์ (โหมดถอดรหัสให้เลือกไฟล์ `.enc` ที่สร้างจากเครื่องมือนี้)
3. กรอกรหัสผ่าน ควรยาวอย่างน้อย 12 ตัวอักษรและไม่ซ้ำกับที่อื่น
4. กด **ดำเนินการและดาวน์โหลด** หากลืมรหัสผ่านจะกู้ไฟล์คืนไม่ได้

### 🔏 MD5 แฮช และ 🛡️ SHA แฮช

1. เปิดแท็บ **MD5** หรือ **SHA** แล้วเลือกไฟล์ (เลือกได้หลายไฟล์)
2. รอให้ระบบคำนวณ ค่าแฮชจะแสดงใต้ชื่อไฟล์
3. หากต้องการตรวจว่าไฟล์ตรงกับต้นฉบับ ให้วางค่าแฮชที่เว็บผู้เผยแพร่ระบุไว้ในช่อง **เปรียบเทียบ** ระบบจะแจ้งว่าตรงกันหรือไม่

### ✏️ เปลี่ยนชื่อไฟล์เป็นชุด

1. เปิดแท็บ **เปลี่ยนชื่อเป็นชุด** แล้วเลือกไฟล์ทั้งหมดที่ต้องการ
2. กำหนดคำนำหน้า คำต่อท้าย ค้นหาและแทนที่ข้อความ เปลี่ยนตัวพิมพ์ หรือใส่เลขลำดับ
3. ตรวจชื่อใหม่ในตัวอย่างด้านล่าง ซึ่งอัปเดตทันทีที่แก้ตัวเลือก
4. กด **ดาวน์โหลดไฟล์ที่เปลี่ยนชื่อ (ZIP)** นามสกุลไฟล์เดิมจะถูกเก็บไว้ให้

## คำอธิบายศัพท์ที่ควรรู้

- **ประมวลผลในเครื่อง (Client-side):** การทำงานเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งออกไปยังเซิร์ฟเวอร์
- **ZIP:** รูปแบบไฟล์บีบอัดที่รวมหลายไฟล์และโฟลเดอร์ไว้ในไฟล์เดียว เปิดได้ในแทบทุกระบบปฏิบัติการ
- **Deflate:** วิธีบีบอัดข้อมูลที่ ZIP ใช้ ช่วยลดขนาดไฟล์โดยไม่สูญเสียข้อมูล
- **CRC32:** ค่าตรวจสอบสั้น ๆ ที่ ZIP เก็บไว้ ใช้เช็กว่าไฟล์ที่แตกออกมาไม่เสียหาย
- **AES-256:** มาตรฐานการเข้ารหัสแบบสมมาตรที่ใช้กุญแจยาว 256 บิต ปลอดภัยสูงและใช้กันแพร่หลาย
- **AES-GCM:** โหมดการทำงานของ AES ที่เข้ารหัสพร้อมตรวจจับว่าไฟล์ถูกแก้ไขหรือรหัสผ่านผิด
- **PBKDF2:** กระบวนการแปลงรหัสผ่านให้เป็นกุญแจเข้ารหัสโดยคำนวณซ้ำหลายรอบ เพื่อให้เดารหัสผ่านได้ยากขึ้น
- **Salt และ IV:** ค่าสุ่มที่สร้างใหม่ทุกครั้งที่เข้ารหัส ทำให้ไฟล์เดียวกันและรหัสผ่านเดียวกันได้ผลลัพธ์ต่างกัน และถูกเก็บไว้ในไฟล์ `.enc` เพื่อใช้ตอนถอดรหัส
- **แฮช (Hash):** ค่าที่คำนวณจากเนื้อหาไฟล์ให้เป็นสายอักขระความยาวคงที่ หากไฟล์เปลี่ยนแม้ 1 ไบต์ ค่าแฮชจะเปลี่ยนทั้งหมด
- **Checksum:** ค่าที่ใช้ยืนยันว่าไฟล์ที่ดาวน์โหลดตรงกับต้นฉบับ มักเกิดจากการคำนวณแฮช
- **MD5:** อัลกอริทึมแฮชขนาด 128 บิต เร็วและยังใช้ตรวจความสมบูรณ์ของไฟล์ได้ แต่ไม่ปลอดภัยพอสำหรับงานด้านความปลอดภัย
- **SHA-1:** แฮชขนาด 160 บิต เลิกแนะนำสำหรับงานด้านความปลอดภัยแล้ว แต่ยังพบเห็นในระบบเดิม
- **SHA-256 และ SHA-512:** แฮชในตระกูล SHA-2 ขนาด 256 และ 512 บิต ปลอดภัยและเป็นที่นิยมสำหรับตรวจสอบไฟล์
- **นามสกุลไฟล์ (Extension):** ส่วนท้ายชื่อไฟล์หลังจุด เช่น `.pdf` หรือ `.jpg` บอกชนิดของไฟล์
- **เปลี่ยนชื่อเป็นชุด (Batch Rename):** การเปลี่ยนชื่อไฟล์หลายไฟล์พร้อมกันด้วยกฎเดียวกัน
- **เลขลำดับ (Padding):** การเติมเลข 0 นำหน้าให้จำนวนหลักเท่ากัน เช่น 001, 002 เพื่อให้เรียงชื่อได้ถูกต้อง

## ข้อจำกัดที่ควรทราบ

- รองรับ ZIP มาตรฐาน ยังไม่รองรับ ZIP64 และไฟล์ ZIP ที่ตั้งรหัสผ่าน
- ไฟล์ถูกโหลดเข้าหน่วยความจำของเบราว์เซอร์ ไฟล์ขนาดใหญ่มากอาจทำให้ช้าหรือเบราว์เซอร์ค้าง
- การเข้ารหัสและ SHA ต้องเปิดหน้านี้ผ่าน HTTPS และใช้เบราว์เซอร์รุ่นใหม่