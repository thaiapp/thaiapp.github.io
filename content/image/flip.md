---
title: กลับด้านรูปภาพออนไลน์ ฟรี
h1: กลับด้านรูปภาพออนไลน์
description: กลับด้านรูปภาพออนไลน์ พลิกภาพแนวนอนหรือแนวตั้งได้ทันทีในเบราว์เซอร์ รองรับ JPG, PNG, WebP ฟรี ไม่ต้องสมัครสมาชิก ไม่ต้องอัปโหลดไฟล์ ปลอดภัย ใช้งานง่าย
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-11T08:53:00+07:00'
weight: 103
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- กลับด้านรูปภาพออนไลน์
- รูปภาพ
---

<style>
.flip-tool{max-width:720px;margin:0 auto 1.5rem;font-family:inherit}
.flip-modes{display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:.75rem}
.flip-btn{flex:1 1 140px;padding:.7rem 1rem;font-size:1rem;font-family:inherit;border:2px solid rgba(128,128,128,.45);border-radius:10px;background:transparent;color:inherit;cursor:pointer;transition:background .15s,border-color .15s}
.flip-btn:hover{border-color:#3b82f6}
.flip-btn.is-active{background:#3b82f6;border-color:#3b82f6;color:#fff}
.flip-btn:disabled{opacity:.45;cursor:not-allowed}
.flip-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:2rem 1rem;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
.flip-drop:hover,.flip-drop.is-over,.flip-drop:focus{border-color:#3b82f6;background:rgba(59,130,246,.08);outline:none}
.flip-drop-icon{font-size:2.5rem;line-height:1}
.flip-drop-title{margin:.5rem 0 .25rem;font-weight:600}
.flip-drop-note{margin:0;font-size:.9rem;opacity:.75}
.flip-stage{display:none;text-align:center}
.flip-stage.is-visible{display:block}
.flip-canvas-wrap{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:.5rem;background-image:linear-gradient(45deg,rgba(128,128,128,.15) 25%,transparent 25%,transparent 75%,rgba(128,128,128,.15) 75%),linear-gradient(45deg,rgba(128,128,128,.15) 25%,transparent 25%,transparent 75%,rgba(128,128,128,.15) 75%);background-size:16px 16px;background-position:0 0,8px 8px}
#flipCanvas{max-width:100%;height:auto;display:block;margin:0 auto}
.flip-dims{margin:.5rem 0;font-size:.9rem;opacity:.8}
.flip-actions{display:flex;gap:.5rem;flex-wrap:wrap;justify-content:center;margin-top:.5rem}
.flip-actions .flip-btn{flex:0 1 auto;min-width:130px}
.flip-primary{background:#16a34a;border-color:#16a34a;color:#fff}
.flip-primary:hover{border-color:#15803d;background:#15803d}
.flip-status{min-height:1.4rem;margin:.5rem 0 0;text-align:center;font-size:.9rem}
.flip-status.is-error{color:#dc2626}
.flip-privacy{text-align:center;font-size:.85rem;opacity:.8;margin-top:.5rem}
</style>
<div class="flip-tool" id="flipTool">
<div class="flip-modes" role="group" aria-label="เลือกทิศทางการกลับด้าน">
<button type="button" class="flip-btn" id="flipBtnH" aria-pressed="false">◧ ⬌ ◨ แนวนอน</button>
<button type="button" class="flip-btn" id="flipBtnV" aria-pressed="false">⬒ ⬍ ⬓ แนวตั้ง</button>
</div>
<div class="flip-drop" id="flipDrop" tabindex="0" role="button" aria-label="เลือกหรือวางรูปภาพ">
<div class="flip-drop-icon">📁</div>
<p class="flip-drop-title">เลือกรูปภาพ…</p>
<p class="flip-drop-note">ลากรูปภาพมาที่นี่ หรือกด Ctrl+V เพื่อวาง</p>
<p class="flip-drop-note">รองรับ JPG, PNG, WebP, GIF และ HEIC</p>
<input type="file" id="flipFile" accept="image/*,.heic,.heif" style="display:none">
</div>
<div class="flip-stage" id="flipStage">
<div class="flip-canvas-wrap"><canvas id="flipCanvas"></canvas></div>
<p class="flip-dims" id="flipDims"></p>
<div class="flip-actions">
<button type="button" class="flip-btn flip-primary" id="flipDownload">ดาวน์โหลด</button>
<button type="button" class="flip-btn" id="flipCopy">คัดลอกรูปภาพ</button>
<button type="button" class="flip-btn" id="flipClear">ล้าง</button>
</div>
</div>
<p class="flip-status" id="flipStatus" role="status" aria-live="polite"></p>
<p class="flip-privacy">🛡️ ประมวลผลในเครื่อง 100% ไฟล์ของคุณไม่ถูกอัปโหลดไปที่ใด</p>
</div>

<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('flipDrop');
  var input = $('flipFile');
  var stage = $('flipStage');
  var canvas = $('flipCanvas');
  var ctx = canvas.getContext('2d');
  var btnH = $('flipBtnH');
  var btnV = $('flipBtnV');
  var dims = $('flipDims');
  var statusEl = $('flipStatus');
  var img = null;
  var flipH = false;
  var flipV = false;
  var baseName = 'image';
  var currentUrl = null;
  function setStatus(msg, isError) {
    statusEl.textContent = msg || '';
    statusEl.className = 'flip-status' + (isError ? ' is-error' : '');
  }
  function render() {
    if (!img) { return; }
    var w = img.naturalWidth || img.width;
    var h = img.naturalHeight || img.height;
    canvas.width = w;
    canvas.height = h;
    ctx.clearRect(0, 0, w, h);
    ctx.save();
    ctx.translate(flipH ? w : 0, flipV ? h : 0);
    ctx.scale(flipH ? -1 : 1, flipV ? -1 : 1);
    ctx.drawImage(img, 0, 0, w, h);
    ctx.restore();
    dims.textContent = w + ' × ' + h + ' px';
    btnH.className = 'flip-btn' + (flipH ? ' is-active' : '');
    btnV.className = 'flip-btn' + (flipV ? ' is-active' : '');
    btnH.setAttribute('aria-pressed', flipH ? 'true' : 'false');
    btnV.setAttribute('aria-pressed', flipV ? 'true' : 'false');
  }
  function reset() {
    if (currentUrl) { URL.revokeObjectURL(currentUrl); currentUrl = null; }
    img = null;
    flipH = false;
    flipV = false;
    input.value = '';
    stage.className = 'flip-stage';
    drop.style.display = '';
    btnH.className = 'flip-btn';
    btnV.className = 'flip-btn';
    btnH.setAttribute('aria-pressed', 'false');
    btnV.setAttribute('aria-pressed', 'false');
    setStatus('');
  }
  function isImageFile(file) {
    var name = (file.name || '').toLowerCase();
    var typeOk = (file.type || '').indexOf('image/') === 0;
    var extOk = /\.(jpe?g|png|webp|gif|heic|heif|bmp|avif)$/.test(name);
    return typeOk || extOk;
  }
  function loadFile(file) {
    if (!file) { return; }
    if (!isImageFile(file)) {
      setStatus('ไฟล์นี้ไม่ใช่รูปภาพ กรุณาเลือกไฟล์ JPG, PNG, WebP, GIF หรือ HEIC', true);
      return;
    }
    setStatus('กำลังโหลดรูปภาพ...');
    if (currentUrl) { URL.revokeObjectURL(currentUrl); currentUrl = null; }
    var url = URL.createObjectURL(file);
    var image = new Image();
    image.onload = function () {
      currentUrl = url;
      img = image;
      flipH = false;
      flipV = false;
      baseName = (file.name || 'image').replace(/\.[^.]+$/, '') || 'image';
      drop.style.display = 'none';
      stage.className = 'flip-stage is-visible';
      render();
      setStatus('');
    };
    image.onerror = function () {
      URL.revokeObjectURL(url);
      var isHeic = /\.(heic|heif)$/i.test(file.name || '');
      setStatus(isHeic
        ? 'เบราว์เซอร์นี้ยังไม่รองรับไฟล์ HEIC โดยตรง ลองใช้ Safari หรือแปลงเป็น JPG ก่อน'
        : 'ไม่สามารถเปิดรูปภาพนี้ได้ กรุณาลองไฟล์อื่น', true);
    };
    image.src = url;
  }
  function withBlob(callback) {
    canvas.toBlob(function (blob) {
      if (!blob) { setStatus('เกิดข้อผิดพลาดในการสร้างไฟล์ภาพ', true); return; }
      callback(blob);
    }, 'image/png');
  }
  drop.addEventListener('click', function () { input.click(); });
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); input.click(); }
  });
  input.addEventListener('change', function () {
    if (input.files && input.files[0]) { loadFile(input.files[0]); }
  });
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) {
      e.preventDefault();
      drop.className = 'flip-drop is-over';
    });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) {
      e.preventDefault();
      drop.className = 'flip-drop';
    });
  });
  drop.addEventListener('drop', function (e) {
    var files = e.dataTransfer && e.dataTransfer.files;
    if (files && files[0]) { loadFile(files[0]); }
  });
  document.addEventListener('paste', function (e) {
    var items = e.clipboardData && e.clipboardData.items;
    if (!items) { return; }
    var found = null;
    Array.prototype.some.call(items, function (item) {
      if (item.kind === 'file' && (item.type || '').indexOf('image/') === 0) {
        found = item.getAsFile();
        return true;
      }
      return false;
    });
    if (found) { e.preventDefault(); loadFile(found); }
  });
  btnH.addEventListener('click', function () { if (img) { flipH = !flipH; render(); } else { setStatus('กรุณาเลือกรูปภาพก่อน'); } });
  btnV.addEventListener('click', function () { if (img) { flipV = !flipV; render(); } else { setStatus('กรุณาเลือกรูปภาพก่อน'); } });
  $('flipDownload').addEventListener('click', function () {
    if (!img) { return; }
    withBlob(function (blob) {
      var a = document.createElement('a');
      var href = URL.createObjectURL(blob);
      a.href = href;
      a.download = baseName + '-flipped.png';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(href); }, 1000);
      setStatus('ดาวน์โหลดแล้ว');
    });
  });
  $('flipCopy').addEventListener('click', function () {
    if (!img) { return; }
    if (!(navigator.clipboard && window.ClipboardItem)) {
      setStatus('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูปภาพ กรุณาใช้ปุ่มดาวน์โหลดแทน', true);
      return;
    }
    withBlob(function (blob) {
      navigator.clipboard.write([new ClipboardItem({ 'image/png': blob })]).then(function () {
        setStatus('คัดลอกรูปภาพแล้ว');
      }).catch(function () {
        setStatus('ไม่สามารถคัดลอกรูปภาพได้ กรุณาใช้ปุ่มดาวน์โหลดแทน', true);
      });
    });
  });
  $('flipClear').addEventListener('click', reset);
})();
</script>

## วิธีใช้งานเครื่องมือกลับด้านรูปภาพ

1. **เลือกรูปภาพ** คลิกที่กรอบ "เลือกรูปภาพ…" ลากไฟล์มาวางในกรอบ หรือกด `Ctrl`+`V` เพื่อวางรูปที่คัดลอกไว้
2. **เลือกทิศทาง** กดปุ่ม **แนวนอน** เพื่อพลิกซ้าย-ขวา หรือปุ่ม **แนวตั้ง** เพื่อพลิกบน-ล่าง กดปุ่มเดิมอีกครั้งเพื่อยกเลิกการพลิก ใช้ทั้งสองปุ่มพร้อมกันเพื่อพลิกทั้งสองทิศทาง
3. **ตรวจสอบตัวอย่าง** ภาพบนแคนวาสจะอัปเดตทันที และแสดงขนาดภาพเป็นพิกเซลด้านล่าง
4. **บันทึกผลลัพธ์** กด **ดาวน์โหลด** เพื่อบันทึกเป็นไฟล์ PNG หรือกด **คัดลอกรูปภาพ** เพื่อนำไปวางในแอปอื่น
5. **เริ่มใหม่** กด **ล้าง** เพื่อลบรูปปัจจุบันและเลือกรูปใหม่

ทุกขั้นตอนทำงานในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดไฟล์ไปยังเซิร์ฟเวอร์

## คำอธิบายศัพท์

- **กลับด้านแนวนอน (Flip Horizontal)** พลิกภาพซ้าย-ขวาเหมือนมองในกระจก ข้อความและวัตถุในภาพจะกลับด้านซ้ายขวา
- **กลับด้านแนวตั้ง (Flip Vertical)** พลิกภาพบน-ล่าง ทำให้ภาพกลับหัว
- **ภาพสะท้อน (Mirror)** ภาพที่ได้จากการพลิกแนวนอน มักใช้แก้ภาพเซลฟีจากกล้องหน้าหรือสร้างเอฟเฟกต์เงาสะท้อน
- **แคนวาส (Canvas)** พื้นที่แสดงภาพในเบราว์เซอร์ที่ใช้ประมวลผลและแสดงผลลัพธ์ทันที
- **พิกเซล (px)** หน่วยเล็กที่สุดของภาพดิจิทัล ใช้บอกความกว้าง × ความสูงของภาพ การกลับด้านไม่เปลี่ยนขนาดภาพ
- **JPG** ไฟล์ภาพยอดนิยม ขนาดเล็ก เหมาะกับภาพถ่าย
- **PNG** ไฟล์ภาพคุณภาพสูงที่รองรับพื้นหลังโปร่งใส เป็นรูปแบบที่ใช้บันทึกผลลัพธ์ในเครื่องมือนี้
- **WebP** รูปแบบภาพสมัยใหม่จาก Google ขนาดไฟล์เล็กแต่คุณภาพดี
- **GIF** ไฟล์ภาพที่เคลื่อนไหวได้ เครื่องมือนี้จะใช้เฟรมแรกของภาพเท่านั้น
- **HEIC** รูปแบบภาพจาก iPhone บางเบราว์เซอร์ (เช่น Safari) เปิดได้โดยตรง ส่วนเบราว์เซอร์อื่นควรแปลงเป็น JPG ก่อน
- **ประมวลผลในเครื่อง** ภาพถูกประมวลผลในอุปกรณ์ของคุณเองและไม่ถูกส่งออกไปภายนอก
- **คัดลอกรูปภาพ** คัดลอกภาพที่พลิกแล้วลงคลิปบอร์ด เพื่อวางต่อในแอปแชท เอกสาร หรือโปรแกรมแต่งภาพ