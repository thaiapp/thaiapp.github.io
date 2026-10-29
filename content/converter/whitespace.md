---
title: ตัวแปลงช่องว่างและการขึ้นบรรทัดใหม่ ออนไลน์ ฟรี
h1: ตัวแปลงช่องว่างและการขึ้นบรรทัดใหม่
description: 'ตัวแปลงช่องว่างและการขึ้นบรรทัดใหม่ ช่วยเว้นวรรคและเว้นบรรทัดในโพสต์ Facebook และ Instagram ได้ตามต้องการ เห็นผลทันทีขณะพิมพ์ คัดลอกได้ในคลิกเดียว ใช้ฟรี'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 26
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวแปลงช่องว่างและการขึ้นบรรทัดใหม่
- ตัวแปลงช่องว่างและการขึ้นบรรทัดใหม่ ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.ws-tool{max-width:760px;margin:1.5rem auto;font-family:inherit}
.ws-tool label.ws-label{display:block;font-weight:600;margin:0 0 .4rem}
.ws-tool textarea{width:100%;box-sizing:border-box;min-height:150px;padding:.75rem;border:1px solid #c5c9d0;border-radius:8px;font-size:1rem;line-height:1.5;font-family:inherit;resize:vertical;background:#fff;color:#111}
.ws-tool textarea[readonly]{background:#f4f6f8}
.ws-opts{display:flex;flex-wrap:wrap;gap:.5rem 1.25rem;margin:.9rem 0}
.ws-opts label{display:inline-flex;align-items:center;gap:.4rem;cursor:pointer}
.ws-btns{display:flex;flex-wrap:wrap;gap:.6rem;margin:.9rem 0}
.ws-btns button{padding:.6rem 1.1rem;border:1px solid #c5c9d0;border-radius:8px;background:#fff;color:#111;font-size:1rem;cursor:pointer;font-family:inherit}
.ws-btns button.ws-primary{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
.ws-btns button:hover{opacity:.9}
.ws-info{margin:.4rem 0 1rem;font-size:.9rem;color:#555}
</style>
<div class="ws-tool" id="ws-tool">
  <label class="ws-label" for="ws-in">ข้อความต้นฉบับ</label>
  <textarea id="ws-in" placeholder="พิมพ์หรือวางข้อความที่นี่ ผลลัพธ์จะปรากฏด้านล่างทันที"></textarea>
  <div class="ws-opts">
    <label><input type="checkbox" id="ws-opt-space" checked> ช่องว่างหลายตัวติดกัน</label>
    <label><input type="checkbox" id="ws-opt-blank" checked> บรรทัดว่าง</label>
    <label><input type="checkbox" id="ws-opt-indent" checked> เยื้องต้นบรรทัด</label>
  </div>
  <label class="ws-label" for="ws-out">ผลลัพธ์ที่แปลงแล้ว</label>
  <textarea id="ws-out" readonly placeholder="ผลลัพธ์จะแสดงที่นี่"></textarea>
  <div class="ws-info" id="ws-info">แทรกอักขระความกว้างศูนย์ 0 ตัว</div>
  <div class="ws-btns">
    <button type="button" class="ws-primary" id="ws-copy">คัดลอกผลลัพธ์</button>
    <button type="button" id="ws-sample">ใส่ข้อความตัวอย่าง</button>
    <button type="button" id="ws-clear">ล้างข้อความ</button>
  </div>
</div>
<script>
(function () {
  var Z = String.fromCharCode(8203);
  var inp = document.getElementById('ws-in');
  var out = document.getElementById('ws-out');
  var info = document.getElementById('ws-info');
  var optSpace = document.getElementById('ws-opt-space');
  var optBlank = document.getElementById('ws-opt-blank');
  var optIndent = document.getElementById('ws-opt-indent');
  var copyBtn = document.getElementById('ws-copy');
  var sampleBtn = document.getElementById('ws-sample');
  var clearBtn = document.getElementById('ws-clear');
  if (!inp || !out) { return; }
  function convert() {
    var text = inp.value.replace(/\r\n?/g, '\n');
    var lines = text.split('\n').map(function (line) {
      if (line.trim() === '') {
        return (optBlank.checked && text.length > 0) ? Z : line;
      }
      if (optIndent.checked) {
        line = line.replace(/^ +/, function (m) {
          return Z + m.split('').join(Z);
        });
      }
      if (optSpace.checked) {
        line = line.replace(/ {2,}/g, function (m) {
          return m.split('').join(Z);
        });
      }
      return line;
    });
    out.value = text === '' ? '' : lines.join('\n');
    var count = out.value.split(Z).length - 1;
    info.textContent = 'แทรกอักขระความกว้างศูนย์ ' + count + ' ตัว';
  }
  function done() {
    var old = copyBtn.textContent;
    copyBtn.textContent = 'คัดลอกแล้ว!';
    setTimeout(function () { copyBtn.textContent = old; }, 1500);
  }
  function fallbackCopy() {
    out.focus();
    out.select();
    try {
      if (document.execCommand('copy')) { done(); }
    } catch (e) {}
  }
  function copyText() {
    if (!out.value) { return; }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(out.value).then(done, fallbackCopy);
    } else {
      fallbackCopy();
    }
  }
  inp.addEventListener('input', convert);
  optSpace.addEventListener('change', convert);
  optBlank.addEventListener('change', convert);
  optIndent.addEventListener('change', convert);
  copyBtn.addEventListener('click', copyText);
  sampleBtn.addEventListener('click', function () {
    inp.value = 'สวัสดีทุกคน\n\n  เว้นวรรค    ได้หลายช่อง\n\nขอบคุณที่ติดตามครับ';
    convert();
  });
  clearBtn.addEventListener('click', function () {
    inp.value = '';
    convert();
    inp.focus();
  });
  convert();
})();
</script>

## วิธีใช้งานตัวแปลงช่องว่างและการขึ้นบรรทัดใหม่

1. พิมพ์หรือวางข้อความที่ต้องการลงในช่อง "ข้อความต้นฉบับ"
2. เลือกตัวเลือกที่ต้องการ ได้แก่ ช่องว่างหลายตัวติดกัน บรรทัดว่าง และเยื้องต้นบรรทัด (เลือกไว้ทั้งหมดตามค่าเริ่มต้น)
3. ดูผลลัพธ์ในช่อง "ผลลัพธ์ที่แปลงแล้ว" ซึ่งอัปเดตทันทีขณะพิมพ์ แล้วกดปุ่ม "คัดลอกผลลัพธ์"
4. เปิด Facebook, Instagram หรือแอปที่ต้องการ แล้ววางข้อความลงในโพสต์หรือแคปชั่น

## ตัวแปลงนี้ช่วยอะไรได้บ้าง

แพลตฟอร์มโซเชียลมีเดียบางแห่งจะตัดช่องว่างที่ติดกันเหลือเพียงช่องเดียว และลบบรรทัดว่างทิ้ง ทำให้จัดหน้าโพสต์ได้ไม่ตรงใจ ตัวแปลงนี้จะแทรกอักขระความกว้างศูนย์ซึ่งมองไม่เห็นไว้ระหว่างช่องว่างและตัวแบ่งบรรทัด เพื่อให้แพลตฟอร์มคงช่องว่างเหล่านั้นไว้ ทำให้คุณทำสิ่งต่อไปนี้ได้

- เว้นช่องว่างระหว่างคำให้กว้างขึ้น
- เว้นระยะระหว่างย่อหน้าให้ห่างขึ้น
- เยื้องข้อความเข้าไปจากขอบซ้าย

ใช้ได้กับแคปชั่น Instagram, โพสต์ Facebook, ทวีต, WordPress และแพลตฟอร์มอื่นๆ ที่รองรับการวางข้อความ

## คำอธิบายศัพท์ที่ควรรู้

- **ช่องว่าง (Space):** อักขระเว้นวรรคที่เกิดจากการกดปุ่ม Spacebar ใช้แยกคำหรือเว้นระยะระหว่างข้อความ
- **การขึ้นบรรทัดใหม่ (Line Break):** การกด Enter เพื่อขึ้นบรรทัดใหม่ ใช้แบ่งข้อความออกเป็นหลายบรรทัด
- **บรรทัดว่าง (Blank Line):** บรรทัดที่ไม่มีข้อความ เกิดจากการกด Enter ซ้อนกัน ใช้เว้นระยะระหว่างย่อหน้า
- **ย่อหน้า (Paragraph):** กลุ่มข้อความที่แยกเป็นช่วงๆ ด้วยบรรทัดว่าง เพื่อให้อ่านง่ายขึ้น
- **การเยื้อง (Indent):** การเว้นระยะที่ต้นบรรทัดให้ข้อความขยับเข้าไปจากขอบซ้าย
- **อักขระความกว้างศูนย์ (Zero-Width Space):** อักขระพิเศษ (U+200B) ที่มองไม่เห็นและไม่กินพื้นที่ แต่แพลตฟอร์มนับเป็นอักขระปกติ จึงช่วยให้ช่องว่างข้างเคียงไม่ถูกตัดทิ้ง
- **อักขระที่มองไม่เห็น (Invisible Character):** อักขระที่อยู่ในข้อความแต่ไม่แสดงให้เห็นบนหน้าจอ
- **SNS (Social Networking Service):** บริการเครือข่ายสังคมออนไลน์ เช่น Facebook, Instagram และ X (ทวิตเตอร์)
- **แคปชั่น (Caption):** ข้อความบรรยายที่เขียนประกอบรูปภาพหรือวิดีโอ
- **คลิปบอร์ด (Clipboard):** พื้นที่พักข้อมูลชั่วคราวของอุปกรณ์ที่เก็บข้อความซึ่งคัดลอกไว้ก่อนนำไปวาง

## คำถามที่พบบ่อย

**ผลลัพธ์ดูเหมือนไม่เปลี่ยนไปจากเดิม ผิดปกติหรือไม่?**
ไม่ผิดปกติ เพราะอักขระความกว้างศูนย์มองไม่เห็นบนหน้าจอ ให้ดูตัวเลขจำนวนอักขระที่แทรกใต้ช่องผลลัพธ์ หากมากกว่า 0 แสดงว่าแปลงเรียบร้อยแล้ว

**ต้องติดตั้งโปรแกรมหรือไม่?**
ไม่ต้อง ตัวแปลงทำงานบนเบราว์เซอร์ของคุณทั้งหมด ข้อความไม่ถูกส่งไปที่ใด

**ทำไมบางแอปยังตัดช่องว่างอยู่?**
บางแพลตฟอร์มอาจเปลี่ยนวิธีจัดการข้อความตามเวอร์ชัน ลองปิดหรือเปิดตัวเลือกด้านบนเพื่อหาการตั้งค่าที่เหมาะกับแพลตฟอร์มนั้น