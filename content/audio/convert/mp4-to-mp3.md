---
title: แปลง MP4 เป็น MP3 ออนไลน์ ฟรี
h1: แปลง MP4 เป็น MP3
description: แปลง MP4 เป็น MP3 ออนไลน์ฟรี ไม่ต้องอัปโหลดไฟล์ ตัดเฉพาะช่วงที่ต้องการ เลือกบิตเรต 96-320 kbps ใส่ชื่อเพลงได้ แปลงหลายไฟล์ ใช้ได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-21T08:39:00+07:00'
weight: 134
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- แปลง MP4 เป็น MP3
- แปลง MP4 เป็น MP3 ออนไลน์
- ดึงเสียงจากวิดีโอ
- แยกเสียงจากวิดีโอ
- แปลงวิดีโอเป็น MP3
- เสียงและวิดีโอ
---

แปลงไฟล์วิดีโอ MP4 (รวมถึง MOV, MKV, WEBM, AVI) ให้เหลือเฉพาะเสียงเป็นไฟล์ MP3 ได้ทันทีบนเบราว์เซอร์ ไฟล์วิดีโอของคุณ**ไม่ถูกอัปโหลด**ไปที่ใด ทุกขั้นตอนทำงานในเครื่องของคุณเอง

<style>
.m2m{--m2m-line:rgba(128,128,128,.35);--m2m-soft:rgba(128,128,128,.08);--m2m-accent:#2563eb;margin:1.2rem 0;font-size:16px;line-height:1.5}
.m2m *{box-sizing:border-box}
.m2m-drop{display:flex;flex-direction:column;align-items:center;gap:.4rem;padding:2rem 1rem;border:2px dashed var(--m2m-line);border-radius:14px;background:var(--m2m-soft);text-align:center;cursor:pointer}
.m2m-drop:hover,.m2m-drop:focus,.m2m-drop.m2m-over{border-color:var(--m2m-accent);outline:none}
.m2m-drop strong{font-size:1.1rem}
.m2m-drop span{font-size:.9rem;opacity:.75}
.m2m-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:.75rem;margin:1rem 0}
.m2m-field{display:flex;flex-direction:column;gap:.25rem;font-size:.85rem}
.m2m-field input,.m2m-field select{width:100%;padding:.5rem .6rem;border:1px solid var(--m2m-line);border-radius:8px;background:Canvas;color:CanvasText;font:inherit}
.m2m-check{flex-direction:row;align-items:center;gap:.5rem;padding-top:1.4rem}
.m2m-check input{width:auto}
.m2m details{border:1px solid var(--m2m-line);border-radius:10px;padding:.6rem .9rem;margin:.75rem 0}
.m2m summary{cursor:pointer;font-weight:600}
.m2m-prev{display:none;margin:1rem 0}
.m2m-prev video{width:100%;max-height:320px;border-radius:10px;background:#000}
.m2m-row{display:flex;flex-wrap:wrap;gap:.5rem;margin:.5rem 0}
.m2m-btn{padding:.55rem 1rem;border:1px solid var(--m2m-line);border-radius:8px;background:var(--m2m-soft);color:inherit;font:inherit;cursor:pointer}
.m2m-btn:disabled{opacity:.5;cursor:not-allowed}
.m2m-primary{background:var(--m2m-accent);border-color:var(--m2m-accent);color:#fff;font-weight:600}
.m2m-item{display:grid;grid-template-columns:1fr auto;gap:.25rem .75rem;align-items:center;padding:.7rem .8rem;border:1px solid var(--m2m-line);border-radius:10px;margin:.5rem 0}
.m2m-sel{border-color:var(--m2m-accent)}
.m2m-name{border:0;background:none;color:inherit;font:inherit;font-weight:600;text-align:left;padding:0;cursor:pointer;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.m2m-meta{grid-column:1;font-size:.82rem;opacity:.75}
.m2m-act{grid-column:2;grid-row:1 / span 2;display:flex;gap:.4rem;align-items:center}
.m2m-act a{padding:.4rem .8rem;border-radius:8px;background:var(--m2m-accent);color:#fff;text-decoration:none;font-size:.9rem}
.m2m-bar{grid-column:1 / span 2;height:6px;border-radius:3px;background:var(--m2m-soft);overflow:hidden}
.m2m-fill{height:100%;width:0;background:var(--m2m-accent);transition:width .2s}
.m2m-toast{min-height:1.5rem;font-size:.9rem;color:#b45309}
.m2m-note{font-size:.82rem;opacity:.75}
</style>
<div class="m2m" id="m2m">
<div class="m2m-drop" id="m2m-drop" tabindex="0" role="button" aria-label="เลือกไฟล์วิดีโอ">
<strong>ลากไฟล์วิดีโอมาวางที่นี่</strong>
<span>หรือคลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง (MP4, MOV, MKV, WEBM, AVI) เลือกได้หลายไฟล์</span>
<input type="file" id="m2m-file" accept="video/*,audio/*,.mp4,.m4v,.mov,.mkv,.webm,.avi,.3gp,.m4a" multiple hidden>
</div>
<div class="m2m-prev" id="m2m-prev">
<video id="m2m-video" controls playsinline preload="metadata"></video>
<div class="m2m-row">
<button type="button" class="m2m-btn" id="m2m-setstart">ตั้งจุดเริ่มตามตำแหน่งที่เล่น</button>
<button type="button" class="m2m-btn" id="m2m-setend">ตั้งจุดจบตามตำแหน่งที่เล่น</button>
</div>
<div class="m2m-note" id="m2m-vnote">คลิกชื่อไฟล์ในรายการเพื่อดูตัวอย่างและเลือกช่วงที่ต้องการตัด</div>
</div>
<div class="m2m-grid">
<label class="m2m-field">รูปแบบไฟล์
<select id="m2m-fmt"><option value="mp3" selected>MP3</option><option value="wav">WAV (ไม่บีบอัด)</option></select></label>
<label class="m2m-field">คุณภาพ (บิตเรต)
<select id="m2m-kbps"><option value="320">320 kbps (สูงสุด)</option><option value="256">256 kbps</option><option value="192" selected>192 kbps (แนะนำ)</option><option value="128">128 kbps</option><option value="96">96 kbps (ไฟล์เล็ก)</option></select></label>
<label class="m2m-field">ช่องเสียง
<select id="m2m-ch"><option value="2" selected>สเตอริโอ (ตามต้นฉบับ)</option><option value="1">โมโน (ไฟล์เล็กลง)</option></select></label>
<label class="m2m-field">ความถี่สุ่มตัวอย่าง
<select id="m2m-rate"><option value="48000">48000 Hz</option><option value="44100" selected>44100 Hz</option><option value="32000">32000 Hz</option><option value="22050">22050 Hz</option></select></label>
<label class="m2m-field">เริ่มที่ (ว่าง = ต้นไฟล์)
<input type="text" id="m2m-start" placeholder="เช่น 0:30 หรือ 30" inputmode="decimal" autocomplete="off"></label>
<label class="m2m-field">จบที่ (ว่าง = ท้ายไฟล์)
<input type="text" id="m2m-end" placeholder="เช่น 2:15 หรือ 135" inputmode="decimal" autocomplete="off"></label>
<label class="m2m-field m2m-check"><input type="checkbox" id="m2m-norm"> ปรับระดับเสียงให้ดังพอดี</label>
</div>
<details>
<summary>ใส่ชื่อเพลง ศิลปิน อัลบั้ม (แท็ก ID3 ไม่บังคับ)</summary>
<div class="m2m-grid">
<label class="m2m-field">ชื่อเพลง / ชื่อเรื่อง
<input type="text" id="m2m-title" maxlength="120" autocomplete="off"></label>
<label class="m2m-field">ศิลปิน / ผู้พูด
<input type="text" id="m2m-artist" maxlength="120" autocomplete="off"></label>
<label class="m2m-field">อัลบั้ม / รายการ
<input type="text" id="m2m-album" maxlength="120" autocomplete="off"></label>
</div>
<div class="m2m-note">ถ้าเว้นชื่อเพลงว่างแต่กรอกช่องอื่น ระบบจะใช้ชื่อไฟล์เป็นชื่อเพลงให้ (ใช้ได้กับรูปแบบ MP3 เท่านั้น)</div>
</details>
<div class="m2m-row">
<button type="button" class="m2m-btn m2m-primary" id="m2m-go">แปลงเป็นเสียง</button>
<button type="button" class="m2m-btn" id="m2m-cancel" disabled>ยกเลิก</button>
<button type="button" class="m2m-btn" id="m2m-zip" style="display:none">ดาวน์โหลดทั้งหมด (ZIP)</button>
<button type="button" class="m2m-btn" id="m2m-clear">ล้างรายการ</button>
</div>
<div class="m2m-toast" id="m2m-toast" role="status" aria-live="polite"></div>
<div id="m2m-list"></div>
<div class="m2m-note">เปิดแท็บนี้ค้างไว้ขณะแปลง การสลับแอปหรือล็อกหน้าจอบนมือถืออาจทำให้หยุดชั่วคราว</div>
</div>
<script>
(function () {
  var LAME_URLS = [
    'https://cdnjs.cloudflare.com/ajax/libs/lamejs/1.2.1/lame.min.js',
    'https://cdn.jsdelivr.net/npm/lamejs@1.2.1/lame.min.js'
  ];
  var items = [], seq = 0, sel = null, busy = false, cancelled = false, lameP = null, vurl = '';
  function $(id) { return document.getElementById(id); }
  function h(tag, cls, text) {
    var e = document.createElement(tag);
    if (cls) { e.className = cls; }
    if (text !== undefined) { e.textContent = text; }
    return e;
  }
  function toast(t) { $('m2m-toast').textContent = t || ''; }
  function fmtSize(n) {
    if (n >= 1048576) { return (n / 1048576).toFixed(1) + ' MB'; }
    return Math.max(1, Math.round(n / 1024)) + ' KB';
  }
  function fmtTime(s) {
    s = Math.max(0, s);
    var m = Math.floor(s / 60), r = (s - m * 60).toFixed(1);
    return m + ':' + (parseFloat(r) >= 10 ? r : '0' + r);
  }
  function parseTime(v) {
    v = (v || '').trim();
    if (!v) { return null; }
    var p = v.split(':'), t = 0, i, n;
    for (i = 0; i !== p.length; i++) {
      n = parseFloat(p[i].replace(',', '.'));
      if (isNaN(n) || n !== Math.abs(n)) { return NaN; }
      t = t * 60 + n;
    }
    return t;
  }
  function baseName(n) { return n.replace(/\.[^.]+$/, '') || 'audio'; }
  /* ดาวน์โหลดสคริปต์เป็นข้อความก่อน แล้วตรวจว่าเป็น JavaScript จริง จึงค่อยรัน
     ถ้า CDN ตอบกลับเป็นหน้า HTML (เช่น 404) จะไม่ถูกรัน จึงไม่เกิด
     Uncaught SyntaxError: Unexpected token '<' */
  function fetchLame(url) {
    return fetch(url, { mode: 'cors', credentials: 'omit' }).then(function (r) {
      var ct = r.headers.get('content-type') || '';
      if (!r.ok || ct.indexOf('html') !== -1) { throw new Error('bad response'); }
      return r.text();
    }).then(function (code) {
      if (code.charAt(0) === '<' || code.indexOf('Mp3Encoder') === -1) { throw new Error('not javascript'); }
      var s = document.createElement('script');
      s.text = code;
      document.head.appendChild(s);
      if (!window.lamejs) { throw new Error('lamejs missing'); }
      return true;
    });
  }
  function loadLame() {
    if (window.lamejs) { return Promise.resolve(true); }
    if (lameP) { return lameP; }
    lameP = LAME_URLS.reduce(function (p, url) {
      return p.catch(function () { return fetchLame(url); });
    }, Promise.reject(new Error('start'))).catch(function () {
      lameP = null;
      return false;
    });
    return lameP;
  }
  function addFiles(list) {
    var arr = Array.prototype.slice.call(list || []), i, f, added = 0;
    for (i = 0; i !== arr.length; i++) {
      f = arr[i];
      if (!/^(video|audio)\//.test(f.type) && !/\.(mp4|m4v|mov|mkv|webm|avi|3gp|m4a|mp3|wav|flv|ogv)$/i.test(f.name)) {
        toast('ข้ามไฟล์ ' + f.name + ' เพราะไม่ใช่ไฟล์วิดีโอหรือเสียง');
        continue;
      }
      items.push({ id: ++seq, file: f, state: 'wait', blob: null, url: '', pct: 0, msg: 'รอแปลง' });
      added++;
      if (f.size >= 524288000) { toast('ไฟล์ ' + f.name + ' ใหญ่มาก อาจทำให้เบราว์เซอร์ค้างโดยเฉพาะบนมือถือ'); }
    }
    if (added) { select(items[items.length - 1]); }
    render();
  }
  function select(it) {
    sel = it;
    if (vurl) { URL.revokeObjectURL(vurl); vurl = ''; }
    var v = $('m2m-video');
    if (!it) { v.removeAttribute('src'); $('m2m-prev').style.display = 'none'; return; }
    vurl = URL.createObjectURL(it.file);
    v.src = vurl;
    $('m2m-prev').style.display = 'block';
    $('m2m-vnote').textContent = 'กำลังดูตัวอย่าง: ' + it.file.name;
    render();
  }
  function render() {
    var list = $('m2m-list'), done = 0;
    list.textContent = '';
    items.forEach(function (it) {
      if (it.state === 'done') { done++; }
      var row = h('div', 'm2m-item' + (sel === it ? ' m2m-sel' : ''));
      var nm = h('button', 'm2m-name', it.file.name);
      nm.type = 'button';
      nm.onclick = function () { select(it); };
      var meta = h('span', 'm2m-meta', fmtSize(it.file.size) + ' · ' + it.msg);
      var bar = h('div', 'm2m-bar');
      var fill = h('div', 'm2m-fill');
      fill.style.width = it.pct + '%';
      bar.appendChild(fill);
      var act = h('div', 'm2m-act');
      if (it.url) {
        var a = h('a', '', 'บันทึก');
        a.href = it.url;
        a.download = it.outName;
        act.appendChild(a);
      }
      var rm = h('button', 'm2m-btn', '✕');
      rm.type = 'button';
      rm.title = 'ลบออกจากรายการ';
      rm.disabled = busy;
      rm.onclick = function () {
        if (it.url) { URL.revokeObjectURL(it.url); }
        items = items.filter(function (x) { return x !== it; });
        if (sel === it) { select(items.length ? items[items.length - 1] : null); }
        render();
      };
      act.appendChild(rm);
      it.metaEl = meta;
      it.fillEl = fill;
      row.appendChild(nm);
      row.appendChild(act);
      row.appendChild(meta);
      row.appendChild(bar);
      list.appendChild(row);
    });
    $('m2m-zip').style.display = done >= 2 ? '' : 'none';
  }
  function setP(it, pct, msg) {
    it.pct = pct;
    if (msg) { it.msg = msg; }
    if (it.fillEl) { it.fillEl.style.width = pct + '%'; }
    if (it.metaEl) { it.metaEl.textContent = fmtSize(it.file.size) + ' · ' + it.msg; }
  }
  function setBusy(b) {
    busy = b;
    $('m2m-go').disabled = b;
    $('m2m-cancel').disabled = !b;
    $('m2m-clear').disabled = b;
    render();
  }
  function opts() {
    var s = parseTime($('m2m-start').value), e = parseTime($('m2m-end').value);
    if ((s !== null && isNaN(s)) || (e !== null && isNaN(e))) {
      toast('รูปแบบเวลาไม่ถูกต้อง ใช้ เช่น 1:30 หรือ 90');
      return null;
    }
    if (s !== null && e !== null && s >= e) {
      toast('จุดเริ่มต้องน้อยกว่าจุดจบ');
      return null;
    }
    return {
      fmt: $('m2m-fmt').value,
      kbps: parseInt($('m2m-kbps').value, 10),
      rate: parseInt($('m2m-rate').value, 10),
      mono: $('m2m-ch').value === '1',
      norm: $('m2m-norm').checked,
      start: s, end: e,
      title: $('m2m-title').value.trim(),
      artist: $('m2m-artist').value.trim(),
      album: $('m2m-album').value.trim()
    };
  }
  function tick() { return new Promise(function (r) { setTimeout(r, 0); }); }
  function toI16(f, gain) {
    var o = new Int16Array(f.length), i, v;
    for (i = 0; i !== f.length; i++) {
      v = f[i] * gain;
      v = v > 1 ? 1 : (v === v && v >= -1 ? v : -1);
      o[i] = v < 0 ? v * 32768 : v * 32767;
    }
    return o;
  }
  function id3(tags, fallbackTitle) {
    var frames = [], total = 0;
    function frame(id, text) {
      if (!text) { return; }
      var u = [1, 255, 254], i, c, b = [], sz;
      for (i = 0; i !== text.length; i++) {
        c = text.charCodeAt(i);
        u.push(c & 255, (c >> 8) & 255);
      }
      sz = u.length;
      b.push(id.charCodeAt(0), id.charCodeAt(1), id.charCodeAt(2), id.charCodeAt(3));
      b.push((sz >> 24) & 255, (sz >> 16) & 255, (sz >> 8) & 255, sz & 255, 0, 0);
      frames.push(new Uint8Array(b), new Uint8Array(u));
      total += b.length + u.length;
    }
    if (!tags.title && !tags.artist && !tags.album) { return null; }
    frame('TIT2', tags.title || fallbackTitle);
    frame('TPE1', tags.artist);
    frame('TALB', tags.album);
    var head = new Uint8Array([73, 68, 51, 3, 0, 0, (total >> 21) & 127, (total >> 14) & 127, (total >> 7) & 127, total & 127]);
    return [head].concat(frames);
  }
  function wavBlob(chs, rate) {
    var n = chs[0].length, c = chs.length, i, k, p = 44;
    var buf = new ArrayBuffer(44 + n * c * 2), dv = new DataView(buf);
    function str(o, s) { for (var j = 0; j !== s.length; j++) { dv.setUint8(o + j, s.charCodeAt(j)); } }
    str(0, 'RIFF'); dv.setUint32(4, 36 + n * c * 2, true); str(8, 'WAVEfmt ');
    dv.setUint32(16, 16, true); dv.setUint16(20, 1, true); dv.setUint16(22, c, true);
    dv.setUint32(24, rate, true); dv.setUint32(28, rate * c * 2, true);
    dv.setUint16(32, c * 2, true); dv.setUint16(34, 16, true); str(36, 'data'); dv.setUint32(40, n * c * 2, true);
    for (i = 0; i !== n; i++) {
      for (k = 0; k !== c; k++) { dv.setInt16(p, chs[k][i], true); p += 2; }
    }
    return new Blob([buf], { type: 'audio/wav' });
  }
  async function convertOne(it, o) {
    var AC = window.AudioContext || window.webkitAudioContext, OAC = window.OfflineAudioContext || window.webkitOfflineAudioContext;
    if (!AC || !OAC) { throw new Error('เบราว์เซอร์นี้ไม่รองรับการประมวลผลเสียง กรุณาอัปเดตเบราว์เซอร์'); }
    setP(it, 5, 'กำลังอ่านไฟล์…');
    var buf = await it.file.arrayBuffer();
    if (cancelled) { throw new Error('ยกเลิกแล้ว'); }
    setP(it, 15, 'กำลังถอดรหัสแทร็กเสียง…');
    var ctx = new AC(), dec;
    try {
      dec = await ctx.decodeAudioData(buf);
    } catch (e) {
      throw new Error('อ่านเสียงไม่ได้ ไฟล์อาจไม่มีแทร็กเสียง หรือใช้โคเดกที่เบราว์เซอร์ไม่รองรับ');
    } finally {
      if (ctx.close) { ctx.close(); }
    }
    var dur = dec.duration;
    var st = o.start === null ? 0 : Math.max(0, o.start);
    var en = o.end === null ? dur : Math.min(dur, o.end);
    if (!(en > st)) { throw new Error('ช่วงที่ตัดอยู่นอกความยาวไฟล์ (' + fmtTime(dur) + ')'); }
    var ch = o.mono ? 1 : Math.min(2, dec.numberOfChannels);
    setP(it, 30, 'กำลังปรับช่องเสียงและความถี่…');
    var off = new OAC(ch, Math.max(1, Math.ceil((en - st) * o.rate)), o.rate);
    var src = off.createBufferSource();
    src.buffer = dec;
    src.connect(off.destination);
    src.start(0, st, en - st);
    var rend = await off.startRendering();
    var chans = [], c, gain = 1, peak = 0, j, a, d;
    for (c = 0; c !== ch; c++) { chans.push(rend.getChannelData(c)); }
    if (o.norm) {
      for (c = 0; c !== ch; c++) {
        d = chans[c];
        for (j = 0; j !== d.length; j++) { a = Math.abs(d[j]); if (a > peak) { peak = a; } }
      }
      gain = peak > 0 ? 0.97 / peak : 1;
    }
    var pcm = chans.map(function (x) { return toI16(x, gain); });
    var blob, ext;
    if (o.fmt === 'wav') {
      blob = wavBlob(pcm, o.rate);
      ext = '.wav';
    } else {
      var enc = new window.lamejs.Mp3Encoder(ch, o.rate, o.kbps), parts = [], step = 1152 * 20, i, l, r, out, n = pcm[0].length, count = 0;
      var tag = id3(o, baseName(it.file.name));
      if (tag) { parts = parts.concat(tag); }
      for (i = 0; n - i > 0; i += step) {
        l = pcm[0].subarray(i, i + step);
        out = ch === 2 ? enc.encodeBuffer(l, pcm[1].subarray(i, i + step)) : enc.encodeBuffer(l);
        if (out.length > 0) { parts.push(out); }
        count++;
        if (count % 8 === 0) {
          setP(it, 40 + Math.round((i / n) * 55), 'กำลังเข้ารหัส MP3…');
          await tick();
          if (cancelled) { throw new Error('ยกเลิกแล้ว'); }
        }
      }
      out = enc.flush();
      if (out.length > 0) { parts.push(out); }
      blob = new Blob(parts, { type: 'audio/mpeg' });
      ext = '.mp3';
    }
    it.blob = blob;
    it.outName = baseName(it.file.name) + ext;
    if (it.url) { URL.revokeObjectURL(it.url); }
    it.url = URL.createObjectURL(blob);
    setP(it, 100, 'เสร็จแล้ว · ' + fmtSize(blob.size) + ' · ' + fmtTime(en - st));
  }
  async function runAll() {
    if (busy) { return; }
    if (!items.length) { toast('เพิ่มไฟล์วิดีโอก่อน'); return; }
    var o = opts();
    if (!o) { return; }
    toast('');
    cancelled = false;
    setBusy(true);
    try {
      if (o.fmt === 'mp3') {
        var ok = await loadLame();
        if (!ok) {
          toast('โหลดตัวเข้ารหัส MP3 ไม่สำเร็จ โปรดตรวจสอบอินเทอร์เน็ตแล้วลองใหม่ หรือเลือกรูปแบบ WAV แทน');
          return;
        }
      }
      var k, it;
      for (k = 0; k !== items.length; k++) {
        it = items[k];
        if (cancelled) { break; }
        try {
          await convertOne(it, o);
          it.state = 'done';
        } catch (e) {
          it.state = 'error';
          it.blob = null;
          it.pct = 0;
          it.msg = 'ผิดพลาด: ' + (e && e.message ? e.message : 'ไม่ทราบสาเหตุ');
        }
        render();
        await tick();
      }
      toast(cancelled ? 'ยกเลิกการแปลงแล้ว' : 'แปลงเสร็จแล้ว กดบันทึกที่แต่ละไฟล์ได้เลย');
    } finally {
      setBusy(false);
    }
  }
  var CT = null;
  function crc32(u8) {
    var i, n, k, c, crc = 4294967295;
    if (!CT) {
      CT = [];
      for (n = 0; n !== 256; n++) {
        c = n;
        for (k = 0; k !== 8; k++) { c = (c & 1) ? (3988292384 ^ (c >>> 1)) : (c >>> 1); }
        CT[n] = c >>> 0;
      }
    }
    for (i = 0; i !== u8.length; i++) { crc = CT[(crc ^ u8[i]) & 255] ^ (crc >>> 8); }
    return (crc ^ 4294967295) >>> 0;
  }
  function makeZip(files) {
    var te = new TextEncoder(), chunks = [], cd = [], offset = 0, cdSize = 0;
    files.forEach(function (f) {
      var name = te.encode(f.name), crc = crc32(f.data), sz = f.data.length;
      var lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true); lh.setUint16(4, 20, true); lh.setUint16(6, 0x0800, true);
      lh.setUint16(10, 0, true); lh.setUint16(12, 0x21, true); lh.setUint32(14, crc, true);
      lh.setUint32(18, sz, true); lh.setUint32(22, sz, true); lh.setUint16(26, name.length, true);
      chunks.push(new Uint8Array(lh.buffer), name, f.data);
      var ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true); ch.setUint16(4, 20, true); ch.setUint16(6, 20, true); ch.setUint16(8, 0x0800, true);
      ch.setUint16(14, 0x21, true); ch.setUint32(16, crc, true); ch.setUint32(20, sz, true); ch.setUint32(24, sz, true);
      ch.setUint16(28, name.length, true); ch.setUint32(42, offset, true);
      cd.push(new Uint8Array(ch.buffer), name);
      cdSize += 46 + name.length;
      offset += 30 + name.length + sz;
    });
    var end = new DataView(new ArrayBuffer(22));
    end.setUint32(0, 0x06054b50, true); end.setUint16(8, files.length, true); end.setUint16(10, files.length, true);
    end.setUint32(12, cdSize, true); end.setUint32(16, offset, true);
    return new Blob(chunks.concat(cd, [new Uint8Array(end.buffer)]), { type: 'application/zip' });
  }
  async function downloadZip() {
    var done = items.filter(function (x) { return x.blob; }), files = [], used = {}, k, it, nm, n, ab;
    for (k = 0; k !== done.length; k++) {
      it = done[k];
      nm = it.outName;
      n = 1;
      while (used[nm]) { n++; nm = baseName(it.outName) + ' (' + n + ')' + it.outName.slice(baseName(it.outName).length); }
      used[nm] = true;
      ab = await it.blob.arrayBuffer();
      files.push({ name: nm, data: new Uint8Array(ab) });
    }
    var url = URL.createObjectURL(makeZip(files)), a = document.createElement('a');
    a.href = url;
    a.download = 'mp4-to-mp3.zip';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
  }
  var drop = $('m2m-drop'), fileIn = $('m2m-file');
  drop.onclick = function () { fileIn.click(); };
  drop.onkeydown = function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileIn.click(); } };
  drop.ondragover = function (e) { e.preventDefault(); drop.className = 'm2m-drop m2m-over'; };
  drop.ondragleave = function () { drop.className = 'm2m-drop'; };
  drop.ondrop = function (e) {
    e.preventDefault();
    drop.className = 'm2m-drop';
    addFiles(e.dataTransfer ? e.dataTransfer.files : []);
  };
  fileIn.onchange = function () { addFiles(fileIn.files); fileIn.value = ''; };
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData ? e.clipboardData.files : null;
    if (f && f.length) { addFiles(f); }
  });
  $('m2m-go').onclick = runAll;
  $('m2m-cancel').onclick = function () { cancelled = true; toast('กำลังยกเลิก…'); };
  $('m2m-zip').onclick = downloadZip;
  $('m2m-clear').onclick = function () {
    items.forEach(function (x) { if (x.url) { URL.revokeObjectURL(x.url); } });
    items = [];
    select(null);
    toast('');
    render();
  };
  $('m2m-setstart').onclick = function () { $('m2m-start').value = fmtTime($('m2m-video').currentTime); };
  $('m2m-setend').onclick = function () { $('m2m-end').value = fmtTime($('m2m-video').currentTime); };
  $('m2m-video').onerror = function () {
    $('m2m-vnote').textContent = 'เบราว์เซอร์เล่นตัวอย่างไฟล์นี้ไม่ได้ แต่ยังแปลงได้ถ้ามีแทร็กเสียงที่รองรับ';
  };
  $('m2m-fmt').onchange = function () { $('m2m-kbps').disabled = this.value === 'wav'; };
})();
</script>

## วิธีใช้งาน

1. **เพิ่มไฟล์วิดีโอ** ลากไฟล์ MP4 มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด `Ctrl`+`V` เพื่อวาง เลือกได้หลายไฟล์พร้อมกัน
2. **ดูตัวอย่าง (ไม่บังคับ)** คลิกชื่อไฟล์ในรายการเพื่อเล่นตัวอย่าง เลื่อนไปยังตำแหน่งที่ต้องการ แล้วกด "ตั้งจุดเริ่ม" หรือ "ตั้งจุดจบ" เพื่อตัดเฉพาะช่วงนั้น หรือพิมพ์เวลาเอง เช่น `0:30` และ `2:15`
3. **เลือกรูปแบบและคุณภาพ** MP3 ที่ 192 kbps เหมาะกับการใช้งานทั่วไป ถ้าต้องการไฟล์เล็กให้ลดบิตเรต หรือเลือกโมโน
4. **ปรับแต่งเพิ่มเติม (ไม่บังคับ)** เปิด "ปรับระดับเสียงให้ดังพอดี" ถ้าเสียงเบา และกรอกชื่อเพลง ศิลปิน อัลบั้ม เพื่อฝังแท็กในไฟล์
5. **กด "แปลงเป็นเสียง"** รอจนแถบความคืบหน้าเต็ม ถ้าต้องการหยุดให้กด "ยกเลิก"
6. **บันทึกไฟล์** กด "บันทึก" ที่ไฟล์ที่ต้องการ หรือ "ดาวน์โหลดทั้งหมด (ZIP)" เมื่อแปลงหลายไฟล์

## อธิบายคำศัพท์ที่ควรรู้

- **MP4**: ไฟล์วิดีโอที่ใช้กันทั่วไป เก็บทั้งภาพและเสียงไว้ในไฟล์เดียว เช่น คลิปจากมือถือ หรือวิดีโอที่โหลดจากเว็บ
- **MP3**: ไฟล์เสียงขนาดเล็กที่เปิดได้เกือบทุกอุปกรณ์ เหมาะกับเพลง พอดแคสต์ และการเรียนผ่านเสียง
- **บิตเรต (Bitrate, kbps)**: ปริมาณข้อมูลเสียงต่อวินาที ยิ่งสูงยิ่งคมชัดแต่ไฟล์ใหญ่ขึ้น
- **ความถี่สุ่มตัวอย่าง (Sample rate, Hz)**: จำนวนครั้งที่เก็บตัวอย่างเสียงต่อวินาที 44100 Hz เป็นมาตรฐานของเพลง 48000 Hz เป็นมาตรฐานของวิดีโอ
- **โมโน (Mono) / สเตอริโอ (Stereo)**: โมโนมีเสียงช่องเดียว ไฟล์เล็กกว่า เหมาะกับเสียงพูด สเตอริโอมีสองช่อง ให้มิติเสียงซ้าย-ขวา
- **ปรับระดับเสียง (Normalize)**: ขยายเสียงทั้งไฟล์ให้จุดที่ดังที่สุดพอดีเพดาน โดยไม่ทำให้เสียงแตก
- **ตัดช่วง (Trim)**: เลือกเก็บเฉพาะช่วงเวลาที่ต้องการ แล้วตัดส่วนหน้าและท้ายทิ้ง
- **แท็ก ID3 (ID3 tag)**: ข้อมูลที่ฝังในไฟล์ MP3 เช่น ชื่อเพลง ศิลปิน อัลบั้ม ช่วยให้เครื่องเล่นแสดงชื่อได้ถูกต้อง
- **WAV**: ไฟล์เสียงแบบไม่บีบอัด คุณภาพตรงตามต้นฉบับ แต่ไฟล์ใหญ่กว่า MP3 หลายเท่า เหมาะกับงานตัดต่อต่อ
- **การเข้ารหัสใหม่ (Re-encode)**: การบีบอัดเสียงอีกรอบ เมื่อแปลงจาก AAC ใน MP4 เป็น MP3 จึงมีการสูญเสียรายละเอียดเล็กน้อยเสมอ บิตเรตสูงช่วยลดผลกระทบ แต่คืนรายละเอียดที่หายไปแล้วไม่ได้
- **ZIP**: ไฟล์รวมหลายไฟล์ไว้ด้วยกัน ใช้ดาวน์โหลดผลลัพธ์ทั้งหมดในครั้งเดียว

## เลือกบิตเรตอย่างไร

| บิตเรต | ขนาดโดยประมาณต่อ 1 นาที | เหมาะกับ |
| --- | --- | --- |
| 96 kbps | 0.7 MB | เสียงพูด บันทึกประชุม ต้องการไฟล์เล็กมาก |
| 128 kbps | 1.0 MB | พอดแคสต์ บทเรียน ฟังบนมือถือ |
| 192 kbps | 1.4 MB | ใช้งานทั่วไป สมดุลระหว่างคุณภาพและขนาด |
| 256 kbps | 1.9 MB | เพลงที่ต้องการคุณภาพดี |
| 320 kbps | 2.4 MB | คุณภาพสูงสุดของ MP3 |

## แก้ปัญหาที่พบบ่อย

- **ขึ้นว่าอ่านเสียงไม่ได้**: ไฟล์อาจไม่มีแทร็กเสียง หรือใช้โคเดกที่เบราว์เซอร์ไม่รองรับ ลองเปิดไฟล์ด้วยเบราว์เซอร์รุ่นใหม่ เช่น Chrome, Edge, Safari หรือ Firefox
- **โหลดตัวเข้ารหัส MP3 ไม่สำเร็จ**: ตรวจสอบอินเทอร์เน็ต ปิดตัวบล็อกโฆษณาชั่วคราว แล้วลองใหม่ หรือเลือกรูปแบบ WAV ซึ่งไม่ต้องโหลดเพิ่ม
- **เบราว์เซอร์ค้างหรือหน่วยความจำเต็ม**: ไฟล์ใหญ่กว่าประมาณ 500 MB อาจหนักเกินไปสำหรับมือถือ ให้ลองบนคอมพิวเตอร์ หรือตัดแยกเป็นช่วงสั้น ๆ ทีละส่วน
- **แปลงหยุดกลางคัน**: บนมือถือ การสลับแอปหรือล็อกหน้าจอทำให้แท็บถูกพักการทำงาน ให้เปิดแท็บค้างไว้จนเสร็จ
- **เสียงเบาเกินไป**: เปิด "ปรับระดับเสียงให้ดังพอดี" แล้วแปลงใหม่

## ความเป็นส่วนตัว

การถอดรหัส ตัด ปรับเสียง และเข้ารหัสทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ **ไฟล์วิดีโอและเสียงไม่ถูกส่งไปยังเซิร์ฟเวอร์ใด** สิ่งเดียวที่ดาวน์โหลดเพิ่มคือสคริปต์ตัวเข้ารหัส MP3 เมื่อคุณกดแปลงเป็น MP3 ครั้งแรก ตรวจสอบได้เองโดยเปิดแท็บ Network ในเครื่องมือนักพัฒนาของเบราว์เซอร์ แล้วดูว่าไม่มีการส่งไฟล์ออก

## คำถามที่พบบ่อย

### แปลง MP4 เป็น MP3 ต้องเสียเงินหรือสมัครสมาชิกไหม

ไม่ต้อง ใช้ได้ฟรีและไม่ต้องสมัครสมาชิก ไม่มีลายน้ำ และไม่ต้องติดตั้งโปรแกรม

### ไฟล์ของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือเปล่า

ไม่ถูกอัปโหลด การแปลงทำงานในเครื่องของคุณทั้งหมด จึงเหมาะกับวิดีโอส่วนตัวหรือเอกสารที่เป็นความลับ

### ใช้กับ iPhone หรือ Android ได้ไหม

ได้ ใช้ได้กับเบราว์เซอร์รุ่นใหม่บนมือถือและคอมพิวเตอร์ แต่ไฟล์ขนาดใหญ่มากควรแปลงบนคอมพิวเตอร์

### แปลงเป็น MP3 แล้วคุณภาพเสียงลดลงไหม

MP3 เป็นการบีบอัดแบบสูญเสีย จึงมีการลดรายละเอียดเล็กน้อย เลือก 192 kbps ขึ้นไปสำหรับเพลง การเพิ่มบิตเรตไม่ช่วยเพิ่มคุณภาพเกินที่มีในวิดีโอต้นฉบับ ถ้าต้องการไม่ให้สูญเสียเพิ่ม ให้เลือก WAV

### ตัดเฉพาะบางช่วงของวิดีโอได้ไหม

ได้ ใส่เวลาเริ่มและเวลาจบ หรือเล่นตัวอย่างแล้วกดปุ่มตั้งจุดตามตำแหน่งที่เล่น ช่วงเวลานี้ใช้กับทุกไฟล์ในรายการ

### รองรับไฟล์วิดีโอชนิดอื่นนอกจาก MP4 ไหม

รองรับ MOV, MKV, WEBM, AVI, M4V และ 3GP รวมถึงไฟล์เสียงอย่าง M4A ทั้งนี้ขึ้นกับโคเดกที่เบราว์เซอร์ของคุณถอดรหัสได้

### ใช้แปลงเสียงจากวิดีโอของคนอื่นได้ไหม

ควรแปลงเฉพาะไฟล์ที่คุณเป็นเจ้าของหรือได้รับอนุญาตให้ใช้งาน เพราะเพลงและวิดีโอส่วนใหญ่มีลิขสิทธิ์คุ้มครอง