---
title: ตัวสร้างข้อความ Small Caps ออนไลน์ ฟรี
h1: ตัวสร้างข้อความ Small Caps
description: ใช้ตัวสร้างข้อความ Small Caps แปลงข้อความภาษาอังกฤษเป็นตัวพิมพ์ใหญ่ขนาดเล็กได้ทันที ประมวลผลในเบราว์เซอร์ ไม่ต้องติดตั้งโปรแกรม ใช้ฟรี คัดลอกไปวางได้ทุกที่
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-26T09:00:00+07:00'
weight: 37
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างข้อความ Small Caps
- ตัวสร้างข้อความ Small Caps ออนไลน์
- ข้อความและตัวอักษร
---
<style>
.sc-tool{max-width:760px;margin:0 auto 2rem;font-family:inherit}
.sc-tool *{box-sizing:border-box}
.sc-input{width:100%;min-height:110px;padding:12px 14px;font:inherit;font-size:1.05rem;border:1px solid rgba(128,128,128,.5);border-radius:10px;background:transparent;color:inherit;resize:vertical}
.sc-input:focus{outline:2px solid #4f8cff;outline-offset:1px}
.sc-bar{display:flex;justify-content:space-between;align-items:center;margin:6px 2px 14px;font-size:.85rem;opacity:.75}
.sc-clear{border:0;background:none;color:inherit;text-decoration:underline;cursor:pointer;font:inherit;padding:0}
.sc-arrows{text-align:center;opacity:.6;margin:0 0 10px;letter-spacing:.3em}
.sc-list{display:flex;flex-direction:column;gap:10px}
.sc-row{display:flex;align-items:center;gap:12px;padding:10px 12px;border:1px solid rgba(128,128,128,.35);border-radius:10px}
.sc-body{flex:1;min-width:0}
.sc-label{display:block;font-size:.75rem;opacity:.65;margin-bottom:2px}
.sc-out{font-size:1.1rem;word-break:break-word;white-space:pre-wrap}
.sc-copy{flex:none;padding:8px 14px;border:0;border-radius:8px;background:#4f8cff;color:#fff;font:inherit;font-size:.9rem;cursor:pointer;white-space:nowrap}
.sc-copy:hover{background:#3a77ea}
.sc-copy.sc-done{background:#2e9e5b}
.sc-note{font-size:.85rem;opacity:.7;margin-top:12px}
</style>
<div class="sc-tool" id="scTool">
<textarea class="sc-input" id="scInput" placeholder="hello" aria-label="พิมพ์ข้อความที่ต้องการแปลง" maxlength="5000">hello</textarea>
<div class="sc-bar"><span id="scCount">5 ตัวอักษร</span><button type="button" class="sc-clear" id="scClear">ล้างข้อความ</button></div>
<div class="sc-arrows" aria-hidden="true">⇩ ⇩ ⇩</div>
<div class="sc-list" id="scList"></div>
<p class="sc-note">หมายเหตุ: ใช้ได้เฉพาะตัวอักษรภาษาอังกฤษ (A-Z) เท่านั้น ตัวอักษรภาษาไทย ตัวเลข และสัญลักษณ์จะคงเดิม</p>
</div>
<script>
(function () {
  var MAP = {a:"ᴀ",b:"ʙ",c:"ᴄ",d:"ᴅ",e:"ᴇ",f:"ꜰ",g:"ɢ",h:"ʜ",i:"ɪ",j:"ᴊ",k:"ᴋ",l:"ʟ",m:"ᴍ",n:"ɴ",o:"ᴏ",p:"ᴘ",q:"ǫ",r:"ʀ",s:"ꜱ",t:"ᴛ",u:"ᴜ",v:"ᴠ",w:"ᴡ",x:"x",y:"ʏ",z:"ᴢ"};
  var UL = "\u0332";
  var ST = "\u0336";
  function isLetter(c) { return /[A-Za-z]/.test(c); }
  function isUpper(c) { return /[A-Z]/.test(c); }
  function sc(c) {
    var l = c.toLowerCase();
    return Object.prototype.hasOwnProperty.call(MAP, l) && isLetter(c) ? MAP[l] : c;
  }
  function plain(t) { return Array.from(t).map(sc).join(""); }
  function keepUpper(t) {
    return Array.from(t).map(function (c) { return isUpper(c) ? c : sc(c); }).join("");
  }
  function titleCase(t) {
    var prev = "";
    return Array.from(t).map(function (c) {
      var out = isLetter(c) && !isLetter(prev) && prev !== "'" ? c.toUpperCase() : sc(c);
      prev = c;
      return out;
    }).join("");
  }
  function sentence(t) {
    var start = true;
    return Array.from(t).map(function (c) {
      var out = c;
      if (isLetter(c)) {
        out = start ? c.toUpperCase() : sc(c);
        start = false;
      } else if (/[.!?\n]/.test(c)) {
        start = true;
      }
      return out;
    }).join("");
  }
  function spaced(t) {
    return Array.from(plain(t)).map(function (c) { return /\s/.test(c) ? c : c + " "; }).join("").trim();
  }
  function underline(t) {
    return Array.from(plain(t)).map(function (c) { return /\s/.test(c) ? c : c + UL; }).join("");
  }
  function strike(t) {
    return Array.from(plain(t)).map(function (c) { return /\s/.test(c) ? c : c + ST; }).join("");
  }
  function star(t) { return "✦ " + plain(t) + " ✦"; }
  function bracket(t) { return "『" + plain(t) + "』"; }
  var STYLES = [
    {name: "Small Caps มาตรฐาน", fn: plain},
    {name: "คงตัวพิมพ์ใหญ่เดิม", fn: keepUpper},
    {name: "ตัวใหญ่ต้นคำ", fn: titleCase},
    {name: "ตัวใหญ่ต้นประโยค", fn: sentence},
    {name: "เว้นระยะตัวอักษร", fn: spaced},
    {name: "ขีดเส้นใต้", fn: underline},
    {name: "ขีดทับ", fn: strike},
    {name: "ประดับดาว", fn: star},
    {name: "ใส่วงเล็บ", fn: bracket}
  ];
  var input = document.getElementById("scInput");
  var list = document.getElementById("scList");
  var count = document.getElementById("scCount");
  var clearBtn = document.getElementById("scClear");
  var outs = [];
  function copyText(text, btn) {
    function done() {
      var old = btn.getAttribute("data-label");
      btn.textContent = "คัดลอกแล้ว ✓";
      btn.classList.add("sc-done");
      setTimeout(function () {
        btn.textContent = old;
        btn.classList.remove("sc-done");
      }, 1500);
    }
    function fallback() {
      var ta = document.createElement("textarea");
      ta.value = text;
      ta.style.position = "fixed";
      ta.style.opacity = "0";
      document.body.appendChild(ta);
      ta.select();
      try { document.execCommand("copy"); done(); } catch (e) {}
      document.body.removeChild(ta);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else {
      fallback();
    }
  }
  STYLES.forEach(function (s) {
    var row = document.createElement("div");
    row.className = "sc-row";
    var body = document.createElement("div");
    body.className = "sc-body";
    var label = document.createElement("span");
    label.className = "sc-label";
    label.textContent = s.name;
    var out = document.createElement("div");
    out.className = "sc-out";
    var btn = document.createElement("button");
    btn.type = "button";
    btn.className = "sc-copy";
    btn.textContent = "คัดลอก";
    btn.setAttribute("data-label", "คัดลอก");
    btn.addEventListener("click", function () { copyText(out.textContent, btn); });
    body.appendChild(label);
    body.appendChild(out);
    row.appendChild(body);
    row.appendChild(btn);
    list.appendChild(row);
    outs.push({el: out, fn: s.fn});
  });
  function render() {
    var text = input.value;
    var src = text.length > 0 ? text : "hello";
    count.textContent = Array.from(text).length + " ตัวอักษร";
    outs.forEach(function (o) { o.el.textContent = o.fn(src); });
  }
  input.addEventListener("input", render);
  clearBtn.addEventListener("click", function () {
    input.value = "";
    render();
    input.focus();
  });
  render();
})();
</script>

## วิธีการใช้งาน

1. พิมพ์หรือวางข้อความภาษาอังกฤษของคุณลงในช่องด้านบน
2. ดูผลลัพธ์ทุกสไตล์ที่แสดงด้านล่างแบบสดทันทีขณะพิมพ์
3. เลือกสไตล์ที่ต้องการ แล้วกดปุ่ม "คัดลอก" ที่แถวนั้น
4. นำไปวางได้ทุกที่ เช่น X (Twitter), Facebook, Instagram, TikTok, ชื่อโปรไฟล์ หรือเอกสาร
5. หากต้องการเริ่มใหม่ กด "ล้างข้อความ"

หมายเหตุ: ใช้ได้เฉพาะตัวอักษรภาษาอังกฤษ (A-Z) ส่วนตัวอักษรภาษาไทย ตัวเลข และสัญลักษณ์จะไม่ถูกแปลง และบางแอปหรือฟอนต์อาจแสดงอักขระพิเศษไม่ครบ

## คำอธิบายสั้น ๆ ของแต่ละสไตล์

- **Small Caps มาตรฐาน:** แปลงทุกตัวอักษรเป็นตัวพิมพ์ใหญ่ขนาดเล็ก เช่น ʜᴇʟʟᴏ ᴡᴏʀʟᴅ
- **คงตัวพิมพ์ใหญ่เดิม:** ตัวพิมพ์ใหญ่ที่คุณพิมพ์ยังเป็นตัวใหญ่ปกติ ส่วนตัวพิมพ์เล็กถูกแปลงเป็น Small Caps
- **ตัวใหญ่ต้นคำ:** ตัวอักษรแรกของทุกคำเป็นตัวพิมพ์ใหญ่ปกติ ที่เหลือเป็น Small Caps เหมาะกับชื่อและหัวข้อ
- **ตัวใหญ่ต้นประโยค:** ตัวอักษรแรกของประโยคเป็นตัวพิมพ์ใหญ่ปกติ ที่เหลือเป็น Small Caps อ่านง่ายในข้อความยาว
- **เว้นระยะตัวอักษร:** เพิ่มช่องว่างระหว่างตัวอักษร ให้ดูโปร่งและโดดเด่นสำหรับชื่อแบรนด์หรือหัวข้อสั้น ๆ
- **ขีดเส้นใต้:** เพิ่มเส้นใต้ให้ทุกตัวอักษรด้วยอักขระ Unicode ใช้เน้นคำสำคัญ
- **ขีดทับ:** เพิ่มเส้นทับกลางตัวอักษร เหมาะกับข้อความเชิงเล่นคำหรือแสดงว่ายกเลิก
- **ประดับดาว:** ล้อมข้อความด้วยสัญลักษณ์ ✦ ให้ดูสะดุดตาในไบโอหรือแคปชัน
- **ใส่วงเล็บ:** ล้อมข้อความด้วยวงเล็บ 『 』 เหมาะกับหัวข้อ ชื่อเพจ หรือการจัดหมวดหมู่

## คำศัพท์ที่ควรรู้

- **Small Caps (ตัวพิมพ์ใหญ่ขนาดเล็ก):** รูปแบบตัวอักษรที่หน้าตาเหมือนตัวพิมพ์ใหญ่ แต่มีความสูงใกล้เคียงตัวพิมพ์เล็ก ให้ความรู้สึกเรียบหรู เป็นทางการ
- **Unicode:** มาตรฐานรหัสอักขระสากลที่ทำให้ข้อความพิเศษเหล่านี้คัดลอกและวางได้ในเกือบทุกแพลตฟอร์ม โดยไม่ต้องติดตั้งฟอนต์เพิ่ม
- **ตัวพิมพ์ใหญ่ / ตัวพิมพ์เล็ก (Uppercase / Lowercase):** ตัวอักษรภาษาอังกฤษรูปใหญ่ (A) และรูปเล็ก (a) เครื่องมือนี้ใช้ความต่างนี้เพื่อเลือกสไตล์ที่ต้องการคงตัวใหญ่
- **Combining Character (อักขระผสม):** อักขระที่ซ้อนทับบนตัวอักษรก่อนหน้า เช่น เส้นใต้และเส้นทับ ใช้สร้างสไตล์ขีดเส้นใต้และขีดทับ
- **Live Preview (ดูตัวอย่างสด):** ผลลัพธ์อัปเดตทันทีเมื่อคุณพิมพ์ ไม่ต้องกดปุ่มแปลง และประมวลผลในเบราว์เซอร์ของคุณเอง

## การใช้งานสร้างสรรค์ของ Small Caps

- **เอกสารมืออาชีพ:** เพิ่มความโดดเด่นให้หัวข้อและชื่อเรื่อง
- **การสร้างแบรนด์:** สร้างชื่อร้าน โลโก้ หรือโปรไฟล์ที่มีเอกลักษณ์
- **การเขียนเชิงวิชาการ:** จัดรูปแบบคำย่อและการอ้างอิงให้อ่านง่าย