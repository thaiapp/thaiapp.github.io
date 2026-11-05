---
title: เครื่องคำนวณ CRC32 ออนไลน์ ฟรี
h1: เครื่องคำนวณ CRC32 ออนไลน์
description: เครื่องคำนวณ CRC32 ออนไลน์ ช่วยสร้างค่าตรวจสอบ 32 บิตจากข้อความได้ทันที ใช้ง่าย ฟรี ใช้ได้ทั้งบนมือถือและเดสก์ท็อป ไม่ต้องติดตั้งใดๆ เหมาะกับงานเขียนโค้ด
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-05T09:00:00+07:00'
weight: 74
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เครื่องคำนวณ CRC32 ออนไลน์
- เครื่องมือนักพัฒนา
---

<style>
.crc-tool{max-width:720px;margin:0 auto 2rem;font-family:inherit}
.crc-tool .crc-box{width:100%;min-height:140px;padding:12px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;color:inherit;font:inherit;font-size:1rem;line-height:1.5;box-sizing:border-box;resize:vertical}
.crc-tool .crc-box:focus{outline:2px solid #3b82f6;outline-offset:1px}
.crc-tool .crc-bar{display:flex;align-items:center;justify-content:space-between;gap:12px;margin:8px 0 16px;font-size:.9rem;opacity:.85}
.crc-tool .crc-btn{padding:6px 14px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font:inherit;font-size:.9rem;cursor:pointer}
.crc-tool .crc-btn:hover{background:rgba(128,128,128,.15)}
.crc-tool .crc-btn:focus-visible{outline:2px solid #3b82f6;outline-offset:1px}
.crc-tool .crc-out{display:flex;align-items:center;justify-content:space-between;gap:12px;padding:12px;border:1px solid rgba(128,128,128,.5);border-radius:8px}
.crc-tool .crc-hash{font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:1.4rem;letter-spacing:.05em;word-break:break-all}
.crc-tool .crc-dec{margin-top:8px;font-size:.9rem;opacity:.85}
.crc-tool .crc-hint{margin-top:8px;font-size:.9rem;opacity:.7}
</style>
<div class="crc-tool" id="crcTool">
<textarea class="crc-box" id="crcInput" placeholder="พิมพ์หรือวางข้อความที่ต้องการคำนวณ CRC32" aria-label="ข้อความอินพุต" spellcheck="false"></textarea>
<div class="crc-bar">
<span id="crcBytes">0 ไบต์ · CRC32</span>
<button type="button" class="crc-btn" id="crcClear">ล้าง</button>
</div>
<div class="crc-out">
<code class="crc-hash" id="crcHash" aria-live="polite">...</code>
<button type="button" class="crc-btn" id="crcCopy">คัดลอก</button>
</div>
<div class="crc-dec" id="crcDec"></div>
<div class="crc-hint" id="crcHint">— ป้อนข้อความด้านบนเพื่อสร้างค่า CRC32 —</div>
</div>
<script>
(function () {
  var table = [];
  for (var n = 0; n !== 256; n++) {
    var c = n;
    for (var k = 0; k !== 8; k++) {
      c = (c & 1) !== 0 ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1);
    }
    table[n] = c >>> 0;
  }
  function crc32(bytes) {
    var crc = 0xFFFFFFFF;
    for (var i = 0; i !== bytes.length; i++) {
      crc = table[(crc ^ bytes[i]) & 0xFF] ^ (crc >>> 8);
    }
    return (crc ^ 0xFFFFFFFF) >>> 0;
  }
  function toBytes(text) {
    if (window.TextEncoder) { return new TextEncoder().encode(text); }
    var utf8 = unescape(encodeURIComponent(text));
    var arr = [];
    for (var i = 0; i !== utf8.length; i++) { arr.push(utf8.charCodeAt(i)); }
    return arr;
  }
  var input = document.getElementById('crcInput');
  var bytesEl = document.getElementById('crcBytes');
  var hashEl = document.getElementById('crcHash');
  var decEl = document.getElementById('crcDec');
  var hintEl = document.getElementById('crcHint');
  var copyBtn = document.getElementById('crcCopy');
  var clearBtn = document.getElementById('crcClear');
  var current = '';
  var copyTimer = null;
  function update() {
    var text = input.value;
    if (text === '') {
      current = '';
      bytesEl.textContent = '0 ไบต์ · CRC32';
      hashEl.textContent = '...';
      decEl.textContent = '';
      hintEl.style.display = '';
      return;
    }
    var bytes = toBytes(text);
    var value = crc32(bytes);
    current = ('00000000' + value.toString(16)).slice(-8);
    bytesEl.textContent = bytes.length + ' ไบต์ · CRC32';
    hashEl.textContent = current;
    decEl.textContent = 'ฐานสิบ: ' + value;
    hintEl.style.display = 'none';
  }
  function flashCopied() {
    copyBtn.textContent = 'คัดลอกแล้ว';
    clearTimeout(copyTimer);
    copyTimer = setTimeout(function () { copyBtn.textContent = 'คัดลอก'; }, 1500);
  }
  function fallbackCopy(value) {
    var ta = document.createElement('textarea');
    ta.value = value;
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    try { document.execCommand('copy'); flashCopied(); } catch (e) {}
    document.body.removeChild(ta);
  }
  copyBtn.addEventListener('click', function () {
    if (current === '') { return; }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(current).then(flashCopied, function () { fallbackCopy(current); });
    } else {
      fallbackCopy(current);
    }
  });
  clearBtn.addEventListener('click', function () {
    input.value = '';
    update();
    input.focus();
  });
  input.addEventListener('input', update);
  update();
})();
</script>

## วิธีใช้เครื่องคำนวณ CRC32

1. พิมพ์หรือวางข้อความที่ต้องการลงในช่องด้านบน ระบบจะคำนวณให้ทันทีโดยไม่ต้องกดปุ่มใดๆ
2. ดูจำนวนไบต์ของข้อความที่แถบใต้ช่องกรอก ตัวเลขนี้นับจากการเข้ารหัสแบบ UTF-8
3. อ่านผลลัพธ์ CRC32 เป็นเลขฐานสิบหก 8 ตัวอักษร และดูค่าฐานสิบที่แสดงด้านล่าง
4. กดปุ่ม "คัดลอก" เพื่อนำค่าไปใช้ต่อ หรือกด "ล้าง" เพื่อเริ่มใหม่

ข้อความเดียวกันจะให้ค่า CRC32 เดิมเสมอ แต่เปลี่ยนแค่ตัวอักษรเดียว ค่าก็จะเปลี่ยนไปด้วย การคำนวณทั้งหมดทำในเบราว์เซอร์ของคุณ ข้อความไม่ถูกส่งไปยังเซิร์ฟเวอร์

## ความหมายของคำศัพท์

- **CRC32** (Cyclic Redundancy Check 32 บิต) คือวิธีคำนวณค่าตรวจสอบความถูกต้องของข้อมูล ให้ผลลัพธ์ขนาด 32 บิต
- **ค่าตรวจสอบ (Checksum)** คือตัวเลขสั้นๆ ที่คำนวณจากข้อมูล ใช้เทียบว่าข้อมูลต้นทางกับปลายทางตรงกันหรือไม่
- **แฮช (Hash)** คือค่าที่ได้จากการแปลงข้อมูลทุกขนาดให้เป็นค่าความยาวคงที่ CRC32 จัดเป็นแฮชแบบเบา แต่ไม่ใช่แฮชเชิงการเข้ารหัส
- **ไบต์ (Byte)** คือหน่วยข้อมูลพื้นฐาน อักษรอังกฤษใช้ 1 ไบต์ ส่วนอักษรไทยใช้ 3 ไบต์ในรหัส UTF-8
- **UTF-8** คือรูปแบบการเข้ารหัสตัวอักษรที่นิยมที่สุด ใช้แปลงข้อความเป็นไบต์ก่อนคำนวณ
- **เลขฐานสิบหก (Hex)** คือระบบเลขที่ใช้ 0-9 และ a-f ค่า CRC32 8 ตัวอักษรเท่ากับ 32 บิต
- **พหุนาม IEEE 802.3** คือสูตรมาตรฐานที่ใช้คำนวณ CRC32 ชนิดเดียวกับที่ ZIP, gzip และ PNG ใช้
- **การชนกัน (Collision)** คือกรณีที่ข้อมูลต่างกันแต่ได้ค่าเท่ากัน CRC32 สร้างการชนกันได้ง่ายมาก

## เหมาะกับงานแบบไหน

CRC32 เหมาะกับการตรวจจับความเสียหายของข้อมูลที่ไม่ได้ตั้งใจ เช่น ตรวจไฟล์หลังถ่ายโอน สร้างคีย์เพื่อหาข้อมูลซ้ำอย่างรวดเร็ว หรือเทียบกับค่าที่ฝังอยู่ในไฟล์ ZIP และ PNG

อย่าใช้ CRC32 กับงานที่เกี่ยวข้องกับความปลอดภัย เช่น เก็บรหัสผ่านหรือยืนยันว่าไฟล์ไม่ถูกแก้ไขโดยเจตนา เพราะสร้างข้อมูลที่ให้ค่าซ้ำกันได้ภายในเวลาไม่กี่มิลลิวินาที ควรใช้ SHA-256 แทน