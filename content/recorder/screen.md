---
title: โปรแกรมบันทึกหน้าจอออนไลน์ ฟรี
h1: โปรแกรมบันทึกหน้าจอออนไลน์
description: 'โปรแกรมบันทึกหน้าจอออนไลน์ฟรี ไม่ต้องติดตั้ง ไม่มีลายน้ำ บันทึกพร้อมเสียงไมค์และเสียงระบบ เพิ่มเว็บแคมซ้อน ตัดต่อ ดาวน์โหลด MP4/WebM ประมวลผลบนเครื่องคุณ'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-17T08:33:00+07:00'
weight: 122
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- โปรแกรมบันทึกหน้าจอออนไลน์
- เสียงและวิดีโอ
---

บันทึกหน้าจอ หน้าต่างโปรแกรม หรือแท็บเบราว์เซอร์ได้ทันที พร้อมเสียงไมโครโฟน เสียงระบบ และกล้องเว็บแคม ทุกอย่างประมวลผลในเบราว์เซอร์ของคุณ ไม่อัปโหลดไฟล์ ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำ ใช้ได้บน Chrome, Edge และ Firefox ของคอมพิวเตอร์

<div id="sr-app">
<p id="sr-warn" class="sr-note" hidden>เบราว์เซอร์นี้ไม่รองรับการบันทึกหน้าจอ กรุณาใช้ Chrome, Edge หรือ Firefox บนคอมพิวเตอร์ (ไม่รองรับบนมือถือและแท็บเล็ต)</p>
<div class="sr-stage" id="sr-stage">
<video id="sr-pv" muted playsinline></video>
<div class="sr-ph" id="sr-ph">🖥️<br>ภาพตัวอย่างหน้าจอของคุณจะแสดงที่นี่</div>
<div class="sr-badge" id="sr-badge" hidden><i></i><span id="sr-time">00:00</span></div>
<div class="sr-cd" id="sr-cd" hidden></div>
</div>
<div class="sr-bar">
<button type="button" id="sr-start" class="sr-btn sr-pri">● เริ่มบันทึก</button>
<button type="button" id="sr-pause" class="sr-btn" disabled>⏸ พัก</button>
<button type="button" id="sr-stop" class="sr-btn" disabled>■ หยุด</button>
<button type="button" id="sr-snap" class="sr-btn" disabled>📷 จับภาพ</button>
</div>
<p id="sr-status" class="sr-status" aria-live="polite"></p>
<p id="sr-err" class="sr-err" role="alert" hidden></p>
<details class="sr-set" open>
<summary>เสียง</summary>
<div class="sr-grid">
<div class="sr-row"><label><input type="checkbox" id="sr-mic"> ไมโครโฟน</label><select id="sr-micdev"><option value="">ไมโครโฟนเริ่มต้น</option></select></div>
<div class="sr-row"><label>ระดับเสียงไมค์ <input type="range" id="sr-micvol" min="0" max="200" value="100"></label><span class="sr-meter"><i id="sr-m-mic"></i></span></div>
<div class="sr-row"><label><input type="checkbox" id="sr-ns" checked> ลดเสียงรบกวน</label><label><input type="checkbox" id="sr-ec" checked> ตัดเสียงสะท้อน</label></div>
<div class="sr-row"><label><input type="checkbox" id="sr-sys" checked> เสียงระบบ / แท็บ</label></div>
<div class="sr-row"><label>ระดับเสียงระบบ <input type="range" id="sr-sysvol" min="0" max="200" value="100"></label><span class="sr-meter"><i id="sr-m-sys"></i></span></div>
</div>
</details>
<details class="sr-set">
<summary>กล้องเว็บแคม (ซ้อนบนหน้าจอ)</summary>
<div class="sr-grid">
<div class="sr-row"><label><input type="checkbox" id="sr-cam"> เปิดกล้อง</label><select id="sr-camdev"><option value="">กล้องเริ่มต้น</option></select></div>
<div class="sr-row"><label>ตำแหน่ง <select id="sr-campos"><option value="br">ขวาล่าง</option><option value="bl">ซ้ายล่าง</option><option value="tr">ขวาบน</option><option value="tl">ซ้ายบน</option></select></label><label>ขนาด <select id="sr-camsize"><option value="0.15">เล็ก</option><option value="0.22" selected>กลาง</option><option value="0.3">ใหญ่</option></select></label></div>
<div class="sr-row"><label>รูปทรง <select id="sr-camshape"><option value="rect">สี่เหลี่ยม</option><option value="circle">วงกลม</option></select></label><label><input type="checkbox" id="sr-cammirror" checked> กลับด้านแบบกระจก</label></div>
</div>
</details>
<details class="sr-set">
<summary>คุณภาพและรูปแบบไฟล์</summary>
<div class="sr-grid">
<div class="sr-row"><label>ความละเอียด <select id="sr-res"><option value="auto">ตามต้นฉบับ</option><option value="720">720p</option><option value="1080">1080p</option><option value="1440">1440p</option><option value="2160">2160p (4K)</option></select></label><label>เฟรมเรต <select id="sr-fps"><option value="15">15 FPS</option><option value="24">24 FPS</option><option value="30" selected>30 FPS</option><option value="60">60 FPS</option></select></label></div>
<div class="sr-row"><label>คุณภาพ <select id="sr-q"><option value="small">ไฟล์เล็ก</option><option value="balanced" selected>สมดุล</option><option value="high">คมชัดสูง</option></select></label><label>ไฟล์ <select id="sr-fmt"><option value="auto">อัตโนมัติ</option><option value="mp4">MP4</option><option value="webm">WebM</option></select></label></div>
<div class="sr-row"><label>นับถอยหลัง <select id="sr-cds"><option value="0">ไม่ใช้</option><option value="3" selected>3 วินาที</option><option value="5">5 วินาที</option></select></label><label>เคอร์เซอร์ <select id="sr-cursor"><option value="always">แสดงเสมอ</option><option value="motion">แสดงเมื่อขยับ</option><option value="never">ซ่อน</option></select></label></div>
</div>
</details>
<p class="sr-hint">ปุ่มลัด (ขณะอยู่ในแท็บนี้): Alt+Shift+R เริ่ม/หยุด · Alt+Shift+P พัก/ทำต่อ · Alt+Shift+S จับภาพ</p>
<p class="sr-hint">เปิดแท็บนี้ไว้ขณะบันทึกหรือประมวลผล การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชะงัก</p>
<h3 class="sr-h">การบันทึกของคุณ</h3>
<div class="sr-bar">
<label><input type="checkbox" id="sr-persist" checked> เก็บไว้ในเบราว์เซอร์นี้</label>
<button type="button" id="sr-all" class="sr-btn">เลือกทั้งหมด</button>
<button type="button" id="sr-merge" class="sr-btn" disabled>รวมคลิปที่เลือก</button>
<button type="button" id="sr-delsel" class="sr-btn" disabled>ลบที่เลือก</button>
<button type="button" id="sr-delall" class="sr-btn">ลบทั้งหมด</button>
</div>
<p id="sr-storage" class="sr-hint"></p>
<div id="sr-job" class="sr-job" hidden><span id="sr-jobt"></span><progress id="sr-jobp" max="100" value="0"></progress><button type="button" id="sr-jobc" class="sr-btn">ยกเลิก</button></div>
<div id="sr-trim" class="sr-trim" hidden>
<video id="sr-tv" controls playsinline></video>
<div class="sr-row"><label>เริ่ม <input type="range" id="sr-ts" min="0" max="0" step="0.1" value="0"></label><output id="sr-tso">00:00</output></div>
<div class="sr-row"><label>จบ <input type="range" id="sr-te" min="0" max="0" step="0.1" value="0"></label><output id="sr-teo">00:00</output></div>
<div class="sr-row"><button type="button" id="sr-tss" class="sr-btn">ใช้ตำแหน่งเล่นเป็นจุดเริ่ม</button><button type="button" id="sr-tse" class="sr-btn">ใช้ตำแหน่งเล่นเป็นจุดจบ</button></div>
<div class="sr-row"><label><input type="radio" name="sr-tm" value="keep" checked> เก็บเฉพาะส่วนที่เลือก</label><label><input type="radio" name="sr-tm" value="cut"> ตัดส่วนที่เลือกออก</label></div>
<div class="sr-row"><button type="button" id="sr-tgo" class="sr-btn sr-pri">สร้างคลิปใหม่</button><button type="button" id="sr-tx" class="sr-btn">ปิด</button></div>
</div>
<div id="sr-list" class="sr-list"></div>
</div>

<style>
#sr-app{--sr-line:rgba(128,128,128,.35);--sr-sf:rgba(128,128,128,.1);--sr-ac:#2563eb;--sr-rd:#dc2626;margin:1.2rem 0;color:inherit;font-size:1rem;line-height:1.5}
#sr-app *{box-sizing:border-box}
#sr-app [hidden]{display:none!important}
#sr-app .sr-note{padding:.7rem 1rem;border:1px solid var(--sr-rd);border-radius:8px;color:var(--sr-rd)}
#sr-app .sr-stage{position:relative;width:100%;aspect-ratio:16/9;background:#0b0f19;border-radius:12px;overflow:hidden;display:flex;align-items:center;justify-content:center}
#sr-app .sr-stage video{width:100%;height:100%;object-fit:contain;background:#0b0f19}
#sr-app .sr-ph{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;text-align:center;color:#9ca3af;padding:1rem;pointer-events:none}
#sr-app .sr-badge{position:absolute;top:10px;left:10px;display:flex;align-items:center;gap:8px;padding:4px 12px;border-radius:999px;background:rgba(0,0,0,.65);color:#fff;font-variant-numeric:tabular-nums}
#sr-app .sr-badge i{width:10px;height:10px;border-radius:50%;background:var(--sr-rd);animation:sr-blink 1s infinite}
#sr-app .sr-paused .sr-badge i{animation:none;background:#f59e0b}
@keyframes sr-blink{50%{opacity:.2}}
#sr-app .sr-cd{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;font-size:6rem;font-weight:700;color:#fff;background:rgba(0,0,0,.45)}
#sr-app .sr-bar{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.8rem 0}
#sr-app .sr-btn{appearance:none;border:1px solid var(--sr-line);background:var(--sr-sf);color:inherit;padding:.5rem 1rem;border-radius:8px;font:inherit;cursor:pointer}
#sr-app .sr-btn:hover:not(:disabled){border-color:var(--sr-ac)}
#sr-app .sr-btn:disabled{opacity:.45;cursor:not-allowed}
#sr-app .sr-pri{background:var(--sr-ac);border-color:var(--sr-ac);color:#fff}
#sr-app .sr-status{margin:.3rem 0;color:inherit;opacity:.8;min-height:1.5em}
#sr-app .sr-err{margin:.3rem 0;padding:.6rem .9rem;border:1px solid var(--sr-rd);border-radius:8px;color:var(--sr-rd)}
#sr-app .sr-hint{margin:.3rem 0;font-size:.875rem;opacity:.7}
#sr-app .sr-set{border:1px solid var(--sr-line);border-radius:10px;margin:.6rem 0;padding:.4rem .9rem}
#sr-app .sr-set summary{cursor:pointer;font-weight:600;padding:.3rem 0}
#sr-app .sr-grid{display:grid;gap:.6rem;padding:.4rem 0 .6rem}
#sr-app .sr-row{display:flex;flex-wrap:wrap;gap:.8rem;align-items:center}
#sr-app select,#sr-app input[type=text]{font:inherit;color:inherit;background:var(--sr-sf);border:1px solid var(--sr-line);border-radius:6px;padding:.25rem .5rem;max-width:100%}
#sr-app .sr-meter{display:inline-block;width:90px;height:8px;background:var(--sr-sf);border-radius:4px;overflow:hidden}
#sr-app .sr-meter i{display:block;height:100%;width:0;background:#16a34a}
#sr-app .sr-h{margin:1.4rem 0 .4rem;font-size:1.15rem}
#sr-app .sr-job{display:flex;flex-wrap:wrap;gap:.6rem;align-items:center;padding:.6rem .9rem;border:1px solid var(--sr-line);border-radius:10px;margin:.6rem 0}
#sr-app .sr-job progress{flex:1;min-width:120px}
#sr-app .sr-trim{display:grid;gap:.6rem;padding:.9rem;border:1px solid var(--sr-ac);border-radius:10px;margin:.6rem 0}
#sr-app .sr-trim video{width:100%;max-height:320px;background:#0b0f19;border-radius:8px}
#sr-app .sr-trim input[type=range]{width:min(60vw,420px)}
#sr-app .sr-list{display:grid;grid-template-columns:repeat(auto-fill,minmax(260px,1fr));gap:.8rem;margin-top:.6rem}
#sr-app .sr-card{border:1px solid var(--sr-line);border-radius:10px;overflow:hidden;display:flex;flex-direction:column}
#sr-app .sr-card video{width:100%;aspect-ratio:16/9;background:#0b0f19;object-fit:contain}
#sr-app .sr-card audio{width:100%}
#sr-app .sr-info{display:grid;gap:.4rem;padding:.6rem}
#sr-app .sr-info input[type=text]{width:100%}
#sr-app .sr-sel{display:flex;gap:.4rem;align-items:center}
#sr-app .sr-ord{display:inline-block;min-width:1.4em;text-align:center;border-radius:999px;background:var(--sr-ac);color:#fff;font-size:.8rem;padding:0 .4em}
#sr-app .sr-meta{font-size:.8rem;opacity:.7}
#sr-app .sr-act{display:flex;flex-wrap:wrap;gap:.4rem}
#sr-app .sr-act .sr-btn{padding:.3rem .7rem;font-size:.875rem}
#sr-app .sr-empty{grid-column:1/-1;opacity:.7;padding:.5rem 0}
</style>
<script>
(function () {
  'use strict';
  var root = document.getElementById('sr-app');
  if (!root) return;
  var $ = function (id) { return document.getElementById(id); };
  var pv = $('sr-pv');
  var canDisplay = !!(navigator.mediaDevices && navigator.mediaDevices.getDisplayMedia && window.MediaRecorder);
  var S = {
    state: 'idle', busy: false, cancel: false, cdCancel: false,
    items: [], sel: [], streams: [], rec: null, chunks: [], sid: 0, mime: '', dur: 0,
    t0: 0, acc: 0, ac: null, gains: {}, an: {}, timers: [], stops: [], db: null, persist: true,
    co: { pos: 'br', size: 0.22, shape: 'rect', mirror: true }, tItem: null, chunkFail: false
  };

  /* ---------- helpers ---------- */
  function h(tag, attrs) {
    var e = document.createElement(tag);
    if (attrs) {
      Object.keys(attrs).forEach(function (n) {
        var v = attrs[n];
        if (n === 'text') e.textContent = v;
        else if (n.slice(0, 2) === 'on') e.addEventListener(n.slice(2), v);
        else if (v === true) e.setAttribute(n, '');
        else if (v !== false && v != null) e.setAttribute(n, v);
      });
    }
    for (var i = 2; i < arguments.length; i++) {
      var c = arguments[i];
      if (c == null) continue;
      e.appendChild(typeof c === 'string' ? document.createTextNode(c) : c);
    }
    return e;
  }
  function pad(n) { return n < 10 ? '0' + n : '' + n; }
  function fmtT(s) {
    s = Math.max(0, Math.floor(s || 0));
    var hh = Math.floor(s / 3600), mm = Math.floor((s % 3600) / 60), ss = s % 60;
    return (hh ? hh + ':' + pad(mm) : pad(mm)) + ':' + pad(ss);
  }
  function fmtSize(b) {
    if (b > 1073741824) return (b / 1073741824).toFixed(2) + ' GB';
    if (b > 1048576) return (b / 1048576).toFixed(1) + ' MB';
    return Math.max(1, Math.round(b / 1024)) + ' KB';
  }
  function fmtDate(t) {
    var d = new Date(t);
    return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) + ' ' + pad(d.getHours()) + ':' + pad(d.getMinutes());
  }
  function stamp() {
    var d = new Date();
    return d.getFullYear() + pad(d.getMonth() + 1) + pad(d.getDate()) + '-' + pad(d.getHours()) + pad(d.getMinutes()) + pad(d.getSeconds());
  }
  function safe(n) { return String(n || 'recording').replace(/[\\\/:*?"<>|]+/g, '_').trim() || 'recording'; }
  function extOf(it) {
    var m = it.mime || '';
    if (m.indexOf('mp4') > -1) return it.kind === 'audio' ? 'm4a' : 'mp4';
    if (m.indexOf('ogg') > -1) return 'ogg';
    return 'webm';
  }
  function sleep(ms) { return new Promise(function (r) { setTimeout(r, ms); }); }
  function setStatus(t) { $('sr-status').textContent = t || ''; }
  function setErr(t) { var e = $('sr-err'); e.textContent = t || ''; e.hidden = !t; }
  function download(blob, name) {
    var u = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = u; a.download = name;
    document.body.appendChild(a); a.click(); a.remove();
    setTimeout(function () { URL.revokeObjectURL(u); }, 4000);
  }
  function calcBr(w, hh, f, q) {
    var k = q === 'small' ? 0.05 : q === 'high' ? 0.16 : 0.09;
    return Math.round(Math.min(40e6, Math.max(5e5, w * hh * f * k)));
  }
  function pickMime(fmt, audioOnly) {
    var list;
    if (audioOnly) {
      list = fmt === 'mp4' ? ['audio/mp4;codecs=mp4a.40.2', 'audio/mp4'] :
        fmt === 'webm' ? ['audio/webm;codecs=opus', 'audio/webm'] :
        ['audio/webm;codecs=opus', 'audio/webm', 'audio/ogg;codecs=opus', 'audio/mp4'];
    } else {
      var mp4 = ['video/mp4;codecs=avc1.42E01E,mp4a.40.2', 'video/mp4;codecs=avc1,mp4a.40.2', 'video/mp4'];
      var webm = ['video/webm;codecs=vp9,opus', 'video/webm;codecs=vp8,opus', 'video/webm'];
      list = fmt === 'mp4' ? mp4 : fmt === 'webm' ? webm : mp4.concat(webm);
    }
    for (var i = 0; i < list.length; i++) {
      try { if (MediaRecorder.isTypeSupported(list[i])) return list[i]; } catch (e) { /* ignore */ }
    }
    return '';
  }
  function startTicker(fn, ms) {
    try {
      var blob = new Blob(['var t;onmessage=function(e){clearInterval(t);if(e.data>0)t=setInterval(function(){postMessage(1)},e.data)}'], { type: 'text/javascript' });
      var u = URL.createObjectURL(blob);
      var w = new Worker(u);
      w.onmessage = function () { fn(); };
      w.postMessage(ms);
      return function () { try { w.postMessage(0); w.terminate(); } catch (e) { /* ignore */ } URL.revokeObjectURL(u); };
    } catch (e) {
      var id = setInterval(fn, ms);
      return function () { clearInterval(id); };
    }
  }

  /* ---------- settings persistence ---------- */
  var SET_IDS = ['sr-mic', 'sr-micvol', 'sr-ns', 'sr-ec', 'sr-sys', 'sr-sysvol', 'sr-campos', 'sr-camsize', 'sr-camshape', 'sr-cammirror', 'sr-res', 'sr-fps', 'sr-q', 'sr-fmt', 'sr-cds', 'sr-cursor', 'sr-persist'];
  function loadSet() {
    try {
      var d = JSON.parse(localStorage.getItem('sr-set') || '{}');
      SET_IDS.forEach(function (id) {
        if (d[id] === undefined) return;
        var el = $(id);
        if (!el) return;
        if (el.type === 'checkbox') el.checked = !!d[id]; else el.value = d[id];
      });
      /* กล้อง/ไมค์ไม่เปิดเองอัตโนมัติ เพื่อไม่ให้ขอสิทธิ์ทันทีที่โหลดหน้า */
      $('sr-mic').checked = false;
    } catch (e) { /* ignore */ }
  }
  function saveSet() {
    try {
      var d = {};
      SET_IDS.forEach(function (id) { var el = $(id); d[id] = el.type === 'checkbox' ? el.checked : el.value; });
      localStorage.setItem('sr-set', JSON.stringify(d));
    } catch (e) { /* ignore */ }
  }

  /* ---------- IndexedDB ---------- */
  function openDB() {
    return new Promise(function (res, rej) {
      if (!window.indexedDB) return rej(new Error('no idb'));
      var r = indexedDB.open('sr-recorder', 1);
      r.onupgradeneeded = function () {
        var d = r.result;
        d.createObjectStore('rec', { keyPath: 'id' });
        d.createObjectStore('chunk', { autoIncrement: true });
      };
      r.onsuccess = function () { res(r.result); };
      r.onerror = function () { rej(r.error); };
    });
  }
  function tx(store, mode, fn) {
    return new Promise(function (res, rej) {
      if (!S.db) return rej(new Error('no db'));
      var t, out;
      try { t = S.db.transaction(store, mode); out = fn(t.objectStore(store)); } catch (e) { return rej(e); }
      t.oncomplete = function () { res(out && out.result !== undefined ? out.result : undefined); };
      t.onerror = function () { rej(t.error); };
      t.onabort = function () { rej(t.error); };
    });
  }
  function putRec(it) {
    return tx('rec', 'readwrite', function (st) {
      return st.put({ id: it.id, name: it.name, blob: it.blob, dur: it.dur, size: it.size, date: it.date, mime: it.mime, kind: it.kind });
    }).then(function () { it.saved = true; });
  }
  function delRec(id) { return tx('rec', 'readwrite', function (st) { return st.delete(id); }); }

  /* ---------- media metadata ---------- */
  function getDur(url) {
    return new Promise(function (res) {
      var v = document.createElement('video');
      var done = false;
      function fin(d) {
        if (done) return;
        done = true;
        v.removeAttribute('src');
        try { v.load(); } catch (e) { /* ignore */ }
        res(isFinite(d) && d > 0 ? d : 0);
      }
      v.preload = 'metadata';
      v.onloadedmetadata = function () {
        if (v.duration === Infinity) {
          v.currentTime = 1e7;
          v.ontimeupdate = function () { v.ontimeupdate = null; fin(v.duration); };
        } else fin(v.duration);
      };
      v.onerror = function () { fin(0); };
      setTimeout(function () { fin(v.duration || 0); }, 6000);
      v.src = url;
    });
  }
  function loadVideo(url) {
    return new Promise(function (res, rej) {
      var v = document.createElement('video');
      v.preload = 'auto'; v.playsInline = true;
      v.onloadedmetadata = function () { res(v); };
      v.onerror = function () { rej(new Error('โหลดคลิปไม่ได้')); };
      v.src = url;
    });
  }
  function seek(v, t) {
    return new Promise(function (res) {
      if (Math.abs(v.currentTime - t) < 0.01) return res();
      var done = false;
      function fin() { if (!done) { done = true; v.onseeked = null; res(); } }
      v.onseeked = fin;
      v.currentTime = t;
      setTimeout(fin, 4000);
    });
  }
  function drawFit(cx, v, w, hh) {
    cx.fillStyle = '#000'; cx.fillRect(0, 0, w, hh);
    var vw = v.videoWidth || w, vh = v.videoHeight || hh;
    var sc = Math.min(w / vw, hh / vh), dw = vw * sc, dh = vh * sc;
    cx.drawImage(v, (w - dw) / 2, (hh - dh) / 2, dw, dh);
  }

  /* ---------- webcam overlay ---------- */
  function readCo() {
    S.co = { pos: $('sr-campos').value, size: +$('sr-camsize').value, shape: $('sr-camshape').value, mirror: $('sr-cammirror').checked };
  }
  function camPath(cx, x, y, bw, bh, circ) {
    cx.beginPath();
    if (circ) { cx.arc(x + bw / 2, y + bh / 2, bw / 2, 0, Math.PI * 2); return; }
    var r = Math.round(bw * 0.06);
    cx.moveTo(x + r, y);
    cx.arcTo(x + bw, y, x + bw, y + bh, r);
    cx.arcTo(x + bw, y + bh, x, y + bh, r);
    cx.arcTo(x, y + bh, x, y, r);
    cx.arcTo(x, y, x + bw, y, r);
    cx.closePath();
  }
  function drawCam(cx, cv, W, H) {
    var o = S.co, cw = cv.videoWidth, ch = cv.videoHeight;
    if (!cw || !ch) return;
    var circ = o.shape === 'circle';
    var bw = Math.round(W * o.size);
    var bh = circ ? bw : Math.round(bw * ch / cw);
    var m = Math.round(W * 0.02);
    var x = o.pos.indexOf('r') > -1 ? W - bw - m : m;
    var y = o.pos.indexOf('b') > -1 ? H - bh - m : m;
    var sx = 0, sy = 0, sw = cw, sh = ch;
    if (circ) { var s = Math.min(cw, ch); sx = (cw - s) / 2; sy = (ch - s) / 2; sw = s; sh = s; }
    cx.save();
    camPath(cx, x, y, bw, bh, circ);
    cx.clip();
    if (o.mirror) { cx.translate(x + bw, y); cx.scale(-1, 1); cx.drawImage(cv, sx, sy, sw, sh, 0, 0, bw, bh); }
    else cx.drawImage(cv, sx, sy, sw, sh, x, y, bw, bh);
    cx.restore();
    cx.save();
    cx.lineWidth = Math.max(2, W * 0.003);
    cx.strokeStyle = 'rgba(255,255,255,.85)';
    camPath(cx, x, y, bw, bh, circ);
    cx.stroke();
    cx.restore();
  }

  /* ---------- devices ---------- */
  async function listDevices() {
    try {
      var devs = await navigator.mediaDevices.enumerateDevices();
      var fill = function (sel, kind, def) {
        var cur = sel.value;
        sel.innerHTML = '';
        sel.appendChild(h('option', { value: '', text: def }));
        var n = 0;
        devs.filter(function (d) { return d.kind === kind; }).forEach(function (d) {
          n++;
          sel.appendChild(h('option', { value: d.deviceId, text: d.label || ((kind === 'audioinput' ? 'ไมโครโฟน ' : 'กล้อง ') + n) }));
        });
        sel.value = cur;
      };
      fill($('sr-micdev'), 'audioinput', 'ไมโครโฟนเริ่มต้น');
      fill($('sr-camdev'), 'videoinput', 'กล้องเริ่มต้น');
    } catch (e) { /* ignore */ }
  }
  async function askPerm(kind) {
    try {
      var s = await navigator.mediaDevices.getUserMedia(kind === 'mic' ? { audio: true } : { video: true });
      s.getTracks().forEach(function (t) { t.stop(); });
      await listDevices();
      return true;
    } catch (e) {
      setErr(kind === 'mic' ? 'ไม่ได้รับอนุญาตให้ใช้ไมโครโฟน' : 'ไม่ได้รับอนุญาตให้ใช้กล้อง');
      return false;
    }
  }
  function devId(id) { var v = $(id).value; return v ? { exact: v } : undefined; }

  /* ---------- UI state ---------- */
  function updUI() {
    var st = S.state;
    var rec = st === 'recording' || st === 'paused';
    $('sr-start').disabled = st !== 'idle' || S.busy || !canDisplay;
    $('sr-pause').disabled = !rec;
    $('sr-pause').textContent = st === 'paused' ? '▶ ทำต่อ' : '⏸ พัก';
    $('sr-stop').disabled = !(rec || st === 'countdown');
    $('sr-snap').disabled = !rec;
    $('sr-badge').hidden = !rec;
    $('sr-stage').classList.toggle('sr-paused', st === 'paused');
    $('sr-ph').hidden = !!pv.srcObject;
    var vsel = S.sel.length;
    $('sr-merge').disabled = vsel < 2 || S.busy;
    $('sr-delsel').disabled = vsel < 1 || S.busy;
    $('sr-delall').disabled = !S.items.length || S.busy;
    $('sr-all').disabled = !S.items.length;
  }
  function elapsed() {
    return (S.acc + (S.state === 'recording' ? performance.now() - S.t0 : 0)) / 1000;
  }
  async function updStorage() {
    var el = $('sr-storage');
    try {
      if (navigator.storage && navigator.storage.estimate) {
        var e = await navigator.storage.estimate();
        var used = S.items.reduce(function (a, i) { return a + i.size; }, 0);
        el.textContent = 'คลิปในรายการ ' + S.items.length + ' ไฟล์ (' + fmtSize(used) + ') · พื้นที่เบราว์เซอร์ใช้ไป ' + fmtSize(e.usage || 0) + ' จาก ' + fmtSize(e.quota || 0);
        return;
      }
    } catch (e) { /* ignore */ }
    el.textContent = 'คลิปในรายการ ' + S.items.length + ' ไฟล์';
  }

  /* ---------- recordings list ---------- */
  function addItem(it) {
    it.url = URL.createObjectURL(it.blob);
    S.items.unshift(it);
    if (S.persist && S.db) {
      putRec(it).catch(function () { setErr('บันทึกลงเบราว์เซอร์ไม่สำเร็จ (พื้นที่อาจเต็ม) กรุณาดาวน์โหลดไฟล์เก็บไว้'); });
    }
    render(); updStorage(); updUI();
  }
  function removeItem(it) {
    URL.revokeObjectURL(it.url);
    S.items = S.items.filter(function (x) { return x !== it; });
    S.sel = S.sel.filter(function (id) { return id !== it.id; });
    if (S.db) delRec(it.id).catch(function () { /* ignore */ });
    if (S.tItem === it) closeTrim();
  }
  function render() {
    var list = $('sr-list');
    list.innerHTML = '';
    if (!S.items.length) { list.appendChild(h('p', { class: 'sr-empty', text: 'ยังไม่มีการบันทึก กด "เริ่มบันทึก" เพื่อเริ่มต้น' })); return; }
    S.items.forEach(function (it) {
      var media = it.kind === 'audio' ? h('audio', { src: it.url, controls: true, preload: 'metadata' }) : h('video', { src: it.url, controls: true, preload: 'metadata', playsinline: true });
      var nameIn = h('input', { type: 'text', value: it.name, 'aria-label': 'ชื่อไฟล์' });
      nameIn.addEventListener('change', function () {
        it.name = nameIn.value.trim() || it.name;
        nameIn.value = it.name;
        if (S.db && it.saved) putRec(it).catch(function () { /* ignore */ });
      });
      var sel = null;
      if (it.kind !== 'audio') {
        var idx = S.sel.indexOf(it.id);
        var cb = h('input', { type: 'checkbox' });
        cb.checked = idx > -1;
        cb.addEventListener('change', function () {
          if (cb.checked) S.sel.push(it.id); else S.sel = S.sel.filter(function (x) { return x !== it.id; });
          render(); updUI();
        });
        sel = h('label', { class: 'sr-sel' }, cb, 'เลือกเพื่อรวมคลิป', idx > -1 ? h('span', { class: 'sr-ord', text: String(idx + 1) }) : null);
      }
      var acts = [
        h('button', { type: 'button', class: 'sr-btn', text: 'ดาวน์โหลด', onclick: function () { download(it.blob, safe(it.name) + '.' + extOf(it)); } })
      ];
      if (it.kind !== 'audio') {
        acts.push(h('button', { type: 'button', class: 'sr-btn', text: '✂ ตัด', onclick: function () { openTrim(it); } }));
        acts.push(h('button', { type: 'button', class: 'sr-btn', text: '🎧 ดึงเสียง', onclick: function () { doAudio(it); } }));
      }
      acts.push(h('button', { type: 'button', class: 'sr-btn', text: 'ลบ', onclick: function () { removeItem(it); render(); updStorage(); updUI(); } }));
      list.appendChild(h('div', { class: 'sr-card' }, media,
        h('div', { class: 'sr-info' }, nameIn, sel,
          h('div', { class: 'sr-meta', text: fmtT(it.dur) + ' · ' + fmtSize(it.size) + ' · ' + extOf(it).toUpperCase() + ' · ' + fmtDate(it.date) }),
          h('div', { class: 'sr-act' }, acts))));
    });
  }

  /* ---------- recording ---------- */
  function addAudio(ac, dest, stream, volId, key) {
    var s = ac.createMediaStreamSource(stream);
    var g = ac.createGain();
    g.gain.value = $(volId).value / 100;
    var an = ac.createAnalyser();
    an.fftSize = 512;
    s.connect(g); g.connect(an); g.connect(dest);
    S.gains[key] = g; S.an[key] = an;
  }
  function meterLoop() {
    var buf = new Uint8Array(512);
    S.timers.push(setInterval(function () {
      Object.keys(S.an).forEach(function (k) {
        var an = S.an[k];
        an.getByteTimeDomainData(buf);
        var peak = 0;
        for (var i = 0; i < buf.length; i++) { var v = Math.abs(buf[i] - 128) / 128; if (v > peak) peak = v; }
        var el = $('sr-m-' + k);
        if (el) el.style.width = Math.min(100, Math.round(peak * 140)) + '%';
      });
    }, 80));
  }
  function cleanup() {
    S.timers.forEach(function (t) { clearInterval(t); });
    S.timers = [];
    S.stops.forEach(function (f) { try { f(); } catch (e) { /* ignore */ } });
    S.stops = [];
    S.streams.forEach(function (s) { s.getTracks().forEach(function (t) { try { t.stop(); } catch (e) { /* ignore */ } }); });
    S.streams = [];
    if (S.ac) { try { S.ac.close(); } catch (e) { /* ignore */ } S.ac = null; }
    S.gains = {}; S.an = {};
    $('sr-m-mic').style.width = '0'; $('sr-m-sys').style.width = '0';
    pv.srcObject = null;
    $('sr-cd').hidden = true;
    S.rec = null; S.state = 'idle';
    updUI();
  }
  async function start() {
    if (S.state !== 'idle' || S.busy || !canDisplay) return;
    setErr(''); setStatus(''); readCo();
    S.state = 'starting'; updUI();
    var fps = +$('sr-fps').value, rs = $('sr-res').value;
    var vc = { frameRate: { ideal: fps, max: fps }, cursor: $('sr-cursor').value };
    if (rs !== 'auto') { var hh = +rs; vc.height = { ideal: hh }; vc.width = { ideal: Math.round(hh * 16 / 9) }; }
    var disp;
    try {
      disp = await navigator.mediaDevices.getDisplayMedia({ video: vc, audio: $('sr-sys').checked });
    } catch (e) {
      S.state = 'idle'; updUI();
      setErr(e && e.name === 'NotAllowedError' ? 'ยังไม่ได้เลือกหน้าจอ หรือไม่ได้อนุญาตให้บันทึก' : 'เริ่มบันทึกไม่ได้: ' + ((e && e.message) || e));
      return;
    }
    S.streams.push(disp);
    var vt = disp.getVideoTracks()[0];
    S.cdCancel = false;
    vt.addEventListener('ended', function () {
      if (S.state === 'countdown' || S.state === 'starting') S.cdCancel = true;
      else if (S.state === 'recording' || S.state === 'paused') stop();
    });
    pv.srcObject = new MediaStream([vt]);
    pv.play().catch(function () { /* ignore */ });
    S.state = 'countdown'; updUI();
    try {
      var mic = null, cam = null, notes = [];
      if ($('sr-mic').checked) {
        try {
          mic = await navigator.mediaDevices.getUserMedia({ audio: { deviceId: devId('sr-micdev'), noiseSuppression: $('sr-ns').checked, echoCancellation: $('sr-ec').checked, autoGainControl: true } });
          S.streams.push(mic);
        } catch (e) { notes.push('เปิดไมโครโฟนไม่ได้ จึงบันทึกโดยไม่มีเสียงไมค์'); }
      }
      if ($('sr-cam').checked) {
        try {
          cam = await navigator.mediaDevices.getUserMedia({ video: { deviceId: devId('sr-camdev'), width: { ideal: 1280 }, height: { ideal: 720 } } });
          S.streams.push(cam);
        } catch (e) { notes.push('เปิดกล้องไม่ได้ จึงบันทึกโดยไม่มีภาพเว็บแคม'); }
      }
      if ($('sr-sys').checked && !disp.getAudioTracks().length) notes.push('ไม่ได้แชร์เสียงระบบ/แท็บ: ในหน้าต่างเลือกหน้าจอให้ติ๊ก "แชร์เสียง" ก่อนกดแชร์');
      if (notes.length) setErr(notes.join(' · '));
      var cd = +$('sr-cds').value, cdEl = $('sr-cd');
      for (var i = cd; i > 0 && !S.cdCancel; i--) { cdEl.textContent = i; cdEl.hidden = false; await sleep(1000); }
      cdEl.hidden = true;
      if (S.cdCancel || vt.readyState === 'ended') { cleanup(); setStatus('ยกเลิกการบันทึก'); return; }

      var st = vt.getSettings();
      var W = st.width || 1280, H = st.height || 720;
      var outV = vt;
      if (cam) {
        var cv = document.createElement('canvas');
        cv.width = W; cv.height = H;
        var cx = cv.getContext('2d');
        var dv = document.createElement('video');
        dv.muted = true; dv.playsInline = true; dv.srcObject = new MediaStream([vt]);
        var cvid = document.createElement('video');
        cvid.muted = true; cvid.playsInline = true; cvid.srcObject = cam;
        await Promise.all([dv.play(), cvid.play()]);
        var draw = function () { drawFit(cx, dv, W, H); drawCam(cx, cvid, W, H); };
        draw();
        S.stops.push(startTicker(draw, Math.round(1000 / fps)));
        outV = cv.captureStream(fps).getVideoTracks()[0];
        pv.srcObject = new MediaStream([outV]);
      }
      var aTracks = [];
      var hasMic = mic && mic.getAudioTracks().length, hasSys = disp.getAudioTracks().length;
      if (hasMic || hasSys) {
        var AC = window.AudioContext || window.webkitAudioContext;
        var ac = new AC();
        S.ac = ac;
        try { await ac.resume(); } catch (e) { /* ignore */ }
        var dest = ac.createMediaStreamDestination();
        if (hasMic) addAudio(ac, dest, mic, 'sr-micvol', 'mic');
        if (hasSys) addAudio(ac, dest, new MediaStream(disp.getAudioTracks()), 'sr-sysvol', 'sys');
        aTracks = dest.stream.getAudioTracks();
        meterLoop();
      }
      var final = new MediaStream([outV].concat(aTracks));
      var mime = pickMime($('sr-fmt').value, false);
      var opts = { videoBitsPerSecond: calcBr(W, H, fps, $('sr-q').value) };
      if (mime) opts.mimeType = mime;
      if (aTracks.length) opts.audioBitsPerSecond = 128000;
      var rec;
      try { rec = new MediaRecorder(final, opts); } catch (e) { rec = new MediaRecorder(final); }
      S.mime = rec.mimeType || mime || 'video/webm';
      S.chunks = []; S.sid = Date.now(); S.chunkFail = false;
      rec.ondataavailable = function (ev) {
        if (!ev.data || !ev.data.size) return;
        S.chunks.push(ev.data);
        if (S.persist && S.db && !S.chunkFail) {
          var sid = S.sid, mm = S.mime;
          tx('chunk', 'readwrite', function (s) { return s.add({ sid: sid, mime: mm, blob: ev.data }); }).catch(function () {
            S.chunkFail = true;
            setErr('พื้นที่เก็บข้อมูลของเบราว์เซอร์ใกล้เต็ม ระบบกู้คืนอัตโนมัติหยุดทำงาน แต่ยังบันทึกต่อได้');
          });
        }
      };
      rec.onerror = function () { setErr('การบันทึกมีข้อผิดพลาด'); stop(); };
      rec.onstop = finish;
      S.rec = rec;
      rec.start(1000);
      S.acc = 0; S.t0 = performance.now(); S.state = 'recording';
      $('sr-time').textContent = '00:00';
      S.timers.push(setInterval(function () { $('sr-time').textContent = fmtT(elapsed()); }, 250));
      updUI();
      setStatus('กำลังบันทึก…');
    } catch (e) {
      cleanup();
      setErr('เริ่มบันทึกไม่สำเร็จ: ' + ((e && e.message) || e));
    }
  }
  function pause() {
    if (!S.rec) return;
    if (S.state === 'recording') {
      S.rec.pause(); S.acc += performance.now() - S.t0; S.state = 'paused'; setStatus('พักการบันทึก');
    } else if (S.state === 'paused') {
      S.rec.resume(); S.t0 = performance.now(); S.state = 'recording'; setStatus('กำลังบันทึก…');
    }
    updUI();
  }
  function stop() {
    if (S.state === 'countdown') { S.cdCancel = true; return; }
    if (!S.rec || (S.state !== 'recording' && S.state !== 'paused')) return;
    S.dur = elapsed();
    S.state = 'saving'; updUI();
    try { if (S.rec.state !== 'inactive') S.rec.stop(); } catch (e) { finish(); }
  }
  async function finish() {
    var rec = S.rec;
    if (!rec) return;
    var blob = new Blob(S.chunks, { type: S.mime });
    var dur = S.dur;
    var sid = S.sid;
    S.chunks = [];
    cleanup();
    if (!blob.size) { setErr('ไม่มีข้อมูลที่บันทึกไว้'); return; }
    var it = { id: sid, name: 'บันทึกหน้าจอ ' + fmtDate(sid), blob: blob, dur: dur, size: blob.size, date: sid, mime: blob.type || 'video/webm', kind: 'video' };
    addItem(it);
    if (S.db) tx('chunk', 'readwrite', function (st) { return st.clear(); }).catch(function () { /* ignore */ });
    setStatus('บันทึกเสร็จแล้ว ' + fmtT(dur) + ' · ' + fmtSize(blob.size));
  }
  function snap() {
    if (!pv.videoWidth) return;
    var c = document.createElement('canvas');
    c.width = pv.videoWidth; c.height = pv.videoHeight;
    c.getContext('2d').drawImage(pv, 0, 0);
    c.toBlob(function (b) { if (b) download(b, 'ภาพหน้าจอ-' + stamp() + '.png'); }, 'image/png');
  }

  /* ---------- editing (trim / merge / extract audio) ---------- */
  async function renderClips(clips, o) {
    var AC = window.AudioContext || window.webkitAudioContext;
    var ac = new AC();
    try { await ac.resume(); } catch (e) { /* ignore */ }
    var dest = ac.createMediaStreamDestination();
    var cv = null, cx = null, tracks = [], W = 1280, H = 720;
    try {
      if (!o.audioOnly) {
        var f = await loadVideo(clips[0].item.url);
        W = (f.videoWidth || 1280) & ~1; H = (f.videoHeight || 720) & ~1;
        f.removeAttribute('src');
        cv = document.createElement('canvas'); cv.width = W; cv.height = H;
        cx = cv.getContext('2d');
        tracks.push(cv.captureStream(30).getVideoTracks()[0]);
      }
      tracks = tracks.concat(dest.stream.getAudioTracks());
      var mime = pickMime($('sr-fmt').value, !!o.audioOnly);
      var opts = {};
      if (mime) opts.mimeType = mime;
      if (!o.audioOnly) opts.videoBitsPerSecond = calcBr(W, H, 30, $('sr-q').value);
      var rec = new MediaRecorder(new MediaStream(tracks), opts);
      var parts = [];
      rec.ondataavailable = function (e) { if (e.data && e.data.size) parts.push(e.data); };
      var done = new Promise(function (r) { rec.onstop = r; });
      rec.start(500);
      var total = clips.reduce(function (a, c) { return a + (c.end - c.start); }, 0) || 1;
      var doneT = 0;
      for (var i = 0; i < clips.length; i++) {
        if (S.cancel) break;
        var c = clips[i];
        var v = await loadVideo(c.item.url);
        var src = ac.createMediaElementSource(v);
        src.connect(dest);
        await seek(v, c.start);
        var end = Math.min(c.end, isFinite(v.duration) ? v.duration : c.end);
        await v.play();
        await new Promise(function (res) {
          var t0 = performance.now();
          var tick = setInterval(function () {
            if (cx) drawFit(cx, v, W, H);
            var cur = v.currentTime;
            if (o.onProgress) o.onProgress((doneT + Math.max(0, cur - c.start)) / total);
            if (S.cancel || v.ended || cur >= end - 0.04 || performance.now() - t0 > ((end - c.start) * 3 + 10) * 1000) {
              clearInterval(tick); res();
            }
          }, 33);
        });
        v.pause();
        try { src.disconnect(); } catch (e) { /* ignore */ }
        doneT += c.end - c.start;
      }
      if (rec.state !== 'inactive') rec.stop();
      await done;
      return { blob: new Blob(parts, { type: rec.mimeType || mime || 'video/webm' }), mime: rec.mimeType || mime, dur: total };
    } finally {
      try { ac.close(); } catch (e) { /* ignore */ }
    }
  }
  function prog(p) { $('sr-jobp').value = Math.max(0, Math.min(100, p)); }
  async function job(label, clips, o, name) {
    if (S.busy) return;
    S.busy = true; S.cancel = false; setErr('');
    $('sr-job').hidden = false;
    $('sr-jobt').textContent = label + ' … กรุณาเปิดแท็บนี้ไว้';
    prog(0); updUI();
    try {
      var r = await renderClips(clips, { audioOnly: o.audioOnly, onProgress: function (p) { prog(p * 100); } });
      if (S.cancel) setStatus('ยกเลิกแล้ว');
      else if (r && r.blob.size) {
        addItem({ id: Date.now(), name: name, blob: r.blob, dur: r.dur, size: r.blob.size, date: Date.now(), mime: r.mime || r.blob.type, kind: o.audioOnly ? 'audio' : 'video' });
        setStatus('เสร็จแล้ว: ' + name);
      } else setErr('สร้างไฟล์ไม่สำเร็จ');
    } catch (e) {
      setErr('ประมวลผลไม่สำเร็จ: ' + ((e && e.message) || e));
    } finally {
      S.busy = false; $('sr-job').hidden = true; updUI();
    }
  }
  async function ensureDur(it) {
    if (!it.dur) it.dur = await getDur(it.url);
    return it.dur;
  }
  async function doAudio(it) {
    var d = await ensureDur(it);
    if (!d) return setErr('อ่านความยาวคลิปไม่ได้');
    job('กำลังดึงเสียง', [{ item: it, start: 0, end: d }], { audioOnly: true }, it.name + ' (เสียง)');
  }
  async function doMerge() {
    var its = S.sel.map(function (id) { return S.items.filter(function (x) { return x.id === id; })[0]; }).filter(Boolean);
    if (its.length < 2) return;
    var clips = [];
    for (var i = 0; i < its.length; i++) {
      var d = await ensureDur(its[i]);
      if (!d) return setErr('อ่านความยาวคลิปไม่ได้');
      clips.push({ item: its[i], start: 0, end: d });
    }
    job('กำลังรวมคลิป', clips, { audioOnly: false }, 'รวมคลิป ' + fmtDate(Date.now()));
  }
  async function openTrim(it) {
    var d = await ensureDur(it);
    if (!d) return setErr('อ่านความยาวคลิปไม่ได้');
    S.tItem = it;
    var tv = $('sr-tv');
    tv.src = it.url;
    ['sr-ts', 'sr-te'].forEach(function (id) { $(id).max = d; });
    $('sr-ts').value = 0; $('sr-te').value = d;
    trimLabels();
    $('sr-trim').hidden = false;
    $('sr-trim').scrollIntoView({ block: 'nearest', behavior: 'smooth' });
  }
  function closeTrim() {
    var tv = $('sr-tv');
    try { tv.pause(); } catch (e) { /* ignore */ }
    tv.removeAttribute('src');
    S.tItem = null;
    $('sr-trim').hidden = true;
  }
  function trimLabels() {
    $('sr-tso').textContent = fmtT(+$('sr-ts').value);
    $('sr-teo').textContent = fmtT(+$('sr-te').value);
  }
  function doTrim() {
    var it = S.tItem;
    if (!it) return;
    var s = +$('sr-ts').value, e = +$('sr-te').value, d = it.dur;
    if (e - s < 0.3) return setErr('ช่วงที่เลือกสั้นเกินไป');
    var mode = document.querySelector('input[name=sr-tm]:checked').value;
    var clips = mode === 'keep' ? [{ item: it, start: s, end: e }] : [{ item: it, start: 0, end: s }, { item: it, start: e, end: d }];
    clips = clips.filter(function (c) { return c.end - c.start > 0.1; });
    if (!clips.length) return setErr('ไม่เหลือส่วนใดให้สร้างคลิป');
    closeTrim();
    job(mode === 'keep' ? 'กำลังตัดคลิป' : 'กำลังตัดส่วนที่เลือกออก', clips, { audioOnly: false }, it.name + ' (ตัดต่อ)');
  }

  /* ---------- events ---------- */
  $('sr-start').addEventListener('click', start);
  $('sr-pause').addEventListener('click', pause);
  $('sr-stop').addEventListener('click', stop);
  $('sr-snap').addEventListener('click', snap);
  $('sr-micvol').addEventListener('input', function () { if (S.gains.mic) S.gains.mic.gain.value = this.value / 100; });
  $('sr-sysvol').addEventListener('input', function () { if (S.gains.sys) S.gains.sys.gain.value = this.value / 100; });
  ['sr-campos', 'sr-camsize', 'sr-camshape', 'sr-cammirror'].forEach(function (id) { $(id).addEventListener('change', readCo); });
  $('sr-mic').addEventListener('change', async function () {
    setErr('');
    if (this.checked && !(await askPerm('mic'))) this.checked = false;
  });
  $('sr-cam').addEventListener('change', async function () {
    setErr('');
    if (this.checked && !(await askPerm('cam'))) this.checked = false;
  });
  $('sr-persist').addEventListener('change', function () { S.persist = this.checked && !!S.db; });
  $('sr-all').addEventListener('click', function () {
    var vids = S.items.filter(function (i) { return i.kind !== 'audio'; });
    S.sel = S.sel.length === vids.length ? [] : vids.map(function (i) { return i.id; });
    render(); updUI();
  });
  $('sr-merge').addEventListener('click', doMerge);
  $('sr-delsel').addEventListener('click', function () {
    if (!confirm('ลบคลิปที่เลือกทั้งหมด?')) return;
    S.items.filter(function (i) { return S.sel.indexOf(i.id) > -1; }).forEach(removeItem);
    S.sel = []; render(); updStorage(); updUI();
  });
  $('sr-delall').addEventListener('click', function () {
    if (!confirm('ลบการบันทึกทั้งหมดในเบราว์เซอร์นี้? ไม่สามารถกู้คืนได้')) return;
    S.items.slice().forEach(removeItem);
    S.sel = []; render(); updStorage(); updUI();
  });
  $('sr-jobc').addEventListener('click', function () { S.cancel = true; });
  $('sr-ts').addEventListener('input', function () {
    var te = $('sr-te');
    if (+this.value > +te.value - 0.3) this.value = Math.max(0, +te.value - 0.3);
    $('sr-tv').currentTime = +this.value; trimLabels();
  });
  $('sr-te').addEventListener('input', function () {
    var ts = $('sr-ts');
    if (+this.value < +ts.value + 0.3) this.value = Math.min(+this.max, +ts.value + 0.3);
    $('sr-tv').currentTime = +this.value; trimLabels();
  });
  $('sr-tss').addEventListener('click', function () {
    var t = Math.min($('sr-tv').currentTime, +$('sr-te').value - 0.3);
    $('sr-ts').value = Math.max(0, t); trimLabels();
  });
  $('sr-tse').addEventListener('click', function () {
    var t = Math.max($('sr-tv').currentTime, +$('sr-ts').value + 0.3);
    $('sr-te').value = Math.min(+$('sr-te').max, t); trimLabels();
  });
  $('sr-tgo').addEventListener('click', doTrim);
  $('sr-tx').addEventListener('click', closeTrim);
  document.addEventListener('keydown', function (e) {
    if (!e.altKey || !e.shiftKey) return;
    if (e.code === 'KeyR') { e.preventDefault(); if (S.state === 'idle') start(); else stop(); }
    else if (e.code === 'KeyP') { e.preventDefault(); pause(); }
    else if (e.code === 'KeyS') { e.preventDefault(); snap(); }
  });
  window.addEventListener('beforeunload', function (e) {
    var unsaved = S.items.some(function (i) { return !i.saved; });
    if (S.state === 'recording' || S.state === 'paused' || S.busy || unsaved) { e.preventDefault(); e.returnValue = ''; }
  });
  SET_IDS.forEach(function (id) { $(id).addEventListener('change', saveSet); });
  $('sr-micvol').addEventListener('change', saveSet);
  $('sr-sysvol').addEventListener('change', saveSet);
  if (navigator.mediaDevices && navigator.mediaDevices.addEventListener) navigator.mediaDevices.addEventListener('devicechange', listDevices);

  /* ---------- init ---------- */
  async function recover() {
    var ch = await tx('chunk', 'readonly', function (st) { return st.getAll(); });
    if (!ch || !ch.length) return;
    var g = {};
    ch.forEach(function (c) { (g[c.sid] = g[c.sid] || []).push(c); });
    var ids = Object.keys(g);
    for (var i = 0; i < ids.length; i++) {
      var sid = +ids[i], mime = g[ids[i]][0].mime;
      var blob = new Blob(g[ids[i]].map(function (c) { return c.blob; }), { type: mime });
      var url = URL.createObjectURL(blob);
      var d = await getDur(url);
      URL.revokeObjectURL(url);
      await putRec({ id: sid, name: 'กู้คืน ' + fmtDate(sid), blob: blob, dur: d, size: blob.size, date: sid, mime: mime, kind: 'video' });
    }
    await tx('chunk', 'readwrite', function (st) { return st.clear(); });
    setStatus('กู้คืนการบันทึกที่ค้างอยู่จากครั้งก่อนแล้ว');
  }
  async function init() {
    loadSet();
    if (!canDisplay) $('sr-warn').hidden = false;
    if (canDisplay && !pickMime('mp4', false)) {
      var o = $('sr-fmt').querySelector('option[value=mp4]');
      if (o) o.remove();
    }
    try { S.db = await openDB(); } catch (e) { S.db = null; $('sr-persist').checked = false; $('sr-persist').disabled = true; }
    S.persist = $('sr-persist').checked && !!S.db;
    if (S.db) {
      try {
        await recover();
        var all = await tx('rec', 'readonly', function (st) { return st.getAll(); });
        (all || []).sort(function (a, b) { return b.date - a.date; }).forEach(function (r) {
          r.url = URL.createObjectURL(r.blob);
          r.saved = true;
          S.items.push(r);
        });
      } catch (e) { /* ignore */ }
    }
    readCo(); render(); updStorage(); updUI();
    if (navigator.mediaDevices && navigator.mediaDevices.enumerateDevices) listDevices();
  }
  init();
})();
</script>

## วิธีใช้งานโปรแกรมบันทึกหน้าจอออนไลน์

1. **เปิดด้วยเบราว์เซอร์บนคอมพิวเตอร์** ใช้ Chrome, Edge หรือ Firefox เวอร์ชันล่าสุด เบราว์เซอร์บนมือถือและแท็บเล็ตยังไม่รองรับการบันทึกหน้าจอ
2. **ตั้งค่าเสียง** ติ๊ก "ไมโครโฟน" เพื่อพูดประกอบ เลือกอุปกรณ์ที่ต้องการ และปรับระดับเสียงได้ ติ๊ก "เสียงระบบ / แท็บ" หากต้องการอัดเสียงจากวิดีโอหรือเพลงที่เล่นอยู่
3. **เปิดกล้องเว็บแคม (ไม่บังคับ)** ติ๊ก "เปิดกล้อง" แล้วเลือกตำแหน่ง ขนาด และรูปทรงของภาพกล้องที่จะซ้อนบนหน้าจอ
4. **เลือกคุณภาพ** กำหนดความละเอียด เฟรมเรต คุณภาพ และชนิดไฟล์ หากต้องการไฟล์เล็กสำหรับส่งทางแชต ให้เลือก "ไฟล์เล็ก" หรือ 720p
5. **กด "เริ่มบันทึก"** เบราว์เซอร์จะให้เลือกว่าจะแชร์ทั้งหน้าจอ หน้าต่างโปรแกรม หรือแท็บเดียว หากต้องการเสียงระบบ ให้ติ๊ก "แชร์เสียง" ในหน้าต่างนี้ด้วย
6. **ระหว่างบันทึก** ใช้ปุ่ม "พัก" เพื่อหยุดชั่วคราว ปุ่ม "จับภาพ" เพื่อบันทึกภาพนิ่ง และดูมิเตอร์เสียงว่าไมค์และเสียงระบบทำงานอยู่หรือไม่ กด "หยุด" หรือกด "หยุดการแชร์" ของเบราว์เซอร์เมื่อเสร็จ
7. **ตัดต่อคลิป** กด "✂ ตัด" เพื่อเก็บเฉพาะช่วงที่ต้องการหรือตัดช่วงกลางออก เลือกหลายคลิปแล้วกด "รวมคลิปที่เลือก" เพื่อต่อกัน หรือกด "🎧 ดึงเสียง" เพื่อสร้างไฟล์เสียงอย่างเดียว
8. **ดาวน์โหลด** กด "ดาวน์โหลด" ที่คลิปที่ต้องการ ไฟล์จะถูกบันทึกลงเครื่องของคุณทันที

## อธิบายศัพท์ที่ใช้ในเครื่องมือ

- **ทั้งหน้าจอ / หน้าต่าง / แท็บ** คือขอบเขตที่เลือกบันทึก ทั้งหน้าจอเก็บทุกอย่างที่เห็น หน้าต่างเก็บเฉพาะโปรแกรมที่เลือก แท็บเก็บเฉพาะเว็บเพจหนึ่งแท็บ
- **ไมโครโฟน** คือเสียงพูดของคุณที่ถูกอัดผ่านอุปกรณ์รับเสียง
- **เสียงระบบ / แท็บ** คือเสียงที่เล่นจากคอมพิวเตอร์ เช่น เพลง วิดีโอ หรือเสียงของผู้ร่วมประชุม ต้องติ๊ก "แชร์เสียง" ตอนเลือกหน้าจอ
- **ลดเสียงรบกวน** คือการลดเสียงพื้นหลัง เช่น เสียงพัดลมหรือเสียงห้อง
- **ตัดเสียงสะท้อน** คือการป้องกันเสียงจากลำโพงย้อนเข้าไมค์จนเกิดเสียงก้อง
- **มิเตอร์เสียง** คือแถบแสดงความดังของเสียงแบบสด ใช้ตรวจว่ามีเสียงเข้ามาจริงหรือไม่
- **เว็บแคมซ้อนบนหน้าจอ** คือภาพจากกล้องที่ถูกวางเป็นกรอบเล็กบนวิดีโอ เหมาะกับการสอนหรือพรีเซนต์
- **กลับด้านแบบกระจก** คือการพลิกภาพกล้องซ้าย-ขวาให้เหมือนส่องกระจก ภาพที่ได้จะดูเป็นธรรมชาติกับตัวผู้พูด
- **ความละเอียด (720p / 1080p / 4K)** คือจำนวนจุดภาพในแนวตั้ง ยิ่งสูงยิ่งคมชัดแต่ไฟล์ใหญ่ขึ้น
- **เฟรมเรต (FPS)** คือจำนวนภาพต่อวินาที 30 FPS เหมาะกับงานทั่วไป 60 FPS ลื่นกว่าเหมาะกับเกมหรือภาพเคลื่อนไหวเร็ว
- **คุณภาพ (ไฟล์เล็ก / สมดุล / คมชัดสูง)** คือการกำหนดบิตเรต หรือปริมาณข้อมูลต่อวินาที ยิ่งสูงภาพยิ่งละเอียดแต่ไฟล์ใหญ่
- **MP4** คือไฟล์วิดีโอที่เปิดได้เกือบทุกอุปกรณ์และแอป เบราว์เซอร์รุ่นใหม่บางตัวรองรับ
- **WebM** คือไฟล์วิดีโอมาตรฐานเว็บ รองรับกว้างในเบราว์เซอร์ และเป็นตัวเลือกสำรองเมื่อบันทึก MP4 ไม่ได้
- **นับถอยหลัง** คือการรอ 3 หรือ 5 วินาทีก่อนเริ่มอัด เพื่อให้คุณสลับไปหน้าที่ต้องการได้ทัน
- **เคอร์เซอร์** คือตัวชี้เมาส์ ตั้งให้แสดงเสมอ แสดงเมื่อขยับ หรือซ่อนในวิดีโอได้
- **พัก / ทำต่อ** คือการหยุดอัดชั่วคราวโดยไม่สร้างไฟล์ใหม่ ช่วงที่พักจะไม่ถูกนับในความยาวคลิป
- **จับภาพ** คือการบันทึกภาพนิ่งจากหน้าจอขณะอัด เป็นไฟล์ PNG
- **ตัด (เก็บเฉพาะส่วนที่เลือก)** คือสร้างคลิปใหม่ที่มีเฉพาะช่วงเริ่มถึงจบที่กำหนด
- **ตัดส่วนที่เลือกออก** คือลบช่วงกลางของคลิปออก แล้วต่อช่วงต้นกับช่วงท้ายเข้าด้วยกัน
- **รวมคลิป** คือการต่อคลิปที่เลือกเป็นไฟล์เดียวตามลำดับหมายเลขที่แสดง
- **ดึงเสียง** คือการสร้างไฟล์เสียงอย่างเดียวจากวิดีโอ เหมาะกับการถอดเทปหรือทำพอดแคสต์
- **เก็บไว้ในเบราว์เซอร์นี้** คือการเก็บคลิปในพื้นที่จัดเก็บของเบราว์เซอร์ (IndexedDB) คลิปจะยังอยู่หลังรีโหลดหน้า แต่จะหายหากล้างข้อมูลเว็บไซต์
- **กู้คืนอัตโนมัติ** คือการเก็บข้อมูลระหว่างอัดเป็นช่วง ๆ หากแท็บปิดหรือเบราว์เซอร์ค้าง ครั้งต่อไปที่เปิดหน้านี้ระบบจะกู้คืนส่วนที่อัดไว้ให้
- **ปุ่มลัด** คือชุดแป้นพิมพ์สำหรับสั่งงานเร็ว ใช้ได้ขณะอยู่ในแท็บของเครื่องมือนี้เท่านั้น

## จุดเด่นของเครื่องมือ

- ฟรี ไม่ต้องสมัครสมาชิก ไม่มีลายน้ำ และไม่จำกัดความยาวจากตัวเครื่องมือ
- ไม่อัปโหลดไฟล์ไปที่ใด ทั้งการบันทึกและการตัดต่อทำงานในเบราว์เซอร์ของคุณ
- ผสมเสียงไมค์และเสียงระบบพร้อมปรับระดับเสียงแยกกัน
- ซ้อนภาพเว็บแคมได้ทั้งแบบสี่เหลี่ยมและวงกลม
- ตัด รวม และดึงเสียงได้โดยไม่ต้องติดตั้งโปรแกรมตัดต่อ

## ข้อจำกัดที่ควรรู้

- รองรับเฉพาะเบราว์เซอร์บนคอมพิวเตอร์ ไม่รองรับมือถือและแท็บเล็ต
- การบันทึกเสียงระบบขึ้นกับเบราว์เซอร์และระบบปฏิบัติการ บน Windows ด้วย Chrome หรือ Edge มักได้เสียงทั้งระบบเมื่อเลือกทั้งหน้าจอ ส่วน macOS และ Linux มักได้เฉพาะเสียงของแท็บ
- เมื่อเปิดกล้องซ้อนภาพ ควรเปิดแท็บของเครื่องมือนี้ไว้และไม่ย่อหน้าต่าง เพื่อให้ภาพประกอบเสร็จสมบูรณ์
- การตัด รวม และดึงเสียง ใช้การเล่นคลิปแล้วเข้ารหัสใหม่ จึงใช้เวลาเท่ากับความยาวคลิป และต้องเปิดแท็บนี้ค้างไว้
- ยังไม่มีการเลือกบันทึกเฉพาะบางส่วนของหน้าจอ และยังไม่มีเครื่องมือวาดบนหน้าจอขณะอัด

## คำถามที่พบบ่อย

### ใช้ฟรีหรือไม่ และมีลายน้ำหรือไม่

ใช้ฟรี ไม่ต้องสมัครสมาชิก และไฟล์ที่ได้ไม่มีลายน้ำ

### ไฟล์ถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่

ไม่ การบันทึกและการตัดต่อทำในเบราว์เซอร์ของคุณ ไฟล์จะถูกเก็บเฉพาะในอุปกรณ์ของคุณเท่านั้น

### ทำไมคลิปไม่มีเสียงระบบ

ต้องติ๊ก "เสียงระบบ / แท็บ" ในเครื่องมือ และติ๊ก "แชร์เสียง" ในหน้าต่างเลือกหน้าจอของเบราว์เซอร์ด้วย บางระบบอัดได้เฉพาะเสียงของแท็บ ไม่ใช่เสียงทั้งเครื่อง

### ใช้บันทึกหน้าจอบนมือถือได้หรือไม่

ยังไม่ได้ เพราะเบราว์เซอร์บนมือถือไม่รองรับฟังก์ชันบันทึกหน้าจอ ให้ใช้เครื่องมือบันทึกหน้าจอที่มากับระบบของมือถือแทน หรือใช้เครื่องมือนี้บนคอมพิวเตอร์

### ไฟล์ที่ได้เป็นนามสกุลอะไร

เป็น MP4 หากเบราว์เซอร์รองรับ มิฉะนั้นจะเป็น WebM คุณเลือกชนิดไฟล์เองได้ในส่วน "คุณภาพและรูปแบบไฟล์"

### ถ้าเบราว์เซอร์ค้างระหว่างอัด จะเสียไฟล์หรือไม่

ถ้าเปิด "เก็บไว้ในเบราว์เซอร์นี้" ไว้ ระบบจะเก็บข้อมูลเป็นช่วง ๆ และกู้คืนให้ในครั้งถัดไปที่เปิดหน้านี้

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"ใช้ฟรีหรือไม่ และมีลายน้ำหรือไม่","acceptedAnswer":{"@type":"Answer","text":"ใช้ฟรี ไม่ต้องสมัครสมาชิก และไฟล์ที่ได้ไม่มีลายน้ำ"}},{"@type":"Question","name":"ไฟล์ถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่","acceptedAnswer":{"@type":"Answer","text":"ไม่ การบันทึกและการตัดต่อทำในเบราว์เซอร์ของคุณ ไฟล์จะถูกเก็บเฉพาะในอุปกรณ์ของคุณเท่านั้น"}},{"@type":"Question","name":"ทำไมคลิปไม่มีเสียงระบบ","acceptedAnswer":{"@type":"Answer","text":"ต้องติ๊ก เสียงระบบ / แท็บ ในเครื่องมือ และติ๊ก แชร์เสียง ในหน้าต่างเลือกหน้าจอของเบราว์เซอร์ด้วย บางระบบอัดได้เฉพาะเสียงของแท็บ ไม่ใช่เสียงทั้งเครื่อง"}},{"@type":"Question","name":"ใช้บันทึกหน้าจอบนมือถือได้หรือไม่","acceptedAnswer":{"@type":"Answer","text":"ยังไม่ได้ เพราะเบราว์เซอร์บนมือถือไม่รองรับฟังก์ชันบันทึกหน้าจอ ให้ใช้เครื่องมือบันทึกหน้าจอที่มากับระบบของมือถือแทน หรือใช้เครื่องมือนี้บนคอมพิวเตอร์"}},{"@type":"Question","name":"ไฟล์ที่ได้เป็นนามสกุลอะไร","acceptedAnswer":{"@type":"Answer","text":"เป็น MP4 หากเบราว์เซอร์รองรับ มิฉะนั้นจะเป็น WebM คุณเลือกชนิดไฟล์เองได้ในส่วน คุณภาพและรูปแบบไฟล์"}},{"@type":"Question","name":"ถ้าเบราว์เซอร์ค้างระหว่างอัด จะเสียไฟล์หรือไม่","acceptedAnswer":{"@type":"Answer","text":"ถ้าเปิด เก็บไว้ในเบราว์เซอร์นี้ ไว้ ระบบจะเก็บข้อมูลเป็นช่วง ๆ และกู้คืนให้ในครั้งถัดไปที่เปิดหน้านี้"}}]}
</script>