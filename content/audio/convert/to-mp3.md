---
title: แปลงไฟล์เสียงเป็น MP3 ออนไลน์ ฟรี
h1: แปลงไฟล์เสียงเป็น MP3
description: แปลงไฟล์เสียงและวิดีโอเป็น MP3 ออนไลน์ฟรี ปรับบิตเรต ตัดช่วง เฟดเสียง ใส่แท็ก ID3 แปลงหลายไฟล์พร้อมกัน โหลดเป็น Zip ไม่ต้องอัปโหลด ใช้ได้ทั้งมือถือและพีซี
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-20T08:32:00+07:00'
weight: 133
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- แปลงไฟล์เสียงเป็น MP3
- แปลงไฟล์เสียงเป็น MP3 ออนไลน์
- เสียงและวิดีโอ
---

<div id="mp3t-root" class="mp3t" v-pre data-lame="">
<div id="mp3t-drop" class="mp3t-drop" role="button" tabindex="0" data-act="pick" aria-label="เลือกไฟล์เสียงหรือวิดีโอ">
<strong>ลากไฟล์เสียงหรือวิดีโอมาวางที่นี่</strong>
<span>คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง · MP3, WAV, M4A, AAC, OGG, Opus, FLAC และเสียงจากวิดีโอ (ขึ้นกับเบราว์เซอร์)</span>
<span class="mp3t-sub">ประมวลผลในเบราว์เซอร์ทั้งหมด ไฟล์ของคุณไม่ถูกอัปโหลด</span>
</div>
<input id="mp3t-input" type="file" accept="audio/*,video/*,.mp3,.wav,.m4a,.aac,.ogg,.oga,.opus,.flac,.wma,.aif,.aiff,.amr,.mp4,.m4v,.mov,.webm,.mkv,.3gp" multiple hidden>
<div class="mp3t-row">
<label for="mp3t-url">หรือเพิ่มจากลิงก์ไฟล์โดยตรง</label>
<div class="mp3t-inline"><input id="mp3t-url" type="url" placeholder="https://example.com/audio.mp3" inputmode="url" autocomplete="off"><button type="button" class="mp3t-btn" data-act="url">เพิ่มจากลิงก์</button></div>
</div>
<div class="mp3t-grid">
<div><label for="mp3t-preset">พรีเซ็ต</label><select id="mp3t-preset"><option value="">กำหนดเอง</option><option value="voice">เสียงพูด / พอดแคสต์</option><option value="music">เพลง คุณภาพสูง</option><option value="small">ไฟล์เล็กที่สุด</option><option value="ringtone">ริงโทน (30 วินาที)</option></select></div>
<div><label for="mp3t-fmt">รูปแบบปลายทาง</label><select id="mp3t-fmt"><option value="mp3">MP3</option><option value="wav">WAV (ไม่บีบอัด)</option></select></div>
<div><label for="mp3t-bitrate">บิตเรต (เฉพาะ MP3)</label><select id="mp3t-bitrate"><option value="64">64 kbps</option><option value="96">96 kbps</option><option value="128">128 kbps</option><option value="192" selected>192 kbps</option><option value="256">256 kbps</option><option value="320">320 kbps</option></select></div>
</div>
<details class="mp3t-box">
<summary>ตั้งค่าขั้นสูง (แซมเปิลเรต ช่องเสียง ตัดช่วง เฟด ระดับเสียง)</summary>
<div class="mp3t-grid">
<div><label for="mp3t-sr">แซมเปิลเรต</label><select id="mp3t-sr"><option value="0">ตามต้นฉบับ</option><option value="48000">48,000 Hz</option><option value="44100">44,100 Hz</option><option value="32000">32,000 Hz</option><option value="22050">22,050 Hz</option><option value="16000">16,000 Hz</option></select></div>
<div><label for="mp3t-ch">ช่องเสียง</label><select id="mp3t-ch"><option value="0">ตามต้นฉบับ</option><option value="2">สเตอริโอ</option><option value="1">โมโน</option></select></div>
<div><label for="mp3t-ts">ตัดช่วง: เริ่มที่</label><input id="mp3t-ts" type="text" placeholder="0:00" inputmode="decimal" autocomplete="off"></div>
<div><label for="mp3t-te">ตัดช่วง: สิ้นสุดที่</label><input id="mp3t-te" type="text" placeholder="เช่น 1:30" inputmode="decimal" autocomplete="off"></div>
<div><label for="mp3t-fi">เฟดอิน (วินาที)</label><input id="mp3t-fi" type="number" min="0" step="0.5" placeholder="0"></div>
<div><label for="mp3t-fo">เฟดเอาต์ (วินาที)</label><input id="mp3t-fo" type="number" min="0" step="0.5" placeholder="0"></div>
</div>
<label class="mp3t-chk" for="mp3t-norm"><input id="mp3t-norm" type="checkbox"> ปรับระดับเสียงให้พอดี (Normalize)</label>
</details>
<details class="mp3t-box">
<summary>แท็ก ID3 และรูปปก (เฉพาะ MP3)</summary>
<div class="mp3t-grid">
<div><label for="mp3t-t-title">ชื่อเพลง</label><input id="mp3t-t-title" type="text" autocomplete="off"></div>
<div><label for="mp3t-t-artist">ศิลปิน</label><input id="mp3t-t-artist" type="text" autocomplete="off"></div>
<div><label for="mp3t-t-album">อัลบั้ม</label><input id="mp3t-t-album" type="text" autocomplete="off"></div>
</div>
<div class="mp3t-row">
<label for="mp3t-cover">รูปปก (JPG หรือ PNG ไม่เกิน 5 MB)</label>
<div class="mp3t-inline"><input id="mp3t-cover" type="file" accept="image/jpeg,image/png"><button type="button" class="mp3t-btn" data-act="coverclear">ลบรูปปก</button></div>
</div>
<p class="mp3t-note">ชื่อเพลง ศิลปิน อัลบั้ม และรูปปกจะถูกใส่ให้ทุกไฟล์ในรอบการแปลงเดียวกัน ช่องที่เว้นว่างจะไม่ถูกเขียนลงไฟล์</p>
</details>
<div class="mp3t-actions">
<button type="button" id="mp3t-start" class="mp3t-btn mp3t-primary" data-act="start">แปลงทั้งหมด</button>
<button type="button" class="mp3t-btn" data-act="zip">ดาวน์โหลดทั้งหมด (Zip)</button>
<button type="button" class="mp3t-btn" data-act="clear">ล้างรายการ</button>
</div>
<p id="mp3t-msg" class="mp3t-msg" role="status" aria-live="polite"></p>
<div id="mp3t-list" class="mp3t-list"></div>
<p class="mp3t-note">เปิดแท็บนี้ค้างไว้ขณะแปลง — การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</p>
</div>

<script>
(function () {
  'use strict';
  if (window.__mp3Tool) { return; }
  window.__mp3Tool = true;

  var CSS = [
    '.mp3t{max-width:860px;margin:1rem auto;font:inherit;color:inherit}',
    '.mp3t *{box-sizing:border-box}',
    '.mp3t-drop{display:flex;flex-direction:column;gap:.35rem;align-items:center;text-align:center;padding:1.75rem 1rem;border:2px dashed rgba(128,128,128,.55);border-radius:14px;cursor:pointer;transition:border-color .15s,background .15s}',
    '.mp3t-drop *{pointer-events:none}',
    '.mp3t-drop:hover,.mp3t-drop:focus-visible,.mp3t-over{border-color:#2563eb;background:rgba(37,99,235,.08);outline:none}',
    '.mp3t-drop strong{font-size:1.1rem}',
    '.mp3t-sub{opacity:.75;font-size:.9rem}',
    '.mp3t label{display:block;font-size:.88rem;font-weight:600;margin-bottom:.25rem}',
    '.mp3t label.mp3t-chk{display:flex;gap:.5rem;align-items:center;margin:.5rem 0 .25rem}',
    '.mp3t input[type=text],.mp3t input[type=url],.mp3t input[type=number],.mp3t select{width:100%;font:inherit;font-size:.95rem;padding:.5rem .6rem;border:1px solid rgba(128,128,128,.6);border-radius:8px;background:#fff;color:#111}',
    '.mp3t-row{margin:.9rem 0}',
    '.mp3t-inline{display:flex;gap:.5rem;align-items:center;flex-wrap:wrap}',
    '.mp3t-inline input[type=url]{flex:1 1 220px;width:auto}',
    '.mp3t-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(170px,1fr));gap:.75rem;margin:.9rem 0}',
    '.mp3t-box{border:1px solid rgba(128,128,128,.4);border-radius:10px;padding:.6rem .85rem;margin:.75rem 0}',
    '.mp3t-box summary{cursor:pointer;font-weight:600}',
    '.mp3t-btn{font:inherit;font-size:.95rem;padding:.55rem 1rem;border:1px solid rgba(128,128,128,.6);border-radius:8px;background:transparent;color:inherit;cursor:pointer;display:inline-block;text-decoration:none;line-height:1.3}',
    '.mp3t-btn:disabled{opacity:.5;cursor:not-allowed}',
    '.mp3t-primary{background:#2563eb;border-color:#2563eb;color:#fff}',
    '.mp3t-actions{display:flex;flex-wrap:wrap;gap:.5rem;margin:1rem 0}',
    '.mp3t-msg{min-height:1.4em;margin:.25rem 0}',
    '.mp3t-ok{color:#16a34a}',
    '.mp3t-bad{color:#dc2626}',
    '.mp3t-item{border:1px solid rgba(128,128,128,.4);border-radius:10px;padding:.75rem .9rem;margin:.6rem 0}',
    '.mp3t-ihead{display:flex;flex-wrap:wrap;justify-content:space-between;gap:.5rem}',
    '.mp3t-name{word-break:break-all}',
    '.mp3t-meta{opacity:.75;font-size:.88rem}',
    '.mp3t-bar{height:6px;border-radius:3px;background:rgba(128,128,128,.3);overflow:hidden;margin:.4rem 0}',
    '.mp3t-bar span{display:block;height:100%;background:#2563eb;transition:width .1s}',
    '.mp3t-players{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:.5rem;margin:.5rem 0}',
    '.mp3t-players audio{width:100%}',
    '.mp3t-iact{display:flex;flex-wrap:wrap;gap:.5rem;margin-top:.5rem}',
    '.mp3t-note,.mp3t-note2{font-size:.85rem;opacity:.8}'
  ].join('');
  try {
    var st = document.createElement('style');
    st.setAttribute('data-mp3t', '1');
    st.textContent = CSS;
    (document.head || document.documentElement).appendChild(st);
  } catch (e0) {}

  var LIB_URLS = [
    'https://cdnjs.cloudflare.com/ajax/libs/lamejs/1.2.1/lame.min.js',
    'https://cdn.jsdelivr.net/npm/lamejs@1.2.1/lame.min.js',
    'https://unpkg.com/lamejs@1.2.1/lame.min.js'
  ];
  var MP3_RATES = [8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000];
  var EXT = /\.(mp3|wav|m4a|aac|ogg|oga|opus|flac|wma|aiff?|amr|mp4|m4v|mov|webm|mkv|3gp|avi)$/i;
  var PRESETS = {
    voice: { fmt: 'mp3', kbps: '96', sr: '44100', ch: '1', norm: true, fi: '', fo: '', ts: '', te: '' },
    music: { fmt: 'mp3', kbps: '320', sr: '0', ch: '0', norm: false, fi: '', fo: '', ts: '', te: '' },
    small: { fmt: 'mp3', kbps: '64', sr: '22050', ch: '1', norm: true, fi: '', fo: '', ts: '', te: '' },
    ringtone: { fmt: 'mp3', kbps: '192', sr: '44100', ch: '0', norm: true, fi: '', fo: '2', ts: '', te: '0:30' }
  };
  var SETTING_IDS = ['mp3t-fmt', 'mp3t-bitrate', 'mp3t-sr', 'mp3t-ch', 'mp3t-norm', 'mp3t-fi', 'mp3t-fo', 'mp3t-ts', 'mp3t-te'];

  var files = [];
  var nextId = 1;
  var busy = false;
  var cover = null;
  var libPromise = null;
  var audioCtx = null;

  function $(id) { return document.getElementById(id); }
  function val(id) { var el = $(id); return el ? el.value : ''; }
  function setVal(id, v) { var el = $(id); if (el) { el.value = v; } }
  function chk(id) { var el = $(id); return !!(el && el.checked); }
  function setChk(id, v) { var el = $(id); if (el) { el.checked = !!v; } }
  function pad(n) { return (n < 10 ? '0' : '') + n; }
  function tick() { return new Promise(function (r) { setTimeout(r, 0); }); }
  function esc(s) {
    var map = { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' };
    return String(s).replace(/[&<>"']/g, function (c) { return map[c]; });
  }
  function msg(text, kind) {
    var el = $('mp3t-msg');
    if (!el) { return; }
    el.textContent = text || '';
    el.className = 'mp3t-msg' + (kind ? ' mp3t-' + kind : '');
  }
  function fmtSize(b) {
    if (b < 1024) { return b + ' B'; }
    if (b < 1048576) { return (b / 1024).toFixed(1) + ' KB'; }
    if (b < 1073741824) { return (b / 1048576).toFixed(2) + ' MB'; }
    return (b / 1073741824).toFixed(2) + ' GB';
  }
  function fmtTime(s) {
    s = Math.max(0, Math.round(s));
    var h = Math.floor(s / 3600), m = Math.floor((s % 3600) / 60), x = s % 60;
    return (h ? h + ':' + pad(m) : String(m)) + ':' + pad(x);
  }
  function parseTime(t) {
    t = String(t || '').trim().replace(',', '.');
    if (!t) { return null; }
    var p = t.split(':');
    if (p.length > 3) { return NaN; }
    var s = 0;
    for (var i = 0; i < p.length; i++) {
      var part = p[i].trim();
      if (!/^\d+(\.\d+)?$/.test(part)) { return NaN; }
      s = s * 60 + parseFloat(part);
    }
    return s;
  }
  function revoke(it) {
    if (it.origUrl) { try { URL.revokeObjectURL(it.origUrl); } catch (e1) {} }
    if (it.outUrl) { try { URL.revokeObjectURL(it.outUrl); } catch (e2) {} }
    it.origUrl = null;
    it.outUrl = null;
  }
  function friendly(err) {
    var m = err && err.message ? String(err.message) : String(err);
    if (err && (err.name === 'EncodingError' || /decode|decoding/i.test(m))) {
      return 'ถอดรหัสไฟล์ไม่ได้ (ฟอร์แมตไม่รองรับในเบราว์เซอร์นี้ ไฟล์เสียหาย หรือวิดีโอไม่มีแทร็กเสียง)';
    }
    if (err && (err.name === 'RangeError' || /allocation|memory/i.test(m))) {
      return 'หน่วยความจำไม่พอ ลองตัดไฟล์เป็นช่วงสั้นลงหรือแปลงทีละไฟล์';
    }
    return m;
  }

  function syncFmt() {
    var wav = val('mp3t-fmt') === 'wav';
    ['mp3t-bitrate', 'mp3t-t-title', 'mp3t-t-artist', 'mp3t-t-album', 'mp3t-cover'].forEach(function (id) {
      var el = $(id);
      if (el) { el.disabled = wav; }
    });
  }
  function applyPreset(name) {
    var p = PRESETS[name];
    if (!p) { return; }
    setVal('mp3t-fmt', p.fmt);
    setVal('mp3t-bitrate', p.kbps);
    setVal('mp3t-sr', p.sr);
    setVal('mp3t-ch', p.ch);
    setChk('mp3t-norm', p.norm);
    setVal('mp3t-fi', p.fi);
    setVal('mp3t-fo', p.fo);
    setVal('mp3t-ts', p.ts);
    setVal('mp3t-te', p.te);
    syncFmt();
  }

  function readOpts() {
    var o = {
      fmt: val('mp3t-fmt') === 'wav' ? 'wav' : 'mp3',
      kbps: parseInt(val('mp3t-bitrate'), 10) || 192,
      sr: parseInt(val('mp3t-sr'), 10) || 0,
      ch: val('mp3t-ch') || '0',
      norm: chk('mp3t-norm'),
      fi: Math.max(0, parseFloat(val('mp3t-fi')) || 0),
      fo: Math.max(0, parseFloat(val('mp3t-fo')) || 0),
      ts: parseTime(val('mp3t-ts')),
      te: parseTime(val('mp3t-te')),
      tags: {
        title: val('mp3t-t-title').trim(),
        artist: val('mp3t-t-artist').trim(),
        album: val('mp3t-t-album').trim()
      }
    };
    if (o.ts !== null && isNaN(o.ts)) { return { error: 'รูปแบบเวลาเริ่มตัดไม่ถูกต้อง ใช้เช่น 90 หรือ 1:30' }; }
    if (o.te !== null && isNaN(o.te)) { return { error: 'รูปแบบเวลาสิ้นสุดไม่ถูกต้อง ใช้เช่น 90 หรือ 1:30' }; }
    if (o.ts !== null && o.te !== null && o.te <= o.ts) { return { error: 'เวลาสิ้นสุดต้องมากกว่าเวลาเริ่มตัด' }; }
    return o;
  }

  /* ---------- list rendering ---------- */
  function itemHtml(it) {
    var st = '';
    var cls = 'mp3t-st';
    if (it.status === 'queue') { st = 'รอคิว'; }
    else if (it.status === 'decode') { st = 'กำลังถอดรหัสไฟล์…'; }
    else if (it.status === 'encode') { st = 'กำลังเข้ารหัส ' + it.pct + '%'; }
    else if (it.status === 'done') { st = 'เสร็จแล้ว'; cls += ' mp3t-ok'; }
    else { st = 'ผิดพลาด: ' + it.error; cls += ' mp3t-bad'; }
    var meta = fmtSize(it.file.size);
    if (it.dur) { meta += ' · ความยาว ' + fmtTime(it.dur); }
    if (it.status === 'done') {
      var pct = Math.round((1 - it.outSize / it.file.size) * 100);
      meta += ' → ' + fmtSize(it.outSize) + (pct >= 0 ? ' (ลดลง ' + pct + '%)' : ' (เพิ่มขึ้น ' + (-pct) + '%)');
    }
    var h = '<div class="mp3t-item" data-item="' + it.id + '">';
    h += '<div class="mp3t-ihead"><strong class="mp3t-name">' + esc(it.file.name) + '</strong><span class="mp3t-meta">' + esc(meta) + '</span></div>';
    h += '<div class="' + cls + '" data-stat="' + it.id + '">' + esc(st) + '</div>';
    if (it.status === 'decode' || it.status === 'encode') {
      h += '<div class="mp3t-bar"><span data-prog="' + it.id + '" style="width:' + it.pct + '%"></span></div>';
    }
    if (it.note) { h += '<div class="mp3t-note2">' + esc(it.note) + '</div>'; }
    if (it.status === 'done') {
      h += '<div class="mp3t-players"><div><small>ต้นฉบับ</small><audio controls preload="none" src="' + it.origUrl + '"></audio></div>';
      h += '<div><small>ผลลัพธ์</small><audio controls preload="none" src="' + it.outUrl + '"></audio></div></div>';
    }
    h += '<div class="mp3t-iact">';
    if (it.status === 'done') {
      h += '<a class="mp3t-btn mp3t-primary" href="' + it.outUrl + '" download="' + esc(it.outName) + '">ดาวน์โหลด</a>';
      h += '<button type="button" class="mp3t-btn" data-act="redo" data-id="' + it.id + '">แปลงใหม่</button>';
    } else if (it.status === 'error') {
      h += '<button type="button" class="mp3t-btn" data-act="redo" data-id="' + it.id + '">ลองอีกครั้ง</button>';
    }
    if (it.status !== 'decode' && it.status !== 'encode') {
      h += '<button type="button" class="mp3t-btn" data-act="remove" data-id="' + it.id + '">ลบ</button>';
    }
    h += '</div></div>';
    return h;
  }
  function renderList() {
    var el = $('mp3t-list');
    if (!el) { return; }
    el.innerHTML = files.map(itemHtml).join('');
  }
  function updateItem(it) {
    var el = document.querySelector('[data-item="' + it.id + '"]');
    if (!el) { return; }
    var tmp = document.createElement('div');
    tmp.innerHTML = itemHtml(it);
    el.parentNode.replaceChild(tmp.firstChild, el);
  }
  function setProgress(it, pct) {
    it.pct = pct;
    var bar = document.querySelector('[data-prog="' + it.id + '"]');
    if (bar) { bar.style.width = pct + '%'; }
    var stat = document.querySelector('[data-stat="' + it.id + '"]');
    if (stat) { stat.textContent = 'กำลังเข้ารหัส ' + pct + '%'; }
  }
  function setBusy(b) {
    var s = $('mp3t-start');
    if (s) {
      s.disabled = b;
      s.textContent = b ? 'กำลังแปลง…' : 'แปลงทั้งหมด';
    }
  }

  /* ---------- adding / removing files ---------- */
  function addFiles(list) {
    var added = 0, skipped = 0, big = false;
    for (var i = 0; i < list.length; i++) {
      var f = list[i];
      if (!f) { continue; }
      var okType = /^(audio|video)\//.test(f.type || '') || EXT.test(f.name || '');
      if (!okType) { skipped++; continue; }
      if (f.size > 209715200) { big = true; }
      files.push({ id: nextId++, file: f, status: 'queue', pct: 0, origUrl: null, outUrl: null, blob: null, outName: '', outSize: 0, dur: 0, note: '', error: '' });
      added++;
    }
    renderList();
    var t = 'เพิ่ม ' + added + ' ไฟล์';
    if (skipped) { t += ' (ข้าม ' + skipped + ' ไฟล์ที่ไม่ใช่เสียงหรือวิดีโอ)'; }
    if (big) { t += ' — ไฟล์ใหญ่กว่า 200 MB อาจใช้เวลานานหรือหน่วยความจำไม่พอ'; }
    msg(added || skipped ? t : '', skipped && !added ? 'bad' : '');
  }
  async function addUrl() {
    var u = val('mp3t-url').trim();
    if (!/^https?:\/\//i.test(u)) { msg('วางลิงก์ที่ขึ้นต้นด้วย http:// หรือ https:// ก่อน', 'bad'); return; }
    msg('กำลังดึงไฟล์จากลิงก์…');
    try {
      var res = await fetch(u);
      if (!res.ok) { throw new Error('HTTP ' + res.status); }
      var b = await res.blob();
      if (/html/i.test(b.type)) { throw new Error('ลิงก์นี้ไม่ใช่ไฟล์เสียงหรือวิดีโอ'); }
      var name = 'audio';
      try { name = decodeURIComponent(u.split('#')[0].split('?')[0].split('/').pop()) || 'audio'; } catch (e3) {}
      addFiles([new File([b], name, { type: b.type })]);
      setVal('mp3t-url', '');
    } catch (err) {
      msg('ดึงไฟล์จากลิงก์ไม่ได้ (เซิร์ฟเวอร์ต้นทางอาจไม่อนุญาต CORS หรือลิงก์ไม่ถูกต้อง) — ดาวน์โหลดไฟล์ลงเครื่องแล้วลากมาวางแทน', 'bad');
    }
  }
  function removeItem(id) {
    var keep = [];
    files.forEach(function (f) {
      if (f.id === id) { revoke(f); } else { keep.push(f); }
    });
    files = keep;
    renderList();
  }
  function redoItem(id) {
    files.forEach(function (f) {
      if (f.id === id) { revoke(f); f.status = 'queue'; f.error = ''; f.blob = null; f.note = ''; }
    });
    renderList();
    startAll();
  }
  function clearAll() {
    if (busy) { msg('รอให้แปลงเสร็จก่อนจึงจะล้างรายการได้', 'bad'); return; }
    files.forEach(revoke);
    files = [];
    renderList();
    msg('');
  }
  function loadCover(f) {
    cover = null;
    if (!f) { return; }
    if (!/^image\/(jpeg|png)$/.test(f.type)) { setVal('mp3t-cover', ''); msg('รูปปกต้องเป็นไฟล์ JPG หรือ PNG', 'bad'); return; }
    if (f.size > 5242880) { setVal('mp3t-cover', ''); msg('รูปปกต้องมีขนาดไม่เกิน 5 MB', 'bad'); return; }
    f.arrayBuffer().then(function (ab) {
      cover = { bytes: new Uint8Array(ab), mime: f.type };
      msg('ตั้งรูปปกแล้ว', 'ok');
    });
  }
  function clearCover() {
    cover = null;
    setVal('mp3t-cover', '');
    msg('ลบรูปปกแล้ว');
  }

  /* ---------- encoder library (guarded loader) ---------- */
  function loadLib() {
    if (window.lamejs && window.lamejs.Mp3Encoder) { return Promise.resolve(); }
    if (libPromise) { return libPromise; }
    var root = $('mp3t-root');
    var custom = root ? (root.getAttribute('data-lame') || '') : '';
    var urls = custom ? [custom].concat(LIB_URLS) : LIB_URLS;
    libPromise = (async function () {
      var lastErr = null;
      for (var i = 0; i < urls.length; i++) {
        try {
          var res = await fetch(urls[i], { credentials: 'omit' });
          if (!res.ok) { throw new Error('HTTP ' + res.status); }
          var txt = await res.text();
          if (/^\s*</.test(txt)) { throw new Error('ไม่ใช่ไฟล์ JavaScript'); }
          try { new Function(txt); } catch (pe) { if (pe instanceof SyntaxError) { throw pe; } }
          var s = document.createElement('script');
          s.textContent = txt;
          document.head.appendChild(s);
          if (!(window.lamejs && window.lamejs.Mp3Encoder)) { throw new Error('ไม่พบตัวเข้ารหัส MP3'); }
          new window.lamejs.Mp3Encoder(1, 44100, 128);
          return;
        } catch (e4) {
          lastErr = e4;
        }
      }
      libPromise = null;
      throw lastErr || new Error('โหลดไม่สำเร็จ');
    })();
    return libPromise;
  }

  /* ---------- audio processing ---------- */
  function getCtx() {
    if (!audioCtx) {
      var AC = window.AudioContext || window.webkitAudioContext;
      if (!AC) { throw new Error('เบราว์เซอร์นี้ไม่รองรับ Web Audio'); }
      audioCtx = new AC();
    }
    return audioCtx;
  }
  function decode(ab) {
    var ctx = getCtx();
    return new Promise(function (res, rej) {
      var p = ctx.decodeAudioData(ab, res, rej);
      if (p && p.catch) { p.catch(rej); }
    });
  }
  function makeGain(data, n, sr, o) {
    var gain = 1;
    if (o.norm) {
      var peak = 0;
      for (var c = 0; c < data.length; c++) {
        var a = data[c];
        for (var k = 0; k < n; k++) {
          var v = a[k];
          if (v < 0) { v = -v; }
          if (v > peak) { peak = v; }
        }
      }
      if (peak > 0.001) { gain = 0.95 / peak; }
    }
    return { gain: gain, fiF: Math.min(Math.round(o.fi * sr), n), foF: Math.min(Math.round(o.fo * sr), n) };
  }
  function fillChunk(data, pos, len, n, g, outs) {
    for (var c = 0; c < outs.length; c++) {
      var a = data[c];
      var dst = outs[c];
      for (var i = 0; i < len; i++) {
        var idx = pos + i;
        var x = a[idx] * g.gain;
        if (idx < g.fiF) { x *= idx / g.fiF; }
        var rem = n - idx;
        if (rem < g.foF) { x *= rem / g.foF; }
        if (x > 1) { x = 1; } else if (x < -1) { x = -1; }
        dst[i] = x < 0 ? x * 32768 : x * 32767;
      }
    }
  }
  function concatU8(list) {
    var total = 0;
    list.forEach(function (a) { total += a.length; });
    var out = new Uint8Array(total);
    var p = 0;
    list.forEach(function (a) { out.set(a, p); p += a.length; });
    return out;
  }
  function id3Frame(id, body) {
    var h = new Uint8Array(10);
    for (var i = 0; i < 4; i++) { h[i] = id.charCodeAt(i); }
    var s = body.length;
    h[4] = (s >>> 24) & 255;
    h[5] = (s >>> 16) & 255;
    h[6] = (s >>> 8) & 255;
    h[7] = s & 255;
    return concatU8([h, body]);
  }
  function textFrame(id, text) {
    var b = new Uint8Array(3 + text.length * 2);
    b[0] = 1; b[1] = 255; b[2] = 254;
    for (var i = 0; i < text.length; i++) {
      var c = text.charCodeAt(i);
      b[3 + i * 2] = c & 255;
      b[4 + i * 2] = c >> 8;
    }
    return id3Frame(id, b);
  }
  function buildId3(t, cov) {
    var fr = [];
    if (t.title) { fr.push(textFrame('TIT2', t.title)); }
    if (t.artist) { fr.push(textFrame('TPE1', t.artist)); }
    if (t.album) { fr.push(textFrame('TALB', t.album)); }
    if (cov) {
      var head = [0];
      for (var i = 0; i < cov.mime.length; i++) { head.push(cov.mime.charCodeAt(i)); }
      head.push(0, 3, 0);
      fr.push(id3Frame('APIC', concatU8([new Uint8Array(head), cov.bytes])));
    }
    if (!fr.length) { return null; }
    var body = concatU8(fr);
    var s = body.length;
    var h = new Uint8Array([73, 68, 51, 3, 0, 0, (s >>> 21) & 127, (s >>> 14) & 127, (s >>> 7) & 127, s & 127]);
    return concatU8([h, body]);
  }
  async function encodeMp3(data, n, sr, kbps, o, onProg) {
    var ch = data.length;
    var enc = new window.lamejs.Mp3Encoder(ch, sr, kbps);
    var g = makeGain(data, n, sr, o);
    var CH = 1152 * 16;
    var l = new Int16Array(CH);
    var r = ch > 1 ? new Int16Array(CH) : null;
    var parts = [];
    var tag = buildId3(o.tags, cover);
    if (tag) { parts.push(tag); }
    var last = performance.now();
    for (var pos = 0; pos < n; pos += CH) {
      var len = Math.min(CH, n - pos);
      fillChunk(data, pos, len, n, g, ch > 1 ? [l, r] : [l]);
      var out = ch > 1 ? enc.encodeBuffer(l.subarray(0, len), r.subarray(0, len)) : enc.encodeBuffer(l.subarray(0, len));
      if (out.length > 0) { parts.push(out); }
      var now = performance.now();
      if (now - last > 40) {
        onProg(Math.min(99, Math.floor(pos / n * 100)));
        await tick();
        last = performance.now();
      }
    }
    var tail = enc.flush();
    if (tail.length > 0) { parts.push(tail); }
    return new Blob(parts, { type: 'audio/mpeg' });
  }
  function writeStr(dv, off, s) {
    for (var i = 0; i < s.length; i++) { dv.setUint8(off + i, s.charCodeAt(i)); }
  }
  async function encodeWav(data, n, sr, o, onProg) {
    var ch = data.length;
    var bytes = n * ch * 2;
    if (bytes > 4294967000) { throw new Error('ไฟล์ WAV ใหญ่เกิน 4 GB — ลองตัดช่วงให้สั้นลง'); }
    var g = makeGain(data, n, sr, o);
    var h = new DataView(new ArrayBuffer(44));
    writeStr(h, 0, 'RIFF');
    h.setUint32(4, 36 + bytes, true);
    writeStr(h, 8, 'WAVE');
    writeStr(h, 12, 'fmt ');
    h.setUint32(16, 16, true);
    h.setUint16(20, 1, true);
    h.setUint16(22, ch, true);
    h.setUint32(24, sr, true);
    h.setUint32(28, sr * ch * 2, true);
    h.setUint16(32, ch * 2, true);
    h.setUint16(34, 16, true);
    writeStr(h, 36, 'data');
    h.setUint32(40, bytes, true);
    var parts = [h.buffer];
    var CH = 65536;
    var bufs = [];
    for (var c = 0; c < ch; c++) { bufs.push(new Int16Array(CH)); }
    var inter = new Int16Array(CH * ch);
    var last = performance.now();
    for (var pos = 0; pos < n; pos += CH) {
      var len = Math.min(CH, n - pos);
      fillChunk(data, pos, len, n, g, bufs);
      for (var i = 0; i < len; i++) {
        for (var c2 = 0; c2 < ch; c2++) { inter[i * ch + c2] = bufs[c2][i]; }
      }
      parts.push(inter.slice(0, len * ch));
      var now = performance.now();
      if (now - last > 40) {
        onProg(Math.min(99, Math.floor(pos / n * 100)));
        await tick();
        last = performance.now();
      }
    }
    return new Blob(parts, { type: 'audio/wav' });
  }
  function outName(name, fmt) {
    var base = String(name).replace(/\.[^.]+$/, '').replace(/[\\/:*?"<>|]/g, '_') || 'audio';
    return base + '.' + fmt;
  }

  async function convertOne(it, o) {
    it.error = '';
    it.note = '';
    it.pct = 0;
    it.blob = null;
    revoke(it);
    try {
      it.status = 'decode';
      updateItem(it);
      await tick();
      var ab = await it.file.arrayBuffer();
      var buf = await decode(ab);
      ab = null;
      it.dur = buf.duration;
      var start = o.ts === null ? 0 : o.ts;
      var end = (o.te === null || o.te > buf.duration) ? buf.duration : o.te;
      if (start >= buf.duration) { throw new Error('เวลาเริ่มตัดเกินความยาวไฟล์ (' + fmtTime(buf.duration) + ')'); }
      if (end <= start) { throw new Error('ช่วงเวลาที่ตัดไม่ถูกต้อง'); }
      var dur = end - start;
      var srcCh = buf.numberOfChannels;
      var ch = o.ch === '1' ? 1 : (o.ch === '2' ? 2 : Math.min(srcCh, 2));
      var sr = o.sr || buf.sampleRate;
      if (o.fmt === 'mp3' && MP3_RATES.indexOf(sr) === -1) { sr = (sr % 11025 === 0) ? 44100 : 48000; }
      var kbps = o.kbps;
      if (o.fmt === 'mp3') {
        var maxK = sr <= 12000 ? 64 : (sr <= 24000 ? 160 : 320);
        if (kbps > maxK) {
          kbps = maxK;
          it.note = 'ปรับบิตเรตเป็น ' + maxK + ' kbps ให้เหมาะกับแซมเปิลเรต ' + sr + ' Hz';
        }
      }
      var data = [];
      var n = 0;
      if (sr !== buf.sampleRate || ch !== srcCh) {
        var OAC = window.OfflineAudioContext || window.webkitOfflineAudioContext;
        if (!OAC) { throw new Error('เบราว์เซอร์นี้ไม่รองรับการปรับแซมเปิลเรตหรือช่องเสียง'); }
        var oc = new OAC(ch, Math.max(1, Math.ceil(dur * sr)), sr);
        var src = oc.createBufferSource();
        src.buffer = buf;
        src.connect(oc.destination);
        src.start(0, start, dur);
        var rb = await oc.startRendering();
        for (var c = 0; c < ch; c++) { data.push(rb.getChannelData(c)); }
        n = rb.length;
        buf = null;
      } else {
        var s0 = Math.floor(start * sr);
        n = Math.max(1, Math.min(Math.floor(dur * sr), buf.length - s0));
        for (var c2 = 0; c2 < ch; c2++) { data.push(buf.getChannelData(c2).subarray(s0, s0 + n)); }
      }
      it.status = 'encode';
      it.pct = 0;
      updateItem(it);
      await tick();
      var cb = function (p) { setProgress(it, p); };
      var result = o.fmt === 'mp3' ? await encodeMp3(data, n, sr, kbps, o, cb) : await encodeWav(data, n, sr, o, cb);
      it.blob = result;
      it.outSize = result.size;
      it.outName = outName(it.file.name, o.fmt);
      it.outUrl = URL.createObjectURL(result);
      it.origUrl = URL.createObjectURL(it.file);
      it.status = 'done';
    } catch (err) {
      it.status = 'error';
      it.error = friendly(err);
    }
    updateItem(it);
  }
  async function startAll() {
    if (busy) { return; }
    var todo = files.filter(function (f) { return f.status === 'queue' || f.status === 'error'; });
    if (!todo.length) { msg('ยังไม่มีไฟล์ที่ต้องแปลง — เพิ่มไฟล์ก่อน', 'bad'); return; }
    var o = readOpts();
    if (o.error) { msg(o.error, 'bad'); return; }
    busy = true;
    setBusy(true);
    try {
      if (o.fmt === 'mp3') {
        msg('กำลังโหลดตัวเข้ารหัส MP3…');
        try {
          await loadLib();
        } catch (e5) {
          msg('โหลดตัวเข้ารหัส MP3 ไม่สำเร็จ ตรวจสอบอินเทอร์เน็ตแล้วลองใหม่ หรือเลือกรูปแบบ WAV แทน (WAV ไม่ต้องใช้ตัวเข้ารหัสภายนอก)', 'bad');
          return;
        }
      }
      var ok = 0, bad = 0;
      for (var i = 0; i < todo.length; i++) {
        msg('กำลังแปลงไฟล์ ' + (i + 1) + ' จาก ' + todo.length + '…');
        await convertOne(todo[i], o);
        if (todo[i].status === 'done') { ok++; } else { bad++; }
      }
      msg('เสร็จแล้ว: สำเร็จ ' + ok + ' ไฟล์' + (bad ? ', ผิดพลาด ' + bad + ' ไฟล์' : ''), bad ? 'bad' : 'ok');
    } finally {
      busy = false;
      setBusy(false);
    }
  }

  /* ---------- zip (store, no compression) ---------- */
  var crcTable = (function () {
    var t = new Uint32Array(256);
    for (var n = 0; n < 256; n++) {
      var c = n;
      for (var k = 0; k < 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
      t[n] = c >>> 0;
    }
    return t;
  })();
  function crc32(u8) {
    var c = 0xFFFFFFFF;
    for (var i = 0; i < u8.length; i++) { c = crcTable[(c ^ u8[i]) & 255] ^ (c >>> 8); }
    return (c ^ 0xFFFFFFFF) >>> 0;
  }
  async function makeZip(entries) {
    var enc = new TextEncoder();
    var parts = [];
    var central = [];
    var offset = 0;
    var d = new Date();
    var dt = (d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1);
    var dd = ((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate();
    for (var i = 0; i < entries.length; i++) {
      var e = entries[i];
      var data = new Uint8Array(await e.blob.arrayBuffer());
      var crc = crc32(data);
      var nameB = enc.encode(e.name);
      var lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true);
      lh.setUint16(4, 20, true);
      lh.setUint16(6, 0x0800, true);
      lh.setUint16(8, 0, true);
      lh.setUint16(10, dt, true);
      lh.setUint16(12, dd, true);
      lh.setUint32(14, crc, true);
      lh.setUint32(18, data.length, true);
      lh.setUint32(22, data.length, true);
      lh.setUint16(26, nameB.length, true);
      lh.setUint16(28, 0, true);
      parts.push(new Uint8Array(lh.buffer), nameB, e.blob);
      var ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true);
      ch.setUint16(4, 20, true);
      ch.setUint16(6, 20, true);
      ch.setUint16(8, 0x0800, true);
      ch.setUint16(10, 0, true);
      ch.setUint16(12, dt, true);
      ch.setUint16(14, dd, true);
      ch.setUint32(16, crc, true);
      ch.setUint32(20, data.length, true);
      ch.setUint32(24, data.length, true);
      ch.setUint16(28, nameB.length, true);
      ch.setUint16(30, 0, true);
      ch.setUint16(32, 0, true);
      ch.setUint16(34, 0, true);
      ch.setUint16(36, 0, true);
      ch.setUint32(38, 0, true);
      ch.setUint32(42, offset, true);
      central.push(new Uint8Array(ch.buffer), nameB);
      offset += 30 + nameB.length + data.length;
    }
    var cdSize = 0;
    central.forEach(function (a) { cdSize += a.length; });
    var end = new DataView(new ArrayBuffer(22));
    end.setUint32(0, 0x06054b50, true);
    end.setUint16(4, 0, true);
    end.setUint16(6, 0, true);
    end.setUint16(8, entries.length, true);
    end.setUint16(10, entries.length, true);
    end.setUint32(12, cdSize, true);
    end.setUint32(16, offset, true);
    end.setUint16(20, 0, true);
    return new Blob(parts.concat(central, [new Uint8Array(end.buffer)]), { type: 'application/zip' });
  }
  function triggerDownload(url, name, revokeLater) {
    var a = document.createElement('a');
    a.href = url;
    a.download = name;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    if (revokeLater) { setTimeout(function () { URL.revokeObjectURL(url); }, 60000); }
  }
  async function downloadZip() {
    if (busy) { return; }
    var done = files.filter(function (f) { return f.status === 'done' && f.blob; });
    if (!done.length) { msg('ยังไม่มีไฟล์ที่แปลงเสร็จ', 'bad'); return; }
    if (done.length === 1) { triggerDownload(done[0].outUrl, done[0].outName, false); return; }
    var total = 0;
    done.forEach(function (f) { total += f.blob.size; });
    if (total > 4000000000) { msg('ไฟล์รวมกันใหญ่เกิน 4 GB — ดาวน์โหลดทีละไฟล์แทน', 'bad'); return; }
    msg('กำลังสร้างไฟล์ Zip…');
    var used = {};
    var entries = done.map(function (f) {
      var nm = f.outName;
      if (used[nm]) {
        used[nm] += 1;
        nm = nm.replace(/(\.[^.]+)$/, ' (' + used[nm] + ')$1');
      } else {
        used[nm] = 1;
      }
      return { name: nm, blob: f.blob };
    });
    try {
      var zip = await makeZip(entries);
      triggerDownload(URL.createObjectURL(zip), 'converted-audio.zip', true);
      msg('สร้างไฟล์ Zip แล้ว', 'ok');
    } catch (err) {
      msg('สร้างไฟล์ Zip ไม่สำเร็จ: ' + friendly(err), 'bad');
    }
  }

  /* ---------- events (delegated, so they survive DOM re-rendering) ---------- */
  function inRoot(el) {
    var root = $('mp3t-root');
    return !!(root && el && root.contains(el));
  }
  document.addEventListener('click', function (e) {
    var t = e.target && e.target.closest ? e.target.closest('[data-act]') : null;
    if (!t || !inRoot(t)) { return; }
    var act = t.getAttribute('data-act');
    var id = parseInt(t.getAttribute('data-id'), 10);
    if (act === 'pick') { var inp = $('mp3t-input'); if (inp) { inp.click(); } }
    else if (act === 'start') { startAll(); }
    else if (act === 'zip') { downloadZip(); }
    else if (act === 'clear') { clearAll(); }
    else if (act === 'url') { addUrl(); }
    else if (act === 'remove') { removeItem(id); }
    else if (act === 'redo') { redoItem(id); }
    else if (act === 'coverclear') { clearCover(); }
  });
  document.addEventListener('change', function (e) {
    var t = e.target;
    if (!t || !t.id || !inRoot(t)) { return; }
    if (t.id === 'mp3t-input') {
      var list = Array.prototype.slice.call(t.files || []);
      t.value = '';
      addFiles(list);
    } else if (t.id === 'mp3t-preset') {
      applyPreset(t.value);
    } else if (t.id === 'mp3t-cover') {
      loadCover(t.files && t.files[0]);
    } else if (SETTING_IDS.indexOf(t.id) !== -1) {
      if (t.id === 'mp3t-fmt') { syncFmt(); }
      setVal('mp3t-preset', '');
    }
  });
  function dropEl(e) { return e.target && e.target.closest ? e.target.closest('#mp3t-drop') : null; }
  document.addEventListener('dragover', function (e) {
    var d = dropEl(e);
    if (d) { e.preventDefault(); d.classList.add('mp3t-over'); }
  });
  document.addEventListener('dragleave', function (e) {
    var d = dropEl(e);
    if (d) { d.classList.remove('mp3t-over'); }
  });
  document.addEventListener('drop', function (e) {
    var d = dropEl(e);
    if (!d) { return; }
    e.preventDefault();
    d.classList.remove('mp3t-over');
    if (e.dataTransfer && e.dataTransfer.files) { addFiles(Array.prototype.slice.call(e.dataTransfer.files)); }
  });
  document.addEventListener('keydown', function (e) {
    var t = e.target;
    if (!t || !inRoot(t)) { return; }
    if ((e.key === 'Enter' || e.key === ' ') && t.id === 'mp3t-drop') {
      e.preventDefault();
      var inp = $('mp3t-input');
      if (inp) { inp.click(); }
    } else if (e.key === 'Enter' && t.id === 'mp3t-url') {
      e.preventDefault();
      addUrl();
    }
  });
  document.addEventListener('paste', function (e) {
    if (!$('mp3t-root')) { return; }
    var t = e.target;
    if (t && /^(INPUT|TEXTAREA|SELECT)$/.test(t.tagName)) { return; }
    var fl = e.clipboardData && e.clipboardData.files;
    if (fl && fl.length) {
      e.preventDefault();
      addFiles(Array.prototype.slice.call(fl));
    }
  });

  function init() { syncFmt(); renderList(); }
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }

  if (window.__MP3T_TEST) {
    window.__MP3T_TEST = { crc32: crc32, makeZip: makeZip, buildId3: buildId3, encodeWav: encodeWav, encodeMp3: encodeMp3, parseTime: parseTime, concatU8: concatU8 };
  }
})();
</script>

## วิธีใช้งานเครื่องมือแปลงไฟล์เสียงเป็น MP3

1. **เพิ่มไฟล์** — ลากไฟล์เสียงหรือวิดีโอมาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ กด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้ หรือวางลิงก์ไฟล์โดยตรงแล้วกด "เพิ่มจากลิงก์" เพิ่มได้หลายไฟล์พร้อมกัน
2. **เลือกพรีเซ็ตหรือตั้งค่าเอง** — เลือกพรีเซ็ตที่ตรงกับงาน (เสียงพูด/พอดแคสต์, เพลงคุณภาพสูง, ไฟล์เล็กที่สุด, ริงโทน) หรือเลือกรูปแบบปลายทางและบิตเรตเอง ค่าเริ่มต้นคือ MP3 ที่ 192 kbps
3. **ตั้งค่าขั้นสูง (ไม่บังคับ)** — เปิดส่วน "ตั้งค่าขั้นสูง" เพื่อปรับแซมเปิลเรต เปลี่ยนเป็นโมโนหรือสเตอริโอ ตัดช่วงเวลา ใส่เฟดอิน/เฟดเอาต์ และเปิด Normalize เพื่อปรับความดังให้พอดี
4. **ใส่แท็ก ID3 และรูปปก (ไม่บังคับ)** — กรอกชื่อเพลง ศิลปิน อัลบั้ม และเลือกรูปปก เพื่อให้เครื่องเล่นเพลงแสดงข้อมูลได้ครบ
5. **กด "แปลงทั้งหมด"** — ระบบจะแปลงทีละไฟล์พร้อมแถบความคืบหน้า ควรเปิดแท็บนี้ค้างไว้จนเสร็จ
6. **ฟังตัวอย่างและดาวน์โหลด** — เปรียบเทียบเสียงต้นฉบับกับผลลัพธ์ ดูขนาดไฟล์ก่อนและหลัง แล้วกด "ดาวน์โหลด" ทีละไฟล์ หรือ "ดาวน์โหลดทั้งหมด (Zip)" หากไม่พอใจ ปรับค่าแล้วกด "แปลงใหม่" ที่ไฟล์นั้นได้ทันที

## เลือกบิตเรตอย่างไร

ขนาดไฟล์ MP3 แบบบิตเรตคงที่ขึ้นกับความยาวเสียงและบิตเรตเท่านั้น ตารางนี้เป็นค่าโดยประมาณต่อเสียงยาว 1 นาที

| บิตเรต | ขนาดต่อ 1 นาที | เหมาะกับ |
|---|---|---|
| 64 kbps | ประมาณ 0.48 MB | เสียงพูดที่ต้องการไฟล์เล็กที่สุด |
| 96 kbps | ประมาณ 0.72 MB | พอดแคสต์ บันทึกเสียง บันทึกการประชุม |
| 128 kbps | ประมาณ 0.96 MB | เพลงทั่วไปที่ฟังบนมือถือ |
| 192 kbps | ประมาณ 1.44 MB | เพลงคุณภาพดี (ค่าเริ่มต้น) |
| 256 kbps | ประมาณ 1.92 MB | เพลงคุณภาพสูง |
| 320 kbps | ประมาณ 2.40 MB | คุณภาพสูงสุดของ MP3 |

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

| คำศัพท์ | ความหมายโดยย่อ |
|---|---|
| MP3 | ฟอร์แมตไฟล์เสียงแบบบีบอัดที่เล่นได้เกือบทุกอุปกรณ์ ไฟล์เล็กแต่ตัดรายละเอียดเสียงบางส่วนออก |
| WAV | เสียงดิบแบบไม่บีบอัด คุณภาพเท่าต้นฉบับ ไฟล์ใหญ่ เหมาะกับงานตัดต่อ |
| Lossy / Lossless | Lossy คือบีบอัดโดยสูญเสียข้อมูลบางส่วน (เช่น MP3) ส่วน Lossless เก็บข้อมูลครบ (เช่น WAV, FLAC) |
| บิตเรต (Bitrate, kbps) | ปริมาณข้อมูลเสียงต่อวินาที ยิ่งสูงเสียงยิ่งละเอียดและไฟล์ยิ่งใหญ่ |
| CBR (Constant Bitrate) | บิตเรตคงที่ตลอดทั้งไฟล์ ซึ่งเป็นโหมดที่เครื่องมือนี้ใช้ |
| แซมเปิลเรต (Sample Rate, Hz) | จำนวนครั้งที่สุ่มวัดเสียงต่อวินาที 44,100 Hz เป็นมาตรฐานของเพลง 48,000 Hz พบมากในวิดีโอ ส่วน 22,050 หรือ 16,000 Hz พอสำหรับเสียงพูด |
| ช่องเสียง (Mono / Stereo) | โมโนมี 1 ช่อง สเตอริโอมี 2 ช่อง (ซ้ายและขวา) โมโนเหมาะกับเสียงพูดเพราะใช้บิตเรตต่ำได้โดยยังฟังชัด |
| Normalize | ปรับความดังทั้งไฟล์ให้จุดสูงสุดของเสียงอยู่ที่ราว 95% ของระดับสูงสุดที่ไม่แตก |
| เฟดอิน / เฟดเอาต์ | ค่อย ๆ เพิ่มเสียงตอนเริ่ม หรือค่อย ๆ ลดเสียงตอนจบ เพื่อไม่ให้ตัดกะทันหัน |
| ตัดช่วง (Trim) | เลือกเวลาเริ่มและสิ้นสุดที่ต้องการเก็บไว้ พิมพ์ได้ เช่น 90, 1:30 หรือ 01:02:03.5 |
| แท็ก ID3 | ข้อมูลที่ฝังในไฟล์ MP3 เช่น ชื่อเพลง ศิลปิน อัลบั้ม ซึ่งเครื่องเล่นจะนำไปแสดง |
| รูปปก (Cover art) | ภาพหน้าปกอัลบั้มที่ฝังในแท็ก ID3 รองรับ JPG และ PNG |
| พรีเซ็ต (Preset) | ชุดค่าตั้งสำเร็จรูปสำหรับงานที่พบบ่อย เช่น เสียงพูดหรือริงโทน |
| แบตช์ / Zip | แปลงหลายไฟล์พร้อมกัน แล้วรวมผลลัพธ์เป็นไฟล์ Zip ไฟล์เดียวเพื่อดาวน์โหลดสะดวก |
| ถอดรหัส / เข้ารหัส (Decode / Encode) | ถอดรหัสคือการอ่านไฟล์ต้นฉบับเป็นเสียงดิบ เข้ารหัสคือการบีบอัดกลับเป็น MP3 หรือ WAV |
| CORS | กฎของเบราว์เซอร์ที่เว็บต้นทางต้องอนุญาตก่อน จึงจะดึงไฟล์จากลิงก์มาแปลงได้ |

## คำถามที่พบบ่อย

### ไฟล์ของฉันถูกอัปโหลดไปยังเซิร์ฟเวอร์หรือไม่

ไม่ การถอดรหัสและเข้ารหัสเสียงทำงานในเบราว์เซอร์ของคุณ ไฟล์เสียงจึงไม่ออกจากอุปกรณ์ สิ่งเดียวที่ดาวน์โหลดเพิ่มคือสคริปต์ตัวเข้ารหัส MP3 ขนาดเล็ก ซึ่งโหลดเมื่อกดแปลงเป็น MP3 ครั้งแรก (การแปลงเป็น WAV ไม่ต้องใช้สคริปต์นี้)

### รองรับไฟล์ขนาดเท่าไร

ทางเว็บไม่จำกัดขนาด แต่ขึ้นกับหน่วยความจำของอุปกรณ์ เพราะไฟล์ถูกถอดรหัสเป็นเสียงดิบก่อนแปลง เสียงสเตอริโอยาว 1 ชั่วโมงใช้หน่วยความจำราว 1.2 GB ไฟล์ที่ใหญ่กว่า 200 MB หรือเสียงยาวหลายชั่วโมงอาจช้าหรือหน่วยความจำไม่พอ แนะนำให้ใช้ตัดช่วงแล้วแปลงทีละส่วน

### รองรับฟอร์แมตอะไรบ้าง

ขึ้นกับเบราว์เซอร์ที่ใช้ โดยทั่วไปเบราว์เซอร์รุ่นใหม่เปิด MP3, WAV, M4A/AAC, OGG, Opus, FLAC และเสียงจากวิดีโอ MP4 หรือ WebM ได้ ส่วน WMA, AMR หรือ AIFF อาจใช้ไม่ได้ในบางเบราว์เซอร์ หากแปลงไม่ผ่านให้ลองเบราว์เซอร์อื่น เช่น Chrome, Edge หรือ Safari

### แปลงแล้วคุณภาพเสียงลดลงหรือไม่

MP3 เป็นการบีบอัดแบบสูญเสียข้อมูล หากต้นฉบับเป็น WAV หรือ FLAC ให้เลือกบิตเรต 192-320 kbps หากต้นฉบับเป็น MP3 หรือ AAC อยู่แล้ว การแปลงซ้ำจะลดคุณภาพลงเล็กน้อย และไม่ควรตั้งบิตเรตต่ำกว่าไฟล์ต้นฉบับ

### ใช้บนมือถือได้หรือไม่

ได้ แต่ควรเปิดแท็บนี้ค้างไว้ระหว่างแปลง เพราะการสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว ไฟล์ขนาดเล็กถึงกลางจะเหมาะที่สุดบนมือถือ

### แปลงไม่สำเร็จหรือโหลดตัวเข้ารหัสไม่ได้ ต้องทำอย่างไร

ตรวจสอบการเชื่อมต่ออินเทอร์เน็ตแล้วกดแปลงใหม่ หากยังไม่ได้ให้เลือกรูปแบบ WAV แทน ซึ่งไม่ต้องโหลดตัวเข้ารหัสภายนอก หากข้อความแจ้งว่าถอดรหัสไฟล์ไม่ได้ ให้ตรวจว่าไฟล์ไม่เสียหาย และวิดีโอมีแทร็กเสียง

## ข้อจำกัดของเครื่องมือ

- ปลายทางรองรับ MP3 แบบบิตเรตคงที่ (CBR) และ WAV 16 บิตเท่านั้น ยังไม่รองรับ M4A, OGG หรือ FLAC
- ฟอร์แมตต้นฉบับที่เปิดได้ขึ้นกับเบราว์เซอร์ที่ใช้
- การแปลงเป็น MP3 ครั้งแรกต้องใช้อินเทอร์เน็ตเพื่อโหลดตัวเข้ารหัส
- ไฟล์ใหญ่มากใช้หน่วยความจำสูง และไฟล์ WAV ต้องไม่เกิน 4 GB
- การเพิ่มจากลิงก์ใช้ได้เฉพาะลิงก์ไฟล์เสียงหรือวิดีโอโดยตรงที่เซิร์ฟเวอร์ต้นทางอนุญาต (CORS) ไม่รองรับลิงก์หน้าเว็บอย่าง YouTube
- ใช้กับไฟล์ที่คุณเป็นเจ้าของหรือมีสิทธิ์ใช้งานเท่านั้น