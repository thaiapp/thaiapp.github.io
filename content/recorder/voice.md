---
title: อัดเสียงออนไลน์ ฟรี
h1: อัดเสียงออนไลน์
description: อัดเสียงออนไลน์ฟรี ไม่ต้องสมัคร ไม่อัปโหลดไฟล์ ลดเสียงรบกวน ตัดต่อเสียง รวมไฟล์ แล้วบันทึกเป็น MP3 หรือ WAV ได้ทันทีบนมือถือและคอมพิวเตอร์ ไม่จำกัดเวลาอัด
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-17T08:09:00+07:00'
weight: 121
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- อัดเสียงออนไลน์
- เสียงและวิดีโอ
---

<div class="vr" id="vr-app">
<section class="vr-card" aria-label="เครื่องอัดเสียง">
<div class="vr-row">
<label class="vr-f">ไมโครโฟน <select id="vr-dev"><option value="">ไมโครโฟนเริ่มต้น</option></select></label>
<button type="button" id="vr-test" class="vr-btn">ทดสอบไมค์</button>
</div>
<div class="vr-row vr-opts">
<label><input type="checkbox" id="vr-ns" checked> ลดเสียงรบกวน</label>
<label><input type="checkbox" id="vr-ec" checked> ตัดเสียงสะท้อน</label>
<label><input type="checkbox" id="vr-agc" checked> ปรับความดังอัตโนมัติ</label>
<label><input type="checkbox" id="vr-keep" checked> จำไฟล์ไว้ในเบราว์เซอร์นี้</label>
</div>
<div class="vr-time" id="vr-time">00:00.0</div>
<canvas id="vr-live" class="vr-live" width="600" height="64"></canvas>
<div class="vr-meterwrap"><div class="vr-meter"><div id="vr-bar" class="vr-bar"></div></div><span id="vr-db" class="vr-db">-∞ dB</span></div>
<div id="vr-clip" class="vr-clipbox" hidden>เสียงแตก! ลดความดังหรือถอยห่างจากไมค์</div>
<div class="vr-row vr-ctl">
<button type="button" id="vr-rec" class="vr-btn vr-primary">● เริ่มอัด</button>
<button type="button" id="vr-pause" class="vr-btn" disabled>⏸ หยุดชั่วคราว</button>
<button type="button" id="vr-stop" class="vr-btn" disabled>■ หยุดและบันทึก</button>
<button type="button" id="vr-mark" class="vr-btn" disabled>⚑ ปักหมุด</button>
</div>
<p id="vr-msg" class="vr-msg" role="status" aria-live="polite"></p>
<p class="vr-hint">เปิดแท็บนี้ค้างไว้ขณะอัด การสลับแอปหรือล็อกหน้าจอบนมือถืออาจทำให้การอัดหยุด · ไฟล์เสียงประมวลผลในเบราว์เซอร์ ไม่ถูกอัปโหลด</p>
</section>
<section class="vr-card vr-info" id="vr-rcv" hidden>
<p id="vr-rcvt" class="vr-msg"></p>
<div class="vr-row">
<button type="button" id="vr-rcvy" class="vr-btn vr-primary">กู้คืน</button>
<button type="button" id="vr-rcvn" class="vr-btn">ทิ้ง</button>
</div>
</section>
<section class="vr-card" aria-label="รายการบันทึก">
<div class="vr-row">
<label><input type="checkbox" id="vr-all"> เลือกทั้งหมด</label>
<label class="vr-f">รูปแบบไฟล์ <select id="vr-fmt"><option value="mp3">MP3</option><option value="wav">WAV (ไม่สูญเสียคุณภาพ)</option><option value="orig">ไฟล์ต้นฉบับ (WebM/OGG/M4A)</option></select></label>
<label class="vr-f" id="vr-kbl">คุณภาพ <select id="vr-kbps"><option value="128">128</option><option value="192" selected>192</option><option value="256">256</option><option value="320">320</option></select> kbps</label>
</div>
<div class="vr-row">
<button type="button" id="vr-dlsel" class="vr-btn" disabled>ดาวน์โหลดที่เลือก</button>
<button type="button" id="vr-mergebtn" class="vr-btn" disabled>รวมไฟล์</button>
<button type="button" id="vr-delsel" class="vr-btn" disabled>ลบที่เลือก</button>
</div>
<p id="vr-lmsg" class="vr-msg" role="status" aria-live="polite"></p>
<p id="vr-empty" class="vr-hint">ยังไม่มีไฟล์บันทึก กดปุ่ม เริ่มอัด เพื่อเริ่มต้น</p>
<ul id="vr-list" class="vr-list"></ul>
<p id="vr-store" class="vr-hint"></p>
</section>
<section class="vr-card" id="vr-merge" hidden>
<strong>รวมไฟล์เสียง</strong>
<p class="vr-hint">เสียงจะเล่นตามลำดับตัวเลข ใช้ปุ่มลูกศรเลื่อนไฟล์ขึ้นหรือลง</p>
<div class="vr-row">
<label class="vr-f">เรียงลำดับ <select id="vr-msort"><option value="added">ลำดับที่เพิ่ม</option><option value="rev">ย้อนกลับ</option><option value="az">ชื่อ A-Z</option><option value="za">ชื่อ Z-A</option></select></label>
<label class="vr-f">ชื่อไฟล์ใหม่ <input type="text" id="vr-mname"></label>
</div>
<ol id="vr-mlist" class="vr-list"></ol>
<p id="vr-mmsg" class="vr-msg" role="status" aria-live="polite"></p>
<div class="vr-row">
<button type="button" id="vr-mgo" class="vr-btn vr-primary">รวมไฟล์</button>
<button type="button" id="vr-mno" class="vr-btn">ยกเลิก</button>
</div>
</section>
<section class="vr-card" id="vr-ed" hidden aria-label="ตัดต่อเสียง">
<div class="vr-row">
<strong id="vr-edname"></strong>
<button type="button" id="vr-edclose" class="vr-btn">ปิดตัวแก้ไข</button>
</div>
<canvas id="vr-wave" class="vr-wave" width="800" height="150"></canvas>
<p id="vr-edinfo" class="vr-hint">ลากบนคลื่นเสียงเพื่อเลือกช่วง คลิกเพื่อกำหนดตำแหน่งเล่น</p>
<div class="vr-row">
<button type="button" id="vr-play" class="vr-btn vr-primary">▶ เล่น</button>
<button type="button" id="vr-undo" class="vr-btn" disabled>↶ เลิกทำ</button>
<button type="button" id="vr-addmk" class="vr-btn">⚑ ปักหมุดที่ตำแหน่งเล่น</button>
</div>
<div class="vr-row">
<button type="button" id="vr-cut" class="vr-btn" disabled>ตัดส่วนที่เลือกออก</button>
<button type="button" id="vr-trim" class="vr-btn" disabled>เก็บเฉพาะส่วนที่เลือก</button>
<button type="button" id="vr-split" class="vr-btn">แยกไฟล์ที่ตำแหน่งเล่น</button>
</div>
<div class="vr-row">
<button type="button" id="vr-norm" class="vr-btn">Normalize</button>
<label class="vr-f">ความดัง <input type="number" id="vr-gain" value="3" step="1" min="-30" max="30" style="width:80px"> dB</label>
<button type="button" id="vr-gainb" class="vr-btn">ปรับความดัง</button>
</div>
<div class="vr-row">
<label class="vr-f">Fade In <input type="number" id="vr-fin" value="0.5" step="0.1" min="0" max="30" style="width:80px"> วิ</label>
<label class="vr-f">Fade Out <input type="number" id="vr-fout" value="1" step="0.1" min="0" max="30" style="width:80px"> วิ</label>
<button type="button" id="vr-fade" class="vr-btn">ใส่ Fade</button>
</div>
<div class="vr-row">
<label class="vr-f">เงียบกว่า <input type="number" id="vr-thr" value="-45" step="1" min="-80" max="-10" style="width:80px"> dB</label>
<label class="vr-f">นานกว่า <input type="number" id="vr-minsil" value="0.6" step="0.1" min="0.2" max="5" style="width:80px"> วิ</label>
<button type="button" id="vr-sil" class="vr-btn">ลบช่วงเงียบ</button>
</div>
<div id="vr-mks" class="vr-row"></div>
<p id="vr-edmsg" class="vr-msg" role="status" aria-live="polite"></p>
</section>
</div>

<style>
.vr{max-width:880px;margin:0 auto 24px;font-size:15px;line-height:1.5}
.vr *{box-sizing:border-box}
.vr [hidden]{display:none!important}
.vr-card{border:1px solid rgba(128,128,128,.35);border-radius:14px;padding:16px;margin:0 0 16px;background:rgba(128,128,128,.06)}
.vr-info{border-color:#f9a825}
.vr-row{display:flex;flex-wrap:wrap;gap:10px 14px;align-items:center;margin:0 0 12px}
.vr-f{display:flex;flex-wrap:wrap;gap:8px;align-items:center}
.vr select,.vr input[type=text],.vr input[type=number]{font:inherit;color:inherit;background:rgba(128,128,128,.12);border:1px solid rgba(128,128,128,.4);border-radius:8px;padding:6px 10px;max-width:100%}
.vr-btn{font:inherit;color:inherit;cursor:pointer;border:1px solid rgba(128,128,128,.5);background:rgba(128,128,128,.14);border-radius:10px;padding:8px 14px}
.vr-btn:hover:not(:disabled){background:rgba(128,128,128,.28)}
.vr-btn:disabled{opacity:.45;cursor:not-allowed}
.vr-primary{background:#e53935;border-color:#e53935;color:#fff}
.vr-primary:hover:not(:disabled){background:#c62828}
.vr-time{font-size:44px;font-weight:700;text-align:center;font-variant-numeric:tabular-nums;margin:6px 0}
.vr-live,.vr-wave{display:block;width:100%;border-radius:10px;background:rgba(128,128,128,.12)}
.vr-live{height:64px}
.vr-wave{height:150px;cursor:crosshair;touch-action:none}
.vr-meterwrap{display:flex;align-items:center;gap:10px;margin:10px 0}
.vr-meter{flex:1;height:10px;border-radius:6px;background:rgba(128,128,128,.25);overflow:hidden}
.vr-bar{height:100%;width:0;background:#43a047}
.vr-db{min-width:64px;text-align:right;font-variant-numeric:tabular-nums;font-size:13px}
.vr-clipbox{background:#e53935;color:#fff;border-radius:8px;padding:6px 12px;margin:0 0 12px;font-weight:600}
.vr-msg{margin:0 0 10px;min-height:1.2em}
.vr-msg.vr-ok{color:#2e7d32}
.vr-msg.vr-err{color:#e53935}
.vr-msg.vr-warn{color:#ef6c00}
.vr-hint{font-size:13px;opacity:.75;margin:0 0 10px}
.vr-list{list-style:none;margin:0;padding:0}
.vr-item{display:flex;flex-wrap:wrap;gap:8px 12px;align-items:center;padding:10px 0;border-top:1px solid rgba(128,128,128,.25)}
.vr-name{flex:1 1 180px;min-width:0}
.vr-meta{flex:1 1 100%;font-size:13px;opacity:.75}
.vr-mn{flex:1 1 160px;min-width:0;overflow-wrap:anywhere}
.vr-chip{display:inline-flex;align-items:center;gap:4px}
@media (max-width:560px){.vr-time{font-size:36px}.vr-btn{padding:8px 10px}}
</style>

<script>
(function () {
'use strict';
var root = document.getElementById('vr-app');
if (!root) { return; }
function $(id) { return document.getElementById(id); }
function el(tag, cls, text) { var e = document.createElement(tag); if (cls) { e.className = cls; } if (text !== undefined && text !== null) { e.textContent = text; } return e; }
function btn(label, fn, cls) { var b = el('button', 'vr-btn' + (cls ? ' ' + cls : ''), label); b.type = 'button'; b.onclick = fn; return b; }
function pad(n, l) { var s = String(n); l = l || 2; while (s.length < l) { s = '0' + s; } return s; }
function fmtTime(sec, tenth) {
  sec = Math.max(0, sec || 0);
  var h = Math.floor(sec / 3600), m = Math.floor((sec % 3600) / 60), s = Math.floor(sec % 60), t = Math.floor((sec * 10) % 10);
  var out = (h ? pad(h) + ':' : '') + pad(m) + ':' + pad(s);
  if (tenth) { out += '.' + t; }
  return out;
}
function fmtSize(b) {
  b = b || 0;
  if (b < 1024) { return b + ' B'; }
  if (b < 1048576) { return (b / 1024).toFixed(1) + ' KB'; }
  if (b < 1073741824) { return (b / 1048576).toFixed(1) + ' MB'; }
  return (b / 1073741824).toFixed(2) + ' GB';
}
function fmtDate(ts) { var d = new Date(ts); return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) + ' ' + pad(d.getHours()) + ':' + pad(d.getMinutes()); }
function stamp(ts) { var d = new Date(ts); return d.getFullYear() + pad(d.getMonth() + 1) + pad(d.getDate()) + '-' + pad(d.getHours()) + pad(d.getMinutes()) + pad(d.getSeconds()); }
function extOf(m) {
  m = (m || '').toLowerCase();
  if (m.indexOf('wav') > -1) { return 'wav'; }
  if (m.indexOf('mpeg') > -1) { return 'mp3'; }
  if (m.indexOf('ogg') > -1) { return 'ogg'; }
  if (m.indexOf('mp4') > -1 || m.indexOf('aac') > -1) { return 'm4a'; }
  return 'webm';
}
function safeName(n) { return String(n).replace(/[\\\/:*?"<>|]+/g, '_').replace(/^\s+|\s+$/g, '') || 'recording'; }
function clamp(v, a, b) { return Math.max(a, Math.min(b, v)); }
function msg(id, text, kind) { var e = $(id); if (!e) { return; } e.textContent = text || ''; e.className = 'vr-msg' + (kind ? ' vr-' + kind : ''); }
function say(t, k) { msg('vr-msg', t, k); }
function lsay(t, k) { msg('vr-lmsg', t, k); }
function edsay(t, k) { msg('vr-edmsg', t, k); }
function msay(t, k) { msg('vr-mmsg', t, k); }
/* ---------- IndexedDB ---------- */
var idbOk = true, dbp = null;
function openDb() {
  if (dbp) { return dbp; }
  dbp = new Promise(function (res, rej) {
    if (!window.indexedDB) { rej(new Error('no-idb')); return; }
    var rq;
    try { rq = window.indexedDB.open('vr-recorder', 1); } catch (e) { rej(e); return; }
    rq.onupgradeneeded = function () {
      var db = rq.result;
      if (!db.objectStoreNames.contains('items')) { db.createObjectStore('items', { keyPath: 'id' }); }
      if (!db.objectStoreNames.contains('chunks')) { db.createObjectStore('chunks', { keyPath: 'key' }); }
    };
    rq.onsuccess = function () { res(rq.result); };
    rq.onerror = function () { rej(rq.error || new Error('idb-error')); };
    rq.onblocked = function () { rej(new Error('idb-blocked')); };
  });
  dbp.catch(function () { idbOk = false; var k = $('vr-keep'); k.checked = false; k.disabled = true; });
  return dbp;
}
function tx(store, mode, fn) {
  return openDb().then(function (db) {
    return new Promise(function (res, rej) {
      var t = db.transaction(store, mode), s = t.objectStore(store), r;
      try { r = fn(s); } catch (e) { rej(e); return; }
      t.oncomplete = function () { res(r ? r.result : undefined); };
      t.onerror = function () { rej(t.error); };
      t.onabort = function () { rej(t.error || new Error('abort')); };
    });
  });
}
function dbPut(store, val) { return tx(store, 'readwrite', function (s) { return s.put(val); }); }
function dbAll(store) { return tx(store, 'readonly', function (s) { return s.getAll(); }); }
function dbDel(store, key) { return tx(store, 'readwrite', function (s) { return s.delete(key); }); }
function clearChunks(sid) {
  if (!idbOk) { return Promise.resolve(); }
  return tx('chunks', 'readwrite', function (s) { return s.delete(IDBKeyRange.bound(sid + '#', sid + '#￿')); }).catch(function () {});
}
/* ---------- audio helpers ---------- */
var actx = null;
function ctx() {
  if (!actx) {
    var AC = window.AudioContext || window.webkitAudioContext;
    if (!AC) { throw new Error('no-audio'); }
    try { actx = new AC({ sampleRate: 48000 }); } catch (e) { actx = new AC(); }
  }
  return actx;
}
function blobToAB(b) {
  if (b.arrayBuffer) { return b.arrayBuffer(); }
  return new Promise(function (res, rej) { var fr = new FileReader(); fr.onload = function () { res(fr.result); }; fr.onerror = function () { rej(fr.error); }; fr.readAsArrayBuffer(b); });
}
function decodeBlob(blob) {
  return blobToAB(blob).then(function (ab) {
    var c = ctx();
    return new Promise(function (res, rej) {
      var p = c.decodeAudioData(ab, res, rej);
      if (p && p.catch) { p.catch(rej); }
    });
  });
}
function encodeWav(buf) {
  var ch = Math.min(buf.numberOfChannels, 2), len = buf.length, sr = buf.sampleRate, bytes = len * ch * 2;
  var ab = new ArrayBuffer(44 + bytes), dv = new DataView(ab);
  function ws(o, s) { for (var i = 0; i < s.length; i++) { dv.setUint8(o + i, s.charCodeAt(i)); } }
  ws(0, 'RIFF'); dv.setUint32(4, 36 + bytes, true); ws(8, 'WAVE'); ws(12, 'fmt ');
  dv.setUint32(16, 16, true); dv.setUint16(20, 1, true); dv.setUint16(22, ch, true);
  dv.setUint32(24, sr, true); dv.setUint32(28, sr * ch * 2, true); dv.setUint16(32, ch * 2, true); dv.setUint16(34, 16, true);
  ws(36, 'data'); dv.setUint32(40, bytes, true);
  var chans = [], c, i, o = 44, s;
  for (c = 0; c < ch; c++) { chans.push(buf.getChannelData(c)); }
  for (i = 0; i < len; i++) {
    for (c = 0; c < ch; c++) {
      s = Math.max(-1, Math.min(1, chans[c][i]));
      dv.setInt16(o, s < 0 ? s * 32768 : s * 32767, true);
      o += 2;
    }
  }
  return new Blob([ab], { type: 'audio/wav' });
}
function copyBuf(buf) {
  var o = ctx().createBuffer(buf.numberOfChannels, buf.length, buf.sampleRate);
  for (var c = 0; c < buf.numberOfChannels; c++) { o.getChannelData(c).set(buf.getChannelData(c)); }
  return o;
}
function fromSegments(buf, segs) {
  var sr = buf.sampleRate, ch = buf.numberOfChannels, total = 0, ranges = [], i, c, o;
  for (i = 0; i < segs.length; i++) {
    var a = Math.max(0, Math.round(segs[i][0] * sr)), b = Math.min(buf.length, Math.round(segs[i][1] * sr));
    if (b > a) { ranges.push([a, b]); total += b - a; }
  }
  if (!total) { return null; }
  var out = ctx().createBuffer(ch, total, sr);
  for (c = 0; c < ch; c++) {
    var src = buf.getChannelData(c), dst = out.getChannelData(c);
    o = 0;
    for (i = 0; i < ranges.length; i++) { dst.set(src.subarray(ranges[i][0], ranges[i][1]), o); o += ranges[i][1] - ranges[i][0]; }
  }
  return out;
}
function mapMarkers(ms, segs) {
  var out = [];
  (ms || []).forEach(function (m) {
    var off = 0, pos = null, i;
    for (i = 0; i < segs.length; i++) {
      var a = segs[i][0], b = segs[i][1];
      if (m.t >= a && m.t <= b) { pos = off + (m.t - a); break; }
      off += Math.max(0, b - a);
    }
    if (pos !== null) { out.push({ t: +pos.toFixed(2) }); }
  });
  return out;
}
function peakOf(buf) {
  var p = 0, c, i, d, v;
  for (c = 0; c < buf.numberOfChannels; c++) {
    d = buf.getChannelData(c);
    for (i = 0; i < d.length; i++) { v = d[i]; if (v < 0) { v = -v; } if (v > p) { p = v; } }
  }
  return p;
}
function silenceSegs(buf, thrDb, minSil) {
  var sr = buf.sampleRate, win = Math.max(1, Math.floor(sr * 0.01)), n = Math.floor(buf.length / win);
  var thr = Math.pow(10, thrDb / 20), ch = buf.numberOfChannels, chans = [], c, i, j, v, peak, s;
  for (c = 0; c < ch; c++) { chans.push(buf.getChannelData(c)); }
  var loud = new Uint8Array(n);
  for (i = 0; i < n; i++) {
    peak = 0; s = i * win;
    for (j = 0; j < win; j += 3) {
      for (c = 0; c < ch; c++) { v = chans[c][s + j]; if (v < 0) { v = -v; } if (v > peak) { peak = v; } }
    }
    loud[i] = peak >= thr ? 1 : 0;
  }
  var minWin = Math.round(minSil / 0.01), keepPad = 8, runs = [], runStart = -1;
  for (i = 0; i <= n; i++) {
    var silent = i < n && !loud[i];
    if (silent) { if (runStart < 0) { runStart = i; } }
    else if (runStart >= 0) { if (i - runStart >= minWin) { runs.push([runStart, i]); } runStart = -1; }
  }
  var removed = [];
  runs.forEach(function (r) { var a = (r[0] + keepPad) * 0.01, b = (r[1] - keepPad) * 0.01; if (b - a > 0.02) { removed.push([a, b]); } });
  var segs = [], cur = 0, dur = buf.duration;
  removed.forEach(function (r) { if (r[0] > cur) { segs.push([cur, r[0]]); } cur = r[1]; });
  if (cur < dur) { segs.push([cur, dur]); }
  return { segs: segs, removed: removed };
}
function computePeaks(buf, n) {
  var ch = buf.numberOfChannels, len = buf.length, step = len / n, mins = new Float32Array(n), maxs = new Float32Array(n), c, i, j, d, s, e, inc, v;
  for (c = 0; c < ch; c++) {
    d = buf.getChannelData(c);
    for (i = 0; i < n; i++) {
      s = Math.floor(i * step); e = Math.min(len, Math.floor((i + 1) * step));
      if (e <= s) { e = Math.min(len, s + 1); }
      inc = Math.max(1, Math.floor((e - s) / 200));
      for (j = s; j < e; j += inc) { v = d[j]; if (v < mins[i]) { mins[i] = v; } if (v > maxs[i]) { maxs[i] = v; } }
    }
  }
  return { mins: mins, maxs: maxs };
}
/* ---------- MP3 (lamejs is loaded only when needed) ---------- */
var lamePromise = null;
function loadLame() {
  if (window.lamejs) { return Promise.resolve(); }
  if (lamePromise) { return lamePromise; }
  var urls = ['https://cdnjs.cloudflare.com/ajax/libs/lamejs/1.2.1/lame.min.js', 'https://cdn.jsdelivr.net/npm/lamejs@1.2.1/lame.min.js'];
  lamePromise = new Promise(function (res, rej) {
    var i = 0;
    function next() {
      if (i >= urls.length) { lamePromise = null; rej(new Error('lame')); return; }
      var s = document.createElement('script');
      s.src = urls[i++]; s.async = true;
      s.onload = function () { if (window.lamejs) { res(); } else { next(); } };
      s.onerror = function () { if (s.parentNode) { s.parentNode.removeChild(s); } next(); };
      document.head.appendChild(s);
    }
    next();
  });
  return lamePromise;
}
function encodeMp3(buf, kbps, onProg) {
  return loadLame().then(function () {
    var ch = Math.min(2, buf.numberOfChannels), sr = buf.sampleRate, len = buf.length;
    var enc = new window.lamejs.Mp3Encoder(ch, sr, kbps), out = [], bs = 11520, pos = 0;
    var L = buf.getChannelData(0), R = ch > 1 ? buf.getChannelData(1) : null;
    function conv(a, s, e) { var o = new Int16Array(e - s), i, k = 0, v; for (i = s; i < e; i++) { v = Math.max(-1, Math.min(1, a[i])); o[k++] = v < 0 ? v * 32768 : v * 32767; } return o; }
    return new Promise(function (res) {
      function step() {
        var t0 = Date.now(), e, d;
        while (pos < len && Date.now() - t0 < 40) {
          e = Math.min(len, pos + bs);
          d = R ? enc.encodeBuffer(conv(L, pos, e), conv(R, pos, e)) : enc.encodeBuffer(conv(L, pos, e));
          if (d.length) { out.push(new Uint8Array(d)); }
          pos = e;
        }
        if (onProg) { onProg(pos / len); }
        if (pos < len) { setTimeout(step, 0); }
        else { var f = enc.flush(); if (f.length) { out.push(new Uint8Array(f)); } res(new Blob(out, { type: 'audio/mpeg' })); }
      }
      step();
    });
  });
}
function download(blob, name) {
  var a = document.createElement('a'), u = URL.createObjectURL(blob);
  a.href = u; a.download = name; a.style.display = 'none';
  document.body.appendChild(a); a.click();
  setTimeout(function () { if (a.parentNode) { a.parentNode.removeChild(a); } URL.revokeObjectURL(u); }, 5000);
}
/* ---------- state ---------- */
var items = [];
function byId(id) { for (var i = 0; i < items.length; i++) { if (items[i].id === id) { return items[i]; } } return null; }
function plain(it) { return { id: it.id, name: it.name, blob: it.blob, mime: it.mime, dur: it.dur, size: it.size, ts: it.ts, markers: it.markers || [] }; }
function persist(it) {
  if (!it.keep || !idbOk) { return Promise.resolve(); }
  return dbPut('items', plain(it)).then(function () {
    try { if (navigator.storage && navigator.storage.persist) { navigator.storage.persist(); } } catch (e) {}
  }).catch(function () { lsay('บันทึกลงเบราว์เซอร์ไม่ได้ (พื้นที่เต็มหรือถูกปิดไว้) กรุณาดาวน์โหลดไฟล์เก็บไว้', 'err'); });
}
function addItem(o) {
  var it = { id: 'r' + Date.now() + Math.floor(Math.random() * 1000), name: o.name, blob: o.blob, mime: (o.mime || 'audio/webm').split(';')[0], dur: o.dur || 0, size: o.blob.size, ts: o.ts || Date.now(), keep: idbOk && $('vr-keep').checked, markers: o.markers || [], hist: [], sel: false };
  items.unshift(it);
  it._p = persist(it);
  renderList();
  return it;
}
function removeItems(list) {
  list.forEach(function (it) {
    var i = items.indexOf(it);
    if (i > -1) { items.splice(i, 1); }
    if (it.keep && idbOk) { dbDel('items', it.id).catch(function () {}); }
    if (ed.id === it.id) { closeEditor(); }
  });
  renderList();
}
function renderList() {
  var ul = $('vr-list');
  ul.innerHTML = '';
  $('vr-empty').hidden = items.length > 0;
  items.forEach(function (it) {
    var li = el('li', 'vr-item');
    var chk = el('input'); chk.type = 'checkbox'; chk.checked = !!it.sel; chk.setAttribute('aria-label', 'เลือก ' + it.name);
    chk.onchange = function () { it.sel = chk.checked; updateBulk(); };
    var nm = el('input', 'vr-name'); nm.type = 'text'; nm.value = it.name; nm.setAttribute('aria-label', 'ชื่อไฟล์');
    nm.onchange = function () {
      var v = nm.value.replace(/^\s+|\s+$/g, '');
      if (v) { it.name = v; persist(it); if (ed.id === it.id) { $('vr-edname').textContent = v; } } else { nm.value = it.name; }
    };
    li.appendChild(chk); li.appendChild(nm);
    li.appendChild(btn('แก้ไข / ฟัง', function () { openEditor(it.id); }));
    li.appendChild(btn('ดาวน์โหลด', function () { exportOne(it); }));
    li.appendChild(btn('ลบ', function () { if (window.confirm('ลบ ' + it.name + ' ?')) { removeItems([it]); } }));
    li.appendChild(el('div', 'vr-meta', fmtTime(it.dur) + ' · ' + fmtSize(it.size) + ' · ' + extOf(it.mime).toUpperCase() + ' · ' + fmtDate(it.ts) + ' · ' + (it.keep ? 'เก็บในเบราว์เซอร์' : 'ชั่วคราว (หายเมื่อรีโหลด)') + (it.markers && it.markers.length ? ' · หมุด ' + it.markers.length : '')));
    ul.appendChild(li);
  });
  updateBulk(); updateStorage();
}
function selected() { return items.filter(function (i) { return i.sel; }); }
function updateBulk() {
  var n = selected().length;
  $('vr-dlsel').disabled = n < 1; $('vr-delsel').disabled = n < 1; $('vr-mergebtn').disabled = n < 2;
  $('vr-all').checked = items.length > 0 && n === items.length;
  $('vr-kbl').hidden = $('vr-fmt').value !== 'mp3';
}
function updateStorage() {
  var sz = 0; items.forEach(function (i) { sz += i.size; });
  var t = items.length + ' ไฟล์ · ' + fmtSize(sz), p = $('vr-store');
  p.textContent = t;
  try {
    if (navigator.storage && navigator.storage.estimate) {
      navigator.storage.estimate().then(function (e) { if (e && e.quota) { p.textContent = t + ' · เบราว์เซอร์ใช้พื้นที่ ' + fmtSize(e.usage || 0) + ' จาก ' + fmtSize(e.quota); } }).catch(function () {});
    }
  } catch (e) {}
}
/* ---------- export ---------- */
function exportBlob(it) {
  var fmt = $('vr-fmt').value;
  if (fmt === 'orig' || (fmt === 'wav' && it.mime === 'audio/wav')) { return Promise.resolve({ blob: it.blob, ext: extOf(it.mime) }); }
  return decodeBlob(it.blob).then(function (buf) {
    if (fmt === 'wav') { return { blob: encodeWav(buf), ext: 'wav' }; }
    return encodeMp3(buf, parseInt($('vr-kbps').value, 10) || 192, function (p) { lsay('กำลังแปลงเป็น MP3 ' + Math.round(p * 100) + '%'); }).then(function (b) { return { blob: b, ext: 'mp3' }; }).catch(function (e) {
      if (e && e.message === 'lame') { return { blob: encodeWav(buf), ext: 'wav', note: 'โหลดตัวเข้ารหัส MP3 ไม่ได้ จึงบันทึกเป็น WAV แทน' }; }
      throw e;
    });
  });
}
function exportOne(it) {
  lsay('กำลังเตรียมไฟล์...');
  return exportBlob(it).then(function (r) {
    var name = safeName(it.name) + '.' + r.ext;
    download(r.blob, name);
    lsay('ดาวน์โหลดแล้ว: ' + name + (r.note ? ' (' + r.note + ')' : ''), r.note ? 'warn' : 'ok');
  }).catch(function (e) { lsay('เตรียมไฟล์ไม่สำเร็จ: ' + ((e && e.message) || 'ถอดรหัสเสียงไม่ได้'), 'err'); });
}
function exportSelected() {
  var list = selected(), i = 0;
  function next() { if (i >= list.length) { return; } var it = list[i++]; exportOne(it).then(function () { setTimeout(next, 500); }); }
  next();
}
/* ---------- microphone and level meter ---------- */
function errText(e) {
  var n = e && e.name;
  if (n === 'Insecure') { return 'ต้องเปิดหน้านี้ผ่าน HTTPS จึงจะใช้ไมโครโฟนได้'; }
  if (n === 'Unsupported') { return 'เบราว์เซอร์นี้ไม่รองรับการเข้าถึงไมโครโฟน'; }
  if (n === 'NotAllowedError' || n === 'SecurityError') { return 'ไม่ได้รับอนุญาตให้ใช้ไมโครโฟน กดไอคอนแม่กุญแจข้างช่องที่อยู่เว็บ แล้วเลือกอนุญาตไมโครโฟน'; }
  if (n === 'NotFoundError' || n === 'OverconstrainedError') { return 'ไม่พบไมโครโฟนที่เลือก ลองเสียบอุปกรณ์ใหม่ หรือเลือก ไมโครโฟนเริ่มต้น'; }
  if (n === 'NotReadableError' || n === 'AbortError') { return 'เปิดไมโครโฟนไม่ได้ อาจมีแอปอื่นกำลังใช้งานอยู่ ปิดแอปนั้นแล้วลองใหม่'; }
  return 'เปิดไมโครโฟนไม่สำเร็จ: ' + ((e && e.message) || n || 'ไม่ทราบสาเหตุ');
}
function getStream() {
  if (window.isSecureContext === false) { return Promise.reject({ name: 'Insecure' }); }
  if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) { return Promise.reject({ name: 'Unsupported' }); }
  var a = { noiseSuppression: $('vr-ns').checked, echoCancellation: $('vr-ec').checked, autoGainControl: $('vr-agc').checked };
  var id = $('vr-dev').value;
  if (id) { a.deviceId = { exact: id }; }
  return navigator.mediaDevices.getUserMedia({ audio: a });
}
function loadDevices() {
  if (!navigator.mediaDevices || !navigator.mediaDevices.enumerateDevices) { return Promise.resolve(); }
  return navigator.mediaDevices.enumerateDevices().then(function (list) {
    var sel = $('vr-dev'), cur = sel.value, n = 0;
    sel.innerHTML = '';
    var d0 = el('option', '', 'ไมโครโฟนเริ่มต้น'); d0.value = ''; sel.appendChild(d0);
    list.forEach(function (d) {
      if (d.kind === 'audioinput' && d.deviceId && d.deviceId !== 'default' && d.deviceId !== 'communications') {
        n++;
        var op = el('option', '', d.label || ('ไมโครโฟน ' + n)); op.value = d.deviceId; sel.appendChild(op);
      }
    });
    sel.value = cur;
    if (sel.selectedIndex < 0) { sel.selectedIndex = 0; }
  }).catch(function () {});
}
var meter = { ctx: null, src: null, an: null, data: null, raf: 0, clipAt: 0 };
function stopMeter() {
  if (meter.raf) { cancelAnimationFrame(meter.raf); meter.raf = 0; }
  try { if (meter.src) { meter.src.disconnect(); } } catch (e) {}
  try { if (meter.ctx && meter.ctx.close) { meter.ctx.close(); } } catch (e2) {}
  meter.ctx = null; meter.src = null; meter.an = null;
  $('vr-bar').style.width = '0%'; $('vr-db').textContent = '-∞ dB'; $('vr-clip').hidden = true;
  var cv = $('vr-live'), g = cv.getContext('2d'); if (g) { g.clearRect(0, 0, cv.width, cv.height); }
}
function startMeter(stream) {
  stopMeter();
  var AC = window.AudioContext || window.webkitAudioContext;
  if (!AC) { return; }
  try {
    meter.ctx = new AC();
    if (meter.ctx.resume) { meter.ctx.resume(); }
    meter.src = meter.ctx.createMediaStreamSource(stream);
    meter.an = meter.ctx.createAnalyser(); meter.an.fftSize = 1024;
    meter.src.connect(meter.an);
    meter.data = new Uint8Array(meter.an.fftSize);
    drawLive();
  } catch (e) { meter.ctx = null; }
}
function drawLive() {
  if (!meter.an) { return; }
  var cv = $('vr-live'), g = cv.getContext('2d'), w = cv.width, h = cv.height, i, v, a, peak = 0, x, y;
  meter.an.getByteTimeDomainData(meter.data);
  g.clearRect(0, 0, w, h);
  g.lineWidth = 2; g.strokeStyle = (rec && rec.state === 'recording') ? '#e53935' : '#1e88e5';
  g.beginPath();
  for (i = 0; i < meter.data.length; i++) {
    v = (meter.data[i] - 128) / 128; a = v < 0 ? -v : v; if (a > peak) { peak = a; }
    x = i / (meter.data.length - 1) * w; y = h / 2 + v * h / 2 * 0.95;
    if (i === 0) { g.moveTo(x, y); } else { g.lineTo(x, y); }
  }
  g.stroke();
  var db = peak > 0.0001 ? 20 * Math.log10(peak) : -90, pct = clamp((db + 60) / 60 * 100, 0, 100), bar = $('vr-bar');
  bar.style.width = pct + '%'; bar.style.background = pct > 92 ? '#e53935' : (pct > 75 ? '#fdd835' : '#43a047');
  $('vr-db').textContent = (db > -89 ? Math.round(db) : '-∞') + ' dB';
  if (peak >= 0.99) { meter.clipAt = Date.now(); }
  $('vr-clip').hidden = Date.now() - meter.clipAt > 1500;
  meter.raf = requestAnimationFrame(drawLive);
}
var testing = false, testStream = null;
function stopTest() {
  if (testStream) { testStream.getTracks().forEach(function (t) { t.stop(); }); testStream = null; }
  testing = false; stopMeter(); $('vr-test').textContent = 'ทดสอบไมค์';
}
function startTest() {
  getStream().then(function (s) {
    testStream = s; testing = true; startMeter(s);
    $('vr-test').textContent = 'หยุดทดสอบ';
    say('กำลังทดสอบ พูดใกล้ไมค์แล้วดูแถบระดับเสียง (ยังไม่มีการบันทึก)');
    loadDevices();
  }).catch(function (e) { say(errText(e), 'err'); });
}
$('vr-test').onclick = function () { if (rec) { return; } if (testing) { stopTest(); say(''); } else { startTest(); } };
['vr-dev', 'vr-ns', 'vr-ec', 'vr-agc'].forEach(function (id) { $(id).onchange = function () { if (testing) { stopTest(); startTest(); } }; });
/* ---------- recorder ---------- */
var rec = null, stream = null, sid = '', chunks = [], seq = 0, segStart = 0, acc = 0, timer = 0, markersNow = [], recMime = '', wakeLock = null, recStartTs = 0, finalDur = 0;
function pickMime() {
  if (!window.MediaRecorder) { return null; }
  var c = ['audio/webm;codecs=opus', 'audio/webm', 'audio/ogg;codecs=opus', 'audio/mp4;codecs=mp4a.40.2', 'audio/mp4'], i;
  for (i = 0; i < c.length; i++) { if (MediaRecorder.isTypeSupported && MediaRecorder.isTypeSupported(c[i])) { return c[i]; } }
  return '';
}
function elapsed() { return (acc + (rec && rec.state === 'recording' ? performance.now() - segStart : 0)) / 1000; }
function tick() { $('vr-time').textContent = fmtTime(elapsed(), true); }
function setUi(state) {
  var on = state !== 'idle';
  $('vr-rec').disabled = on; $('vr-pause').disabled = !on; $('vr-stop').disabled = !on; $('vr-mark').disabled = !on;
  $('vr-pause').textContent = state === 'pause' ? '▶ อัดต่อ' : '⏸ หยุดชั่วคราว';
  $('vr-rec').textContent = on ? '● กำลังอัด...' : '● เริ่มอัด';
  ['vr-dev', 'vr-ns', 'vr-ec', 'vr-agc', 'vr-test'].forEach(function (id) { $(id).disabled = on; });
  $('vr-mark').textContent = '⚑ ปักหมุด' + (on && markersNow.length ? ' (' + markersNow.length + ')' : '');
}
function lockScreen() {
  try {
    if (navigator.wakeLock && navigator.wakeLock.request) {
      navigator.wakeLock.request('screen').then(function (l) { wakeLock = l; if (l.addEventListener) { l.addEventListener('release', function () { wakeLock = null; }); } }).catch(function () {});
    }
  } catch (e) {}
}
function unlockScreen() { try { if (wakeLock) { wakeLock.release(); } } catch (e) {} wakeLock = null; }
document.addEventListener('visibilitychange', function () { if (document.visibilityState === 'visible' && rec && !wakeLock) { lockScreen(); } });
window.addEventListener('beforeunload', function (e) {
  var unsaved = items.some(function (i) { return !i.keep; });
  if (rec || unsaved) { e.preventDefault(); e.returnValue = ''; }
});
function onChunk(e) {
  if (!e.data || !e.data.size) { return; }
  chunks.push(e.data);
  if (idbOk && $('vr-keep').checked) { dbPut('chunks', { key: sid + '#' + pad(seq, 6), sid: sid, n: seq, blob: e.data, mime: recMime, ts: recStartTs }).catch(function () {}); }
  seq++;
}
function releaseStream() { if (stream) { stream.getTracks().forEach(function (t) { t.onended = null; t.stop(); }); stream = null; } }
function onStop() {
  clearInterval(timer);
  var blob = new Blob(chunks, { type: recMime }), dur = finalDur, mk = markersNow.slice(), s0 = sid, ts = recStartTs;
  releaseStream(); stopMeter(); unlockScreen();
  rec = null; chunks = []; markersNow = []; setUi('idle'); $('vr-time').textContent = '00:00.0';
  if (!blob.size) { say('ไม่พบข้อมูลเสียง ลองอัดใหม่อีกครั้ง', 'err'); clearChunks(s0); return; }
  var it = addItem({ name: 'บันทึกเสียง-' + stamp(ts), blob: blob, mime: recMime, dur: dur, markers: mk, ts: ts });
  Promise.resolve(it._p).then(function () { clearChunks(s0); });
  say('บันทึกเรียบร้อย ' + fmtTime(dur) + ' ไฟล์อยู่ในรายการด้านล่าง', 'ok');
}
function startRec() {
  if (rec) { return; }
  if (!window.MediaRecorder) { say('เบราว์เซอร์นี้ไม่รองรับการอัดเสียง กรุณาใช้ Chrome, Edge, Firefox หรือ Safari เวอร์ชันล่าสุด', 'err'); return; }
  if (testing) { stopTest(); }
  getStream().then(function (s) {
    stream = s;
    var mime = pickMime(), r;
    try { r = mime ? new MediaRecorder(s, { mimeType: mime }) : new MediaRecorder(s); } catch (e) { r = new MediaRecorder(s); }
    rec = r; recMime = r.mimeType || mime || 'audio/webm';
    sid = 's' + Date.now(); chunks = []; seq = 0; acc = 0; markersNow = []; recStartTs = Date.now();
    r.ondataavailable = onChunk; r.onstop = onStop;
    r.onerror = function (ev) { say('การอัดเสียงผิดพลาด: ' + ((ev && ev.error && ev.error.message) || 'ไม่ทราบสาเหตุ'), 'err'); };
    var tr = s.getAudioTracks()[0];
    if (tr) { tr.onended = function () { if (rec) { stopRec(); say('ไมโครโฟนถูกตัดการเชื่อมต่อ ระบบบันทึกส่วนที่อัดไว้แล้ว', 'warn'); } }; }
    r.start(1000);
    segStart = performance.now(); tick(); timer = setInterval(tick, 100);
    startMeter(s); lockScreen(); setUi('rec'); loadDevices(); say('');
  }).catch(function (e) { say(errText(e), 'err'); });
}
function stopRec() {
  if (!rec) { return; }
  finalDur = elapsed();
  if (rec.state !== 'inactive') { rec.stop(); }
}
function togglePause() {
  if (!rec) { return; }
  if (rec.state === 'recording') { rec.pause(); acc += performance.now() - segStart; clearInterval(timer); tick(); setUi('pause'); }
  else if (rec.state === 'paused') { rec.resume(); segStart = performance.now(); timer = setInterval(tick, 100); setUi('rec'); }
}
function addMarkerNow() {
  if (!rec) { return; }
  var t = +elapsed().toFixed(2);
  markersNow.push({ t: t });
  setUi(rec.state === 'paused' ? 'pause' : 'rec');
  say('ปักหมุดที่ ' + fmtTime(t, true), 'ok');
}
$('vr-rec').onclick = startRec; $('vr-stop').onclick = stopRec; $('vr-pause').onclick = togglePause; $('vr-mark').onclick = addMarkerNow;
document.addEventListener('keydown', function (e) {
  var t = e.target, tag = t && t.tagName;
  if (e.ctrlKey || e.metaKey || e.altKey || tag === 'INPUT' || tag === 'TEXTAREA' || tag === 'SELECT') { return; }
  var k = (e.key || '').toLowerCase();
  if (k === 'r') { startRec(); } else if (k === 'p') { togglePause(); } else if (k === 's') { stopRec(); } else if (k === 'm') { addMarkerNow(); }
});
/* ---------- crash recovery ---------- */
var recoverGroups = [];
function checkRecover() {
  dbAll('chunks').then(function (all) {
    if (!all || !all.length) { return; }
    var map = {};
    all.forEach(function (c) { (map[c.sid] = map[c.sid] || []).push(c); });
    recoverGroups = Object.keys(map).map(function (k) { return map[k]; });
    $('vr-rcvt').textContent = 'พบการอัดที่ค้างอยู่ ' + recoverGroups.length + ' รายการ (เช่น แท็บหรือเบราว์เซอร์ถูกปิดก่อนกดหยุด) ต้องการกู้คืนหรือไม่';
    $('vr-rcv').hidden = false;
  }).catch(function () {});
}
function discardRecover() { var g = recoverGroups; recoverGroups = []; $('vr-rcv').hidden = true; g.forEach(function (list) { clearChunks(list[0].sid); }); }
$('vr-rcvn').onclick = discardRecover;
$('vr-rcvy').onclick = function () {
  var g = recoverGroups; recoverGroups = []; $('vr-rcv').hidden = true;
  g.forEach(function (list) {
    list.sort(function (a, b) { return a.n - b.n; });
    var mime = list[0].mime || 'audio/webm', blob = new Blob(list.map(function (c) { return c.blob; }), { type: mime }), ts = list[0].ts || Date.now(), s0 = list[0].sid;
    decodeBlob(blob).then(function (b) { return b.duration; }).catch(function () { return 0; }).then(function (d) {
      var it = addItem({ name: 'กู้คืน-' + stamp(ts), blob: blob, mime: mime, dur: d, ts: ts });
      Promise.resolve(it._p).then(function () { clearChunks(s0); });
      say('กู้คืนการอัดที่ค้างอยู่แล้ว', 'ok');
    });
  });
};
/* ---------- editor ---------- */
var ed = { id: null, buf: null, peaks: null, pw: 0, sel: null, head: 0, playing: false, src: null, t0: 0, from: 0, to: 0, raf: 0 };
function curItem() { return ed.id ? byId(ed.id) : null; }
function closeEditor() { stopPlay(false); ed.id = null; ed.buf = null; ed.peaks = null; ed.sel = null; ed.head = 0; $('vr-ed').hidden = true; edsay(''); }
function openEditor(id) {
  var it = byId(id);
  if (!it) { return; }
  stopPlay(false);
  $('vr-ed').hidden = false; $('vr-edname').textContent = it.name; edsay('กำลังโหลดคลื่นเสียง...');
  decodeBlob(it.blob).then(function (buf) {
    ed.id = id; ed.buf = buf; ed.peaks = null; ed.sel = null; ed.head = 0;
    if (Math.abs((it.dur || 0) - buf.duration) > 0.05) { it.dur = buf.duration; persist(it); renderList(); }
    edsay(''); drawWave(); updateEdUi();
    if ($('vr-ed').scrollIntoView) { $('vr-ed').scrollIntoView({ behavior: 'smooth', block: 'nearest' }); }
  }).catch(function () { ed.id = null; ed.buf = null; edsay('เบราว์เซอร์นี้ถอดรหัสไฟล์นี้ไม่ได้ จึงแก้ไขไม่ได้ แต่ยังดาวน์โหลดไฟล์ต้นฉบับได้', 'err'); });
}
function drawWave() {
  var cv = $('vr-wave');
  if (!ed.buf) { return; }
  var dpr = window.devicePixelRatio || 1, w = Math.max(200, Math.floor((cv.clientWidth || 800) * dpr)), h = Math.max(60, Math.floor((cv.clientHeight || 150) * dpr));
  if (cv.width !== w || cv.height !== h) { cv.width = w; cv.height = h; ed.peaks = null; }
  if (!ed.peaks || ed.pw !== w) { ed.peaks = computePeaks(ed.buf, w); ed.pw = w; }
  var g = cv.getContext('2d'), dur = ed.buf.duration, mid = h / 2, i, x;
  g.clearRect(0, 0, w, h);
  if (ed.sel) { g.fillStyle = 'rgba(30,136,229,0.25)'; g.fillRect(ed.sel[0] / dur * w, 0, (ed.sel[1] - ed.sel[0]) / dur * w, h); }
  g.fillStyle = '#1e88e5';
  for (i = 0; i < w; i++) { var y1 = mid - ed.peaks.maxs[i] * mid * 0.95, y2 = mid - ed.peaks.mins[i] * mid * 0.95; g.fillRect(i, y1, 1, Math.max(1, y2 - y1)); }
  var it = curItem();
  if (it && it.markers) { g.fillStyle = '#ef6c00'; it.markers.forEach(function (m) { g.fillRect(Math.round(m.t / dur * w), 0, Math.max(1, dpr), h); }); }
  x = ed.head / dur * w; g.fillStyle = '#e53935'; g.fillRect(x, 0, Math.max(2, dpr * 1.5), h);
}
function updateEdUi() {
  var has = !!ed.buf, it = curItem();
  $('vr-cut').disabled = !(has && ed.sel); $('vr-trim').disabled = !(has && ed.sel);
  $('vr-undo').disabled = !(it && it.hist && it.hist.length);
  var info = has ? ('ความยาว ' + fmtTime(ed.buf.duration, true) + ' · ตำแหน่งเล่น ' + fmtTime(ed.head, true) + (ed.sel ? ' · เลือก ' + fmtTime(ed.sel[0], true) + ' - ' + fmtTime(ed.sel[1], true) : '') + ' · ' + ed.buf.numberOfChannels + ' ช่อง · ' + Math.round(ed.buf.sampleRate) + ' Hz') : 'ลากบนคลื่นเสียงเพื่อเลือกช่วง คลิกเพื่อกำหนดตำแหน่งเล่น';
  $('vr-edinfo').textContent = info;
  var box = $('vr-mks'); box.innerHTML = '';
  if (it && it.markers && it.markers.length) {
    box.appendChild(el('span', 'vr-hint', 'หมุด:'));
    it.markers.forEach(function (m, idx) {
      var chip = el('span', 'vr-chip');
      chip.appendChild(btn('⚑ ' + fmtTime(m.t, true), function () { stopPlay(false); ed.head = m.t; drawWave(); updateEdUi(); }));
      chip.appendChild(btn('×', function () { it.markers.splice(idx, 1); persist(it); renderList(); drawWave(); updateEdUi(); }));
      box.appendChild(chip);
    });
  }
}
function stopPlay(keep) {
  if (ed.src) {
    var s = ed.src; ed.src = null; s.onended = null;
    try { s.stop(); } catch (e) {}
    if (ed.playing && keep) { ed.head = Math.min(ed.to, ed.from + (ctx().currentTime - ed.t0)); }
  }
  ed.playing = false;
  if (ed.raf) { cancelAnimationFrame(ed.raf); ed.raf = 0; }
  $('vr-play').textContent = '▶ เล่น';
  if (ed.buf) { drawWave(); updateEdUi(); }
}
function playLoop() {
  if (!ed.playing) { return; }
  ed.head = Math.min(ed.to, ed.from + (ctx().currentTime - ed.t0));
  drawWave(); $('vr-edinfo').textContent = 'กำลังเล่น ' + fmtTime(ed.head, true) + ' / ' + fmtTime(ed.buf.duration, true);
  ed.raf = requestAnimationFrame(playLoop);
}
function play() {
  if (!ed.buf) { return; }
  var c = ctx();
  if (c.state === 'suspended' && c.resume) { c.resume(); }
  stopPlay(false);
  var dur = ed.buf.duration, from = ed.sel ? ed.sel[0] : ed.head, to = ed.sel ? ed.sel[1] : dur;
  if (from >= dur - 0.01) { from = 0; }
  var s = c.createBufferSource(); s.buffer = ed.buf; s.connect(c.destination);
  s.onended = function () {
    if (ed.src === s) { ed.src = null; ed.playing = false; ed.head = to >= dur - 0.01 ? 0 : to; if (ed.raf) { cancelAnimationFrame(ed.raf); ed.raf = 0; } $('vr-play').textContent = '▶ เล่น'; drawWave(); updateEdUi(); }
  };
  s.start(0, from, Math.max(0.01, to - from));
  ed.src = s; ed.from = from; ed.to = to; ed.t0 = c.currentTime; ed.playing = true;
  $('vr-play').textContent = '⏸ หยุด';
  playLoop();
}
function commit(buf, markers, text) {
  var it = curItem();
  if (!it) { return; }
  var blob = encodeWav(buf);
  it.hist.push({ blob: it.blob, mime: it.mime, dur: it.dur, size: it.size, markers: it.markers });
  if (it.hist.length > 10) { it.hist.shift(); }
  it.blob = blob; it.mime = 'audio/wav'; it.dur = buf.duration; it.size = blob.size; it.markers = markers || [];
  ed.buf = buf; ed.peaks = null; ed.sel = null; ed.head = Math.min(ed.head, buf.duration);
  persist(it); renderList(); drawWave(); updateEdUi(); edsay(text, 'ok');
}
function guard(fn) { return function () { if (!ed.buf) { return; } try { fn(); } catch (e) { edsay('ทำรายการไม่สำเร็จ: ' + ((e && e.message) || 'ข้อผิดพลาด'), 'err'); } }; }
function posToTime(e) { var r = $('vr-wave').getBoundingClientRect(); return clamp((e.clientX - r.left) / Math.max(1, r.width), 0, 1) * ed.buf.duration; }
(function () {
  var cv = $('vr-wave'), drag = null;
  cv.addEventListener('pointerdown', function (e) {
    if (!ed.buf) { return; }
    try { cv.setPointerCapture(e.pointerId); } catch (x) {}
    drag = { x: e.clientX, t: posToTime(e), moved: false };
  });
  cv.addEventListener('pointermove', function (e) {
    if (!drag || !ed.buf) { return; }
    if (Math.abs(e.clientX - drag.x) > 3) { drag.moved = true; }
    if (drag.moved) { var t = posToTime(e); ed.sel = [Math.min(drag.t, t), Math.max(drag.t, t)]; drawWave(); updateEdUi(); }
  });
  function end() {
    if (!drag || !ed.buf) { drag = null; return; }
    if (!drag.moved) { var wasPlaying = ed.playing; stopPlay(false); ed.sel = null; ed.head = drag.t; drawWave(); updateEdUi(); if (wasPlaying) { play(); } }
    else if (ed.sel && ed.sel[1] - ed.sel[0] < 0.02) { ed.sel = null; drawWave(); updateEdUi(); }
    drag = null;
  }
  cv.addEventListener('pointerup', end); cv.addEventListener('pointercancel', end);
})();
var rsz = 0;
window.addEventListener('resize', function () { clearTimeout(rsz); rsz = setTimeout(function () { if (ed.buf) { ed.peaks = null; drawWave(); } }, 150); });
$('vr-edclose').onclick = closeEditor;
$('vr-play').onclick = function () { if (!ed.buf) { return; } if (ed.playing) { stopPlay(true); } else { play(); } };
$('vr-cut').onclick = guard(function () {
  if (!ed.sel) { return; }
  var d = ed.buf.duration, segs = [[0, ed.sel[0]], [ed.sel[1], d]], nb = fromSegments(ed.buf, segs);
  if (!nb) { edsay('ตัดทั้งไฟล์ไม่ได้ ถ้าต้องการลบไฟล์ให้ใช้ปุ่มลบในรายการ', 'err'); return; }
  stopPlay(false); commit(nb, mapMarkers(curItem().markers, segs), 'ตัดส่วนที่เลือกออกแล้ว');
});
$('vr-trim').onclick = guard(function () {
  if (!ed.sel) { return; }
  var segs = [[ed.sel[0], ed.sel[1]]], nb = fromSegments(ed.buf, segs);
  if (!nb) { return; }
  stopPlay(false); commit(nb, mapMarkers(curItem().markers, segs), 'เก็บเฉพาะส่วนที่เลือกแล้ว');
});
$('vr-split').onclick = guard(function () {
  var it = curItem(), d = ed.buf.duration, h = ed.head;
  if (h <= 0.05 || h >= d - 0.05) { edsay('คลิกบนคลื่นเสียงเพื่อเลือกตำแหน่งกลางไฟล์ก่อน แล้วค่อยแยกไฟล์', 'err'); return; }
  var s1 = [[0, h]], s2 = [[h, d]], b1 = fromSegments(ed.buf, s1), b2 = fromSegments(ed.buf, s2);
  stopPlay(false);
  addItem({ name: it.name + ' (ส่วนที่ 2)', blob: encodeWav(b2), mime: 'audio/wav', dur: b2.duration, markers: mapMarkers(it.markers, s2) });
  commit(b1, mapMarkers(it.markers, s1), 'แยกเป็นสองไฟล์แล้ว ส่วนหลังอยู่ในรายการด้านล่าง');
});
function applyGain(g) {
  var nb = copyBuf(ed.buf), c, i, d, v;
  for (c = 0; c < nb.numberOfChannels; c++) { d = nb.getChannelData(c); for (i = 0; i < d.length; i++) { v = d[i] * g; d[i] = v > 1 ? 1 : (v < -1 ? -1 : v); } }
  return nb;
}
$('vr-norm').onclick = guard(function () {
  var p = peakOf(ed.buf);
  if (p < 0.0001) { edsay('ไฟล์นี้เงียบเกินไป ปรับระดับเสียงไม่ได้', 'err'); return; }
  stopPlay(false); commit(applyGain(0.891 / p), curItem().markers, 'Normalize แล้ว (ยอดคลื่นอยู่ที่ประมาณ -1 dB)');
});
$('vr-gainb').onclick = guard(function () {
  var db = parseFloat($('vr-gain').value);
  if (!db) { edsay('ใส่ค่า dB ที่ไม่ใช่ 0 เช่น 3 หรือ -3', 'err'); return; }
  db = clamp(db, -30, 30);
  var g = Math.pow(10, db / 20), over = peakOf(ed.buf) * g > 1;
  stopPlay(false); commit(applyGain(g), curItem().markers, 'ปรับความดัง ' + (db > 0 ? '+' : '') + db + ' dB แล้ว' + (over ? ' (บางช่วงอาจแตก ลองลดค่าหรือใช้ Normalize)' : ''));
});
$('vr-fade').onclick = guard(function () {
  var dur = ed.buf.duration, fi = clamp(parseFloat($('vr-fin').value) || 0, 0, dur / 2), fo = clamp(parseFloat($('vr-fout').value) || 0, 0, dur / 2);
  if (!fi && !fo) { edsay('ใส่เวลา Fade In หรือ Fade Out อย่างน้อยหนึ่งค่า', 'err'); return; }
  var nb = copyBuf(ed.buf), sr = nb.sampleRate, ni = Math.round(fi * sr), no = Math.round(fo * sr), c, i, d, len = nb.length;
  for (c = 0; c < nb.numberOfChannels; c++) {
    d = nb.getChannelData(c);
    for (i = 0; i < ni; i++) { d[i] *= i / ni; }
    for (i = 0; i < no; i++) { d[len - 1 - i] *= i / no; }
  }
  stopPlay(false); commit(nb, curItem().markers, 'ใส่ Fade แล้ว');
});
$('vr-sil').onclick = guard(function () {
  var thr = clamp(parseFloat($('vr-thr').value) || -45, -80, -10), ms = clamp(parseFloat($('vr-minsil').value) || 0.6, 0.2, 5);
  edsay('กำลังวิเคราะห์ช่วงเงียบ...');
  var r = silenceSegs(ed.buf, thr, ms);
  if (!r.removed.length) { edsay('ไม่พบช่วงเงียบตามเกณฑ์ที่ตั้ง ลองปรับเกณฑ์ให้เงียบน้อยลง (เช่น -35 dB) หรือลดเวลาขั้นต่ำ', 'warn'); return; }
  var nb = fromSegments(ed.buf, r.segs), total = 0;
  r.removed.forEach(function (x) { total += x[1] - x[0]; });
  if (!nb) { edsay('ทั้งไฟล์เงียบตามเกณฑ์นี้ ลองปรับเกณฑ์ใหม่', 'warn'); return; }
  stopPlay(false); commit(nb, mapMarkers(curItem().markers, r.segs), 'ลบช่วงเงียบ ' + r.removed.length + ' ช่วง รวม ' + total.toFixed(1) + ' วินาที');
});
$('vr-undo').onclick = function () {
  var it = curItem();
  if (!it || !it.hist.length) { return; }
  var h = it.hist.pop();
  stopPlay(false);
  it.blob = h.blob; it.mime = h.mime; it.dur = h.dur; it.size = h.size; it.markers = h.markers;
  persist(it); renderList();
  decodeBlob(it.blob).then(function (b) { ed.buf = b; ed.peaks = null; ed.sel = null; ed.head = Math.min(ed.head, b.duration); drawWave(); updateEdUi(); edsay('เลิกทำแล้ว', 'ok'); }).catch(function () { edsay('เลิกทำแล้ว แต่โหลดคลื่นเสียงใหม่ไม่ได้', 'warn'); });
};
$('vr-addmk').onclick = guard(function () {
  var it = curItem();
  it.markers = it.markers || [];
  it.markers.push({ t: +ed.head.toFixed(2) }); it.markers.sort(function (a, b) { return a.t - b.t; });
  persist(it); renderList(); drawWave(); updateEdUi(); edsay('ปักหมุดที่ ' + fmtTime(ed.head, true), 'ok');
});
/* ---------- merge ---------- */
var mq = [];
function renderMerge() {
  var ol = $('vr-mlist');
  ol.innerHTML = '';
  mq.forEach(function (it, i) {
    var li = el('li', 'vr-item');
    li.appendChild(el('span', '', (i + 1) + '.'));
    li.appendChild(el('span', 'vr-mn', it.name));
    li.appendChild(el('span', 'vr-hint', fmtTime(it.dur)));
    var up = btn('▲', function () { var t = mq[i - 1]; mq[i - 1] = mq[i]; mq[i] = t; renderMerge(); }); up.disabled = i === 0; up.setAttribute('aria-label', 'เลื่อนขึ้น');
    var dn = btn('▼', function () { var t = mq[i + 1]; mq[i + 1] = mq[i]; mq[i] = t; renderMerge(); }); dn.disabled = i === mq.length - 1; dn.setAttribute('aria-label', 'เลื่อนลง');
    li.appendChild(up); li.appendChild(dn);
    ol.appendChild(li);
  });
}
function openMerge() {
  var sel = selected();
  if (sel.length < 2) { lsay('เลือกอย่างน้อย 2 ไฟล์ก่อนรวม', 'err'); return; }
  mq = sel.slice().sort(function (a, b) { return a.ts - b.ts; });
  $('vr-msort').value = 'added'; $('vr-mname').value = 'รวมไฟล์-' + stamp(Date.now()); msay('');
  renderMerge(); $('vr-merge').hidden = false; $('vr-mgo').disabled = false;
  if ($('vr-merge').scrollIntoView) { $('vr-merge').scrollIntoView({ behavior: 'smooth', block: 'nearest' }); }
}
$('vr-msort').onchange = function () {
  var v = $('vr-msort').value;
  if (v === 'added') { mq.sort(function (a, b) { return a.ts - b.ts; }); }
  else if (v === 'rev') { mq.sort(function (a, b) { return b.ts - a.ts; }); }
  else if (v === 'az') { mq.sort(function (a, b) { return a.name < b.name ? -1 : (a.name > b.name ? 1 : 0); }); }
  else { mq.sort(function (a, b) { return a.name < b.name ? 1 : (a.name > b.name ? -1 : 0); }); }
  renderMerge();
};
$('vr-mno').onclick = function () { $('vr-merge').hidden = true; mq = []; };
$('vr-mgo').onclick = function () {
  if (mq.length < 2) { return; }
  var list = mq.slice(), bufs = [], i = 0;
  $('vr-mgo').disabled = true; msay('กำลังรวมไฟล์...');
  function fail(e) { $('vr-mgo').disabled = false; msay('รวมไฟล์ไม่สำเร็จ: ' + ((e && e.message) || 'ถอดรหัสเสียงไม่ได้'), 'err'); }
  function done() {
    try {
      var ch = 1, total = 0, k, c;
      bufs.forEach(function (b) { ch = Math.max(ch, Math.min(2, b.numberOfChannels)); total += b.length; });
      var sr = bufs[0].sampleRate, out = ctx().createBuffer(ch, total, sr), off = 0, mk = [];
      bufs.forEach(function (b, idx) {
        for (c = 0; c < ch; c++) { out.getChannelData(c).set(b.getChannelData(Math.min(c, b.numberOfChannels - 1)), off); }
        (list[idx].markers || []).forEach(function (m) { mk.push({ t: +(m.t + off / sr).toFixed(2) }); });
        off += b.length;
      });
      var name = $('vr-mname').value.replace(/^\s+|\s+$/g, '') || ('รวมไฟล์-' + stamp(Date.now()));
      addItem({ name: name, blob: encodeWav(out), mime: 'audio/wav', dur: out.duration, markers: mk });
      $('vr-merge').hidden = true; mq = [];
      lsay('รวมไฟล์เรียบร้อย ไฟล์ใหม่อยู่ด้านบนของรายการ', 'ok');
    } catch (e) { fail(e); }
  }
  function next() {
    if (i >= list.length) { done(); return; }
    decodeBlob(list[i].blob).then(function (b) { bufs.push(b); i++; msay('กำลังรวมไฟล์ ' + i + '/' + list.length); next(); }).catch(fail);
  }
  next();
};
/* ---------- list actions ---------- */
$('vr-all').onchange = function () { var v = $('vr-all').checked; items.forEach(function (i) { i.sel = v; }); renderList(); };
$('vr-fmt').onchange = updateBulk;
$('vr-dlsel').onclick = exportSelected;
$('vr-mergebtn').onclick = openMerge;
$('vr-delsel').onclick = function () { var s = selected(); if (s.length && window.confirm('ลบ ' + s.length + ' ไฟล์ที่เลือก ?')) { removeItems(s); } };
/* ---------- init ---------- */
setUi('idle'); renderList(); loadDevices();
dbAll('items').then(function (list) {
  list.sort(function (a, b) { return b.ts - a.ts; });
  list.forEach(function (r) { items.push({ id: r.id, name: r.name, blob: r.blob, mime: r.mime, dur: r.dur, size: r.size, ts: r.ts, keep: true, markers: r.markers || [], hist: [], sel: false }); });
  renderList();
  checkRecover();
}).catch(function () { idbOk = false; });
})();
</script>

## วิธีใช้งานอัดเสียงออนไลน์

1. **เลือกไมโครโฟน** เลือกอุปกรณ์รับเสียงจากรายการ แล้วกด **ทดสอบไมค์** แถบระดับเสียงควรขยับเมื่อคุณพูด (ขั้นตอนนี้ยังไม่มีการบันทึก)
2. **ตั้งค่าคุณภาพเสียง** เปิดหรือปิด ลดเสียงรบกวน, ตัดเสียงสะท้อน และปรับความดังอัตโนมัติ ตามสภาพแวดล้อม ถ้าอัดดนตรีหรือใช้ไมค์สตูดิโอ แนะนำให้ปิดทั้งสามตัวเพื่อให้เสียงไม่ถูกปรับแต่ง
3. **กด เริ่มอัด** แล้วอนุญาตการใช้ไมโครโฟนเมื่อเบราว์เซอร์ถาม (ถามครั้งแรกเท่านั้น) ระหว่างอัดเปิดแท็บนี้ค้างไว้
4. **ระหว่างอัด** กด หยุดชั่วคราว เพื่อพักและอัดต่อได้ไม่จำกัดครั้ง กด ปักหมุด เพื่อทำเครื่องหมายจุดสำคัญ ถ้ามีแถบเตือนสีแดงว่าเสียงแตก ให้ลดความดังหรือถอยห่างจากไมค์
5. **กด หยุดและบันทึก** ไฟล์จะปรากฏในรายการด้านล่าง ตั้งชื่อใหม่ได้ในช่องชื่อไฟล์
6. **ตัดต่อ (ถ้าต้องการ)** กด แก้ไข / ฟัง เพื่อเปิดคลื่นเสียง ลากเพื่อเลือกช่วง หรือคลิกเพื่อกำหนดตำแหน่งเล่น แล้วใช้ ตัดส่วนที่เลือกออก, เก็บเฉพาะส่วนที่เลือก, แยกไฟล์, ลบช่วงเงียบ, Normalize, ปรับความดัง หรือ Fade กด เลิกทำ ได้เมื่อแก้พลาด
7. **รวมไฟล์** ติ๊กเลือกอย่างน้อย 2 ไฟล์ กด รวมไฟล์ จัดลำดับด้วยปุ่มลูกศร แล้วกดรวม
8. **ดาวน์โหลด** เลือกรูปแบบ MP3, WAV หรือไฟล์ต้นฉบับ (ถ้าเป็น MP3 เลือกคุณภาพเป็น kbps ได้) แล้วกด ดาวน์โหลด

### ปุ่มลัดคีย์บอร์ด

| ปุ่ม | การทำงาน |
| --- | --- |
| R | เริ่มอัด |
| P | หยุดชั่วคราว / อัดต่อ |
| S | หยุดและบันทึก |
| M | ปักหมุดขณะอัด |

## จุดเด่นของเครื่องอัดเสียงออนไลน์

- **ไม่อัปโหลดไฟล์เสียง** อัดและตัดต่อในเบราว์เซอร์ทั้งหมด ไม่ต้องสมัครสมาชิก ไม่มีลายน้ำ
- **ไม่จำกัดเวลาอัด** ไม่มีเพดานเวลาจากเว็บไซต์ ขึ้นกับพื้นที่ว่างและหน่วยความจำของเครื่อง
- **กู้คืนอัตโนมัติ** ระหว่างอัดระบบเก็บเสียงเป็นช่วงๆ ลงเบราว์เซอร์ ถ้าแท็บปิดหรือเบราว์เซอร์ค้างก่อนกดหยุด จะมีปุ่มให้กู้คืนเมื่อเปิดหน้านี้อีกครั้ง (ต้องเปิด จำไฟล์ไว้ในเบราว์เซอร์นี้)
- **กันหน้าจอดับ** ขอ Wake Lock ให้หน้าจอไม่ดับขณะอัดบนเบราว์เซอร์ที่รองรับ
- **ควบคุมคุณภาพเสียง** ลดเสียงรบกวน ตัดเสียงสะท้อน ปรับความดังอัตโนมัติ พร้อมแถบระดับเสียงและเตือนเสียงแตก
- **ตัดต่อครบในหน้าเดียว** คลื่นเสียง ตัดออก เก็บเฉพาะส่วนที่เลือก แยกไฟล์ รวมไฟล์ ลบช่วงเงียบ Normalize Fade และปักหมุด
- **ส่งออกหลายรูปแบบ** MP3 (เลือก 128-320 kbps), WAV ไม่สูญเสียคุณภาพ และไฟล์ต้นฉบับจากเบราว์เซอร์

## อธิบายคำศัพท์

| คำศัพท์ | ความหมายสั้นๆ |
| --- | --- |
| ไมโครโฟน (Microphone) | อุปกรณ์รับเสียงที่ใช้อัด เช่น ไมค์ในเครื่อง หูฟัง หรือไมค์ USB |
| แถบระดับเสียง (Level Meter) | แถบแสดงความดังของเสียงแบบเรียลไทม์ ช่วยไม่ให้เสียงเบาหรือดังเกินไป |
| เดซิเบล (dB) | หน่วยวัดความดัง ยิ่งใกล้ 0 dB ยิ่งดัง และถ้าเกิน 0 dB เสียงจะแตก |
| เสียงแตก (Clipping) | เสียงดังเกินขีดจำกัด ยอดคลื่นเสียงถูกตัด ทำให้เสียงแหลมผิดเพี้ยนและแก้ภายหลังไม่ได้ |
| ลดเสียงรบกวน (Noise Suppression) | ฟีเจอร์ของเบราว์เซอร์ที่กรองเสียงพื้นหลัง เช่น เสียงพัดลมหรือแอร์ ขณะอัด |
| ตัดเสียงสะท้อน (Echo Cancellation) | ลดเสียงจากลำโพงที่ย้อนเข้าไมค์ ช่วยให้อัดตอนเปิดลำโพงแล้วไม่มีเสียงก้อง |
| ปรับความดังอัตโนมัติ (Auto Gain Control) | ปรับความไวไมค์อัตโนมัติ เสียงเบาจะถูกเร่ง เสียงดังจะถูกลด |
| ปักหมุด (Marker) | เครื่องหมายบอกเวลาที่สำคัญในไฟล์ ใช้กระโดดกลับมาดูภายหลัง |
| คลื่นเสียง (Waveform) | กราฟแสดงความดังของเสียงตามเวลา ใช้ลากเลือกช่วงที่ต้องการตัดต่อ |
| ตำแหน่งเล่น (Playhead) | เส้นสีแดงบนคลื่นเสียง บอกจุดที่เล่นอยู่หรือจุดที่คลิกเลือกไว้ |
| ตัดออก (Cut) | ลบเฉพาะช่วงที่เลือก แล้วต่อส่วนที่เหลือเข้าด้วยกัน |
| เก็บเฉพาะส่วนที่เลือก (Trim) | เก็บเฉพาะช่วงที่เลือกไว้ ตัดส่วนหัวและท้ายทิ้ง |
| แยกไฟล์ (Split) | แบ่งไฟล์เป็นสองไฟล์ที่ตำแหน่งเล่น |
| รวมไฟล์ (Merge) | นำหลายไฟล์มาต่อกันเป็นไฟล์เดียวตามลำดับที่กำหนด |
| ลบช่วงเงียบ (Silence Removal) | ตัดช่วงที่เงียบกว่าเกณฑ์และนานเกินเวลาที่ตั้งออกอัตโนมัติ ช่วยให้บทพูดกระชับ |
| เกณฑ์ความเงียบ (Threshold) | ระดับความดังที่ต่ำกว่าค่านี้ (หน่วย dB) จะนับว่าเงียบ ค่าติดลบมาก เช่น -60 จะตัดเฉพาะช่วงที่เงียบจริง |
| Normalize | ปรับทั้งไฟล์ให้ยอดคลื่นดังที่สุดอยู่ใกล้ -1 dB โดยไม่ทำให้เสียงแตก |
| Fade In / Fade Out | ค่อยๆ เพิ่มเสียงตอนเริ่มและค่อยๆ ลดเสียงตอนจบ เพื่อไม่ให้เสียงสะดุด |
| MP3 | ไฟล์เสียงบีบอัดแบบสูญเสียบางส่วน ขนาดเล็ก เปิดได้เกือบทุกอุปกรณ์ |
| WAV | ไฟล์เสียงไม่บีบอัด คุณภาพเต็ม ขนาดใหญ่ เหมาะกับงานตัดต่อต่อ |
| WebM / OGG / M4A | ไฟล์ต้นฉบับที่เบราว์เซอร์อัดได้โดยตรง ชนิดไฟล์ขึ้นกับเบราว์เซอร์ที่ใช้ |
| บิตเรต (Bitrate, kbps) | ปริมาณข้อมูลต่อวินาทีของ MP3 ยิ่งสูงยิ่งคมชัดแต่ไฟล์ใหญ่ 128 ใช้ทั่วไป 192-320 คุณภาพดี |
| ความถี่สุ่มตัวอย่าง (Sample Rate) | จำนวนครั้งที่เก็บตัวอย่างเสียงต่อวินาที หน่วย Hz เช่น 48,000 Hz |
| โมโน / สเตอริโอ | โมโนมี 1 ช่องเสียง สเตอริโอมี 2 ช่อง ซ้ายและขวา |
| Wake Lock | คำสั่งของเบราว์เซอร์ที่ขอไม่ให้หน้าจอดับขณะใช้งาน |
| กู้คืนอัตโนมัติ | ระบบเก็บเสียงเป็นช่วงสั้นๆ ระหว่างอัด เพื่อกู้ไฟล์เมื่อหน้าเว็บถูกปิดโดยไม่ตั้งใจ |
| IndexedDB | พื้นที่เก็บข้อมูลในเบราว์เซอร์ ใช้เก็บไฟล์เสียงไว้ในเครื่องของคุณโดยไม่ส่งออกไปที่ใด |

## คำถามที่พบบ่อย

### อัดเสียงออนไลน์ฟรีจริงหรือไม่

ใช้งานฟรี ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำ

### ไฟล์เสียงถูกอัปโหลดไปเซิร์ฟเวอร์หรือไม่

ไม่ การอัดและการตัดต่อทำในเบราว์เซอร์ของคุณทั้งหมด มีเพียงการใช้ MP3 ครั้งแรกที่เบราว์เซอร์จะโหลดโค้ดตัวเข้ารหัส MP3 (lamejs) จาก CDN โดยไม่มีการส่งไฟล์เสียงของคุณออกไป หากโหลดไม่ได้ ระบบจะบันทึกเป็น WAV แทน

### อัดเสียงได้นานแค่ไหน

เว็บไซต์ไม่จำกัดเวลาอัด แต่ขึ้นกับพื้นที่ว่างและหน่วยความจำของอุปกรณ์ การตัดต่อไฟล์ที่ยาวหลายชั่วโมงใช้หน่วยความจำมาก แนะนำให้อัดเป็นหลายตอนแล้วค่อยรวมไฟล์

### ทำไมใช้ไมโครโฟนไม่ได้

ตรวจสอบว่าอนุญาตไมโครโฟนให้เว็บไซต์แล้ว (ไอคอนแม่กุญแจข้างช่องที่อยู่เว็บ) เปิดหน้านี้ผ่าน HTTPS ไม่มีแอปอื่นใช้ไมค์อยู่ และระบบปฏิบัติการอนุญาตให้เบราว์เซอร์ใช้ไมโครโฟน

### อัดเสียงบนมือถือได้หรือไม่

ได้ ใช้ได้กับเบราว์เซอร์มือถือรุ่นใหม่ ควรเปิดแท็บนี้ค้างไว้ขณะอัด หน้านี้ขอไม่ให้หน้าจอดับ แต่ถ้าสลับแอปหรือล็อกหน้าจอ การอัดอาจหยุด และหากต้องปิดแท็บก่อนกดหยุด ให้เปิดหน้านี้ใหม่เพื่อกู้คืนส่วนที่อัดไว้

### ไฟล์จะหายเมื่อปิดหน้าหรือไม่

ถ้าเปิด จำไฟล์ไว้ในเบราว์เซอร์นี้ ไฟล์จะอยู่ในเบราว์เซอร์จนกว่าคุณจะลบ ถ้าปิดตัวเลือกนี้ ไฟล์จะหายเมื่อรีโหลดหรือปิดหน้า การล้างข้อมูลเบราว์เซอร์หรือใช้โหมดไม่ระบุตัวตนก็ทำให้ไฟล์หายได้ ควรดาวน์โหลดไฟล์สำคัญเก็บไว้

### ควรเลือก MP3 หรือ WAV

MP3 ไฟล์เล็ก เปิดได้ทุกอุปกรณ์ เหมาะกับการแชร์และอัปโหลด WAV คุณภาพเต็มแต่ไฟล์ใหญ่ เหมาะกับการนำไปตัดต่อต่อในโปรแกรมอื่น

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"อัดเสียงออนไลน์ฟรีจริงหรือไม่","acceptedAnswer":{"@type":"Answer","text":"ใช้งานฟรี ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำ"}},{"@type":"Question","name":"ไฟล์เสียงถูกอัปโหลดไปเซิร์ฟเวอร์หรือไม่","acceptedAnswer":{"@type":"Answer","text":"ไม่ การอัดและการตัดต่อทำในเบราว์เซอร์ของคุณทั้งหมด มีเพียงการใช้ MP3 ครั้งแรกที่เบราว์เซอร์จะโหลดโค้ดตัวเข้ารหัส MP3 จาก CDN โดยไม่มีการส่งไฟล์เสียงของคุณออกไป"}},{"@type":"Question","name":"อัดเสียงได้นานแค่ไหน","acceptedAnswer":{"@type":"Answer","text":"เว็บไซต์ไม่จำกัดเวลาอัด แต่ขึ้นกับพื้นที่ว่างและหน่วยความจำของอุปกรณ์ ไฟล์ที่ยาวหลายชั่วโมงควรอัดเป็นหลายตอนแล้วค่อยรวมไฟล์"}},{"@type":"Question","name":"ทำไมใช้ไมโครโฟนไม่ได้","acceptedAnswer":{"@type":"Answer","text":"ตรวจสอบว่าอนุญาตไมโครโฟนให้เว็บไซต์แล้ว เปิดหน้านี้ผ่าน HTTPS ไม่มีแอปอื่นใช้ไมค์อยู่ และระบบปฏิบัติการอนุญาตให้เบราว์เซอร์ใช้ไมโครโฟน"}},{"@type":"Question","name":"ควรเลือก MP3 หรือ WAV","acceptedAnswer":{"@type":"Answer","text":"MP3 ไฟล์เล็ก เปิดได้ทุกอุปกรณ์ เหมาะกับการแชร์ WAV คุณภาพเต็มแต่ไฟล์ใหญ่ เหมาะกับการนำไปตัดต่อต่อ"}}]}
</script>