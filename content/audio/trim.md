---
title: ตัดเสียงออนไลน์ ฟรี
h1: ตัดเสียงออนไลน์
description: ตัดเสียงออนไลน์ฟรี ตัดต่อ MP3 WAV M4A ในเบราว์เซอร์ ดูคลื่นเสียง ตั้งเวลาแม่นยำ เฟดเข้า-ออก ทำเสียงเรียกเข้า ไม่ต้องอัปโหลด ไม่ต้องสมัคร ใช้ได้ทุกอุปกรณ์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-21T09:00:00+07:00'
weight: 140
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- ตัดเสียงออนไลน์
- เสียงและวิดีโอ
---

<style>
.at-wrap{max-width:100%;margin:1rem 0;font:inherit;color:inherit}
.at-wrap *{box-sizing:border-box}
.at-wrap [hidden]{display:none!important}
.at-drop{border:2px dashed rgba(127,127,127,.55);border-radius:14px;padding:2rem 1rem;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
.at-drop:hover,.at-drop:focus-visible,.at-drop.at-over{background:rgba(37,99,235,.08);border-color:#2563eb;outline:none}
.at-drop-ico{font-size:2.2rem;line-height:1.2}
.at-drop-t{font-weight:600;margin:.4rem 0 .2rem}
.at-drop-s{font-size:.85rem;opacity:.7}
.at-msg{margin:.6rem 0;font-size:.9rem;min-height:1.3em}
.at-msg.at-err{color:#dc2626}
.at-card{border:1px solid rgba(127,127,127,.35);border-radius:12px;padding:.9rem;margin:.8rem 0}
.at-card h3{font-size:1rem;margin:0 0 .5rem}
.at-file{display:flex;flex-wrap:wrap;gap:.5rem;justify-content:space-between;align-items:center;font-size:.9rem;margin-bottom:.6rem}
.at-file b{word-break:break-all}
.at-cwrap{border:1px solid rgba(127,127,127,.35);border-radius:10px;overflow:hidden;background:rgba(127,127,127,.06)}
.at-canvas{display:block;width:100%;height:170px;cursor:crosshair;touch-action:none;outline:none}
.at-canvas:focus-visible{box-shadow:inset 0 0 0 2px #2563eb}
.at-row{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.6rem 0}
.at-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(250px,1fr));gap:.9rem}
.at-lbl{display:block;font-size:.85rem;font-weight:600;margin-bottom:.25rem}
.at-btn{appearance:none;-webkit-appearance:none;border:1px solid rgba(127,127,127,.5);background:transparent;color:inherit;border-radius:8px;padding:.4rem .75rem;font:inherit;font-size:.9rem;cursor:pointer;min-height:38px}
.at-btn:hover{background:rgba(127,127,127,.15)}
.at-btn:disabled{opacity:.5;cursor:not-allowed}
.at-btn.at-sm{padding:.25rem .5rem;min-height:32px;font-size:.8rem}
.at-btn.at-pri{background:#2563eb;border-color:#2563eb;color:#fff}
.at-btn.at-pri:hover{background:#1d4ed8}
.at-in{font:inherit;font-size:.95rem;padding:.4rem .5rem;border:1px solid rgba(127,127,127,.5);border-radius:8px;background:transparent;color:inherit;width:8.5rem;max-width:100%;font-variant-numeric:tabular-nums}
.at-in.at-wide{width:100%;max-width:22rem}
.at-chk{display:inline-flex;gap:.35rem;align-items:center;font-size:.9rem}
.at-pan{flex:1;min-width:120px}
.at-note{font-size:.82rem;opacity:.75;margin:.3rem 0 0}
.at-res audio{width:100%;margin:.5rem 0}
.at-dl{display:inline-block;text-decoration:none}
</style>
<div class="at-wrap" id="at-app">
<div class="at-drop" id="at-drop" tabindex="0" role="button" aria-label="เลือกไฟล์เสียง">
<div class="at-drop-ico">✂️</div>
<div class="at-drop-t">วางไฟล์เสียงที่นี่ หรือคลิกเพื่อเลือกไฟล์</div>
<div class="at-drop-s">รองรับ MP3, WAV, M4A, OGG, FLAC, AAC และเสียงจากวิดีโอ MP4 · ไม่เกิน 100 MB · วางด้วย Ctrl+V ได้</div>
</div>
<input type="file" id="at-file" accept="audio/*,video/mp4,.mp3,.wav,.m4a,.ogg,.flac,.aac,.mp4" hidden>
<p class="at-msg" id="at-msg" role="status" aria-live="polite">🔒 ไฟล์ของคุณไม่ถูกอัปโหลด ประมวลผลในเบราว์เซอร์ของคุณเท่านั้น ไม่ต้องสมัคร ไม่มีลายน้ำ</p>
<div id="at-editor" hidden>
<div class="at-card">
<div class="at-file"><span>ไฟล์: <b id="at-fname"></b><br><small id="at-fmeta"></small></span><button type="button" class="at-btn at-sm" id="at-change">เปลี่ยนไฟล์</button></div>
<div class="at-cwrap"><canvas id="at-canvas" class="at-canvas" tabindex="0" aria-label="คลื่นเสียง ลากเพื่อเลือกช่วง ลากแฮนเดิลเพื่อปรับจุดเริ่มต้นและจุดจบ"></canvas></div>
<div class="at-row">
<button type="button" class="at-btn at-sm" id="at-zin" title="ซูมเข้า">🔍＋</button>
<button type="button" class="at-btn at-sm" id="at-zout" title="ซูมออก">🔍－</button>
<button type="button" class="at-btn at-sm" id="at-zfit">ดูทั้งไฟล์</button>
<button type="button" class="at-btn at-sm" id="at-zsel">ซูมไปที่ช่วงที่เลือก</button>
<input type="range" class="at-pan" id="at-pan" min="0" max="1000" value="0" aria-label="เลื่อนดูคลื่นเสียง">
</div>
<div class="at-row">
<button type="button" class="at-btn" id="at-play">▶ เล่น</button>
<button type="button" class="at-btn" id="at-playsel">▶ ฟังช่วงที่เลือก</button>
<label class="at-chk"><input type="checkbox" id="at-loop"> เล่นวน</label>
<span class="at-note">ตำแหน่งเล่น <b id="at-head">0:00.000</b> / <span id="at-total">0:00.000</span></span>
</div>
<p class="at-note">ลากบนคลื่นเสียงเพื่อเลือกช่วง · ลากแฮนเดิลสีน้ำเงินเพื่อปรับ · คลิกเพื่อย้ายตำแหน่งเล่น · Ctrl+เลื่อนล้อเมาส์เพื่อซูม · คีย์ลัด Space, I, O (เมื่อโฟกัสที่คลื่นเสียง)</p>
</div>
<div class="at-card">
<h3>1. เลือกโหมดและช่วงเวลา</h3>
<div class="at-row">
<label class="at-chk"><input type="radio" name="at-mode" value="trim" checked> ทริม: เก็บเฉพาะช่วงที่เลือก</label>
<label class="at-chk"><input type="radio" name="at-mode" value="cut"> คัต: ลบช่วงที่เลือกออก</label>
</div>
<div class="at-grid">
<div>
<label class="at-lbl" for="at-start">จุดเริ่มต้น (นาที:วินาที.มิลลิวินาที)</label>
<div class="at-row">
<input class="at-in" id="at-start" inputmode="decimal" autocomplete="off">
<button type="button" class="at-btn at-sm" data-w="s" data-d="-1">−1s</button>
<button type="button" class="at-btn at-sm" data-w="s" data-d="-0.1">−0.1</button>
<button type="button" class="at-btn at-sm" data-w="s" data-d="0.1">+0.1</button>
<button type="button" class="at-btn at-sm" data-w="s" data-d="1">+1s</button>
</div>
<button type="button" class="at-btn at-sm" id="at-sets">ตั้งเป็นตำแหน่งเล่น</button>
</div>
<div>
<label class="at-lbl" for="at-end">จุดสิ้นสุด</label>
<div class="at-row">
<input class="at-in" id="at-end" inputmode="decimal" autocomplete="off">
<button type="button" class="at-btn at-sm" data-w="e" data-d="-1">−1s</button>
<button type="button" class="at-btn at-sm" data-w="e" data-d="-0.1">−0.1</button>
<button type="button" class="at-btn at-sm" data-w="e" data-d="0.1">+0.1</button>
<button type="button" class="at-btn at-sm" data-w="e" data-d="1">+1s</button>
</div>
<button type="button" class="at-btn at-sm" id="at-sete">ตั้งเป็นตำแหน่งเล่น</button>
</div>
</div>
<p class="at-note">ช่วงที่เลือก <b id="at-sel">0:00.000</b> · ความยาวไฟล์ผลลัพธ์ <b id="at-outlen">0:00.000</b></p>
<div class="at-row">
<button type="button" class="at-btn at-sm" id="at-all">เลือกทั้งไฟล์</button>
<button type="button" class="at-btn at-sm" data-r="30">เสียงเรียกเข้า 30 วินาที</button>
<button type="button" class="at-btn at-sm" data-r="40">เสียงเรียกเข้า 40 วินาที (iPhone)</button>
<button type="button" class="at-btn at-sm" id="at-sil">ตัดความเงียบหัว-ท้ายอัตโนมัติ</button>
</div>
</div>
<div class="at-card">
<h3>2. ปรับแต่งเสียง (ไม่บังคับ)</h3>
<div class="at-row">
<label class="at-chk">เฟดเข้า <input class="at-in" style="width:5rem" type="number" id="at-fin" min="0" max="30" step="0.1" value="0"> วินาที</label>
<label class="at-chk">เฟดออก <input class="at-in" style="width:5rem" type="number" id="at-fout" min="0" max="30" step="0.1" value="0"> วินาที</label>
</div>
<div class="at-row">
<label class="at-chk"><input type="checkbox" id="at-norm"> ปรับระดับเสียงให้ดังพอดี (Normalize)</label>
<label class="at-chk"><input type="checkbox" id="at-mono"> แปลงเป็นโมโน</label>
</div>
</div>
<div class="at-card">
<h3>3. ฟังและดาวน์โหลด</h3>
<label class="at-lbl" for="at-name">ชื่อไฟล์ (ไม่ต้องใส่นามสกุล)</label>
<input class="at-in at-wide" id="at-name" autocomplete="off">
<div class="at-row">
<button type="button" class="at-btn" id="at-prev">🎧 ฟังผลลัพธ์</button>
<button type="button" class="at-btn at-pri" id="at-export">✂️ ตัดและสร้างไฟล์</button>
</div>
<div class="at-res" id="at-result" hidden>
<audio id="at-out-audio" controls preload="metadata"></audio>
<p class="at-note" id="at-out-info"></p>
<a class="at-btn at-pri at-dl" id="at-dl" href="#" download="trim.wav">⬇ ดาวน์โหลดไฟล์ WAV</a>
</div>
<p class="at-note">ไฟล์ที่ได้เป็น WAV 16-bit ไม่ผ่านการบีบอัดซ้ำ ขนาดไฟล์จึงใหญ่กว่า MP3 ไฟล์จะหายเมื่อปิดหรือรีเฟรชหน้านี้ ดาวน์โหลดก่อนปิดหน้า</p>
</div>
</div>
</div>

<script>
(function () {
  'use strict';
  function $(id) { return document.getElementById(id); }
  var msgEl = $('at-msg');
  function say(t, err) { msgEl.textContent = t || ''; msgEl.className = 'at-msg' + (err ? ' at-err' : ''); }
  var AC = window.AudioContext || window.webkitAudioContext;
  if (!AC) { say('เบราว์เซอร์นี้ไม่รองรับ Web Audio กรุณาใช้ Chrome, Edge, Firefox หรือ Safari รุ่นล่าสุด', true); return; }
  var MAXMB = 100;
  var ctx = null, buf = null, baseName = 'audio', fileSize = 0;
  var sel = { s: 0, e: 0 }, view = { s: 0, e: 0 }, head = 0;
  var mode = 'trim';
  var base = null, bucket = 1;
  var src = null, playMode = '', t0 = 0, pFrom = 0, pTo = 0, pLoop = false, raf = 0, outUrl = null;
  var drag = null;
  function clamp(v, a, b) { return v < a ? a : (v > b ? b : v); }
  function dur() { return buf ? buf.duration : 0; }
  function pad(n, l) { n = String(n); while (n.length < l) { n = '0' + n; } return n; }
  function ensureCtx() {
    if (!ctx) { ctx = new AC(); }
    if (ctx.state === 'suspended' && ctx.resume) {
      var p = ctx.resume();
      if (p && p.catch) { p.catch(function () {}); }
    }
    return ctx;
  }
  function fmt(t) {
    if (!isFinite(t) || t < 0) { t = 0; }
    var ms = Math.round(t * 1000);
    var h = Math.floor(ms / 3600000); ms -= h * 3600000;
    var m = Math.floor(ms / 60000); ms -= m * 60000;
    var s = Math.floor(ms / 1000); ms -= s * 1000;
    return (h > 0 ? h + ':' + pad(m, 2) : String(m)) + ':' + pad(s, 2) + '.' + pad(ms, 3);
  }
  function parse(str) {
    str = String(str).trim().replace(/,/g, '.');
    if (!str) { return NaN; }
    var parts = str.split(':');
    if (parts.length > 3) { return NaN; }
    var tot = 0;
    for (var i = 0; i < parts.length; i++) {
      if (!/^\d*\.?\d*$/.test(parts[i]) || parts[i] === '' || parts[i] === '.') { return NaN; }
      tot = tot * 60 + parseFloat(parts[i]);
    }
    return tot;
  }
  function fmtSize(b) {
    if (b >= 1048576) { return (b / 1048576).toFixed(1) + ' MB'; }
    return Math.max(1, Math.round(b / 1024)) + ' KB';
  }
  function cleanName(s) {
    return String(s || '').replace(/[^\w\u0E00-\u0E7F\s.\-()]+/g, '').replace(/\s+/g, ' ').trim().slice(0, 100);
  }
  /* ---------- load & decode ---------- */
  function readBuf(f) {
    if (f.arrayBuffer) { return f.arrayBuffer(); }
    return new Promise(function (res, rej) {
      var r = new FileReader();
      r.onload = function () { res(r.result); };
      r.onerror = function () { rej(r.error); };
      r.readAsArrayBuffer(f);
    });
  }
  function decode(ab) {
    return new Promise(function (res, rej) {
      var p = ctx.decodeAudioData(ab, res, rej);
      if (p && p.catch) { p.catch(rej); }
    });
  }
  function loadFile(f) {
    if (!f) { return; }
    if (f.size > MAXMB * 1048576) { say('ไฟล์ใหญ่เกิน ' + MAXMB + ' MB กรุณาเลือกไฟล์ที่เล็กลง', true); return; }
    stopPlay();
    say('กำลังอ่านและถอดรหัสไฟล์เสียง… ไฟล์ใหญ่อาจใช้เวลาสักครู่');
    ensureCtx();
    readBuf(f).then(decode).then(function (ab) {
      setTimeout(function () {
        try {
          buf = ab;
          fileSize = f.size;
          baseName = cleanName(f.name.replace(/\.[^.]+$/, '')) || 'audio';
          computePeaks();
          sel = { s: 0, e: buf.duration };
          view = { s: 0, e: buf.duration };
          head = 0;
          mode = 'trim';
          document.querySelector('input[name="at-mode"][value="trim"]').checked = true;
          clearResult();
          $('at-fname').textContent = f.name;
          $('at-fmeta').textContent = 'ความยาว ' + fmt(buf.duration) + ' · ' + (buf.numberOfChannels > 1 ? 'สเตอริโอ' : 'โมโน') + ' · ' + buf.sampleRate + ' Hz · ' + fmtSize(f.size);
          $('at-name').value = baseName + '-trim';
          $('at-drop').hidden = true;
          $('at-editor').hidden = false;
          say('โหลดไฟล์แล้ว ลากบนคลื่นเสียงเพื่อเลือกช่วงที่ต้องการ');
          updateUI();
        } catch (e2) {
          buf = null;
          say('ไม่สามารถประมวลผลไฟล์นี้ได้ ไฟล์อาจใหญ่เกินหน่วยความจำของอุปกรณ์', true);
        }
      }, 20);
    }).catch(function () {
      say('เปิดไฟล์นี้ไม่ได้ อาจเป็นไฟล์เสียงที่เบราว์เซอร์ไม่รองรับหรือไฟล์เสียหาย ลองใช้ MP3 หรือ WAV', true);
    });
  }
  function computePeaks() {
    var n = buf.length, nch = buf.numberOfChannels, c, chs = [];
    bucket = Math.max(1, Math.ceil(n / 200000));
    var nb = Math.ceil(n / bucket);
    base = new Float32Array(nb * 2);
    for (c = 0; c < nch; c++) { chs.push(buf.getChannelData(c)); }
    for (var b = 0; b < nb; b++) {
      var i0 = b * bucket, i1 = Math.min(n, i0 + bucket), mn = 1, mx = -1;
      for (c = 0; c < nch; c++) {
        var d = chs[c];
        for (var i = i0; i < i1; i++) { var v = d[i]; if (v < mn) { mn = v; } if (v > mx) { mx = v; } }
      }
      base[b * 2] = mn; base[b * 2 + 1] = mx;
    }
  }
  /* ---------- drawing ---------- */
  function draw() {
    var cv = $('at-canvas');
    if (!cv || !buf) { return; }
    var dpr = window.devicePixelRatio || 1, w = cv.clientWidth, h = cv.clientHeight;
    if (!w || !h) { return; }
    var pw = Math.round(w * dpr), ph = Math.round(h * dpr);
    if (cv.width !== pw || cv.height !== ph) { cv.width = pw; cv.height = ph; }
    var g = cv.getContext('2d');
    g.setTransform(dpr, 0, 0, dpr, 0, 0);
    g.clearRect(0, 0, w, h);
    var vd = view.e - view.s, sr = buf.sampleRate, mid = h / 2, amp = h / 2 - 6;
    g.strokeStyle = 'rgba(127,127,127,.4)';
    g.beginPath(); g.moveTo(0, mid); g.lineTo(w, mid); g.stroke();
    var spp = vd * sr / w;
    var useRaw = spp < bucket * 2;
    var nch = buf.numberOfChannels, chs = [], q;
    if (useRaw) { for (q = 0; q < nch; q++) { chs.push(buf.getChannelData(q)); } }
    var nbk = base.length / 2;
    g.fillStyle = '#3b82f6';
    for (var x = 0; x < w; x++) {
      var ta = view.s + x / w * vd, tb = view.s + (x + 1) / w * vd;
      var i0 = Math.floor(ta * sr), i1 = Math.max(i0 + 1, Math.floor(tb * sr));
      var mn = 1, mx = -1;
      if (useRaw) {
        i1 = Math.min(i1, buf.length);
        var step = Math.max(1, Math.floor((i1 - i0) / 32));
        for (q = 0; q < nch; q++) {
          var d = chs[q];
          for (var i = i0; i < i1; i += step) { var v = d[i]; if (v < mn) { mn = v; } if (v > mx) { mx = v; } }
        }
      } else {
        var b0 = Math.max(0, Math.floor(i0 / bucket)), b1 = Math.min(nbk - 1, Math.floor((i1 - 1) / bucket));
        for (var b = b0; b <= b1; b++) {
          var lo = base[b * 2], hi = base[b * 2 + 1];
          if (lo < mn) { mn = lo; } if (hi > mx) { mx = hi; }
        }
      }
      if (mx < mn) { continue; }
      var y1 = mid - mx * amp, y2 = mid - mn * amp;
      g.fillRect(x, y1, 1, Math.max(1, y2 - y1));
    }
    var xs = (sel.s - view.s) / vd * w, xe = (sel.e - view.s) / vd * w;
    var xs2 = clamp(xs, 0, w), xe2 = clamp(xe, 0, w);
    var hc = mode === 'cut' ? '#dc2626' : '#2563eb';
    if (mode === 'trim') {
      g.fillStyle = 'rgba(127,127,127,.5)';
      g.fillRect(0, 0, xs2, h);
      g.fillRect(xe2, 0, w - xe2, h);
    } else {
      g.fillStyle = 'rgba(220,38,38,.25)';
      g.fillRect(xs2, 0, Math.max(0, xe2 - xs2), h);
    }
    g.fillStyle = hc;
    if (xs >= -2 && xs <= w + 2) { g.fillRect(xs - 1, 0, 2, h); g.fillRect(xs - 6, 0, 12, 16); }
    if (xe >= -2 && xe <= w + 2) { g.fillRect(xe - 1, 0, 2, h); g.fillRect(xe - 6, 0, 12, 16); }
    var xh = (head - view.s) / vd * w;
    if (xh >= 0 && xh <= w) { g.fillStyle = '#f59e0b'; g.fillRect(xh - 1, 0, 2, h); }
    g.font = '11px sans-serif';
    g.fillStyle = 'rgba(127,127,127,.95)';
    g.textAlign = 'left'; g.fillText(fmt(view.s), 4, h - 5);
    g.textAlign = 'right'; g.fillText(fmt(view.e), w - 4, h - 5);
  }
  function updateUI() {
    if (!buf) { return; }
    $('at-start').value = fmt(sel.s);
    $('at-end').value = fmt(sel.e);
    $('at-sel').textContent = fmt(Math.max(0, sel.e - sel.s));
    $('at-total').textContent = fmt(buf.duration);
    $('at-head').textContent = fmt(head);
    var outLen = mode === 'trim' ? sel.e - sel.s : buf.duration - (sel.e - sel.s);
    $('at-outlen').textContent = fmt(Math.max(0, outLen));
    var span = view.e - view.s, full = buf.duration, pan = $('at-pan');
    pan.disabled = span >= full - 0.0005;
    pan.value = (full - span > 0) ? Math.round(view.s / (full - span) * 1000) : 0;
    draw();
  }
  function clearResult() {
    if (outUrl) { URL.revokeObjectURL(outUrl); outUrl = null; }
    var r = $('at-result');
    if (r && !r.hidden) { r.hidden = true; $('at-out-audio').removeAttribute('src'); }
  }
  /* ---------- selection & view ---------- */
  function setSel(s, e) {
    var d = dur();
    s = clamp(s, 0, d); e = clamp(e, 0, d);
    if (e < s) { var t = s; s = e; e = t; }
    sel.s = s; sel.e = e; clearResult(); updateUI();
  }
  function setStart(t) { sel.s = clamp(t, 0, sel.e); clearResult(); updateUI(); }
  function setEnd(t) { sel.e = clamp(t, sel.s, dur()); clearResult(); updateUI(); }
  function setView(s, e) {
    var d = dur(), span = clamp(e - s, Math.min(d, 0.02), d);
    s = clamp(s, 0, d - span);
    view.s = s; view.e = s + span; updateUI();
  }
  function zoomBy(f, center) {
    var span = view.e - view.s, ns = span * f;
    if (center == null) { center = (view.s + view.e) / 2; }
    var r = (center - view.s) / span;
    setView(center - r * ns, center - r * ns + ns);
  }
  /* ---------- canvas interaction ---------- */
  var cv = $('at-canvas');
  function pos(ev) {
    var r = cv.getBoundingClientRect(), x = clamp(ev.clientX - r.left, 0, r.width);
    return { x: x, w: r.width, t: view.s + x / r.width * (view.e - view.s) };
  }
  function handleHit(p) {
    var vd = view.e - view.s;
    var xs = (sel.s - view.s) / vd * p.w, xe = (sel.e - view.s) / vd * p.w;
    var ds = Math.abs(p.x - xs), de = Math.abs(p.x - xe);
    if (Math.min(ds, de) > 14) { return ''; }
    if (Math.abs(ds - de) < 1) { return p.x >= xs ? 'e' : 's'; }
    return ds < de ? 's' : 'e';
  }
  cv.addEventListener('pointerdown', function (ev) {
    if (!buf) { return; }
    var p = pos(ev), h = handleHit(p);
    drag = h ? { type: h } : { type: 'new', anchor: p.t, x0: p.x, moved: false };
    try { cv.setPointerCapture(ev.pointerId); } catch (e) {}
    cv.focus();
    ev.preventDefault();
  });
  cv.addEventListener('pointermove', function (ev) {
    if (!buf) { return; }
    var p = pos(ev);
    if (!drag) { cv.style.cursor = handleHit(p) ? 'ew-resize' : 'crosshair'; return; }
    if (drag.type === 's') { sel.s = clamp(p.t, 0, sel.e); }
    else if (drag.type === 'e') { sel.e = clamp(p.t, sel.s, dur()); }
    else {
      if (Math.abs(p.x - drag.x0) > 4) { drag.moved = true; }
      if (drag.moved) { sel.s = clamp(Math.min(drag.anchor, p.t), 0, dur()); sel.e = clamp(Math.max(drag.anchor, p.t), 0, dur()); }
    }
    clearResult(); updateUI();
  });
  function endDrag(ev) {
    if (!drag) { return; }
    var d = drag; drag = null;
    if (d.type === 'new' && !d.moved && buf) {
      head = pos(ev).t;
      if (playMode === 'all') { startPlay(buf, head, buf.duration, 'all', false); }
      updateUI();
    }
  }
  cv.addEventListener('pointerup', endDrag);
  cv.addEventListener('pointercancel', function () { drag = null; });
  cv.addEventListener('wheel', function (ev) {
    if (!buf) { return; }
    if (ev.ctrlKey || ev.metaKey) { ev.preventDefault(); zoomBy(ev.deltaY < 0 ? 0.8 : 1.25, pos(ev).t); }
    else if (ev.shiftKey && view.e - view.s < dur()) {
      ev.preventDefault();
      var sp = view.e - view.s, dl = (ev.deltaY || ev.deltaX) / 500 * sp;
      setView(view.s + dl, view.s + dl + sp);
    }
  }, { passive: false });
  window.addEventListener('resize', draw);
  /* ---------- playback ---------- */
  function setBtns() {
    $('at-play').textContent = playMode === 'all' ? '⏹ หยุด' : '▶ เล่น';
    $('at-playsel').textContent = playMode === 'sel' ? '⏹ หยุด' : '▶ ฟังช่วงที่เลือก';
    $('at-prev').textContent = playMode === 'out' ? '⏹ หยุดฟัง' : '🎧 ฟังผลลัพธ์';
  }
  function stopPlay() {
    if (src) {
      try { src.onended = null; src.stop(); } catch (e) {}
      try { src.disconnect(); } catch (e2) {}
      src = null;
    }
    playMode = '';
    cancelAnimationFrame(raf);
    setBtns();
  }
  function finishPlay(pmode, to) {
    src = null; playMode = '';
    cancelAnimationFrame(raf);
    if (pmode !== 'out') { head = to; }
    setBtns();
    if (buf) { $('at-head').textContent = fmt(head); draw(); }
  }
  function tick() {
    if (!src || playMode === 'out') { return; }
    var e = ctx.currentTime - t0, p;
    if (pLoop) { p = pFrom + (e % (pTo - pFrom)); } else { p = Math.min(pTo, pFrom + e); }
    head = p;
    if (p < view.s || p > view.e) {
      var sp = view.e - view.s, ns = clamp(p - sp * 0.1, 0, dur() - sp);
      view.s = ns; view.e = ns + sp;
    }
    $('at-head').textContent = fmt(head);
    draw();
    raf = requestAnimationFrame(tick);
  }
  function startPlay(buffer, from, to, pmode, loop) {
    stopPlay();
    if (to - from < 0.005) { return; }
    var c = ensureCtx(), s = c.createBufferSource();
    s.buffer = buffer;
    s.connect(c.destination);
    if (loop) { s.loop = true; s.loopStart = from; s.loopEnd = to; s.start(0, from); }
    else { s.start(0, from, to - from); }
    s.onended = function () { if (src === s) { finishPlay(pmode, to); } };
    src = s; playMode = pmode; t0 = c.currentTime; pFrom = from; pTo = to; pLoop = !!loop;
    setBtns();
    if (pmode !== 'out') { tick(); }
  }
  function togglePlayAll() {
    if (!buf) { return; }
    if (playMode === 'all') { stopPlay(); return; }
    startPlay(buf, head >= buf.duration - 0.01 ? 0 : head, buf.duration, 'all', false);
  }
  function togglePlaySel() {
    if (!buf) { return; }
    if (playMode === 'sel') { stopPlay(); return; }
    if (sel.e - sel.s < 0.01) { say('ช่วงที่เลือกสั้นเกินไป', true); return; }
    startPlay(buf, sel.s, sel.e, 'sel', $('at-loop').checked);
  }
  /* ---------- processing ---------- */
  function buildOutput() {
    if (!buf) { return null; }
    var c = ensureCtx(), sr = buf.sampleRate, nch = buf.numberOfChannels, n = buf.length;
    var a = clamp(Math.round(sel.s * sr), 0, n), b = clamp(Math.round(sel.e * sr), 0, n);
    var segs = mode === 'trim' ? [[a, b]] : [[0, a], [b, n]];
    var total = 0, k, ch, i;
    for (k = 0; k < segs.length; k++) { total += Math.max(0, segs[k][1] - segs[k][0]); }
    if (total < 1) { return null; }
    var mono = $('at-mono').checked && nch > 1;
    var och = mono ? 1 : nch;
    var out = c.createBuffer(och, total, sr);
    var chs = [];
    for (ch = 0; ch < nch; ch++) { chs.push(buf.getChannelData(ch)); }
    var p = 0, joint = -1;
    for (k = 0; k < segs.length; k++) {
      var s0 = segs[k][0], s1 = segs[k][1];
      if (s1 <= s0) { continue; }
      if (p > 0 && joint < 0) { joint = p; }
      var len = s1 - s0;
      if (mono) {
        var o = out.getChannelData(0);
        for (i = 0; i < len; i++) {
          var sum = 0;
          for (ch = 0; ch < nch; ch++) { sum += chs[ch][s0 + i]; }
          o[p + i] = sum / nch;
        }
      } else {
        for (ch = 0; ch < nch; ch++) { out.getChannelData(ch).set(chs[ch].subarray(s0, s1), p); }
      }
      p += len;
    }
    var od = [];
    for (ch = 0; ch < och; ch++) { od.push(out.getChannelData(ch)); }
    function ramp(start, len, up) {
      if (len <= 0) { return; }
      for (var ci = 0; ci < och; ci++) {
        var d = od[ci];
        for (var j = 0; j < len; j++) { d[start + j] *= up ? (j / len) : (1 - j / len); }
      }
    }
    if (joint > 0) {
      var dj = Math.min(Math.round(0.005 * sr), joint, total - joint);
      ramp(joint - dj, dj, false);
      ramp(joint, dj, true);
    }
    var fi = clamp(parseFloat($('at-fin').value) || 0, 0, 30);
    var fo = clamp(parseFloat($('at-fout').value) || 0, 0, 30);
    ramp(0, Math.min(total, Math.round(fi * sr)), true);
    var fon = Math.min(total, Math.round(fo * sr));
    ramp(total - fon, fon, false);
    if ($('at-norm').checked) {
      var pk = 0;
      for (ch = 0; ch < och; ch++) {
        var dd = od[ch];
        for (i = 0; i < total; i++) { var av = dd[i] < 0 ? -dd[i] : dd[i]; if (av > pk) { pk = av; } }
      }
      if (pk > 0.0001) {
        var gain = 0.966 / pk;
        for (ch = 0; ch < och; ch++) { var d2 = od[ch]; for (i = 0; i < total; i++) { d2[i] *= gain; } }
      }
    }
    return out;
  }
  function toWav(ab) {
    var nch = ab.numberOfChannels, len = ab.length, sr = ab.sampleRate;
    var bytes = len * nch * 2;
    if (bytes + 44 > 4294967295) { throw new Error('too big'); }
    var buffer = new ArrayBuffer(44 + bytes), dv = new DataView(buffer);
    function str(o, s) { for (var i = 0; i < s.length; i++) { dv.setUint8(o + i, s.charCodeAt(i)); } }
    str(0, 'RIFF'); dv.setUint32(4, 36 + bytes, true); str(8, 'WAVE'); str(12, 'fmt ');
    dv.setUint32(16, 16, true); dv.setUint16(20, 1, true); dv.setUint16(22, nch, true);
    dv.setUint32(24, sr, true); dv.setUint32(28, sr * nch * 2, true);
    dv.setUint16(32, nch * 2, true); dv.setUint16(34, 16, true);
    str(36, 'data'); dv.setUint32(40, bytes, true);
    var chs = [], c;
    for (c = 0; c < nch; c++) { chs.push(ab.getChannelData(c)); }
    var off = 44;
    for (var i = 0; i < len; i++) {
      for (c = 0; c < nch; c++) {
        var v = chs[c][i];
        v = v < -1 ? -1 : (v > 1 ? 1 : v);
        dv.setInt16(off, v < 0 ? v * 32768 : v * 32767, true);
        off += 2;
      }
    }
    return new Blob([buffer], { type: 'audio/wav' });
  }
  function autoSilence() {
    if (!buf) { return; }
    var thr = 0.0056, n = buf.length, nch = buf.numberOfChannels, chs = [], c, i, first = -1, last = -1;
    for (c = 0; c < nch; c++) { chs.push(buf.getChannelData(c)); }
    for (i = 0; i < n && first < 0; i++) {
      for (c = 0; c < nch; c++) { var v1 = chs[c][i]; if (v1 > thr || v1 < -thr) { first = i; break; } }
    }
    if (first < 0) { say('ไม่พบช่วงที่มีเสียงดังกว่าระดับความเงียบในไฟล์นี้', true); return; }
    for (i = n - 1; i >= 0 && last < 0; i--) {
      for (c = 0; c < nch; c++) { var v2 = chs[c][i]; if (v2 > thr || v2 < -thr) { last = i; break; } }
    }
    var sr = buf.sampleRate, padS = 0.05;
    setMode('trim');
    setSel(Math.max(0, first / sr - padS), Math.min(buf.duration, (last + 1) / sr + padS));
    say('ตั้งช่วงให้ครอบคลุมเฉพาะส่วนที่มีเสียงแล้ว (ตัดความเงียบหัว-ท้าย)');
  }
  function setMode(m) {
    mode = m;
    var r = document.querySelector('input[name="at-mode"][value="' + m + '"]');
    if (r) { r.checked = true; }
    clearResult();
  }
  /* ---------- wiring ---------- */
  var drop = $('at-drop'), fileIn = $('at-file');
  drop.addEventListener('click', function () { fileIn.click(); });
  drop.addEventListener('keydown', function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileIn.click(); } });
  $('at-change').addEventListener('click', function () { fileIn.click(); });
  fileIn.addEventListener('change', function () {
    if (fileIn.files && fileIn.files[0]) { loadFile(fileIn.files[0]); }
    fileIn.value = '';
  });
  ['dragenter', 'dragover'].forEach(function (n) {
    $('at-app').addEventListener(n, function (e) { e.preventDefault(); drop.classList.add('at-over'); });
  });
  ['dragleave', 'drop'].forEach(function (n) {
    $('at-app').addEventListener(n, function (e) { e.preventDefault(); drop.classList.remove('at-over'); });
  });
  $('at-app').addEventListener('drop', function (e) {
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    if (f) { loadFile(f); }
  });
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData && e.clipboardData.files && e.clipboardData.files[0];
    if (f && /^(audio|video)\//.test(f.type)) { loadFile(f); }
  });
  $('at-zin').addEventListener('click', function () { if (buf) { zoomBy(0.5); } });
  $('at-zout').addEventListener('click', function () { if (buf) { zoomBy(2); } });
  $('at-zfit').addEventListener('click', function () { if (buf) { setView(0, dur()); } });
  $('at-zsel').addEventListener('click', function () {
    if (!buf || sel.e - sel.s < 0.02) { return; }
    var pd = (sel.e - sel.s) * 0.1;
    setView(sel.s - pd, sel.e + pd);
  });
  $('at-pan').addEventListener('input', function () {
    if (!buf) { return; }
    var sp = view.e - view.s, s = parseFloat(this.value) / 1000 * (dur() - sp);
    view.s = clamp(s, 0, dur() - sp); view.e = view.s + sp;
    draw();
  });
  $('at-play').addEventListener('click', togglePlayAll);
  $('at-playsel').addEventListener('click', togglePlaySel);
  $('at-loop').addEventListener('change', function () {
    if (playMode === 'sel') { startPlay(buf, sel.s, sel.e, 'sel', this.checked); }
  });
  $('at-prev').addEventListener('click', function () {
    if (!buf) { return; }
    if (playMode === 'out') { stopPlay(); return; }
    var ob;
    try { ob = buildOutput(); } catch (e) { ob = null; }
    if (!ob) { say('ไม่มีเสียงเหลือให้ฟัง กรุณาปรับจุดเริ่มต้นและจุดสิ้นสุด', true); return; }
    say('');
    startPlay(ob, 0, ob.duration, 'out', false);
  });
  Array.prototype.forEach.call(document.querySelectorAll('input[name="at-mode"]'), function (r) {
    r.addEventListener('change', function () { if (r.checked) { setMode(r.value); updateUI(); } });
  });
  $('at-editor').addEventListener('click', function (e) {
    var t = e.target;
    while (t && t !== this && !(t.getAttribute && (t.getAttribute('data-d') || t.getAttribute('data-r')))) { t = t.parentNode; }
    if (!t || t === this || !buf) { return; }
    var dv = t.getAttribute('data-d'), rv = t.getAttribute('data-r');
    if (dv !== null) {
      var d = parseFloat(dv);
      if (t.getAttribute('data-w') === 's') { setStart(sel.s + d); } else { setEnd(sel.e + d); }
    } else if (rv !== null) {
      var len = parseFloat(rv), s = sel.s;
      if (s + len > dur()) { s = Math.max(0, dur() - len); }
      setMode('trim');
      setSel(s, Math.min(dur(), s + len));
    }
  });
  $('at-start').addEventListener('change', function () {
    var v = parse(this.value);
    if (isNaN(v)) { say('รูปแบบเวลาไม่ถูกต้อง ตัวอย่าง 1:30.250 หรือ 90', true); updateUI(); return; }
    say(''); setStart(v);
  });
  $('at-end').addEventListener('change', function () {
    var v = parse(this.value);
    if (isNaN(v)) { say('รูปแบบเวลาไม่ถูกต้อง ตัวอย่าง 1:30.250 หรือ 90', true); updateUI(); return; }
    say(''); setEnd(v);
  });
  $('at-sets').addEventListener('click', function () {
    if (!buf) { return; }
    sel.s = clamp(head, 0, dur());
    if (sel.e < sel.s) { sel.e = dur(); }
    clearResult(); updateUI();
  });
  $('at-sete').addEventListener('click', function () {
    if (!buf) { return; }
    sel.e = clamp(head, 0, dur());
    if (sel.s > sel.e) { sel.s = 0; }
    clearResult(); updateUI();
  });
  $('at-all').addEventListener('click', function () { if (buf) { setSel(0, dur()); } });
  $('at-sil').addEventListener('click', autoSilence);
  ['at-fin', 'at-fout', 'at-norm', 'at-mono'].forEach(function (id) {
    $(id).addEventListener('change', clearResult);
  });
  $('at-app').addEventListener('keydown', function (e) {
    if (!buf || e.ctrlKey || e.metaKey || e.altKey) { return; }
    if (e.target !== cv) { return; }
    var k = e.key;
    if (k === ' ') { e.preventDefault(); togglePlayAll(); }
    else if (k === 'i' || k === 'I') { $('at-sets').click(); }
    else if (k === 'o' || k === 'O') { $('at-sete').click(); }
  });
  $('at-export').addEventListener('click', function () {
    if (!buf) { return; }
    stopPlay();
    var btn = this;
    say('กำลังประมวลผลไฟล์…');
    btn.disabled = true;
    setTimeout(function () {
      try {
        var ob = buildOutput();
        if (!ob) { say('ไม่มีเสียงเหลือให้สร้างไฟล์ กรุณาปรับจุดเริ่มต้นและจุดสิ้นสุด', true); return; }
        var blob = toWav(ob);
        clearResult();
        outUrl = URL.createObjectURL(blob);
        var name = cleanName($('at-name').value) || (baseName + '-trim');
        var a = $('at-dl');
        a.href = outUrl;
        a.download = name + '.wav';
        $('at-out-audio').src = outUrl;
        $('at-out-info').textContent = 'ความยาว ' + fmt(ob.duration) + ' · ขนาด ' + fmtSize(blob.size) + ' · WAV 16-bit · ' + ob.sampleRate + ' Hz';
        $('at-result').hidden = false;
        say('เสร็จแล้ว ฟังตัวอย่างหรือกดดาวน์โหลดได้เลย');
      } catch (err) {
        say('สร้างไฟล์ไม่สำเร็จ ไฟล์อาจใหญ่เกินกว่าหน่วยความจำของอุปกรณ์ ลองเลือกช่วงให้สั้นลง', true);
      } finally {
        btn.disabled = false;
      }
    }, 30);
  });
})();
</script>

## วิธีใช้งานเครื่องมือตัดเสียงออนไลน์

1. **เลือกไฟล์เสียง** คลิกที่กรอบด้านบน ลากไฟล์มาวาง หรือกด `Ctrl+V` เพื่อวางไฟล์ รองรับ MP3, WAV, M4A, OGG, FLAC, AAC และเสียงจากวิดีโอ MP4 (ไม่เกิน 100 MB)
2. **ดูคลื่นเสียง** เมื่อโหลดเสร็จจะเห็นกราฟคลื่นเสียง กดปุ่มซูมเข้า-ออก หรือกด `Ctrl` ค้างแล้วเลื่อนล้อเมาส์เพื่อซูม ใช้แถบเลื่อนด้านล่างเพื่อดูช่วงอื่นของไฟล์
3. **เลือกช่วงที่ต้องการ** ลากบนคลื่นเสียงเพื่อสร้างช่วง แล้วลากแฮนเดิลสีน้ำเงินที่จุดเริ่มต้นและจุดสิ้นสุดเพื่อปรับ หรือพิมพ์เวลาเองในช่อง เช่น `1:30.250` และใช้ปุ่ม −1s, −0.1, +0.1, +1s เพื่อขยับทีละนิด
4. **เลือกโหมด** เลือก "ทริม" ถ้าต้องการเก็บเฉพาะช่วงที่เลือก หรือ "คัต" ถ้าต้องการลบช่วงที่เลือกออกแล้วต่อส่วนที่เหลือเข้าด้วยกัน
5. **ใช้ทางลัด (ถ้าต้องการ)** กด "เสียงเรียกเข้า 30 วินาที" หรือ "40 วินาที" เพื่อตั้งช่วงอัตโนมัติ หรือกด "ตัดความเงียบหัว-ท้ายอัตโนมัติ" เพื่อตัดช่วงเงียบที่ต้นและท้ายไฟล์
6. **ปรับแต่งเสียง (ไม่บังคับ)** ตั้งเฟดเข้า เฟดออก เปิด Normalize หรือแปลงเป็นโมโนได้ตามต้องการ
7. **ฟังก่อนบันทึก** กด "ฟังช่วงที่เลือก" เพื่อฟังต้นฉบับเฉพาะช่วงนั้น หรือกด "ฟังผลลัพธ์" เพื่อฟังไฟล์ที่ผ่านโหมดและเอฟเฟกต์ที่ตั้งไว้แล้ว
8. **สร้างไฟล์และดาวน์โหลด** ตั้งชื่อไฟล์ กด "ตัดและสร้างไฟล์" แล้วกด "ดาวน์โหลดไฟล์ WAV" ไฟล์จะหายเมื่อปิดหรือรีเฟรชหน้านี้ จึงควรดาวน์โหลดก่อน

**คีย์ลัด** (เมื่อคลิกที่คลื่นเสียงแล้ว): `Space` เล่น/หยุด · `I` ตั้งจุดเริ่มต้นที่ตำแหน่งเล่น · `O` ตั้งจุดสิ้นสุดที่ตำแหน่งเล่น

## อธิบายศัพท์ที่ใช้ในเครื่องมือ

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| ทริม (Trim) | ตัดส่วนหัวและท้ายที่ไม่ต้องการออก เก็บไว้เฉพาะช่วงที่เลือก |
| คัต (Cut) | ลบช่วงที่เลือกออก (มักเป็นช่วงกลางไฟล์) แล้วต่อส่วนที่เหลือเข้าด้วยกัน |
| คลื่นเสียง (Waveform) | กราฟที่แสดงความดัง-เบาของเสียงตามเวลา ช่วยให้หาจุดตัดได้ง่าย |
| ซูม (Zoom) | ขยายหรือย่อกราฟเพื่อดูรายละเอียดของช่วงเวลาที่สนใจ |
| จุดเริ่มต้น / จุดสิ้นสุด | ตำแหน่งเวลาที่ช่วงที่เลือกเริ่มและจบ แสดงเป็นนาที:วินาที.มิลลิวินาที |
| แฮนเดิล (Handle) | เส้นสีน้ำเงินหรือแดงบนกราฟที่ลากเพื่อปรับจุดเริ่มต้นและจุดสิ้นสุด |
| ตำแหน่งเล่น (Playhead) | เส้นสีส้มที่แสดงตำแหน่งที่กำลังเล่นหรือจะเริ่มเล่น |
| เล่นวน (Loop) | เล่นช่วงที่เลือกซ้ำไปเรื่อย ๆ เพื่อฟังจุดตัดให้แน่ใจ |
| เฟดเข้า (Fade in) | ค่อย ๆ เพิ่มเสียงจากเงียบจนถึงระดับปกติที่ต้นไฟล์ ช่วยให้เริ่มเสียงนุ่มนวล |
| เฟดออก (Fade out) | ค่อย ๆ ลดเสียงลงจนเงียบที่ท้ายไฟล์ ช่วยให้จบเสียงไม่กระชาก |
| Normalize | ปรับระดับเสียงทั้งไฟล์ให้ส่วนที่ดังที่สุดอยู่ใกล้ระดับสูงสุดโดยไม่ให้แตก |
| โมโน (Mono) / สเตอริโอ (Stereo) | โมโนมีช่องเสียงเดียว สเตอริโอมีซ้ายและขวา การแปลงเป็นโมโนช่วยให้ไฟล์เล็กลง |
| ตัดความเงียบหัว-ท้าย | ตรวจหาช่วงที่แทบไม่มีเสียงที่ต้นและท้ายไฟล์ แล้วตั้งช่วงเลือกให้ครอบคลุมเฉพาะส่วนที่มีเสียง |
| เสียงเรียกเข้า (Ringtone) | ไฟล์เสียงสั้นสำหรับโทรศัพท์ มักยาวประมาณ 30 วินาที และ iPhone จำกัดที่ 40 วินาที |
| ลดเสียงคลิกที่รอยต่อ | เมื่อใช้โหมดคัต เครื่องมือจะเฟดสั้น ๆ (ประมาณ 5 มิลลิวินาที) ที่รอยต่อเพื่อไม่ให้เกิดเสียงดีด |
| WAV | ไฟล์เสียงแบบไม่บีบอัด คุณภาพตรงกับเสียงที่ถอดรหัสได้ ขนาดไฟล์ใหญ่กว่า MP3 |
| MP3, M4A, OGG, FLAC, AAC | รูปแบบไฟล์เสียงที่เครื่องมือนี้เปิดอ่านได้ ขึ้นอยู่กับว่าเบราว์เซอร์ของคุณรองรับรูปแบบใด |
| อัตราสุ่มตัวอย่าง (Sample rate) | จำนวนครั้งที่บันทึกเสียงต่อวินาที เช่น 44100 หรือ 48000 Hz ค่ายิ่งสูงยิ่งละเอียด |
| 16-bit | ความละเอียดของแต่ละตัวอย่างเสียงในไฟล์ WAV ที่ได้ ซึ่งเป็นมาตรฐานเดียวกับแผ่นซีดี |

## คำถามที่พบบ่อย

**ไฟล์เสียงของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่?**
ไม่ เครื่องมือนี้ประมวลผลทั้งหมดในเบราว์เซอร์ของคุณ ไฟล์จึงไม่ออกจากอุปกรณ์ และไม่มีลายน้ำ

**ทำไมไฟล์ที่ได้เป็น WAV?**
WAV เป็นรูปแบบที่สร้างในเบราว์เซอร์ได้โดยไม่ต้องบีบอัดซ้ำ จึงไม่เสียคุณภาพเพิ่มจากไฟล์ต้นฉบับ หากต้องการไฟล์เล็กลง สามารถนำไปแปลงเป็น MP3 ด้วยเครื่องมือแปลงไฟล์เสียงได้

**ใช้ทำเสียงเรียกเข้าได้ไหม?**
ได้ เลือกช่วงที่ชอบ กดปุ่ม "เสียงเรียกเข้า 30 วินาที" หรือ "40 วินาที" ปรับเฟดเข้า-ออกให้นุ่มนวล แล้วดาวน์โหลดไฟล์ไปใช้ตามขั้นตอนของโทรศัพท์รุ่นที่คุณใช้

**ใช้บนมือถือได้ไหม?**
ได้ รองรับการสัมผัสเพื่อลากเลือกช่วง แต่ไฟล์ที่ยาวมากอาจใช้หน่วยความจำสูง แนะนำให้เปิดหน้านี้ค้างไว้ระหว่างประมวลผล และใช้ไฟล์ที่ไม่ใหญ่มากบนมือถือ

**ทำไมเปิดไฟล์บางไฟล์ไม่ได้?**
เบราว์เซอร์แต่ละตัวรองรับรูปแบบไฟล์ไม่เหมือนกัน หากเปิดไม่ได้ ลองแปลงไฟล์เป็น MP3 หรือ WAV ก่อน หรือเปลี่ยนไปใช้ Chrome, Edge, Firefox หรือ Safari รุ่นล่าสุด