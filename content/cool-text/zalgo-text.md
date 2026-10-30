---
title: ตัวแปลงข้อความ Zalgo ออนไลน์ ฟรี
h1: ตัวแปลงข้อความ Zalgo
description: ใช้ตัวแปลงข้อความ Zalgo สร้างข้อความสยองขวัญสไตล์ glitch ได้ทันที ปรับระดับความเพี้ยนได้ ผลลัพธ์ขึ้นขณะพิมพ์ คัดลอกได้ในคลิกเดียว ใช้ฟรี ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-30T09:00:00+07:00'
weight: 35
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวแปลงข้อความ Zalgo
- ตัวแปลงข้อความ Zalgo ออนไลน์
- ข้อความและตัวอักษร
---

พิมพ์ข้อความในช่องด้านล่าง แล้วระบบจะเปลี่ยนเป็นข้อความ Zalgo ให้ทันที กด "แปลงเป็น Zalgo" เพื่อสุ่มผลลัพธ์ใหม่ และกด "คัดลอก" เพื่อนำไปวางใน Facebook, X (Twitter), Instagram, LINE, Discord หรือแอปอื่น ๆ

<style>
.zg-tool{max-width:720px;margin:1.5rem 0;padding:1rem;border:1px solid rgba(128,128,128,.4);border-radius:12px}
.zg-tool label{display:block;font-weight:600;margin:.5rem 0 .25rem}
.zg-tool textarea{width:100%;box-sizing:border-box;padding:.6rem;font-size:1.1rem;line-height:2.2;border:1px solid rgba(128,128,128,.5);border-radius:8px;resize:vertical;font-family:inherit;background:transparent;color:inherit}
.zg-row{display:flex;flex-wrap:wrap;align-items:center;gap:.6rem;margin:.6rem 0}
.zg-row label.zg-check{display:inline-flex;align-items:center;gap:.3rem;font-weight:400;margin:0}
.zg-tool button{padding:.45rem .9rem;font-size:1rem;border:1px solid rgba(128,128,128,.6);border-radius:8px;background:transparent;color:inherit;cursor:pointer}
.zg-tool button.zg-main{background:#6d28d9;border-color:#6d28d9;color:#fff}
.zg-tool output{min-width:2ch;text-align:center;font-weight:700}
.zg-status{min-height:1.4em;margin:.3rem 0 0;font-size:.9rem}
</style>
<div class="zg-tool" id="zg-tool">
<label for="zg-input">ใส่ข้อความ</label>
<textarea id="zg-input" rows="3" placeholder="พิมพ์ข้อความที่นี่...">สวัสดี Zalgo</textarea>
<div class="zg-row">
<span>ระดับสยองขวัญ:</span>
<button type="button" id="zg-minus" aria-label="ลดระดับ">-</button>
<output id="zg-level" for="zg-minus zg-plus">5</output>
<button type="button" id="zg-plus" aria-label="เพิ่มระดับ">+</button>
</div>
<div class="zg-row">
<label class="zg-check"><input type="checkbox" id="zg-up" checked> ด้านบน</label>
<label class="zg-check"><input type="checkbox" id="zg-mid" checked> ตรงกลาง</label>
<label class="zg-check"><input type="checkbox" id="zg-down" checked> ด้านล่าง</label>
</div>
<div class="zg-row">
<button type="button" id="zg-run" class="zg-main">แปลงเป็น Zalgo</button>
<button type="button" id="zg-copy">คัดลอก</button>
<button type="button" id="zg-clear">ล้างข้อความ</button>
</div>
<label for="zg-output">ผลลัพธ์</label>
<textarea id="zg-output" rows="3" readonly></textarea>
<p class="zg-status" id="zg-status" aria-live="polite"></p>
</div>
<script>
(function () {
  var UP = [], MID = [], DOWN = [];
  function addRange(arr, a, b) {
    for (var i = a; i !== b + 1; i++) { arr.push(i); }
  }
  addRange(UP, 0x300, 0x314);
  addRange(UP, 0x33D, 0x344);
  addRange(UP, 0x363, 0x36F);
  UP.push(0x31A, 0x346, 0x34A, 0x34B, 0x34C, 0x350, 0x351, 0x352, 0x357, 0x35B);
  MID.push(0x315, 0x31B, 0x321, 0x322, 0x327, 0x328, 0x334, 0x335, 0x336, 0x337, 0x338, 0x358, 0x35C, 0x35D, 0x35E, 0x360, 0x361, 0x362, 0x489);
  addRange(DOWN, 0x316, 0x319);
  addRange(DOWN, 0x31C, 0x320);
  addRange(DOWN, 0x323, 0x326);
  addRange(DOWN, 0x329, 0x333);
  addRange(DOWN, 0x353, 0x356);
  DOWN.push(0x339, 0x33A, 0x33B, 0x33C, 0x345, 0x347, 0x348, 0x349, 0x34D, 0x34E, 0x359, 0x35A, 0x35F);
  var input = document.getElementById("zg-input");
  var output = document.getElementById("zg-output");
  var levelEl = document.getElementById("zg-level");
  var statusEl = document.getElementById("zg-status");
  var cbUp = document.getElementById("zg-up");
  var cbMid = document.getElementById("zg-mid");
  var cbDown = document.getElementById("zg-down");
  var level = 5;
  function rand(n) { return Math.floor(Math.random() * n); }
  function marks(pool, count) {
    var s = "";
    for (var i = 0; i !== count; i++) {
      s += String.fromCharCode(pool[rand(pool.length)]);
    }
    return s;
  }
  function amount(factor) {
    return Math.max(1, Math.round(level * factor * (0.5 + Math.random())));
  }
  function build(text) {
    var chars = Array.from(text);
    var out = "";
    for (var i = 0; i !== chars.length; i++) {
      var ch = chars[i];
      out += ch;
      if (/\s/.test(ch)) { continue; }
      if (cbUp.checked) { out += marks(UP, amount(1)); }
      if (cbMid.checked) { out += marks(MID, amount(0.35)); }
      if (cbDown.checked) { out += marks(DOWN, amount(1)); }
    }
    return out;
  }
  function render() {
    levelEl.textContent = String(level);
    output.value = build(input.value);
  }
  function setStatus(msg) {
    statusEl.textContent = msg;
    window.setTimeout(function () { statusEl.textContent = ""; }, 2500);
  }
  function copyResult() {
    var text = output.value;
    if (!text) { setStatus("ยังไม่มีข้อความให้คัดลอก"); return; }
    function fallback() {
      try {
        output.focus();
        output.select();
        var ok = document.execCommand("copy");
        setStatus(ok ? "คัดลอกแล้ว" : "คัดลอกไม่สำเร็จ ลองเลือกข้อความแล้วคัดลอกเอง");
      } catch (e) {
        setStatus("คัดลอกไม่สำเร็จ ลองเลือกข้อความแล้วคัดลอกเอง");
      }
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(function () {
        setStatus("คัดลอกแล้ว");
      }, fallback);
    } else {
      fallback();
    }
  }
  document.getElementById("zg-minus").addEventListener("click", function () {
    if (level > 1) { level -= 1; }
    render();
  });
  document.getElementById("zg-plus").addEventListener("click", function () {
    if (level !== 10) { level += 1; }
    render();
  });
  document.getElementById("zg-run").addEventListener("click", render);
  document.getElementById("zg-copy").addEventListener("click", copyResult);
  document.getElementById("zg-clear").addEventListener("click", function () {
    input.value = "";
    render();
    input.focus();
  });
  input.addEventListener("input", render);
  cbUp.addEventListener("change", render);
  cbMid.addEventListener("change", render);
  cbDown.addEventListener("change", render);
  render();
})();
</script>

## วิธีใช้ตัวแปลงข้อความ Zalgo

1. **ใส่ข้อความ** พิมพ์หรือวางข้อความที่ต้องการลงในช่อง "ใส่ข้อความ" รองรับทั้งภาษาไทยและภาษาอังกฤษ
2. **เลือกระดับสยองขวัญ** กดปุ่ม + เพื่อเพิ่มความเพี้ยน หรือกดปุ่ม - เพื่อลดความเพี้ยน (ปรับได้ตั้งแต่ 1 ถึง 10)
3. **เลือกทิศทางตัวอักษรผสม** ติ๊กเลือก "ด้านบน" "ตรงกลาง" หรือ "ด้านล่าง" ตามรูปแบบที่ต้องการ
4. **ดูผลลัพธ์** ข้อความ Zalgo จะปรากฏในช่อง "ผลลัพธ์" ทันทีขณะพิมพ์ ถ้าอยากได้ลายใหม่ ให้กด "แปลงเป็น Zalgo" อีกครั้ง
5. **คัดลอกไปใช้** กด "คัดลอก" แล้วนำไปวางในโซเชียลมีเดีย แชต หรือแอปใดก็ได้ กด "ล้างข้อความ" เมื่อต้องการเริ่มใหม่

**เคล็ดลับ:** ระดับสูง ๆ อาจทำให้ตัวอักษรซ้อนทับบรรทัดอื่น และบางแพลตฟอร์มอาจตัดตัวอักษรผสมออก ควรลองวางทดสอบก่อนใช้งานจริง

## ข้อความ Zalgo คืออะไร

ข้อความ Zalgo คือข้อความที่ถูกเพิ่มตัวอักษรผสม (combining characters) ซ้อนไว้เหนือ กลาง และใต้ตัวอักษรเดิม ทำให้ดูบิดเบี้ยว เหมือนจอเสียหรือข้อความที่ถูกสาป จึงนิยมใช้สร้างความรู้สึกน่ากลัวในโพสต์ แคปชัน หรือเรื่องเล่าแนวสยองขวัญ

## คำศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| Zalgo | ตัวละครสมมติจากวัฒนธรรมอินเทอร์เน็ต เป็นที่มาของชื่อข้อความสไตล์สยองขวัญที่ตัวอักษรเลอะซ้อนกัน |
| ข้อความ Zalgo | ข้อความที่มีเครื่องหมายผสมจำนวนมากพอกอยู่บนตัวอักษรหนึ่งตัว จนดูเละหรือน่ากลัว |
| Glitch text / Scary text | ชื่อเรียกอื่นของข้อความ Zalgo ที่เน้นลุคเหมือนภาพสัญญาณเสีย หรือข้อความสยองขวัญ |
| ตัวอักษรผสม (Combining characters) | อักขระพิเศษที่ไม่แสดงตัวเดี่ยว แต่ไปเกาะบนตัวอักษรก่อนหน้า เช่น เครื่องหมายขีด จุด หรือวงกลมเล็ก ๆ |
| Unicode | มาตรฐานสากลที่กำหนดรหัสให้อักษรและสัญลักษณ์ทุกภาษา ทำให้ข้อความ Zalgo ใช้ได้ข้ามอุปกรณ์ |
| U+0300 ถึง U+036F | ช่วงรหัส Unicode ของตัวอักษรผสมที่ใช้สร้างข้อความ Zalgo เป็นหลัก |
| ซีริลลิก (Cyrillic) | ชุดอักษรแบบรัสเซีย บางตัวมีเครื่องหมายผสมที่ช่วยให้ลายข้อความดูแปลกขึ้น |
| ระดับสยองขวัญ | ตัวเลข 1 ถึง 10 ที่กำหนดจำนวนเครื่องหมายซ้อนต่อหนึ่งตัวอักษร ยิ่งสูงยิ่งเละ |
| ด้านบน / ตรงกลาง / ด้านล่าง | ตำแหน่งที่เครื่องหมายผสมไปเกาะ ใช้เลือกทรงของข้อความ เช่น เลือกเฉพาะด้านบนให้ดูสะอาดขึ้น |
| แปลงเป็น Zalgo | ปุ่มสุ่มเครื่องหมายใหม่ ข้อความเดิมจึงได้ลายต่างจากครั้งก่อน |
| Creepypasta | เรื่องสยองขวัญสั้นที่คัดลอกและวางต่อกันบนอินเทอร์เน็ต มักใช้ข้อความ Zalgo เพิ่มบรรยากาศ |