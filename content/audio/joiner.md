---
title: รวมไฟล์เสียงออนไลน์ ฟรี
h1: รวมไฟล์เสียงออนไลน์
description: รวมไฟล์เสียงออนไลน์ฟรี ต่อ MP3, WAV, M4A เป็นไฟล์เดียว ปรับครอสเฟด ตัดช่วง ใส่เฟดเสียงได้ ไม่ต้องอัปโหลดไฟล์ ไม่มีลายน้ำ ใช้งานได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-21T10:00:00+07:00'
weight: 139
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- รวมไฟล์เสียงออนไลน์
- เสียงและวิดีโอ
- ต่อไฟล์เสียง
- รวมไฟล์ mp3
- ครอสเฟดเสียง
---

รวมไฟล์เสียงหลายไฟล์ให้เป็นไฟล์เดียวได้ในเบราว์เซอร์ รองรับ MP3, WAV, M4A, OGG, OPUS, FLAC และเสียงจากไฟล์วิดีโอ ไฟล์ของคุณไม่ถูกอัปโหลดออกจากอุปกรณ์ และไม่มีลายน้ำ

<style>
.aj{color-scheme:light dark;max-width:100%;margin:1rem 0}
.aj *{box-sizing:border-box}
.aj [hidden]{display:none!important}
.aj-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:1.5rem 1rem;text-align:center;cursor:pointer}
.aj-drop:focus-visible{outline:3px solid #2563eb;outline-offset:2px}
.aj-drop.on{border-color:#2563eb;background:rgba(37,99,235,.1)}
.aj-drop small{display:block;margin-top:.4rem;opacity:.75}
.aj button,.aj select,.aj input[type=number],.aj input[type=text]{font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.55);border-radius:8px;padding:.3rem .6rem}
.aj button{cursor:pointer}
.aj button:focus-visible,.aj select:focus-visible,.aj input:focus-visible{outline:3px solid #2563eb;outline-offset:1px}
.aj button:disabled{opacity:.5;cursor:not-allowed}
.aj .aj-main{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600;padding:.65rem 1.4rem}
.aj-bar,.aj-row{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center}
.aj-bar{margin:1rem 0 .4rem;justify-content:space-between}
#aj-list{padding:0;margin:0}
.aj-item{list-style:none;border:1px solid rgba(128,128,128,.4);border-radius:10px;padding:.6rem .7rem;margin:.5rem 0}
.aj-item[draggable=true]{cursor:grab}
.aj-n{opacity:.7;white-space:nowrap}
.aj-chk{display:flex;gap:.4rem;align-items:center;flex:1;min-width:0}
.aj-name{word-break:break-all}
.aj-dur{margin-left:auto;opacity:.8;white-space:nowrap}
.aj-wave{width:100%;height:30px;display:block;margin:.4rem 0}
.aj-ctl label{display:flex;gap:.3rem;align-items:center;font-size:.9rem}
.aj-ctl input[type=number]{width:5.5rem}
.aj-ctl .aj-sp{margin-left:auto;display:flex;gap:.3rem}
.aj-set{display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:.7rem;margin:1rem 0}
.aj-set label{display:flex;flex-direction:column;gap:.25rem;font-size:.9rem}
.aj-set .aj-inl{flex-direction:row;align-items:center;gap:.4rem}
.aj-msg{min-height:1.5em;margin:.6rem 0}
.aj-err{color:#dc2626}
.aj-res{border:1px solid rgba(128,128,128,.4);border-radius:10px;padding:.8rem;margin-top:.8rem}
.aj-res audio{width:100%;margin:.5rem 0}
.aj-res textarea{width:100%;min-height:6rem;font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.55);border-radius:8px;padding:.5rem}
.aj-dl{display:inline-block;margin-right:.6rem;padding:.5rem 1rem;border-radius:8px;background:#2563eb;color:#fff;text-decoration:none;font-weight:600}
.aj-priv{margin-top:.8rem;font-size:.9rem;opacity:.8}
</style>
<div class="aj" id="aj">
<div class="aj-drop" id="aj-drop" tabindex="0" role="button" aria-label="เพิ่มไฟล์เสียง">
<strong>วางไฟล์เสียงที่นี่</strong> หรือคลิกเพื่อเลือกไฟล์ (หรือกด Ctrl+V)
<small>MP3, WAV, M4A, OGG, OPUS, FLAC หรือไฟล์วิดีโอ (ใช้เฉพาะเสียง) · ไม่เกิน 300 MB ต่อไฟล์</small>
<input id="aj-file" type="file" accept="audio/*,video/*,.mp3,.wav,.m4a,.aac,.ogg,.opus,.flac,.mp4,.webm,.mov" multiple hidden>
</div>
<div class="aj-msg" id="aj-msg" role="status" aria-live="polite"></div>
<div id="aj-work" hidden>
<div class="aj-bar">
<div class="aj-row"><label>เรียงลำดับ <select id="aj-sort"><option value="">เลือก…</option><option value="add">ตามลำดับที่เพิ่ม</option><option value="rev">ย้อนกลับ</option><option value="az">ชื่อ A–Z</option><option value="za">ชื่อ Z–A</option></select></label></div>
<div class="aj-row"><span id="aj-sum"></span><button type="button" id="aj-clear">ล้างทั้งหมด</button></div>
</div>
<ol id="aj-list"></ol>
<div class="aj-set">
<label>การเชื่อมคลิป<select id="aj-mode"><option value="direct">ต่อตรง</option><option value="gap">เว้นช่วงเงียบ</option><option value="xf">ครอสเฟด</option></select></label>
<label>ความยาวช่วง (วินาที)<input type="number" id="aj-sec" min="0" max="10" step="0.5" value="1" disabled></label>
<label>เฟดอิน (วินาที)<input type="number" id="aj-fi" min="0" max="30" step="0.5" value="0"></label>
<label>เฟดเอาต์ (วินาที)<input type="number" id="aj-fo" min="0" max="30" step="0.5" value="0"></label>
<label>รูปแบบไฟล์<select id="aj-fmt"><option value="mp3">MP3</option><option value="wav">WAV (ไม่สูญเสียคุณภาพ)</option></select></label>
<label id="aj-kbw">บิตเรต MP3<select id="aj-kb"><option>96</option><option>128</option><option selected>192</option><option>256</option><option>320</option></select></label>
<label>ซามเปิลเรต<select id="aj-sr"><option value="44100">44.1 kHz</option><option value="48000">48 kHz</option><option value="22050">22.05 kHz</option></select></label>
<label>ช่องเสียง<select id="aj-ch"><option value="2">สเตอริโอ</option><option value="1">โมโน</option></select></label>
<label class="aj-inl"><input type="checkbox" id="aj-norm"> ปรับระดับเสียงให้พอดี</label>
<label id="aj-tw">ชื่อเพลง (MP3)<input type="text" id="aj-title" maxlength="80"></label>
<label id="aj-aw">ศิลปิน (MP3)<input type="text" id="aj-artist" maxlength="80"></label>
</div>
<button type="button" class="aj-main" id="aj-go">รวมไฟล์เสียง</button>
</div>
<div class="aj-res" id="aj-res" hidden>
<audio id="aj-audio" controls></audio>
<div><a class="aj-dl" id="aj-dl" href="#">ดาวน์โหลด</a><button type="button" id="aj-copy">คัดลอกรายการเวลา</button></div>
<p>รายการเวลาของแต่ละคลิป (ใช้เป็นบทหรือ chapters ได้)</p>
<textarea id="aj-ts" readonly></textarea>
</div>
<p class="aj-priv">🔒 ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกอัปโหลด ฟรี ไม่ต้องสมัคร ไม่มีลายน้ำ</p>
</div>
<script>
(function () {
  'use strict';
  var $ = function (i) { return document.getElementById(i); };
  if (!$('aj')) return;
  var clips = [], uid = 0, AC = null, prev = null, url = null, dragI = -1, busy = false;
  function esc(s) {
    return String(s).replace(/[&<>"']/g, function (c) {
      return '&#' + c.charCodeAt(0) + ';';
    });
  }
  function p2(n) { return n < 10 ? '0' + n : '' + n; }
  function tm(s) {
    s = Math.max(0, Math.round(s));
    var h = Math.floor(s / 3600), m = Math.floor((s % 3600) / 60);
    return (h ? h + ':' : '') + p2(m) + ':' + p2(s % 60);
  }
  function say(t, err) {
    var e = $('aj-msg');
    e.textContent = t || '';
    e.className = 'aj-msg' + (err ? ' aj-err' : '');
  }
  function ctx() {
    if (!AC) {
      var C = window.AudioContext || window.webkitAudioContext;
      if (!C) throw new Error('unsupported');
      AC = new C();
    }
    if (AC.state === 'suspended') AC.resume();
    return AC;
  }
  function peaks(b) {
    var n = 240, d = b.getChannelData(0), st = Math.max(1, Math.floor(d.length / n)), o = [];
    for (var i = 0; i < n; i++) {
      var m = 0, a = i * st, z = Math.min(d.length, a + st), k = Math.max(1, st >> 6);
      for (var j = a; j < z; j += k) { var v = Math.abs(d[j]); if (v > m) m = v; }
      o.push(m);
    }
    return o;
  }
  function draw(cv, c) {
    var w = cv.width = (cv.clientWidth * 2) || 480, h = cv.height = 60, g = cv.getContext('2d'), n = c.pk.length, bw = w / n;
    g.clearRect(0, 0, w, h);
    for (var i = 0; i < n; i++) {
      var t = (i / n) * c.dur, on = t >= c.s && t <= c.e, bh = Math.max(2, c.pk[i] * h);
      g.fillStyle = on ? '#2563eb' : 'rgba(128,128,128,.4)';
      g.fillRect(i * bw, (h - bh) / 2, Math.max(1, bw - 1), bh);
    }
  }
  function btn(a, label, title) {
    return '<button type="button" data-a="' + a + '" title="' + title + '" aria-label="' + title + '">' + label + '</button>';
  }
  function sums() {
    var sel = clips.filter(function (c) { return c.on; }), t = 0;
    sel.forEach(function (c) { t += c.e - c.s; });
    $('aj-sum').textContent = 'เลือก ' + sel.length + '/' + clips.length + ' คลิป · ' + tm(t);
  }
  function render() {
    var ol = $('aj-list');
    $('aj-work').hidden = !clips.length;
    ol.innerHTML = clips.map(function (c, i) {
      return '<li class="aj-item" draggable="true" data-i="' + i + '">' +
        '<div class="aj-row"><span class="aj-n" title="ลากเพื่อเรียงลำดับ">☰ ' + (i + 1) + '</span>' +
        '<label class="aj-chk"><input type="checkbox" data-a="on"' + (c.on ? ' checked' : '') + '> <span class="aj-name">' + esc(c.name) + '</span></label>' +
        '<span class="aj-dur">' + tm(c.e - c.s) + '</span></div>' +
        '<canvas class="aj-wave"></canvas>' +
        '<div class="aj-row aj-ctl">' +
        '<label>เริ่ม (วิ) <input type="number" data-a="s" min="0" step="0.1" value="' + c.s.toFixed(1) + '"></label>' +
        '<label>จบ (วิ) <input type="number" data-a="e" min="0" step="0.1" value="' + c.e.toFixed(1) + '"></label>' +
        btn('play', '▶ ฟัง', 'ฟังตัวอย่างคลิป') +
        '<span class="aj-sp">' + btn('up', '▲', 'เลื่อนขึ้น') + btn('down', '▼', 'เลื่อนลง') + btn('dup', '⧉', 'ทำซ้ำคลิป') + btn('del', '✕', 'ลบคลิป') + '</span>' +
        '</div></li>';
    }).join('');
    var cvs = ol.querySelectorAll('canvas');
    for (var i = 0; i < cvs.length; i++) draw(cvs[i], clips[i]);
    sums();
  }
  function peekFiles(list) {
    return Array.prototype.slice.call(list).filter(function (f) {
      return /^(audio|video)\//.test(f.type) || /\.(mp3|wav|m4a|aac|ogg|opus|flac|mp4|webm|mov)$/i.test(f.name);
    });
  }
  async function addFiles(list) {
    var files = peekFiles(list), bad = [];
    if (!files.length) { say('ไม่พบไฟล์เสียงหรือวิดีโอที่รองรับ', 1); return; }
    var ac;
    try { ac = ctx(); } catch (x) { say('เบราว์เซอร์นี้ไม่รองรับการประมวลผลเสียง ลองใช้ Chrome, Edge, Firefox หรือ Safari รุ่นใหม่', 1); return; }
    for (var i = 0; i < files.length; i++) {
      var f = files[i];
      say('กำลังอ่านไฟล์ ' + (i + 1) + '/' + files.length + ': ' + f.name);
      if (f.size > 314572800) { bad.push(f.name); continue; }
      try {
        var ab = await f.arrayBuffer();
        var buf = await new Promise(function (ok, no) { ac.decodeAudioData(ab, ok, no); });
        clips.push({ id: ++uid, name: f.name, buf: buf, dur: buf.duration, s: 0, e: buf.duration, on: true, pk: peaks(buf) });
      } catch (x) { bad.push(f.name); }
    }
    render();
    say(bad.length ? 'อ่านไฟล์เหล่านี้ไม่ได้ (ไฟล์ใหญ่เกินไปหรือเบราว์เซอร์ไม่รองรับรูปแบบ): ' + bad.join(', ') : '', bad.length > 0);
  }
  function stopPrev() { if (prev) { try { prev.stop(); } catch (x) {} prev = null; } }
  function preview(i) {
    var c = clips[i], was = prev && prev._i === i;
    stopPrev();
    if (was) return;
    var ac = ctx(), s = ac.createBufferSource();
    s.buffer = c.buf; s.connect(ac.destination); s._i = i;
    s.onended = function () { if (prev === s) prev = null; };
    s.start(0, c.s, c.e - c.s);
    prev = s;
  }
  function wav(L, R, g, sr) {
    var ch = R ? 2 : 1, n = L.length, buf = new ArrayBuffer(44 + n * ch * 2), v = new DataView(buf);
    function w(o, s) { for (var i = 0; i < s.length; i++) v.setUint8(o + i, s.charCodeAt(i)); }
    w(0, 'RIFF'); v.setUint32(4, 36 + n * ch * 2, true); w(8, 'WAVEfmt ');
    v.setUint32(16, 16, true); v.setUint16(20, 1, true); v.setUint16(22, ch, true);
    v.setUint32(24, sr, true); v.setUint32(28, sr * ch * 2, true); v.setUint16(32, ch * 2, true); v.setUint16(34, 16, true);
    w(36, 'data'); v.setUint32(40, n * ch * 2, true);
    var o = 44;
    for (var i = 0; i < n; i++) {
      for (var c = 0; c < ch; c++) {
        var s = (c ? R : L)[i] * g;
        s = s < -1 ? -1 : s > 1 ? 1 : s;
        v.setInt16(o, s < 0 ? s * 32768 : s * 32767, true); o += 2;
      }
    }
    return new Blob([buf], { type: 'audio/wav' });
  }
  function i16(a, g, from, to) {
    var o = new Int16Array(to - from);
    for (var i = from; i < to; i++) {
      var v = a[i] * g;
      v = v < -1 ? -1 : v > 1 ? 1 : v;
      o[i - from] = v < 0 ? v * 32768 : v * 32767;
    }
    return o;
  }
  function id3(t, a) {
    var fr = [];
    function add(id, s) {
      if (!s) return;
      var u = [255, 254];
      for (var i = 0; i < s.length; i++) { var c = s.charCodeAt(i); u.push(c & 255, c >> 8); }
      var sz = u.length + 1;
      fr.push(new Uint8Array([id.charCodeAt(0), id.charCodeAt(1), id.charCodeAt(2), id.charCodeAt(3), (sz >>> 24) & 255, (sz >>> 16) & 255, (sz >>> 8) & 255, sz & 255, 0, 0, 1].concat(u)));
    }
    add('TIT2', t); add('TPE1', a);
    if (!fr.length) return null;
    var n = 0;
    fr.forEach(function (f) { n += f.length; });
    return new Blob([new Uint8Array([73, 68, 51, 3, 0, 0, (n >> 21) & 127, (n >> 14) & 127, (n >> 7) & 127, n & 127])].concat(fr));
  }
  async function loadLame() {
    if (window.lamejs) return true;
    var u = ['https://cdn.jsdelivr.net/npm/lamejs@1.2.1/lame.min.js', 'https://cdnjs.cloudflare.com/ajax/libs/lamejs/1.2.1/lame.min.js'];
    for (var i = 0; i < u.length; i++) {
      var ok = await new Promise(function (r) {
        var s = document.createElement('script');
        s.src = u[i];
        s.onload = function () { r(true); };
        s.onerror = function () { s.remove(); r(false); };
        document.head.appendChild(s);
      });
      if (ok && window.lamejs) return true;
    }
    return false;
  }
  async function mp3(L, R, g, sr, kb, title, artist) {
    if (sr < 32000 && kb > 160) kb = 160;
    var enc = new window.lamejs.Mp3Encoder(R ? 2 : 1, sr, kb), parts = [], B = 1152 * 20, n = L.length;
    for (var i = 0; i < n; i += B) {
      var e = Math.min(n, i + B);
      var d = R ? enc.encodeBuffer(i16(L, g, i, e), i16(R, g, i, e)) : enc.encodeBuffer(i16(L, g, i, e));
      if (d.length) parts.push(d);
      if ((i / B) % 25 === 0) {
        say('กำลังเข้ารหัส MP3 ' + Math.round((i / n) * 100) + '%');
        await new Promise(function (r) { setTimeout(r, 0); });
      }
    }
    var f = enc.flush();
    if (f.length) parts.push(f);
    var tag = id3(title, artist);
    if (tag) parts.unshift(tag);
    return new Blob(parts, { type: 'audio/mpeg' });
  }
  async function merge() {
    if (busy) return;
    var sel = clips.filter(function (c) { return c.on; });
    if (sel.length < 2) { say('เลือกอย่างน้อย 2 คลิปเพื่อรวม', 1); return; }
    stopPrev();
    var sr = +$('aj-sr').value, ch = +$('aj-ch').value, mode = $('aj-mode').value;
    var sec = Math.max(0, parseFloat($('aj-sec').value) || 0);
    var fi = Math.max(0, parseFloat($('aj-fi').value) || 0), fo = Math.max(0, parseFloat($('aj-fo').value) || 0);
    var pos = [], t = 0, i;
    for (i = 0; i < sel.length; i++) {
      var d = sel[i].e - sel[i].s, xi = 0;
      if (i > 0) {
        if (mode === 'gap') t += sec;
        else if (mode === 'xf') { xi = Math.min(sec, d / 2, pos[i - 1].d / 2); t -= xi; }
      }
      pos.push({ t: t, d: d, xi: xi, xo: 0 });
      t += d;
    }
    for (i = 0; i < pos.length - 1; i++) pos[i].xo = pos[i + 1].xi;
    var total = t;
    if (total > 3600) { say('รวมได้ไม่เกิน 60 นาทีต่อครั้ง กรุณาลดจำนวนหรือความยาวคลิป', 1); return; }
    if (total <= 0) { say('ความยาวรวมเป็นศูนย์ ตรวจสอบเวลาเริ่มและจบของคลิป', 1); return; }
    fi = Math.min(fi, total / 2); fo = Math.min(fo, total / 2);
    var fmt = $('aj-fmt').value, wl = null;
    busy = true; $('aj-go').disabled = true; $('aj-res').hidden = true;
    try {
      try { if (navigator.wakeLock) wl = await navigator.wakeLock.request('screen'); } catch (x) {}
      say('กำลังรวมไฟล์เสียง… กรุณาเปิดแท็บนี้ไว้');
      await new Promise(function (r) { setTimeout(r, 30); });
      var OC = window.OfflineAudioContext || window.webkitOfflineAudioContext;
      var oc = new OC(ch, Math.ceil(total * sr), sr), master = oc.createGain();
      master.connect(oc.destination);
      if (fi > 0) { master.gain.setValueAtTime(0, 0); master.gain.linearRampToValueAtTime(1, fi); }
      if (fo > 0) { master.gain.setValueAtTime(1, total - fo); master.gain.linearRampToValueAtTime(0, total); }
      sel.forEach(function (c, k) {
        var p = pos[k], s = oc.createBufferSource(), g = oc.createGain();
        s.buffer = c.buf; s.connect(g); g.connect(master);
        if (p.xi > 0) { g.gain.setValueAtTime(0, p.t); g.gain.linearRampToValueAtTime(1, p.t + p.xi); }
        if (p.xo > 0) { g.gain.setValueAtTime(1, p.t + p.d - p.xo); g.gain.linearRampToValueAtTime(0, p.t + p.d); }
        s.start(p.t, c.s, p.d);
      });
      var out = await oc.startRendering();
      var L = out.getChannelData(0), R = ch > 1 ? out.getChannelData(1) : null, gain = 1;
      if ($('aj-norm').checked) {
        var pk = 0;
        for (var k = 0; k < L.length; k++) {
          var a = Math.abs(L[k]); if (a > pk) pk = a;
          if (R) { a = Math.abs(R[k]); if (a > pk) pk = a; }
        }
        if (pk > 0) gain = 0.97 / pk;
      }
      var blob, ext = 'wav', note = '';
      if (fmt === 'mp3') {
        say('กำลังเตรียมตัวเข้ารหัส MP3…');
        if (await loadLame()) { blob = await mp3(L, R, gain, sr, +$('aj-kb').value, $('aj-title').value, $('aj-artist').value); ext = 'mp3'; }
        else note = 'โหลดตัวเข้ารหัส MP3 ไม่ได้ (ตรวจสอบอินเทอร์เน็ต) จึงบันทึกเป็น WAV แทน';
      }
      if (!blob) blob = wav(L, R, gain, sr);
      if (url) URL.revokeObjectURL(url);
      url = URL.createObjectURL(blob);
      $('aj-audio').src = url;
      var dl = $('aj-dl');
      dl.href = url; dl.download = 'merged-audio.' + ext;
      dl.textContent = 'ดาวน์โหลด ' + ext.toUpperCase() + ' (' + (blob.size / 1048576).toFixed(1) + ' MB)';
      $('aj-ts').value = sel.map(function (c, k) { return tm(pos[k].t) + ' ' + c.name.replace(/\.[^.]+$/, ''); }).join('\n');
      $('aj-res').hidden = false;
      say(note || 'รวมไฟล์เสร็จแล้ว ความยาว ' + tm(total), !!note);
    } catch (x) {
      say('รวมไฟล์ไม่สำเร็จ อาจใช้หน่วยความจำมากเกินไป ลองลดจำนวนคลิป ลดซามเปิลเรต หรือเลือกโมโน', 1);
    } finally {
      if (wl) { try { wl.release(); } catch (x) {} }
      busy = false; $('aj-go').disabled = false;
    }
  }
  var drop = $('aj-drop'), list = $('aj-list'), fileIn = $('aj-file');
  drop.addEventListener('click', function () { fileIn.click(); });
  drop.addEventListener('keydown', function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileIn.click(); } });
  fileIn.addEventListener('change', function () { addFiles(fileIn.files); fileIn.value = ''; });
  drop.addEventListener('dragover', function (e) { e.preventDefault(); drop.classList.add('on'); });
  drop.addEventListener('dragleave', function () { drop.classList.remove('on'); });
  drop.addEventListener('drop', function (e) {
    e.preventDefault(); drop.classList.remove('on');
    if (e.dataTransfer && e.dataTransfer.files.length) addFiles(e.dataTransfer.files);
  });
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData && e.clipboardData.files;
    if (f && f.length) addFiles(f);
  });
  list.addEventListener('click', function (e) {
    var b = e.target.closest ? e.target.closest('button') : null, li = e.target.closest ? e.target.closest('li') : null;
    if (!b || !li) return;
    var a = b.getAttribute('data-a'), i = +li.getAttribute('data-i');
    if (a === 'play') { preview(i); return; }
    if (a === 'up' && i > 0) clips.splice(i - 1, 0, clips.splice(i, 1)[0]);
    else if (a === 'down' && i < clips.length - 1) clips.splice(i + 1, 0, clips.splice(i, 1)[0]);
    else if (a === 'dup') clips.splice(i + 1, 0, Object.assign({}, clips[i], { id: ++uid }));
    else if (a === 'del') { stopPrev(); clips.splice(i, 1); }
    render();
  });
  list.addEventListener('change', function (e) {
    var li = e.target.closest ? e.target.closest('li') : null, a = e.target.getAttribute('data-a');
    if (!li || !a) return;
    var c = clips[+li.getAttribute('data-i')], v = parseFloat(e.target.value) || 0;
    if (a === 'on') { c.on = e.target.checked; sums(); return; }
    if (a === 's') c.s = Math.max(0, Math.min(v, c.e - 0.1));
    if (a === 'e') c.e = Math.max(c.s + 0.1, Math.min(v, c.dur));
    render();
  });
  list.addEventListener('dragstart', function (e) {
    var li = e.target.closest ? e.target.closest('li') : null;
    if (!li) return;
    dragI = +li.getAttribute('data-i');
    e.dataTransfer.effectAllowed = 'move';
    e.dataTransfer.setData('text/plain', String(dragI));
  });
  list.addEventListener('dragover', function (e) { if (dragI >= 0) e.preventDefault(); });
  list.addEventListener('drop', function (e) {
    if (dragI < 0) return;
    e.preventDefault();
    var li = e.target.closest ? e.target.closest('li') : null;
    if (li) {
      var j = +li.getAttribute('data-i');
      if (j !== dragI) clips.splice(j, 0, clips.splice(dragI, 1)[0]);
    }
    dragI = -1; render();
  });
  list.addEventListener('dragend', function () { dragI = -1; });
  $('aj-sort').addEventListener('change', function () {
    var v = this.value;
    if (v === 'rev') clips.reverse();
    else if (v === 'az' || v === 'za') clips.sort(function (a, b) { var r = a.name.localeCompare(b.name, 'th', { numeric: true }); return v === 'az' ? r : -r; });
    else if (v === 'add') clips.sort(function (a, b) { return a.id - b.id; });
    this.value = '';
    render();
  });
  $('aj-clear').addEventListener('click', function () { stopPrev(); clips = []; $('aj-res').hidden = true; render(); say(''); });
  $('aj-mode').addEventListener('change', function () { $('aj-sec').disabled = this.value === 'direct'; });
  $('aj-fmt').addEventListener('change', function () {
    var m = this.value === 'mp3';
    $('aj-kbw').hidden = !m; $('aj-tw').hidden = !m; $('aj-aw').hidden = !m;
  });
  $('aj-go').addEventListener('click', merge);
  $('aj-copy').addEventListener('click', function () {
    var t = $('aj-ts');
    t.select();
    try { if (navigator.clipboard) navigator.clipboard.writeText(t.value); else document.execCommand('copy'); say('คัดลอกรายการเวลาแล้ว'); } catch (x) { say('คัดลอกไม่ได้ ให้เลือกข้อความแล้วคัดลอกเอง', 1); }
  });
})();
</script>

## วิธีใช้งานรวมไฟล์เสียง

1. **เพิ่มไฟล์เสียง** ลากไฟล์มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้ เพิ่มได้หลายไฟล์ ไฟล์ละไม่เกิน 300 MB และผสมต่างรูปแบบได้
2. **จัดลำดับคลิป** ลากแถวเพื่อสลับตำแหน่ง กดปุ่ม ▲ ▼ ทีละขั้น หรือใช้เมนู "เรียงลำดับ" เพื่อเรียงตามชื่อหรือย้อนลำดับ ติ๊กออกที่คลิปที่ไม่ต้องการรวม
3. **ตัดช่วงที่ไม่ต้องการ** ดู waveform ของแต่ละคลิป ใส่เวลาเริ่มและจบเป็นวินาที แล้วกด "ฟัง" เพื่อตรวจสอบ ถ้าต้องการใช้คลิปเดิมซ้ำให้กดปุ่มทำซ้ำ
4. **ตั้งค่าการเชื่อมคลิป** เลือกต่อตรง เว้นช่วงเงียบ หรือครอสเฟด แล้วกำหนดความยาวช่วง จากนั้นใส่เฟดอินและเฟดเอาต์ของไฟล์ที่รวมแล้ว และเปิด "ปรับระดับเสียงให้พอดี" หากคลิปมีระดับเสียงต่างกัน
5. **เลือกรูปแบบไฟล์** เลือก MP3 เพื่อให้ไฟล์เล็ก พร้อมบิตเรตและชื่อเพลงหรือศิลปิน หรือเลือก WAV เมื่อต้องการคุณภาพเต็ม แล้วเลือกซามเปิลเรตกับสเตอริโอหรือโมโน
6. **กด "รวมไฟล์เสียง"** รอจนเสร็จโดยเปิดแท็บไว้ ฟังตัวอย่าง ดาวน์โหลดไฟล์ และคัดลอกรายการเวลาของแต่ละคลิปไปใช้ทำสารบัญหรือบทได้

## อธิบายคำศัพท์

- **ต่อตรง** เล่นคลิปต่อกันทันที ไม่มีช่องว่างและไม่มีการซ้อนกัน
- **เว้นช่วงเงียบ** แทรกความเงียบระหว่างคลิป เหมาะกับการรวมเสียงพูดหรือบทเรียนที่ต้องการจังหวะหายใจ
- **ครอสเฟด (Crossfade)** ท้ายคลิปแรกค่อย ๆ เบาลงขณะที่คลิปถัดไปค่อย ๆ ดังขึ้นในช่วงเวลาเดียวกัน ทำให้รอยต่อนุ่มนวล ความยาวรวมจึงสั้นลงเท่ากับช่วงที่ซ้อนกัน
- **เฟดอิน / เฟดเอาต์ (Fade in / Fade out)** ค่อย ๆ เพิ่มเสียงตอนเริ่มต้นหรือค่อย ๆ ลดเสียงตอนจบของไฟล์ที่รวมแล้ว เพื่อไม่ให้เสียงเริ่มหรือจบกะทันหัน
- **ปรับระดับเสียงให้พอดี (Normalize)** ขยายเสียงทั้งไฟล์ให้จุดที่ดังที่สุดใกล้ระดับสูงสุดโดยไม่ให้แตก ไม่ได้ปรับความดังของแต่ละคลิปให้เท่ากัน
- **Waveform (รูปคลื่นเสียง)** กราฟที่แสดงความดังของเสียงตามเวลา ช่วยให้มองเห็นส่วนเงียบและส่วนดัง เพื่อกำหนดจุดตัดได้ง่าย ส่วนที่ถูกตัดออกจะแสดงเป็นสีจาง
- **ทริม (Trim)** ตัดเฉพาะช่วงเริ่มต้นหรือท้ายของคลิป โดยกำหนดเวลาเริ่มและจบ ไม่กระทบไฟล์ต้นฉบับ
- **MP3** รูปแบบที่บีบอัดแบบสูญเสียข้อมูลบางส่วน ไฟล์เล็ก เล่นได้เกือบทุกอุปกรณ์
- **WAV** รูปแบบที่ไม่บีบอัด คุณภาพเต็ม ไฟล์ใหญ่ เหมาะกับการนำไปตัดต่อต่อ
- **Lossy / Lossless** Lossy คือบีบอัดโดยตัดรายละเอียดบางส่วนทิ้ง (เช่น MP3) ส่วน Lossless คือคงข้อมูลเสียงไว้ครบ (เช่น WAV)
- **บิตเรต (Bitrate, kbps)** ปริมาณข้อมูลต่อวินาทีของไฟล์ MP3 ค่าสูงให้คุณภาพดีขึ้นแต่ไฟล์ใหญ่ขึ้น 128 ถึง 192 kbps เพียงพอสำหรับการฟังทั่วไป
- **ซามเปิลเรต (Sample rate, kHz)** จำนวนครั้งที่เก็บตัวอย่างเสียงต่อวินาที 44.1 kHz เป็นมาตรฐานของเพลง ส่วน 48 kHz นิยมใช้กับวิดีโอ
- **สเตอริโอ / โมโน** สเตอริโอมีเสียงซ้ายและขวา โมโนมีช่องเดียว ไฟล์เล็กกว่า เหมาะกับเสียงพูด
- **ID3** ข้อมูลประกอบในไฟล์ MP3 เช่น ชื่อเพลงและศิลปิน ที่เครื่องเล่นแสดงบนหน้าจอ
- **รายการเวลา (Timestamp)** เวลาเริ่มต้นของแต่ละคลิปในไฟล์ที่รวมแล้ว ใช้ทำสารบัญหรือบทของพอดแคสต์และวิดีโอ

## คำถามที่พบบ่อย

**ไฟล์ของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์ไหม**
ไม่ การอ่าน ตัด และรวมไฟล์ทำในเบราว์เซอร์ของคุณทั้งหมด ไฟล์จึงไม่ออกจากอุปกรณ์ ยกเว้นการโหลดตัวเข้ารหัส MP3 ซึ่งดาวน์โหลดจากอินเทอร์เน็ตเมื่อเลือกส่งออกเป็น MP3 ครั้งแรก

**รวมไฟล์ได้ยาวเท่าไร**
รวมได้ไม่เกิน 60 นาทีต่อครั้ง และยังขึ้นกับหน่วยความจำของอุปกรณ์ หากรวมไม่สำเร็จ ให้ลองลดจำนวนคลิป เลือกโมโน หรือลดซามเปิลเรต

**รวมไฟล์ต่างรูปแบบกันได้ไหม**
ได้ เช่น MP3 กับ M4A และ WAV ระบบจะปรับซามเปิลเรตและจำนวนช่องให้ตรงกับที่เลือกก่อนรวม

**ใช้เสียงจากไฟล์วิดีโอได้ไหม**
ได้ หากเบราว์เซอร์ถอดรหัสเสียงของไฟล์นั้นได้ หากเปิดไฟล์ไม่ได้ ให้แปลงเป็น MP3 หรือ WAV ก่อน

**ทำไมได้ไฟล์ WAV ทั้งที่เลือก MP3**
ตัวเข้ารหัส MP3 โหลดไม่สำเร็จ เช่น อินเทอร์เน็ตหลุดหรือถูกบล็อก ระบบจึงบันทึกเป็น WAV ให้แทน ตรวจสอบการเชื่อมต่อแล้วลองรวมอีกครั้ง

**ใช้บนมือถือได้ไหม**
ได้ แต่ควรเปิดแท็บค้างไว้ขณะประมวลผล และไม่ควรล็อกหน้าจอหรือสลับแอป