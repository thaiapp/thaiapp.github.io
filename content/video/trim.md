---
title: ตัดวิดีโอออนไลน์ ฟรี
h1: ตัดวิดีโอออนไลน์
description: ตัดวิดีโอออนไลน์ฟรี ไม่ต้องอัปโหลด ไม่มีลายน้ำ ตัดช่วงกลาง แยกไฟล์ หรือดึงเสียงเป็น MP3 ใช้ได้ทั้งมือถือและคอมพิวเตอร์ รองรับ MP4 MOV WebM ตัดได้ตรงจุด
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-22T09:00:00+07:00'
weight: 143
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- ตัดวิดีโอออนไลน์
- เสียงและวิดีโอ
---

ตัดวิดีโอออนไลน์ฟรีในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ ไม่มีลายน้ำ ไม่ต้องสมัครสมาชิก เลือกช่วงที่ต้องการเก็บ ลบส่วนกลางออก หรือแยกเป็นหลายไฟล์ แล้วดาวน์โหลดได้ทันที

<div class="vt" id="vt">
<div class="vt-drop" id="vtDrop" tabindex="0" role="button" aria-label="เลือกไฟล์วิดีโอ">
<strong>วางวิดีโอที่นี่</strong>
<span>หรือคลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง</span>
<small>MP4, MOV, WebM, MKV · แนะนำไม่เกิน 500 MB · วิดีโอไม่ถูกอัปโหลดออกจากอุปกรณ์ของคุณ</small>
<input type="file" id="vtFile" accept="video/*,.mp4,.mov,.m4v,.webm,.mkv,.avi,.3gp" hidden>
</div>
<p class="vt-status vt-err" id="vtMsg" role="alert" hidden></p>
<div class="vt-work" id="vtWork" hidden>
<video class="vt-video" id="vtVideo" controls playsinline preload="metadata"></video>
<p class="vt-meta" id="vtMeta"></p>
<p class="vt-note vt-warn" id="vtWarn" hidden></p>
<div class="vt-tl" id="vtTl" aria-label="ไทม์ไลน์วิดีโอ">
<canvas id="vtThumbs" width="960" height="64"></canvas>
<div class="vt-layer" id="vtLayer"></div>
<div class="vt-ph" id="vtPh"></div>
</div>
<p class="vt-time" id="vtTime">00:00.000 / 00:00.000</p>
<div class="vt-lock" id="vtLock">
<div class="vt-modes" role="radiogroup" aria-label="โหมดการตัด">
<label><input type="radio" name="vtMode" value="trim" checked><span>ตัดเอาช่วงที่เลือก (Trim)</span></label>
<label><input type="radio" name="vtMode" value="cut"><span>ลบส่วนกลาง / แยกส่วน (Cut)</span></label>
</div>
<div class="vt-panel" id="vtTrimCtl">
<div class="vt-line">
<label for="vtStart">เริ่มที่</label>
<input type="text" id="vtStart" inputmode="decimal" autocomplete="off" spellcheck="false" value="00:00.000">
<button type="button" class="vt-btn" data-act="setcur" data-w="start">ใช้ตำแหน่งปัจจุบัน</button>
<button type="button" class="vt-btn" data-act="nudge" data-w="start" data-v="-1" aria-label="ถอยจุดเริ่ม 1 เฟรม">◀ เฟรม</button>
<button type="button" class="vt-btn" data-act="nudge" data-w="start" data-v="1" aria-label="เดินหน้าจุดเริ่ม 1 เฟรม">เฟรม ▶</button>
</div>
<div class="vt-line">
<label for="vtEnd">จบที่</label>
<input type="text" id="vtEnd" inputmode="decimal" autocomplete="off" spellcheck="false" value="00:00.000">
<button type="button" class="vt-btn" data-act="setcur" data-w="end">ใช้ตำแหน่งปัจจุบัน</button>
<button type="button" class="vt-btn" data-act="nudge" data-w="end" data-v="-1" aria-label="ถอยจุดจบ 1 เฟรม">◀ เฟรม</button>
<button type="button" class="vt-btn" data-act="nudge" data-w="end" data-v="1" aria-label="เดินหน้าจุดจบ 1 เฟรม">เฟรม ▶</button>
</div>
<div class="vt-line">
<span>ตั้งความยาวคลิป</span>
<button type="button" class="vt-btn" data-act="preset" data-v="15">15 วิ</button>
<button type="button" class="vt-btn" data-act="preset" data-v="30">30 วิ</button>
<button type="button" class="vt-btn" data-act="preset" data-v="60">60 วิ</button>
<button type="button" class="vt-btn" data-act="preview-trim">▶ พรีวิวช่วงที่เลือก</button>
</div>
</div>
<div class="vt-panel" id="vtCutCtl" hidden>
<div class="vt-line">
<button type="button" class="vt-btn vt-add" data-act="addcut">+ เพิ่มจุดตัดที่ตำแหน่งปัจจุบัน</button>
<span class="vt-hint">กดปุ่มที่แต่ละส่วนเพื่อสลับระหว่าง เก็บไว้ / จะถูกลบ</span>
</div>
<div class="vt-seglist" id="vtSegList"></div>
</div>
<div class="vt-grid">
<label class="vt-fld"><span>ผลลัพธ์</span>
<select id="vtType">
<option value="video">วิดีโอ</option>
<option value="mp3">เสียงอย่างเดียว (MP3)</option>
</select></label>
<label class="vt-fld"><span>วิธีตัด</span>
<select id="vtQual">
<option value="copy">เร็ว ไม่เข้ารหัสใหม่ (คุณภาพเดิม)</option>
<option value="precise">แม่นยำ เข้ารหัสใหม่ (ตรงเวลา ช้ากว่า)</option>
</select></label>
<label class="vt-fld" id="vtJoinWrap" hidden><span>ผลลัพธ์ของส่วนที่เก็บ</span>
<select id="vtJoin">
<option value="merge">รวมเป็นไฟล์เดียว</option>
<option value="split">แยกเป็นหลายไฟล์</option>
</select></label>
</div>
<p class="vt-est" id="vtEst"></p>
<div class="vt-actions">
<button type="button" class="vt-btn vt-pri" id="vtGo">ตัดวิดีโอ</button>
<button type="button" class="vt-btn" id="vtReset">เปลี่ยนไฟล์</button>
</div>
</div>
<button type="button" class="vt-btn vt-stop" id="vtCancel" hidden>ยกเลิก</button>
<progress id="vtProg" max="100" value="0" hidden></progress>
<p class="vt-status" id="vtStatus" role="status" aria-live="polite"></p>
<div class="vt-out" id="vtOut"></div>
<p class="vt-note" id="vtOutNote" hidden>ไฟล์ที่ตัดแล้วอยู่ในหน้านี้เท่านั้น จะหายเมื่อปิดหรือรีเฟรชหน้า กรุณาดาวน์โหลดก่อน</p>
</div>
</div>

<style>
.vt{--vt-ac:#0f766e;--vt-ac2:#0b5d57;--vt-ln:rgba(127,127,127,.4);--vt-bg:rgba(127,127,127,.1);--vt-er:#c2410c;margin:1.2rem 0 2.2rem;color:inherit;font:inherit}
.vt *{box-sizing:border-box}
.vt [hidden]{display:none!important}
.vt-drop{border:2px dashed var(--vt-ln);border-radius:14px;padding:2.4rem 1rem;text-align:center;cursor:pointer;display:flex;flex-direction:column;gap:.45rem;align-items:center}
.vt-drop strong{font-size:1.25rem}
.vt-drop small{opacity:.75}
.vt-drop:hover,.vt-drop.vt-over{border-color:var(--vt-ac);background:var(--vt-bg)}
.vt-video{width:100%;max-height:56vh;background:#000;border-radius:10px;display:block}
.vt-meta{margin:.5rem 0 0;font-size:.92rem;opacity:.8;word-break:break-all}
.vt-note{font-size:.9rem;opacity:.8;margin:.5rem 0}
.vt-warn{opacity:1;color:var(--vt-er)}
.vt-tl{position:relative;height:64px;margin:1.1rem .5rem .5rem;border-radius:8px;background:rgba(127,127,127,.22);touch-action:none;user-select:none;-webkit-user-select:none;cursor:pointer}
.vt-tl canvas{position:absolute;inset:0;width:100%;height:100%;border-radius:8px;display:block}
.vt-layer{position:absolute;inset:0}
.vt-dim{position:absolute;top:0;bottom:0;background:rgba(0,0,0,.64)}
.vt-sel{position:absolute;top:0;bottom:0;border-top:3px solid var(--vt-ac);border-bottom:3px solid var(--vt-ac)}
.vt-h{position:absolute;top:-6px;bottom:-6px;width:16px;background:var(--vt-ac);border-radius:5px;cursor:ew-resize;display:flex;align-items:center;justify-content:center;z-index:2}
.vt-h::after{content:"";width:2px;height:22px;background:#fff;border-radius:2px}
.vt-h[data-h="start"]{margin-left:-14px}
.vt-h[data-h="end"]{margin-left:-2px}
.vt-sg{position:absolute;top:0;bottom:0;background:rgba(15,118,110,.16);color:#fff;font-size:.72rem;line-height:1;overflow:hidden}
.vt-sg span{position:absolute;left:4px;top:4px;text-shadow:0 0 3px #000,0 0 3px #000}
.vt-sg.vt-off{background:repeating-linear-gradient(45deg,rgba(0,0,0,.74) 0 6px,rgba(0,0,0,.56) 6px 12px)}
.vt-cut{position:absolute;top:-9px;bottom:-6px;width:16px;margin-left:-8px;cursor:ew-resize;z-index:2}
.vt-cut::before{content:"";position:absolute;left:7px;top:8px;bottom:0;width:2px;background:#fff;box-shadow:0 0 0 1px rgba(0,0,0,.6)}
.vt-cut::after{content:"";position:absolute;left:1px;top:0;border-left:7px solid transparent;border-right:7px solid transparent;border-top:9px solid var(--vt-ac)}
.vt-ph{position:absolute;top:-5px;bottom:-5px;width:2px;margin-left:-1px;background:#fff;box-shadow:0 0 0 1px rgba(0,0,0,.65);pointer-events:none;z-index:3}
.vt-time{margin:.2rem .5rem .8rem;font-variant-numeric:tabular-nums;font-size:.92rem;opacity:.85}
.vt-modes{display:flex;flex-wrap:wrap;gap:.5rem;margin-bottom:.8rem}
.vt-modes label{cursor:pointer}
.vt-modes input{position:absolute;opacity:0;pointer-events:none}
.vt-modes span{display:inline-block;padding:.5rem .9rem;border:1px solid var(--vt-ln);border-radius:999px}
.vt-modes input:checked+span{background:var(--vt-ac);border-color:var(--vt-ac);color:#fff;font-weight:600}
.vt-modes input:focus-visible+span{outline:2px solid var(--vt-ac);outline-offset:2px}
.vt-panel{border:1px solid var(--vt-ln);border-radius:12px;padding:.8rem;margin-bottom:.9rem;display:flex;flex-direction:column;gap:.6rem}
.vt-line{display:flex;flex-wrap:wrap;align-items:center;gap:.45rem}
.vt-line>label,.vt-line>span:first-child{min-width:5.2rem}
.vt-hint{font-size:.88rem;opacity:.75}
.vt input[type=text],.vt select{font:inherit;padding:.45rem .6rem;border:1px solid var(--vt-ln);border-radius:8px;background:transparent;color:inherit;min-width:0}
.vt input[type=text]{width:9.5rem;font-variant-numeric:tabular-nums}
.vt select option{background:Canvas;color:CanvasText}
.vt-btn{font:inherit;padding:.45rem .75rem;border:1px solid var(--vt-ln);border-radius:8px;background:transparent;color:inherit;cursor:pointer}
.vt-btn:hover{background:var(--vt-bg)}
.vt-pri{background:var(--vt-ac);border-color:var(--vt-ac);color:#fff;font-weight:600;padding:.6rem 1.4rem}
.vt-pri:hover{background:var(--vt-ac2)}
.vt-pri:disabled{opacity:.5;cursor:not-allowed}
.vt-stop{margin-top:.6rem}
.vt-btn:focus-visible,.vt-drop:focus-visible,.vt input[type=text]:focus-visible,.vt select:focus-visible{outline:2px solid var(--vt-ac);outline-offset:2px}
.vt-seglist{display:flex;flex-direction:column;gap:.4rem}
.vt-sgi{display:flex;flex-wrap:wrap;align-items:center;gap:.4rem;padding:.4rem .5rem;border-radius:8px;background:var(--vt-bg)}
.vt-sgi.vt-offi{opacity:.65}
.vt-sgt{flex:1 1 12rem;font-variant-numeric:tabular-nums;font-size:.92rem}
.vt-tg{min-width:5.6rem}
.vt-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:.8rem}
.vt-fld{display:flex;flex-direction:column;gap:.25rem}
.vt-fld>span{font-size:.9rem;opacity:.8}
.vt-est{margin:.7rem 0;font-size:.92rem;opacity:.85}
.vt-actions{display:flex;flex-wrap:wrap;gap:.6rem}
.vt progress{width:100%;height:10px;margin-top:.7rem;accent-color:var(--vt-ac)}
.vt-status{min-height:1.4em;margin:.6rem 0}
.vt-err{color:var(--vt-er);font-weight:600}
.vt-out{display:flex;flex-direction:column;gap:.5rem}
.vt-row{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;gap:.5rem;padding:.6rem .8rem;border:1px solid var(--vt-ln);border-radius:10px}
.vt-dl{font-weight:600;word-break:break-all}
.vt-busy .vt-lock{opacity:.55;pointer-events:none}
@media (max-width:520px){.vt-drop{padding:1.8rem .8rem}.vt input[type=text]{width:100%}}
</style>

<script>
(function () {
  'use strict';
  var $ = function (id) { return document.getElementById(id); };
  var root = $('vt');
  if (!root) { return; }

  var FPS = 30;
  var MIN_LEN = 0.1;
  var MAX_BYTES = 2 * 1024 * 1024 * 1024;
  var WARN_BYTES = 500 * 1024 * 1024;
  var FF_VER = '0.12.10';
  var CORE_VER = '0.12.6';
  var SOURCES = [
    { ff: 'https://cdn.jsdelivr.net/npm/@ffmpeg/ffmpeg@' + FF_VER + '/dist/umd/', core: 'https://cdn.jsdelivr.net/npm/@ffmpeg/core@' + CORE_VER + '/dist/umd/' },
    { ff: 'https://unpkg.com/@ffmpeg/ffmpeg@' + FF_VER + '/dist/umd/', core: 'https://unpkg.com/@ffmpeg/core@' + CORE_VER + '/dist/umd/' }
  ];

  var S = {
    file: null, url: null, dur: 0, mode: 'trim', start: 0, end: 0, segs: [],
    drag: null, previewEnd: null, ff: null, busy: false, cancel: false,
    outUrls: [], thumbsToken: 0, metaTimer: null, thumbsW: 0
  };
  var run = { idx: 0, total: 1 };

  var el = {
    drop: $('vtDrop'), file: $('vtFile'), msg: $('vtMsg'), work: $('vtWork'), video: $('vtVideo'),
    meta: $('vtMeta'), warn: $('vtWarn'), tl: $('vtTl'), thumbs: $('vtThumbs'), layer: $('vtLayer'),
    ph: $('vtPh'), time: $('vtTime'), trimCtl: $('vtTrimCtl'), cutCtl: $('vtCutCtl'),
    start: $('vtStart'), end: $('vtEnd'), segList: $('vtSegList'), type: $('vtType'),
    qual: $('vtQual'), join: $('vtJoin'), joinWrap: $('vtJoinWrap'), est: $('vtEst'),
    go: $('vtGo'), cancel: $('vtCancel'), reset: $('vtReset'), status: $('vtStatus'),
    prog: $('vtProg'), out: $('vtOut'), outNote: $('vtOutNote')
  };

  /* ---------- helpers ---------- */
  function clamp(v, a, b) { return Math.min(b, Math.max(a, v)); }
  function pad(n, l) { n = String(n); while (n.length < l) { n = '0' + n; } return n; }
  function fmt(t) {
    t = Math.max(0, t || 0);
    var ms = Math.round(t * 1000);
    var h = Math.floor(ms / 3600000); ms -= h * 3600000;
    var m = Math.floor(ms / 60000); ms -= m * 60000;
    var s = Math.floor(ms / 1000); ms -= s * 1000;
    return (h ? pad(h, 2) + ':' : '') + pad(m, 2) + ':' + pad(s, 2) + '.' + pad(ms, 3);
  }
  function parseT(str) {
    str = String(str || '').trim().replace(',', '.');
    if (!str) { return NaN; }
    var parts = str.split(':');
    if (parts.length > 3) { return NaN; }
    var total = 0;
    for (var i = 0; i < parts.length; i++) {
      if (!/^\d+(\.\d+)?$/.test(parts[i])) { return NaN; }
      total = total * 60 + parseFloat(parts[i]);
    }
    return total;
  }
  function fmtSize(b) {
    if (b >= 1073741824) { return (b / 1073741824).toFixed(2) + ' GB'; }
    if (b >= 1048576) { return (b / 1048576).toFixed(1) + ' MB'; }
    return Math.max(1, Math.round(b / 1024)) + ' KB';
  }
  function ts(x) { return (Math.round(x * 1000) / 1000).toFixed(3); }
  function extOf(name) {
    var m = /\.([a-z0-9]{1,5})$/i.exec(name || '');
    return m ? m[1].toLowerCase() : 'mp4';
  }
  function keepExt(ext) {
    return ['mp4', 'm4v', 'mov', 'webm', 'mkv'].indexOf(ext) >= 0 ? ext : 'mp4';
  }
  function mimeOf(ext) {
    var map = { mp4: 'video/mp4', m4v: 'video/mp4', mov: 'video/quicktime', webm: 'video/webm', mkv: 'video/x-matroska', mp3: 'audio/mpeg' };
    return map[ext] || 'application/octet-stream';
  }
  function baseOf(name) {
    var b = String(name || 'video').replace(/\.[^.]+$/, '').replace(/[\\\/:*?"\u003c\u003e|]+/g, '_');
    return b || 'video';
  }
  function pct(t) { return (S.dur ? (t / S.dur) * 100 : 0).toFixed(3) + '%'; }
  function say(text, isErr) {
    el.status.textContent = text || '';
    el.status.className = 'vt-status' + (isErr ? ' vt-err' : '');
  }
  function loadErr(text) {
    clearTimeout(S.metaTimer);
    el.msg.textContent = text;
    el.msg.hidden = false;
    freeFile();
    el.work.hidden = true;
    el.drop.hidden = false;
  }
  function setProg(v) {
    if (v === null) { el.prog.hidden = true; return; }
    el.prog.hidden = false;
    el.prog.value = clamp(v, 0, 100);
  }
  function setBusy(b) {
    S.busy = b;
    root.classList.toggle('vt-busy', b);
    el.go.disabled = b;
    el.cancel.hidden = !b;
  }

  /* ---------- state ---------- */
  function freeFile() {
    S.thumbsToken++;
    clearOut();
    if (S.url) { try { URL.revokeObjectURL(S.url); } catch (e) { /* ignore */ } }
    try { el.video.pause(); } catch (e2) { /* ignore */ }
    el.video.removeAttribute('src');
    try { el.video.load(); } catch (e3) { /* ignore */ }
    S.file = null; S.url = null; S.dur = 0; S.segs = []; S.previewEnd = null;
  }
  function clearOut() {
    S.outUrls.forEach(function (u) { try { URL.revokeObjectURL(u); } catch (e) { /* ignore */ } });
    S.outUrls = [];
    el.out.innerHTML = '';
    el.outNote.hidden = true;
  }
  function getRanges() {
    var r = [];
    if (S.mode === 'trim') {
      if (S.end - S.start >= 0.05) { r.push({ a: S.start, b: S.end }); }
      return r;
    }
    S.segs.forEach(function (s) {
      if (s.keep && s.b - s.a >= 0.05) { r.push({ a: s.a, b: s.b }); }
    });
    if (el.join.value === 'merge') {
      var m = [];
      r.forEach(function (x) {
        var last = m[m.length - 1];
        if (last && Math.abs(last.b - x.a) < 0.0005) { last.b = x.b; } else { m.push({ a: x.a, b: x.b }); }
      });
      return m;
    }
    return r;
  }

  /* ---------- rendering ---------- */
  function render() {
    if (!S.dur) { return; }
    var h = '';
    var i;
    if (S.mode === 'trim') {
      h += '<div class="vt-dim" style="left:0;width:' + pct(S.start) + '"></div>';
      h += '<div class="vt-dim" style="left:' + pct(S.end) + ';right:0"></div>';
      h += '<div class="vt-sel" style="left:' + pct(S.start) + ';width:' + (((S.end - S.start) / S.dur) * 100).toFixed(3) + '%"></div>';
      h += '<div class="vt-h" data-h="start" style="left:' + pct(S.start) + '"></div>';
      h += '<div class="vt-h" data-h="end" style="left:' + pct(S.end) + '"></div>';
    } else {
      for (i = 0; i < S.segs.length; i++) {
        var s = S.segs[i];
        h += '<div class="vt-sg' + (s.keep ? '' : ' vt-off') + '" style="left:' + pct(s.a) + ';width:' + (((s.b - s.a) / S.dur) * 100).toFixed(3) + '%"><span>' + (i + 1) + '</span></div>';
      }
      for (i = 1; i < S.segs.length; i++) {
        h += '<div class="vt-cut" data-h="cut:' + i + '" style="left:' + pct(S.segs[i].a) + '"></div>';
      }
      renderSegs();
    }
    el.layer.innerHTML = h;
    if (document.activeElement !== el.start) { el.start.value = fmt(S.start); }
    if (document.activeElement !== el.end) { el.end.value = fmt(S.end); }
    updateEst();
    updatePh();
  }
  function renderSegs() {
    var h = '';
    S.segs.forEach(function (s, i) {
      h += '<div class="vt-sgi' + (s.keep ? '' : ' vt-offi') + '">';
      h += '<button type="button" class="vt-btn vt-tg" data-act="toggle" data-i="' + i + '" aria-pressed="' + (s.keep ? 'true' : 'false') + '">' + (s.keep ? 'เก็บไว้' : 'จะถูกลบ') + '</button>';
      h += '<span class="vt-sgt">ส่วน ' + (i + 1) + ' · ' + fmt(s.a) + ' – ' + fmt(s.b) + ' (' + fmt(s.b - s.a) + ')</span>';
      h += '<button type="button" class="vt-btn" data-act="playseg" data-i="' + i + '" aria-label="เล่นส่วนที่ ' + (i + 1) + '">▶</button>';
      if (i > 0) {
        h += '<button type="button" class="vt-btn" data-act="rmcut" data-i="' + i + '" aria-label="ลบจุดตัดก่อนส่วนที่ ' + (i + 1) + '">×</button>';
      }
      h += '</div>';
    });
    el.segList.innerHTML = h;
  }
  function updatePh() {
    var t = el.video.currentTime || 0;
    el.ph.style.left = pct(t);
    el.time.textContent = fmt(t) + ' / ' + fmt(S.dur);
  }
  function updateEst() {
    if (!S.file || !S.dur) { return; }
    var rs = getRanges();
    var sum = 0;
    rs.forEach(function (r) { sum += r.b - r.a; });
    var txt = 'ความยาวที่จะได้: ' + fmt(sum);
    if (el.type.value === 'mp3') {
      txt += ' · ขนาดโดยประมาณ: ' + fmtSize(sum * 190000 / 8);
    } else if (el.qual.value === 'copy') {
      txt += ' · ขนาดโดยประมาณ: ' + fmtSize(S.file.size * sum / S.dur);
    } else {
      txt += ' · ขนาดจะขึ้นอยู่กับการเข้ารหัสใหม่';
    }
    el.est.textContent = txt;
  }
  function updateModeUI() {
    el.trimCtl.hidden = S.mode !== 'trim';
    el.cutCtl.hidden = S.mode !== 'cut';
    el.joinWrap.hidden = S.mode !== 'cut';
    el.qual.disabled = el.type.value === 'mp3';
  }

  /* ---------- editing ---------- */
  function seek(t) {
    S.previewEnd = null;
    el.video.currentTime = clamp(t, 0, S.dur);
    updatePh();
  }
  function setStart(t) { S.start = clamp(t, 0, S.end - MIN_LEN); render(); }
  function setEnd(t) { S.end = clamp(t, S.start + MIN_LEN, S.dur); render(); }
  function addCut() {
    var t = el.video.currentTime || 0;
    for (var i = 0; i < S.segs.length; i++) {
      var s = S.segs[i];
      if (t > s.a + MIN_LEN && t < s.b - MIN_LEN) {
        S.segs.splice(i + 1, 0, { a: t, b: s.b, keep: s.keep });
        s.b = t;
        render();
        return;
      }
    }
    say('วางจุดตัดห่างจากขอบหรือจุดตัดอื่นอย่างน้อย 0.1 วินาที', true);
  }
  function moveCut(i, t) {
    var L = S.segs[i - 1];
    var R = S.segs[i];
    if (!L || !R) { return; }
    t = clamp(t, L.a + MIN_LEN, R.b - MIN_LEN);
    L.b = t;
    R.a = t;
    render();
  }
  function removeCut(i) {
    var L = S.segs[i - 1];
    var R = S.segs[i];
    if (!L || !R) { return; }
    L.b = R.b;
    S.segs.splice(i, 1);
    render();
  }
  function preview(a, b) {
    S.previewEnd = b;
    el.video.currentTime = a;
    var p = el.video.play();
    if (p && p.catch) { p.catch(function () { /* ignore */ }); }
  }
  function frameStep(dir, big) {
    var d = big ? 1 : 1 / FPS;
    seek(el.video.currentTime + dir * d);
  }

  /* ---------- timeline pointer ---------- */
  function tFromX(x) {
    var r = el.tl.getBoundingClientRect();
    return clamp((x - r.left) / Math.max(1, r.width), 0, 1) * S.dur;
  }
  el.tl.addEventListener('pointerdown', function (e) {
    if (!S.dur) { return; }
    var h = e.target && e.target.getAttribute ? e.target.getAttribute('data-h') : null;
    if (h === 'start' || h === 'end') { S.drag = { type: h }; }
    else if (h && h.indexOf('cut:') === 0) { S.drag = { type: 'cut', i: parseInt(h.slice(4), 10) }; }
    else { S.drag = { type: 'scrub' }; seek(tFromX(e.clientX)); }
    try { el.tl.setPointerCapture(e.pointerId); } catch (err) { /* ignore */ }
    e.preventDefault();
  });
  el.tl.addEventListener('pointermove', function (e) {
    var d = S.drag;
    if (!d) { return; }
    var t = tFromX(e.clientX);
    if (d.type === 'scrub') { seek(t); }
    else if (d.type === 'start') { setStart(t); seek(S.start); }
    else if (d.type === 'end') { setEnd(t); seek(S.end); }
    else if (d.type === 'cut') { moveCut(d.i, t); if (S.segs[d.i]) { seek(S.segs[d.i].a); } }
  });
  function endDrag() { S.drag = null; }
  el.tl.addEventListener('pointerup', endDrag);
  el.tl.addEventListener('pointercancel', endDrag);

  /* ---------- video element ---------- */
  function tick() {
    updatePh();
    if (S.previewEnd !== null && el.video.currentTime >= S.previewEnd) {
      S.previewEnd = null;
      el.video.pause();
    }
    if (!el.video.paused && !el.video.ended) { requestAnimationFrame(tick); }
  }
  el.video.addEventListener('play', function () { requestAnimationFrame(tick); });
  el.video.addEventListener('pause', function () { S.previewEnd = null; updatePh(); });
  el.video.addEventListener('seeked', updatePh);
  el.video.addEventListener('timeupdate', updatePh);
  el.video.addEventListener('loadedmetadata', function () {
    if (!S.file || S.dur) { return; }
    var d = el.video.duration;
    if (!isFinite(d) || d <= 0) {
      loadErr('อ่านความยาววิดีโอไม่ได้ ลองใช้ไฟล์ MP4 (H.264) หรือเปิดด้วยเบราว์เซอร์รุ่นล่าสุด');
      return;
    }
    clearTimeout(S.metaTimer);
    S.dur = d; S.start = 0; S.end = d; S.segs = [{ a: 0, b: d, keep: true }];
    el.drop.hidden = true;
    el.work.hidden = false;
    el.meta.textContent = S.file.name + ' · ' + fmtSize(S.file.size) + ' · ' + fmt(d);
    if (S.file.size > WARN_BYTES) {
      el.warn.textContent = 'ไฟล์นี้ใหญ่กว่า 500 MB อาจทำให้เบราว์เซอร์ช้าหรือหน่วยความจำไม่พอ แนะนำใช้โหมด "เร็ว"';
      el.warn.hidden = false;
    } else { el.warn.hidden = true; }
    updateModeUI();
    render();
    makeThumbs();
  });
  el.video.addEventListener('error', function () {
    if (!S.file) { return; }
    if (!S.dur) {
      loadErr('เบราว์เซอร์เล่นไฟล์นี้ไม่ได้ (เช่น วิดีโอ HEVC/H.265 บางรุ่น) ลองแปลงเป็น MP4 (H.264) หรือใช้เบราว์เซอร์อื่น');
    } else {
      el.warn.textContent = 'เบราว์เซอร์เล่นวิดีโอนี้ไม่ได้ พรีวิวอาจใช้ไม่ได้ แต่ยังพิมพ์เวลาเองแล้วตัดได้';
      el.warn.hidden = false;
    }
  });

  /* ---------- thumbnails ---------- */
  function makeThumbs() {
    var token = ++S.thumbsToken;
    var cv = el.thumbs;
    var w = Math.max(240, Math.round(el.tl.clientWidth || 600));
    S.thumbsW = w;
    cv.width = w;
    cv.height = 64;
    var cx = cv.getContext('2d');
    if (!cx) { return; }
    var N = Math.max(4, Math.ceil(w / 96));
    var cw = w / N;
    var ch = cv.height;
    cx.fillStyle = 'rgba(127,127,127,.3)';
    cx.fillRect(0, 0, w, ch);
    var v = document.createElement('video');
    v.muted = true;
    v.preload = 'auto';
    v.playsInline = true;
    v.src = S.url;
    function done() {
      v.onloadeddata = null; v.onseeked = null; v.onerror = null;
      v.removeAttribute('src');
      try { v.load(); } catch (e) { /* ignore */ }
    }
    function step(k) {
      if (token !== S.thumbsToken || k >= N) { done(); return; }
      var finished = false;
      var timer = null;
      function fin() {
        if (finished) { return; }
        finished = true;
        clearTimeout(timer);
        step(k + 1);
      }
      timer = setTimeout(fin, 2500);
      v.onseeked = function () {
        try {
          var vw = v.videoWidth;
          var vh = v.videoHeight;
          if (vw && vh) {
            var sc = Math.max(cw / vw, ch / vh);
            var sw = cw / sc;
            var sh = ch / sc;
            cx.drawImage(v, (vw - sw) / 2, (vh - sh) / 2, sw, sh, k * cw, 0, cw, ch);
          }
        } catch (e) { /* ignore */ }
        fin();
      };
      v.currentTime = ((k + 0.5) / N) * S.dur;
    }
    v.onloadeddata = function () { v.onloadeddata = null; step(0); };
    v.onerror = done;
  }
  var resizeTimer = null;
  window.addEventListener('resize', function () {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function () {
      if (S.dur && Math.abs((el.tl.clientWidth || 0) - S.thumbsW) > 8) { makeThumbs(); }
    }, 300);
  });

  /* ---------- load file ---------- */
  function loadFile(f) {
    if (!f) { return; }
    if (S.busy) { return; }
    var okType = /^video\//.test(f.type || '') || /\.(mp4|mov|m4v|webm|mkv|avi|3gp)$/i.test(f.name || '');
    el.msg.hidden = true;
    if (!okType) { loadErr('ไฟล์นี้ไม่ใช่วิดีโอที่รองรับ กรุณาเลือกไฟล์ MP4, MOV, WebM หรือ MKV'); return; }
    if (f.size > MAX_BYTES) { loadErr('ไฟล์ใหญ่เกิน 2 GB เบราว์เซอร์อาจประมวลผลไม่ไหว กรุณาเลือกไฟล์ที่เล็กกว่านี้'); return; }
    freeFile();
    say('');
    setProg(null);
    S.file = f;
    S.url = URL.createObjectURL(f);
    S.mode = 'trim';
    var radios = root.querySelectorAll('input[name="vtMode"]');
    for (var i = 0; i < radios.length; i++) { radios[i].checked = radios[i].value === 'trim'; }
    el.video.src = S.url;
    el.video.load();
    clearTimeout(S.metaTimer);
    S.metaTimer = setTimeout(function () {
      if (S.file && !S.dur) { loadErr('อ่านข้อมูลวิดีโอไม่สำเร็จ ลองใช้ไฟล์ MP4 (H.264) หรือเบราว์เซอร์รุ่นล่าสุด'); }
    }, 12000);
  }
  function resetAll() {
    if (S.busy) { return; }
    freeFile();
    el.msg.hidden = true;
    el.work.hidden = true;
    el.drop.hidden = false;
    el.file.value = '';
    say('');
    setProg(null);
  }

  /* ---------- engine (ffmpeg.wasm, loaded only when needed) ---------- */
  function sniffOk(bytes, kind) {
    if (kind === 'wasm') {
      return bytes.length > 4 && bytes[0] === 0 && bytes[1] === 0x61 && bytes[2] === 0x73 && bytes[3] === 0x6d;
    }
    var head = '';
    for (var i = 0; i < Math.min(bytes.length, 32); i++) { head += String.fromCharCode(bytes[i]); }
    head = head.replace(/^\s+/, '');
    return head.length > 0 && head.charAt(0) !== String.fromCharCode(60);
  }
  async function fetchBlobURL(url, mime, kind, onProg) {
    var res = await fetch(url, { mode: 'cors', credentials: 'omit' });
    if (!res.ok) { throw new Error('HTTP ' + res.status + ' ' + url); }
    var total = parseInt(res.headers.get('content-length') || '0', 10);
    var chunks = [];
    var got = 0;
    if (res.body && res.body.getReader) {
      var rd = res.body.getReader();
      for (;;) {
        var r = await rd.read();
        if (r.done) { break; }
        chunks.push(r.value);
        got += r.value.length;
        if (onProg) { onProg(got, total); }
      }
    } else {
      var ab = new Uint8Array(await res.arrayBuffer());
      chunks.push(ab);
      got = ab.length;
    }
    var all = new Uint8Array(got);
    var off = 0;
    chunks.forEach(function (c) { all.set(c, off); off += c.length; });
    if (!sniffOk(all, kind)) { throw new Error('Unexpected content ' + url); }
    return URL.createObjectURL(new Blob([all], { type: mime }));
  }
  async function loadScriptChecked(url) {
    var res = await fetch(url, { mode: 'cors', credentials: 'omit' });
    if (!res.ok) { throw new Error('HTTP ' + res.status + ' ' + url); }
    var txt = await res.text();
    if (txt.replace(/^\s+/, '').charAt(0) === String.fromCharCode(60)) { throw new Error('Not JavaScript ' + url); }
    await new Promise(function (ok, bad) {
      var s = document.createElement('script');
      s.src = url;
      s.async = true;
      s.onload = ok;
      s.onerror = function () { bad(new Error('script error ' + url)); };
      document.head.appendChild(s);
    });
  }
  function onFFProgress(ev) {
    var p = ev && typeof ev.progress === 'number' && isFinite(ev.progress) ? clamp(ev.progress, 0, 1) : 0;
    setProg(((run.idx + p) / run.total) * 100);
  }
  async function ensureEngine() {
    if (S.ff) { return S.ff; }
    var lastErr = null;
    for (var k = 0; k < SOURCES.length; k++) {
      var src = SOURCES[k];
      try {
        say('กำลังโหลดโปรแกรมตัดต่อ (ครั้งแรกเท่านั้น แล้วเบราว์เซอร์จะแคชไว้)…');
        if (!(window.FFmpegWASM && window.FFmpegWASM.FFmpeg)) { await loadScriptChecked(src.ff + 'ffmpeg.js'); }
        if (!(window.FFmpegWASM && window.FFmpegWASM.FFmpeg)) { throw new Error('FFmpegWASM missing'); }
        var FF = window.FFmpegWASM.FFmpeg;
        var workerURL = await fetchBlobURL(src.ff + '814.ffmpeg.js', 'text/javascript', 'js');
        var coreURL = await fetchBlobURL(src.core + 'ffmpeg-core.js', 'text/javascript', 'js');
        var wasmURL = await fetchBlobURL(src.core + 'ffmpeg-core.wasm', 'application/wasm', 'wasm', function (g, t) {
          say('กำลังโหลดโปรแกรมตัดต่อ… ' + (t ? Math.round((g / t) * 100) + '%' : fmtSize(g)));
        });
        var ff = new FF();
        ff.on('progress', onFFProgress);
        await ff.load({ coreURL: coreURL, wasmURL: wasmURL, classWorkerURL: workerURL });
        S.ff = ff;
        return ff;
      } catch (err) {
        lastErr = err;
        if (S.cancel) { break; }
      }
    }
    var e2 = new Error('engine: ' + (lastErr && lastErr.message ? lastErr.message : 'load failed'));
    e2.vtEngine = true;
    throw e2;
  }

  /* ---------- export ---------- */
  function buildArgs(inp, r, out, type, precise) {
    var a = ['-y', '-ss', ts(r.a), '-i', inp, '-t', ts(r.b - r.a)];
    if (type === 'mp3') {
      a.push('-vn', '-c:a', 'libmp3lame', '-q:a', '2');
    } else if (precise) {
      a.push('-map', '0:v:0?', '-map', '0:a?', '-vf', 'scale=trunc(iw/2)*2:trunc(ih/2)*2',
        '-c:v', 'libx264', '-preset', 'ultrafast', '-crf', '23', '-pix_fmt', 'yuv420p',
        '-c:a', 'aac', '-b:a', '160k', '-movflags', '+faststart');
    } else {
      a.push('-map', '0:v?', '-map', '0:a?', '-c', 'copy', '-avoid_negative_ts', 'make_zero');
    }
    a.push(out);
    return a;
  }
  function addOut(name, blob) {
    var u = URL.createObjectURL(blob);
    S.outUrls.push(u);
    var row = document.createElement('div');
    row.className = 'vt-row';
    var a = document.createElement('a');
    a.className = 'vt-dl';
    a.href = u;
    a.download = name;
    a.textContent = 'ดาวน์โหลด ' + name;
    var sp = document.createElement('span');
    sp.textContent = fmtSize(blob.size);
    row.appendChild(a);
    row.appendChild(sp);
    el.out.appendChild(row);
    el.outNote.hidden = false;
  }
  function errText(err, precise) {
    if (err && err.vtEngine) {
      return 'โหลดโปรแกรมตัดต่อไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ต ปิดตัวบล็อกโฆษณาที่บล็อก CDN แล้วลองใหม่';
    }
    if (!precise) {
      return 'ตัดไม่สำเร็จ ลองเปลี่ยนเป็นวิธีตัด "แม่นยำ เข้ารหัสใหม่" แล้วกดตัดอีกครั้ง';
    }
    return 'ตัดไม่สำเร็จ ไฟล์อาจเสียหรือใหญ่เกินหน่วยความจำ ลองไฟล์ที่เล็กลงหรือเปลี่ยนเบราว์เซอร์';
  }
  async function doExport() {
    if (S.busy || !S.file) { return; }
    var ranges = getRanges();
    if (!ranges.length) {
      say('ยังไม่มีช่วงที่จะส่งออก กรุณาเลือกช่วงที่ต้องการเก็บไว้', true);
      return;
    }
    var type = el.type.value;
    var precise = type === 'mp3' || el.qual.value === 'precise';
    var ext = extOf(S.file.name);
    var outExt = type === 'mp3' ? 'mp3' : (precise ? 'mp4' : keepExt(ext));
    var inName = 'in.' + ext;
    var base = baseOf(S.file.name);
    var ff = null;
    var mounted = false;
    var inPath = '';
    var tmp = [];
    S.cancel = false;
    clearOut();
    setBusy(true);
    setProg(0);
    try {
      ff = await ensureEngine();
      if (S.cancel) { throw new Error('cancelled'); }
      say('กำลังเตรียมไฟล์…');
      try {
        try { await ff.createDir('/src'); } catch (e0) { /* already exists */ }
        await ff.mount('WORKERFS', { files: [new File([S.file], inName)] }, '/src');
        mounted = true;
        inPath = '/src/' + inName;
      } catch (e1) {
        mounted = false;
        await ff.writeFile(inName, new Uint8Array(await S.file.arrayBuffer()));
        tmp.push(inName);
        inPath = inName;
      }
      run.total = ranges.length;
      var parts = [];
      for (var i = 0; i < ranges.length; i++) {
        if (S.cancel) { throw new Error('cancelled'); }
        run.idx = i;
        setProg((i / ranges.length) * 100);
        say('กำลังตัดส่วนที่ ' + (i + 1) + ' จาก ' + ranges.length + '… เปิดแท็บนี้ไว้ขณะประมวลผล');
        var pn = 'p' + i + '.' + outExt;
        var code = await ff.exec(buildArgs(inPath, ranges[i], pn, type, precise));
        if (code !== 0) { throw new Error('ffmpeg exit ' + code); }
        parts.push(pn);
        tmp.push(pn);
      }
      var results = [];
      if (parts.length > 1 && el.join.value === 'merge') {
        say('กำลังรวมส่วนต่าง ๆ เป็นไฟล์เดียว…');
        var list = parts.map(function (p) { return "file '" + p + "'"; }).join('\n');
        await ff.writeFile('list.txt', new TextEncoder().encode(list));
        tmp.push('list.txt');
        var mn = 'merged.' + outExt;
        var c2 = await ff.exec(['-y', '-f', 'concat', '-safe', '0', '-i', 'list.txt', '-c', 'copy', mn]);
        if (c2 !== 0) { throw new Error('concat exit ' + c2); }
        tmp.push(mn);
        results.push({ name: base + '_trim.' + outExt, from: mn });
      } else {
        parts.forEach(function (p, idx) {
          results.push({ name: base + (parts.length > 1 ? '_part' + (idx + 1) : '_trim') + '.' + outExt, from: p });
        });
      }
      for (var j = 0; j < results.length; j++) {
        var data = await ff.readFile(results[j].from);
        addOut(results[j].name, new Blob([data], { type: mimeOf(outExt) }));
      }
      setProg(100);
      say('เสร็จแล้ว! ดาวน์โหลดไฟล์ได้ด้านล่าง');
    } catch (err) {
      if (S.cancel) { say('ยกเลิกแล้ว'); }
      else {
        say(errText(err, precise), true);
        if (window.console && console.error) { console.error(err); }
      }
    } finally {
      if (ff && S.ff === ff) {
        for (var d = 0; d < tmp.length; d++) { try { await ff.deleteFile(tmp[d]); } catch (e3) { /* ignore */ } }
        if (mounted) {
          try { await ff.unmount('/src'); } catch (e4) { /* ignore */ }
          try { await ff.deleteDir('/src'); } catch (e5) { /* ignore */ }
        }
      }
      setBusy(false);
      setProg(null);
    }
  }
  function cancelExport() {
    if (!S.busy) { return; }
    S.cancel = true;
    if (S.ff) { try { S.ff.terminate(); } catch (e) { /* ignore */ } S.ff = null; }
    say('กำลังยกเลิก…');
  }

  /* ---------- events ---------- */
  el.drop.addEventListener('click', function () { el.file.click(); });
  el.drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); el.file.click(); }
  });
  el.file.addEventListener('change', function () {
    var f = el.file.files && el.file.files[0];
    if (f) { loadFile(f); }
    el.file.value = '';
  });
  ['dragenter', 'dragover'].forEach(function (n) {
    root.addEventListener(n, function (e) { e.preventDefault(); el.drop.classList.add('vt-over'); });
  });
  ['dragleave', 'drop'].forEach(function (n) {
    root.addEventListener(n, function (e) { e.preventDefault(); el.drop.classList.remove('vt-over'); });
  });
  root.addEventListener('drop', function (e) {
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    if (f) { loadFile(f); }
  });
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData && e.clipboardData.files && e.clipboardData.files[0];
    if (f && /^video\//.test(f.type || '')) { loadFile(f); }
  });

  var radios = root.querySelectorAll('input[name="vtMode"]');
  for (var ri = 0; ri < radios.length; ri++) {
    radios[ri].addEventListener('change', function (e) {
      if (!e.target.checked) { return; }
      S.mode = e.target.value;
      updateModeUI();
      render();
    });
  }
  el.type.addEventListener('change', function () { updateModeUI(); updateEst(); });
  el.qual.addEventListener('change', updateEst);
  el.join.addEventListener('change', updateEst);
  el.start.addEventListener('change', function () {
    var t = parseT(el.start.value);
    if (isNaN(t)) { say('รูปแบบเวลาไม่ถูกต้อง ใช้เช่น 12.5 หรือ 01:23.500', true); render(); return; }
    say('');
    setStart(t);
    seek(S.start);
  });
  el.end.addEventListener('change', function () {
    var t = parseT(el.end.value);
    if (isNaN(t)) { say('รูปแบบเวลาไม่ถูกต้อง ใช้เช่น 12.5 หรือ 01:23.500', true); render(); return; }
    say('');
    setEnd(t);
    seek(S.end);
  });
  el.go.addEventListener('click', doExport);
  el.cancel.addEventListener('click', cancelExport);
  el.reset.addEventListener('click', resetAll);

  root.addEventListener('click', function (e) {
    var b = e.target && e.target.closest ? e.target.closest('[data-act]') : null;
    if (!b || !S.dur) { return; }
    var act = b.getAttribute('data-act');
    var w = b.getAttribute('data-w');
    var v = parseFloat(b.getAttribute('data-v'));
    var i = parseInt(b.getAttribute('data-i'), 10);
    if (act === 'setcur') {
      var cur = el.video.currentTime || 0;
      if (w === 'start') { setStart(cur); } else { setEnd(cur); }
    } else if (act === 'nudge') {
      if (w === 'start') { setStart(S.start + v / FPS); seek(S.start); }
      else { setEnd(S.end + v / FPS); seek(S.end); }
    } else if (act === 'preset') {
      S.end = Math.min(S.dur, S.start + v);
      render();
    } else if (act === 'preview-trim') {
      preview(S.start, S.end);
    } else if (act === 'addcut') {
      addCut();
    } else if (act === 'toggle') {
      if (S.segs[i]) { S.segs[i].keep = !S.segs[i].keep; render(); }
    } else if (act === 'playseg') {
      if (S.segs[i]) { preview(S.segs[i].a, S.segs[i].b); }
    } else if (act === 'rmcut') {
      removeCut(i);
    }
  });

  document.addEventListener('keydown', function (e) {
    if (!S.dur || el.work.hidden || e.ctrlKey || e.metaKey || e.altKey) { return; }
    var tg = e.target;
    var tag = tg && tg.tagName;
    if (tag === 'INPUT' || tag === 'SELECT' || tag === 'TEXTAREA' || tag === 'BUTTON' || (tg && tg.isContentEditable)) { return; }
    var k = e.key;
    if (k === ' ' || k === 'Spacebar') {
      if (tag === 'VIDEO') { return; }
      e.preventDefault();
      if (el.video.paused) { var p = el.video.play(); if (p && p.catch) { p.catch(function () { /* ignore */ }); } }
      else { el.video.pause(); }
    } else if (k === 'i' || k === 'I') {
      if (S.mode === 'trim') { e.preventDefault(); setStart(el.video.currentTime || 0); }
    } else if (k === 'o' || k === 'O') {
      if (S.mode === 'trim') { e.preventDefault(); setEnd(el.video.currentTime || 0); }
    } else if (k === 'c' || k === 'C') {
      if (S.mode === 'cut') { e.preventDefault(); addCut(); }
    } else if (k === 'ArrowLeft') {
      e.preventDefault(); frameStep(-1, e.shiftKey);
    } else if (k === 'ArrowRight') {
      e.preventDefault(); frameStep(1, e.shiftKey);
    }
  });

  updateModeUI();
})();
</script>

## วิธีใช้งาน

1. **เลือกวิดีโอ** คลิกกรอบด้านบน ลากไฟล์มาวาง หรือกด `Ctrl`+`V` เพื่อวางไฟล์ที่คัดลอกไว้ จากนั้นรอให้พรีวิวและไทม์ไลน์ปรากฏ
2. **เลือกโหมด** เลือก "ตัดเอาช่วงที่เลือก (Trim)" ถ้าต้องการเก็บแค่ช่วงเดียว หรือ "ลบส่วนกลาง / แยกส่วน (Cut)" ถ้าต้องการตัดบางช่วงทิ้ง
3. **โหมด Trim** ลากแฮนเดิลสีเขียวซ้ายและขวาบนไทม์ไลน์ หรือพิมพ์เวลาเริ่มและเวลาจบ (เช่น `12.5` หรือ `01:23.500`) หรือเลื่อนวิดีโอไปยังจุดที่ต้องการแล้วกด "ใช้ตำแหน่งปัจจุบัน" จากนั้นปรับให้ละเอียดด้วยปุ่ม "◀ เฟรม" และ "เฟรม ▶"
4. **ตั้งความยาวสำเร็จรูป** กด 15, 30 หรือ 60 วินาที เพื่อให้จุดจบเลื่อนตามความยาวคลิปสั้นที่นิยมใช้กับสตอรี่และรีล
5. **โหมด Cut** เลื่อนวิดีโอไปยังจุดที่ต้องการแบ่ง แล้วกด "เพิ่มจุดตัด" ซ้ำได้หลายจุด วิดีโอจะถูกแบ่งเป็นส่วน ๆ กดปุ่ม "เก็บไว้ / จะถูกลบ" เพื่อสลับสถานะของแต่ละส่วน กด ▶ เพื่อดูเฉพาะส่วนนั้น และกด × เพื่อลบจุดตัด
6. **เลือกผลลัพธ์** เลือกว่าจะได้วิดีโอหรือเสียง MP3 อย่างเดียว เลือกวิธีตัด "เร็ว" หรือ "แม่นยำ" และในโหมด Cut เลือกว่าจะรวมส่วนที่เก็บเป็นไฟล์เดียวหรือแยกเป็นหลายไฟล์
7. **กดตัดวิดีโอ** ครั้งแรกจะมีการโหลดโปรแกรมประมวลผลสักครู่ ระหว่างตัดให้เปิดแท็บนี้ไว้ ถ้าต้องการหยุดให้กด "ยกเลิก"
8. **ดาวน์โหลด** กดลิงก์ดาวน์โหลดของไฟล์ที่ได้ ไฟล์จะหายเมื่อปิดหรือรีเฟรชหน้า จึงควรดาวน์โหลดก่อน

## เลือกวิธีตัดแบบไหนดี

| | เร็ว (ไม่เข้ารหัสใหม่) | แม่นยำ (เข้ารหัสใหม่) |
|---|---|---|
| ความเร็ว | เสร็จในไม่กี่วินาที | ช้ากว่า ขึ้นกับความยาวคลิปและเครื่องของคุณ |
| คุณภาพ | เท่าต้นฉบับ | เข้ารหัสใหม่เป็น H.264 คุณภาพสูง |
| ความตรงของจุดตัด | จุดเริ่มอาจถอยไปที่คีย์เฟรมก่อนหน้า | ตรงตามเวลาที่เลือก |
| ไฟล์ที่ได้ | คงรูปแบบเดิม (MP4, MOV, WebM, MKV) | MP4 |
| เหมาะกับ | ตัดอินโทรหรือท้ายคลิปยาว ๆ | คลิปสั้นที่ต้องตัดตรงจุดเป๊ะ |

เมื่อเลือกผลลัพธ์เป็น MP3 ระบบจะเข้ารหัสเสียงใหม่เสมอ จึงไม่ต้องเลือกวิธีตัด

## คำอธิบายศัพท์

- **Trim (ทริม)** การเก็บเฉพาะช่วงที่เลือก แล้วตัดส่วนต้นและส่วนท้ายทิ้ง
- **Cut (ตัด)** การแบ่งวิดีโอเป็นหลายส่วน แล้วเลือกเก็บหรือลบแต่ละส่วน เหมาะกับการตัดช่วงกลางออก
- **จุดตัด** ตำแหน่งที่แบ่งวิดีโอออกเป็นสองส่วน ลากเพื่อปรับตำแหน่งได้
- **ส่วน (Segment)** ช่วงของวิดีโอระหว่างจุดตัดสองจุด แต่ละส่วนเลือกเก็บหรือลบได้
- **ไทม์ไลน์** แถบที่แสดงภาพตัวอย่างตลอดความยาววิดีโอ ใช้ลากเพื่อเลือกช่วงและเลื่อนดูตำแหน่ง
- **เฟรม (Frame)** ภาพนิ่งหนึ่งภาพของวิดีโอ ปุ่ม "เฟรม" เลื่อนทีละประมาณ 1/30 วินาที ซึ่งอาจต่างจากความเร็วจริงของไฟล์เล็กน้อย
- **FPS** จำนวนเฟรมต่อวินาที เช่น 30 FPS คือแสดง 30 ภาพต่อวินาที
- **คีย์เฟรม (Keyframe)** เฟรมที่เก็บภาพสมบูรณ์ในตัวเอง เฟรมอื่นอ้างอิงจากมัน การตัดแบบเร็วทำได้เฉพาะที่คีย์เฟรม จึงอาจคลาดจากเวลาที่เลือก
- **ไม่เข้ารหัสใหม่ (Stream copy)** คัดลอกข้อมูลภาพและเสียงเดิมโดยไม่แปลงซ้ำ เร็วและคุณภาพไม่ลด
- **เข้ารหัสใหม่ (Re-encode)** ถอดรหัสแล้วบีบอัดวิดีโอใหม่ ทำให้ตัดตรงเวลาได้ แต่ใช้เวลานานกว่า
- **H.264 / HEVC (H.265)** รูปแบบการบีบอัดวิดีโอ H.264 เล่นได้เกือบทุกที่ ส่วน HEVC ที่ถ่ายจาก iPhone บางรุ่นอาจเล่นในเบราว์เซอร์บางตัวไม่ได้
- **MP4 / MOV / WebM / MKV** ชนิดไฟล์ (คอนเทนเนอร์) ที่ห่อหุ้มภาพและเสียงไว้ด้วยกัน
- **MP3** ไฟล์เสียงที่เปิดได้เกือบทุกอุปกรณ์ ใช้เมื่อต้องการแยกเสียงออกจากวิดีโอ
- **WebAssembly** เทคโนโลยีที่ให้เบราว์เซอร์ประมวลผลวิดีโอบนเครื่องของคุณเอง วิดีโอจึงไม่ถูกส่งไปยังเซิร์ฟเวอร์

## ปุ่มลัด

| ปุ่ม | การทำงาน |
|---|---|
| `Space` | เล่น / หยุดวิดีโอ |
| `I` | ตั้งจุดเริ่มที่ตำแหน่งปัจจุบัน (โหมด Trim) |
| `O` | ตั้งจุดจบที่ตำแหน่งปัจจุบัน (โหมด Trim) |
| `C` | เพิ่มจุดตัดที่ตำแหน่งปัจจุบัน (โหมด Cut) |
| `←` / `→` | เลื่อนทีละ 1 เฟรม |
| `Shift` + `←` / `→` | เลื่อนทีละ 1 วินาที |

## คำถามที่พบบ่อย

### วิดีโอของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่

ไม่ วิดีโอถูกประมวลผลในเบราว์เซอร์บนอุปกรณ์ของคุณ มีเพียงโปรแกรมประมวลผล (ffmpeg แบบ WebAssembly) ที่ดาวน์โหลดจากเครือข่าย CDN ในครั้งแรก

### ทำไมจุดตัดไม่ตรงกับเวลาที่เลือก

วิธีตัดแบบ "เร็ว" ตัดได้เฉพาะที่คีย์เฟรม จุดเริ่มจึงอาจถอยไปก่อนเวลาที่เลือกเล็กน้อย หากต้องการให้ตรงเวลา ให้เปลี่ยนเป็นวิธีตัด "แม่นยำ เข้ารหัสใหม่"

### ตัดวิดีโอหลายช่วงในไฟล์เดียวได้ไหม

ได้ ใช้โหมด Cut เพิ่มจุดตัดหลายจุด เลือกว่าส่วนไหนเก็บหรือลบ แล้วเลือกรวมเป็นไฟล์เดียวหรือแยกเป็นหลายไฟล์

### ดึงเสียงจากวิดีโอเป็น MP3 ได้ไหม

ได้ เลือกผลลัพธ์เป็น "เสียงอย่างเดียว (MP3)" แล้วกดตัดวิดีโอ จะได้ไฟล์ MP3 ของช่วงที่เลือก

### วิดีโอจาก iPhone เปิดไม่ขึ้นหรือไม่มีภาพตัวอย่าง

วิดีโอที่ใช้รูปแบบ HEVC (H.265) บางรุ่นเบราว์เซอร์บางตัวเล่นไม่ได้ ลองเปิดด้วย Safari หรือ Chrome รุ่นล่าสุด หรือแปลงเป็น MP4 (H.264) ก่อน

### ไฟล์ใหญ่แค่ไหนถึงใช้ได้

แนะนำไม่เกิน 500 MB เพราะการประมวลผลใช้หน่วยความจำของเบราว์เซอร์ ไฟล์ที่เล็กกว่าจะเร็วและเสถียรกว่า

### ใช้บนมือถือได้ไหม

ได้ ใช้ได้ทั้ง Android และ iPhone แต่ควรเปิดแท็บนี้ค้างไว้ขณะตัด เพราะการสลับแอปหรือล็อกหน้าจออาจทำให้การประมวลผลหยุดชั่วคราว

### มีลายน้ำหรือต้องสมัครสมาชิกไหม

ไม่มี ใช้งานได้ฟรีทันทีโดยไม่ต้องสมัครสมาชิกและไม่มีลายน้ำ