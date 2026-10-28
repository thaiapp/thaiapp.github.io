---
title: รายการสุ่ม ออนไลน์ ฟรี
h1: รายการสุ่ม
description: สุ่มเรียงลำดับรายการออนไลน์ฟรี วางชื่อ เลขที่ หรือ ID ทีละบรรทัดแล้วกดสุ่ม ได้ผลลัพธ์เป็นกลางทันที ใช้ได้ทั้งมือถือและคอมพิวเตอร์ ไม่ต้องติดตั้งโปรแกรม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-28T09:00:00+07:00'
weight: 13
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- รายการสุ่ม
- รายการสุ่ม ออนไลน์
- สุ่มและคำนวณ
---
<style>
.rl-wrap{max-width:720px;margin:0 auto 24px;font-family:inherit}
.rl-box{width:100%;min-height:240px;padding:12px;border:1px solid #9994;border-radius:10px;font:inherit;font-size:16px;line-height:1.6;resize:vertical;box-sizing:border-box;background:transparent;color:inherit}
.rl-box:focus{outline:2px solid #3b82f6;outline-offset:1px}
.rl-bar{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin-top:10px}
.rl-btn{padding:10px 22px;border:0;border-radius:8px;font:inherit;font-size:16px;cursor:pointer;background:#3b82f6;color:#fff}
.rl-btn:hover{background:#2563eb}
.rl-btn.rl-sec{background:#9993;color:inherit}
.rl-btn.rl-sec:hover{background:#9996}
.rl-btn:disabled{opacity:.4;cursor:not-allowed}
.rl-count{margin-left:auto;font-size:14px;opacity:.7}
.rl-msg{min-height:20px;margin-top:6px;font-size:14px;opacity:.8}
</style>
<div class="rl-wrap" id="rl-app">
<textarea class="rl-box" id="rl-input" rows="10" placeholder="พิมพ์หรือวางรายการ หนึ่งรายการต่อหนึ่งบรรทัด&#10;เช่น&#10;สมชาย&#10;สมหญิง&#10;มานี&#10;มานะ" aria-label="รายการที่ต้องการสุ่ม"></textarea>
<div class="rl-bar">
<button type="button" class="rl-btn" id="rl-shuffle">สุ่ม</button>
<button type="button" class="rl-btn rl-sec" id="rl-undo" disabled>เลิกทำ</button>
<button type="button" class="rl-btn rl-sec" id="rl-copy">คัดลอก</button>
<button type="button" class="rl-btn rl-sec" id="rl-clear">ล้าง</button>
<span class="rl-count" id="rl-count">0 รายการ</span>
</div>
<div class="rl-msg" id="rl-msg" role="status" aria-live="polite"></div>
</div>
<script>
(function () {
  var box = document.getElementById('rl-input');
  var btnShuffle = document.getElementById('rl-shuffle');
  var btnUndo = document.getElementById('rl-undo');
  var btnCopy = document.getElementById('rl-copy');
  var btnClear = document.getElementById('rl-clear');
  var countEl = document.getElementById('rl-count');
  var msgEl = document.getElementById('rl-msg');
  if (!box || !btnShuffle) { return; }
  var history = [];
  var msgTimer = null;
  function say(text) {
    msgEl.textContent = text;
    clearTimeout(msgTimer);
    msgTimer = setTimeout(function () { msgEl.textContent = ''; }, 2500);
  }
  function getItems() {
    return box.value.split(/\r?\n/).filter(function (line) {
      return line.trim() !== '';
    });
  }
  function updateCount() {
    countEl.textContent = getItems().length + ' รายการ';
    btnUndo.disabled = history.length === 0;
  }
  // สุ่มเลข 0..max-1 ด้วย crypto.getRandomValues (ไม่ใช้ Math.random)
  function randomInt(max) {
    var cryptoObj = window.crypto || window.msCrypto;
    if (!cryptoObj || !cryptoObj.getRandomValues) {
      throw new Error('no-crypto');
    }
    var limit = Math.floor(4294967296 / max) * max;
    var buf = new Uint32Array(1);
    do {
      cryptoObj.getRandomValues(buf);
    } while (buf[0] >= limit);
    return buf[0] % max;
  }
  // Fisher-Yates shuffle
  function shuffle(arr) {
    for (var i = arr.length - 1; i > 0; i--) {
      var j = randomInt(i + 1);
      var tmp = arr[i];
      arr[i] = arr[j];
      arr[j] = tmp;
    }
    return arr;
  }
  btnShuffle.addEventListener('click', function () {
    var items = getItems();
    if (items.length < 2) {
      say('กรุณาใส่รายการอย่างน้อย 2 รายการ');
      return;
    }
    try {
      history.push(box.value);
      if (history.length > 50) { history.shift(); }
      box.value = shuffle(items).join('\n');
      say('สุ่มเรียบร้อยแล้ว');
    } catch (e) {
      history.pop();
      say('เบราว์เซอร์นี้ไม่รองรับการสุ่มแบบเข้ารหัส');
    }
    updateCount();
  });
  btnUndo.addEventListener('click', function () {
    if (history.length === 0) { return; }
    box.value = history.pop();
    say('ย้อนกลับแล้ว');
    updateCount();
  });
  btnClear.addEventListener('click', function () {
    if (box.value !== '') { history.push(box.value); }
    box.value = '';
    updateCount();
    box.focus();
  });
  btnCopy.addEventListener('click', function () {
    var text = box.value;
    if (!text) { say('ยังไม่มีรายการให้คัดลอก'); return; }
    function fallback() {
      box.focus();
      box.select();
      try {
        document.execCommand('copy');
        say('คัดลอกแล้ว');
      } catch (e) {
        say('คัดลอกไม่สำเร็จ');
      }
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(function () {
        say('คัดลอกแล้ว');
      }, fallback);
    } else {
      fallback();
    }
  });
  box.addEventListener('input', updateCount);
  updateCount();
})();
</script>

## วิธีใช้งานรายการสุ่ม

1. **ใส่รายการ** พิมพ์หรือวางรายการลงในช่องข้อความ โดยใส่หนึ่งรายการต่อหนึ่งบรรทัด เช่น ชื่อคน หมายเลข หรือ ID
2. **กดปุ่ม "สุ่ม"** ระบบจะสับเปลี่ยนลำดับรายการทั้งหมดทันที และแสดงผลในช่องเดิม
3. **แก้ไขผลลัพธ์ได้** คลิกในช่องข้อความเพื่อลบ เพิ่ม หรือแก้ไขรายการได้ตามต้องการ
4. **กด "เลิกทำ"** หากต้องการย้อนกลับไปยังลำดับก่อนสุ่ม (ย้อนได้หลายขั้น)
5. **กด "คัดลอก"** เพื่อนำผลลัพธ์ไปวางในแชท เอกสาร หรือ Excel
6. **กด "ล้าง"** เพื่อเริ่มต้นใหม่ และยังกด "เลิกทำ" เพื่อเรียกรายการคืนได้

เคล็ดลับ: สามารถคัดลอกคอลัมน์จาก Excel หรือ Google Sheets มาวางได้โดยตรง แล้วคัดลอกผลลัพธ์กลับไปวางที่เดิมได้เช่นกัน บรรทัดว่างจะถูกข้ามให้อัตโนมัติ

## คำอธิบายศัพท์

- **สุ่ม (Shuffle)** คือการสับเปลี่ยนลำดับของรายการทั้งหมดให้เรียงใหม่แบบไม่มีรูปแบบตายตัว แต่ละรายการมีโอกาสไปอยู่ตำแหน่งใดก็ได้เท่าๆ กัน
- **เลิกทำ (Undo)** คือการย้อนกลับไปยังข้อความก่อนหน้าการสุ่มหรือการล้าง
- **รายการ (List)** คือชุดข้อมูลที่ต้องการสุ่ม หนึ่งบรรทัดนับเป็นหนึ่งรายการ
- **ราฟเฟิล (Raffle)** คือการจับสลากเพื่อหาผู้โชคดี มักใช้ในกิจกรรมหรือการแจกรางวัล
- **ID** คือรหัสเฉพาะที่ใช้ระบุแต่ละรายการ เช่น รหัสพนักงาน รหัสสมาชิก หรือชื่อผู้ใช้
- **บรรทัดว่าง** คือบรรทัดที่ไม่มีข้อความ ระบบจะไม่นับเป็นรายการและจะถูกตัดออกเมื่อสุ่ม
- **ฝั่งเบราว์เซอร์ (Client-side)** คือการประมวลผลบนอุปกรณ์ของคุณเอง ข้อมูลที่ใส่ไม่ถูกส่งไปเก็บที่เซิร์ฟเวอร์
- **crypto.getRandomValues** คือฟังก์ชันสุ่มระดับเข้ารหัสลับของเบราว์เซอร์ ให้ผลที่คาดเดาได้ยากกว่าฟังก์ชันสุ่มทั่วไป
- **Math.random** คือฟังก์ชันสุ่มพื้นฐานของ JavaScript เครื่องมือนี้ไม่ได้ใช้ เพื่อให้ผลลัพธ์เป็นกลางยิ่งขึ้น
- **Fisher-Yates** คืออัลกอริทึมมาตรฐานสำหรับสับเปลี่ยนลำดับ ทำให้ทุกลำดับที่เป็นไปได้มีโอกาสเกิดขึ้นเท่ากัน
- **ผลลัพธ์เป็นกลาง** คือไม่มีใครควบคุมหรือเอนเอียงผลได้ ทุกรายการมีโอกาสเท่ากัน

## คำถามที่พบบ่อย

**ข้อมูลที่ใส่ถูกเก็บไว้หรือไม่?** ไม่ ข้อมูลทั้งหมดประมวลผลในเบราว์เซอร์ของคุณ และจะหายเมื่อปิดหรือรีเฟรชหน้า

**สุ่มได้กี่รายการ?** ไม่จำกัดจำนวนที่แน่นอน ขึ้นอยู่กับประสิทธิภาพของอุปกรณ์ ส่วนใหญ่สุ่มได้หลักหมื่นรายการอย่างรวดเร็ว

**ต้องมีอย่างน้อยกี่รายการ?** อย่างน้อย 2 รายการ จึงจะสับเปลี่ยนลำดับได้