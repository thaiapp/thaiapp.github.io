---
title: หมุนรูปภาพออนไลน์ ฟรี
h1: หมุนรูปภาพออนไลน์
description: หมุนรูปภาพออนไลน์ฟรี หมุนซ้ายหรือขวาทีละ 90° แก้รูปเอียงข้างหรือกลับหัวได้ทันที รองรับ JPG, PNG, WebP และ GIF ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-11T08:44:00+07:00'
weight: 101
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- หมุนรูปภาพออนไลน์
- รูปภาพ
---

<div id="rot-tool">
<style>
#rot-tool{max-width:720px;margin:0 auto 24px}
#rot-tool .rot-drop{display:block;box-sizing:border-box;padding:32px 16px;border:2px dashed rgba(128,128,128,.55);border-radius:12px;text-align:center;cursor:pointer}
#rot-tool .rot-drop.rot-over{border-color:#2f7df6;background:rgba(47,125,246,.08)}
#rot-tool .rot-ico{font-size:40px;line-height:1.2}
#rot-tool .rot-t{font-size:18px;font-weight:600;margin:6px 0}
#rot-tool .rot-s{font-size:14px;opacity:.75;margin:4px 0}
#rot-tool .rot-bar{display:flex;flex-wrap:wrap;gap:8px;justify-content:center;margin:12px 0}
#rot-tool button{font:inherit;padding:8px 16px;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:transparent;color:inherit;cursor:pointer}
#rot-tool button:hover{background:rgba(128,128,128,.15)}
#rot-tool button.rot-main{background:#2f7df6;border-color:#2f7df6;color:#fff}
#rot-tool button.rot-main:hover{background:#1f6be0}
#rot-tool .rot-cvwrap{text-align:center;padding:12px;border-radius:12px;background:rgba(128,128,128,.12)}
#rot-tool canvas{max-width:100%;max-height:70vh;height:auto;display:inline-block}
#rot-tool #rot-info,#rot-tool #rot-msg{text-align:center;min-height:20px}
</style>
<label id="rot-drop" class="rot-drop" tabindex="0">
<input type="file" id="rot-file" accept="image/*" hidden>
<div class="rot-ico">📁</div>
<div class="rot-t">เลือกรูปภาพ…</div>
<div class="rot-s">ลากรูปภาพมาวางที่นี่ หรือกด Ctrl+V เพื่อวาง</div>
<div class="rot-s">รองรับ JPG, PNG, WebP และ GIF</div>
</label>
<div id="rot-stage" style="display:none">
<div class="rot-bar">
<button type="button" id="rot-left" title="หมุนซ้าย 90°">↺ หมุนซ้าย</button>
<button type="button" id="rot-right" title="หมุนขวา 90°">↻ หมุนขวา</button>
</div>
<div class="rot-cvwrap"><canvas id="rot-canvas"></canvas></div>
<div id="rot-info" class="rot-s"></div>
<div class="rot-bar">
<button type="button" id="rot-dl" class="rot-main">ดาวน์โหลด</button>
<button type="button" id="rot-copy">คัดลอกรูปภาพ</button>
<button type="button" id="rot-clear">ล้าง</button>
</div>
</div>
<div id="rot-msg" class="rot-s" role="status" aria-live="polite"></div>
<script>
(function () {
var $ = function (id) { return document.getElementById(id); };
var drop = $('rot-drop'), fileInput = $('rot-file'), stage = $('rot-stage');
var cv = $('rot-canvas'), ctx = cv.getContext('2d'), info = $('rot-info'), msg = $('rot-msg');
var img = null, angle = 0, baseName = 'image', timer = null;
function say(text) {
msg.textContent = text || '';
clearTimeout(timer);
if (text) { timer = setTimeout(function () { msg.textContent = ''; }, 3500); }
}
function draw() {
if (!img) { return; }
var w = img.naturalWidth, h = img.naturalHeight;
var swap = (angle % 180) !== 0;
cv.width = swap ? h : w;
cv.height = swap ? w : h;
ctx.save();
ctx.translate(cv.width / 2, cv.height / 2);
ctx.rotate(angle * Math.PI / 180);
ctx.drawImage(img, -w / 2, -h / 2);
ctx.restore();
info.textContent = cv.width + ' × ' + cv.height + ' px  ·  ' + angle + '°';
}
function rotate(delta) {
if (!img) { return; }
angle = (angle + delta + 360) % 360;
draw();
}
function loadFile(f) {
if (!f || !/^image\//.test(f.type)) { say('กรุณาเลือกไฟล์รูปภาพ (JPG, PNG, WebP, GIF)'); return; }
var url = URL.createObjectURL(f);
var im = new Image();
im.onload = function () {
img = im; angle = 0;
baseName = (f.name || 'image').replace(/\.[^.]+$/, '') || 'image';
drop.style.display = 'none';
stage.style.display = '';
draw();
URL.revokeObjectURL(url);
};
im.onerror = function () {
URL.revokeObjectURL(url);
say('ไม่สามารถเปิดไฟล์นี้ได้ ลองใช้ไฟล์ JPG, PNG, WebP หรือ GIF');
};
im.src = url;
}
function download() {
if (!img) { return; }
cv.toBlob(function (blob) {
if (!blob) { say('ไม่สามารถสร้างไฟล์ได้'); return; }
var a = document.createElement('a');
var href = URL.createObjectURL(blob);
a.href = href;
a.download = baseName + '-rotated.png';
document.body.appendChild(a);
a.click();
document.body.removeChild(a);
setTimeout(function () { URL.revokeObjectURL(href); }, 1000);
}, 'image/png');
}
function copyImage() {
if (!img) { return; }
if (!navigator.clipboard || !window.ClipboardItem) { say('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูปภาพ ใช้ดาวน์โหลดแทน'); return; }
cv.toBlob(function (blob) {
if (!blob) { say('ไม่สามารถคัดลอกรูปภาพได้'); return; }
navigator.clipboard.write([new ClipboardItem({ 'image/png': blob })]).then(function () {
say('คัดลอกรูปภาพแล้ว');
}, function () {
say('ไม่สามารถคัดลอกรูปภาพได้ ใช้ดาวน์โหลดแทน');
});
}, 'image/png');
}
function clearAll() {
img = null; angle = 0;
fileInput.value = '';
stage.style.display = 'none';
drop.style.display = '';
info.textContent = '';
}
fileInput.addEventListener('change', function () { loadFile(fileInput.files && fileInput.files[0]); });
drop.addEventListener('keydown', function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileInput.click(); } });
['dragenter', 'dragover'].forEach(function (t) {
drop.addEventListener(t, function (e) { e.preventDefault(); drop.classList.add('rot-over'); });
});
['dragleave', 'drop'].forEach(function (t) {
drop.addEventListener(t, function (e) { e.preventDefault(); drop.classList.remove('rot-over'); });
});
drop.addEventListener('drop', function (e) { loadFile(e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0]); });
document.addEventListener('paste', function (e) {
var items = (e.clipboardData && e.clipboardData.items) || [];
for (var i = 0; i < items.length; i++) {
if (items[i].kind === 'file' && /^image\//.test(items[i].type)) { loadFile(items[i].getAsFile()); e.preventDefault(); return; }
}
});
$('rot-left').addEventListener('click', function () { rotate(-90); });
$('rot-right').addEventListener('click', function () { rotate(90); });
$('rot-dl').addEventListener('click', download);
$('rot-copy').addEventListener('click', copyImage);
$('rot-clear').addEventListener('click', clearAll);
})();
</script>
</div>

หมุนรูปภาพของคุณได้ทันทีในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ ไม่ต้องติดตั้งแอป และไม่ต้องรอเซิร์ฟเวอร์ ใช้แก้ภาพถ่ายที่เอียงข้าง เอกสารสแกนที่กลับหัว หรือเปลี่ยนภาพแนวตั้งเป็นแนวนอน ไฟล์ของคุณอยู่บนอุปกรณ์ของคุณตลอดเวลา

## วิธีหมุนรูปภาพ

1. **เลือกรูปภาพ** คลิกพื้นที่ "เลือกรูปภาพ…" เพื่อเลือกไฟล์ ลากไฟล์มาวาง หรือกด `Ctrl`+`V` เพื่อวางรูปที่คัดลอกไว้
2. **หมุนรูปภาพ** กดปุ่ม **↺ หมุนซ้าย** หรือ **↻ หมุนขวา** เพื่อหมุนทีละ 90° กดซ้ำเพื่อให้ได้ 180° หรือ 270° ตัวอย่างจะอัปเดตทันที
3. **ตรวจสอบผลลัพธ์** ดูขนาดภาพ (กว้าง × สูง) และมุมที่หมุนแล้วใต้ตัวอย่าง
4. **บันทึกหรือคัดลอก** กด **ดาวน์โหลด** เพื่อบันทึกเป็นไฟล์ PNG หรือกด **คัดลอกรูปภาพ** เพื่อนำไปวางในแอปอื่น
5. **เริ่มใหม่** กด **ล้าง** เพื่อลบรูปปัจจุบันและเลือกรูปใหม่

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **หมุนซ้าย (↺)** หมุนรูปทวนเข็มนาฬิกาครั้งละ 90°
- **หมุนขวา (↻)** หมุนรูปตามเข็มนาฬิกาครั้งละ 90°
- **90° / 180° / 270°** มุมที่รูปหมุนไป โดย 180° คือการกลับหัวรูป ส่วน 90° และ 270° จะสลับความกว้างกับความสูงของภาพ
- **การวางแนว (Orientation)** ทิศทางของภาพ เช่น แนวตั้งหรือแนวนอน
- **EXIF** ข้อมูลที่กล้องหรือโทรศัพท์บันทึกไว้ในไฟล์ภาพ รวมถึงทิศทางการถ่าย บางครั้งโปรแกรมอ่านค่านี้ผิดทำให้ภาพแสดงเอียงข้าง
- **ตัวอย่างภาพ (Canvas)** พื้นที่แสดงรูปที่หมุนแล้วแบบเรียลไทม์ ก่อนบันทึก
- **ดาวน์โหลด** บันทึกรูปที่หมุนแล้วลงอุปกรณ์เป็นไฟล์ PNG
- **คัดลอกรูปภาพ** คัดลอกรูปที่หมุนแล้วไปยังคลิปบอร์ด เพื่อวางต่อในแอปแชต เอกสาร หรือโปรแกรมแต่งรูป
- **วาง (Ctrl+V)** นำรูปที่คัดลอกไว้เข้ามาในเครื่องมือโดยตรง โดยไม่ต้องบันทึกเป็นไฟล์ก่อน
- **ล้าง** ล้างรูปปัจจุบันและกลับไปหน้าเลือกรูปภาพ
- **px (พิกเซล)** หน่วยวัดขนาดภาพ เช่น 1920 × 1080 px คือกว้าง 1920 และสูง 1080 พิกเซล
- **JPG** ไฟล์ภาพถ่ายทั่วไป ขนาดเล็ก แต่เป็นการบีบอัดแบบสูญเสียรายละเอียด
- **PNG** ไฟล์ภาพคุณภาพสูงแบบไม่สูญเสียรายละเอียด รองรับพื้นหลังโปร่งใส และเป็นรูปแบบที่ใช้บันทึกผลลัพธ์
- **WebP** รูปแบบภาพสมัยใหม่ ขนาดไฟล์เล็กกว่า JPG และ PNG
- **GIF** ไฟล์ภาพที่ใช้กับภาพเคลื่อนไหวสั้น ๆ เครื่องมือนี้จะบันทึกเฉพาะเฟรมแรกเป็นภาพนิ่ง
- **HEIC** รูปแบบภาพที่ iPhone ใช้ การเปิดไฟล์ชนิดนี้ขึ้นอยู่กับเบราว์เซอร์ที่รองรับ (เช่น Safari)
- **ประมวลผลในเครื่อง** รูปถูกหมุนในเบราว์เซอร์ของคุณเอง ไม่มีการอัปโหลดไปยังเซิร์ฟเวอร์ จึงปลอดภัยต่อข้อมูลส่วนตัว