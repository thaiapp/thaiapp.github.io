---
title: แปลง PDF เป็นขาวดำ (โทนสีเทา) ออนไลน์ ฟรี
h1: แปลง PDF เป็นขาวดำ (โทนสีเทา) ออนไลน์
description: แปลง PDF เป็นขาวดำหรือโทนสีเทาออนไลน์ฟรี ช่วยประหยัดหมึกและลดขนาดไฟล์ ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลด ไม่ต้องสมัครสมาชิก เหมาะกับงานเอกสารและการพิมพ์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-08T09:00:00+07:00'
weight: 89
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- แปลง PDF เป็นขาวดำ (โทนสีเทา) ออนไลน์
- PDF และไฟล์
---

<style>
.gs{max-width:760px;margin:0 auto;font-family:inherit}
.gs *{box-sizing:border-box}
.gs [hidden]{display:none!important}
.gs-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:28px 16px;text-align:center;cursor:pointer}
.gs-drop.on{border-color:#2563eb;background:rgba(37,99,235,.08)}
.gs-btn{font:inherit;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;border-radius:8px;padding:8px 16px;cursor:pointer}
.gs-btn.main{background:#2563eb;border-color:#2563eb;color:#fff}
.gs-btn:disabled{opacity:.5;cursor:default}
.gs-row{display:flex;flex-wrap:wrap;gap:8px 18px;align-items:center;margin:12px 0}
.gs-row label{cursor:pointer}
.gs-note{font-size:.92em;padding:8px 12px;border-radius:8px;background:rgba(128,128,128,.12);margin:12px 0}
.gs-err{color:#dc2626;margin:8px 0}
.gs-view{overflow:auto;text-align:center;border:1px solid rgba(128,128,128,.4);border-radius:8px;padding:8px}
.gs-view canvas{max-width:100%;height:auto;background:#fff}
.gs-nav{display:flex;gap:12px;justify-content:center;align-items:center;margin:8px 0}
</style>
<div class="gs" id="gs-app">
<div class="gs-drop" id="gs-drop" tabindex="0">
<div>📄 วางไฟล์ PDF ที่นี่ หรือกด Ctrl+V</div>
<p><button type="button" class="gs-btn" id="gs-pick">เลือกไฟล์…</button></p>
<small>การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์</small>
<input type="file" id="gs-file" accept="application/pdf,.pdf" hidden>
</div>
<div class="gs-err" id="gs-err" role="alert" hidden></div>
<div id="gs-panel" hidden>
<div class="gs-note" id="gs-auto"></div>
<div class="gs-row"><b>แปลงเป็น:</b>
<label><input type="radio" name="gs-mode" value="bw"> ขาวดำ</label>
<label><input type="radio" name="gs-mode" value="gray" checked> โทนสีเทา</label></div>
<div class="gs-row" id="gs-bwopts" hidden><b>เหมาะกับ:</b>
<label><input type="radio" name="gs-kind" value="text" checked> ข้อความ</label>
<label><input type="radio" name="gs-kind" value="image"> รูปภาพ</label>
<span id="gs-thwrap"><label>เกณฑ์ <input type="range" id="gs-th" min="10" max="90" value="50"> <span id="gs-thv">50%</span></label></span></div>
<div class="gs-row"><label><b>ความละเอียด:</b> <select id="gs-dpi"><option value="100">100 DPI (ไฟล์เล็ก)</option><option value="150" selected>150 DPI (แนะนำ)</option><option value="200">200 DPI</option><option value="300">300 DPI (คมชัดสุด)</option></select></label>
<label><input type="checkbox" id="gs-orig"> ดูต้นฉบับ</label></div>
<div class="gs-nav"><button type="button" class="gs-btn" id="gs-prev">‹</button><span id="gs-pg">1 / 1</span><button type="button" class="gs-btn" id="gs-next">›</button></div>
<div class="gs-view"><canvas id="gs-cv" width="10" height="10"></canvas></div>
<div class="gs-row"><button type="button" class="gs-btn main" id="gs-run">แปลงและดาวน์โหลด</button>
<button type="button" class="gs-btn" id="gs-clear">ล้าง</button>
<span id="gs-prog"></span></div>
<div id="gs-size"></div>
<small>เปิดแท็บนี้ไว้ขณะประมวลผล การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</small>
</div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js"></script>
<script>
(function () {
  'use strict';
  var $ = function (i) { return document.getElementById(i); };
  var WORKER = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';
  var file = null, doc = null, cur = 1, total = 0, raw = null, busy = false, seq = 0;
  var workerReady = Promise.resolve();

  if (typeof pdfjsLib !== 'undefined') {
    pdfjsLib.GlobalWorkerOptions.workerSrc = WORKER;
    // โหลด worker เป็น Blob เพื่อเลี่ยงปัญหา cross-origin worker
    workerReady = fetch(WORKER)
      .then(function (r) { if (!r.ok) throw new Error('worker'); return r.blob(); })
      .then(function (b) { pdfjsLib.GlobalWorkerOptions.workerSrc = URL.createObjectURL(b); })
      .catch(function () {});
  }

  function err(m) { var e = $('gs-err'); e.textContent = m || ''; e.hidden = !m; }
  function mode() { return document.querySelector('input[name="gs-mode"]:checked').value; }
  function kind() { return document.querySelector('input[name="gs-kind"]:checked').value; }
  function fmt(b) { return b < 1048576 ? (b / 1024).toFixed(1) + ' KB' : (b / 1048576).toFixed(2) + ' MB'; }

  function proc(cv) {
    var m = mode(), dith = kind() === 'image', t = +$('gs-th').value * 2.55;
    var c = cv.getContext('2d'), w = cv.width, h = cv.height;
    var img = c.getImageData(0, 0, w, h), p = img.data, i, g;
    if (m === 'gray') {
      for (i = 0; i < p.length; i += 4) {
        g = 0.299 * p[i] + 0.587 * p[i + 1] + 0.114 * p[i + 2];
        p[i] = p[i + 1] = p[i + 2] = g;
      }
    } else if (!dith) {
      for (i = 0; i < p.length; i += 4) {
        g = 0.299 * p[i] + 0.587 * p[i + 1] + 0.114 * p[i + 2];
        p[i] = p[i + 1] = p[i + 2] = g < t ? 0 : 255;
      }
    } else {
      var buf = new Float32Array(w * h);
      for (i = 0; i < buf.length; i++) {
        buf[i] = 0.299 * p[i * 4] + 0.587 * p[i * 4 + 1] + 0.114 * p[i * 4 + 2];
      }
      for (var y = 0; y < h; y++) {
        for (var x = 0; x < w; x++) {
          var k = y * w + x, o = buf[k], n = o < 128 ? 0 : 255, e = o - n;
          buf[k] = n;
          if (x + 1 < w) buf[k + 1] += e * 7 / 16;
          if (y + 1 < h) {
            if (x > 0) buf[k + w - 1] += e * 3 / 16;
            buf[k + w] += e * 5 / 16;
            if (x + 1 < w) buf[k + w + 1] += e / 16;
          }
        }
      }
      for (i = 0; i < buf.length; i++) p[i * 4] = p[i * 4 + 1] = p[i * 4 + 2] = buf[i];
    }
    c.putImageData(img, 0, 0);
  }

  async function renderPage(n, scale) {
    var pg = await doc.getPage(n);
    var vp = pg.getViewport({ scale: scale });
    var cv = document.createElement('canvas');
    cv.width = Math.floor(vp.width);
    cv.height = Math.floor(vp.height);
    var ctx = cv.getContext('2d');
    ctx.fillStyle = '#fff';
    ctx.fillRect(0, 0, cv.width, cv.height);
    await pg.render({ canvasContext: ctx, viewport: vp }).promise;
    return cv;
  }

  function draw() {
    if (!raw) return;
    var cv = $('gs-cv');
    cv.width = raw.width;
    cv.height = raw.height;
    cv.getContext('2d').drawImage(raw, 0, 0);
    if (!$('gs-orig').checked) proc(cv);
  }

  async function showPage() {
    var my = ++seq;
    $('gs-pg').textContent = cur + ' / ' + total;
    try {
      var r = await renderPage(cur, 1.3);
      if (my !== seq) return;
      raw = r;
      draw();
    } catch (e) { err('แสดงตัวอย่างหน้านี้ไม่ได้'); }
  }

  function syncOpts() {
    var bw = mode() === 'bw';
    $('gs-bwopts').hidden = !bw;
    $('gs-thwrap').hidden = kind() === 'image';
    $('gs-thv').textContent = $('gs-th').value + '%';
    draw();
  }

  async function loadFile(f) {
    err('');
    if (!f) return;
    if (!(f.type === 'application/pdf' || /\.pdf$/i.test(f.name))) { err('กรุณาเลือกไฟล์ PDF เท่านั้น'); return; }
    if (typeof pdfjsLib === 'undefined' || typeof PDFLib === 'undefined') {
      err('โหลดไลบรารีไม่สำเร็จ กรุณารีเฟรชหน้าแล้วลองอีกครั้ง');
      return;
    }
    try {
      await workerReady;
      var data = await f.arrayBuffer();
      doc = await pdfjsLib.getDocument({ data: data }).promise;
    } catch (e) {
      err('เปิดไฟล์ไม่ได้ ไฟล์อาจมีรหัสผ่านหรือเสียหาย');
      return;
    }
    file = f;
    total = doc.numPages;
    cur = 1;
    $('gs-size').textContent = 'ไฟล์ต้นฉบับ ' + fmt(f.size) + ' · ' + total + ' หน้า';
    $('gs-prog').textContent = '';
    $('gs-orig').checked = false;
    var scanned = false;
    try {
      var tc = await (await doc.getPage(1)).getTextContent();
      scanned = tc.items.length === 0;
    } catch (e) {}
    document.querySelector('input[name="gs-mode"][value="' + (scanned ? 'bw' : 'gray') + '"]').checked = true;
    $('gs-auto').textContent = scanned
      ? 'ดูเหมือนเอกสารสแกน จึงเปิดโหมดขาวดำให้'
      : 'ดูไม่เหมือนเอกสารสแกน จึงเปิดโหมดโทนสีเทาให้';
    $('gs-panel').hidden = false;
    syncOpts();
    showPage();
  }

  async function run() {
    if (!doc || busy) return;
    busy = true;
    err('');
    var btn = $('gs-run'), m = mode(), dpi = +$('gs-dpi').value;
    btn.disabled = true;
    try {
      var out = await PDFLib.PDFDocument.create();
      for (var n = 1; n <= total; n++) {
        $('gs-prog').textContent = 'กำลังประมวลผล ' + n + ' / ' + total;
        var pg = await doc.getPage(n);
        var v1 = pg.getViewport({ scale: 1 });
        var s = Math.min(dpi / 72, 4200 / Math.max(v1.width, v1.height));
        var cv = await renderPage(n, s);
        proc(cv);
        var blob = await new Promise(function (res) {
          cv.toBlob(res, m === 'bw' ? 'image/png' : 'image/jpeg', 0.85);
        });
        var bytes = new Uint8Array(await blob.arrayBuffer());
        var im = m === 'bw' ? await out.embedPng(bytes) : await out.embedJpg(bytes);
        var P = out.addPage([v1.width, v1.height]);
        P.drawImage(im, { x: 0, y: 0, width: v1.width, height: v1.height });
        cv.width = cv.height = 1;
        await new Promise(function (r) { setTimeout(r, 0); });
      }
      var res = await out.save();
      var url = URL.createObjectURL(new Blob([res], { type: 'application/pdf' }));
      var a = document.createElement('a');
      a.href = url;
      a.download = file.name.replace(/\.pdf$/i, '') + (m === 'bw' ? '-bw' : '-grayscale') + '.pdf';
      document.body.appendChild(a);
      a.click();
      a.remove();
      setTimeout(function () { URL.revokeObjectURL(url); }, 30000);
      var ratio = Math.round((res.length / file.size) * 100);
      $('gs-prog').textContent = 'เสร็จแล้ว';
      $('gs-size').textContent = fmt(file.size) + ' → ' + fmt(res.length) + ' (' + ratio + '%)';
    } catch (e) {
      err('แปลงไฟล์ไม่สำเร็จ: ' + (e && e.message ? e.message : e));
      $('gs-prog').textContent = '';
    }
    btn.disabled = false;
    busy = false;
  }

  function clearAll() {
    file = doc = raw = null;
    $('gs-file').value = '';
    $('gs-panel').hidden = true;
    err('');
  }

  var drop = $('gs-drop');
  $('gs-pick').addEventListener('click', function (e) { e.stopPropagation(); $('gs-file').click(); });
  drop.addEventListener('click', function () { $('gs-file').click(); });
  $('gs-file').addEventListener('change', function (e) { loadFile(e.target.files[0]); });
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add('on'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove('on'); });
  });
  drop.addEventListener('drop', function (e) { loadFile(e.dataTransfer.files[0]); });
  document.addEventListener('paste', function (e) {
    var fs = e.clipboardData && e.clipboardData.files;
    if (fs && fs.length) loadFile(fs[0]);
  });
  document.querySelectorAll('input[name="gs-mode"],input[name="gs-kind"],#gs-th,#gs-orig').forEach(function (el) {
    el.addEventListener('input', syncOpts);
  });
  $('gs-prev').addEventListener('click', function () { if (cur > 1) { cur--; showPage(); } });
  $('gs-next').addEventListener('click', function () { if (cur < total) { cur++; showPage(); } });
  $('gs-run').addEventListener('click', run);
  $('gs-clear').addEventListener('click', clearAll);
})();
</script>

## วิธีใช้เครื่องมือแปลง PDF เป็นขาวดำ

1. **เลือกไฟล์ PDF** กดปุ่ม "เลือกไฟล์…" ลากไฟล์มาวางในกรอบ หรือกด `Ctrl`+`V` เพื่อวางไฟล์จากคลิปบอร์ด
2. **ดูโหมดที่ระบบเลือกให้** ระบบจะตรวจหน้าแรกของไฟล์ ถ้าเป็นเอกสารสแกนจะเปิดโหมดขาวดำ ถ้าเป็นเอกสารทั่วไปจะเปิดโหมดโทนสีเทา คุณเปลี่ยนได้เองตลอดเวลา
3. **ตั้งค่าเพิ่มเติม (เฉพาะขาวดำ)** เลือก "ข้อความ" หรือ "รูปภาพ" และเลื่อนแถบ "เกณฑ์" จนตัวอักษรอ่านชัด
4. **เลือกความละเอียด** ยิ่งสูง ภาพยิ่งคมชัดแต่ไฟล์ใหญ่ขึ้น ค่า 150 DPI เหมาะกับงานทั่วไป
5. **ตรวจตัวอย่าง** กด ‹ › เพื่อดูทีละหน้า และติ๊ก "ดูต้นฉบับ" เพื่อเทียบกับไฟล์เดิม
6. **กด "แปลงและดาวน์โหลด"** รอจนครบทุกหน้า ไฟล์จะดาวน์โหลดอัตโนมัติ พร้อมแสดงขนาดก่อนและหลังแปลง
7. **กด "ล้าง"** เมื่อต้องการเริ่มไฟล์ใหม่

## คำศัพท์ที่ควรรู้

- **โทนสีเทา (Grayscale)** เปลี่ยนทุกสีให้เป็นสีเทาตามความสว่างเดิม ยังเห็นความเข้มอ่อนครบทุกระดับ เหมาะกับรายงานและกราฟสี
- **ขาวดำ (Black & White / 1-bit)** เก็บไว้เพียงสองค่าคือดำกับขาว ไม่มีสีเทา เหมาะกับเอกสารสแกนที่ต้องการตัดสีกระดาษทิ้งและลดขนาดไฟล์
- **เกณฑ์ (Threshold)** ค่าตัดสินว่าจุดไหนเป็นดำหรือขาวในโหมดขาวดำ เพิ่มค่าเพื่อเก็บลายเส้นจาง ลดค่าเพื่อตัดเงาและรอยเปื้อน
- **ข้อความ** โหมดขาวดำที่ใช้เกณฑ์ตัดตรง ๆ ให้ตัวอักษรคมและไฟล์เล็ก เหมาะกับหน้าที่มีแต่ตัวอักษร
- **รูปภาพ (ไล่ลายจุด / Dithering)** แทนระดับความเข้มด้วยลายจุดดำขาว ทำให้รูปถ่ายยังดูมีมิติเมื่อเป็นขาวดำ แต่ไฟล์ใหญ่และใช้หมึกมากกว่า
- **DPI (ความละเอียด)** จำนวนจุดต่อนิ้ว ค่าสูงให้ภาพคมแต่ไฟล์ใหญ่ ค่าต่ำให้ไฟล์เล็กแต่ภาพอาจหยาบ
- **เอกสารสแกน** PDF ที่เป็นภาพถ่ายหรือภาพสแกนของกระดาษ ไม่มีข้อความจริงอยู่ในไฟล์
- **ประมวลผลในเครื่อง** การแปลงทำงานในเบราว์เซอร์ของคุณทั้งหมด ไฟล์ไม่ถูกส่งขึ้นเซิร์ฟเวอร์

> หมายเหตุ: ไฟล์ที่ได้จะเป็นภาพของแต่ละหน้า ข้อความจึงไม่สามารถเลือกหรือค้นหาได้ หากต้องการเก็บข้อความไว้ ให้เก็บไฟล์ต้นฉบับควบคู่กัน