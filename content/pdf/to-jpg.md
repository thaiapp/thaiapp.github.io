---
title: แปลง PDF เป็น JPG ออนไลน์ ฟรี
h1: แปลง PDF เป็น JPG
description: แปลง PDF เป็น JPG ออนไลน์ฟรี เลือกคุณภาพได้ 4 ระดับ ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกอัปโหลด ไม่ต้องสมัครสมาชิก รวดเร็ว ดาวน์โหลดเป็นภาพหรือ ZIP ได้ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-07T09:00:00+07:00'
weight: 81
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- แปลง PDF เป็น JPG
- แปลง PDF เป็น JPG ออนไลน์
- PDF และไฟล์
---

<style>
.pj{--pj-line:rgba(128,128,128,.35);--pj-soft:rgba(128,128,128,.08);--pj-accent:#1a6fd4;max-width:720px;margin:0 auto;line-height:1.6}
.pj *{box-sizing:border-box}
.pj-drop{display:block;border:2px dashed var(--pj-line);border-radius:12px;padding:32px 16px;text-align:center;cursor:pointer;background:var(--pj-soft)}
.pj-drop:hover,.pj-drop:focus,.pj-drop.pj-over{border-color:var(--pj-accent);outline:none}
.pj-drop strong{display:block;font-size:1.05rem}
.pj-drop span{font-size:.9rem;opacity:.75}
.pj-file{margin:12px 0;font-size:.95rem;word-break:break-all}
.pj-q{display:flex;flex-wrap:wrap;gap:8px;margin:8px 0 16px}
.pj-q button{flex:1 1 110px;padding:10px 12px;border:1px solid var(--pj-line);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.pj-q button[aria-pressed="true"]{border-color:var(--pj-accent);background:var(--pj-accent);color:#fff}
.pj-actions{display:flex;flex-wrap:wrap;gap:8px}
.pj-go,.pj-clear{padding:10px 20px;border-radius:8px;font:inherit;cursor:pointer;border:1px solid var(--pj-accent)}
.pj-go{background:var(--pj-accent);color:#fff}
.pj-clear{background:transparent;color:inherit;border-color:var(--pj-line)}
.pj button:disabled{opacity:.5;cursor:not-allowed}
.pj-note{font-size:.85rem;opacity:.75;margin:12px 0}
.pj-bar{height:8px;border-radius:4px;background:var(--pj-soft);overflow:hidden;margin:12px 0 4px}
.pj-bar i{display:block;height:100%;width:0;background:var(--pj-accent)}
.pj-msg{font-size:.9rem;min-height:1.4em}
.pj-err{color:#c0392b}
.pj-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(110px,1fr));gap:10px;margin-top:12px}
.pj-grid figure{margin:0;text-align:center;font-size:.8rem}
.pj-grid img{width:100%;height:auto;border:1px solid var(--pj-line);border-radius:6px;display:block}
.pj-doc h2,.pj-doc h3{margin-top:2rem}
.pj-doc dt{font-weight:700;margin-top:.8rem}
.pj-doc dd{margin:0 0 0 0}
</style>
<div class="pj" id="pj-app">
<label class="pj-drop" id="pj-drop" for="pj-file" tabindex="0">
<strong>📄 วางไฟล์ PDF ที่นี่ หรือคลิกเพื่อเลือกไฟล์</strong>
<span>ลากไฟล์มาวาง หรือกด Ctrl+V เพื่อวางจากคลิปบอร์ด</span>
</label>
<input type="file" id="pj-file" accept="application/pdf,.pdf" hidden>
<p class="pj-file" id="pj-name"></p>
<p><strong>คุณภาพ:</strong></p>
<div class="pj-q" id="pj-q">
<button type="button" data-q="low" aria-pressed="false">ต่ำ</button>
<button type="button" data-q="medium" aria-pressed="false">ปานกลาง</button>
<button type="button" data-q="high" aria-pressed="true">สูง</button>
<button type="button" data-q="max" aria-pressed="false">สูงมาก</button>
</div>
<div class="pj-actions">
<button type="button" class="pj-go" id="pj-go" disabled>แปลงและดาวน์โหลด</button>
<button type="button" class="pj-clear" id="pj-clear" disabled>ล้าง</button>
</div>
<div class="pj-bar" id="pj-bar" hidden><i id="pj-bari"></i></div>
<p class="pj-msg" id="pj-msg" role="status" aria-live="polite"></p>
<p class="pj-note">เปิดแท็บนี้ไว้ขณะประมวลผล การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</p>
<p class="pj-note">🛡️ การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์</p>
<div class="pj-grid" id="pj-grid"></div>
</div>

<div class="pj pj-doc">

## วิธีใช้เครื่องมือแปลง PDF เป็น JPG

1. **เลือกไฟล์ PDF** ลากไฟล์มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์จากเครื่อง หรือกด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้
2. **เลือกระดับคุณภาพ** มี 4 ระดับ คือ ต่ำ ปานกลาง สูง และสูงมาก ค่าเริ่มต้นคือ "สูง"
3. **กดปุ่ม "แปลงและดาวน์โหลด"** รอจนแถบความคืบหน้าเต็ม โดยเปิดแท็บนี้ค้างไว้
4. **รับไฟล์ผลลัพธ์** PDF หน้าเดียวจะได้ไฟล์ JPG ส่วน PDF หลายหน้าจะได้ไฟล์ ZIP ที่มี JPG หนึ่งไฟล์ต่อหนึ่งหน้า
5. **ตรวจดูตัวอย่าง** ภาพย่อของทุกหน้าจะแสดงด้านล่างปุ่ม หากต้องการเริ่มใหม่ให้กด "ล้าง"

## คำอธิบายศัพท์ที่ควรรู้

<dl>
<dt>PDF</dt>
<dd>รูปแบบไฟล์เอกสารที่แสดงผลเหมือนกันในทุกอุปกรณ์ เหมาะกับการส่งงาน สัญญา และเอกสารทางการ</dd>
<dt>JPG (JPEG)</dt>
<dd>รูปแบบไฟล์ภาพที่บีบอัดขนาดได้ดี เปิดได้ทุกอุปกรณ์ เหมาะกับการแชร์ในแชต โซเชียล และอีเมล</dd>
<dt>คุณภาพ</dt>
<dd>ตัวเลือกที่กำหนดความละเอียดและระดับการบีบอัดของภาพ ยิ่งสูงภาพยิ่งคมชัดแต่ไฟล์ใหญ่ขึ้น</dd>
<dt>ต่ำ</dt>
<dd>ความละเอียดต่ำกว่า ไฟล์เล็ก เหมาะกับการดูตัวอย่างเร็ว ๆ</dd>
<dt>ปานกลาง</dt>
<dd>สมดุลระหว่างขนาดไฟล์และความคมชัด เหมาะกับใช้งานทั่วไป</dd>
<dt>สูง</dt>
<dd>ความละเอียดสูง รายละเอียดคมชัด เหมาะกับการพิมพ์หรือแชร์</dd>
<dt>สูงมาก</dt>
<dd>ความละเอียดและคุณภาพสูงสุด ไฟล์ใหญ่ที่สุด เหมาะกับการเก็บถาวร</dd>
<dt>ความละเอียด (Resolution)</dt>
<dd>จำนวนพิกเซลของภาพ ยิ่งมากยิ่งซูมดูได้ชัดโดยไม่แตก</dd>
<dt>ZIP</dt>
<dd>ไฟล์บีบอัดที่รวมหลายไฟล์ไว้ด้วยกัน ใช้เมื่อ PDF มีหลายหน้า เพื่อให้ดาวน์โหลดครั้งเดียวได้ทุกภาพ</dd>
<dt>ประมวลผลในเครื่อง</dt>
<dd>การแปลงทำงานในเบราว์เซอร์ของคุณเอง ไฟล์ไม่ถูกส่งไปยังเซิร์ฟเวอร์ จึงปลอดภัยกับเอกสารสำคัญ</dd>
<dt>ภาพย่อ (Thumbnail)</dt>
<dd>ภาพขนาดเล็กของแต่ละหน้า ใช้ตรวจสอบผลลัพธ์ก่อนนำไปใช้งาน</dd>
</dl>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('pj-drop'), input = $('pj-file'), nameEl = $('pj-name');
  var goBtn = $('pj-go'), clearBtn = $('pj-clear'), bar = $('pj-bar'), barI = $('pj-bari');
  var msg = $('pj-msg'), grid = $('pj-grid'), qBox = $('pj-q');
  var WORKER = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';
  var PRESETS = {
    low: { scale: 1, quality: 0.6 },
    medium: { scale: 1.5, quality: 0.75 },
    high: { scale: 2, quality: 0.9 },
    max: { scale: 3, quality: 0.95 }
  };
  var MAX_SIDE = 8000;
  var file = null, level = 'high', busy = false, urls = [];

  if (window.pdfjsLib) { window.pdfjsLib.GlobalWorkerOptions.workerSrc = WORKER; }

  function fmt(n) {
    if (n < 1024) { return n + ' B'; }
    if (n < 1048576) { return (n / 1024).toFixed(1) + ' KB'; }
    return (n / 1048576).toFixed(2) + ' MB';
  }
  function say(text, isErr) {
    msg.textContent = text;
    msg.className = 'pj-msg' + (isErr ? ' pj-err' : '');
  }
  function clearGrid() {
    urls.forEach(function (u) { URL.revokeObjectURL(u); });
    urls = [];
    grid.textContent = '';
  }
  function refresh() {
    goBtn.disabled = busy || !file;
    clearBtn.disabled = busy || !file;
  }
  function setFile(f) {
    if (!f) { return; }
    var ok = f.type === 'application/pdf' || /\.pdf$/i.test(f.name);
    if (!ok) { say('กรุณาเลือกไฟล์ PDF เท่านั้น', true); return; }
    file = f;
    nameEl.textContent = '📄 ' + f.name + ' (' + fmt(f.size) + ')';
    clearGrid();
    bar.hidden = true;
    say('');
    refresh();
  }
  function reset() {
    file = null;
    input.value = '';
    nameEl.textContent = '';
    clearGrid();
    bar.hidden = true;
    say('');
    refresh();
  }
  function save(blob, filename) {
    var a = document.createElement('a');
    var u = URL.createObjectURL(blob);
    a.href = u;
    a.download = filename;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(u); }, 5000);
  }
  function toBlob(canvas, quality) {
    return new Promise(function (resolve) { canvas.toBlob(resolve, 'image/jpeg', quality); });
  }

  async function convert() {
    if (!file || busy) { return; }
    if (!window.pdfjsLib || !window.JSZip) {
      say('โหลดไลบรารีไม่สำเร็จ กรุณารีเฟรชหน้าและตรวจสอบการเชื่อมต่ออินเทอร์เน็ต', true);
      return;
    }
    busy = true;
    refresh();
    clearGrid();
    bar.hidden = false;
    barI.style.width = '0%';
    say('กำลังอ่านไฟล์…');
    var base = file.name.replace(/\.pdf$/i, '') || 'document';
    var cfg = PRESETS[level];
    var results = [];
    try {
      var buf = await file.arrayBuffer();
      var pdf = await window.pdfjsLib.getDocument({ data: new Uint8Array(buf) }).promise;
      var total = pdf.numPages;
      for (var i = 1; i !== total + 1; i++) {
        say('กำลังแปลงหน้า ' + i + ' จาก ' + total);
        var page = await pdf.getPage(i);
        var vp = page.getViewport({ scale: cfg.scale });
        var side = Math.max(vp.width, vp.height);
        if (side > MAX_SIDE) { vp = page.getViewport({ scale: cfg.scale * MAX_SIDE / side }); }
        var canvas = document.createElement('canvas');
        canvas.width = Math.floor(vp.width);
        canvas.height = Math.floor(vp.height);
        var ctx = canvas.getContext('2d');
        ctx.fillStyle = '#ffffff';
        ctx.fillRect(0, 0, canvas.width, canvas.height);
        await page.render({ canvasContext: ctx, viewport: vp }).promise;
        var blob = await toBlob(canvas, cfg.quality);
        if (!blob) { throw new Error('สร้างภาพหน้า ' + i + ' ไม่สำเร็จ'); }
        results.push(blob);
        var url = URL.createObjectURL(blob);
        urls.push(url);
        var fig = document.createElement('figure');
        var img = document.createElement('img');
        var cap = document.createElement('figcaption');
        img.src = url;
        img.alt = 'หน้า ' + i;
        cap.textContent = String(i);
        fig.appendChild(img);
        fig.appendChild(cap);
        grid.appendChild(fig);
        canvas.width = 0;
        canvas.height = 0;
        page.cleanup();
        barI.style.width = Math.round(i / total * 100) + '%';
      }
      var size = 0;
      if (results.length === 1) {
        size = results[0].size;
        save(results[0], base + '.jpg');
      } else {
        var zip = new window.JSZip();
        var pad = String(total).length;
        results.forEach(function (b, idx) {
          var n = String(idx + 1);
          while (n.length !== pad) { n = '0' + n; }
          zip.file(base + '-' + n + '.jpg', b);
        });
        var zipBlob = await zip.generateAsync({ type: 'blob', compression: 'STORE' });
        size = zipBlob.size;
        save(zipBlob, base + '.zip');
      }
      say('เสร็จแล้ว ผลลัพธ์ ' + fmt(size) + ' จำนวน ' + total + ' หน้า');
    } catch (err) {
      var text = (err && err.name === 'PasswordException')
        ? 'ไฟล์ PDF นี้มีรหัสผ่าน กรุณาปลดล็อกก่อนแปลง'
        : 'แปลงไม่สำเร็จ: ' + ((err && err.message) || 'ไม่ทราบสาเหตุ');
      say(text, true);
    } finally {
      busy = false;
      refresh();
    }
  }

  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); input.click(); }
  });
  ['dragenter', 'dragover'].forEach(function (t) {
    drop.addEventListener(t, function (e) { e.preventDefault(); drop.classList.add('pj-over'); });
  });
  ['dragleave', 'drop'].forEach(function (t) {
    drop.addEventListener(t, function (e) { e.preventDefault(); drop.classList.remove('pj-over'); });
  });
  drop.addEventListener('drop', function (e) {
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    setFile(f);
  });
  input.addEventListener('change', function () { setFile(input.files && input.files[0]); });
  document.addEventListener('paste', function (e) {
    var files = e.clipboardData && e.clipboardData.files;
    if (files && files.length) { setFile(files[0]); }
  });
  qBox.addEventListener('click', function (e) {
    var b = e.target.closest ? e.target.closest('button[data-q]') : null;
    if (!b || busy) { return; }
    level = b.getAttribute('data-q');
    Array.prototype.forEach.call(qBox.querySelectorAll('button'), function (x) {
      x.setAttribute('aria-pressed', x === b ? 'true' : 'false');
    });
  });
  goBtn.addEventListener('click', convert);
  clearBtn.addEventListener('click', reset);
  refresh();
})();
</script>