---
title: แบ่งวิดีโอออนไลน์ ฟรี ไม่มีลายน้ำ ไม่ต้องอัปโหลด
h1: แบ่งวิดีโอออนไลน์
description: แบ่งวิดีโอออนไลน์ฟรี ตัดไฟล์ MP4, MOV, WebM เป็นหลายคลิปตามเวลา จำนวนส่วน หรือขนาดไฟล์ เหมาะส่ง WhatsApp ไม่มีลายน้ำ ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดไฟล์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-22T09:00:00+07:00'
weight: 145
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- แบ่งวิดีโอออนไลน์
- ตัดวิดีโอเป็นหลายคลิป
- แยกวิดีโอ
- แบ่งวิดีโอตามขนาด
- แบ่งวิดีโอส่ง WhatsApp
- แบ่งวิดีโอไม่มีลายน้ำ
- video splitter
---

<style>
#vsplit{max-width:860px;margin:0 auto;font-size:15px;line-height:1.5}
#vsplit [hidden]{display:none!important}
#vsplit .vs-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:28px 16px;text-align:center;cursor:pointer}
#vsplit .vs-drop.on{border-color:#2f7cf6;background:rgba(47,124,246,.08)}
#vsplit .vs-b{border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;border-radius:8px;padding:6px 12px;cursor:pointer;font:inherit}
#vsplit .vs-b:hover{background:rgba(128,128,128,.15)}
#vsplit .vs-p{background:#2f7cf6;border-color:#2f7cf6;color:#fff}
#vsplit .vs-p:hover{background:#1f66d8}
#vsplit .vs-b:disabled{opacity:.5;cursor:not-allowed}
#vsplit input,#vsplit select{font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.55);border-radius:8px;padding:5px 8px;max-width:100%}
#vsplit option{color:#000}
#vsplit video{width:100%;max-height:420px;background:#000;border-radius:10px;margin-top:12px}
#vsplit .vs-box{border:1px solid rgba(128,128,128,.35);border-radius:10px;padding:12px;margin-top:12px}
#vsplit .vs-r{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin-top:8px}
#vsplit .vs-tl{position:relative;height:44px;margin-top:12px;border-radius:8px;overflow:hidden;background:rgba(128,128,128,.2);cursor:pointer;user-select:none}
#vsplit .vs-seg{position:absolute;top:0;bottom:0;box-sizing:border-box;border-right:1px solid rgba(128,128,128,.6);background:rgba(47,124,246,.3);font-size:12px;padding:2px 4px;overflow:hidden}
#vsplit .vs-seg.off{background:repeating-linear-gradient(45deg,rgba(128,128,128,.35),rgba(128,128,128,.35) 4px,transparent 4px,transparent 8px)}
#vsplit .vs-mk{position:absolute;top:0;bottom:0;width:3px;margin-left:-1px;background:#f5a623}
#vsplit .vs-ph{position:absolute;top:0;bottom:0;width:2px;background:#e5484d}
#vsplit .vs-row{display:flex;flex-wrap:wrap;gap:8px;align-items:center;padding:6px 0;border-bottom:1px solid rgba(128,128,128,.25)}
#vsplit .vs-row input[type=text]{width:100px}
#vsplit .vs-err{margin-top:12px;padding:10px 12px;border-radius:8px;background:rgba(229,72,77,.12);border:1px solid rgba(229,72,77,.5)}
#vsplit progress{width:100%}
#vsplit .vs-s{font-size:13px;opacity:.75}
</style>

<div id="vsplit">
<div class="vs-drop" id="vs-drop" tabindex="0" role="button" aria-label="เลือกไฟล์วิดีโอ">
<div style="font-size:34px">🎞️</div>
<div><strong>วางวิดีโอที่นี่</strong> หรือคลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V</div>
<div class="vs-s">MP4, MOV, WebM, M4V · ไม่เกิน 500 MB · ไฟล์ไม่ถูกอัปโหลดออกจากอุปกรณ์</div>
<input type="file" id="vs-file" accept="video/*,.mp4,.mov,.webm,.m4v,.mkv" hidden>
</div>
<div class="vs-err" id="vs-err" role="alert" hidden></div>
<div id="vs-editor" hidden>
<video id="vs-video" controls playsinline preload="metadata"></video>
<div class="vs-tl" id="vs-tl" title="คลิกเพื่อเลื่อนไปยังตำแหน่งนั้น"></div>
<div class="vs-r">
<strong id="vs-cur">0:00.00</strong><span class="vs-s" id="vs-total"></span>
<button class="vs-b" data-step="-1">−1 วิ</button>
<button class="vs-b" data-step="-0.0333">−1 เฟรม</button>
<button class="vs-b" data-step="0.0333">+1 เฟรม</button>
<button class="vs-b" data-step="1">+1 วิ</button>
<button class="vs-b vs-p" id="vs-add">✂ เพิ่มจุดแยกที่ตำแหน่งนี้</button>
</div>
<div class="vs-r">
<label for="vs-at">หรือพิมพ์เวลา</label>
<input type="text" id="vs-at" placeholder="1:30.5" size="9">
<button class="vs-b" id="vs-addat">เพิ่มจุดแยก</button>
<button class="vs-b" id="vs-clear">ล้างจุดแยกทั้งหมด</button>
</div>
<div class="vs-box">
<strong>แยกอัตโนมัติ</strong>
<div class="vs-r">
<select id="vs-pre" aria-label="ค่าที่ตั้งไว้ล่วงหน้า">
<option value="">ค่าที่ตั้งไว้ล่วงหน้า…</option>
<option value="wa">WhatsApp (ไม่เกิน ~16 MB)</option>
<option value="dc">Discord (ไม่เกิน ~10 MB)</option>
<option value="em">อีเมล (ไม่เกิน ~25 MB)</option>
<option value="s30">คลิปสั้น 30 วินาที</option>
<option value="s60">คลิปสั้น 60 วินาที</option>
<option value="m5">ทุก 5 นาที</option>
</select>
<select id="vs-mode" aria-label="วิธีแยก">
<option value="equal">ส่วนเท่า ๆ กัน (จำนวนส่วน)</option>
<option value="dur">ตามระยะเวลา (วินาที)</option>
<option value="size">ตามขนาด (MB)</option>
</select>
<input type="number" id="vs-val" value="4" min="1" step="any" style="width:90px" aria-label="ค่า">
<button class="vs-b vs-p" id="vs-auto">สร้างจุดแยก</button>
</div>
<div class="vs-s">ค่าที่ตั้งไว้ล่วงหน้าเป็นค่าประมาณ โปรดตรวจสอบข้อกำหนดล่าสุดของแต่ละแพลตฟอร์ม การแยกตามขนาดคำนวณจากบิตเรตเฉลี่ย จึงคลาดเคลื่อนได้เล็กน้อย</div>
</div>
<div class="vs-box">
<strong>ส่วนที่ได้</strong> <span class="vs-s" id="vs-count"></span>
<div id="vs-list"></div>
</div>
<div class="vs-box">
<strong>ตัวเลือกการบันทึก</strong>
<div class="vs-r">
<label for="vs-way">โหมด</label>
<select id="vs-way">
<option value="copy">เร็ว ไม่สูญเสียคุณภาพ (จุดตัดอาจเลื่อนไปยังคีย์เฟรม)</option>
<option value="pre">แม่นยำระดับเฟรม (เข้ารหัสใหม่ ช้ากว่า)</option>
</select>
<label for="vs-fmt">ผลลัพธ์</label>
<select id="vs-fmt">
<option value="video">วิดีโอ</option>
<option value="noaudio">วิดีโอไม่มีเสียง</option>
<option value="mp3">เฉพาะเสียง (MP3)</option>
</select>
</div>
<div class="vs-r">
<label for="vs-pat">ชื่อไฟล์</label>
<input type="text" id="vs-pat" value="[name]_[n]" size="18">
<span class="vs-s">[name] = ชื่อเดิม, [n] = ลำดับส่วน</span>
</div>
<div class="vs-r">
<button class="vs-b vs-p" id="vs-run">แยกวิดีโอ</button>
<button class="vs-b" id="vs-stop" hidden>ยกเลิก</button>
</div>
<div class="vs-r" id="vs-prog" hidden style="display:block">
<div class="vs-s" id="vs-st"></div>
<progress id="vs-pg" max="100" value="0"></progress>
</div>
<div class="vs-s">เปิดแท็บนี้ค้างไว้ระหว่างประมวลผล การสลับแอปหรือล็อกหน้าจอบนมือถืออาจทำให้หยุดชั่วคราว</div>
</div>
<div class="vs-box" id="vs-res" hidden>
<strong>ผลลัพธ์</strong>
<div id="vs-reslist"></div>
<div class="vs-r"><button class="vs-b vs-p" id="vs-zip">ดาวน์โหลดทั้งหมดเป็น ZIP</button></div>
</div>
</div>
</div>

<script>
(function () {
  var $ = function (i) { return document.getElementById(i); };
  var S = { file: null, url: '', dur: 0, pts: [], keep: [true], eng: null, busy: false, cancel: false, res: [], urls: [], stop: null };
  var CDN = ['https://cdn.jsdelivr.net/npm/', 'https://unpkg.com/'];
  var P = {
    lib: '@ffmpeg/ffmpeg@0.12.10/dist/umd/ffmpeg.js',
    wk: '@ffmpeg/ffmpeg@0.12.10/dist/umd/814.ffmpeg.js',
    js: '@ffmpeg/core@0.12.6/dist/umd/ffmpeg-core.js',
    wa: '@ffmpeg/core@0.12.6/dist/umd/ffmpeg-core.wasm'
  };
  var PRE = { wa: ['size', 16], dc: ['size', 10], em: ['size', 25], s30: ['dur', 30], s60: ['dur', 60], m5: ['dur', 300] };
  var MIME = { mp4: 'video/mp4', mov: 'video/quicktime', webm: 'video/webm', m4v: 'video/mp4', mkv: 'video/x-matroska', mp3: 'audio/mpeg' };

  function el(t, c, x) { var e = document.createElement(t); if (c) e.className = c; if (x != null) e.textContent = x; return e; }
  function pad(n) { return (n < 10 ? '0' : '') + n; }
  function fmt(t) {
    var h = Math.floor(t / 3600), m = Math.floor(t % 3600 / 60), s = t % 60;
    var ss = s.toFixed(2); if (s < 10) ss = '0' + ss;
    return (h ? h + ':' + pad(m) : m) + ':' + ss;
  }
  function parse(v) {
    v = String(v).trim().replace(',', '.');
    if (!/^[\d:.]+$/.test(v)) return NaN;
    var p = v.split(':').map(Number);
    if (p.length > 3 || p.some(isNaN)) return NaN;
    return p.reduce(function (a, x) { return a * 60 + x; }, 0);
  }
  function mb(n) { return (n / 1048576).toFixed(1) + ' MB'; }
  function err(m) { var e = $('vs-err'); e.textContent = m; e.hidden = false; }
  function noErr() { $('vs-err').hidden = true; }
  function st(m, p) {
    $('vs-prog').hidden = false; $('vs-st').textContent = m;
    if (p != null) $('vs-pg').value = p;
  }
  function ext0() {
    var x = (S.file.name.split('.').pop() || 'mp4').toLowerCase().replace(/[^a-z0-9]/g, '');
    return (x && x.length <= 4) ? x : 'mp4';
  }
  function bounds() { return [0].concat(S.pts, [S.dur]); }

  /* ---------- editor ---------- */
  function addPoint(t) {
    noErr();
    if (!(t > 0) || t >= S.dur) { err('เวลาต้องอยู่ระหว่าง 0 ถึง ' + fmt(S.dur)); return; }
    var i = 0; while (i < S.pts.length && S.pts[i] < t) i++;
    var b = bounds();
    if (t - b[i] < 0.2 || b[i + 1] - t < 0.2) { err('จุดแยกต้องห่างจากจุดอื่นอย่างน้อย 0.2 วินาที'); return; }
    S.pts.splice(i, 0, +t.toFixed(3));
    S.keep.splice(i, 0, S.keep[i]);
    render();
  }
  function movePoint(j, t) {
    noErr();
    var b = bounds();
    if (isNaN(t) || t <= b[j] + 0.2 || t >= b[j + 2] - 0.2) { err('เวลาไม่ถูกต้อง หรืออยู่ใกล้จุดแยกอื่นเกินไป'); render(); return; }
    S.pts[j] = +t.toFixed(3); render();
  }
  function render() {
    var b = bounds(), tl = $('vs-tl'), L = $('vs-list'), i;
    tl.innerHTML = ''; L.innerHTML = '';
    for (i = 0; i < b.length - 1; i++) {
      var d = el('div', 'vs-seg' + (S.keep[i] ? '' : ' off'), String(i + 1));
      d.style.left = b[i] / S.dur * 100 + '%';
      d.style.width = (b[i + 1] - b[i]) / S.dur * 100 + '%';
      tl.appendChild(d);
    }
    S.pts.forEach(function (t) { var m = el('div', 'vs-mk'); m.style.left = t / S.dur * 100 + '%'; tl.appendChild(m); });
    var ph = el('div', 'vs-ph'); ph.id = 'vs-ph'; tl.appendChild(ph);
    movePlayhead();
    var kept = 0;
    S.keep.forEach(function (k) { if (k) kept++; });
    $('vs-count').textContent = '(' + (b.length - 1) + ' ส่วน, เลือกบันทึก ' + kept + ' ส่วน)';
    for (i = 0; i < b.length - 1; i++) (function (i) {
      var s = b[i], e = b[i + 1], r = el('div', 'vs-row');
      var cb = el('input'); cb.type = 'checkbox'; cb.checked = !!S.keep[i]; cb.setAttribute('aria-label', 'บันทึกส่วนที่ ' + (i + 1));
      cb.onchange = function () { S.keep[i] = cb.checked; render(); };
      r.appendChild(cb);
      r.appendChild(el('strong', null, 'ส่วน ' + (i + 1)));
      var inp = el('input'); inp.type = 'text'; inp.value = fmt(s); inp.setAttribute('aria-label', 'เวลาเริ่มส่วนที่ ' + (i + 1));
      if (i === 0) inp.readOnly = true; else inp.onchange = function () { movePoint(i - 1, parse(inp.value)); };
      r.appendChild(inp);
      r.appendChild(el('span', null, '→ ' + fmt(e)));
      r.appendChild(el('span', 'vs-s', 'ยาว ' + fmt(e - s) + ' · ~' + mb((e - s) / S.dur * S.file.size)));
      var pv = el('button', 'vs-b', '▶'); pv.title = 'ดูตัวอย่างส่วนนี้';
      pv.onclick = function () { var v = $('vs-video'); v.currentTime = s; S.stop = e; v.play(); };
      r.appendChild(pv);
      if (i > 0) {
        var rm = el('button', 'vs-b', '✕'); rm.title = 'ลบจุดแยกนี้ (รวมกับส่วนก่อนหน้า)';
        rm.onclick = function () { S.pts.splice(i - 1, 1); S.keep.splice(i, 1); render(); };
        r.appendChild(rm);
      }
      L.appendChild(r);
    })(i);
  }
  function movePlayhead() {
    var v = $('vs-video'), ph = $('vs-ph');
    if (ph && S.dur) ph.style.left = Math.min(100, v.currentTime / S.dur * 100) + '%';
    $('vs-cur').textContent = fmt(v.currentTime || 0);
  }
  function autoSplit() {
    noErr();
    var m = $('vs-mode').value, x = parseFloat($('vs-val').value), d;
    if (!(x > 0)) { err('กรอกตัวเลขให้ถูกต้อง'); return; }
    if (m === 'equal') {
      var n = Math.floor(x);
      if (n < 2 || n > 200) { err('จำนวนส่วนต้องอยู่ระหว่าง 2 ถึง 200'); return; }
      d = S.dur / n;
    } else if (m === 'dur') d = x;
    else d = x * 1048576 / (S.file.size / S.dur) * 0.9;
    if (d < 1 || S.dur / d > 300) { err('ค่านี้ทำให้ได้ส่วนสั้นเกินไปหรือมากเกิน 300 ส่วน ลองปรับค่าใหม่'); return; }
    if (d >= S.dur) { err('วิดีโอสั้นกว่าค่าที่กำหนด จึงไม่ต้องแยก'); return; }
    var p = [];
    for (var t = d; t < S.dur - 0.5; t += d) p.push(+t.toFixed(3));
    S.pts = p; S.keep = []; for (var i = 0; i <= p.length; i++) S.keep.push(true);
    render();
  }
  function loadFile(f) {
    noErr();
    if (!f) return;
    if (!/^video\//.test(f.type) && !/\.(mp4|mov|webm|m4v|mkv)$/i.test(f.name)) { err('รองรับเฉพาะไฟล์วิดีโอ MP4, MOV, WebM, M4V'); return; }
    if (f.size > 524288000) { err('ไฟล์ใหญ่เกิน 500 MB'); return; }
    if (S.url) URL.revokeObjectURL(S.url);
    S.file = f; S.url = URL.createObjectURL(f);
    var v = $('vs-video');
    v.onloadedmetadata = function () {
      if (!isFinite(v.duration) || !v.duration) { err('อ่านความยาววิดีโอไม่ได้'); return; }
      S.dur = v.duration; S.pts = []; S.keep = [true];
      $('vs-total').textContent = '/ ' + fmt(S.dur) + ' · ' + mb(f.size);
      $('vs-editor').hidden = false; clearRes(); render();
    };
    v.onerror = function () { $('vs-editor').hidden = true; err('เบราว์เซอร์เล่นไฟล์นี้ไม่ได้ ลองแปลงเป็น MP4 (H.264) ก่อนแล้วนำมาใหม่'); };
    v.src = S.url;
  }

  /* ---------- engine (ffmpeg.wasm, โหลดเมื่อกดแยกเท่านั้น) ---------- */
  function ok(u) {
    return fetch(u, { method: 'HEAD' }).then(function (r) {
      return r.ok && !/html/i.test(r.headers.get('content-type') || '');
    }).catch(function () { return false; });
  }
  function blobURL(u, type) {
    return fetch(u).then(function (r) { if (!r.ok) throw new Error('http'); return r.blob(); }).then(function (b) {
      if (/html/i.test(b.type)) throw new Error('html');
      return URL.createObjectURL(new Blob([b], { type: type }));
    });
  }
  function addScript(u) {
    return new Promise(function (res, rej) {
      var s = document.createElement('script'); s.src = u; s.onload = res;
      s.onerror = function () { rej(new Error('script')); };
      document.head.appendChild(s);
    });
  }
  async function loadEngine() {
    if (S.eng) return S.eng;
    var last = null;
    for (var i = 0; i < CDN.length; i++) {
      var b = CDN[i];
      try {
        var all = await Promise.all([ok(b + P.lib), ok(b + P.wk), ok(b + P.js), ok(b + P.wa)]);
        if (all.indexOf(false) > -1) throw new Error('cdn');
        if (!window.FFmpegWASM) await addScript(b + P.lib);
        var f = new window.FFmpegWASM.FFmpeg();
        f.on('progress', function (e) { S.sub = e.progress; });
        await f.load({
          classWorkerURL: await blobURL(b + P.wk, 'text/javascript'),
          coreURL: await blobURL(b + P.js, 'text/javascript'),
          wasmURL: await blobURL(b + P.wa, 'application/wasm')
        });
        S.eng = f; return f;
      } catch (e) { last = e; }
    }
    throw last || new Error('load');
  }

  /* ---------- run ---------- */
  function clearRes() {
    S.urls.forEach(function (u) { URL.revokeObjectURL(u); });
    S.urls = []; S.res = [];
    $('vs-res').hidden = true; $('vs-reslist').innerHTML = '';
  }
  function setBusy(b) {
    S.busy = b; $('vs-run').disabled = b; $('vs-stop').hidden = !b;
  }
  function outName(n, ext) {
    var base = S.file.name.replace(/\.[^.]*$/, '').replace(/[\\/:*?"<>|]/g, '_');
    var pat = ($('vs-pat').value || '[name]_[n]').replace(/[\\/:*?"<>|]/g, '_');
    return pat.split('[name]').join(base).split('[n]').join(pad(n)) + '.' + ext;
  }
  async function run() {
    if (S.busy) return;
    noErr();
    var b = bounds(), segs = [], i;
    for (i = 0; i < b.length - 1; i++) if (S.keep[i]) segs.push([i + 1, b[i], b[i + 1]]);
    if (!segs.length) { err('เลือกอย่างน้อย 1 ส่วนที่ต้องการบันทึก'); return; }
    var way = $('vs-way').value, fm = $('vs-fmt').value, x0 = ext0();
    var oext = fm === 'mp3' ? 'mp3' : (way === 'pre' ? 'mp4' : x0);
    var inn = 'in.' + x0;
    clearRes(); setBusy(true); S.cancel = false;
    try {
      st('กำลังโหลดโปรแกรมตัดวิดีโอ (ครั้งแรกประมาณ 30 MB แล้วจะถูกแคชไว้)…', 0);
      var f = await loadEngine();
      st('กำลังอ่านไฟล์…', 0);
      await f.writeFile(inn, new Uint8Array(await S.file.arrayBuffer()));
      for (var k = 0; k < segs.length; k++) {
        var s = segs[k];
        S.sub = 0;
        var timer = setInterval(function () {
          $('vs-pg').value = (k + Math.min(1, Math.max(0, S.sub || 0))) / segs.length * 100;
        }, 300);
        st('กำลังตัดส่วนที่ ' + s[0] + ' (' + (k + 1) + '/' + segs.length + ')…', k / segs.length * 100);
        var a = ['-ss', s[1].toFixed(3), '-i', inn, '-t', (s[2] - s[1]).toFixed(3)];
        if (fm === 'mp3') a.push('-vn', '-c:a', 'libmp3lame', '-q:a', '2');
        else if (way === 'pre') {
          a.push('-c:v', 'libx264', '-preset', 'ultrafast', '-crf', '23');
          if (fm === 'noaudio') a.push('-an'); else a.push('-c:a', 'aac');
          a.push('-movflags', '+faststart');
        } else {
          a.push('-c', 'copy', '-avoid_negative_ts', 'make_zero');
          if (fm === 'noaudio') a.push('-an');
        }
        var out = 'o.' + oext; a.push(out);
        var rc;
        try { rc = await f.exec(a); } finally { clearInterval(timer); }
        if (rc !== 0) throw new Error('exec');
        var data = await f.readFile(out);
        await f.deleteFile(out);
        S.res.push({ name: outName(s[0], oext), blob: new Blob([data], { type: MIME[oext] || 'application/octet-stream' }) });
      }
      showRes();
      st('เสร็จแล้ว ได้ ' + S.res.length + ' ไฟล์', 100);
    } catch (e) {
      if (S.cancel) st('ยกเลิกแล้ว', 0);
      else {
        console.error(e);
        err('ไม่สามารถแยกวิดีโอได้ ตรวจสอบการเชื่อมต่ออินเทอร์เน็ตแล้วลองใหม่ หรือลองโหมด "เข้ารหัสใหม่" หากไฟล์มีโครงสร้างผิดปกติ');
        st('', 0);
      }
    } finally {
      try { if (S.eng && !S.cancel) await S.eng.deleteFile(inn); } catch (e2) { /* ignore */ }
      setBusy(false);
    }
  }
  function showRes() {
    var L = $('vs-reslist'); L.innerHTML = '';
    S.res.forEach(function (r) {
      var u = URL.createObjectURL(r.blob); S.urls.push(u);
      var row = el('div', 'vs-row');
      row.appendChild(el('strong', null, r.name));
      row.appendChild(el('span', 'vs-s', mb(r.blob.size)));
      var a = el('a', 'vs-b', 'ดาวน์โหลด'); a.href = u; a.download = r.name;
      row.appendChild(a); L.appendChild(row);
    });
    $('vs-res').hidden = false;
  }

  /* ---------- ZIP (ไม่บีบอัด) ---------- */
  var T = (function () {
    var t = new Uint32Array(256);
    for (var n = 0; n < 256; n++) { var c = n; for (var k = 0; k < 8; k++) c = c & 1 ? 0xEDB88320 ^ (c >>> 1) : c >>> 1; t[n] = c >>> 0; }
    return t;
  })();
  function crc32(b) { var c = 0xFFFFFFFF; for (var i = 0; i < b.length; i++) c = T[(c ^ b[i]) & 255] ^ (c >>> 8); return (c ^ 0xFFFFFFFF) >>> 0; }
  async function zipAll() {
    var btn = $('vs-zip'); btn.disabled = true;
    try {
      var enc = new TextEncoder(), parts = [], cen = [], off = 0, d = new Date();
      var dt = (d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1);
      var dd = ((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate();
      for (var i = 0; i < S.res.length; i++) {
        var data = new Uint8Array(await S.res[i].blob.arrayBuffer());
        var n = enc.encode(S.res[i].name), crc = crc32(data), sz = data.length;
        var lh = new DataView(new ArrayBuffer(30));
        lh.setUint32(0, 0x04034b50, true); lh.setUint16(4, 20, true); lh.setUint16(6, 0x0800, true);
        lh.setUint16(10, dt, true); lh.setUint16(12, dd, true); lh.setUint32(14, crc, true);
        lh.setUint32(18, sz, true); lh.setUint32(22, sz, true); lh.setUint16(26, n.length, true);
        parts.push(lh.buffer, n, data);
        var ch = new DataView(new ArrayBuffer(46));
        ch.setUint32(0, 0x02014b50, true); ch.setUint16(4, 20, true); ch.setUint16(6, 20, true); ch.setUint16(8, 0x0800, true);
        ch.setUint16(12, dt, true); ch.setUint16(14, dd, true); ch.setUint32(16, crc, true);
        ch.setUint32(20, sz, true); ch.setUint32(24, sz, true); ch.setUint16(28, n.length, true); ch.setUint32(42, off, true);
        cen.push(ch.buffer, n);
        off += 30 + n.length + sz;
      }
      var cs = 0; cen.forEach(function (x) { cs += x.byteLength; });
      var e = new DataView(new ArrayBuffer(22));
      e.setUint32(0, 0x06054b50, true); e.setUint16(8, S.res.length, true); e.setUint16(10, S.res.length, true);
      e.setUint32(12, cs, true); e.setUint32(16, off, true);
      var blob = new Blob(parts.concat(cen, [e.buffer]), { type: 'application/zip' });
      var u = URL.createObjectURL(blob), a = document.createElement('a');
      a.href = u; a.download = S.file.name.replace(/\.[^.]*$/, '') + '_split.zip';
      document.body.appendChild(a); a.click(); a.remove();
      setTimeout(function () { URL.revokeObjectURL(u); }, 60000);
    } catch (e3) { console.error(e3); err('สร้างไฟล์ ZIP ไม่สำเร็จ ลองดาวน์โหลดทีละไฟล์'); }
    btn.disabled = false;
  }

  /* ---------- events ---------- */
  var drop = $('vs-drop'), inp = $('vs-file'), v = $('vs-video');
  drop.onclick = function () { inp.click(); };
  drop.onkeydown = function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); inp.click(); } };
  inp.onchange = function () { loadFile(inp.files[0]); inp.value = ''; };
  ['dragenter', 'dragover'].forEach(function (n) { drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.add('on'); }); });
  ['dragleave', 'drop'].forEach(function (n) { drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.remove('on'); }); });
  drop.addEventListener('drop', function (e) { loadFile(e.dataTransfer.files[0]); });
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData && e.clipboardData.files && e.clipboardData.files[0];
    if (f) loadFile(f);
  });
  v.addEventListener('timeupdate', function () {
    movePlayhead();
    if (S.stop != null && v.currentTime >= S.stop) { v.pause(); S.stop = null; }
  });
  v.addEventListener('seeked', movePlayhead);
  $('vs-tl').onclick = function (e) {
    var r = this.getBoundingClientRect();
    v.currentTime = Math.max(0, Math.min(1, (e.clientX - r.left) / r.width)) * S.dur;
  };
  Array.prototype.forEach.call(document.querySelectorAll('#vsplit [data-step]'), function (b) {
    b.onclick = function () { v.pause(); v.currentTime = Math.max(0, Math.min(S.dur, v.currentTime + parseFloat(b.getAttribute('data-step')))); };
  });
  $('vs-add').onclick = function () { addPoint(v.currentTime); };
  $('vs-addat').onclick = function () {
    var t = parse($('vs-at').value);
    if (isNaN(t)) { err('รูปแบบเวลาไม่ถูกต้อง ตัวอย่าง: 90, 1:30 หรือ 0:01:30.5'); return; }
    addPoint(t); $('vs-at').value = '';
  };
  $('vs-clear').onclick = function () { S.pts = []; S.keep = [true]; render(); };
  $('vs-pre').onchange = function () {
    var p = PRE[this.value]; if (!p) return;
    $('vs-mode').value = p[0]; $('vs-val').value = p[1];
  };
  $('vs-auto').onclick = autoSplit;
  $('vs-run').onclick = run;
  $('vs-stop').onclick = function () {
    S.cancel = true;
    try { if (S.eng) S.eng.terminate(); } catch (e) { /* ignore */ }
    S.eng = null;
  };
  $('vs-zip').onclick = zipAll;
})();
</script>

## วิธีใช้เครื่องมือแบ่งวิดีโอ

1. **เพิ่มวิดีโอ** คลิกกรอบด้านบนเพื่อเลือกไฟล์ ลากไฟล์มาวาง หรือกด Ctrl+V (รองรับ MP4, MOV, WebM, M4V ขนาดไม่เกิน 500 MB)
2. **กำหนดจุดแยก** เลือกวิธีใดวิธีหนึ่งหรือใช้ร่วมกันก็ได้
   - **ด้วยมือ:** เลื่อนวิดีโอหรือคลิกบนไทม์ไลน์ไปยังตำแหน่งที่ต้องการ ใช้ปุ่ม −1 วิ / −1 เฟรม / +1 เฟรม / +1 วิ เพื่อปรับให้ละเอียด แล้วกด **เพิ่มจุดแยกที่ตำแหน่งนี้** หรือพิมพ์เวลาเอง เช่น `1:30.5`
   - **อัตโนมัติ:** เลือก **ส่วนเท่า ๆ กัน**, **ตามระยะเวลา** หรือ **ตามขนาด** ใส่ตัวเลข แล้วกด **สร้างจุดแยก** หรือเลือกค่าที่ตั้งไว้ล่วงหน้า เช่น WhatsApp
3. **ตรวจสอบส่วนที่ได้** กด ▶ เพื่อดูตัวอย่างแต่ละส่วน แก้เวลาเริ่มได้ ลบจุดแยกด้วย ✕ และเอาเครื่องหมายถูกออกจากส่วนที่ไม่ต้องการ
4. **เลือกตัวเลือกการบันทึก** โหมด (เร็ว หรือแม่นยำระดับเฟรม) ผลลัพธ์ (วิดีโอ วิดีโอไม่มีเสียง หรือ MP3) และรูปแบบชื่อไฟล์
5. **กดแยกวิดีโอ** รอจนเสร็จ แล้วดาวน์โหลดทีละไฟล์หรือทั้งหมดเป็น ZIP ถ้าต้องการหยุดกลางคัน กด **ยกเลิก**

เครื่องมือนี้ทำงานในเบราว์เซอร์ของคุณด้วย WebAssembly วิดีโอจึงไม่ถูกอัปโหลดไปที่เซิร์ฟเวอร์ใด ๆ โปรแกรมตัดวิดีโอจะถูกดาวน์โหลดครั้งเดียวเมื่อกดแยกครั้งแรก แล้วเบราว์เซอร์จะแคชไว้

## คำอธิบายศัพท์ที่ควรรู้

- **จุดแยก (Split point):** ตำแหน่งเวลาในวิดีโอที่ใช้ตัดไฟล์ออกเป็นส่วน ๆ
- **ส่วน (Segment):** คลิปช่วงหนึ่งที่อยู่ระหว่างจุดแยกสองจุด แต่ละส่วนจะถูกบันทึกเป็นไฟล์แยก
- **ส่วนเท่า ๆ กัน:** แบ่งวิดีโอเป็นจำนวนส่วนที่กำหนดโดยแต่ละส่วนยาวเท่ากัน
- **ตามระยะเวลา:** กำหนดความยาวต่อคลิปเป็นวินาที ส่วนสุดท้ายจะเป็นเศษที่เหลือ
- **ตามขนาด:** กำหนดขนาดสูงสุดต่อไฟล์เป็น MB โดยคำนวณจากบิตเรตเฉลี่ย จึงเป็นค่าประมาณ
- **ไม่สูญเสียคุณภาพ (Lossless):** คัดลอกข้อมูลภาพและเสียงเดิมโดยไม่เข้ารหัสใหม่ จึงเร็วและคุณภาพเท่าต้นฉบับ
- **เข้ารหัสใหม่ (Re-encode):** ถอดและบีบอัดวิดีโอใหม่ ทำให้ตัดตรงเฟรมที่ต้องการได้ แต่ช้ากว่าและคุณภาพอาจลดเล็กน้อย
- **คีย์เฟรม (Keyframe):** เฟรมที่เก็บภาพเต็ม เฟรมอื่นอ้างอิงจากมัน การตัดแบบไม่สูญเสียคุณภาพจึงต้องเริ่มที่คีย์เฟรม ทำให้จุดตัดอาจเลื่อนไปเล็กน้อย
- **เฟรม (Frame) / FPS:** ภาพนิ่งหนึ่งภาพในวิดีโอ และจำนวนภาพต่อวินาที ปุ่ม ±1 เฟรมในเครื่องมือนี้ใช้ประมาณ 1/30 วินาที
- **บิตเรต (Bitrate):** ปริมาณข้อมูลต่อวินาทีของวิดีโอ ยิ่งสูงยิ่งคมชัดและไฟล์ยิ่งใหญ่
- **ตัวแปลงสัญญาณ (Codec):** วิธีบีบอัดภาพและเสียง เช่น H.264, VP9, AAC, MP3
- **คอนเทนเนอร์ (Container):** รูปแบบไฟล์ที่ห่อภาพและเสียงไว้ด้วยกัน เช่น MP4, MOV, WebM
- **WebAssembly (WASM):** เทคโนโลยีที่ให้เบราว์เซอร์รันโปรแกรมประสิทธิภาพสูงในเครื่องของคุณ ไม่ต้องอัปโหลดไฟล์
- **ZIP:** ไฟล์รวมที่เก็บหลายคลิปไว้ในไฟล์เดียว สะดวกต่อการดาวน์โหลดพร้อมกัน

## คำถามที่พบบ่อย

**ทำไมจุดตัดไม่ตรงกับเวลาที่เลือกเป๊ะ ๆ?**
ในโหมดเร็ว (ไม่สูญเสียคุณภาพ) จุดตัดจะเลื่อนไปที่คีย์เฟรมใกล้เคียง หากต้องการความแม่นยำระดับเฟรม ให้เลือกโหมดแม่นยำ ซึ่งจะเข้ารหัสใหม่และใช้เวลานานกว่า

**แบ่งวิดีโอเพื่อส่ง WhatsApp ทำอย่างไร?**
เลือกค่าที่ตั้งไว้ล่วงหน้า "WhatsApp" แล้วกดสร้างจุดแยก จากนั้นกดแยกวิดีโอ เนื่องจากขนาดคำนวณจากบิตเรตเฉลี่ย ควรตรวจขนาดไฟล์ที่ได้อีกครั้งก่อนส่ง

**ไฟล์ของฉันปลอดภัยหรือไม่?**
ไฟล์ถูกประมวลผลในเบราว์เซอร์ของคุณเท่านั้นและไม่ถูกอัปโหลด ต้องใช้อินเทอร์เน็ตเพียงเพื่อโหลดโปรแกรมตัดวิดีโอในครั้งแรก

**ทำไมเปิดไฟล์ไม่ได้?**
เบราว์เซอร์ต้องเล่นไฟล์นั้นได้เพื่อแสดงตัวอย่าง ไฟล์ที่ใช้ codec พิเศษ เช่น HEVC บางรุ่น หรือ MKV/AVI อาจเล่นไม่ได้ ให้แปลงเป็น MP4 (H.264) ก่อน

**ไฟล์ใหญ่แล้วค้างหรือล้มเหลว ทำอย่างไร?**
การประมวลผลใช้หน่วยความจำของเบราว์เซอร์ ลองปิดแท็บอื่น ใช้คอมพิวเตอร์แทนมือถือ หรือแบ่งไฟล์เป็นส่วนใหญ่ก่อนแล้วค่อยแบ่งต่อ

**มีลายน้ำหรือต้องสมัครสมาชิกไหม?**
ไม่มีลายน้ำ ไม่ต้องสมัครสมาชิก และใช้ได้ฟรี