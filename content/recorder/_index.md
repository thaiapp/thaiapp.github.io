---
title: บันทึกเสียง หน้าจอ & เว็บแคมออนไลน์ ฟรี | Prasslina
h1: บันทึกเสียง หน้าจอ & เว็บแคมออนไลน์
description: บันทึกเสียง หน้าจอ และเว็บแคมออนไลน์ฟรี ไม่ต้องติดตั้งหรือสมัครสมาชิก ไม่มีลายน้ำ ไฟล์ไม่ถูกอัปโหลด ตัดเสียงและดาวน์โหลด MP4 WebM WAV ได้ทันทีในเบราว์เซอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-15T09:00:00+07:00'
weight: 120
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- บันทึกเสียง หน้าจอ & เว็บแคมออนไลน์
- เสียงและวิดีโอ
- บันทึกหน้าจอออนไลน์
- บันทึกเสียงออนไลน์
- บันทึกเว็บแคม
- ตัดเสียงออนไลน์
---

<div id="rc-app" class="rc">
<div class="rc-tabs" role="tablist" aria-label="เลือกโหมดบันทึก">
<button type="button" role="tab" class="rc-tab rc-on" data-mode="voice" aria-selected="true">🎙️ บันทึกเสียง</button>
<button type="button" role="tab" class="rc-tab" data-mode="screen" aria-selected="false">🖥️ บันทึกหน้าจอ</button>
<button type="button" role="tab" class="rc-tab" data-mode="webcam" aria-selected="false">📹 บันทึกเว็บแคม</button>
</div>
<p id="rc-note" class="rc-note" hidden></p>
<div class="rc-stage">
<video id="rc-video" muted playsinline hidden></video>
<canvas id="rc-wave" width="720" height="180"></canvas>
<div id="rc-ph" class="rc-ph" hidden>ภาพตัวอย่างจะแสดงที่นี่</div>
<div id="rc-count" class="rc-count" hidden></div>
<div class="rc-time"><span id="rc-timer">00:00.0</span><span id="rc-status" class="rc-status">พร้อมบันทึก</span></div>
<div class="rc-meter" aria-hidden="true"><i id="rc-meter"></i></div>
</div>
<div class="rc-ctrl">
<button type="button" id="rc-start" class="rc-btn rc-primary">⏺ เริ่มบันทึก</button>
<button type="button" id="rc-pause" class="rc-btn" disabled>⏸ พัก</button>
<button type="button" id="rc-stop" class="rc-btn" disabled>⏹ หยุด</button>
<button type="button" id="rc-test" class="rc-btn">🔍 ทดสอบอุปกรณ์</button>
</div>
<p id="rc-error" class="rc-error" role="alert" hidden></p>
<details class="rc-set" open>
<summary>⚙️ ตั้งค่าการบันทึก</summary>
<div class="rc-grid">
<label>ไมโครโฟน<select id="rc-mic"><option value="">ค่าเริ่มต้นของระบบ</option></select></label>
<label data-modes="screen webcam">กล้อง<select id="rc-cam"><option value="">ค่าเริ่มต้นของระบบ</option></select></label>
<label data-modes="screen webcam">ความละเอียด<select id="rc-res"><option value="720">720p (HD)</option><option value="1080" selected>1080p (Full HD)</option><option value="2160">4K (2160p)</option></select></label>
<label data-modes="screen webcam">เฟรมเรต (FPS)<select id="rc-fps"><option value="24">24 FPS</option><option value="30" selected>30 FPS</option><option value="60">60 FPS</option></select></label>
<label>รูปแบบไฟล์<select id="rc-fmt"><option value="auto">อัตโนมัติ (MP4/M4A ถ้ารองรับ)</option><option value="webm">WebM / Ogg</option></select></label>
<label>นับถอยหลังก่อนเริ่ม<select id="rc-cd"><option value="0">ไม่นับ</option><option value="3" selected>3 วินาที</option><option value="5">5 วินาที</option></select></label>
<label data-modes="screen">มุมวงกลมเว็บแคม<select id="rc-bpos"><option value="br" selected>ขวาล่าง</option><option value="bl">ซ้ายล่าง</option><option value="tr">ขวาบน</option><option value="tl">ซ้ายบน</option></select></label>
<label data-modes="screen">ขนาดวงกลมเว็บแคม<select id="rc-bsize"><option value="18">เล็ก</option><option value="24" selected>กลาง</option><option value="32">ใหญ่</option></select></label>
</div>
<div class="rc-checks">
<label data-modes="screen webcam"><input type="checkbox" id="rc-usemic" checked> ใช้ไมโครโฟน</label>
<label data-modes="screen"><input type="checkbox" id="rc-sys" checked> เสียงจากระบบ/แท็บ</label>
<label data-modes="screen"><input type="checkbox" id="rc-bubble"> แสดงเว็บแคมเป็นวงกลมบนวิดีโอ</label>
<label><input type="checkbox" id="rc-ns" checked> ตัดเสียงรบกวน</label>
<label><input type="checkbox" id="rc-ec" checked> ตัดเสียงสะท้อน</label>
<label><input type="checkbox" id="rc-agc" checked> ปรับระดับเสียงอัตโนมัติ</label>
<label><input type="checkbox" id="rc-save" checked> บันทึกอัตโนมัติในเบราว์เซอร์</label>
</div>
<p class="rc-muted">ปุ่มลัด: Alt+Shift+R เริ่ม/หยุด · Alt+Shift+P พัก/ต่อ (ใช้ได้เมื่อแท็บนี้เป็นหน้าที่เปิดอยู่)</p>
</details>
<h2 class="rc-h">📁 การบันทึกของคุณ</h2>
<div class="rc-bar"><span id="rc-usage" class="rc-muted"></span><button type="button" id="rc-clear" class="rc-btn rc-sm">🗑 ลบทั้งหมด</button></div>
<div id="rc-list" class="rc-list"></div>
<div id="rc-trim" class="rc-trim" hidden></div>
</div>

<style>
.rc{max-width:860px;margin:1rem auto;color:inherit;font-family:inherit;line-height:1.5}
.rc [hidden]{display:none!important}
.rc *{box-sizing:border-box}
.rc-tabs{display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:.75rem}
.rc-tab{flex:1 1 140px;padding:.7rem 1rem;border:1px solid rgba(128,128,128,.4);border-radius:.6rem;background:rgba(128,128,128,.08);color:inherit;font:inherit;cursor:pointer}
.rc-tab.rc-on{background:#2563eb;border-color:#2563eb;color:#fff}
.rc-note{margin:.5rem 0;padding:.6rem .8rem;border-radius:.5rem;background:rgba(245,158,11,.15);border:1px solid rgba(245,158,11,.5)}
.rc-stage{position:relative;min-height:220px;border:1px solid rgba(128,128,128,.4);border-radius:.75rem;background:rgba(128,128,128,.08);overflow:hidden;display:flex;flex-direction:column;align-items:center;justify-content:center;padding-bottom:3rem}
.rc-stage video{width:100%;max-height:420px;background:#000;display:block}
.rc-stage canvas{width:100%;height:150px;display:block}
.rc-ph{padding:3rem 1rem;opacity:.7;text-align:center}
.rc-count{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;font-size:6rem;font-weight:700;color:#fff;background:rgba(0,0,0,.55)}
.rc-time{position:absolute;left:0;right:0;bottom:.9rem;display:flex;justify-content:space-between;padding:0 .9rem;align-items:center;font-variant-numeric:tabular-nums}
#rc-timer{font-size:1.4rem;font-weight:700}
.rc-status{opacity:.8;font-size:.9rem}
.rc-meter{position:absolute;left:0;right:0;bottom:0;height:.45rem;background:rgba(128,128,128,.25)}
.rc-meter i{display:block;height:100%;width:0;background:#16a34a;transition:width .08s linear}
.rc-ctrl{display:flex;gap:.5rem;flex-wrap:wrap;margin:.9rem 0}
.rc-btn{padding:.6rem 1rem;border:1px solid rgba(128,128,128,.45);border-radius:.55rem;background:rgba(128,128,128,.12);color:inherit;font:inherit;cursor:pointer}
.rc-btn:disabled{opacity:.45;cursor:not-allowed}
.rc-btn.rc-primary{background:#dc2626;border-color:#dc2626;color:#fff;font-weight:600}
.rc-btn.rc-sm{padding:.3rem .7rem;font-size:.85rem}
.rc-error{margin:.5rem 0;padding:.6rem .8rem;border-radius:.5rem;background:rgba(220,38,38,.12);border:1px solid rgba(220,38,38,.5)}
.rc-set{margin:.75rem 0;border:1px solid rgba(128,128,128,.4);border-radius:.75rem;padding:.7rem .9rem}
.rc-set summary{cursor:pointer;font-weight:600}
.rc-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:.7rem;margin-top:.8rem}
.rc-grid label{display:flex;flex-direction:column;gap:.25rem;font-size:.9rem}
.rc select,.rc input[type=text]{padding:.45rem .5rem;border:1px solid rgba(128,128,128,.45);border-radius:.45rem;background:rgba(128,128,128,.1);color:inherit;font:inherit;width:100%}
.rc-checks{display:grid;grid-template-columns:repeat(auto-fit,minmax(230px,1fr));gap:.4rem;margin-top:.8rem}
.rc-checks label{display:flex;gap:.45rem;align-items:center;font-size:.9rem}
.rc-muted{font-size:.85rem;opacity:.75;margin:.5rem 0 0}
.rc-h{margin:1.5rem 0 .5rem;font-size:1.25rem}
.rc-bar{display:flex;justify-content:space-between;align-items:center;gap:.5rem;flex-wrap:wrap;margin-bottom:.6rem}
.rc-list{display:grid;gap:.8rem}
.rc-item{border:1px solid rgba(128,128,128,.4);border-radius:.7rem;padding:.8rem;display:grid;gap:.5rem}
.rc-item video{width:100%;max-height:300px;background:#000;border-radius:.4rem}
.rc-item audio{width:100%}
.rc-meta{font-size:.85rem;opacity:.75}
.rc-row{display:flex;gap:.4rem;flex-wrap:wrap}
.rc-empty{opacity:.7;text-align:center;padding:1rem}
.rc-trim{margin-top:1rem;border:1px solid #2563eb;border-radius:.7rem;padding:.9rem;display:grid;gap:.6rem}
.rc-trim input[type=range]{width:100%}
</style>

<script>
(function () {
  'use strict';
  var root = document.getElementById('rc-app');
  if (!root) { return; }

  function $(id) { return document.getElementById(id); }
  function all(sel) { return Array.prototype.slice.call(root.querySelectorAll(sel)); }
  function el(tag, cls, text) {
    var n = document.createElement(tag);
    if (cls) { n.className = cls; }
    if (text !== undefined) { n.textContent = text; }
    return n;
  }
  function btn(label, fn) {
    var b = el('button', 'rc-btn rc-sm', label);
    b.type = 'button';
    b.addEventListener('click', fn);
    return b;
  }

  var mediaOk = !!(navigator.mediaDevices && navigator.mediaDevices.getUserMedia && window.MediaRecorder);
  var screenOk = !!(navigator.mediaDevices && navigator.mediaDevices.getDisplayMedia);
  var KIND = { voice: 'เสียง', screen: 'หน้าจอ', webcam: 'เว็บแคม' };
  var S = {
    mode: 'voice', recorder: null, streams: [], actx: null, analyser: null, meterRaf: 0,
    chunks: [], chunkN: 0, t0: 0, acc: 0, paused: false, timerId: 0, current: null,
    wake: null, ticker: null, busy: false, testing: false, counting: false, cancel: false,
    mime: '', kind: 'voice', saveOn: true
  };
  var items = [];
  var urls = [];
  var db = null;

  /* ---------- helpers ---------- */
  function pad(n) { return (n < 10 ? '0' : '') + n; }
  function fmtClock(ms) {
    var t = Math.floor(ms / 100), tenth = t % 10, s = Math.floor(t / 10), m = Math.floor(s / 60);
    return pad(m) + ':' + pad(s % 60) + '.' + tenth;
  }
  function fmtDur(sec) {
    if (!sec) { return '--:--'; }
    var s = Math.round(sec), h = Math.floor(s / 3600), m = Math.floor((s % 3600) / 60);
    return (h ? h + ':' + pad(m) : pad(m)) + ':' + pad(s % 60);
  }
  function fmtSize(b) {
    if (b >= 1048576) { return (b / 1048576).toFixed(1) + ' MB'; }
    return Math.max(1, Math.round(b / 1024)) + ' KB';
  }
  function dateLabel(ms) {
    try { return new Date(ms).toLocaleString('th-TH', { dateStyle: 'short', timeStyle: 'short' }); }
    catch (e) { return new Date(ms).toISOString().slice(0, 16).replace('T', ' '); }
  }
  function stamp() {
    var d = new Date();
    return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) + ' ' + pad(d.getHours()) + '.' + pad(d.getMinutes()) + '.' + pad(d.getSeconds());
  }
  function uid() { return Date.now().toString(36) + Math.random().toString(36).slice(2, 6); }
  function extOf(m) {
    m = m || '';
    if (m.indexOf('mp4') !== -1) { return m.indexOf('audio') === 0 ? 'm4a' : 'mp4'; }
    if (m.indexOf('ogg') !== -1) { return 'ogg'; }
    if (m.indexOf('wav') !== -1) { return 'wav'; }
    return 'webm';
  }
  function safeName(n) { return (n || 'recording').replace(/[\\\/:*?"|\u003C\u003E]+/g, '-').trim() || 'recording'; }
  function download(blob, name) {
    var u = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = u; a.download = name;
    document.body.appendChild(a); a.click(); document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(u); }, 4000);
  }
  function setStatus(t) { $('rc-status').textContent = t; }
  function showError(t) { var e = $('rc-error'); e.textContent = t; e.hidden = false; }
  function clearError() { var e = $('rc-error'); e.textContent = ''; e.hidden = true; }
  function explain(err) {
    var n = err && err.name;
    if (n === 'NotAllowedError' || n === 'PermissionDeniedError') { return 'ไม่ได้รับอนุญาตให้เข้าถึงอุปกรณ์/หน้าจอ — กดไอคอนแม่กุญแจข้างที่อยู่เว็บไซต์เพื่ออนุญาต หรือหากเพิ่งกดยกเลิกในหน้าต่างเลือกหน้าจอ ให้ลองใหม่อีกครั้ง'; }
    if (n === 'NotFoundError' || n === 'DevicesNotFoundError') { return 'ไม่พบไมโครโฟนหรือกล้อง — ตรวจสอบว่าเสียบอุปกรณ์แล้ว'; }
    if (n === 'NotReadableError' || n === 'TrackStartError') { return 'อุปกรณ์กำลังถูกใช้งานโดยแอปอื่น — ปิดแอปนั้นแล้วลองใหม่'; }
    if (n === 'OverconstrainedError') { return 'อุปกรณ์ไม่รองรับค่าที่เลือก — ลองลดความละเอียดหรือ FPS'; }
    if (n === 'SecurityError') { return 'หน้านี้ต้องเปิดผ่าน HTTPS จึงจะบันทึกได้'; }
    return 'เกิดข้อผิดพลาด: ' + ((err && (err.message || err.name)) || 'ไม่ทราบสาเหตุ');
  }

  /* ---------- IndexedDB ---------- */
  function openDB() {
    return new Promise(function (resolve) {
      if (!window.indexedDB) { resolve(null); return; }
      try {
        var r = indexedDB.open('rc-recordings', 1);
        r.onupgradeneeded = function () { r.result.createObjectStore('r', { keyPath: 'id' }); };
        r.onsuccess = function () { resolve(r.result); };
        r.onerror = function () { resolve(null); };
      } catch (e) { resolve(null); }
    });
  }
  function idb(fn, mode) {
    return new Promise(function (resolve) {
      if (!db) { resolve(null); return; }
      try {
        var tx = db.transaction('r', mode || 'readwrite');
        var out = fn(tx.objectStore('r'));
        tx.oncomplete = function () { resolve(out && out.result !== undefined ? out.result : true); };
        tx.onerror = function () { resolve(null); };
        tx.onabort = function () { resolve(null); };
      } catch (e) { resolve(null); }
    });
  }
  function dbPut(rec) { return idb(function (st) { return st.put(rec); }); }
  function dbDel(id) { return idb(function (st) { return st.delete(id); }); }
  function persist(item) {
    if (!$('rc-save').checked) { return Promise.resolve(true); }
    return dbPut(item).then(function (r) {
      if (r === null && db) { $('rc-usage').textContent = 'พื้นที่จัดเก็บของเบราว์เซอร์เต็ม — กรุณาดาวน์โหลดไฟล์เก็บไว้'; }
      return r;
    });
  }
  async function loadItems() {
    db = await openDB();
    var recs = await idb(function (st) { return st.getAll(); }, 'readonly');
    if (!Array.isArray(recs)) { return; }
    var parts = {}, metas = [];
    recs.forEach(function (r) {
      if (r.part) { (parts[r.parent] = parts[r.parent] || []).push(r); }
      else if (r.partial) { metas.push(r); }
      else if (r.blob) { items.push(r); }
    });
    var metaIds = {};
    for (var m of metas) {
      metaIds[m.id] = true;
      var ps = (parts[m.id] || []).sort(function (a, b) { return a.n - b.n; });
      if (ps.length) {
        var blob = new Blob(ps.map(function (p) { return p.blob; }), { type: (m.mime || '').split(';')[0] });
        var it = { id: m.id, name: m.name + ' (กู้คืน)', kind: m.kind, mime: blob.type, blob: blob, dur: 0, date: m.date, size: blob.size };
        items.push(it);
        await dbPut(it);
      } else { await dbDel(m.id); }
      ps.forEach(function (p) { dbDel(p.id); });
    }
    Object.keys(parts).forEach(function (k) {
      if (!metaIds[k]) { parts[k].forEach(function (p) { dbDel(p.id); }); }
    });
    items.sort(function (a, b) { return b.date - a.date; });
  }

  /* ---------- UI state ---------- */
  function syncButtons() {
    var rec = !!S.recorder, cnt = S.counting;
    var blocked = !mediaOk || (S.mode === 'screen' && !screenOk);
    $('rc-start').disabled = rec || cnt || S.busy || blocked;
    $('rc-pause').disabled = !rec || cnt;
    $('rc-pause').textContent = S.paused ? '▶ ต่อ' : '⏸ พัก';
    $('rc-stop').disabled = !(rec || cnt);
    $('rc-test').disabled = rec || cnt || S.busy || !mediaOk;
    $('rc-test').textContent = S.testing ? '⏹ หยุดทดสอบ' : '🔍 ทดสอบอุปกรณ์';
    all('.rc-tab').forEach(function (b) { b.disabled = rec || cnt || S.busy; });
  }
  function refreshStage() {
    var hasV = !!$('rc-video').srcObject;
    $('rc-video').hidden = !hasV;
    $('rc-wave').hidden = S.mode !== 'voice';
    $('rc-ph').hidden = S.mode === 'voice' || hasV;
  }
  function showPreview(stream) {
    var v = $('rc-video');
    v.srcObject = stream || null;
    if (stream) { var p = v.play(); if (p && p.catch) { p.catch(function () {}); } }
    refreshStage();
  }
  function applyMode(m) {
    S.mode = m;
    all('.rc-tab').forEach(function (b) {
      var on = b.getAttribute('data-mode') === m;
      b.classList.toggle('rc-on', on);
      b.setAttribute('aria-selected', on ? 'true' : 'false');
    });
    all('[data-modes]').forEach(function (n) {
      n.hidden = n.getAttribute('data-modes').split(' ').indexOf(m) === -1;
    });
    $('rc-ph').textContent = m === 'screen' ? 'ภาพตัวอย่างหน้าจอของคุณจะแสดงที่นี่' : 'ภาพตัวอย่างจากกล้องจะแสดงที่นี่';
    var note = $('rc-note');
    if (!mediaOk) {
      note.textContent = 'เบราว์เซอร์นี้ไม่รองรับการบันทึก หรือหน้านี้ไม่ได้เปิดผ่าน HTTPS — ลองใช้ Chrome, Edge, Firefox หรือ Safari รุ่นล่าสุด';
      note.hidden = false;
    } else if (m === 'screen' && !screenOk) {
      note.textContent = 'เบราว์เซอร์นี้ไม่รองรับการบันทึกหน้าจอ (มือถือและแท็บเล็ตส่วนใหญ่ยังไม่รองรับ) — ใช้โหมดบันทึกเสียงหรือเว็บแคมแทนได้';
      note.hidden = false;
    } else if (m === 'screen') {
      note.textContent = 'เสียงจากระบบ/แท็บใช้ได้เมื่อเลือกแชร์ "แท็บ" ใน Chrome/Edge (ติ๊ก "แชร์เสียงแท็บ") — Firefox และ Safari อาจไม่รองรับ';
      note.hidden = false;
    } else { note.hidden = true; }
    refreshStage();
    syncButtons();
  }

  /* ---------- devices ---------- */
  function fillSelect(sel, devs, label) {
    var cur = sel.value;
    while (sel.options.length > 1) { sel.remove(1); }
    devs.forEach(function (d, i) {
      var o = document.createElement('option');
      o.value = d.deviceId;
      o.textContent = d.label || (label + ' ' + (i + 1));
      sel.appendChild(o);
    });
    var exists = Array.prototype.some.call(sel.options, function (o) { return o.value === cur; });
    sel.value = exists ? cur : '';
  }
  function loadDevices() {
    if (!navigator.mediaDevices || !navigator.mediaDevices.enumerateDevices) { return Promise.resolve(); }
    return navigator.mediaDevices.enumerateDevices().then(function (list) {
      fillSelect($('rc-mic'), list.filter(function (d) { return d.kind === 'audioinput'; }), 'ไมโครโฟน');
      fillSelect($('rc-cam'), list.filter(function (d) { return d.kind === 'videoinput'; }), 'กล้อง');
    }).catch(function () {});
  }

  /* ---------- constraints ---------- */
  function resSize() { var h = +$('rc-res').value; return { h: h, w: Math.round(h * 16 / 9) }; }
  function micConstraints() {
    var c = { noiseSuppression: $('rc-ns').checked, echoCancellation: $('rc-ec').checked, autoGainControl: $('rc-agc').checked };
    if ($('rc-mic').value) { c.deviceId = { exact: $('rc-mic').value }; }
    return c;
  }
  function camConstraints() {
    var r = resSize();
    var c = { width: { ideal: r.w }, height: { ideal: r.h }, frameRate: { ideal: +$('rc-fps').value } };
    if ($('rc-cam').value) { c.deviceId = { exact: $('rc-cam').value }; }
    return c;
  }
  function bitrate() {
    var h = +$('rc-res').value, f = +$('rc-fps').value;
    var base = h >= 2160 ? 18000000 : (h >= 1080 ? 6000000 : 3000000);
    return f >= 60 ? Math.round(base * 1.5) : base;
  }
  function pickMime(hasVideo) {
    var list = hasVideo
      ? ['video/mp4', 'video/webm;codecs=vp9,opus', 'video/webm;codecs=vp8,opus', 'video/webm']
      : ['audio/mp4', 'audio/webm;codecs=opus', 'audio/ogg;codecs=opus', 'audio/webm'];
    if ($('rc-fmt').value === 'webm') { list = list.filter(function (t) { return t.indexOf('mp4') === -1; }); }
    return list.find(function (t) { return MediaRecorder.isTypeSupported(t); }) || '';
  }

  /* ---------- streams ---------- */
  async function acquire() {
    var m = S.mode, r = resSize(), fps = +$('rc-fps').value;
    var parts = { audio: [], screen: null, cam: null };
    if (m === 'screen') {
      var ds = await navigator.mediaDevices.getDisplayMedia({
        video: { width: { ideal: r.w }, height: { ideal: r.h }, frameRate: { ideal: fps } },
        audio: $('rc-sys').checked
      });
      S.streams.push(ds);
      parts.screen = ds;
      if (ds.getAudioTracks().length) { parts.audio.push(ds); }
    }
    if (m === 'webcam') {
      var wantMic = $('rc-usemic').checked;
      var ws = await navigator.mediaDevices.getUserMedia({ video: camConstraints(), audio: wantMic ? micConstraints() : false });
      S.streams.push(ws);
      parts.cam = ws;
      if (ws.getAudioTracks().length) { parts.audio.push(ws); }
    }
    if (m === 'screen' && $('rc-bubble').checked) {
      var cs = await navigator.mediaDevices.getUserMedia({ video: camConstraints() });
      S.streams.push(cs);
      parts.cam = cs;
    }
    if (m === 'voice' || (m === 'screen' && $('rc-usemic').checked)) {
      var ms = await navigator.mediaDevices.getUserMedia({ audio: micConstraints() });
      S.streams.push(ms);
      parts.audio.push(ms);
    }
    return parts;
  }
  function audioGraph(streams, withDest) {
    if (!streams.length) { return null; }
    var AC = window.AudioContext || window.webkitAudioContext;
    S.actx = new AC();
    if (S.actx.state === 'suspended') { S.actx.resume().catch(function () {}); }
    S.analyser = S.actx.createAnalyser();
    S.analyser.fftSize = 1024;
    var dest = withDest ? S.actx.createMediaStreamDestination() : null;
    streams.forEach(function (st) {
      var tracks = st.getAudioTracks();
      if (!tracks.length) { return; }
      var src = S.actx.createMediaStreamSource(new MediaStream(tracks));
      src.connect(S.analyser);
      if (dest) { src.connect(dest); }
    });
    return dest ? dest.stream.getAudioTracks()[0] : null;
  }
  function startMeter() {
    var an = S.analyser;
    if (!an) { return; }
    var data = new Uint8Array(an.fftSize);
    var cv = $('rc-wave'), g = cv.getContext('2d'), bar = $('rc-meter');
    function loop() {
      an.getByteTimeDomainData(data);
      var sum = 0, i;
      for (i = 0; i !== data.length; i++) { var d = (data[i] - 128) / 128; sum += d * d; }
      var rms = Math.sqrt(sum / data.length);
      bar.style.width = Math.min(100, Math.round(rms * 220)) + '%';
      if (!cv.hidden) {
        g.clearRect(0, 0, cv.width, cv.height);
        g.lineWidth = 3; g.strokeStyle = '#2563eb'; g.beginPath();
        for (i = 0; i !== data.length; i++) {
          var x = i * cv.width / data.length, y = (data[i] / 255) * cv.height;
          if (i === 0) { g.moveTo(x, y); } else { g.lineTo(x, y); }
        }
        g.stroke();
      }
      S.meterRaf = requestAnimationFrame(loop);
    }
    loop();
  }
  function stopMeter() {
    if (S.meterRaf) { cancelAnimationFrame(S.meterRaf); S.meterRaf = 0; }
    $('rc-meter').style.width = '0';
    var cv = $('rc-wave');
    cv.getContext('2d').clearRect(0, 0, cv.width, cv.height);
  }
  function startTicker(fn, ms) {
    stopTicker();
    try {
      var src = 'var t=setInterval(function(){postMessage(0)},' + Math.round(ms) + ');';
      var u = URL.createObjectURL(new Blob([src], { type: 'text/javascript' }));
      var w = new Worker(u);
      URL.revokeObjectURL(u);
      w.onmessage = function () { fn(); };
      S.ticker = { w: w };
      return;
    } catch (e) { /* fall back to a normal timer */ }
    S.ticker = { id: setInterval(fn, ms) };
  }
  function stopTicker() {
    if (!S.ticker) { return; }
    if (S.ticker.w) { S.ticker.w.terminate(); }
    if (S.ticker.id) { clearInterval(S.ticker.id); }
    S.ticker = null;
  }
  function mkVideo(stream) {
    var v = document.createElement('video');
    v.muted = true; v.playsInline = true; v.srcObject = stream;
    var p = v.play(); if (p && p.catch) { p.catch(function () {}); }
    return v;
  }
  function composite(parts) {
    var st = parts.screen.getVideoTracks()[0];
    var cfg = st.getSettings();
    var W = cfg.width || 1920, H = cfg.height || 1080, fps = +$('rc-fps').value;
    var cv = document.createElement('canvas');
    cv.width = W; cv.height = H;
    var g = cv.getContext('2d');
    var sv = mkVideo(new MediaStream([st]));
    var cvid = mkVideo(new MediaStream(parts.cam.getVideoTracks()));
    var size = Math.round(H * (+$('rc-bsize').value) / 100);
    var pos = $('rc-bpos').value, margin = Math.round(H * 0.03);
    var x = pos.charAt(1) === 'l' ? margin : W - size - margin;
    var y = pos.charAt(0) === 't' ? margin : H - size - margin;
    function draw() {
      try {
        g.drawImage(sv, 0, 0, W, H);
        var cw = cvid.videoWidth, ch = cvid.videoHeight;
        if (cw && ch) {
          var s = Math.min(cw, ch);
          g.save();
          g.beginPath(); g.arc(x + size / 2, y + size / 2, size / 2, 0, Math.PI * 2); g.closePath(); g.clip();
          g.drawImage(cvid, (cw - s) / 2, (ch - s) / 2, s, s, x, y, size, size);
          g.restore();
          g.lineWidth = Math.max(3, size / 40); g.strokeStyle = '#ffffff';
          g.beginPath(); g.arc(x + size / 2, y + size / 2, size / 2, 0, Math.PI * 2); g.stroke();
        }
      } catch (e) { /* frame skipped */ }
    }
    draw();
    startTicker(draw, 1000 / fps);
    return cv.captureStream(fps).getVideoTracks()[0];
  }
  function videoTrack(parts) {
    if (S.mode === 'voice') { return null; }
    if (S.mode === 'webcam') { return parts.cam.getVideoTracks()[0]; }
    if (parts.cam) { return composite(parts); }
    return parts.screen.getVideoTracks()[0];
  }

  /* ---------- timer / wake lock ---------- */
  function elapsed() { return S.acc + ((S.paused || !S.t0) ? 0 : Date.now() - S.t0); }
  function tick() { $('rc-timer').textContent = fmtClock(elapsed()); }
  async function lockScreen() {
    try { if (navigator.wakeLock) { S.wake = await navigator.wakeLock.request('screen'); } } catch (e) { /* optional */ }
  }
  function unlockScreen() {
    if (S.wake) { S.wake.release().catch(function () {}); S.wake = null; }
  }
  function countdown(n) {
    return new Promise(function (resolve) {
      if (!n) { resolve(true); return; }
      var box = $('rc-count'), left = n;
      S.counting = true; S.cancel = false; syncButtons();
      (function step() {
        if (S.cancel) { box.hidden = true; S.counting = false; resolve(false); return; }
        if (left === 0) { box.hidden = true; S.counting = false; resolve(true); return; }
        box.textContent = String(left); box.hidden = false; left -= 1;
        setTimeout(step, 1000);
      })();
    });
  }

  /* ---------- record ---------- */
  function cleanup() {
    S.streams.forEach(function (s) { s.getTracks().forEach(function (t) { t.stop(); }); });
    S.streams = [];
    stopTicker(); stopMeter(); unlockScreen();
    if (S.actx) { try { S.actx.close(); } catch (e) { /* closed */ } S.actx = null; }
    S.analyser = null;
    if (S.timerId) { clearInterval(S.timerId); S.timerId = 0; }
    S.recorder = null; S.paused = false; S.t0 = 0; S.acc = 0; S.counting = false; S.testing = false;
    $('rc-count').hidden = true;
    showPreview(null);
    syncButtons();
  }
  async function start() {
    if (S.busy || S.recorder || S.counting) { return; }
    clearError();
    if (!mediaOk) { showError('เบราว์เซอร์นี้ไม่รองรับการบันทึก'); return; }
    S.busy = true; stopTest(true); syncButtons();
    try {
      var parts = await acquire();
      var at = audioGraph(parts.audio, true);
      var vt = videoTrack(parts);
      var tracks = [];
      if (vt) { tracks.push(vt); }
      if (at) { tracks.push(at); }
      if (!tracks.length) { throw new Error('ไม่มีแหล่งสัญญาณให้บันทึก — เปิดไมโครโฟนหรือเลือกแหล่งภาพ'); }
      loadDevices();
      showPreview(vt ? new MediaStream([vt]) : null);
      startMeter();
      var mime = pickMime(!!vt);
      var opts = {};
      if (mime) { opts.mimeType = mime; }
      if (vt) { opts.videoBitsPerSecond = bitrate(); }
      if (at) { opts.audioBitsPerSecond = 128000; }
      var rec = new MediaRecorder(new MediaStream(tracks), opts);
      if (parts.screen) {
        parts.screen.getVideoTracks()[0].addEventListener('ended', function () { stop(); });
      }
      S.kind = S.mode;
      S.mime = rec.mimeType || mime || (vt ? 'video/webm' : 'audio/webm');
      S.current = { id: uid(), name: KIND[S.mode] + ' ' + stamp() };
      S.chunks = []; S.chunkN = 0; S.saveOn = $('rc-save').checked;
      setStatus('เตรียมพร้อม…');
      var go = await countdown(+$('rc-cd').value);
      if (!go) { cleanup(); setStatus('ยกเลิกแล้ว'); return; }
      rec.ondataavailable = function (e) {
        if (!e.data || !e.data.size) { return; }
        S.chunks.push(e.data);
        if (S.saveOn) { dbPut({ id: S.current.id + '#' + S.chunkN, part: true, parent: S.current.id, n: S.chunkN, blob: e.data }); }
        S.chunkN += 1;
      };
      rec.onstop = finalize;
      rec.onerror = function (e) { showError(explain(e && e.error)); stop(); };
      if (S.saveOn) { dbPut({ id: S.current.id, partial: true, name: S.current.name, kind: S.kind, mime: S.mime, date: Date.now() }); }
      S.recorder = rec; S.acc = 0; S.paused = false;
      rec.start(1000);
      S.t0 = Date.now();
      S.timerId = setInterval(tick, 100);
      lockScreen();
      setStatus('🔴 กำลังบันทึก');
    } catch (err) {
      cleanup();
      showError(explain(err));
      setStatus('พร้อมบันทึก');
    } finally {
      S.busy = false;
      syncButtons();
    }
  }
  function togglePause() {
    var r = S.recorder;
    if (!r || S.counting) { return; }
    if (!S.paused && r.state === 'recording') {
      r.pause(); S.acc += Date.now() - S.t0; S.paused = true; setStatus('⏸ พักอยู่');
    } else if (S.paused && r.state === 'paused') {
      r.resume(); S.t0 = Date.now(); S.paused = false; setStatus('🔴 กำลังบันทึก');
    }
    syncButtons();
  }
  function stop() {
    if (S.counting) { S.cancel = true; return; }
    var r = S.recorder;
    if (!r) { return; }
    if (r.state !== 'inactive') {
      try { r.stop(); } catch (e) { finalize(); }
    }
  }
  async function finalize() {
    var dur = elapsed() / 1000;
    var cur = S.current, count = S.chunkN, kind = S.kind;
    var blob = new Blob(S.chunks, { type: (S.mime || '').split(';')[0] });
    S.chunks = [];
    cleanup();
    if (!blob.size || !cur) { showError('ไม่ได้รับข้อมูลเสียง/ภาพ — ลองบันทึกใหม่'); setStatus('พร้อมบันทึก'); return; }
    var item = { id: cur.id, name: cur.name, kind: kind, mime: blob.type, blob: blob, dur: dur, date: Date.now(), size: blob.size };
    items.unshift(item);
    render();
    setStatus('บันทึกเสร็จแล้ว');
    if ($('rc-save').checked) {
      await persist(item);
      for (var n = 0; n !== count; n++) { dbDel(cur.id + '#' + n); }
    }
  }

  /* ---------- device test ---------- */
  function stopTest(silent) {
    if (!S.testing) { return; }
    cleanup();
    if (!silent) { setStatus('พร้อมบันทึก'); }
  }
  async function testDevice() {
    if (S.recorder || S.busy || S.counting) { return; }
    if (S.testing) { stopTest(); return; }
    clearError();
    S.busy = true; syncButtons();
    try {
      var m = S.mode, wantCam = m === 'webcam' || (m === 'screen' && $('rc-bubble').checked);
      var wantMic = m === 'voice' || $('rc-usemic').checked;
      if (!wantCam && !wantMic) { throw new Error('เลือกไมโครโฟนหรือกล้องก่อนทดสอบ'); }
      var st = await navigator.mediaDevices.getUserMedia({
        audio: wantMic ? micConstraints() : false,
        video: wantCam ? camConstraints() : false
      });
      S.streams.push(st);
      S.testing = true;
      audioGraph(st.getAudioTracks().length ? [st] : [], false);
      startMeter();
      if (wantCam) { showPreview(new MediaStream(st.getVideoTracks())); }
      setStatus('กำลังทดสอบอุปกรณ์ — พูดหรือส่งเสียงเพื่อดูมิเตอร์');
      await loadDevices();
    } catch (err) {
      cleanup();
      showError(explain(err));
    } finally {
      S.busy = false;
      syncButtons();
    }
  }

  /* ---------- list / trim ---------- */
  function updateUsage() {
    var total = items.reduce(function (a, b) { return a + b.size; }, 0);
    var base = items.length + ' รายการ · ' + fmtSize(total) + ' · ' + ($('rc-save').checked ? 'เก็บไว้ในเบราว์เซอร์นี้' : 'จะหายเมื่อปิดหรือรีโหลดหน้านี้');
    $('rc-usage').textContent = base;
    if (navigator.storage && navigator.storage.estimate) {
      navigator.storage.estimate().then(function (e) {
        if (e && e.quota) { $('rc-usage').textContent = base + ' · พื้นที่เบราว์เซอร์ใช้ไป ' + fmtSize(e.usage || 0) + ' จาก ' + fmtSize(e.quota); }
      }).catch(function () {});
    }
  }
  function render() {
    urls.forEach(function (u) { URL.revokeObjectURL(u); });
    urls = [];
    var list = $('rc-list');
    list.textContent = '';
    if (!items.length) { list.appendChild(el('p', 'rc-empty', 'ยังไม่มีการบันทึก — กด "เริ่มบันทึก" ด้านบน')); }
    items.forEach(function (it) { list.appendChild(card(it)); });
    updateUsage();
  }
  function card(it) {
    var c = el('div', 'rc-item');
    var u = URL.createObjectURL(it.blob);
    urls.push(u);
    var media = el(it.kind === 'voice' ? 'audio' : 'video');
    media.controls = true; media.preload = 'metadata'; media.src = u;
    if (it.kind !== 'voice') { media.playsInline = true; }
    var name = el('input');
    name.type = 'text'; name.value = it.name; name.setAttribute('aria-label', 'ชื่อไฟล์');
    name.addEventListener('change', function () {
      it.name = name.value.trim() || it.name; name.value = it.name; persist(it);
    });
    var meta = el('div', 'rc-meta', fmtDur(it.dur) + ' · ' + fmtSize(it.size) + ' · ' + extOf(it.mime).toUpperCase() + ' · ' + dateLabel(it.date));
    var row = el('div', 'rc-row');
    row.appendChild(btn('⬇ ดาวน์โหลด', function () { download(it.blob, safeName(it.name) + '.' + extOf(it.mime)); }));
    if (it.kind === 'voice') {
      row.appendChild(btn('⬇ WAV', function () { exportWav(it); }));
      row.appendChild(btn('✂ ตัดเสียง', function () { openTrim(it); }));
    }
    row.appendChild(btn('🗑 ลบ', function () { removeItem(it); }));
    c.appendChild(media); c.appendChild(name); c.appendChild(meta); c.appendChild(row);
    return c;
  }
  function removeItem(it) {
    items = items.filter(function (x) { return x !== it; });
    dbDel(it.id);
    $('rc-trim').hidden = true;
    render();
  }
  async function decodeItem(it) {
    var AC = window.AudioContext || window.webkitAudioContext;
    var ctx = new AC();
    try {
      var data = await it.blob.arrayBuffer();
      return await ctx.decodeAudioData(data);
    } finally { try { ctx.close(); } catch (e) { /* closed */ } }
  }
  function encodeWav(buf, s, e) {
    var sr = buf.sampleRate, ch = Math.min(buf.numberOfChannels, 2);
    var a = Math.max(0, Math.floor(s * sr)), b = Math.min(buf.length, Math.floor(e * sr)), n = Math.max(0, b - a);
    var bytes = 44 + n * ch * 2, view = new DataView(new ArrayBuffer(bytes));
    function tag(o, str) { for (var k = 0; k !== str.length; k++) { view.setUint8(o + k, str.charCodeAt(k)); } }
    tag(0, 'RIFF'); view.setUint32(4, bytes - 8, true); tag(8, 'WAVE'); tag(12, 'fmt ');
    view.setUint32(16, 16, true); view.setUint16(20, 1, true); view.setUint16(22, ch, true);
    view.setUint32(24, sr, true); view.setUint32(28, sr * ch * 2, true); view.setUint16(32, ch * 2, true);
    view.setUint16(34, 16, true); tag(36, 'data'); view.setUint32(40, n * ch * 2, true);
    var chans = [], j;
    for (j = 0; j !== ch; j++) { chans.push(buf.getChannelData(j)); }
    var off = 44;
    for (var i = 0; i !== n; i++) {
      for (j = 0; j !== ch; j++) {
        var v = Math.max(-1, Math.min(1, chans[j][a + i]));
        view.setInt16(off, v >= 0 ? v * 0x7FFF : v * 0x8000, true);
        off += 2;
      }
    }
    return new Blob([view], { type: 'audio/wav' });
  }
  async function exportWav(it) {
    clearError();
    try {
      var buf = await decodeItem(it);
      download(encodeWav(buf, 0, buf.duration), safeName(it.name) + '.wav');
    } catch (err) { showError('แปลงเป็น WAV ไม่สำเร็จ — เบราว์เซอร์อาจไม่รองรับการถอดรหัสไฟล์นี้'); }
  }
  async function openTrim(it) {
    var box = $('rc-trim');
    box.hidden = false; box.textContent = '';
    box.appendChild(el('p', 'rc-muted', 'กำลังอ่านไฟล์เสียง…'));
    try {
      var buf = await decodeItem(it);
      var dur = buf.duration;
      box.textContent = '';
      box.appendChild(el('strong', '', '✂ ตัดเสียง: ' + it.name));
      var lblS = el('label'), lblE = el('label');
      var inS = el('input'), inE = el('input');
      inS.type = 'range'; inE.type = 'range';
      inS.min = inE.min = '0'; inS.max = inE.max = String(dur); inS.step = inE.step = '0.1';
      inS.value = '0'; inE.value = String(dur);
      var tS = el('span'), tE = el('span'), info = el('p', 'rc-muted');
      function upd() {
        var s = +inS.value, e = +inE.value;
        if (s > e) { if (this === inS) { inE.value = inS.value; } else { inS.value = inE.value; } }
        s = +inS.value; e = +inE.value;
        tS.textContent = fmtClock(s * 1000); tE.textContent = fmtClock(e * 1000);
        info.textContent = 'ความยาวช่วงที่เลือก ' + (e - s).toFixed(1) + ' วินาที จากทั้งหมด ' + dur.toFixed(1) + ' วินาที';
      }
      inS.addEventListener('input', upd); inE.addEventListener('input', upd);
      lblS.appendChild(document.createTextNode('เริ่มที่ ')); lblS.appendChild(tS); lblS.appendChild(inS);
      lblE.appendChild(document.createTextNode('สิ้นสุดที่ ')); lblE.appendChild(tE); lblE.appendChild(inE);
      upd();
      var row = el('div', 'rc-row');
      row.appendChild(btn('⬇ ดาวน์โหลด WAV ช่วงที่เลือก', function () {
        download(encodeWav(buf, +inS.value, +inE.value), safeName(it.name) + ' (ตัด).wav');
      }));
      row.appendChild(btn('➕ เก็บเป็นคลิปใหม่', function () {
        var blob = encodeWav(buf, +inS.value, +inE.value);
        var n = { id: uid(), name: it.name + ' (ตัด)', kind: 'voice', mime: 'audio/wav', blob: blob, dur: (+inE.value) - (+inS.value), date: Date.now(), size: blob.size };
        items.unshift(n); persist(n); render(); box.hidden = true;
      }));
      row.appendChild(btn('ปิด', function () { box.hidden = true; }));
      box.appendChild(lblS); box.appendChild(lblE); box.appendChild(info); box.appendChild(row);
    } catch (err) {
      box.textContent = '';
      box.appendChild(el('p', 'rc-error', 'เปิดไฟล์เสียงเพื่อตัดไม่สำเร็จ — เบราว์เซอร์อาจไม่รองรับการถอดรหัสไฟล์นี้'));
      box.appendChild(btn('ปิด', function () { box.hidden = true; }));
    }
  }

  /* ---------- init ---------- */
  all('.rc-tab').forEach(function (b) {
    b.addEventListener('click', function () {
      if (S.recorder || S.busy || S.counting) { return; }
      stopTest(true);
      clearError();
      setStatus('พร้อมบันทึก');
      applyMode(b.getAttribute('data-mode'));
    });
  });
  $('rc-start').addEventListener('click', start);
  $('rc-pause').addEventListener('click', togglePause);
  $('rc-stop').addEventListener('click', stop);
  $('rc-test').addEventListener('click', testDevice);
  $('rc-clear').addEventListener('click', function () {
    if (!items.length) { return; }
    if (!window.confirm('ลบการบันทึกทั้งหมดในเบราว์เซอร์นี้?')) { return; }
    items.forEach(function (it) { dbDel(it.id); });
    items = [];
    $('rc-trim').hidden = true;
    render();
  });
  $('rc-save').addEventListener('change', function () {
    if ($('rc-save').checked) { items.forEach(function (it) { persist(it); }); }
    updateUsage();
  });
  document.addEventListener('keydown', function (e) {
    if (!e.altKey || !e.shiftKey) { return; }
    if (e.code === 'KeyR') { e.preventDefault(); if (S.recorder || S.counting) { stop(); } else { start(); } }
    else if (e.code === 'KeyP') { e.preventDefault(); togglePause(); }
  });
  document.addEventListener('visibilitychange', function () {
    if (S.recorder && !document.hidden && !S.wake) { lockScreen(); }
  });
  window.addEventListener('beforeunload', function (e) {
    if (S.recorder) { e.preventDefault(); e.returnValue = ''; }
  });

  applyMode('voice');
  loadDevices();
  loadItems().then(render).catch(function () { render(); });
})();
</script>

## วิธีใช้งานเครื่องมือบันทึกเสียง หน้าจอ และเว็บแคม

เครื่องมือนี้ทำงานในเบราว์เซอร์ทั้งหมด ไม่ต้องติดตั้งโปรแกรม ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำ ไฟล์ที่บันทึกถูกสร้างและเก็บไว้ในเครื่องของคุณเท่านั้น

### บันทึกเสียงจากไมโครโฟน

1. เลือกแท็บ **บันทึกเสียง**
2. กด **ทดสอบอุปกรณ์** เพื่ออนุญาตการใช้ไมโครโฟน แล้วดูว่ามิเตอร์เสียงขยับเมื่อคุณพูด
3. เลือกไมโครโฟนที่ต้องการในส่วน **ตั้งค่าการบันทึก** (ถ้ามีหลายตัว)
4. กด **เริ่มบันทึก** รอตัวนับถอยหลังจบ แล้วเริ่มพูดได้เลย
5. กด **พัก** เมื่ออยากหยุดชั่วคราว และกด **หยุด** เมื่อบันทึกเสร็จ
6. ไฟล์จะปรากฏในส่วน **การบันทึกของคุณ** กด **ดาวน์โหลด** เพื่อบันทึกลงเครื่อง หรือกด **WAV** เพื่อแปลงเป็นไฟล์ WAV

### บันทึกหน้าจอ

1. เลือกแท็บ **บันทึกหน้าจอ** (ใช้ได้บนคอมพิวเตอร์ตั้งโต๊ะหรือแล็ปท็อปที่ใช้ Chrome, Edge หรือ Firefox)
2. เลือกว่าจะบันทึกเสียงจากไมโครโฟน เสียงจากระบบ/แท็บ หรือทั้งสองอย่าง
3. หากต้องการให้เห็นหน้าตัวเองบนวิดีโอ ให้ติ๊ก **แสดงเว็บแคมเป็นวงกลมบนวิดีโอ** แล้วเลือกมุมและขนาด
4. เลือกความละเอียดและ FPS ตามความเหมาะสม
5. กด **เริ่มบันทึก** เบราว์เซอร์จะให้เลือกว่าจะแชร์ **แท็บ** **หน้าต่าง** หรือ **ทั้งหน้าจอ**
6. กด **หยุด** ในหน้านี้ หรือกด "หยุดการแชร์" ที่แถบของเบราว์เซอร์ก็ได้

### บันทึกเว็บแคม

1. เลือกแท็บ **บันทึกเว็บแคม**
2. กด **ทดสอบอุปกรณ์** เพื่อดูภาพตัวอย่างและเลือกกล้องกับไมโครโฟนที่ต้องการ
3. ตั้งความละเอียดและ FPS แล้วกด **เริ่มบันทึก**
4. เมื่อเสร็จ กด **หยุด** แล้วดาวน์โหลดวิดีโอจากรายการด้านล่าง

### ตัดเสียงและจัดการไฟล์

- **เปลี่ยนชื่อ:** แก้ชื่อในช่องข้อความใต้ตัวเล่น ระบบจะจำชื่อใหม่ให้
- **ตัดเสียง:** กด **ตัดเสียง** ที่คลิปเสียง เลื่อนแถบ "เริ่มที่" และ "สิ้นสุดที่" แล้วดาวน์โหลดเป็น WAV หรือเก็บเป็นคลิปใหม่
- **กู้คืนไฟล์:** หากเบราว์เซอร์ปิดหรือแท็บค้างระหว่างบันทึก ครั้งถัดไปที่เปิดหน้านี้ ระบบจะพยายามกู้คืนส่วนที่บันทึกไว้แล้ว (ต้องเปิด **บันทึกอัตโนมัติในเบราว์เซอร์** ไว้)
- **ลบ:** กด **ลบ** ที่คลิปเดียว หรือ **ลบทั้งหมด** เพื่อล้างพื้นที่เก็บข้อมูล

## ฟีเจอร์เด่น

- บันทึกเสียง หน้าจอ และเว็บแคมในหน้าเดียว ไม่ต้องสลับเครื่องมือ
- เว็บแคมแบบวงกลมซ้อนบนวิดีโอหน้าจอ เหมาะกับคลิปสอนและรีวิว
- ผสมเสียงไมโครโฟนกับเสียงระบบ/แท็บให้อัตโนมัติ
- ตัวนับถอยหลัง ปุ่มพัก/ต่อ และปุ่มลัดคีย์บอร์ด
- เลือกความละเอียดได้ถึง 4K และเฟรมเรตสูงสุด 60 FPS (ขึ้นกับอุปกรณ์)
- ตัวเลือกตัดเสียงรบกวน ตัดเสียงสะท้อน และปรับระดับเสียงอัตโนมัติ
- บันทึกอัตโนมัติทีละช่วงในเบราว์เซอร์ พร้อมกู้คืนเมื่อเกิดเหตุขัดข้อง
- ตัดเสียงและส่งออกเป็น WAV ได้ในหน้าเดียว
- ไม่ต้องสมัครสมาชิก ไม่มีลายน้ำ และไม่อัปโหลดไฟล์ขึ้นเซิร์ฟเวอร์

## อธิบายศัพท์ที่ควรรู้

| ศัพท์ | ความหมายสั้น ๆ |
|---|---|
| ความละเอียด (Resolution) | ขนาดของภาพวิดีโอ ยิ่งสูงยิ่งคมชัดแต่ไฟล์ใหญ่ขึ้น |
| 720p / 1080p / 4K | ระดับความละเอียด HD / Full HD / Ultra HD (2160p) ตามลำดับ |
| FPS (เฟรมเรต) | จำนวนภาพต่อวินาที 30 FPS เหมาะกับงานทั่วไป 60 FPS ให้ภาพลื่นกว่า เหมาะกับเกม |
| บิตเรต (Bitrate) | ปริมาณข้อมูลต่อวินาที ยิ่งสูงภาพยิ่งดีแต่ไฟล์ยิ่งใหญ่ (เครื่องมือนี้ตั้งค่าให้อัตโนมัติตามความละเอียด) |
| MP4 | ไฟล์วิดีโอที่เปิดได้เกือบทุกอุปกรณ์ เหมาะกับการแชร์และอัปโหลด |
| M4A | ไฟล์เสียงในตระกูล MP4 ขนาดเล็ก เปิดได้ทั้งมือถือและคอมพิวเตอร์ |
| WebM / Ogg | ไฟล์ที่เบราว์เซอร์ Chrome, Edge และ Firefox สร้างได้โดยตรง ใช้เป็นตัวเลือกสำรองเมื่อ MP4 ไม่รองรับ |
| WAV | ไฟล์เสียงไม่บีบอัด คุณภาพเต็ม ไฟล์ใหญ่ เหมาะกับงานตัดต่อเสียง |
| เสียงจากระบบ/แท็บ | เสียงที่เล่นอยู่ในคอมพิวเตอร์หรือแท็บที่แชร์ เช่น เสียงวิดีโอ เพลง หรือเสียงอีกฝ่ายในการประชุม |
| ตัดเสียงรบกวน (Noise Suppression) | ลดเสียงพื้นหลัง เช่น พัดลม เครื่องปรับอากาศ |
| ตัดเสียงสะท้อน (Echo Cancellation) | ป้องกันเสียงจากลำโพงย้อนเข้าไมค์ ลดเสียงก้อง |
| ปรับระดับเสียงอัตโนมัติ (AGC) | ปรับความดังของไมค์ให้สม่ำเสมอ ไม่เบาหรือดังเกินไป |
| มิเตอร์เสียง (Level Meter) | แถบแสดงความดังของเสียงแบบสด ใช้เช็กว่าไมค์ทำงาน |
| เว็บแคมวงกลม | ภาพจากกล้องที่ซ้อนเป็นวงกลมมุมจอ เพื่อให้เห็นหน้าผู้พูดระหว่างอัดหน้าจอ |
| บันทึกอัตโนมัติ | เก็บข้อมูลลงที่เก็บข้อมูลของเบราว์เซอร์ (IndexedDB) ระหว่างบันทึก เพื่อกู้คืนได้เมื่อหน้าค้าง |
| ตัวนับถอยหลัง | เวลาเตรียมตัวก่อนเริ่มบันทึกจริง |
| ตัดเสียง (Trim) | เลือกเก็บเฉพาะช่วงที่ต้องการ ตัดต้นและท้ายที่ไม่ใช้ |

## ตัวอย่างการใช้งาน

- **ทำคลิปสอนและสาธิตโปรแกรม:** อัดหน้าจอพร้อมเสียงบรรยายและวงกลมเว็บแคม
- **บันทึกการประชุมออนไลน์ (เมื่อทุกคนรับทราบ):** เลือกแชร์แท็บของการประชุมพร้อมเสียงแท็บ และเปิดไมค์ของคุณ
- **อัดเสียงพอดแคสต์หรือเสียงพากย์:** ใช้โหมดบันทึกเสียงแล้วตัดต้น–ท้ายก่อนดาวน์โหลดเป็น WAV
- **ส่งวิดีโอแนะนำตัวหรืองานนำเสนอ:** บันทึกจากเว็บแคมแล้วแชร์เป็น MP4
- **เก็บคลิปเกมหรือเดโมแอป:** เลือก 60 FPS สำหรับภาพที่ลื่นขึ้น

## แก้ปัญหาเบื้องต้น

| อาการ | วิธีแก้ |
|---|---|
| ขึ้นว่าไม่ได้รับอนุญาต | กดไอคอนแม่กุญแจข้างที่อยู่เว็บไซต์ เลือกอนุญาตไมโครโฟน/กล้อง แล้วโหลดหน้าใหม่ |
| ไม่มีเสียงจากระบบในคลิปหน้าจอ | ใน Chrome/Edge ให้เลือกแชร์ "แท็บ" และติ๊ก "แชร์เสียงแท็บ" (การแชร์ทั้งหน้าจอบางระบบไม่รองรับเสียง) |
| มิเตอร์เสียงไม่ขยับ | เลือกไมโครโฟนตัวอื่นในตั้งค่า หรือตรวจสอบว่าไมค์ไม่ถูกปิดเสียงในระบบ |
| ขึ้นว่าอุปกรณ์ถูกใช้งานอยู่ | ปิดแอปอื่นที่ใช้ไมค์/กล้อง เช่น Zoom, Meet, Teams แล้วลองใหม่ |
| วิดีโอกระตุก | ลดความละเอียดเป็น 720p หรือลด FPS เป็น 30 และปิดโปรแกรมอื่นที่กินทรัพยากร |
| บันทึกหน้าจอบนมือถือไม่ได้ | เบราว์เซอร์มือถือส่วนใหญ่ยังไม่รองรับ ใช้โหมดเสียงหรือเว็บแคมแทน หรืออัดหน้าจอด้วยฟีเจอร์ของระบบปฏิบัติการ |
| บันทึกหยุดเองเมื่อสลับแอป | เปิดแท็บนี้ค้างไว้ระหว่างบันทึก และอย่าให้เครื่องล็อกหน้าจอ |
| พื้นที่จัดเก็บเต็ม | ดาวน์โหลดไฟล์ที่ต้องการแล้วกด **ลบ** หรือ **ลบทั้งหมด** |
| ไฟล์ WebM ข้ามเวลาในตัวเล่นไม่ได้ | เลือกรูปแบบไฟล์ "อัตโนมัติ" เพื่อให้ได้ MP4 หากเบราว์เซอร์รองรับ |

## ความเป็นส่วนตัว

การบันทึกทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ เครื่องมือนี้ไม่อัปโหลดเสียงหรือวิดีโอไปยังเซิร์ฟเวอร์ ไฟล์ที่เปิด **บันทึกอัตโนมัติ** จะถูกเก็บในที่เก็บข้อมูลของเบราว์เซอร์นี้เท่านั้น และลบได้ทุกเมื่อ คุณตรวจสอบได้ด้วยการเปิดแท็บ Network ในเครื่องมือนักพัฒนาของเบราว์เซอร์ ระหว่างบันทึกจะไม่มีการส่งไฟล์ออกไป ทั้งนี้ควรขออนุญาตทุกคนก่อนบันทึกการสนทนาหรือการประชุม

## คำถามที่พบบ่อย

### บันทึกหน้าจอฟรีและไม่มีลายน้ำจริงหรือไม่

จริง ใช้งานได้ฟรี ไม่ต้องสมัครสมาชิก และวิดีโอที่ได้ไม่มีลายน้ำ

### ไฟล์ของฉันถูกอัปโหลดไปที่ไหนหรือไม่

ไม่ การบันทึกและการตัดเสียงทำงานในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งไปยังเซิร์ฟเวอร์

### ดาวน์โหลดเป็นไฟล์อะไรได้บ้าง

วิดีโอเป็น MP4 เมื่อเบราว์เซอร์รองรับ หรือ WebM เป็นตัวเลือกสำรอง ส่วนเสียงเป็น M4A, WebM หรือ Ogg ตามเบราว์เซอร์ และแปลงเป็น WAV ได้จากปุ่มในรายการบันทึก

### บันทึกเสียงจากระบบหรือเสียงจากเว็บไซต์ได้หรือไม่

ได้ใน Chrome และ Edge บนคอมพิวเตอร์ โดยเลือกแชร์แท็บแล้วติ๊ก "แชร์เสียงแท็บ" Firefox และ Safari อาจไม่รองรับเสียงจากระบบ

### ใช้บันทึกหน้าจอบนมือถือได้หรือไม่

เบราว์เซอร์บนมือถือส่วนใหญ่ยังไม่รองรับการบันทึกหน้าจอ แต่ยังใช้โหมดบันทึกเสียงและเว็บแคมได้

### บันทึกได้นานแค่ไหน

ไม่จำกัดเวลาในตัวเครื่องมือ แต่ขึ้นกับพื้นที่ว่างและหน่วยความจำของอุปกรณ์ หากบันทึกยาวมาก ควรดาวน์โหลดไฟล์เป็นช่วง ๆ

### ถ้าเบราว์เซอร์ค้างหรือแท็บปิดระหว่างบันทึก จะเสียไฟล์ไหม

หากเปิด **บันทึกอัตโนมัติในเบราว์เซอร์** ไว้ ระบบจะเก็บข้อมูลทีละช่วง และพยายามกู้คืนให้เมื่อคุณเปิดหน้านี้อีกครั้ง

<script type="application/ld+json">{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"บันทึกหน้าจอฟรีและไม่มีลายน้ำจริงหรือไม่","acceptedAnswer":{"@type":"Answer","text":"จริง ใช้งานได้ฟรี ไม่ต้องสมัครสมาชิก และวิดีโอที่ได้ไม่มีลายน้ำ"}},{"@type":"Question","name":"ไฟล์ของฉันถูกอัปโหลดไปที่ไหนหรือไม่","acceptedAnswer":{"@type":"Answer","text":"ไม่ การบันทึกและการตัดเสียงทำงานในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งไปยังเซิร์ฟเวอร์"}},{"@type":"Question","name":"ดาวน์โหลดเป็นไฟล์อะไรได้บ้าง","acceptedAnswer":{"@type":"Answer","text":"วิดีโอเป็น MP4 เมื่อเบราว์เซอร์รองรับ หรือ WebM เป็นตัวเลือกสำรอง ส่วนเสียงเป็น M4A, WebM หรือ Ogg ตามเบราว์เซอร์ และแปลงเป็น WAV ได้จากปุ่มในรายการบันทึก"}},{"@type":"Question","name":"บันทึกเสียงจากระบบหรือเสียงจากเว็บไซต์ได้หรือไม่","acceptedAnswer":{"@type":"Answer","text":"ได้ใน Chrome และ Edge บนคอมพิวเตอร์ โดยเลือกแชร์แท็บแล้วติ๊กแชร์เสียงแท็บ Firefox และ Safari อาจไม่รองรับเสียงจากระบบ"}},{"@type":"Question","name":"ใช้บันทึกหน้าจอบนมือถือได้หรือไม่","acceptedAnswer":{"@type":"Answer","text":"เบราว์เซอร์บนมือถือส่วนใหญ่ยังไม่รองรับการบันทึกหน้าจอ แต่ยังใช้โหมดบันทึกเสียงและเว็บแคมได้"}},{"@type":"Question","name":"บันทึกได้นานแค่ไหน","acceptedAnswer":{"@type":"Answer","text":"ไม่จำกัดเวลาในตัวเครื่องมือ แต่ขึ้นกับพื้นที่ว่างและหน่วยความจำของอุปกรณ์ หากบันทึกยาวมาก ควรดาวน์โหลดไฟล์เป็นช่วง ๆ"}},{"@type":"Question","name":"ถ้าเบราว์เซอร์ค้างหรือแท็บปิดระหว่างบันทึก จะเสียไฟล์ไหม","acceptedAnswer":{"@type":"Answer","text":"หากเปิดบันทึกอัตโนมัติในเบราว์เซอร์ไว้ ระบบจะเก็บข้อมูลทีละช่วง และพยายามกู้คืนให้เมื่อคุณเปิดหน้านี้อีกครั้ง"}}]}</script>