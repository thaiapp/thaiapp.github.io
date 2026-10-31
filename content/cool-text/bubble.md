---
title: ตัวสร้างข้อความฟองกลม ออนไลน์ ฟรี
h1: ตัวสร้างข้อความฟองกลม
description: ใช้ตัวสร้างข้อความฟองกลมออนไลน์แปลงตัวอักษรอังกฤษเป็นฟองกลมสีขาวหรือสีดำได้ทันที ดูตัวอย่างสด คัดลอกไปวางในแชทและโซเชียลได้ง่าย ใช้ฟรี ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 38
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างข้อความฟองกลม
- ตัวสร้างข้อความฟองกลม ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.bt-wrap{max-width:720px;margin:0 auto 1.5rem;font-family:inherit}
.bt-wrap label.bt-label{display:block;font-weight:600;margin:0 0 .4rem}
.bt-wrap textarea{width:100%;box-sizing:border-box;padding:.75rem;font-size:1.1rem;line-height:1.5;border:1px solid rgba(128,128,128,.5);border-radius:10px;background:transparent;color:inherit;resize:vertical;font-family:inherit}
.bt-wrap textarea:focus{outline:2px solid #4f8ef7;outline-offset:1px}
.bt-card{margin-top:1rem;padding:.75rem;border:1px solid rgba(128,128,128,.4);border-radius:10px}
.bt-card h3{margin:0 0 .5rem;font-size:1rem}
.bt-result{min-height:3rem;padding:.5rem .75rem;font-size:1.4rem;line-height:1.6;word-break:break-word;white-space:pre-wrap;border-radius:8px;background:rgba(128,128,128,.12)}
.bt-actions{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin-top:.5rem}
.bt-wrap button{padding:.5rem 1rem;font-size:.95rem;border:0;border-radius:8px;cursor:pointer;background:#4f8ef7;color:#fff}
.bt-wrap button.bt-ghost{background:transparent;color:inherit;border:1px solid rgba(128,128,128,.6)}
.bt-wrap button:hover{opacity:.9}
.bt-status{font-size:.9rem;opacity:.85}
</style>
<div class="bt-wrap" id="bt-app">
<label class="bt-label" for="bt-input">พิมพ์ข้อความของคุณ</label>
<textarea id="bt-input" rows="3" placeholder="พิมพ์ข้อความภาษาอังกฤษหรือตัวเลขที่นี่ เช่น hello">hello</textarea>
<div class="bt-actions"><button type="button" class="bt-ghost" id="bt-clear">ล้างข้อความ</button></div>
<div class="bt-card">
<h3>ฟองสีขาว (ตัวอักษรอยู่ในวงกลมโปร่ง)</h3>
<div class="bt-result" id="bt-out-white"></div>
<div class="bt-actions"><button type="button" id="bt-copy-white">คัดลอก</button></div>
</div>
<div class="bt-card">
<h3>ฟองสีดำ (ตัวอักษรสีขาวบนวงกลมทึบ)</h3>
<div class="bt-result" id="bt-out-black"></div>
<div class="bt-actions"><button type="button" id="bt-copy-black">คัดลอก</button></div>
</div>
<div class="bt-status" id="bt-status" role="status" aria-live="polite"></div>
</div>
<script>
(function () {
  var input = document.getElementById('bt-input');
  if (!input) { return; }
  var maps = { white: {}, black: {} };
  var i;
  function cp(n) { return String.fromCodePoint(n); }
  for (i = 0; i !== 26; i++) {
    maps.white[String.fromCharCode(65 + i)] = cp(0x24B6 + i);
    maps.white[String.fromCharCode(97 + i)] = cp(0x24D0 + i);
    maps.black[String.fromCharCode(65 + i)] = cp(0x1F150 + i);
    maps.black[String.fromCharCode(97 + i)] = cp(0x1F150 + i);
  }
  maps.white['0'] = cp(0x24EA);
  maps.black['0'] = cp(0x24FF);
  for (i = 1; i !== 10; i++) {
    maps.white[String(i)] = cp(0x2460 + i - 1);
    maps.black[String(i)] = cp(0x2776 + i - 1);
  }
  function convert(text, map) {
    return Array.from(text).map(function (ch) {
      return Object.prototype.hasOwnProperty.call(map, ch) ? map[ch] : ch;
    }).join('');
  }
  var outWhite = document.getElementById('bt-out-white');
  var outBlack = document.getElementById('bt-out-black');
  var statusEl = document.getElementById('bt-status');
  var timer = null;
  function render() {
    outWhite.textContent = convert(input.value, maps.white);
    outBlack.textContent = convert(input.value, maps.black);
  }
  function say(msg) {
    statusEl.textContent = msg;
    if (timer) { clearTimeout(timer); }
    timer = setTimeout(function () { statusEl.textContent = ''; }, 2000);
  }
  function fallbackCopy(text) {
    var ta = document.createElement('textarea');
    ta.value = text;
    ta.setAttribute('readonly', '');
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    var ok = false;
    try { ok = document.execCommand('copy'); } catch (e) { ok = false; }
    document.body.removeChild(ta);
    say(ok ? 'คัดลอกแล้ว' : 'คัดลอกไม่สำเร็จ กรุณาเลือกข้อความแล้วคัดลอกเอง');
  }
  function copyText(text) {
    if (!text) { say('ยังไม่มีข้อความให้คัดลอก'); return; }
    var canCopy = Boolean(navigator.clipboard) ? Boolean(navigator.clipboard.writeText) : false;
    if (canCopy) {
      navigator.clipboard.writeText(text).then(function () {
        say('คัดลอกแล้ว');
      }, function () {
        fallbackCopy(text);
      });
    } else {
      fallbackCopy(text);
    }
  }
  input.addEventListener('input', render);
  document.getElementById('bt-copy-white').addEventListener('click', function () { copyText(outWhite.textContent); });
  document.getElementById('bt-copy-black').addEventListener('click', function () { copyText(outBlack.textContent); });
  document.getElementById('bt-clear').addEventListener('click', function () {
    input.value = '';
    render();
    input.focus();
  });
  render();
})();
</script>

ตัวสร้างข้อความฟองกลมช่วยให้ตัวอักษรของคุณดูน่ารักและสะดุดตาขึ้น ด้วยการแปลงตัวอักษรภาษาอังกฤษและตัวเลขให้อยู่ในวงกลม เลือกใช้ได้สองสไตล์ คือฟองสีขาวที่เป็นวงกลมโปร่ง และฟองสีดำที่เป็นวงกลมทึบ ผลลัพธ์เป็นข้อความธรรมดา คัดลอกไปวางได้ทันที และแสดงผลได้บนอุปกรณ์สมัยใหม่ส่วนใหญ่

## การใช้งานข้อความฟองกลม

- **แชทส่วนตัว:** เพิ่มความสนุกและบุคลิกให้ข้อความที่ส่งหาเพื่อน
- **งานออกแบบ:** ใช้กับหัวข้อ โปสเตอร์ หรือกราฟิกที่ต้องการลุคขี้เล่น
- **โซเชียลมีเดีย:** ใช้ตกแต่งโปรไฟล์ แคปชัน และโพสต์ให้โดดเด่น

## วิธีใช้งาน

1. พิมพ์หรือวางข้อความภาษาอังกฤษในช่อง "พิมพ์ข้อความของคุณ"
2. ดูผลลัพธ์ที่เปลี่ยนทันทีทั้งสองสไตล์ คือฟองสีขาวและฟองสีดำ
3. เลือกสไตล์ที่ชอบ แล้วกดปุ่ม "คัดลอก" ใต้สไตล์นั้น
4. นำไปวางได้ทุกที่ เช่น X (Twitter), Facebook, Instagram, LINE หรือช่องชื่อโปรไฟล์
5. หากต้องการเริ่มใหม่ กดปุ่ม "ล้างข้อความ"

**หมายเหตุ:** รองรับเฉพาะตัวอักษรภาษาอังกฤษ (A-Z, a-z) และตัวเลข 0-9 ส่วนอักขระอื่น เช่น ภาษาไทย เว้นวรรค และเครื่องหมายต่าง ๆ จะคงรูปเดิม

## คำอธิบายศัพท์ที่ควรรู้

- **ข้อความฟองกลม (Bubble Text):** ข้อความที่ตัวอักษรแต่ละตัวถูกล้อมด้วยวงกลม เช่น Ⓗⓔⓛⓛⓞ
- **ฟองสีขาว:** สไตล์วงกลมโปร่ง ตัวอักษรอยู่ในเส้นวงกลม แยกตัวพิมพ์ใหญ่และตัวพิมพ์เล็กได้ เช่น Ⓐ และ ⓐ
- **ฟองสีดำ:** สไตล์วงกลมทึบ ตัวอักษรสีขาวบนพื้นดำ ตัวพิมพ์ใหญ่และเล็กจะแสดงเป็นรูปเดียวกัน เช่น 🅐
- **ช่องพิมพ์ข้อความ:** ช่องสำหรับใส่ข้อความต้นฉบับที่ต้องการแปลง
- **ตัวอย่างสด (Live Preview):** ผลลัพธ์ที่อัปเดตทันทีขณะพิมพ์ โดยไม่ต้องกดปุ่มแปลง
- **ปุ่มคัดลอก:** คัดลอกผลลัพธ์ไปยังคลิปบอร์ดของอุปกรณ์ เพื่อนำไปวางที่อื่น
- **ปุ่มล้างข้อความ:** ลบข้อความในช่องพิมพ์เพื่อเริ่มต้นใหม่
- **ยูนิโค้ด (Unicode):** มาตรฐานอักขระสากลที่ทำให้ตัวอักษรฟองกลมเป็นข้อความจริง ไม่ใช่รูปภาพ จึงคัดลอกและวางได้
- **ฟอนต์:** ชุดรูปแบบตัวอักษรของอุปกรณ์ หากฟอนต์ไม่รองรับ ตัวอักษรบางตัวอาจแสดงเป็นกล่องสี่เหลี่ยมหรือหน้าตาต่างไปเล็กน้อย
- **การประมวลผลในเบราว์เซอร์:** การแปลงข้อความเกิดขึ้นบนอุปกรณ์ของคุณ ข้อความที่พิมพ์จึงไม่ถูกส่งไปที่เซิร์ฟเวอร์