---
title: ข้อความ serif / sans-serif ออนไลน์ ฟรี
h1: ข้อความ serif / sans-serif
description: แปลงข้อความเป็นฟอนต์ serif / sans-serif ออนไลน์ฟรี พิมพ์ข้อความภาษาอังกฤษแล้วเห็นผลทันที เลือกสไตล์ที่ชอบ แล้วคัดลอกไปวางใน Facebook, X, Instagram ได้เลย
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 44
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ข้อความ serif / sans-serif
- ข้อความ serif / sans-serif ออนไลน์
- ข้อความและตัวอักษร
---

แปลงข้อความภาษาอังกฤษให้เป็นตัวอักษรสไตล์ Monospace Serif (แบบเครื่องพิมพ์ดีด) และ Sans-serif (แบบทันสมัย) พิมพ์ข้อความด้านล่าง ผลลัพธ์จะแสดงทันที จากนั้นกดคัดลอกไปวางได้เลย

<style>
.sf-tool{max-width:720px;margin:1.5rem 0;font-family:inherit}
.sf-label{display:block;font-weight:600;margin-bottom:.4rem}
.sf-input{box-sizing:border-box;width:100%;padding:.7rem .8rem;font-size:1rem;font-family:inherit;color:inherit;background:transparent;border:1px solid #9a9a9a;border-radius:8px;resize:vertical}
.sf-input:focus{outline:2px solid #4a7cf7;outline-offset:1px}
.sf-arrow{text-align:center;margin:.6rem 0;opacity:.6}
.sf-row{display:flex;flex-wrap:wrap;align-items:center;gap:.6rem;padding:.8rem;margin-bottom:.7rem;border:1px solid #c4c4c4;border-radius:8px}
.sf-name{flex:1 1 100%;font-size:.9rem;opacity:.8}
.sf-out{flex:1 1 200px;min-width:0;min-height:1.6em;font-size:1.2rem;line-height:1.5;white-space:pre-wrap;word-break:break-word}
.sf-out:empty::before{content:"ตัวอย่างผลลัพธ์จะแสดงที่นี่";font-size:.95rem;opacity:.5}
.sf-btn{flex:0 0 auto;padding:.5rem 1.1rem;font-size:.95rem;font-family:inherit;color:#fff;background:#4a7cf7;border:0;border-radius:6px;cursor:pointer}
.sf-btn:hover{background:#3563d8}
.sf-btn.sf-done{background:#2e9e5b}
</style>
<div class="sf-tool">
  <label class="sf-label" for="sf-input">พิมพ์ข้อความของคุณ</label>
  <textarea class="sf-input" id="sf-input" rows="3" placeholder="พิมพ์ข้อความภาษาอังกฤษที่นี่ เช่น Hello World 123">Hello World 123</textarea>
  <div class="sf-arrow" aria-hidden="true">⇩ ⇩ ⇩</div>
  <div class="sf-row">
    <div class="sf-name"><strong>Monospace Serif</strong> · 𝙰</div>
    <div class="sf-out" id="sf-out-mono" aria-live="polite"></div>
    <button type="button" class="sf-btn" data-target="sf-out-mono">คัดลอก</button>
  </div>
  <div class="sf-row">
    <div class="sf-name"><strong>Sans-serif</strong> · 𝖠</div>
    <div class="sf-out" id="sf-out-sans" aria-live="polite"></div>
    <button type="button" class="sf-btn" data-target="sf-out-sans">คัดลอก</button>
  </div>
</div>
<script>
(function () {
  var UP = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var LO = "abcdefghijklmnopqrstuvwxyz";
  var DG = "0123456789";
  var STYLES = {
    "sf-out-mono": { up: 0x1D670, lo: 0x1D68A, dg: 0x1D7F6 },
    "sf-out-sans": { up: 0x1D5A0, lo: 0x1D5BA, dg: 0x1D7E2 }
  };
  function convert(text, s) {
    return Array.from(text).map(function (ch) {
      var i = UP.indexOf(ch);
      if (i > -1) { return String.fromCodePoint(s.up + i); }
      i = LO.indexOf(ch);
      if (i > -1) { return String.fromCodePoint(s.lo + i); }
      i = DG.indexOf(ch);
      if (i > -1) { return String.fromCodePoint(s.dg + i); }
      return ch;
    }).join("");
  }
  var input = document.getElementById("sf-input");
  function render() {
    Object.keys(STYLES).forEach(function (id) {
      var el = document.getElementById(id);
      if (el) { el.textContent = convert(input.value, STYLES[id]); }
    });
  }
  function fallbackCopy(text) {
    var ta = document.createElement("textarea");
    ta.value = text;
    ta.style.position = "fixed";
    ta.style.opacity = "0";
    document.body.appendChild(ta);
    ta.select();
    try { document.execCommand("copy"); } catch (e) {}
    document.body.removeChild(ta);
  }
  function copyText(text) {
    if (navigator.clipboard && navigator.clipboard.writeText) {
      return navigator.clipboard.writeText(text).catch(function () { fallbackCopy(text); });
    }
    fallbackCopy(text);
    return Promise.resolve();
  }
  Array.prototype.forEach.call(document.querySelectorAll(".sf-btn"), function (btn) {
    btn.addEventListener("click", function () {
      var out = document.getElementById(btn.getAttribute("data-target"));
      var text = out ? out.textContent : "";
      if (!text) { return; }
      copyText(text).then(function () {
        var old = "คัดลอก";
        btn.textContent = "คัดลอกแล้ว ✓";
        btn.classList.add("sf-done");
        setTimeout(function () {
          btn.textContent = old;
          btn.classList.remove("sf-done");
        }, 1500);
      });
    });
  });
  input.addEventListener("input", render);
  render();
})();
</script>

## วิธีใช้งาน

1. พิมพ์หรือวางข้อความภาษาอังกฤษลงในช่อง "พิมพ์ข้อความของคุณ"
2. ดูผลลัพธ์ทั้ง 2 สไตล์ที่แสดงทันทีด้านล่างช่องพิมพ์
3. กดปุ่ม "คัดลอก" ของสไตล์ที่ต้องการ
4. นำไปวางได้ทุกที่ เช่น Facebook, Instagram, X (Twitter), TikTok, ชื่อโปรไฟล์ หรือแคปชัน
5. หมายเหตุ: รองรับเฉพาะตัวอักษร A-Z, a-z และตัวเลข 0-9 ส่วนภาษาไทยและสัญลักษณ์อื่นจะแสดงตามเดิม

## สไตล์ที่มีให้เลือก

### 𝙻𝚘𝚛𝚎𝚖 𝚒𝚙𝚜𝚞𝚖 - Monospace Serif (สไตล์เครื่องพิมพ์ดีด)

ตัวอักษรทุกตัวกว้างเท่ากัน จัดเรียงเป็นระเบียบ เหมาะสำหรับ:

- ข้อความที่ดูเหมือนโค้ด
- ข้อความที่ต้องการให้เรียงตรงกันพอดี
- บทกวีและคำคมวรรณกรรม
- เนื้อหาทางคณิตศาสตร์
- งานที่ต้องการความรู้สึกแบบเครื่องพิมพ์ดีด

### 𝖫𝗈𝗋𝖾𝗆 𝗂𝗉𝗌𝗎𝗆 - Sans-serif (สไตล์ทันสมัย)

ตัวอักษรเรียบ สะอาด ไม่มีเชิง เหมาะสำหรับ:

- โปรไฟล์โซเชียลมีเดีย
- ประกาศแบบมืออาชีพ
- หัวข้อที่ดึงดูดสายตา
- ชื่อผู้ใช้ที่มีสไตล์
- โพสต์ธุรกิจ

## คำอธิบายศัพท์ที่ควรรู้

- **Serif (เซอริฟ)**: ตัวอักษรที่มี "เชิง" หรือเส้นเล็ก ๆ ที่ปลายตัวอักษร เช่น ฟอนต์ Times New Roman ให้ความรู้สึกเป็นทางการและคลาสสิก
- **Sans-serif (ซานส์-เซอริฟ)**: ตัวอักษรที่ไม่มีเชิง เส้นเรียบง่าย อ่านง่ายบนหน้าจอ ให้ความรู้สึกทันสมัย เช่น Arial
- **Monospace (โมโนสเปซ)**: ตัวอักษรที่มีความกว้างเท่ากันทุกตัว นิยมใช้กับเครื่องพิมพ์ดีดและการเขียนโค้ด
- **Unicode (ยูนิโค้ด)**: มาตรฐานรหัสตัวอักษรสากลที่รองรับตัวอักษรและสัญลักษณ์หลายภาษา ทำให้ข้อความที่แปลงแล้วคัดลอกไปวางได้ทุกแพลตฟอร์ม
- **Mathematical Alphanumeric Symbols (ตัวอักษรและตัวเลขทางคณิตศาสตร์)**: ชุดอักขระใน Unicode ที่เครื่องมือนี้นำมาใช้ เป็นตัวอักษรจริงที่หน้าตาต่างจากปกติ ไม่ใช่การเปลี่ยนฟอนต์
- **คัดลอกและวาง (Copy & Paste)**: การนำข้อความที่แปลงแล้วไปวางในแอปอื่น ข้อความจะคงหน้าตาเดิมโดยไม่ต้องตั้งค่าฟอนต์เพิ่ม

## ข้อควรรู้

- ข้อความที่แปลงแล้วเป็นอักขระ Unicode จึงอาจแสดงผลเป็นช่องสี่เหลี่ยมในบางแอปหรืออุปกรณ์รุ่นเก่า
- โปรแกรมอ่านหน้าจอ (screen reader) อาจอ่านข้อความสไตล์นี้ไม่ชัดเจน ควรใช้กับข้อความสั้น ๆ หรือส่วนตกแต่ง
- ระบบค้นหาอาจจับคำที่แปลงแล้วไม่ตรงกับข้อความปกติ จึงไม่ควรใช้กับคำสำคัญที่ต้องการให้ค้นเจอ