---
title: แปลง FLAC เป็น MP3 ออนไลน์ ฟรี เก็บแท็กและปก ไม่ต้องอัปโหลด
h1: แปลง FLAC เป็น MP3
description: 'แปลง FLAC เป็น MP3 ฟรีในเบราว์เซอร์ เลือกบิตเรตได้ เก็บแท็กและปกอัลบั้มอัตโนมัติ แยกอัลบั้มด้วย CUE ไฟล์ไม่ถูกอัปโหลด ใช้ได้ทั้งบนมือถือและคอมพิวเตอร์'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-22T11:59:26+07:00'
weight: 137
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- แปลง FLAC เป็น MP3
- แปลง FLAC เป็น MP3 ออนไลน์
- FLAC to MP3
- แปลงไฟล์เสียง lossless
- แยกไฟล์ FLAC ด้วย CUE
- เสียงและวิดีโอ
---

<style>
.f2m{--f2m-accent:#2563eb;--f2m-border:rgba(128,128,128,.4);margin:1.25rem 0;line-height:1.55}
.f2m *{box-sizing:border-box}
.f2m [hidden]{display:none!important}
.f2m-drop{border:2px dashed var(--f2m-border);border-radius:14px;padding:28px 16px;text-align:center;cursor:pointer;transition:border-color .15s,background .15s}
.f2m-drop:hover,.f2m-drop:focus-visible,.f2m-drop.is-over{border-color:var(--f2m-accent);background:rgba(37,99,235,.08);outline:none}
.f2m-drop p{margin:.25rem 0}
.f2m-ico{font-size:2rem}
.f2m-hint{font-size:.875rem;opacity:.75}
.f2m-opts{display:grid;grid-template-columns:repeat(auto-fit,minmax(170px,1fr));gap:12px;margin:16px 0 12px}
.f2m-opts label{display:flex;flex-direction:column;gap:4px;font-size:.875rem;font-weight:600}
.f2m select,.f2m input[type=text]{font:inherit;font-weight:400;padding:8px 10px;border:1px solid var(--f2m-border);border-radius:8px;background:transparent;color:inherit;width:100%}
.f2m-checks{display:flex;flex-wrap:wrap;gap:8px 20px;margin:0 0 8px}
.f2m-checks label{display:flex;align-items:center;gap:6px;font-size:.9rem;cursor:pointer}
.f2m-btns{display:flex;flex-wrap:wrap;gap:8px;margin:12px 0}
.f2m-btn{font:inherit;font-weight:600;font-size:.9rem;padding:9px 16px;border-radius:8px;border:1px solid var(--f2m-border);background:transparent;color:inherit;cursor:pointer;text-decoration:none;display:inline-block}
.f2m-btn:hover:not(:disabled){border-color:var(--f2m-accent)}
.f2m-btn:disabled{opacity:.45;cursor:not-allowed}
.f2m-btn.primary{background:var(--f2m-accent);border-color:var(--f2m-accent);color:#fff}
.f2m-state{font-size:.85rem;min-height:1.3em}
.f2m-err{color:#dc2626}
.f2m-list{list-style:none;margin:8px 0;padding:0;display:grid;gap:10px}
.f2m-item{border:1px solid var(--f2m-border);border-radius:12px;padding:12px;display:grid;gap:8px}
.f2m-row{display:flex;gap:12px;align-items:flex-start}
.f2m-grow{flex:1;min-width:0}
.f2m-cover{width:56px;height:56px;border-radius:8px;object-fit:cover;flex:none;background:rgba(128,128,128,.2)}
.f2m-name{font-weight:600;word-break:break-all}
.f2m-meta{font-size:.82rem;opacity:.75}
.f2m-rm{padding:4px 10px}
.f2m-bar{height:6px;border-radius:99px;background:rgba(128,128,128,.25);overflow:hidden}
.f2m-bar i{display:block;height:100%;width:0;background:var(--f2m-accent);transition:width .15s}
.f2m-det summary{cursor:pointer;font-size:.875rem;font-weight:600}
.f2m-tags{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:8px;margin:10px 0}
.f2m-tags label{display:flex;flex-direction:column;gap:2px;font-size:.8rem}
.f2m-det audio{width:100%;margin-top:4px}
.f2m-dl{display:flex;flex-wrap:wrap;gap:8px}
.f2m-dl details{width:100%;font-size:.85rem}
.f2m-dl details a{display:block;padding:2px 0;word-break:break-all}
</style>
<div class="f2m" id="f2m">
<div class="f2m-drop" id="f2m-drop" tabindex="0" role="button" aria-label="เลือกไฟล์ FLAC หรือลากไฟล์มาวาง">
<div class="f2m-ico" aria-hidden="true">🎵</div>
<p><strong>ลากไฟล์ FLAC มาวางที่นี่</strong> หรือคลิกเพื่อเลือกไฟล์</p>
<p class="f2m-hint">วางด้วย Ctrl+V ได้ · เพิ่มไฟล์ .cue พร้อมกันเพื่อแยกอัลบั้มเป็นรายเพลง</p>
</div>
<input type="file" id="f2m-file" multiple accept=".flac,.cue,audio/*" hidden>
<div class="f2m-opts">
<label>บิตเรต MP3 (CBR)
<select id="f2m-br"><option value="320" selected>320 kbps · คุณภาพสูงสุด</option><option value="256">256 kbps · สูง</option><option value="192">192 kbps · สมดุล</option><option value="128">128 kbps · ประหยัดพื้นที่</option><option value="96">96 kbps · ไฟล์เล็กมาก</option></select>
</label>
<label>Sample rate
<select id="f2m-sr"><option value="orig" selected>ตามต้นฉบับ (สูงสุด 48 kHz)</option><option value="48000">48 kHz</option><option value="44100">44.1 kHz</option><option value="32000">32 kHz</option></select>
</label>
<label>ช่องเสียง
<select id="f2m-ch"><option value="orig" selected>ตามต้นฉบับ</option><option value="stereo">สเตอริโอ</option><option value="mono">โมโน</option></select>
</label>
</div>
<div class="f2m-checks">
<label><input type="checkbox" id="f2m-tags" checked> เก็บแท็กและปกอัลบั้ม</label>
<label><input type="checkbox" id="f2m-norm"> ปรับระดับเสียงให้สม่ำเสมอ</label>
<label><input type="checkbox" id="f2m-trim"> ตัดความเงียบต้น–ท้ายเพลง</label>
</div>
<div class="f2m-btns">
<button type="button" class="f2m-btn primary" id="f2m-go" disabled>แปลงทั้งหมด</button>
<button type="button" class="f2m-btn" id="f2m-stop" disabled>หยุด</button>
<button type="button" class="f2m-btn" id="f2m-zip" disabled>ดาวน์โหลดทั้งหมด (ZIP)</button>
<button type="button" class="f2m-btn" id="f2m-dir" disabled>บันทึกลงโฟลเดอร์</button>
<button type="button" class="f2m-btn" id="f2m-clear" disabled>ล้างทั้งหมด</button>
</div>
<p id="f2m-status" class="f2m-state" role="status" aria-live="polite"></p>
<ul id="f2m-list" class="f2m-list"></ul>
<p class="f2m-hint">🔒 ประมวลผลในเบราว์เซอร์ของคุณทั้งหมด ไฟล์เสียงไม่ถูกอัปโหลดไปที่ใด · เปิดแท็บนี้ค้างไว้ขณะแปลง การสลับแอปหรือล็อกหน้าจออาจทำให้งานหยุดชั่วคราว</p>
</div>

<script>
(function () {
'use strict';
/*PURE-START*/
var LAME_RATES = [48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000];
var te = new TextEncoder();
function cat(parts) {
  var n = 0, i, q = 0;
  for (i = 0; i < parts.length; i++) n += parts[i].length;
  var o = new Uint8Array(n);
  for (i = 0; i < parts.length; i++) { o.set(parts[i], q); q += parts[i].length; }
  return o;
}
function u32be(n) { return Uint8Array.of((n >>> 24) & 255, (n >>> 16) & 255, (n >>> 8) & 255, n & 255); }
function synchsafe(n) { return Uint8Array.of((n >>> 21) & 127, (n >>> 14) & 127, (n >>> 7) & 127, n & 127); }
function utf16(s) {
  var o = new Uint8Array(2 + s.length * 2);
  o[0] = 255; o[1] = 254;
  for (var i = 0; i < s.length; i++) { var c = s.charCodeAt(i); o[2 + i * 2] = c & 255; o[3 + i * 2] = c >> 8; }
  return o;
}
function frame(id, data) { return cat([te.encode(id), u32be(data.length), Uint8Array.of(0, 0), data]); }
function textFrame(id, s) {
  s = String(s == null ? '' : s).trim();
  return s ? frame(id, cat([Uint8Array.of(1), utf16(s)])) : null;
}
function buildId3(t, cover) {
  var year = (String(t.year || '').match(/\d{4}/) || [''])[0];
  var fr = [
    textFrame('TIT2', t.title), textFrame('TPE1', t.artist), textFrame('TPE2', t.albumartist),
    textFrame('TALB', t.album), textFrame('TYER', year), textFrame('TRCK', t.track),
    textFrame('TPOS', t.disc), textFrame('TCON', t.genre)
  ];
  if (cover && cover.data && cover.data.length) {
    var mime = /^image\/(png|jpeg|jpg|gif|webp)$/i.test(cover.mime || '') ? cover.mime : 'image/jpeg';
    fr.push(frame('APIC', cat([Uint8Array.of(0), te.encode(mime), Uint8Array.of(0, 3, 0), cover.data])));
  }
  var body = cat(fr.filter(Boolean));
  if (!body.length) return new Uint8Array(0);
  return cat([te.encode('ID3'), Uint8Array.of(3, 0, 0), synchsafe(body.length), body]);
}
function parseFlac(buf) {
  var u = new Uint8Array(buf);
  var info = { isFlac: false, tags: {}, cover: null };
  if (u.length < 8 || u[0] !== 0x66 || u[1] !== 0x4C || u[2] !== 0x61 || u[3] !== 0x43) return info;
  info.isFlac = true;
  var dv = new DataView(buf), td = new TextDecoder('utf-8'), p = 4, last = false;
  var keyMap = { TITLE: 'title', ARTIST: 'artist', ALBUMARTIST: 'albumartist', 'ALBUM ARTIST': 'albumartist', ALBUM: 'album', DATE: 'year', YEAR: 'year', TRACKNUMBER: 'track', TRACK: 'track', DISCNUMBER: 'disc', GENRE: 'genre' };
  while (!last && p + 4 <= u.length) {
    var h = u[p]; last = (h & 128) !== 0;
    var type = h & 127, len = (u[p + 1] << 16) | (u[p + 2] << 8) | u[p + 3];
    p += 4;
    if (p + len > u.length) { if (type === 6) info.coverCut = true; break; }
    if (type === 0 && len >= 34) {
      info.rate = (u[p + 10] << 12) | (u[p + 11] << 4) | (u[p + 12] >> 4);
      info.channels = ((u[p + 12] >> 1) & 7) + 1;
      info.bits = (((u[p + 12] & 1) << 4) | (u[p + 13] >> 4)) + 1;
      info.total = (u[p + 13] & 15) * 4294967296 + dv.getUint32(p + 14);
    } else if (type === 4 && len >= 8) {
      var q = p, end = p + len, vl = dv.getUint32(q, true);
      q += 4 + vl;
      if (q + 4 <= end) {
        var cnt = dv.getUint32(q, true); q += 4;
        for (var i = 0; i < cnt && q + 4 <= end; i++) {
          var cl = dv.getUint32(q, true); q += 4;
          if (q + cl > end) break;
          var s = td.decode(u.subarray(q, q + cl)); q += cl;
          var eq = s.indexOf('=');
          if (eq > 0) {
            var k = keyMap[s.slice(0, eq).toUpperCase()];
            if (k && !(k in info.tags)) info.tags[k] = s.slice(eq + 1);
          }
        }
      }
    } else if (type === 6 && len >= 32) {
      var a = p, ptype = dv.getUint32(a); a += 4;
      var ml = dv.getUint32(a); a += 4;
      var mime = td.decode(u.subarray(a, a + ml)); a += ml;
      var dl = dv.getUint32(a); a += 4 + dl + 16;
      var il = dv.getUint32(a); a += 4;
      if (a + il <= p + len && il > 0 && (!info.cover || ptype === 3)) {
        info.cover = { mime: mime, data: u.slice(a, a + il) };
      }
    }
    p += len;
  }
  return info;
}
function parseCue(text) {
  var lines = String(text).replace(/^\uFEFF/, '').split(/\r?\n/);
  var res = { album: '', performer: '', tracks: [], files: 0 }, cur = null;
  function unq(s) { var m = s.match(/^"(.*)"/); return m ? m[1] : s.split(/\s+/)[0]; }
  for (var i = 0; i < lines.length; i++) {
    var line = lines[i].trim(), m;
    if (!line) continue;
    if (/^FILE\s/i.test(line)) { res.files++; continue; }
    m = line.match(/^TRACK\s+(\d+)\s+(\S+)/i);
    if (m) { cur = { n: parseInt(m[1], 10), type: m[2].toUpperCase(), title: '', performer: '', start: null }; res.tracks.push(cur); continue; }
    m = line.match(/^TITLE\s+(.*)$/i);
    if (m) { if (cur) cur.title = unq(m[1].trim()); else res.album = unq(m[1].trim()); continue; }
    m = line.match(/^PERFORMER\s+(.*)$/i);
    if (m) { if (cur) cur.performer = unq(m[1].trim()); else res.performer = unq(m[1].trim()); continue; }
    m = line.match(/^INDEX\s+(\d+)\s+(\d+):(\d+):(\d+)/i);
    if (m && cur && parseInt(m[1], 10) === 1) cur.start = (+m[2]) * 60 + (+m[3]) + (+m[4]) / 75;
  }
  res.tracks = res.tracks.filter(function (t) { return t.start !== null && t.type === 'AUDIO'; });
  res.tracks.sort(function (a, b) { return a.start - b.start; });
  return res;
}
function safeName(s) {
  s = String(s || '').replace(/[\\/:*?"<>|\u0000-\u001f]/g, '_').replace(/\s+/g, ' ').trim().replace(/[. ]+$/, '');
  return s.slice(0, 120) || 'audio';
}
function baseName(n) { return String(n).replace(/\.[^.]+$/, ''); }
function pickRate(src, opt) {
  if (opt !== 'orig') return +opt;
  if (LAME_RATES.indexOf(src) > -1) return src;
  if (src > 48000) return src % 44100 === 0 ? 44100 : 48000;
  return 44100;
}
function trimRange(chans, rate) {
  var n = chans[0].length, thr = 0.003, s = 0, e, c;
  scan1: for (; s < n; s++) { for (c = 0; c < chans.length; c++) { if (Math.abs(chans[c][s]) > thr) break scan1; } }
  if (s >= n) return { start: 0, end: n };
  scan2: for (e = n - 1; e > s; e--) { for (c = 0; c < chans.length; c++) { if (Math.abs(chans[c][e]) > thr) break scan2; } }
  var pad = Math.round(rate * 0.1);
  return { start: Math.max(0, s - pad), end: Math.min(n, e + 1 + pad) };
}
function calcGain(chans, start, end) {
  var peak = 0, c, i, v;
  for (c = 0; c < chans.length; c++) {
    var d = chans[c];
    for (i = start; i < end; i++) { v = d[i]; if (v < 0) v = -v; if (v > peak) peak = v; }
  }
  return peak > 0 ? Math.min(0.891 / peak, 8) : 1;
}
function fmtSize(b) {
  if (b >= 1048576) return (b / 1048576).toFixed(1) + ' MB';
  return Math.max(1, Math.round(b / 1024)) + ' KB';
}
function fmtDur(s) {
  s = Math.round(s);
  var m = Math.floor(s / 60), r = s % 60;
  return m + ':' + (r < 10 ? '0' : '') + r;
}
var CRC_T = (function () {
  var t = new Uint32Array(256);
  for (var n = 0; n < 256; n++) { var c = n; for (var k = 0; k < 8; k++) c = c & 1 ? 0xEDB88320 ^ (c >>> 1) : c >>> 1; t[n] = c >>> 0; }
  return t;
})();
function crc32(u8) {
  var c = 0xFFFFFFFF;
  for (var i = 0; i < u8.length; i++) c = CRC_T[(c ^ u8[i]) & 255] ^ (c >>> 8);
  return (c ^ 0xFFFFFFFF) >>> 0;
}
function uniqueNames(list) {
  var seen = {};
  return list.map(function (f) {
    var n = f.name;
    if (seen[n]) { seen[n]++; n = n.replace(/(\.[^.]+)?$/, ' (' + seen[f.name] + ')$1'); } else seen[n] = 1;
    return { name: n, blob: f.blob };
  });
}
async function makeZip(files) {
  var enc = new TextEncoder(), parts = [], central = [], offset = 0, d = new Date();
  var dosTime = (d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1);
  var dosDate = ((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate();
  var total = 0;
  files.forEach(function (f) { total += f.blob.size; });
  if (total > 3.8e9) throw new Error('ไฟล์รวมใหญ่เกินกว่าที่ ZIP รองรับ ลองดาวน์โหลดทีละไฟล์');
  for (var i = 0; i < files.length; i++) {
    var data = new Uint8Array(await files[i].blob.arrayBuffer());
    var name = enc.encode(files[i].name), crc = crc32(data), size = data.length;
    var lh = new DataView(new ArrayBuffer(30));
    lh.setUint32(0, 0x04034b50, true); lh.setUint16(4, 20, true); lh.setUint16(6, 0x0800, true); lh.setUint16(8, 0, true);
    lh.setUint16(10, dosTime, true); lh.setUint16(12, dosDate, true); lh.setUint32(14, crc, true);
    lh.setUint32(18, size, true); lh.setUint32(22, size, true); lh.setUint16(26, name.length, true); lh.setUint16(28, 0, true);
    parts.push(lh.buffer, name, data);
    var ch = new DataView(new ArrayBuffer(46));
    ch.setUint32(0, 0x02014b50, true); ch.setUint16(4, 20, true); ch.setUint16(6, 20, true); ch.setUint16(8, 0x0800, true); ch.setUint16(10, 0, true);
    ch.setUint16(12, dosTime, true); ch.setUint16(14, dosDate, true); ch.setUint32(16, crc, true);
    ch.setUint32(20, size, true); ch.setUint32(24, size, true); ch.setUint16(28, name.length, true);
    ch.setUint16(30, 0, true); ch.setUint16(32, 0, true); ch.setUint16(34, 0, true); ch.setUint16(36, 0, true);
    ch.setUint32(38, 0, true); ch.setUint32(42, offset, true);
    central.push(ch.buffer, name);
    offset += 30 + name.length + size;
  }
  var csize = 0;
  central.forEach(function (c) { csize += c.byteLength; });
  var end = new DataView(new ArrayBuffer(22));
  end.setUint32(0, 0x06054b50, true); end.setUint16(4, 0, true); end.setUint16(6, 0, true);
  end.setUint16(8, files.length, true); end.setUint16(10, files.length, true);
  end.setUint32(12, csize, true); end.setUint32(16, offset, true); end.setUint16(20, 0, true);
  return new Blob(parts.concat(central, [end.buffer]), { type: 'application/zip' });
}
/*PURE-END*/

var LAME_URLS = [
  'https://cdnjs.cloudflare.com/ajax/libs/lamejs/1.2.0/lame.min.js',
  'https://cdn.jsdelivr.net/npm/lamejs@1.2.0/lame.min.js',
  'https://unpkg.com/lamejs@1.2.0/lame.min.js',
  'https://cdn.jsdelivr.net/npm/lamejs@1.2.1/lame.min.js'
];
var lamePromise = null;
function testLame(L) {
  try { var e = new L.Mp3Encoder(1, 44100, 128); e.encodeBuffer(new Int16Array(1152)); e.flush(); return true; } catch (err) { return false; }
}
function injectScript(url) {
  return new Promise(function (res, rej) {
    var s = document.createElement('script');
    s.src = url; s.async = true; s.crossOrigin = 'anonymous';
    s.onload = function () { res(); };
    s.onerror = function () { s.remove(); rej(new Error('script load failed')); };
    document.head.appendChild(s);
  });
}
async function looksLikeJs(url) {
  var r = await fetch(url, { credentials: 'omit' });
  if (!r.ok) return false;
  var t = await r.text();
  return t.length > 1000 && t.trim().charAt(0) !== '<';
}
function loadLame() {
  if (window.lamejs && window.lamejs.Mp3Encoder && testLame(window.lamejs)) return Promise.resolve(window.lamejs);
  if (lamePromise) return lamePromise;
  lamePromise = (async function () {
    for (var i = 0; i < LAME_URLS.length; i++) {
      try {
        if (!(await looksLikeJs(LAME_URLS[i]))) continue;
        window.lamejs = undefined;
        await injectScript(LAME_URLS[i]);
        if (window.lamejs && window.lamejs.Mp3Encoder && testLame(window.lamejs)) return window.lamejs;
      } catch (e) { /* ลองแหล่งถัดไป */ }
    }
    throw new Error('โหลดตัวเข้ารหัส MP3 ไม่สำเร็จ ตรวจสอบอินเทอร์เน็ตแล้วลองใหม่อีกครั้ง');
  })();
  lamePromise.catch(function () { lamePromise = null; });
  return lamePromise;
}

function $(id) { return document.getElementById(id); }
var els = {
  drop: $('f2m-drop'), file: $('f2m-file'), br: $('f2m-br'), sr: $('f2m-sr'), ch: $('f2m-ch'),
  tags: $('f2m-tags'), norm: $('f2m-norm'), trim: $('f2m-trim'), go: $('f2m-go'), stop: $('f2m-stop'),
  zip: $('f2m-zip'), dir: $('f2m-dir'), clear: $('f2m-clear'), status: $('f2m-status'), list: $('f2m-list')
};
if (!els.drop || !els.list) return;
var AC = window.AudioContext || window.webkitAudioContext;
var OAC = window.OfflineAudioContext || window.webkitOfflineAudioContext;
var items = [], seq = 0, running = false, cancelled = false;
var mc = new MessageChannel();
function yieldUi() { return new Promise(function (r) { mc.port1.onmessage = function () { r(); }; mc.port2.postMessage(0); }); }
function checkCancel() { if (cancelled) throw new Error('__cancel'); }
function setStatus(msg, isErr) { els.status.textContent = msg || ''; els.status.className = 'f2m-state' + (isErr ? ' f2m-err' : ''); }
function el(tag, cls, text) {
  var e = document.createElement(tag);
  if (cls) e.className = cls;
  if (text !== undefined) e.textContent = text;
  return e;
}
if (!AC || !OAC || !window.Blob) { setStatus('เบราว์เซอร์นี้ยังไม่รองรับการแปลงไฟล์เสียง กรุณาอัปเดตหรือเปลี่ยนเบราว์เซอร์', true); }
if (!window.showDirectoryPicker) els.dir.hidden = true;

function effKbps(rate) {
  var br = +els.br.value, target = pickRate(rate, els.sr.value);
  return target < 32000 ? Math.min(br, 160) : br;
}
function metaText(item) {
  var i = item.info, p = [], s;
  if (i && i.isFlac && i.rate) {
    if (i.total) p.push(fmtDur(i.total / i.rate));
    p.push((i.rate / 1000) + ' kHz');
    p.push(i.bits + '-bit');
    p.push(i.channels === 1 ? 'โมโน' : i.channels === 2 ? 'สเตอริโอ' : i.channels + ' ช่อง');
  }
  p.push(fmtSize(item.file.size));
  s = p.join(' · ');
  if (i && i.total && i.rate) {
    var est = effKbps(i.rate) * 125 * (i.total / i.rate);
    if (est < item.file.size) s += ' → MP3 ≈ ' + fmtSize(est) + ' (เล็กลง ~' + Math.round((1 - est / item.file.size) * 100) + '%)';
  }
  if (item.cue) s += ' · แยก ' + item.cue.tracks.length + ' แทร็กตาม CUE';
  return s;
}
function refreshMeta(item) { if (item.el) item.el.meta.textContent = metaText(item); }
function setItem(item, msg, prog, isErr) {
  if (!item.el) return;
  item.el.state.textContent = msg;
  item.el.state.className = 'f2m-state' + (isErr ? ' f2m-err' : '');
  if (prog != null) item.el.fill.style.width = Math.max(0, Math.min(100, prog * 100)) + '%';
}
function toggleUi() {
  var anyOut = items.some(function (it) { return it.outputs.length > 0; });
  els.go.disabled = running || !items.length;
  els.stop.disabled = !running;
  els.zip.disabled = running || !anyOut;
  els.dir.disabled = running || !anyOut;
  els.clear.disabled = running || !items.length;
  items.forEach(function (it) { if (it.el) it.el.rm.disabled = running; });
}

function renderItem(item) {
  var li = el('li', 'f2m-item'), row = el('div', 'f2m-row');
  var img = el('img', 'f2m-cover'); img.alt = 'ปกอัลบั้ม'; img.hidden = true;
  var box = el('div', 'f2m-grow'), name = el('div', 'f2m-name', item.name), meta = el('div', 'f2m-meta'), state = el('div', 'f2m-state', item.status);
  box.append(name, meta, state);
  var rm = el('button', 'f2m-btn f2m-rm', '✕'); rm.type = 'button'; rm.setAttribute('aria-label', 'ลบ ' + item.name);
  rm.addEventListener('click', function () { removeItem(item); });
  row.append(img, box, rm);
  var bar = el('div', 'f2m-bar'), fill = document.createElement('i'); bar.append(fill);
  var det = el('details', 'f2m-det'); det.append(el('summary', '', 'แก้ไขแท็กและฟังตัวอย่าง'));
  var grid = el('div', 'f2m-tags'), inputs = {};
  [['title', 'ชื่อเพลง'], ['artist', 'ศิลปิน'], ['album', 'อัลบั้ม'], ['albumartist', 'ศิลปินอัลบั้ม'], ['year', 'ปี'], ['track', 'เพลงที่'], ['genre', 'แนวเพลง']].forEach(function (f) {
    var k = f[0], lb = el('label'), inp = document.createElement('input');
    lb.append(el('span', '', f[1]));
    inp.type = 'text'; inp.value = item.tags[k] || '';
    inp.addEventListener('input', function () { item.tags[k] = inp.value; });
    lb.append(inp); grid.append(lb); inputs[k] = inp;
  });
  var au = document.createElement('audio'); au.controls = true; au.preload = 'none'; au.src = item.url;
  det.append(grid, au);
  var dl = el('div', 'f2m-dl');
  li.append(row, bar, det, dl);
  els.list.append(li);
  item.el = { li: li, img: img, meta: meta, state: state, fill: fill, rm: rm, inputs: inputs, dl: dl };
  if (item.cover) {
    item.coverUrl = URL.createObjectURL(new Blob([item.cover.data], { type: item.cover.mime || 'image/jpeg' }));
    img.src = item.coverUrl; img.hidden = false;
  }
  refreshMeta(item);
}
function removeItem(item) {
  if (running) return;
  freeOutputs(item);
  if (item.url) URL.revokeObjectURL(item.url);
  if (item.coverUrl) URL.revokeObjectURL(item.coverUrl);
  if (item.el) item.el.li.remove();
  items.splice(items.indexOf(item), 1);
  toggleUi();
  if (!items.length) setStatus('');
}
function freeOutputs(item) {
  item.outputs.forEach(function (o) { URL.revokeObjectURL(o.url); });
  item.outputs = [];
  if (item.el) item.el.dl.textContent = '';
}

async function createItem(file) {
  var item = { id: ++seq, file: file, name: file.name, info: null, tags: {}, cover: null, cue: null, status: 'พร้อมแปลง', outputs: [], sig: '', url: URL.createObjectURL(file) };
  try {
    var head = await file.slice(0, Math.min(file.size, 8 * 1024 * 1024)).arrayBuffer();
    var m = parseFlac(head);
    if (m.isFlac) { item.info = m; item.tags = Object.assign({}, m.tags); item.cover = m.cover; }
  } catch (e) { /* อ่านแท็กไม่ได้ ไม่เป็นไร */ }
  if (file.size > 400 * 1024 * 1024) item.status = 'ไฟล์ใหญ่มาก อาจใช้หน่วยความจำสูงและแปลงช้า';
  items.push(item);
  renderItem(item);
  return item;
}
async function attachCue(file) {
  var text = await file.text(), cue = parseCue(text);
  if (!cue.tracks.length) { setStatus('อ่านไฟล์ ' + file.name + ' ไม่ได้ หรือไม่พบแทร็กเสียงในไฟล์ CUE', true); return; }
  if (cue.files > 1) { setStatus('ไฟล์ ' + file.name + ' อ้างอิงไฟล์เสียงมากกว่า 1 ไฟล์ ซึ่งยังไม่รองรับ', true); return; }
  if (!items.length) { setStatus('เพิ่มไฟล์ FLAC ก่อน แล้วค่อยเพิ่มไฟล์ .cue', true); return; }
  var base = baseName(file.name).toLowerCase(), free = items.filter(function (it) { return !it.cue; });
  var target = free.filter(function (it) { return baseName(it.name).toLowerCase() === base; })[0] || (free.length === 1 ? free[0] : null);
  if (!target) { setStatus('จับคู่ ' + file.name + ' กับไฟล์เสียงไม่ได้ ชื่อไฟล์ .cue ต้องตรงกับชื่อไฟล์ FLAC', true); return; }
  target.cue = cue;
  if (target.el) {
    target.el.inputs.title.disabled = true; target.el.inputs.track.disabled = true;
    target.el.inputs.title.placeholder = 'ใช้ตามไฟล์ CUE'; target.el.inputs.track.placeholder = 'ใช้ตามไฟล์ CUE';
  }
  refreshMeta(target);
  setItem(target, 'จับคู่กับ ' + file.name + ' แล้ว จะแยกเป็น ' + cue.tracks.length + ' เพลง', null);
}
async function addFiles(fl) {
  var files = Array.from(fl || []);
  if (!files.length) return;
  var cues = files.filter(function (f) { return /\.cue$/i.test(f.name); });
  var audios = files.filter(function (f) { return !/\.cue$/i.test(f.name); });
  var skipped = [];
  for (var i = 0; i < audios.length; i++) {
    var f = audios[i];
    if (/\.flac$/i.test(f.name) || /^audio\//.test(f.type)) await createItem(f); else skipped.push(f.name);
  }
  for (var j = 0; j < cues.length; j++) await attachCue(cues[j]);
  if (skipped.length) setStatus('ข้ามไฟล์ที่ไม่ใช่ไฟล์เสียง: ' + skipped.join(', '), true);
  else if (audios.length) setStatus('เพิ่มแล้ว ' + audios.length + ' ไฟล์ · เลือกตัวเลือกแล้วกด “แปลงทั้งหมด”');
  toggleUi();
}

function makeCtx(rate) {
  if (rate) { try { return new AC({ sampleRate: rate }); } catch (e) { /* ใช้ค่าเริ่มต้น */ } }
  return new AC();
}
function decodeAudio(ctx, ab) {
  return new Promise(function (res, rej) {
    var p = ctx.decodeAudioData(ab, res, rej);
    if (p && p.then) p.then(res, rej);
  });
}
function renderTo(buffer, ch, rate) {
  var len = Math.max(1, Math.ceil(buffer.length * rate / buffer.sampleRate));
  var oc = new OAC(ch, len, rate), src = oc.createBufferSource();
  src.buffer = buffer; src.connect(oc.destination); src.start(0);
  return new Promise(function (res, rej) {
    oc.oncomplete = function (e) { res(e.renderedBuffer); };
    var p = oc.startRendering();
    if (p && p.then) p.then(res, rej);
  });
}
function toI16(x) { x = x < -1 ? -1 : x > 1 ? 1 : x; return (x < 0 ? x * 32768 : x * 32767) | 0; }
async function encodeRange(lame, chans, start, end, rate, kbps, gain, onProg) {
  var nch = chans.length >= 2 ? 2 : 1, enc = new lame.Mp3Encoder(nch, rate, kbps), out = [], B = 1152, tick = 0;
  var c0 = chans[0], c1 = chans[1];
  for (var i = start; i < end; i += B) {
    var n = Math.min(B, end - i), l = new Int16Array(n), r = nch === 2 ? new Int16Array(n) : null;
    for (var k = 0; k < n; k++) { l[k] = toI16(c0[i + k] * gain); if (r) r[k] = toI16(c1[i + k] * gain); }
    var d = nch === 2 ? enc.encodeBuffer(l, r) : enc.encodeBuffer(l);
    if (d.length) out.push(new Uint8Array(d));
    if ((++tick & 63) === 0) { onProg((i - start) / (end - start)); checkCancel(); await yieldUi(); }
  }
  var f = enc.flush();
  if (f.length) out.push(new Uint8Array(f));
  return out;
}
function optSig(item) {
  return JSON.stringify([els.br.value, els.sr.value, els.ch.value, els.tags.checked, els.norm.checked, els.trim.checked, item.tags, !!item.cue]);
}

async function convertItem(item) {
  freeOutputs(item);
  setItem(item, 'กำลังโหลดตัวเข้ารหัส MP3…', 0.01);
  var lame = await loadLame();
  checkCancel();
  setItem(item, 'กำลังอ่านไฟล์…', 0.03);
  var buf = await item.file.arrayBuffer();
  var meta = parseFlac(buf), tags = Object.assign({}, item.tags), cover = item.cover;
  if (meta.isFlac) {
    Object.keys(meta.tags).forEach(function (k) { if (!(k in tags)) tags[k] = meta.tags[k]; });
    if (!cover && meta.cover) cover = meta.cover;
  }
  var ctx = makeCtx(meta.rate), decoded;
  setItem(item, 'กำลังถอดรหัสเสียง…', 0.06);
  try { decoded = await decodeAudio(ctx, buf); }
  catch (e) { throw new Error('เบราว์เซอร์ถอดรหัสไฟล์นี้ไม่ได้ (ไฟล์อาจเสียหายหรือเป็นรูปแบบที่ไม่รองรับ)'); }
  finally { try { ctx.close(); } catch (e2) { /* ignore */ } }
  buf = null;
  checkCancel();
  var srcRate = decoded.sampleRate, srcCh = decoded.numberOfChannels, rate = pickRate(srcRate, els.sr.value);
  var wantCh = els.ch.value === 'mono' ? 1 : els.ch.value === 'stereo' ? 2 : (srcCh >= 2 ? 2 : 1);
  var pcm = decoded;
  if (rate !== srcRate || wantCh !== srcCh) {
    setItem(item, 'กำลังปรับ sample rate และช่องเสียง…', 0.1);
    pcm = await renderTo(decoded, wantCh, rate);
  }
  decoded = null;
  checkCancel();
  var chans = [];
  for (var c = 0; c < pcm.numberOfChannels; c++) chans.push(pcm.getChannelData(c));
  var total = pcm.length, kbps = rate < 32000 ? Math.min(+els.br.value, 160) : +els.br.value, segs;
  if (item.cue) {
    var cue = item.cue;
    segs = cue.tracks.map(function (t, i) {
      var end = i + 1 < cue.tracks.length ? Math.round(cue.tracks[i + 1].start * rate) : total;
      var pad = String(t.n).padStart(2, '0');
      return {
        start: Math.min(total, Math.round(t.start * rate)), end: Math.min(total, end),
        name: pad + ' - ' + safeName(t.title || ('Track ' + pad)) + '.mp3',
        tags: Object.assign({}, tags, { title: t.title, artist: t.performer || cue.performer || tags.artist, album: cue.album || tags.album, albumartist: cue.performer || tags.albumartist, track: String(t.n) })
      };
    }).filter(function (s) { return s.end > s.start; });
  } else {
    var rg = els.trim.checked ? trimRange(chans, rate) : { start: 0, end: total };
    segs = [{ start: rg.start, end: rg.end, name: safeName(baseName(item.name)) + '.mp3', tags: tags }];
  }
  if (!segs.length) throw new Error('ไม่พบช่วงเสียงที่จะแปลง');
  var all = segs.reduce(function (a, s) { return a + (s.end - s.start); }, 0), done = 0, outputs = [];
  for (var si = 0; si < segs.length; si++) {
    var s = segs[si], len = s.end - s.start, base = done;
    var gain = els.norm.checked ? calcGain(chans, s.start, s.end) : 1;
    var parts = await encodeRange(lame, chans, s.start, s.end, rate, kbps, gain, function (p) {
      var f = (base + p * len) / all;
      setItem(item, 'กำลังเข้ารหัส MP3… ' + Math.round(f * 100) + '%', 0.12 + 0.86 * f);
    });
    done += len;
    var id3 = els.tags.checked ? buildId3(s.tags, cover) : new Uint8Array(0);
    var blob = new Blob([id3].concat(parts), { type: 'audio/mpeg' });
    outputs.push({ name: s.name, blob: blob, url: URL.createObjectURL(blob) });
  }
  item.outputs = outputs;
  item.sig = optSig(item);
  var sum = outputs.reduce(function (a, o) { return a + o.blob.size; }, 0);
  setItem(item, 'เสร็จแล้ว · ' + outputs.length + ' ไฟล์ · ' + fmtSize(sum) + ' · ' + kbps + ' kbps · ' + (rate / 1000) + ' kHz', 1);
  renderDownloads(item);
}

function saveBlob(blob, name) {
  var u = URL.createObjectURL(blob), a = document.createElement('a');
  a.href = u; a.download = name;
  document.body.appendChild(a); a.click(); a.remove();
  setTimeout(function () { URL.revokeObjectURL(u); }, 30000);
}
function renderDownloads(item) {
  var box = item.el.dl;
  box.textContent = '';
  if (item.outputs.length === 1) {
    var o = item.outputs[0], a = el('a', 'f2m-btn primary', '⬇ ดาวน์โหลด MP3 (' + fmtSize(o.blob.size) + ')');
    a.href = o.url; a.download = o.name; box.append(a);
    return;
  }
  var zb = el('button', 'f2m-btn primary', '⬇ ดาวน์โหลดทั้งอัลบั้ม (ZIP)'); zb.type = 'button';
  zb.addEventListener('click', async function () {
    try { saveBlob(await makeZip(uniqueNames(item.outputs)), safeName(baseName(item.name)) + '.zip'); }
    catch (e) { setStatus(e.message, true); }
  });
  var det = el('details'); det.append(el('summary', '', 'ดาวน์โหลดทีละเพลง (' + item.outputs.length + ' เพลง)'));
  item.outputs.forEach(function (o) { var a = el('a', '', o.name + ' (' + fmtSize(o.blob.size) + ')'); a.href = o.url; a.download = o.name; det.append(a); });
  box.append(zb, det);
}

async function runAll() {
  if (running || !items.length) return;
  running = true; cancelled = false; toggleUi();
  var ok = 0, fail = 0, skip = 0;
  try {
    for (var i = 0; i < items.length; i++) {
      var it = items[i];
      if (cancelled) break;
      if (it.outputs.length && it.sig === optSig(it)) { skip++; continue; }
      try { await convertItem(it); ok++; }
      catch (e) {
        if (e && e.message === '__cancel') { setItem(it, 'ยกเลิกแล้ว', 0); break; }
        fail++; setItem(it, (e && e.message) || 'แปลงไม่สำเร็จ', 0, true);
      }
    }
  } finally {
    running = false; toggleUi();
  }
  if (cancelled) setStatus('หยุดการแปลงแล้ว');
  else setStatus('แปลงเสร็จ ' + ok + ' ไฟล์' + (skip ? ' · ข้าม ' + skip + ' ไฟล์ที่แปลงแล้ว' : '') + (fail ? ' · ล้มเหลว ' + fail + ' ไฟล์' : ''), fail > 0 && ok === 0);
}
async function zipAll() {
  var list = [];
  items.forEach(function (it) { it.outputs.forEach(function (o) { list.push({ name: o.name, blob: o.blob }); }); });
  if (!list.length) return;
  try { setStatus('กำลังสร้างไฟล์ ZIP…'); saveBlob(await makeZip(uniqueNames(list)), 'flac-to-mp3.zip'); setStatus('สร้างไฟล์ ZIP แล้ว'); }
  catch (e) { setStatus(e.message || 'สร้าง ZIP ไม่สำเร็จ', true); }
}
async function saveToFolder() {
  var list = [];
  items.forEach(function (it) { it.outputs.forEach(function (o) { list.push({ name: o.name, blob: o.blob }); }); });
  if (!list.length || !window.showDirectoryPicker) return;
  try {
    var dir = await window.showDirectoryPicker({ mode: 'readwrite' }), files = uniqueNames(list);
    for (var i = 0; i < files.length; i++) {
      var fh = await dir.getFileHandle(files[i].name, { create: true }), w = await fh.createWritable();
      await w.write(files[i].blob); await w.close();
    }
    setStatus('บันทึก ' + files.length + ' ไฟล์ลงโฟลเดอร์แล้ว');
  } catch (e) {
    if (e && e.name !== 'AbortError') setStatus('บันทึกลงโฟลเดอร์ไม่สำเร็จ: ' + (e.message || e), true);
  }
}

els.drop.addEventListener('click', function () { els.file.click(); });
els.drop.addEventListener('keydown', function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); els.file.click(); } });
els.drop.addEventListener('dragover', function (e) { e.preventDefault(); els.drop.classList.add('is-over'); });
els.drop.addEventListener('dragleave', function () { els.drop.classList.remove('is-over'); });
els.drop.addEventListener('drop', function (e) { e.preventDefault(); els.drop.classList.remove('is-over'); if (e.dataTransfer) addFiles(e.dataTransfer.files); });
els.file.addEventListener('change', function () { addFiles(els.file.files); els.file.value = ''; });
document.addEventListener('paste', function (e) {
  var t = e.target;
  if (t && /^(input|textarea|select)$/i.test(t.tagName)) return;
  if (e.clipboardData && e.clipboardData.files && e.clipboardData.files.length) addFiles(e.clipboardData.files);
});
['br', 'sr'].forEach(function (k) { els[k].addEventListener('change', function () { items.forEach(refreshMeta); }); });
els.go.addEventListener('click', runAll);
els.stop.addEventListener('click', function () { cancelled = true; setStatus('กำลังหยุด…'); });
els.zip.addEventListener('click', zipAll);
els.dir.addEventListener('click', saveToFolder);
els.clear.addEventListener('click', function () { items.slice().forEach(removeItem); setStatus(''); });
})();
</script>

**แปลง FLAC เป็น MP3** ได้ฟรีในเบราว์เซอร์ ไม่ต้องติดตั้งโปรแกรมและไม่ต้องอัปโหลดไฟล์ เหมาะสำหรับคนที่มีคลังเพลง lossless แต่ต้องการสำเนาขนาดเล็กไว้ฟังบนมือถือ รถยนต์ หรือเครื่องเล่นรุ่นเก่า เครื่องมือนี้เก็บชื่อเพลง ศิลปิน อัลบั้ม และปกอัลบั้มจากไฟล์ FLAC ไปไว้ในไฟล์ MP3 ให้อัตโนมัติ และยังแยกอัลบั้มที่เป็นไฟล์เดียว (FLAC + CUE) ออกเป็นเพลง ๆ ได้ด้วย ไฟล์ FLAC ต้นฉบับจะไม่ถูกแก้ไข

## ฟีเจอร์เด่น

- แปลงหลายไฟล์ในครั้งเดียว ดูความคืบหน้าของแต่ละไฟล์ และหยุดได้ทุกเมื่อ
- เลือกบิตเรต 320 / 256 / 192 / 128 / 96 kbps พร้อมแสดงขนาดไฟล์ MP3 โดยประมาณก่อนแปลง
- เก็บแท็ก ID3 และปกอัลบั้มจากไฟล์ FLAC อัตโนมัติ และแก้ไขแท็กก่อนแปลงได้
- ปรับ sample rate (48 / 44.1 / 32 kHz) และเลือกสเตอริโอหรือโมโน
- ปรับระดับเสียงให้สม่ำเสมอ และตัดความเงียบช่วงต้น–ท้ายเพลง (เลือกเปิดได้)
- แยกอัลบั้มไฟล์เดียวเป็นรายเพลงด้วยไฟล์ .cue
- ฟังตัวอย่างไฟล์ก่อนแปลง
- ดาวน์โหลดทีละไฟล์ รวมเป็น ZIP หรือบันทึกลงโฟลเดอร์ (Chrome / Edge บนคอมพิวเตอร์)
- ประมวลผลในเบราว์เซอร์ ไฟล์เสียงของคุณไม่ถูกอัปโหลด

## วิธีใช้งาน

1. **เพิ่มไฟล์** ลากไฟล์ FLAC มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง เลือกได้หลายไฟล์พร้อมกัน
2. **เลือกบิตเรต** ถ้าต้องการคุณภาพใกล้เคียงต้นฉบับให้ใช้ 320 kbps ถ้าอยากประหยัดพื้นที่ให้ลองใช้ 192 หรือ 128 kbps
3. **ตั้งค่าเพิ่มเติม (ถ้าต้องการ)** เลือก sample rate ช่องเสียง ปรับระดับเสียง หรือตัดความเงียบต้น–ท้ายเพลง ถ้าไม่แน่ใจให้ใช้ค่าเริ่มต้นได้เลย
4. **ตรวจแท็กและฟังตัวอย่าง** กด “แก้ไขแท็กและฟังตัวอย่าง” ในแต่ละไฟล์เพื่อแก้ชื่อเพลง ศิลปิน อัลบั้ม ปี เลขแทร็ก และแนวเพลง
5. **แยกอัลบั้ม (ถ้ามีไฟล์ .cue)** เพิ่มไฟล์ .cue ที่ชื่อตรงกับไฟล์ FLAC เข้ามาพร้อมกัน เครื่องมือจะจับคู่ให้และแยกเป็นเพลงตามเวลาในไฟล์ CUE
6. **กด “แปลงทั้งหมด”** รอจนแถบความคืบหน้าเต็ม และเปิดแท็บนี้ค้างไว้ระหว่างแปลง
7. **ดาวน์โหลดผลลัพธ์** กดดาวน์โหลดทีละไฟล์ เลือก “ดาวน์โหลดทั้งหมด (ZIP)” หรือ “บันทึกลงโฟลเดอร์”

## ตัวเลือกและศัพท์ที่ควรรู้

| ศัพท์ | ความหมายสั้น ๆ |
| --- | --- |
| FLAC | ไฟล์เสียงแบบ lossless บีบอัดโดยไม่ทำให้คุณภาพเสียงสูญเสีย ไฟล์ใหญ่แต่เก็บเสียงต้นฉบับครบ |
| MP3 | ไฟล์เสียงแบบ lossy ตัดข้อมูลที่หูแยกได้ยากออก ไฟล์เล็ก เล่นได้เกือบทุกอุปกรณ์ |
| Lossless / Lossy | Lossless คือบีบอัดแล้วคืนค่าเดิมได้ครบ ส่วน Lossy คือบีบอัดโดยทิ้งข้อมูลบางส่วนถาวร |
| บิตเรต (kbps) | ปริมาณข้อมูลเสียงต่อวินาที ยิ่งสูงยิ่งคุณภาพดีและไฟล์ใหญ่ขึ้น |
| CBR | Constant Bitrate คือบิตเรตคงที่ตลอดเพลง ขนาดไฟล์คาดเดาได้ง่าย เครื่องมือนี้ใช้โหมดนี้ |
| VBR | Variable Bitrate คือบิตเรตเปลี่ยนตามความซับซ้อนของเสียง ได้ไฟล์เล็กกว่าที่คุณภาพใกล้เคียงกัน (เครื่องมือนี้ยังไม่รองรับ) |
| Sample rate (kHz) | จำนวนครั้งที่สุ่มเสียงต่อวินาที เช่น 44.1 kHz เท่ากับซีดี MP3 รองรับสูงสุด 48 kHz |
| Bit depth | ความละเอียดของเสียงต้นฉบับต่อตัวอย่าง เช่น 16-bit (ซีดี) หรือ 24-bit (Hi-Res) ไฟล์ MP3 ไม่ใช้ค่านี้ |
| สเตอริโอ / โมโน | สเตอริโอมี 2 ช่อง (ซ้าย–ขวา) โมโนมีช่องเดียว ไฟล์เล็กลงราวครึ่งหนึ่ง |
| แท็ก ID3 | ข้อมูลที่ฝังในไฟล์ MP3 เช่น ชื่อเพลง ศิลปิน อัลบั้ม ปี เพื่อให้เครื่องเล่นแสดงผลได้ |
| ปกอัลบั้ม (Cover art) | ภาพปกที่ฝังในไฟล์ แสดงบนเครื่องเล่นและหน้าจอล็อกของมือถือ |
| ปรับระดับเสียง (Normalize) | ปรับความดังให้เพลงที่ดังที่สุดอยู่ใกล้ระดับสูงสุดโดยไม่แตก ช่วยให้หลายเพลงดังใกล้เคียงกัน |
| ตัดความเงียบ | ลบช่วงเงียบที่ต้นและท้ายเพลงออก (เหลือเว้นไว้เล็กน้อยไม่ให้เพลงถูกตัดกะทันหัน) |
| ไฟล์ CUE | ไฟล์ข้อความที่บอกเวลาเริ่มของแต่ละเพลงในอัลบั้มที่รวมเป็นไฟล์เดียว ใช้แยกเป็นรายเพลง |
| ZIP | ไฟล์บีบรวมหลายไฟล์ไว้ด้วยกัน สะดวกเมื่อดาวน์โหลดหลายเพลงพร้อมกัน |

## เลือกบิตเรตเท่าไรดี

ขนาดด้านล่างคำนวณจากเพลงยาว 4 นาที เพลง FLAC ที่ความละเอียดระดับซีดีมักมีขนาดราว 20–35 MB ต่อเพลง

| บิตเรต | ขนาด MP3 โดยประมาณ | เหมาะกับ |
| --- | --- | --- |
| 320 kbps | ราว 9.6 MB | ฟังด้วยหูฟังหรือลำโพงดี ต้องการใกล้เคียงต้นฉบับที่สุด |
| 256 kbps | ราว 7.7 MB | คุณภาพสูง ประหยัดพื้นที่กว่า 320 kbps |
| 192 kbps | ราว 5.8 MB | ฟังทั่วไป สมดุลระหว่างคุณภาพกับขนาด |
| 128 kbps | ราว 3.8 MB | ฟังในรถหรือมือถือที่พื้นที่จำกัด |
| 96 kbps | ราว 2.9 MB | พอดแคสต์ เสียงพูด หรืออุปกรณ์ที่พื้นที่น้อยมาก |

## FLAC กับ MP3 ต่างกันอย่างไร

| หัวข้อ | FLAC | MP3 |
| --- | --- | --- |
| การบีบอัด | Lossless ไม่สูญเสียข้อมูล | Lossy ตัดข้อมูลบางส่วนถาวร |
| ขนาดไฟล์ | ใหญ่ ราว 20–35 MB ต่อเพลง | เล็ก ราว 3–10 MB ต่อเพลง |
| คุณภาพเสียง | เท่าต้นฉบับ | ใกล้เคียงต้นฉบับที่บิตเรตสูง |
| ความเข้ากันได้ | บางมือถือ รถยนต์ และเครื่องเล่นเก่าเล่นไม่ได้ | เล่นได้เกือบทุกอุปกรณ์ |
| เหมาะกับ | เก็บถาวร ตัดต่อ และฟังจริงจัง | พกพา ฟังทั่วไป และแชร์ไฟล์ |

## ความเป็นส่วนตัวและวิธีทำงาน

เครื่องมือนี้ถอดรหัส FLAC และเข้ารหัส MP3 ในเบราว์เซอร์ของคุณเอง ไฟล์เสียง แท็ก และปกอัลบั้มไม่ถูกส่งออกจากอุปกรณ์ ตอนกดแปลงครั้งแรก เบราว์เซอร์จะดาวน์โหลดไลบรารีเข้ารหัส MP3 (lamejs) จาก CDN เพียงครั้งเดียว เพื่อโหลดโค้ดตัวเข้ารหัสเท่านั้น ไม่ได้ส่งข้อมูลของคุณไปไหน คุณตรวจสอบได้จากแท็บ Network ของเครื่องมือนักพัฒนาในเบราว์เซอร์

## ข้อจำกัดและเคล็ดลับ

- เครื่องมือนี้ใช้บิตเรตคงที่ (CBR) ยังไม่มีโหมด VBR
- ไฟล์ FLAC ขนาดใหญ่หรือ Hi-Res (24-bit / 96 kHz ขึ้นไป) ใช้หน่วยความจำมาก ถ้าแท็บค้างหรือแปลงไม่สำเร็จ ให้แปลงทีละไฟล์ และปิดแท็บอื่นก่อน
- บนมือถือ โดยเฉพาะ iPhone ควรแปลงทีละน้อยและไม่สลับแอปขณะแปลง
- ไฟล์ CUE ต้องอ้างอิงไฟล์เสียงเพียงไฟล์เดียว และชื่อไฟล์ .cue ต้องตรงกับชื่อไฟล์ FLAC (ถ้าเพิ่มไฟล์เสียงไฟล์เดียว ไม่ต้องตรงกันก็ได้)
- ไฟล์ที่มีมากกว่า 2 ช่องเสียงจะถูกรวมเป็นสเตอริโอ
- ถ้าไฟล์ต้นฉบับมี sample rate สูงกว่า 48 kHz เครื่องมือจะลดเหลือ 48 หรือ 44.1 kHz ให้อัตโนมัติ เพราะ MP3 รองรับสูงสุด 48 kHz

## คำถามที่พบบ่อย

### แปลง FLAC เป็น MP3 แล้วคุณภาพลดลงไหม?

MP3 เป็นรูปแบบ lossy จึงตัดข้อมูลเสียงบางส่วนออกถาวร แต่ที่ 320 kbps ผู้ฟังส่วนใหญ่แยกความต่างจากต้นฉบับได้ยาก ไฟล์ FLAC เดิมของคุณไม่ถูกแก้ไข จึงเก็บต้นฉบับไว้และพกสำเนา MP3 ได้พร้อมกัน

### ไฟล์ของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์ไหม?

ไม่ การแปลงทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ระบบดาวน์โหลดเฉพาะโค้ดตัวเข้ารหัส MP3 จาก CDN เท่านั้น ไฟล์เสียงของคุณไม่ถูกส่งออกจากอุปกรณ์

### แปลงหลายไฟล์พร้อมกันได้ไหม?

ได้ เพิ่มหลายไฟล์ลงในรายการแล้วกด “แปลงทั้งหมด” ระบบจะแปลงทีละไฟล์ตามลำดับเพื่อประหยัดหน่วยความจำ เมื่อเสร็จแล้วดาวน์โหลดรวมเป็น ZIP ได้

### ชื่อเพลง ศิลปิน และปกอัลบั้มจะหายไหม?

ไม่หาย ถ้าเปิดตัวเลือก “เก็บแท็กและปกอัลบั้ม” เครื่องมือจะอ่านแท็กและปกจากไฟล์ FLAC แล้วฝังลงในไฟล์ MP3 เป็นแท็ก ID3 คุณแก้ไขข้อมูลได้ก่อนแปลง

### แยกอัลบั้ม FLAC ที่เป็นไฟล์เดียวเป็นรายเพลงได้ไหม?

ได้ เพิ่มไฟล์ .cue ของอัลบั้มพร้อมกับไฟล์ FLAC เครื่องมือจะแยกเป็นไฟล์ MP3 ตามเวลาเริ่มของแต่ละเพลง ตั้งชื่อไฟล์ตามลำดับและชื่อเพลง และใส่แท็กให้ แล้วดาวน์โหลดทั้งอัลบั้มเป็น ZIP ได้

### ควรเลือกบิตเรตเท่าไร?

ถ้าต้องการคุณภาพสูงสุดเลือก 320 kbps ถ้าต้องการประหยัดพื้นที่แต่ยังฟังสบายเลือก 192–256 kbps ส่วน 128 kbps เหมาะกับพื้นที่จำกัดหรือฟังในรถ

### ใช้บนมือถือ iPhone หรือ Android ได้ไหม?

ได้ ใช้ได้กับเบราว์เซอร์รุ่นใหม่ แต่มือถือมีหน่วยความจำจำกัด ถ้าไฟล์ใหญ่หรือเป็น Hi-Res ควรแปลงทีละไฟล์และเปิดแท็บนี้ค้างไว้จนเสร็จ

### ไฟล์ FLAC แบบ Hi-Res (24-bit / 96 kHz) แปลงได้ไหม?

ได้ เครื่องมือจะลด sample rate เหลือ 48 หรือ 44.1 kHz ให้อัตโนมัติ เพราะ MP3 รองรับสูงสุด 48 kHz ไฟล์ Hi-Res ใช้หน่วยความจำมากกว่าปกติ จึงควรแปลงทีละไฟล์

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"แปลง FLAC เป็น MP3 แล้วคุณภาพลดลงไหม?","acceptedAnswer":{"@type":"Answer","text":"MP3 เป็นรูปแบบ lossy จึงตัดข้อมูลเสียงบางส่วนออกถาวร แต่ที่ 320 kbps ผู้ฟังส่วนใหญ่แยกความต่างจากต้นฉบับได้ยาก ไฟล์ FLAC เดิมของคุณไม่ถูกแก้ไข จึงเก็บต้นฉบับไว้และพกสำเนา MP3 ได้พร้อมกัน"}},{"@type":"Question","name":"ไฟล์ของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์ไหม?","acceptedAnswer":{"@type":"Answer","text":"ไม่ การแปลงทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ระบบดาวน์โหลดเฉพาะโค้ดตัวเข้ารหัส MP3 จาก CDN เท่านั้น ไฟล์เสียงของคุณไม่ถูกส่งออกจากอุปกรณ์"}},{"@type":"Question","name":"แปลงหลายไฟล์พร้อมกันได้ไหม?","acceptedAnswer":{"@type":"Answer","text":"ได้ เพิ่มหลายไฟล์ลงในรายการแล้วกด แปลงทั้งหมด ระบบจะแปลงทีละไฟล์ตามลำดับเพื่อประหยัดหน่วยความจำ เมื่อเสร็จแล้วดาวน์โหลดรวมเป็น ZIP ได้"}},{"@type":"Question","name":"ชื่อเพลง ศิลปิน และปกอัลบั้มจะหายไหม?","acceptedAnswer":{"@type":"Answer","text":"ไม่หาย ถ้าเปิดตัวเลือก เก็บแท็กและปกอัลบั้ม เครื่องมือจะอ่านแท็กและปกจากไฟล์ FLAC แล้วฝังลงในไฟล์ MP3 เป็นแท็ก ID3 คุณแก้ไขข้อมูลได้ก่อนแปลง"}},{"@type":"Question","name":"แยกอัลบั้ม FLAC ที่เป็นไฟล์เดียวเป็นรายเพลงได้ไหม?","acceptedAnswer":{"@type":"Answer","text":"ได้ เพิ่มไฟล์ .cue ของอัลบั้มพร้อมกับไฟล์ FLAC เครื่องมือจะแยกเป็นไฟล์ MP3 ตามเวลาเริ่มของแต่ละเพลง ตั้งชื่อไฟล์ตามลำดับและชื่อเพลง และใส่แท็กให้ แล้วดาวน์โหลดทั้งอัลบั้มเป็น ZIP ได้"}},{"@type":"Question","name":"ควรเลือกบิตเรตเท่าไร?","acceptedAnswer":{"@type":"Answer","text":"ถ้าต้องการคุณภาพสูงสุดเลือก 320 kbps ถ้าต้องการประหยัดพื้นที่แต่ยังฟังสบายเลือก 192–256 kbps ส่วน 128 kbps เหมาะกับพื้นที่จำกัดหรือฟังในรถ"}},{"@type":"Question","name":"ใช้บนมือถือ iPhone หรือ Android ได้ไหม?","acceptedAnswer":{"@type":"Answer","text":"ได้ ใช้ได้กับเบราว์เซอร์รุ่นใหม่ แต่มือถือมีหน่วยความจำจำกัด ถ้าไฟล์ใหญ่หรือเป็น Hi-Res ควรแปลงทีละไฟล์และเปิดแท็บนี้ค้างไว้จนเสร็จ"}},{"@type":"Question","name":"ไฟล์ FLAC แบบ Hi-Res (24-bit / 96 kHz) แปลงได้ไหม?","acceptedAnswer":{"@type":"Answer","text":"ได้ เครื่องมือจะลด sample rate เหลือ 48 หรือ 44.1 kHz ให้อัตโนมัติ เพราะ MP3 รองรับสูงสุด 48 kHz ไฟล์ Hi-Res ใช้หน่วยความจำมากกว่าปกติ จึงควรแปลงทีละไฟล์"}}]}
</script>