---
title: เต็มหน้าจอสีดำ ออนไลน์ ฟรี
h1: เต็มหน้าจอสีดำ
description: เต็มหน้าจอสีดำออนไลน์ฟรี กดปุ่มเดียวเปิดโหมดเต็มหน้าจอสีดำได้ทันที ใช้ตรวจ Dead Pixel พักสายตา หรือปิดไฟห้อง รองรับมือถือและคอมพิวเตอร์ ไม่ต้องลงทะเบียน
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 20
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- เต็มหน้าจอสีดำ
- เต็มหน้าจอสีดำ ออนไลน์
- ทดสอบและวัดค่า
---
<style>
.bs-card{max-width:640px;margin:0 auto 1.5rem;padding:1rem;border:1px solid rgba(128,128,128,.35);border-radius:12px;text-align:center}
.bs-preview{height:180px;border-radius:10px;background:#000;color:#fff;display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:1.1rem;border:1px solid rgba(128,128,128,.5);user-select:none}
.bs-preview:focus{outline:3px solid #3b82f6;outline-offset:2px}
.bs-title{margin:1rem 0 .5rem;font-weight:600}
.bs-swatches{display:flex;flex-wrap:wrap;gap:.5rem;justify-content:center}
.bs-sw{width:36px;height:36px;border-radius:50%;border:2px solid rgba(128,128,128,.6);cursor:pointer;padding:0}
.bs-sw.bs-active{outline:3px solid #3b82f6;outline-offset:2px}
.bs-opt{display:block;margin:1rem 0 .5rem;cursor:pointer}
.bs-btn{display:inline-block;margin-top:.5rem;padding:.7rem 1.6rem;font-size:1rem;font-weight:600;color:#fff;background:#2563eb;border:0;border-radius:8px;cursor:pointer}
.bs-btn:hover{background:#1d4ed8}
.bs-note{font-size:.85rem;opacity:.75;margin-top:.75rem}
#bsOverlay{position:fixed;top:0;left:0;right:0;bottom:0;width:100%;height:100%;z-index:2147483647;display:none;cursor:none;background:#000}
#bsHint{position:absolute;left:50%;bottom:8%;transform:translateX(-50%);padding:.5rem 1rem;border-radius:999px;background:rgba(0,0,0,.65);color:#fff;font-size:.95rem;transition:opacity .6s;pointer-events:none;border:1px solid rgba(255,255,255,.35)}
</style>
<div class="bs-card">
<div class="bs-preview" id="bsPreview" role="button" tabindex="0" aria-label="คลิกเพื่อเปิดเต็มหน้าจอ"><span>คลิกเพื่อเต็มหน้าจอ</span></div>
<div class="bs-title">เลือกสีหน้าจอ</div>
<div class="bs-swatches" id="bsSwatches"></div>
<label class="bs-opt"><input type="checkbox" id="bsAwake" checked> เปิดหน้าจอไว้ (ไม่ให้จอดับเอง)</label>
<button type="button" class="bs-btn" id="bsStart">เริ่มเต็มหน้าจอ</button>
<p class="bs-note">กด Esc หรือคลิก/แตะที่หน้าจอเพื่อออก</p>
</div>
<div id="bsOverlay"><div id="bsHint">คลิกหรือแตะเพื่อออก · Esc</div></div>
<script>
(function () {
  var COLORS = [
    { name: 'ดำ', value: '#000000' },
    { name: 'ขาว', value: '#ffffff' },
    { name: 'เทา', value: '#808080' },
    { name: 'แดง', value: '#ff0000' },
    { name: 'เขียว', value: '#00ff00' },
    { name: 'น้ำเงิน', value: '#0000ff' },
    { name: 'เหลือง', value: '#ffff00' },
    { name: 'ส้ม', value: '#ff8000' },
    { name: 'ชมพู', value: '#ff69b4' },
    { name: 'ม่วง', value: '#800080' }
  ];
  var current = COLORS[0].value;
  var wakeLock = null;
  var hintTimer = null;
  var overlay = document.getElementById('bsOverlay');
  var hint = document.getElementById('bsHint');
  var preview = document.getElementById('bsPreview');
  var startBtn = document.getElementById('bsStart');
  var awake = document.getElementById('bsAwake');
  var swatchBox = document.getElementById('bsSwatches');
  if (!overlay || !preview || !startBtn || !swatchBox) { return; }
  function setColor(value) {
    current = value;
    preview.style.background = value;
    preview.style.color = (value === '#ffffff' || value === '#ffff00' || value === '#00ff00') ? '#000' : '#fff';
    var items = swatchBox.children;
    for (var i = 0; i !== items.length; i++) {
      if (items[i].getAttribute('data-color') === value) {
        items[i].className = 'bs-sw bs-active';
      } else {
        items[i].className = 'bs-sw';
      }
    }
  }
  COLORS.forEach(function (c) {
    var b = document.createElement('button');
    b.type = 'button';
    b.className = 'bs-sw';
    b.style.background = c.value;
    b.title = c.name;
    b.setAttribute('aria-label', 'สี' + c.name);
    b.setAttribute('data-color', c.value);
    b.addEventListener('click', function () { setColor(c.value); });
    swatchBox.appendChild(b);
  });
  setColor(current);
  function isFullscreen() {
    return !!(document.fullscreenElement || document.webkitFullscreenElement);
  }
  function requestWake() {
    try {
      if (awake.checked && navigator.wakeLock && navigator.wakeLock.request) {
        navigator.wakeLock.request('screen').then(function (lock) {
          wakeLock = lock;
        }).catch(function () {});
      }
    } catch (e) {}
  }
  function releaseWake() {
    try {
      if (wakeLock) { wakeLock.release(); wakeLock = null; }
    } catch (e) {}
  }
  function showHint() {
    hint.style.opacity = '1';
    clearTimeout(hintTimer);
    hintTimer = setTimeout(function () { hint.style.opacity = '0'; }, 2500);
  }
  function enter() {
    overlay.style.background = current;
    overlay.style.display = 'block';
    showHint();
    try {
      var fn = overlay.requestFullscreen || overlay.webkitRequestFullscreen;
      if (fn) {
        var p = fn.call(overlay);
        if (p && p.catch) { p.catch(function () {}); }
      }
    } catch (e) {}
    requestWake();
  }
  function exit() {
    overlay.style.display = 'none';
    releaseWake();
    try {
      if (isFullscreen()) {
        var fn = document.exitFullscreen || document.webkitExitFullscreen;
        if (fn) {
          var p = fn.call(document);
          if (p && p.catch) { p.catch(function () {}); }
        }
      }
    } catch (e) {}
  }
  startBtn.addEventListener('click', enter);
  preview.addEventListener('click', enter);
  preview.addEventListener('keydown', function (ev) {
    if (ev.key === 'Enter' || ev.key === ' ') { ev.preventDefault(); enter(); }
  });
  overlay.addEventListener('click', exit);
  overlay.addEventListener('mousemove', showHint);
  document.addEventListener('keydown', function (ev) {
    if (ev.key === 'Escape' && overlay.style.display === 'block') { exit(); }
  });
  function onFsChange() {
    if (!isFullscreen() && overlay.style.display === 'block') {
      overlay.style.display = 'none';
      releaseWake();
    }
  }
  document.addEventListener('fullscreenchange', onFsChange);
  document.addEventListener('webkitfullscreenchange', onFsChange);
  document.addEventListener('visibilitychange', function () {
    if (document.visibilityState === 'visible' && overlay.style.display === 'block') {
      requestWake();
    }
  });
})();
</script>

## วิธีใช้งานเครื่องมือเต็มหน้าจอสีดำ

1. **เลือกสี** (ไม่บังคับ) – ค่าเริ่มต้นคือสีดำ หากต้องการใช้สีอื่น เช่น ขาว แดง เขียว หรือน้ำเงิน ให้กดวงกลมสีที่ต้องการ
2. **เลือกตัวเลือก "เปิดหน้าจอไว้"** – ติ๊กไว้หากไม่ต้องการให้จอดับหรือเข้าโหมดพักหน้าจอระหว่างใช้งาน
3. **กดปุ่ม "เริ่มเต็มหน้าจอ"** หรือคลิกที่กล่องตัวอย่าง หน้าจอจะเปลี่ยนเป็นสีที่เลือกเต็มพื้นที่ทันที
4. **ใช้งานตามต้องการ** – ตรวจหาจุดเสียบนจอ พักสายตา ใช้เป็นฉากหลังสำหรับถ่ายภาพหรือวิดีโอ หรือใช้เป็นแสงสลัวในห้องมืด
5. **ออกจากโหมดเต็มหน้าจอ** – กดปุ่ม Esc บนคีย์บอร์ด หรือคลิก/แตะที่หน้าจอหนึ่งครั้ง

**เคล็ดลับ**
- เมื่อตรวจ Dead Pixel ควรสลับดูหลายสี เพราะพิกเซลเสียบางจุดจะเห็นชัดเฉพาะบนสีบางสี
- ลดแสงห้องให้มืดและปรับความสว่างหน้าจอให้สูงสุดก่อนตรวจ เพื่อให้เห็นจุดผิดปกติชัดขึ้น
- บน iPhone/iPad ที่ไม่รองรับโหมดเต็มหน้าจอเต็มรูปแบบ เครื่องมือจะแสดงสีคลุมพื้นที่หน้าเว็บทั้งหมดแทน

## อธิบายศัพท์ที่เกี่ยวข้อง

**เต็มหน้าจอ (Fullscreen)** – โหมดแสดงผลที่ซ่อนแถบเมนู แถบที่อยู่เว็บ และแถบงาน เพื่อให้เนื้อหาใช้พื้นที่จอได้ทั้งหมด

**พิกเซล (Pixel)** – จุดสีเล็ก ๆ ที่เป็นหน่วยพื้นฐานของภาพบนหน้าจอ ภาพทั้งหมดเกิดจากพิกเซลจำนวนมากเรียงกัน

**Dead Pixel (พิกเซลตาย)** – พิกเซลที่ไม่ทำงาน แสดงเป็นจุดดำคงที่ มักเห็นชัดบนพื้นสีขาวหรือสีสว่าง

**Stuck Pixel (พิกเซลค้าง)** – พิกเซลที่ค้างอยู่ที่สีใดสีหนึ่ง เช่น แดง เขียว หรือน้ำเงิน เห็นชัดบนพื้นสีดำ บางครั้งแก้ได้ด้วยการแสดงสีสลับเร็ว ๆ

**หน้าจอ OLED** – จอที่แต่ละพิกเซลเปล่งแสงเอง เมื่อแสดงสีดำสนิทพิกเซลจะดับ จึงให้สีดำลึกและช่วยประหยัดแบตเตอรี่

**จอ LCD / IPS** – จอที่ใช้แสงไฟด้านหลัง (Backlight) ส่องผ่านผลึกเหลว สีดำจึงอาจดูเป็นเทาเข้มมากกว่าดำสนิท

**Backlight Bleed (แสงรั่วขอบจอ)** – แสงไฟด้านหลังที่รั่วออกมาตามขอบหรือมุมจอ เห็นได้ชัดเมื่อแสดงสีดำในห้องมืด

**Burn-in / Image Retention (ภาพค้างหน้าจอ)** – ร่องรอยของภาพนิ่งที่แสดงนานเกินไปจนติดค้างบนจอ พบบ่อยในจอ OLED การสลับสีหน้าจอช่วยบรรเทาได้ในบางกรณี

**Contrast Ratio (อัตราส่วนความคมชัด)** – ค่าเปรียบเทียบความสว่างของสีขาวกับสีดำที่จอแสดงได้ ยิ่งสูงภาพยิ่งมีมิติ

**Wake Lock (ป้องกันจอดับ)** – ฟีเจอร์ของเบราว์เซอร์ที่ขอให้อุปกรณ์เปิดหน้าจอค้างไว้ ไม่เข้าโหมดพักหน้าจอ ใช้เมื่อติ๊ก "เปิดหน้าจอไว้"

**โหมดประหยัดพลังงาน / Screen Timeout** – การตั้งค่าที่ให้จอดับอัตโนมัติเมื่อไม่มีการใช้งานช่วงหนึ่ง

## คำถามที่พบบ่อย

**ใช้เครื่องมือนี้ต้องติดตั้งหรือสมัครสมาชิกไหม?**
ไม่ต้อง เปิดหน้านี้แล้วกดปุ่มเริ่มได้ทันทีบนเบราว์เซอร์ทั้งมือถือ แท็บเล็ต และคอมพิวเตอร์

**ทำไมกดแล้วไม่เต็มหน้าจอจริงบนมือถือบางรุ่น?**
บางเบราว์เซอร์ โดยเฉพาะ Safari บน iPhone ไม่รองรับ Fullscreen API เต็มรูปแบบ เครื่องมือจึงแสดงสีคลุมหน้าเว็บทั้งหมดแทน ซึ่งใช้งานได้เหมือนกัน

**หน้าจอดำช่วยประหยัดแบตเตอรี่ไหม?**
เฉพาะจอ OLED เท่านั้น เพราะพิกเซลสีดำจะดับสนิท ส่วนจอ LCD ยังใช้แสงไฟด้านหลังเท่าเดิม