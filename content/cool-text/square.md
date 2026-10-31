---
title: ตัวสร้างข้อความสี่เหลี่ยม ออนไลน์ ฟรี
h1: ตัวสร้างข้อความสี่เหลี่ยม
description: ตัวสร้างข้อความสี่เหลี่ยมออนไลน์ฟรี พิมพ์ข้อความภาษาอังกฤษแล้วแปลงเป็นตัวอักษรสี่เหลี่ยมสีดำหรือสีขาวทันที คัดลอกไปวางบน Facebook, Instagram, X ได้เลย
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 39
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างข้อความสี่เหลี่ยม
- ตัวสร้างข้อความสี่เหลี่ยม ออนไลน์
- ข้อความและตัวอักษร
---
<div class="sq-tool" id="sq-tool">
<label class="sq-label" for="sq-input">พิมพ์ข้อความของคุณ (ภาษาอังกฤษ A-Z)</label>
<textarea class="sq-box" id="sq-input" rows="3" placeholder="พิมพ์ข้อความที่นี่ เช่น hello" spellcheck="false">hello</textarea>
<div class="sq-label">เลือกสไตล์</div>
<div class="sq-styles" role="group" aria-label="เลือกสไตล์ตัวอักษรสี่เหลี่ยม">
<button type="button" class="sq-style sq-active" data-mode="dark" aria-pressed="true">สีดำ (ขาวบนดำ)</button>
<button type="button" class="sq-style" data-mode="light" aria-pressed="false">สีขาว (ดำบนขาว)</button>
</div>
<label class="sq-label" for="sq-output">ผลลัพธ์</label>
<textarea class="sq-box sq-result" id="sq-output" rows="3" readonly></textarea>
<div class="sq-actions">
<button type="button" class="sq-copy" id="sq-copy">คัดลอกข้อความ</button>
<span class="sq-status" id="sq-status" role="status" aria-live="polite"></span>
</div>
</div>
<style>
.sq-tool{max-width:720px;margin:1rem 0 1.5rem;padding:1rem;border:1px solid rgba(128,128,128,.35);border-radius:12px}
.sq-label{display:block;margin:.6rem 0 .35rem;font-weight:600}
.sq-box{display:block;width:100%;box-sizing:border-box;padding:.7rem .8rem;border:1px solid rgba(128,128,128,.45);border-radius:8px;background:transparent;color:inherit;font:inherit;line-height:1.6;resize:vertical}
.sq-result{font-size:1.6rem;line-height:1.5;letter-spacing:.08em}
.sq-styles{display:flex;flex-wrap:wrap;gap:.5rem}
.sq-style,.sq-copy{padding:.55rem 1rem;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.sq-style.sq-active,.sq-copy{background:#2563eb;border-color:#2563eb;color:#fff}
.sq-actions{display:flex;align-items:center;gap:.8rem;margin-top:.8rem}
.sq-status{font-size:.95rem;opacity:.85}
</style>
<script>
(function () {
  var input = document.getElementById('sq-input');
  var output = document.getElementById('sq-output');
  var copyBtn = document.getElementById('sq-copy');
  var statusEl = document.getElementById('sq-status');
  var styleBtns = document.querySelectorAll('.sq-style');
  if (!input || !output || !copyBtn || !statusEl) { return; }
  var BASE = { dark: 0x1F170, light: 0x1F130 };
  var LETTER = /^[A-Z]$/;
  var mode = 'dark';
  var timer = null;
  function convert(text, m) {
    return Array.from(text.toUpperCase()).map(function (ch) {
      if (LETTER.test(ch)) {
        return String.fromCodePoint(BASE[m] + ch.charCodeAt(0) - 65);
      }
      return ch;
    }).join('');
  }
  function render() {
    output.value = convert(input.value, mode);
  }
  function showStatus(msg) {
    statusEl.textContent = msg;
    clearTimeout(timer);
    timer = setTimeout(function () { statusEl.textContent = ''; }, 2000);
  }
  function fallbackCopy() {
    output.focus();
    output.select();
    try {
      document.execCommand('copy');
      showStatus('คัดลอกแล้ว');
    } catch (e) {
      showStatus('กรุณาคัดลอกด้วยตนเอง');
    }
  }
  function copyText() {
    if (!output.value) {
      showStatus('ยังไม่มีข้อความให้คัดลอก');
      return;
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(output.value).then(function () {
        showStatus('คัดลอกแล้ว');
      }, fallbackCopy);
    } else {
      fallbackCopy();
    }
  }
  styleBtns.forEach(function (btn) {
    btn.addEventListener('click', function () {
      mode = btn.getAttribute('data-mode');
      styleBtns.forEach(function (b) {
        var on = b === btn;
        b.classList.toggle('sq-active', on);
        b.setAttribute('aria-pressed', on ? 'true' : 'false');
      });
      render();
    });
  });
  input.addEventListener('input', render);
  copyBtn.addEventListener('click', copyText);
  render();
})();
</script>

ตัวสร้างข้อความสี่เหลี่ยมช่วยเปลี่ยนตัวอักษรภาษาอังกฤษให้กลายเป็นตัวอักษรทรงเรขาคณิตหนา ๆ ที่ล้อมด้วยกรอบสี่เหลี่ยม มีให้เลือก 2 แบบ คือขาวบนดำ (ค่าเริ่มต้น) และดำบนขาว ตัวพิมพ์เล็กจะถูกแปลงเป็นตัวพิมพ์ใหญ่โดยอัตโนมัติ จึงเหมาะกับข้อความสั้น ๆ ที่ต้องการให้เด่น

## วิธีใช้งานเครื่องมือ

1. พิมพ์หรือวางข้อความภาษาอังกฤษในช่อง "พิมพ์ข้อความของคุณ" ผลลัพธ์จะเปลี่ยนให้เห็นทันทีขณะพิมพ์
2. เลือกสไตล์ที่ต้องการ ได้แก่ "สีดำ (ขาวบนดำ)" หรือ "สีขาว (ดำบนขาว)"
3. ตรวจดูข้อความในช่อง "ผลลัพธ์"
4. กดปุ่ม "คัดลอกข้อความ" เมื่อเห็นคำว่า "คัดลอกแล้ว" แปลว่าข้อความอยู่ในคลิปบอร์ดเรียบร้อย
5. นำไปวางที่ใดก็ได้ เช่น Facebook, Instagram, X (Twitter), LINE หรือชื่อโปรไฟล์

หมายเหตุ: ใช้ได้เฉพาะตัวอักษรภาษาอังกฤษ A-Z ส่วนตัวเลข สัญลักษณ์ และภาษาไทยจะแสดงตามเดิม ไม่ถูกแปลง

## คำอธิบายศัพท์ที่ควรรู้

- **ข้อความสี่เหลี่ยม:** ตัวอักษรที่ถูกใส่กรอบสี่เหลี่ยมรอบตัวอักษร ใช้ตกแต่งข้อความให้โดดเด่นกว่าตัวอักษรปกติ
- **สีดำ (ขาวบนดำ):** สไตล์ที่พื้นกรอบเป็นสีดำและตัวอักษรเป็นสีขาว เป็นค่าเริ่มต้นของเครื่องมือ
- **สีขาว (ดำบนขาว):** สไตล์ที่พื้นกรอบเป็นสีขาวและตัวอักษรเป็นสีดำ เหมาะเมื่อพื้นหลังเข้มหรืออยากหลีกเลี่ยงอิโมจิ
- **ตัวพิมพ์ใหญ่อัตโนมัติ:** ตัวอักษรสี่เหลี่ยมมีเฉพาะตัวพิมพ์ใหญ่ ตัวพิมพ์เล็กจึงถูกแปลงให้เป็นตัวพิมพ์ใหญ่ก่อนเสมอ
- **ยูนิโค้ด (Unicode):** มาตรฐานรหัสตัวอักษรสากล ทำให้ข้อความที่คัดลอกไปวางแสดงผลได้บนหลายแพลตฟอร์มโดยไม่ต้องติดตั้งฟอนต์
- **อิโมจิ (Emoji):** ภาพสัญลักษณ์เล็ก ๆ บางอุปกรณ์จะแสดงตัวอักษร A, B, O, P ในสไตล์สีดำเป็นอิโมจิ ซึ่งแก้ได้โดยสลับไปใช้สไตล์สีขาว
- **ผลลัพธ์:** ข้อความที่แปลงแล้ว พร้อมคัดลอกไปใช้งานได้ทันที
- **ดูตัวอย่างสด (Live preview):** การแสดงผลลัพธ์ทันทีขณะพิมพ์ โดยไม่ต้องกดปุ่มสร้างหรือโหลดหน้าใหม่
- **คลิปบอร์ด (Clipboard):** พื้นที่พักข้อมูลชั่วคราวของอุปกรณ์ เมื่อกดคัดลอกแล้วข้อความจะถูกเก็บไว้ที่นี่เพื่อรอนำไปวาง

## ไอเดียการใช้งาน

- **หัวข้อและชื่อเรื่อง:** ทำข้อความที่หนาและดึงดูดสายตา
- **โซเชียลมีเดีย:** เพิ่มความเป็นเอกลักษณ์ให้โพสต์ แคปชัน หรือชื่อผู้ใช้
- **งานออกแบบกราฟิก:** ใช้เป็นองค์ประกอบดีไซน์สไตล์ทันสมัยและแปลกใหม่

## คำถามที่พบบ่อย

**ใช้กับภาษาไทยได้ไหม?**
ไม่ได้ เครื่องมือรองรับเฉพาะตัวอักษรภาษาอังกฤษ A-Z ส่วนอักขระอื่นจะคงไว้ตามที่พิมพ์

**ทำไมบางตัวอักษรกลายเป็นอิโมจิ?**
บางอุปกรณ์มือถือแสดงตัวอักษร A, B, O, P ของสไตล์สีดำเป็นอิโมจิ ให้ลองเปลี่ยนเป็นสไตล์สีขาว

**ต้องติดตั้งแอปหรือฟอนต์หรือไม่?**
ไม่ต้อง ใช้งานผ่านเบราว์เซอร์ได้ทันที และข้อความที่คัดลอกเป็นอักขระยูนิโค้ด จึงนำไปวางได้หลายแพลตฟอร์ม