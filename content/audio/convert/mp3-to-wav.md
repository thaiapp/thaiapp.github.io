---
title: แปลง MP3 เป็น WAV ออนไลน์ ฟรี
h1: แปลง MP3 เป็น WAV
description: แปลง MP3 เป็น WAV ออนไลน์ฟรี ทำงานในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ เลือกความลึกบิต ความถี่ และช่องเสียงได้ ใช้ได้ทั้งมือถือและคอมพิวเตอร์ ไม่ต้องลงโปรแกรม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-21T00:00:00+07:00'
weight: 138
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- แปลง MP3 เป็น WAV
- แปลง MP3 เป็น WAV ออนไลน์
- เสียงและวิดีโอ
---

เครื่องมือนี้แปลงไฟล์ MP3 เป็น WAV ได้ในเบราว์เซอร์ของคุณเอง ไฟล์เสียงไม่ถูกส่งไปยังเซิร์ฟเวอร์ ไม่ต้องติดตั้งโปรแกรม และเลือกตั้งค่าเอาต์พุตได้ ทั้งความลึกบิต ความถี่สุ่มตัวอย่าง จำนวนช่องเสียง และการปรับระดับเสียง เหมาะกับงานตัดต่อ เบิร์นซีดี หรืออุปกรณ์ที่ต้องการไฟล์ WAV

<div class="m2w" id="m2w">
<div class="m2w-drop" id="m2wDrop" tabindex="0" role="button" aria-label="เลือกไฟล์เสียงหรือวางไฟล์ที่นี่">
<p class="m2w-drop-title">ลากไฟล์เสียงมาวางที่นี่ คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง</p>
<p class="m2w-hint">รองรับ MP3, M4A, AAC, OGG, Opus, FLAC, WAV และเสียงจากไฟล์วิดีโอ เลือกได้หลายไฟล์พร้อมกัน</p>
<button type="button" class="m2w-btn" id="m2wPick">เลือกไฟล์</button>
<input type="file" id="m2wFile" accept="audio/*,video/*,.mp3,.m4a,.aac,.ogg,.opus,.flac,.wav,.wma,.mp4,.mov,.webm" multiple hidden>
</div>
<div class="m2w-opts">
<label class="m2w-field"><span>ความลึกบิต (Bit depth)</span>
<select id="m2wBits">
<option value="16" selected>16-bit PCM (มาตรฐานซีดี)</option>
<option value="24">24-bit PCM (งานสตูดิโอ)</option>
<option value="32">32-bit float (งานตัดต่อ)</option>
</select></label>
<label class="m2w-field"><span>ความถี่สุ่มตัวอย่าง (Sample rate)</span>
<select id="m2wRate">
<option value="44100" selected>44,100 Hz (มาตรฐานซีดี)</option>
<option value="48000">48,000 Hz (งานวิดีโอ)</option>
<option value="32000">32,000 Hz</option>
<option value="22050">22,050 Hz</option>
<option value="16000">16,000 Hz (เสียงพูด)</option>
<option value="8000">8,000 Hz</option>
</select></label>
<label class="m2w-field"><span>ช่องเสียง (Channels)</span>
<select id="m2wCh">
<option value="0" selected>ตามต้นฉบับ</option>
<option value="2">สเตอริโอ (2 ช่อง)</option>
<option value="1">โมโน (1 ช่อง)</option>
</select></label>
<label class="m2w-check"><input type="checkbox" id="m2wNorm"> <span>ปรับระดับเสียงสูงสุดเป็น -1 dBFS (Normalize)</span></label>
</div>
<div class="m2w-actions">
<button type="button" class="m2w-btn" id="m2wConvert" disabled>แปลงทั้งหมด</button>
<button type="button" class="m2w-btn m2w-alt" id="m2wZip" disabled>ดาวน์โหลดทั้งหมด (Zip)</button>
<button type="button" class="m2w-btn m2w-alt" id="m2wClear" disabled>ล้างทั้งหมด</button>
</div>
<p class="m2w-msg" id="m2wMsg" role="status" aria-live="polite"></p>
<p class="m2w-total" id="m2wTotal"></p>
<ul class="m2w-list" id="m2wList"></ul>
<p class="m2w-hint">ประมวลผลในเบราว์เซอร์ทั้งหมด ไฟล์ไม่ถูกอัปโหลด เปิดแท็บนี้ค้างไว้ระหว่างแปลง เพราะการสลับแอปหรือล็อกหน้าจอบนมือถืออาจทำให้หยุดชั่วคราว</p>
<noscript><p class="m2w-msg m2w-err">เครื่องมือนี้ต้องเปิดใช้งาน JavaScript ในเบราว์เซอร์</p></noscript>
</div>
<style>
.m2w{margin:1.5rem 0;font-size:1rem;line-height:1.6}
.m2w [hidden]{display:none!important}
.m2w-drop{border:2px dashed rgba(128,128,128,.55);border-radius:.75rem;padding:1.5rem 1rem;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
.m2w-drop:hover,.m2w-drop:focus-visible,.m2w-drop.m2w-over{border-color:#2563eb;background:rgba(37,99,235,.08);outline:none}
.m2w-drop-title{margin:0 0 .25rem;font-weight:600}
.m2w-hint{margin:.25rem 0 .75rem;font-size:.875rem;opacity:.75}
.m2w-btn{display:inline-block;padding:.55rem 1.1rem;border:1px solid #2563eb;border-radius:.5rem;background:#2563eb;color:#fff;font:inherit;font-weight:600;cursor:pointer;text-decoration:none}
.m2w-btn:hover:not(:disabled){filter:brightness(1.1)}
.m2w-btn:disabled{opacity:.45;cursor:not-allowed}
.m2w-alt{background:transparent;color:inherit;border-color:rgba(128,128,128,.6)}
.m2w-sm{padding:.3rem .7rem;font-size:.875rem}
.m2w-opts{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:.75rem;margin:1rem 0}
.m2w-field{display:flex;flex-direction:column;gap:.25rem;font-size:.875rem}
.m2w-field select{width:100%;padding:.5rem;border:1px solid rgba(128,128,128,.6);border-radius:.5rem;background:Canvas;color:CanvasText;font:inherit}
.m2w-check{grid-column:1/-1;display:flex;align-items:center;gap:.4rem;font-size:.9rem}
.m2w-actions{display:flex;flex-wrap:wrap;gap:.5rem;margin:.5rem 0}
.m2w-msg{min-height:1.5rem;margin:.5rem 0;font-size:.9rem}
.m2w-total{margin:0 0 .5rem;font-size:.875rem;opacity:.75}
.m2w-err{color:#dc2626}
.m2w-list{list-style:none;margin:0 0 .5rem;padding:0}
.m2w-item{border:1px solid rgba(128,128,128,.4);border-radius:.6rem;padding:.7rem .8rem;margin:.5rem 0}
.m2w-row{display:flex;align-items:flex-start;justify-content:space-between;gap:.75rem;flex-wrap:wrap}
.m2w-info{flex:1 1 220px;min-width:0}
.m2w-name{font-weight:600;overflow-wrap:anywhere}
.m2w-meta{font-size:.85rem;opacity:.8}
.m2w-meta.m2w-err{opacity:1}
.m2w-btns{display:flex;align-items:center;gap:.5rem}
.m2w-x{padding:.25rem .5rem;border:1px solid rgba(128,128,128,.5);border-radius:.4rem;background:transparent;color:inherit;font:inherit;cursor:pointer}
.m2w-x:disabled{opacity:.4;cursor:not-allowed}
.m2w-item audio{display:block;width:100%;margin-top:.6rem}
</style>
<script>
(function () {
  'use strict';
  var root = document.getElementById('m2w');
  if (!root) { return; }
  var OAC = window.OfflineAudioContext || window.webkitOfflineAudioContext;
  function $(id) { return document.getElementById(id); }
  var drop = $('m2wDrop'), pick = $('m2wPick'), input = $('m2wFile'), list = $('m2wList');
  var msg = $('m2wMsg'), total = $('m2wTotal'), bitsSel = $('m2wBits'), rateSel = $('m2wRate');
  var chSel = $('m2wCh'), normChk = $('m2wNorm'), convBtn = $('m2wConvert'), zipBtn = $('m2wZip'), clearBtn = $('m2wClear');
  var items = [], seq = 0, busy = false;
  var MAX_BYTES = 500 * 1024 * 1024;
  var EXT = /\.(mp3|m4a|aac|ogg|oga|opus|flac|wav|wma|aif|aiff|amr|mp4|m4v|mov|webm|mkv|3gp)$/i;
  /* pure:start */
  var CRC_T = (function () {
    var t = [], c, n, k;
    for (n = 0; n < 256; n++) {
      c = n;
      for (k = 0; k < 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
      t[n] = c >>> 0;
    }
    return t;
  })();
  function crc32(u8) {
    var c = 0xFFFFFFFF, i;
    for (i = 0; i < u8.length; i++) { c = CRC_T[(c ^ u8[i]) & 255] ^ (c >>> 8); }
    return (c ^ 0xFFFFFFFF) >>> 0;
  }
  function friendly(text) { var e = new Error(text); e.friendly = true; return e; }
  function prepare(buffer, chOpt) {
    var n = buffer.numberOfChannels, len = buffer.length, ch = [], c, i, d, m;
    for (c = 0; c < n; c++) { ch.push(buffer.getChannelData(c)); }
    if (!chOpt || chOpt === n) { return ch; }
    if (chOpt === 1) {
      m = new Float32Array(len);
      for (c = 0; c < n; c++) {
        d = ch[c];
        for (i = 0; i < len; i++) { m[i] += d[i] / n; }
      }
      return [m];
    }
    if (n === 1) { return [ch[0], ch[0]]; }
    return [ch[0], ch[1]];
  }
  function peakOf(ch) {
    var p = 0, c, i, d, v;
    for (c = 0; c < ch.length; c++) {
      d = ch[c];
      for (i = 0; i < d.length; i++) { v = d[i] < 0 ? -d[i] : d[i]; if (v > p) { p = v; } }
    }
    return p;
  }
  function encodeWav(ch, rate, bits, gain) {
    var nCh = ch.length, len = ch[0].length, bytes = bits / 8, isFloat = (bits === 32);
    var dataSize = len * nCh * bytes, pad = dataSize % 2, hdr = isFloat ? 56 : 44;
    if (len === 0) { throw friendly('ไม่พบข้อมูลเสียงในไฟล์นี้'); }
    if (hdr + dataSize + pad > 4294967295) { throw friendly('ไฟล์ WAV ที่ได้จะใหญ่เกิน 4 GB ซึ่งเป็นขีดจำกัดของรูปแบบ WAV ลองลดความถี่หรือเลือกโมโน'); }
    var buf = new ArrayBuffer(hdr + dataSize + pad), v = new DataView(buf), o = 0, i, c, s, x;
    function str(t) { for (var k = 0; k < t.length; k++) { v.setUint8(o++, t.charCodeAt(k)); } }
    str('RIFF'); v.setUint32(o, buf.byteLength - 8, true); o += 4; str('WAVE');
    str('fmt '); v.setUint32(o, 16, true); o += 4;
    v.setUint16(o, isFloat ? 3 : 1, true); o += 2;
    v.setUint16(o, nCh, true); o += 2;
    v.setUint32(o, rate, true); o += 4;
    v.setUint32(o, rate * nCh * bytes, true); o += 4;
    v.setUint16(o, nCh * bytes, true); o += 2;
    v.setUint16(o, bits, true); o += 2;
    if (isFloat) { str('fact'); v.setUint32(o, 4, true); o += 4; v.setUint32(o, len, true); o += 4; }
    str('data'); v.setUint32(o, dataSize, true); o += 4;
    for (i = 0; i < len; i++) {
      for (c = 0; c < nCh; c++) {
        x = ch[c][i] * gain;
        if (isFloat) { v.setFloat32(o, x, true); o += 4; continue; }
        if (x > 1) { x = 1; } else if (x < -1) { x = -1; }
        if (bits === 16) {
          s = Math.round(x < 0 ? x * 32768 : x * 32767);
          v.setInt16(o, s, true); o += 2;
        } else {
          s = Math.round(x < 0 ? x * 8388608 : x * 8388607);
          v.setUint8(o, s & 255); v.setUint8(o + 1, (s >> 8) & 255); v.setUint8(o + 2, (s >> 16) & 255); o += 3;
        }
      }
    }
    return new Blob([buf], { type: 'audio/wav' });
  }
  async function makeZip(files) {
    var enc = new TextEncoder(), parts = [], central = [], offset = 0, i, f, name, u8, crc, size, lh, ch;
    for (i = 0; i < files.length; i++) {
      f = files[i];
      name = enc.encode(f.name);
      u8 = new Uint8Array(await f.blob.arrayBuffer());
      crc = crc32(u8);
      size = u8.length;
      lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true); lh.setUint16(4, 20, true); lh.setUint16(6, 0x0800, true);
      lh.setUint16(8, 0, true); lh.setUint16(10, 0, true); lh.setUint16(12, 0x21, true);
      lh.setUint32(14, crc, true); lh.setUint32(18, size, true); lh.setUint32(22, size, true);
      lh.setUint16(26, name.length, true); lh.setUint16(28, 0, true);
      ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true); ch.setUint16(4, 20, true); ch.setUint16(6, 20, true); ch.setUint16(8, 0x0800, true);
      ch.setUint16(10, 0, true); ch.setUint16(12, 0, true); ch.setUint16(14, 0x21, true);
      ch.setUint32(16, crc, true); ch.setUint32(20, size, true); ch.setUint32(24, size, true);
      ch.setUint16(28, name.length, true); ch.setUint16(30, 0, true); ch.setUint16(32, 0, true);
      ch.setUint16(34, 0, true); ch.setUint16(36, 0, true); ch.setUint32(38, 0, true); ch.setUint32(42, offset, true);
      parts.push(lh.buffer, name, f.blob);
      central.push(ch.buffer, name);
      offset += 30 + name.length + size;
    }
    var cdSize = 0;
    for (i = 0; i < central.length; i++) { cdSize += central[i].byteLength !== undefined ? central[i].byteLength : central[i].length; }
    if (offset + cdSize + 22 > 4294967295) { throw friendly('ไฟล์รวมใหญ่เกิน 4 GB สำหรับ Zip กรุณาดาวน์โหลดทีละไฟล์'); }
    var end = new DataView(new ArrayBuffer(22));
    end.setUint32(0, 0x06054b50, true); end.setUint16(4, 0, true); end.setUint16(6, 0, true);
    end.setUint16(8, files.length, true); end.setUint16(10, files.length, true);
    end.setUint32(12, cdSize, true); end.setUint32(16, offset, true); end.setUint16(20, 0, true);
    return new Blob(parts.concat(central, [end.buffer]), { type: 'application/zip' });
  }
  /* pure:end */
  function setMsg(t, isErr) { msg.textContent = t || ''; msg.className = 'm2w-msg' + (isErr ? ' m2w-err' : ''); }
  function pad2(n) { return n < 10 ? '0' + n : String(n); }
  function fmtTime(s) {
    s = Math.round(s);
    var h = Math.floor(s / 3600), m = Math.floor((s % 3600) / 60), x = s % 60;
    return (h ? h + ':' + pad2(m) : String(m)) + ':' + pad2(x);
  }
  function fmtSize(b) {
    if (b >= 1073741824) { return (b / 1073741824).toFixed(2) + ' GB'; }
    if (b >= 1048576) { return (b / 1048576).toFixed(1) + ' MB'; }
    return Math.max(1, Math.round(b / 1024)) + ' KB';
  }
  function num(n) { return n.toLocaleString('en-US'); }
  function chLabel(c) { return c === 1 ? 'โมโน' : (c === 2 ? 'สเตอริโอ' : 'ตามต้นฉบับ'); }
  function opts() {
    return { bits: +bitsSel.value, rate: +rateSel.value, ch: +chSel.value, norm: !!normChk.checked };
  }
  function settingText(o) {
    return (o.bits === 32 ? '32-bit float' : o.bits + '-bit') + ' · ' + num(o.rate) + ' Hz · ' + chLabel(o.ch) + (o.norm ? ' · Normalize' : '');
  }
  function estimate(item, o) {
    if (!item.duration) { return 0; }
    return Math.round(item.duration * o.rate * (o.ch || 2) * o.bits / 8) + (o.bits === 32 ? 56 : 44);
  }
  function wavName(n) {
    var b = String(n).replace(/\.[^.\/\\]+$/, '').replace(/[\\\/:*?"\u003c\u003e|]/g, '_').trim();
    return (b || 'audio') + '.wav';
  }
  function uniqueName(n, used) {
    var base = n.replace(/\.wav$/i, ''), out = n, k = 1;
    while (used[out.toLowerCase()]) { out = base + '-' + (k++) + '.wav'; }
    used[out.toLowerCase()] = true;
    return out;
  }
  function el(tag, cls, text) {
    var e = document.createElement(tag);
    if (cls) { e.className = cls; }
    if (text != null) { e.textContent = text; }
    return e;
  }
  function tick() { return new Promise(function (r) { setTimeout(r, 20); }); }
  function saveBlob(blob, name) {
    var u = URL.createObjectURL(blob), a = document.createElement('a');
    a.href = u; a.download = name;
    document.body.appendChild(a); a.click(); document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(u); }, 5000);
  }
  function buildRow(item) {
    var li = el('li', 'm2w-item'), top = el('div', 'm2w-row'), info = el('div', 'm2w-info');
    var name = el('div', 'm2w-name', item.file.name), meta = el('div', 'm2w-meta'), btns = el('div', 'm2w-btns');
    var dl = el('a', 'm2w-btn m2w-sm', 'ดาวน์โหลด WAV'), rm = el('button', 'm2w-x', '✕');
    dl.hidden = true;
    rm.type = 'button';
    rm.setAttribute('aria-label', 'ลบ ' + item.file.name);
    rm.addEventListener('click', function () { if (!busy) { removeItem(item); } });
    info.appendChild(name); info.appendChild(meta);
    btns.appendChild(dl); btns.appendChild(rm);
    top.appendChild(info); top.appendChild(btns); li.appendChild(top);
    item.ui = { li: li, meta: meta, dl: dl, rm: rm, audio: null };
    list.appendChild(li);
  }
  function updateRow(item) {
    var u = item.ui, o = opts(), t = [];
    u.meta.className = 'm2w-meta';
    if (item.status === 'busy') {
      t.push(item.stage);
    } else if (item.status === 'error') {
      t.push(item.err); u.meta.className += ' m2w-err';
    } else if (item.status === 'done') {
      t.push('เสร็จแล้ว'); t.push('WAV ' + fmtSize(item.blob.size)); t.push(item.info);
      if (item.key !== JSON.stringify(o)) { t.push('ตั้งค่าเปลี่ยนแล้ว กด "แปลงทั้งหมด" เพื่อแปลงใหม่'); }
    } else {
      t.push(fmtSize(item.file.size));
      if (item.duration) { t.push(fmtTime(item.duration)); t.push('WAV ประมาณ ' + fmtSize(estimate(item, o))); }
    }
    u.meta.textContent = t.join(' · ');
    u.dl.hidden = !(item.status === 'done' && item.url);
  }
  function clearResult(item) {
    if (item.ui && item.ui.audio) {
      try { item.ui.audio.pause(); } catch (e) { /* ignore */ }
      item.ui.audio.removeAttribute('src');
      if (item.ui.audio.parentNode) { item.ui.audio.parentNode.removeChild(item.ui.audio); }
      item.ui.audio = null;
    }
    if (item.url) { URL.revokeObjectURL(item.url); }
    item.url = ''; item.blob = null;
  }
  function showResult(item, blob, o) {
    clearResult(item);
    item.blob = blob; item.url = URL.createObjectURL(blob);
    item.key = JSON.stringify(o); item.info = settingText(o);
    item.ui.dl.href = item.url; item.ui.dl.download = wavName(item.file.name);
    var a = document.createElement('audio');
    a.controls = true; a.preload = 'none'; a.src = item.url;
    item.ui.li.appendChild(a); item.ui.audio = a;
  }
  function removeItem(item) {
    clearResult(item);
    if (item.ui.li.parentNode) { item.ui.li.parentNode.removeChild(item.ui.li); }
    items.splice(items.indexOf(item), 1);
    refresh();
  }
  function refresh() {
    var done = items.filter(function (i) { return i.status === 'done'; }).length;
    total.textContent = items.length ? ('ทั้งหมด ' + items.length + ' ไฟล์ · แปลงแล้ว ' + done + ' ไฟล์') : '';
    convBtn.disabled = busy || !items.length;
    convBtn.textContent = busy ? 'กำลังแปลง…' : 'แปลงทั้งหมด';
    zipBtn.disabled = busy || done < 2;
    clearBtn.disabled = busy || !items.length;
    items.forEach(function (i) { i.ui.rm.disabled = busy; });
  }
  function readDuration(item) {
    try {
      var url = URL.createObjectURL(item.file), a = document.createElement('audio');
      var finish = function () { a.removeAttribute('src'); URL.revokeObjectURL(url); };
      a.preload = 'metadata';
      a.onloadedmetadata = function () {
        if (isFinite(a.duration) && a.duration > 0) { item.duration = a.duration; updateRow(item); }
        finish();
      };
      a.onerror = finish;
      a.src = url;
    } catch (e) { /* duration is optional */ }
  }
  function addFiles(fl) {
    var arr = Array.prototype.slice.call(fl), added = 0, skipped = [];
    arr.forEach(function (f) {
      var okType = /^(audio|video)\//.test(f.type) || EXT.test(f.name);
      if (!okType) { skipped.push(f.name + ' (ไม่ใช่ไฟล์เสียงหรือวิดีโอ)'); return; }
      if (f.size > MAX_BYTES) { skipped.push(f.name + ' (ใหญ่เกิน 500 MB)'); return; }
      var item = { id: ++seq, file: f, status: 'wait', stage: '', err: '', duration: 0, blob: null, url: '', key: '', info: '' };
      items.push(item); buildRow(item); updateRow(item); readDuration(item); added++;
    });
    if (skipped.length) { setMsg('ข้ามไฟล์: ' + skipped.join(', '), true); }
    else { setMsg(added ? 'เพิ่ม ' + added + ' ไฟล์แล้ว ตั้งค่าที่ต้องการ แล้วกด "แปลงทั้งหมด"' : ''); }
    refresh();
  }
  function decode(ctx, ab) {
    return new Promise(function (resolve, reject) {
      var p = ctx.decodeAudioData(ab, resolve, function (e) { reject(e || new Error('decode failed')); });
      if (p && typeof p.catch === 'function') { p.catch(function () { /* handled by callback */ }); }
    });
  }
  function friendlyError(e) {
    var n = e && e.name, m = String((e && e.message) || '');
    if (e && e.friendly) { return m; }
    if (n === 'EncodingError' || /decod/i.test(m)) { return 'ถอดรหัสไฟล์นี้ไม่ได้ ไฟล์อาจเสียหายหรือเบราว์เซอร์ไม่รองรับรูปแบบนี้'; }
    if (n === 'NotSupportedError' || /sample ?rate/i.test(m)) { return 'เบราว์เซอร์นี้ไม่รองรับความถี่ที่เลือก ลองใช้ 44,100 Hz หรือ 48,000 Hz'; }
    if (n === 'RangeError' || /memory|allocation|array buffer/i.test(m)) { return 'หน่วยความจำไม่พอ ลองแปลงทีละไฟล์ หรือเลือกโมโนและความถี่ต่ำลง'; }
    return 'แปลงไม่สำเร็จ ลองใหม่อีกครั้งหรือใช้ไฟล์อื่น';
  }
  async function convertItem(item, o) {
    item.status = 'busy'; item.stage = 'กำลังถอดรหัสเสียง…'; clearResult(item); updateRow(item);
    await tick();
    var ab = await item.file.arrayBuffer(), ctx, buf;
    try { ctx = new OAC(2, 1, o.rate); } catch (e) { throw friendly('เบราว์เซอร์นี้ไม่รองรับความถี่ที่เลือก ลองใช้ 44,100 Hz หรือ 48,000 Hz'); }
    buf = await decode(ctx, ab);
    item.stage = 'กำลังสร้างไฟล์ WAV…'; updateRow(item);
    await tick();
    var ch = prepare(buf, o.ch), gain = 1, pk;
    if (o.norm) { pk = peakOf(ch); if (pk > 0.0001) { gain = 0.891251 / pk; } }
    var blob = encodeWav(ch, buf.sampleRate, o.bits, gain);
    showResult(item, blob, o);
    item.status = 'done'; item.stage = ''; item.err = '';
    updateRow(item);
  }
  async function convertAll() {
    if (busy) { return; }
    var o = opts(), key = JSON.stringify(o);
    var todo = items.filter(function (i) { return i.status !== 'done' || i.key !== key; });
    if (!todo.length) { setMsg('ไฟล์ทั้งหมดแปลงด้วยการตั้งค่านี้แล้ว'); return; }
    busy = true; refresh(); setMsg('');
    var ok = 0, fail = 0, n;
    for (n = 0; n < todo.length; n++) {
      setMsg('กำลังแปลงไฟล์ที่ ' + (n + 1) + ' จาก ' + todo.length + '…');
      try { await convertItem(todo[n], o); ok++; }
      catch (e) {
        fail++; clearResult(todo[n]);
        todo[n].status = 'error'; todo[n].err = friendlyError(e); updateRow(todo[n]);
      }
    }
    busy = false; refresh();
    setMsg('แปลงเสร็จแล้ว ' + ok + ' ไฟล์' + (fail ? ' · ผิดพลาด ' + fail + ' ไฟล์' : ''), fail > 0 && ok === 0);
  }
  async function downloadZip() {
    var done = items.filter(function (i) { return i.status === 'done' && i.blob; });
    if (done.length < 2 || busy) { return; }
    var used = {}, entries = done.map(function (i) { return { name: uniqueName(wavName(i.file.name), used), blob: i.blob }; });
    busy = true; refresh(); setMsg('กำลังสร้างไฟล์ Zip…');
    try {
      saveBlob(await makeZip(entries), 'wav-files.zip');
      setMsg('สร้างไฟล์ Zip เรียบร้อยแล้ว');
    } catch (e) {
      setMsg(e && e.friendly ? e.message : 'สร้างไฟล์ Zip ไม่สำเร็จ ลองดาวน์โหลดทีละไฟล์', true);
    }
    busy = false; refresh();
  }
  function clearAll() {
    if (busy) { return; }
    items.slice().forEach(function (i) { clearResult(i); if (i.ui.li.parentNode) { i.ui.li.parentNode.removeChild(i.ui.li); } });
    items.length = 0; setMsg(''); refresh();
  }
  if (!OAC || !window.Blob || !window.Promise || !window.TextEncoder) {
    setMsg('เบราว์เซอร์นี้ไม่รองรับการแปลงเสียงในหน้าเว็บ กรุณาอัปเดตเบราว์เซอร์ หรือใช้ Chrome, Edge, Firefox หรือ Safari เวอร์ชันล่าสุด', true);
    pick.disabled = true;
    return;
  }
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add('m2w-over'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove('m2w-over'); });
  });
  drop.addEventListener('drop', function (e) { if (e.dataTransfer && e.dataTransfer.files) { addFiles(e.dataTransfer.files); } });
  drop.addEventListener('click', function (e) { if (e.target !== pick) { input.click(); } });
  drop.addEventListener('keydown', function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); input.click(); } });
  pick.addEventListener('click', function (e) { e.stopPropagation(); input.click(); });
  input.addEventListener('change', function () { addFiles(input.files); input.value = ''; });
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData && e.clipboardData.files;
    if (f && f.length) { e.preventDefault(); addFiles(f); }
  });
  [bitsSel, rateSel, chSel, normChk].forEach(function (c) {
    c.addEventListener('change', function () { items.forEach(updateRow); });
  });
  convBtn.addEventListener('click', convertAll);
  zipBtn.addEventListener('click', downloadZip);
  clearBtn.addEventListener('click', clearAll);
  refresh();
})();
</script>

## วิธีใช้งานเครื่องมือแปลง MP3 เป็น WAV

1. **เพิ่มไฟล์** ลากไฟล์ MP3 มาวางในกรอบด้านบน คลิกปุ่ม "เลือกไฟล์" หรือกด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้ เลือกได้หลายไฟล์พร้อมกัน ถ้าเป็นไฟล์วิดีโอ เครื่องมือจะดึงเฉพาะเสียงมาแปลง
2. **ตั้งค่าเอาต์พุต** เลือกความลึกบิต ความถี่สุ่มตัวอย่าง และช่องเสียง ถ้าไม่แน่ใจให้ใช้ค่าเริ่มต้น คือ 16-bit, 44,100 Hz และตามต้นฉบับ ซึ่งเข้ากันได้กับโปรแกรมและอุปกรณ์ส่วนใหญ่
3. **ดูขนาดโดยประมาณ** ใต้ชื่อไฟล์จะแสดงความยาวและขนาด WAV โดยประมาณ ทำให้ตรวจพื้นที่ว่างก่อนแปลงได้ ขนาดจริงจะแสดงเมื่อแปลงเสร็จ
4. **เลือกปรับระดับเสียง (ไม่บังคับ)** ติ๊ก Normalize หากไฟล์เสียงเบาเกินไป เครื่องมือจะขยายให้ส่วนที่ดังที่สุดอยู่ที่ -1 dBFS
5. **กด "แปลงทั้งหมด"** รอจนสถานะเป็น "เสร็จแล้ว" และเปิดแท็บนี้ค้างไว้ระหว่างแปลง
6. **ฟังตัวอย่างและดาวน์โหลด** กดเล่นเพื่อฟังผลลัพธ์ แล้วกด "ดาวน์โหลด WAV" ทีละไฟล์ หรือ "ดาวน์โหลดทั้งหมด (Zip)" เมื่อแปลงตั้งแต่ 2 ไฟล์ขึ้นไป
7. **แปลงใหม่ด้วยค่าอื่น** เมื่อเปลี่ยนการตั้งค่า ไฟล์ที่แปลงไปแล้วจะมีข้อความแจ้ง กด "แปลงทั้งหมด" อีกครั้งเพื่อสร้างไฟล์ใหม่ตามค่าที่เลือก

## ศัพท์ที่ควรรู้

- **MP3** รูปแบบไฟล์เสียงแบบบีบอัดที่ตัดข้อมูลบางส่วนทิ้ง ขนาดเล็ก เหมาะกับการฟังและแชร์
- **WAV** รูปแบบไฟล์เสียงแบบไม่บีบอัด ขนาดใหญ่ แต่ไม่เสียคุณภาพเพิ่มเมื่อตัดต่อหรือบันทึกซ้ำ จึงเป็นที่นิยมในงานตัดต่อและมาสเตอริง
- **PCM** วิธีเก็บเสียงเป็นตัวเลขค่าความดังของคลื่นเสียงตามช่วงเวลา เป็นข้อมูลที่อยู่ในไฟล์ WAV ทั่วไป
- **Lossy / Lossless** Lossy คือการบีบอัดที่ตัดข้อมูลบางส่วนออก เช่น MP3 ส่วน Lossless คือการเก็บข้อมูลครบหรือบีบอัดโดยไม่สูญเสีย เช่น WAV และ FLAC
- **Sample rate (ความถี่สุ่มตัวอย่าง)** จำนวนครั้งต่อวินาทีที่เก็บค่าเสียง วัดเป็น Hz ค่า 44,100 Hz เป็นมาตรฐานซีดี 48,000 Hz นิยมในงานวิดีโอ ส่วน 16,000 Hz ขึ้นไปพอสำหรับเสียงพูด
- **Bit depth (ความลึกบิต)** ความละเอียดของค่าเสียงแต่ละตัวอย่าง 16-bit เป็นมาตรฐานซีดี 24-bit มีช่วงเผื่อมากกว่าสำหรับงานสตูดิโอ และ 32-bit float เหมาะกับงานตัดต่อที่ต้องปรับเสียงหลายรอบ
- **Channels (ช่องเสียง)** โมโนมี 1 ช่อง สเตอริโอมี 2 ช่อง (ซ้ายและขวา) การแปลงสเตอริโอเป็นโมโนจะรวมสองช่องเข้าด้วยกัน และไฟล์ที่มีมากกว่า 2 ช่องจะใช้ 2 ช่องแรกเมื่อเลือกสเตอริโอ
- **Bitrate (kbps)** ปริมาณข้อมูลเสียงต่อวินาที MP3 มักอยู่ที่ 128-320 kbps ส่วน WAV แบบ 16-bit, 44,100 Hz, สเตอริโอ มีค่าประมาณ 1,411 kbps หรือราว 10 MB ต่อนาที
- **Normalize** การปรับความดังทั้งไฟล์ให้จุดที่ดังที่สุดอยู่ที่ระดับที่กำหนด เครื่องมือนี้ใช้ -1 dBFS (เดซิเบลเทียบกับระดับสูงสุดของระบบดิจิทัล) โดยไม่เปลี่ยนความต่างระหว่างเสียงเบากับเสียงดัง
- **Metadata / ID3** ข้อมูลประกอบ เช่น ชื่อเพลง ศิลปิน และภาพปก MP3 เก็บไว้ในแท็ก ID3 แต่เครื่องมือนี้ไม่คัดลอกข้อมูลดังกล่าวไปยังไฟล์ WAV

## ข้อควรรู้ก่อนแปลง

การแปลง MP3 เป็น WAV ไม่ได้คืนรายละเอียดที่ MP3 ตัดทิ้งไปแล้ว คุณภาพเสียงจะเท่าเดิม แต่ได้ไฟล์ไม่บีบอัดที่ไม่เสียคุณภาพเพิ่มเมื่อตัดต่อและบันทึกซ้ำ ไฟล์ WAV จึงใหญ่กว่า MP3 หลายเท่า และ WAV มีขีดจำกัดขนาดไฟล์ที่ 4 GB

เครื่องมือถอดรหัสเสียงด้วยตัวถอดรหัสของเบราว์เซอร์ จึงเปลี่ยนความถี่เป็นค่าที่คุณเลือกระหว่างถอดรหัส (ค่าเริ่มต้นคือ 44,100 Hz) หากต้นฉบับเป็น 48,000 Hz ให้เลือก 48,000 Hz เพื่อไม่ต้องแปลงความถี่

## เปรียบเทียบ MP3 กับ WAV

| หัวข้อ | MP3 | WAV |
| --- | --- | --- |
| การบีบอัด | บีบอัดแบบสูญเสียข้อมูล | ไม่บีบอัด |
| ขนาดต่อ 1 นาที (ประมาณ) | ราว 1 MB ที่ 128 kbps | ราว 10 MB ที่ 16-bit, 44,100 Hz, สเตอริโอ |
| ตัดต่อและบันทึกซ้ำ | คุณภาพลดลงทุกครั้งที่บันทึกใหม่ | ไม่สูญเสียคุณภาพเพิ่ม |
| ข้อมูลชื่อเพลงและปก | รองรับผ่านแท็ก ID3 | รองรับจำกัด ขึ้นกับโปรแกรม |
| เหมาะกับ | ฟังเพลง แชร์ไฟล์ พื้นที่จำกัด | ตัดต่อ มาสเตอริง เบิร์นซีดี ใช้กับ sampler |

## คำถามที่พบบ่อย

### แปลง MP3 เป็น WAV แล้วเสียงดีขึ้นไหม

ไม่ดีขึ้น เพราะรายละเอียดที่ MP3 ตัดทิ้งไปแล้วไม่สามารถกู้คืนได้ แต่ WAV จะไม่เสียคุณภาพเพิ่มเมื่อนำไปตัดต่อและบันทึกซ้ำ

### ไฟล์ของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์ไหม

ไม่ การแปลงทำงานในเบราว์เซอร์ของคุณทั้งหมด เมื่อโหลดหน้าเว็บเสร็จแล้ว คุณลองปิดอินเทอร์เน็ตแล้วแปลงต่อได้ เพื่อตรวจสอบว่าไฟล์ไม่ได้ออกจากอุปกรณ์

### ควรเลือก 16-bit หรือ 24-bit

ถ้าจะเบิร์นซีดีหรือเล่นบนอุปกรณ์ทั่วไป ใช้ 16-bit และ 44,100 Hz ถ้าจะนำไปตัดต่อหรือมาสเตอริงต่อ 24-bit หรือ 32-bit float ให้ช่วงเผื่อมากกว่า แต่ไฟล์จะใหญ่ขึ้น

### ทำไมไฟล์ WAV ใหญ่กว่า MP3 มาก

เพราะ WAV เก็บข้อมูลเสียงครบทุกตัวอย่างโดยไม่บีบอัด ขณะที่ MP3 ตัดข้อมูลบางส่วนออกเพื่อลดขนาด หากต้องการประหยัดพื้นที่ ให้เลือกโมโนหรือลดความถี่ลง เช่น สำหรับเสียงพูด

### ใช้บน iPhone หรือ Android ได้ไหม

ได้ ในเบราว์เซอร์ที่รองรับ เช่น Safari หรือ Chrome เวอร์ชันล่าสุด แต่ไฟล์ยาวมากอาจใช้เวลานานหรือหน่วยความจำไม่พอ แนะนำให้แปลงทีละไฟล์และเปิดแท็บค้างไว้จนเสร็จ

### แปลงเสียงจากไฟล์วิดีโอได้ไหม

ได้ในหลายกรณี เช่น ไฟล์ MP4 ที่ใช้เสียง AAC ขึ้นอยู่กับรูปแบบที่เบราว์เซอร์ของคุณถอดรหัสได้ หากไม่รองรับ เครื่องมือจะแจ้งข้อผิดพลาดที่ไฟล์นั้น