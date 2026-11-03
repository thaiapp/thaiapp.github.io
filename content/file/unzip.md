---
title: แตกไฟล์ ZIP ออนไลน์ ฟรี
h1: แตกไฟล์ ZIP ออนไลน์
description: แตกไฟล์ ZIP ออนไลน์ฟรี ทำงานในเบราว์เซอร์ ไฟล์ไม่ถูกส่งออกจากเครื่อง รองรับ ZIP ใส่รหัสผ่านและไฟล์แยกส่วน ดาวน์โหลดทีละไฟล์หรือทั้งโฟลเดอร์ได้ ไม่ต้องสมัคร
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T09:00:00+07:00'
weight: 63
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- แตกไฟล์ ZIP ออนไลน์
- PDF และไฟล์
---

<div class="uz" id="uz-root">
<div class="uz-drop" id="uz-drop" role="button" tabindex="0" aria-label="เลือกไฟล์ ZIP">
<div class="uz-drop-ico" aria-hidden="true">📂</div>
<div class="uz-drop-t">วางไฟล์ ZIP ที่นี่ หรือกดเพื่อเลือกไฟล์</div>
<div class="uz-drop-s">กด Ctrl+V เพื่อวางไฟล์จากคลิปบอร์ดได้เช่นกัน</div>
</div>
<input type="file" id="uz-input" class="uz-hide" multiple>
<p class="uz-priv">🛡️ ประมวลผลในเครื่องของคุณ 100% ไฟล์ไม่ถูกส่งออกจากเบราว์เซอร์</p>
<div class="uz-busy" id="uz-busy" role="status" hidden></div>
<div class="uz-msg" id="uz-msg" role="status" hidden></div>
<div class="uz-parts" id="uz-parts" hidden></div>
<div class="uz-pw" id="uz-pw" hidden>
<label for="uz-pw-input">🔒 ไฟล์ใน ZIP นี้มีรหัสผ่าน</label>
<input type="password" id="uz-pw-input" placeholder="กรอกรหัสผ่าน" autocomplete="off">
</div>
<div class="uz-result" id="uz-result" hidden>
<div class="uz-bar">
<span class="uz-sum" id="uz-sum"></span>
<span class="uz-sel"><button type="button" class="uz-link" id="uz-all">เลือกทั้งหมด</button><button type="button" class="uz-link" id="uz-none">ไม่เลือก</button></span>
</div>
<ul class="uz-list" id="uz-list"></ul>
<div class="uz-actions">
<button type="button" class="uz-btn" id="uz-dl">ดาวน์โหลดไฟล์ที่เลือก</button>
<button type="button" class="uz-btn uz-btn2" id="uz-dir">ส่งออกไปโฟลเดอร์</button>
<button type="button" class="uz-btn uz-btn2" id="uz-clear">ล้าง</button>
</div>
</div>
</div>

<style>
.uz{max-width:760px;margin:1.25rem auto;font-size:15px;line-height:1.5}
.uz *{box-sizing:border-box}
.uz [hidden]{display:none!important}
.uz .uz-hide{display:none}
.uz-drop{border:2px dashed rgba(127,127,127,.5);border-radius:14px;padding:2rem 1rem;text-align:center;cursor:pointer;background:rgba(127,127,127,.06);transition:border-color .15s,background .15s}
.uz-drop:hover,.uz-drop:focus-visible,.uz-drop.uz-over{border-color:#2563eb;background:rgba(37,99,235,.08);outline:none}
.uz-drop-ico{font-size:2.4rem;line-height:1}
.uz-drop-t{font-weight:600;margin-top:.5rem}
.uz-drop-s{opacity:.7;font-size:.9em;margin-top:.25rem}
.uz-priv{margin:.6rem 0;font-size:.88em;opacity:.8;text-align:center}
.uz-busy,.uz-msg,.uz-parts,.uz-pw{margin:.6rem 0;padding:.65rem .85rem;border-radius:10px;border:1px solid rgba(127,127,127,.35);background:rgba(127,127,127,.08)}
.uz-msg.uz-err{border-color:#dc2626;background:rgba(220,38,38,.1)}
.uz-msg.uz-ok{border-color:#16a34a;background:rgba(22,163,74,.1)}
.uz-msg.uz-info{border-color:#2563eb;background:rgba(37,99,235,.1)}
.uz-parts-t{font-weight:600;margin-bottom:.4rem}
.uz-chip{display:inline-block;margin:.15rem .3rem .15rem 0;padding:.1rem .55rem;border-radius:999px;border:1px solid rgba(127,127,127,.5);font-size:.85em}
.uz-chip.uz-ok{border-color:#16a34a}
.uz-pw label{display:block;font-weight:600;margin-bottom:.35rem}
.uz-pw input{width:100%;padding:.5rem .65rem;border-radius:8px;border:1px solid rgba(127,127,127,.5);background:transparent;color:inherit;font:inherit}
.uz-bar{display:flex;flex-wrap:wrap;justify-content:space-between;gap:.4rem;margin:.8rem 0 .4rem;font-size:.9em}
.uz-link{background:none;border:0;color:#2563eb;cursor:pointer;padding:0 .35rem;font:inherit}
.uz-link:disabled{opacity:.5;cursor:default}
.uz-list{list-style:none;margin:0;padding:0;max-height:360px;overflow:auto;border:1px solid rgba(127,127,127,.35);border-radius:10px}
.uz-row{display:flex;align-items:center;gap:.5rem;padding:.4rem .65rem;border-bottom:1px solid rgba(127,127,127,.2)}
.uz-row:last-child{border-bottom:0}
.uz-name{flex:1;min-width:0;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.uz-dir{opacity:.55}
.uz-size{font-size:.85em;opacity:.7;white-space:nowrap}
.uz-one{border:1px solid rgba(127,127,127,.4);background:transparent;color:inherit;border-radius:8px;cursor:pointer;padding:.15rem .5rem}
.uz-one:hover{border-color:#2563eb}
.uz-actions{display:flex;flex-wrap:wrap;gap:.5rem;margin-top:.8rem}
.uz-btn{padding:.55rem 1rem;border-radius:10px;border:1px solid #2563eb;background:#2563eb;color:#fff;font:inherit;font-weight:600;cursor:pointer}
.uz-btn2{background:transparent;color:inherit;border-color:rgba(127,127,127,.5)}
.uz-btn:disabled{opacity:.5;cursor:not-allowed}
@media (max-width:480px){.uz-btn{flex:1 1 100%}}
</style>

<script>
(function () {
'use strict';
/*CORE*/
var CRC_TABLE = (function () {
  var t = new Uint32Array(256);
  for (var n = 0; n < 256; n++) {
    var c = n;
    for (var k = 0; k < 8; k++) c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1);
    t[n] = c >>> 0;
  }
  return t;
})();
function crc32(buf) {
  var c = 0xFFFFFFFF;
  for (var i = 0; i < buf.length; i++) c = CRC_TABLE[(c ^ buf[i]) & 255] ^ (c >>> 8);
  return (c ^ 0xFFFFFFFF) >>> 0;
}
var AES = (function () {
  var S = new Uint8Array(256), T0 = new Uint32Array(256), T1 = new Uint32Array(256), T2 = new Uint32Array(256), T3 = new Uint32Array(256);
  function rotl8(v, n) { return ((v << n) | (v >>> (8 - n))) & 255; }
  function xtime(v) { return ((v << 1) ^ ((v & 0x80) ? 0x11B : 0)) & 255; }
  var p = 1, q = 1;
  do {
    p = (p ^ (p << 1) ^ ((p & 0x80) ? 0x11B : 0)) & 255;
    q ^= q << 1; q ^= q << 2; q ^= q << 4; q &= 255;
    if (q & 0x80) q ^= 0x09;
    S[p] = (q ^ rotl8(q, 1) ^ rotl8(q, 2) ^ rotl8(q, 3) ^ rotl8(q, 4) ^ 0x63) & 255;
  } while (p !== 1);
  S[0] = 0x63;
  for (var i = 0; i < 256; i++) {
    var s = S[i], s2 = xtime(s), s3 = s2 ^ s;
    var w = ((s2 << 24) | (s << 16) | (s << 8) | s3) >>> 0;
    T0[i] = w;
    T1[i] = ((w >>> 8) | (w << 24)) >>> 0;
    T2[i] = ((w >>> 16) | (w << 16)) >>> 0;
    T3[i] = ((w >>> 24) | (w << 8)) >>> 0;
  }
  function sub(t) { return ((S[t >>> 24] << 24) | (S[(t >>> 16) & 255] << 16) | (S[(t >>> 8) & 255] << 8) | S[t & 255]) >>> 0; }
  function expand(key) {
    var nk = key.length / 4, nr = nk + 6, total = 4 * (nr + 1), W = new Uint32Array(total), rcon = 1;
    for (var i = 0; i < nk; i++) W[i] = ((key[4 * i] << 24) | (key[4 * i + 1] << 16) | (key[4 * i + 2] << 8) | key[4 * i + 3]) >>> 0;
    for (var j = nk; j < total; j++) {
      var t = W[j - 1];
      if (j % nk === 0) { t = (sub(((t << 8) | (t >>> 24)) >>> 0) ^ (rcon << 24)) >>> 0; rcon = xtime(rcon); }
      else if (nk > 6 && j % nk === 4) t = sub(t);
      W[j] = (W[j - nk] ^ t) >>> 0;
    }
    return W;
  }
  // WinZip AES-CTR: little-endian counter that starts at 1
  function ctr(key, data) {
    var W = expand(key), nr = W.length / 4 - 1, out = new Uint8Array(data.length), c = 1;
    for (var off = 0; off < data.length; off += 16, c++) {
      var s0 = (((c & 255) << 24) | (((c >>> 8) & 255) << 16) | (((c >>> 16) & 255) << 8) | (c >>> 24)) ^ W[0];
      var s1 = W[1], s2 = W[2], s3 = W[3];
      for (var r = 1; r < nr; r++) {
        var k = 4 * r;
        var t0 = T0[s0 >>> 24] ^ T1[(s1 >>> 16) & 255] ^ T2[(s2 >>> 8) & 255] ^ T3[s3 & 255] ^ W[k];
        var t1 = T0[s1 >>> 24] ^ T1[(s2 >>> 16) & 255] ^ T2[(s3 >>> 8) & 255] ^ T3[s0 & 255] ^ W[k + 1];
        var t2 = T0[s2 >>> 24] ^ T1[(s3 >>> 16) & 255] ^ T2[(s0 >>> 8) & 255] ^ T3[s1 & 255] ^ W[k + 2];
        var t3 = T0[s3 >>> 24] ^ T1[(s0 >>> 16) & 255] ^ T2[(s1 >>> 8) & 255] ^ T3[s2 & 255] ^ W[k + 3];
        s0 = t0; s1 = t1; s2 = t2; s3 = t3;
      }
      var f = 4 * nr;
      var k0 = (((S[s0 >>> 24] << 24) | (S[(s1 >>> 16) & 255] << 16) | (S[(s2 >>> 8) & 255] << 8) | S[s3 & 255]) ^ W[f]) >>> 0;
      var k1 = (((S[s1 >>> 24] << 24) | (S[(s2 >>> 16) & 255] << 16) | (S[(s3 >>> 8) & 255] << 8) | S[s0 & 255]) ^ W[f + 1]) >>> 0;
      var k2 = (((S[s2 >>> 24] << 24) | (S[(s3 >>> 16) & 255] << 16) | (S[(s0 >>> 8) & 255] << 8) | S[s1 & 255]) ^ W[f + 2]) >>> 0;
      var k3 = (((S[s3 >>> 24] << 24) | (S[(s0 >>> 16) & 255] << 16) | (S[(s1 >>> 8) & 255] << 8) | S[s2 & 255]) ^ W[f + 3]) >>> 0;
      var ks = [k0, k1, k2, k3];
      for (var b = 0; b < 16 && off + b < data.length; b++) {
        out[off + b] = data[off + b] ^ ((ks[b >> 2] >>> (24 - 8 * (b & 3))) & 255);
      }
    }
    return out;
  }
  return { ctr: ctr };
})();
function zipCryptoDecrypt(raw, pw, checkA, checkB) {
  var k0 = 0x12345678, k1 = 0x23456789, k2 = 0x34567890;
  function upd(c) {
    k0 = (CRC_TABLE[(k0 ^ c) & 255] ^ (k0 >>> 8)) >>> 0;
    k1 = (k1 + (k0 & 255)) >>> 0;
    k1 = (Math.imul(k1, 134775813) + 1) >>> 0;
    k2 = (CRC_TABLE[(k2 ^ (k1 >>> 24)) & 255] ^ (k2 >>> 8)) >>> 0;
  }
  for (var i = 0; i < pw.length; i++) upd(pw[i]);
  if (raw.length < 12) return null;
  var out = new Uint8Array(raw.length - 12);
  for (var j = 0; j < raw.length; j++) {
    var t = (k2 | 2) & 0xFFFF;
    var c = raw[j] ^ (((t * (t ^ 1)) >>> 8) & 255);
    upd(c);
    if (j < 12) { if (j === 11 && c !== checkA && c !== checkB) return null; }
    else out[j - 12] = c;
  }
  return out;
}
function decodeName(bytes, utf8Flag) {
  try { return new TextDecoder('utf-8', { fatal: true }).decode(bytes); } catch (e) {}
  try { return new TextDecoder('windows-874').decode(bytes); } catch (e2) {}
  var s = ''; for (var i = 0; i < bytes.length; i++) s += String.fromCharCode(bytes[i]);
  return s;
}
function findEocd(data) {
  var dv = new DataView(data.buffer, data.byteOffset, data.byteLength);
  var min = Math.max(0, data.length - 22 - 65535);
  for (var i = data.length - 22; i >= min; i--) {
    if (dv.getUint32(i, true) === 0x06054b50) return i;
  }
  return -1;
}
function findDiskNo(data) {
  var p = findEocd(data);
  if (p < 0) return -1;
  var dv = new DataView(data.buffer, data.byteOffset, data.byteLength);
  var d = dv.getUint16(p + 4, true);
  if (d === 0xFFFF) {
    var loc = p - 20;
    if (loc >= 0 && dv.getUint32(loc, true) === 0x07064b50) d = dv.getUint32(loc + 16, true) - 1;
  }
  return d;
}
function parseZip(parts) {
  var starts = [], total = 0, i;
  for (i = 0; i < parts.length; i++) { starts.push(total); total += parts[i].length; }
  var data;
  if (parts.length === 1) data = parts[0];
  else { data = new Uint8Array(total); for (i = 0; i < parts.length; i++) data.set(parts[i], starts[i]); }
  var dv = new DataView(data.buffer, data.byteOffset, data.byteLength);
  var lastStart = starts[starts.length - 1];
  var eocd = -1, min = Math.max(lastStart, data.length - 22 - 65535);
  for (i = data.length - 22; i >= min; i--) { if (dv.getUint32(i, true) === 0x06054b50) { eocd = i; break; } }
  if (eocd < 0) throw new Error('NOT_ZIP');
  var count = dv.getUint16(eocd + 10, true), cdSize = dv.getUint32(eocd + 12, true), cdOff = dv.getUint32(eocd + 16, true), cdDisk = dv.getUint16(eocd + 6, true);
  if (count === 0xFFFF || cdOff === 0xFFFFFFFF || cdSize === 0xFFFFFFFF) {
    var loc = eocd - 20;
    if (loc >= 0 && dv.getUint32(loc, true) === 0x07064b50) {
      var zd = dv.getUint32(loc + 4, true), zo = Number(dv.getBigUint64(loc + 8, true));
      var zp = (starts[zd] || 0) + zo;
      if (dv.getUint32(zp, true) === 0x06064b50) {
        cdDisk = dv.getUint32(zp + 20, true);
        count = Number(dv.getBigUint64(zp + 32, true));
        cdSize = Number(dv.getBigUint64(zp + 40, true));
        cdOff = Number(dv.getBigUint64(zp + 48, true));
      }
    }
  }
  var pos = (starts[cdDisk] || 0) + cdOff, entries = [];
  for (var n = 0; n < count; n++) {
    if (pos + 46 > data.length || dv.getUint32(pos, true) !== 0x02014b50) break;
    var flags = dv.getUint16(pos + 8, true), method = dv.getUint16(pos + 10, true);
    var time = dv.getUint16(pos + 12, true), date = dv.getUint16(pos + 14, true);
    var crc = dv.getUint32(pos + 16, true), csize = dv.getUint32(pos + 20, true), size = dv.getUint32(pos + 24, true);
    var nl = dv.getUint16(pos + 28, true), el = dv.getUint16(pos + 30, true), cl = dv.getUint16(pos + 32, true);
    var disk = dv.getUint16(pos + 34, true), lo = dv.getUint32(pos + 42, true);
    var name = decodeName(data.subarray(pos + 46, pos + 46 + nl), (flags & 0x800) !== 0);
    var ep = pos + 46 + nl, ee = ep + el, aes = null;
    while (ep + 4 <= ee) {
      var id = dv.getUint16(ep, true), len = dv.getUint16(ep + 2, true), x = ep + 4;
      if (id === 0x0001) {
        if (size === 0xFFFFFFFF) { size = Number(dv.getBigUint64(x, true)); x += 8; }
        if (csize === 0xFFFFFFFF) { csize = Number(dv.getBigUint64(x, true)); x += 8; }
        if (lo === 0xFFFFFFFF) { lo = Number(dv.getBigUint64(x, true)); x += 8; }
        if (disk === 0xFFFF) { disk = dv.getUint32(x, true); }
      } else if (id === 0x9901 && len >= 7) {
        aes = { version: dv.getUint16(x, true), strength: data[x + 4], method: dv.getUint16(x + 5, true) };
      }
      ep += 4 + len;
    }
    var norm = name.replace(/\\/g, '/');
    entries.push({
      name: norm, isDir: /\/$/.test(norm), size: size, csize: csize, method: method, crc: crc,
      flags: flags, time: time, date: date, disk: disk, localOff: lo,
      enc: (flags & 1) !== 0, aes: aes
    });
    pos += 46 + nl + el + cl;
  }
  return { data: data, dv: dv, starts: starts, entries: entries };
}
async function inflateRaw(u8) {
  if (typeof DecompressionStream === 'undefined') throw new Error('NO_DECOMP');
  var ds = new DecompressionStream('deflate-raw');
  var w = ds.writable.getWriter();
  w.write(u8).catch(function () {});
  w.close().catch(function () {});
  return new Uint8Array(await new Response(ds.readable).arrayBuffer());
}
async function aesDecrypt(raw, strength, pw) {
  var kl = [0, 16, 24, 32][strength];
  if (!kl) throw new Error('UNSUPPORTED:AES');
  if (!(typeof crypto !== 'undefined' && crypto.subtle)) throw new Error('NO_CRYPTO');
  var sl = kl / 2;
  var salt = raw.subarray(0, sl), pwv = raw.subarray(sl, sl + 2);
  var auth = raw.subarray(raw.length - 10), cipher = raw.subarray(sl + 2, raw.length - 10);
  var base = await crypto.subtle.importKey('raw', pw, 'PBKDF2', false, ['deriveBits']);
  var bits = await crypto.subtle.deriveBits({ name: 'PBKDF2', salt: salt, iterations: 1000, hash: 'SHA-1' }, base, (2 * kl + 2) * 8);
  var dk = new Uint8Array(bits);
  var encKey = dk.subarray(0, kl), authKey = dk.subarray(kl, 2 * kl), v = dk.subarray(2 * kl);
  if (v[0] !== pwv[0] || v[1] !== pwv[1]) throw new Error('BAD_PASSWORD');
  var hk = await crypto.subtle.importKey('raw', authKey, { name: 'HMAC', hash: 'SHA-1' }, false, ['sign']);
  var mac = new Uint8Array(await crypto.subtle.sign('HMAC', hk, cipher));
  for (var i = 0; i < 10; i++) { if (mac[i] !== auth[i]) throw new Error('CRC'); }
  return AES.ctr(encKey, cipher);
}
async function extractEntry(arc, e, pw) {
  var lp = (arc.starts[e.disk] || 0) + e.localOff;
  if (arc.dv.getUint32(lp, true) !== 0x04034b50) throw new Error('CRC');
  var nl = arc.dv.getUint16(lp + 26, true), el = arc.dv.getUint16(lp + 28, true);
  var s = lp + 30 + nl + el;
  var raw = arc.data.subarray(s, s + e.csize), method = e.method;
  if (e.enc) {
    if (!pw || !pw.length) throw new Error('NEED_PASSWORD');
    if (e.aes) { raw = await aesDecrypt(raw, e.aes.strength, pw); method = e.aes.method; }
    else {
      raw = zipCryptoDecrypt(raw, pw, (e.time >>> 8) & 255, (e.crc >>> 24) & 255);
      if (!raw) throw new Error('BAD_PASSWORD');
    }
  }
  var out;
  if (method === 0) out = raw;
  else if (method === 8) out = await inflateRaw(raw);
  else throw new Error('UNSUPPORTED:' + method);
  if ((!e.aes || e.aes.version === 1) && crc32(out) !== e.crc) throw new Error('CRC');
  return out;
}
/*END CORE*/
var $ = function (id) { return document.getElementById(id); };
var loaded = [], arc = null, rows = [], busy = false;
var el = {
  drop: $('uz-drop'), input: $('uz-input'), msg: $('uz-msg'), parts: $('uz-parts'),
  pw: $('uz-pw'), pwInput: $('uz-pw-input'), result: $('uz-result'), sum: $('uz-sum'),
  list: $('uz-list'), busy: $('uz-busy'), bAll: $('uz-all'), bNone: $('uz-none'),
  bDl: $('uz-dl'), bDir: $('uz-dir'), bClear: $('uz-clear')
};
var ICONS = { img: '🖼️', doc: '📄', sheet: '📊', slide: '📽️', code: '💻', zip: '🗜️', audio: '🎵', video: '🎬', file: '📃' };
var EXT = {
  jpg: 'img', jpeg: 'img', png: 'img', gif: 'img', webp: 'img', svg: 'img', bmp: 'img', heic: 'img',
  pdf: 'doc', doc: 'doc', docx: 'doc', txt: 'doc', md: 'doc', rtf: 'doc', odt: 'doc',
  xls: 'sheet', xlsx: 'sheet', csv: 'sheet', ods: 'sheet', ppt: 'slide', pptx: 'slide',
  js: 'code', ts: 'code', json: 'code', html: 'code', css: 'code', php: 'code', py: 'code', xml: 'code', sql: 'code',
  zip: 'zip', rar: 'zip', '7z': 'zip', gz: 'zip', tar: 'zip',
  mp3: 'audio', wav: 'audio', m4a: 'audio', flac: 'audio', mp4: 'video', mov: 'video', mkv: 'video', avi: 'video', webm: 'video'
};
function iconFor(r) {
  if (r.isDir) return '📁';
  if (r.enc) return '🔒';
  var m = /\.([^.\/]+)$/.exec(r.name);
  return ICONS[(m && EXT[m[1].toLowerCase()]) || 'file'];
}
function fmtSize(n) {
  if (n < 1024) return n + ' B';
  var u = ['KB', 'MB', 'GB', 'TB'], i = -1;
  do { n /= 1024; i++; } while (n >= 1024 && i < u.length - 1);
  return (n >= 100 ? n.toFixed(0) : n.toFixed(1)) + ' ' + u[i];
}
function isZip(n) { return /\.zip$/i.test(n); }
function partNo(n) { var m = /\.z(\d+)$/i.exec(n); return m ? parseInt(m[1], 10) : 0; }
function baseName(p) { return p.replace(/\\/g, '/').split('/').filter(Boolean).pop() || 'file'; }
function safeSegs(p) { return p.replace(/\\/g, '/').split('/').filter(function (s) { return s && s !== '.' && s !== '..'; }); }
function sleep(ms) { return new Promise(function (r) { setTimeout(r, ms); }); }
function pwBytes() { return new TextEncoder().encode(el.pwInput.value || ''); }
function setMsg(text, type) {
  el.msg.textContent = text || '';
  el.msg.className = 'uz-msg' + (type ? ' uz-' + type : '');
  el.msg.hidden = !text;
}
function setBusy(on, text) {
  busy = on;
  el.busy.hidden = !on;
  el.busy.textContent = on ? (text || 'กำลังประมวลผล… กรุณาเปิดแท็บนี้ค้างไว้') : '';
  [el.bAll, el.bNone, el.bDl, el.bDir, el.bClear].forEach(function (b) { b.disabled = on; });
  if (!on && !window.showDirectoryPicker) el.bDir.disabled = true;
}
function errText(e) {
  var m = String(e && e.message || e);
  if (m === 'NEED_PASSWORD') return 'ไฟล์นี้มีรหัสผ่าน กรุณากรอกรหัสผ่านก่อน';
  if (m === 'BAD_PASSWORD') return 'รหัสผ่านไม่ถูกต้อง กรุณาลองอีกครั้ง';
  if (m === 'CRC') return 'ข้อมูลไม่ตรงกับที่ ZIP ระบุไว้ ไฟล์อาจเสียหาย';
  if (m === 'NO_DECOMP') return 'เบราว์เซอร์นี้ยังไม่รองรับการคลายการบีบอัด กรุณาอัปเดตเบราว์เซอร์';
  if (m === 'NO_CRYPTO') return 'การถอดรหัส AES ต้องใช้งานผ่านเว็บแบบ HTTPS';
  if (m.indexOf('UNSUPPORTED') === 0) return 'ยังไม่รองรับวิธีบีบอัดแบบนี้ (' + m.split(':')[1] + ')';
  if (m === 'NOT_ZIP') return 'ไม่ใช่ไฟล์ ZIP ที่ถูกต้อง หรือไฟล์เสียหาย';
  return 'แตกไฟล์ไม่สำเร็จ: ' + m;
}
function renderParts(main, need, list) {
  el.parts.textContent = '';
  var t = document.createElement('div');
  t.className = 'uz-parts-t';
  t.textContent = 'ตรวจพบ ZIP แบบแยกส่วน — ต้องมี ' + (need + 1) + ' ไฟล์';
  el.parts.appendChild(t);
  var base = main.name.replace(/\.zip$/i, '');
  for (var n = 1; n <= need; n++) {
    var has = list.some(function (f) { return partNo(f.name) === n; });
    var c = document.createElement('span');
    c.className = 'uz-chip' + (has ? ' uz-ok' : '');
    c.textContent = base + '.z' + (n < 10 ? '0' + n : n) + ' ' + (has ? '✓' : '?');
    el.parts.appendChild(c);
  }
  var cm = document.createElement('span');
  cm.className = 'uz-chip uz-ok';
  cm.textContent = main.name + ' ✓';
  el.parts.appendChild(cm);
  el.parts.hidden = false;
}
function resetView() {
  arc = null; rows = [];
  el.result.hidden = true; el.pw.hidden = true; el.parts.hidden = true;
  el.list.textContent = '';
}
async function addFiles(fileList) {
  var arr = Array.prototype.slice.call(fileList || []);
  if (!arr.length || busy) return;
  setBusy(true, 'กำลังอ่านไฟล์…');
  setMsg('');
  try {
    var added = [];
    for (var i = 0; i < arr.length; i++) {
      added.push({ name: arr[i].name, bytes: new Uint8Array(await arr[i].arrayBuffer()) });
    }
    var zips = added.filter(function (f) { return isZip(f.name); });
    var addedParts = added.filter(function (f) { return partNo(f.name) > 0; });
    if (!zips.length && !addedParts.length) { setMsg('ไม่พบไฟล์ .zip ในรายการที่เลือก', 'err'); return; }
    var main = null;
    if (zips.length) {
      main = zips[zips.length - 1];
      if (findDiskNo(main.bytes) < 0) { setMsg('"' + main.name + '" ไม่ใช่ไฟล์ ZIP ที่ถูกต้อง หรือไฟล์เสียหาย', 'err'); return; }
    } else {
      main = loaded.filter(function (f) { return isZip(f.name); })[0] || null;
    }
    var need = main ? findDiskNo(main.bytes) : 0;
    var map = {};
    var prev = (main && need === 0) ? [] : loaded.filter(function (f) { return partNo(f.name) > 0; });
    prev.concat(addedParts).forEach(function (f) { map[f.name] = f; });
    var partList = Object.keys(map).map(function (k) { return map[k]; }).sort(function (a, b) { return partNo(a.name) - partNo(b.name); });
    resetView();
    if (main && need === 0) loaded = [main];
    else loaded = partList.concat(main ? [main] : []);
    if (!main) { setMsg('เพิ่มไฟล์ .zip (ส่วนสุดท้าย) เพื่อเริ่มแตกไฟล์', 'info'); return; }
    if (need > 0) {
      renderParts(main, need, partList);
      for (var n = 1; n <= need; n++) {
        if (!partList.some(function (f) { return partNo(f.name) === n; })) { return; }
      }
    }
    var chunks = [];
    for (var k = 1; k <= need; k++) {
      chunks.push(partList.filter(function (f) { return partNo(f.name) === k; })[0].bytes);
    }
    chunks.push(main.bytes);
    arc = parseZip(chunks);
    rows = arc.entries.map(function (e) { e.sel = !e.isDir; return e; });
    render();
  } catch (e) {
    setMsg(errText(e), 'err');
  } finally {
    setBusy(false);
  }
}
function render() {
  var files = rows.filter(function (r) { return !r.isDir; });
  var dirs = rows.length - files.length;
  var total = files.reduce(function (s, r) { return s + r.size; }, 0);
  if (!rows.length) { setMsg('ไม่พบไฟล์ภายใน ZIP นี้', 'info'); el.result.hidden = true; return; }
  el.list.textContent = '';
  rows.forEach(function (r) {
    var li = document.createElement('li');
    li.className = 'uz-row';
    var box = document.createElement('input');
    box.type = 'checkbox';
    box.checked = !!r.sel;
    box.disabled = r.isDir;
    box.setAttribute('aria-label', 'เลือก ' + r.name);
    box.addEventListener('change', function () { r.sel = box.checked; updateSum(); });
    li.appendChild(box);
    var ic = document.createElement('span');
    ic.className = 'uz-ico';
    ic.textContent = iconFor(r);
    li.appendChild(ic);
    var nm = document.createElement('span');
    nm.className = 'uz-name';
    var clean = r.name.replace(/\/$/, '');
    var cut = clean.lastIndexOf('/');
    if (cut >= 0) {
      var d = document.createElement('span');
      d.className = 'uz-dir';
      d.textContent = clean.slice(0, cut + 1);
      nm.appendChild(d);
    }
    nm.appendChild(document.createTextNode(clean.slice(cut + 1)));
    nm.title = r.name;
    li.appendChild(nm);
    var sz = document.createElement('span');
    sz.className = 'uz-size';
    sz.textContent = r.isDir ? '' : fmtSize(r.size);
    li.appendChild(sz);
    var bt = document.createElement('button');
    bt.type = 'button';
    bt.className = 'uz-one';
    bt.textContent = '⬇';
    bt.title = 'ดาวน์โหลดไฟล์นี้';
    bt.setAttribute('aria-label', 'ดาวน์โหลด ' + r.name);
    bt.style.visibility = r.isDir ? 'hidden' : 'visible';
    bt.addEventListener('click', function () { downloadOne(r); });
    li.appendChild(bt);
    el.list.appendChild(li);
  });
  el.sum.dataset.base = files.length + ' ไฟล์' + (dirs ? ', ' + dirs + ' โฟลเดอร์' : '') + ' · รวม ' + fmtSize(total);
  el.pw.hidden = !rows.some(function (r) { return r.enc; });
  el.result.hidden = false;
  updateSum();
}
function updateSum() {
  var n = rows.filter(function (r) { return r.sel && !r.isDir; }).length;
  el.sum.textContent = el.sum.dataset.base + ' · เลือก ' + n;
}
function saveBlob(name, bytes) {
  var url = URL.createObjectURL(new Blob([bytes]));
  var a = document.createElement('a');
  a.href = url; a.download = name;
  document.body.appendChild(a); a.click(); a.remove();
  setTimeout(function () { URL.revokeObjectURL(url); }, 5000);
}
async function downloadOne(r) {
  if (busy) return;
  setBusy(true, 'กำลังแตกไฟล์…');
  setMsg('');
  try {
    saveBlob(baseName(r.name), await extractEntry(arc, r, pwBytes()));
  } catch (e) {
    setMsg(errText(e), 'err');
    if (/PASSWORD/.test(String(e.message))) el.pwInput.focus();
  } finally { setBusy(false); }
}
function selected() { return rows.filter(function (r) { return r.sel && !r.isDir; }); }
async function downloadSelected() {
  var sel = selected();
  if (!sel.length) { setMsg('กรุณาเลือกไฟล์ที่ต้องการก่อน', 'err'); return; }
  setMsg('');
  try {
    for (var i = 0; i < sel.length; i++) {
      setBusy(true, 'กำลังแตกไฟล์ ' + (i + 1) + '/' + sel.length + ' — กรุณาเปิดแท็บนี้ค้างไว้');
      saveBlob(baseName(sel[i].name), await extractEntry(arc, sel[i], pwBytes()));
      await sleep(300);
    }
    setMsg('ดาวน์โหลดเรียบร้อย ' + sel.length + ' ไฟล์', 'ok');
  } catch (e) {
    setMsg(errText(e), 'err');
    if (/PASSWORD/.test(String(e.message))) el.pwInput.focus();
  } finally { setBusy(false); }
}
async function fileExists(root, segs) {
  try {
    var d = root;
    for (var i = 0; i < segs.length - 1; i++) d = await d.getDirectoryHandle(segs[i]);
    await d.getFileHandle(segs[segs.length - 1]);
    return true;
  } catch (e) { return false; }
}
async function exportToFolder() {
  var sel = selected();
  if (!sel.length) { setMsg('กรุณาเลือกไฟล์ที่ต้องการก่อน', 'err'); return; }
  if (!window.showDirectoryPicker) { setMsg('เบราว์เซอร์นี้ไม่รองรับการส่งออกไปโฟลเดอร์ (ใช้ Chrome หรือ Edge)', 'err'); return; }
  var root;
  try { root = await window.showDirectoryPicker({ mode: 'readwrite' }); }
  catch (e) { return; }
  setMsg('');
  var overwrite = true, done = 0, failed = 0, skipped = 0;
  try {
    setBusy(true, 'กำลังตรวจสอบไฟล์ซ้ำ…');
    var dup = 0;
    for (var i = 0; i < sel.length; i++) { if (await fileExists(root, safeSegs(sel[i].name))) dup++; }
    if (dup > 0) overwrite = window.confirm('พบไฟล์ชื่อซ้ำในโฟลเดอร์ปลายทาง ' + dup + ' ไฟล์\nต้องการเขียนทับหรือไม่?\n\nตกลง = เขียนทับ, ยกเลิก = ข้ามไฟล์ที่ซ้ำ');
    for (var j = 0; j < sel.length; j++) {
      setBusy(true, 'กำลังแตกไฟล์ ' + (j + 1) + '/' + sel.length + ' — กรุณาเปิดแท็บนี้ค้างไว้');
      var segs = safeSegs(sel[j].name);
      if (!segs.length) { failed++; continue; }
      if (!overwrite && await fileExists(root, segs)) { skipped++; continue; }
      var bytes;
      try { bytes = await extractEntry(arc, sel[j], pwBytes()); }
      catch (e1) { if (/PASSWORD/.test(String(e1.message))) throw e1; failed++; continue; }
      try {
        var d = root;
        for (var s = 0; s < segs.length - 1; s++) d = await d.getDirectoryHandle(segs[s], { create: true });
        var fh = await d.getFileHandle(segs[segs.length - 1], { create: true });
        var w = await fh.createWritable();
        await w.write(bytes);
        await w.close();
        done++;
      } catch (e2) { failed++; }
    }
    var text = 'ส่งออกสำเร็จ ' + done + ' ไฟล์';
    if (skipped) text += ' · ข้าม ' + skipped;
    if (failed) text += ' · ไม่สำเร็จ ' + failed;
    setMsg(text, failed ? 'err' : 'ok');
  } catch (e) {
    setMsg(errText(e), 'err');
    if (/PASSWORD/.test(String(e.message))) el.pwInput.focus();
  } finally { setBusy(false); }
}
function clearAll() {
  loaded = []; resetView(); setMsg('');
  el.pwInput.value = '';
}
el.drop.addEventListener('click', function () { if (!busy) el.input.click(); });
el.drop.addEventListener('keydown', function (e) {
  if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); if (!busy) el.input.click(); }
});
el.input.addEventListener('change', function () { var f = el.input.files; addFiles(f).then(function () { el.input.value = ''; }); });
['dragenter', 'dragover'].forEach(function (t) {
  el.drop.addEventListener(t, function (e) { e.preventDefault(); el.drop.classList.add('uz-over'); });
});
['dragleave', 'drop'].forEach(function (t) {
  el.drop.addEventListener(t, function (e) { e.preventDefault(); el.drop.classList.remove('uz-over'); });
});
el.drop.addEventListener('drop', function (e) { addFiles(e.dataTransfer && e.dataTransfer.files); });
document.addEventListener('paste', function (e) {
  var f = e.clipboardData && e.clipboardData.files;
  if (f && f.length) { e.preventDefault(); addFiles(f); }
});
el.bAll.addEventListener('click', function () { rows.forEach(function (r) { r.sel = !r.isDir; }); render(); });
el.bNone.addEventListener('click', function () { rows.forEach(function (r) { r.sel = false; }); render(); });
el.bDl.addEventListener('click', downloadSelected);
el.bDir.addEventListener('click', exportToFolder);
el.bClear.addEventListener('click', clearAll);
if (!window.showDirectoryPicker) { el.bDir.disabled = true; el.bDir.title = 'รองรับเฉพาะ Chrome และ Edge บนคอมพิวเตอร์'; }
})();
</script>

เครื่องมือนี้ช่วยเปิดดูและแตกไฟล์ ZIP ได้ทันทีในเบราว์เซอร์ ไม่ต้องติดตั้งโปรแกรมเพิ่ม ไฟล์ที่เลือกจะถูกอ่านอยู่ในเครื่องของคุณเท่านั้น จึงเหมาะกับเอกสารที่เป็นความลับ รองรับทั้ง ZIP ธรรมดา ZIP ที่ตั้งรหัสผ่าน และไฟล์บีบอัดที่ถูกแบ่งเป็นหลายส่วน

## วิธีใช้งาน

1. **เพิ่มไฟล์ ZIP** ลากไฟล์มาวางในกรอบด้านบน กดที่กรอบเพื่อเลือกไฟล์จากเครื่อง หรือกด `Ctrl`+`V` เพื่อวางไฟล์ที่คัดลอกไว้
2. **ดูรายการไฟล์** ระบบจะแสดงชื่อไฟล์ เส้นทางโฟลเดอร์ และขนาดของแต่ละรายการ ไฟล์ที่มีไอคอน 🔒 คือไฟล์ที่ป้องกันด้วยรหัสผ่าน
3. **กรอกรหัสผ่าน (ถ้ามี)** ช่องรหัสผ่านจะปรากฏอัตโนมัติเมื่อ ZIP ถูกเข้ารหัส กรอกให้ถูกต้องก่อนดาวน์โหลด
4. **เลือกไฟล์ที่ต้องการ** ติ๊กถูกหน้าชื่อไฟล์ หรือใช้ปุ่ม เลือกทั้งหมด / ไม่เลือก เพื่อเลือกพร้อมกันหลายรายการ
5. **ดาวน์โหลด** กดปุ่ม ⬇ ท้ายแถวเพื่อรับไฟล์เดียว กด ดาวน์โหลดไฟล์ที่เลือก เพื่อรับหลายไฟล์ต่อเนื่อง หรือกด ส่งออกไปโฟลเดอร์ เพื่อบันทึกทั้งหมดพร้อมโครงสร้างโฟลเดอร์เดิม (ใช้ได้บน Chrome และ Edge บนคอมพิวเตอร์)
6. **ล้างข้อมูล** กดปุ่ม ล้าง เมื่อใช้งานเสร็จ เพื่อเริ่มต้นกับไฟล์ ZIP ใหม่

ระหว่างแตกไฟล์ ควรเปิดแท็บนี้ค้างไว้ การสลับแอปหรือล็อกหน้าจอ (โดยเฉพาะบนมือถือ) อาจทำให้การประมวลผลหยุดชั่วคราว

## ไฟล์ ZIP แบบแยกส่วน

เมื่อไฟล์ใหญ่เกินกว่าจะส่งทีเดียว ผู้ส่งอาจแบ่งเป็นหลายไฟล์ เช่น `ชื่อ.z01`, `ชื่อ.z02` และ `ชื่อ.zip` ให้เลือกหรือลากทุกส่วนมาพร้อมกัน หรือเพิ่มทีละส่วนก็ได้ เครื่องมือจะแสดงสถานะของแต่ละส่วนด้วยเครื่องหมาย ✓ หรือ ? และเริ่มแสดงรายการไฟล์เมื่อครบทุกส่วน

## ZIP ที่ป้องกันด้วยรหัสผ่าน

ชื่อไฟล์ภายใน ZIP จะแสดงให้เห็นก่อนแม้ยังไม่ใส่รหัสผ่าน แต่เนื้อหาจะถูกถอดรหัสเมื่อคุณดาวน์โหลดเท่านั้น รองรับทั้งการเข้ารหัสแบบ ZipCrypto และ AES (128, 192 และ 256 บิต) ที่สร้างจากโปรแกรมอย่าง 7-Zip หรือ Keka หากรหัสผ่านไม่ถูกต้อง ระบบจะแจ้งเตือนทันที

## คำศัพท์ที่ควรรู้

- **ZIP** คือรูปแบบไฟล์บีบอัดที่รวมหลายไฟล์และโฟลเดอร์ไว้ในไฟล์เดียว ช่วยลดขนาดและส่งต่อได้สะดวก
- **แตกไฟล์ (Unzip / Extract)** คือการนำไฟล์ต้นฉบับออกมาจากไฟล์บีบอัดให้กลับมาใช้งานได้ตามปกติ
- **ไฟล์แบบแยกส่วน (Split ZIP)** คือไฟล์บีบอัดที่ถูกตัดเป็นหลายชิ้น เช่น .z01, .z02 และ .zip ต้องมีครบทุกชิ้นจึงจะแตกไฟล์ได้
- **รหัสผ่าน (Password)** คือรหัสที่ผู้สร้าง ZIP ตั้งไว้เพื่อป้องกันไม่ให้คนอื่นเปิดดูเนื้อหา
- **ZipCrypto** คือการเข้ารหัสแบบดั้งเดิมของ ZIP เข้ากันได้กว้างแต่มีความปลอดภัยต่ำกว่า AES
- **AES (128/192/256 บิต)** คือมาตรฐานการเข้ารหัสที่ปลอดภัยกว่า ตัวเลขยิ่งสูงยิ่งแข็งแรง AES-256 เป็นระดับที่นิยมที่สุด
- **ส่งออกไปโฟลเดอร์** คือการเลือกโฟลเดอร์ในเครื่องแล้วให้เบราว์เซอร์เขียนไฟล์ที่แตกแล้วลงไปโดยตรง ต้องอนุญาตสิทธิ์เข้าถึงโฟลเดอร์ก่อน
- **โครงสร้างโฟลเดอร์ (Folder structure)** คือการจัดลำดับโฟลเดอร์ย่อยภายใน ZIP ซึ่งจะถูกคงไว้เหมือนเดิมเมื่อส่งออก
- **ประมวลผลในเครื่อง (Client-side)** คือการทำงานทั้งหมดในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์
- **คลิปบอร์ด (Clipboard)** คือพื้นที่พักข้อมูลที่ใช้คัดลอกและวาง ที่นี่ใช้วางไฟล์ ZIP ด้วย Ctrl+V ได้
- **CRC** คือค่าตรวจสอบความถูกต้องของข้อมูล เครื่องมือจะเทียบค่านี้หลังแตกไฟล์ หากไม่ตรงแสดงว่าไฟล์อาจเสียหาย
- **Deflate** คืออัลกอริทึมบีบอัดที่ ZIP ส่วนใหญ่ใช้ เบราว์เซอร์รุ่นใหม่คลายการบีบอัดแบบนี้ได้ในตัว