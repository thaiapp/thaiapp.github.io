---
title: ตัวสร้างข้อความขีดทับ ออนไลน์ ฟรี
h1: ตัวสร้างข้อความขีดทับ
description: สร้างข้อความขีดทับ ขีดเส้นใต้ เส้นประ และเส้นคลื่นได้ทันที แค่พิมพ์ข้อความแล้วคัดลอกไปวางในแชตหรือโซเชียล ประมวลผลในเบราว์เซอร์ ใช้ฟรี ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-30T09:00:00+07:00'
weight: 34
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างข้อความขีดทับ
- ตัวสร้างข้อความขีดทับ ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.st-tool{border:1px solid rgba(128,128,128,.4);border-radius:12px;padding:16px;margin:16px 0}
.st-label{display:block;font-weight:600;margin:0 0 6px}
.st-tool textarea{width:100%;box-sizing:border-box;padding:10px;font-size:16px;border:1px solid rgba(128,128,128,.5);border-radius:8px;font-family:inherit;resize:vertical}
.st-opts{display:flex;flex-wrap:wrap;align-items:center;gap:12px;margin:10px 0 14px}
.st-opts label{cursor:pointer}
.st-btn{cursor:pointer;padding:6px 14px;font-size:14px;border:1px solid rgba(128,128,128,.6);border-radius:8px;background:transparent;color:inherit;font-family:inherit}
.st-btn:disabled{opacity:.45;cursor:not-allowed}
.st-row{display:flex;align-items:center;gap:10px;padding:10px 0;border-top:1px solid rgba(128,128,128,.25)}
.st-row-body{flex:1;min-width:0}
.st-row-name{font-size:12px;opacity:.7;margin-bottom:2px}
.st-row-text{font-size:18px;word-break:break-all;white-space:pre-wrap}
</style>
<div class="st-tool" id="st-tool">
<label class="st-label" for="st-input">พิมพ์ข้อความของคุณ</label>
<textarea id="st-input" rows="4" placeholder="พิมพ์หรือวางข้อความที่นี่ เช่น สวัสดีชาวโลก Hello"></textarea>
<div class="st-opts">
<label><input type="checkbox" id="st-space" checked> ใส่เอฟเฟกต์ที่ช่องว่างด้วย</label>
<button type="button" class="st-btn" id="st-clear">ล้างข้อความ</button>
</div>
<div id="st-results" aria-live="polite"></div>
</div>

<script>
(function () {
  var styles = [
    { name: 'ขีดทับ', mark: '\u0336' },
    { name: 'สัญลักษณ์เฉือน', mark: '\u0338' },
    { name: 'ขีดเส้นใต้', mark: '\u0332' },
    { name: 'ขีดเส้นใต้สอง', mark: '\u0333' },
    { name: 'เส้นประ', mark: '\u0320' },
    { name: 'เส้นคลื่น', mark: '\u0330' }
  ];
  var input = document.getElementById('st-input');
  var space = document.getElementById('st-space');
  var clearBtn = document.getElementById('st-clear');
  var box = document.getElementById('st-results');
  if (!input || !space || !clearBtn || !box) { return; }
  function convert(text, mark, withSpace) {
    var out = '';
    Array.from(text).forEach(function (ch) {
      out += ch;
      if (ch === '\n' || ch === '\r') { return; }
      if (!withSpace && ch === ' ') { return; }
      out += mark;
    });
    return out;
  }
  function copyText(text, btn) {
    function done() {
      btn.textContent = 'คัดลอกแล้ว ✓';
      setTimeout(function () { btn.textContent = 'คัดลอก'; }, 1500);
    }
    function fallback() {
      var ta = document.createElement('textarea');
      ta.value = text;
      ta.style.position = 'fixed';
      ta.style.opacity = '0';
      document.body.appendChild(ta);
      ta.select();
      try { document.execCommand('copy'); done(); } catch (e) { }
      document.body.removeChild(ta);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else {
      fallback();
    }
  }
  function render() {
    var text = input.value;
    var hasText = text.length > 0;
    box.textContent = '';
    styles.forEach(function (s) {
      var result = hasText ? convert(text, s.mark, space.checked) : '';
      var row = document.createElement('div');
      row.className = 'st-row';
      var body = document.createElement('div');
      body.className = 'st-row-body';
      var name = document.createElement('div');
      name.className = 'st-row-name';
      name.textContent = s.name;
      var out = document.createElement('div');
      out.className = 'st-row-text';
      out.textContent = hasText ? result : 'ผลลัพธ์จะแสดงที่นี่';
      body.appendChild(name);
      body.appendChild(out);
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'st-btn';
      btn.textContent = 'คัดลอก';
      btn.disabled = !hasText;
      btn.addEventListener('click', function () { copyText(result, btn); });
      row.appendChild(body);
      row.appendChild(btn);
      box.appendChild(row);
    });
  }
  input.addEventListener('input', render);
  space.addEventListener('change', render);
  clearBtn.addEventListener('click', function () {
    input.value = '';
    render();
    input.focus();
  });
  render();
})();
</script>

## วิธีใช้งานตัวสร้างข้อความขีดทับ

1. พิมพ์หรือวางข้อความที่ต้องการลงในช่อง "พิมพ์ข้อความของคุณ"
2. ดูผลลัพธ์ที่แสดงทันทีด้านล่าง โดยมีให้เลือก 6 รูปแบบ
3. หากไม่ต้องการให้ช่องว่างมีเส้น ให้เอาเครื่องหมายถูกหน้า "ใส่เอฟเฟกต์ที่ช่องว่างด้วย" ออก
4. กดปุ่ม "คัดลอก" ที่รูปแบบที่ชอบ
5. นำไปวางในแชต โซเชียลมีเดีย อีเมล หรือบล็อกได้ทันที
6. กด "ล้างข้อความ" เพื่อเริ่มใหม่

## ความหมายของแต่ละรูปแบบ

- **ขีดทับ:** เส้นแนวนอนพาดกลางตัวอักษร ใช้แสดงว่าข้อความถูกยกเลิก เช่น ราคาเดิมหรือรายการที่ทำเสร็จแล้ว
- **สัญลักษณ์เฉือน:** เส้นทแยงพาดผ่านตัวอักษร ให้ลุคแปลกตาและเน้นข้อความให้โดดเด่น
- **ขีดเส้นใต้:** เส้นเดียวอยู่ใต้ข้อความ ใช้เน้นคำสำคัญหรือหัวข้อ
- **ขีดเส้นใต้สอง:** เส้นคู่ใต้ข้อความ ให้ความรู้สึกเน้นหนักกว่าเส้นใต้ปกติ
- **เส้นประ:** เส้นขาดเป็นช่วงใต้ข้อความ ดูเบาและเป็นสไตล์เฉพาะตัว
- **เส้นคลื่น:** เส้นลอนคลื่นใต้ข้อความ ให้อารมณ์สนุกหรือสร้างสรรค์

## คำศัพท์ที่ควรรู้

- **Unicode:** มาตรฐานรหัสตัวอักษรสากลที่รองรับภาษาและสัญลักษณ์เกือบทุกชนิด
- **ตัวอักษรผสม (Combining Character):** อักขระพิเศษที่แสดงซ้อนบนหรือใต้ตัวอักษรก่อนหน้า ไม่ได้ใช้พื้นที่เพิ่ม
- **ข้อความธรรมดา (Plain Text):** ข้อความที่ไม่มีการจัดรูปแบบด้วย HTML หรือภาพ จึงคัดลอกและวางได้ทุกที่
- **ขีดทับ (Strikethrough):** เอฟเฟกต์เส้นพาดกลางข้อความเพื่อแสดงว่าถูกลบหรือยกเลิก

## ทำงานอย่างไร?

เครื่องมือนี้แทรกตัวอักษรผสมของ Unicode ไว้หลังตัวอักษรแต่ละตัว เช่น `\u0336` สำหรับเส้นขีดทับ ทำให้ดูเหมือนมีเส้นพาดผ่านข้อความ ผลลัพธ์ไม่ใช่ภาพหรือ HTML แต่เป็นข้อความธรรมดา จึงนำไปใช้ได้กับ Facebook, Instagram, X (Twitter), WhatsApp, LINE, อีเมล และบล็อกส่วนใหญ่ ทั้งนี้บางแพลตฟอร์มหรือฟอนต์อาจแสดงเส้นไม่สมบูรณ์

## ทำไมต้องใช้เครื่องมือนี้?

- **ใช้งานง่าย:** พิมพ์ข้อความ ดูผลลัพธ์ แล้วคัดลอก
- **ไม่ใช้ภาพหรือ HTML:** ได้ข้อความ Unicode ที่วางได้ทุกที่
- **หลายสไตล์:** เลือกได้ตามโทนและวัตถุประสงค์
- **ฟรีและรวดเร็ว:** ประมวลผลในเบราว์เซอร์ทันที ไม่ต้องสมัครสมาชิก