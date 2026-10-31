---
title: ตัวสร้างข้อความ Old English ออนไลน์ ฟรี
h1: ตัวสร้างข้อความ Old English
description: แปลงข้อความเป็นตัวอักษร Old English แบบ Blackletter และ Fraktur ออนไลน์ฟรี พิมพ์แล้วเห็นผลทันที คัดลอกไปวางบน Facebook, Instagram, X ได้เลย ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 41
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างข้อความ Old English
- ตัวสร้างข้อความ Old English ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.oe-tool{max-width:720px;margin:0 auto 2rem;font-family:inherit}
.oe-tool *{box-sizing:border-box}
.oe-input{width:100%;min-height:90px;padding:12px 14px;font-size:1.05rem;font-family:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:10px;resize:vertical}
.oe-input:focus{outline:2px solid #4f7cff;outline-offset:1px}
.oe-bar{display:flex;align-items:center;justify-content:space-between;gap:12px;flex-wrap:wrap;margin:12px 0}
.oe-toggle{display:inline-flex;align-items:center;gap:8px;cursor:pointer;user-select:none}
.oe-toggle input{width:18px;height:18px;cursor:pointer}
.oe-clear{padding:6px 14px;font-family:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:8px;cursor:pointer}
.oe-arrows{text-align:center;opacity:.6;margin:4px 0 10px;letter-spacing:6px}
.oe-list{display:flex;flex-direction:column;gap:8px}
.oe-row{display:flex;align-items:center;justify-content:space-between;gap:12px;padding:10px 14px;border:1px solid rgba(128,128,128,.35);border-radius:10px}
.oe-text{flex:1;min-width:0;font-size:1.25rem;line-height:1.5;word-break:break-word;white-space:pre-wrap}
.oe-copy{flex:none;padding:6px 14px;font-family:inherit;font-size:.9rem;color:#fff;background:#4f7cff;border:0;border-radius:8px;cursor:pointer}
.oe-copy.oe-done{background:#2e9e5b}
.oe-note{font-size:.9rem;opacity:.75;margin-top:10px}
</style>

<div class="oe-tool" id="oe-tool">
<textarea class="oe-input" id="oe-input" placeholder="พิมพ์ข้อความภาษาอังกฤษที่นี่..." aria-label="ข้อความต้นฉบับ">hello</textarea>
<div class="oe-bar">
<label class="oe-toggle"><input type="checkbox" id="oe-bold"><span>ตัวหนา</span></label>
<button type="button" class="oe-clear" id="oe-clear">ล้างข้อความ</button>
</div>
<div class="oe-arrows" aria-hidden="true">⇩ ⇩ ⇩</div>
<div class="oe-list" id="oe-list" aria-live="polite"></div>
<p class="oe-note">หมายเหตุ: ใช้ได้เฉพาะตัวอักษรภาษาอังกฤษ (A-Z, a-z) ตัวอักษรอื่นจะแสดงตามเดิม</p>
</div>

<script>
(function () {
  "use strict";

  var input = document.getElementById("oe-input");
  var boldBox = document.getElementById("oe-bold");
  var clearBtn = document.getElementById("oe-clear");
  var list = document.getElementById("oe-list");
  if (!input || !boldBox || !clearBtn || !list) { return; }

  // Fraktur ปกติ: ตัวพิมพ์ใหญ่บางตัวอยู่นอกช่วงต่อเนื่องของ Unicode
  var FRAKTUR_EXCEPTIONS = { C: 0x212D, H: 0x210C, I: 0x2111, R: 0x211C, Z: 0x2128 };
  var NORMAL_UPPER = 0x1D504;
  var NORMAL_LOWER = 0x1D51E;
  var BOLD_UPPER = 0x1D56C;
  var BOLD_LOWER = 0x1D586;

  // รูปแบบการตกแต่งรอบข้อความ ({t} = ข้อความที่แปลงแล้ว)
  var STYLES = [
    "{t}",
    "꧁ {t} ꧂",
    "『 {t} 』",
    "✦ {t} ✦",
    "★ {t} ★",
    "☾ {t} ☽",
    "♛ {t} ♛",
    "⚔ {t} ⚔",
    "❖ {t} ❖",
    "⋆ ˖ {t} ˖ ⋆"
  ];

  function convertChar(ch, bold) {
    if (/[A-Z]/.test(ch)) {
      var u = ch.charCodeAt(0) - 65;
      if (bold) { return String.fromCodePoint(BOLD_UPPER + u); }
      if (FRAKTUR_EXCEPTIONS[ch]) { return String.fromCodePoint(FRAKTUR_EXCEPTIONS[ch]); }
      return String.fromCodePoint(NORMAL_UPPER + u);
    }
    if (/[a-z]/.test(ch)) {
      var l = ch.charCodeAt(0) - 97;
      return String.fromCodePoint((bold ? BOLD_LOWER : NORMAL_LOWER) + l);
    }
    return ch;
  }

  function convert(text, bold) {
    var out = "";
    // Array.from รองรับอักขระ Unicode ที่เป็น surrogate pair
    Array.from(text).forEach(function (ch) { out += convertChar(ch, bold); });
    return out;
  }

  function copyText(text, btn) {
    function done() {
      var old = btn.textContent;
      btn.textContent = "คัดลอกแล้ว";
      btn.classList.add("oe-done");
      setTimeout(function () {
        btn.textContent = old;
        btn.classList.remove("oe-done");
      }, 1200);
    }
    function fallback() {
      var ta = document.createElement("textarea");
      ta.value = text;
      ta.style.position = "fixed";
      ta.style.opacity = "0";
      document.body.appendChild(ta);
      ta.select();
      try { document.execCommand("copy"); done(); } catch (e) { /* ignore */ }
      document.body.removeChild(ta);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else {
      fallback();
    }
  }

  // สร้างแถวผลลัพธ์ครั้งเดียว แล้วอัปเดตเฉพาะข้อความ
  var textNodes = STYLES.map(function (tpl) {
    var row = document.createElement("div");
    row.className = "oe-row";
    var span = document.createElement("span");
    span.className = "oe-text";
    var btn = document.createElement("button");
    btn.type = "button";
    btn.className = "oe-copy";
    btn.textContent = "คัดลอก";
    btn.addEventListener("click", function () {
      if (span.textContent) { copyText(span.textContent, btn); }
    });
    row.appendChild(span);
    row.appendChild(btn);
    list.appendChild(row);
    return { tpl: tpl, el: span };
  });

  function render() {
    var base = convert(input.value, boldBox.checked);
    textNodes.forEach(function (n) {
      n.el.textContent = base ? n.tpl.replace("{t}", base) : "";
    });
  }

  input.addEventListener("input", render);
  boldBox.addEventListener("change", render);
  clearBtn.addEventListener("click", function () {
    input.value = "";
    render();
    input.focus();
  });

  render();
})();
</script>

## วิธีการใช้งาน

1. พิมพ์หรือวางข้อความภาษาอังกฤษในช่องด้านบน ผลลัพธ์จะแสดงทันทีโดยไม่ต้องกดปุ่มแปลง
2. ติ๊กช่อง **ตัวหนา** หากต้องการตัวอักษรที่หนาและเด่นขึ้น
3. เลือกรูปแบบที่ชอบจากรายการ แล้วกดปุ่ม **คัดลอก** ที่ท้ายแถว
4. นำไปวางได้ทุกที่ เช่น Facebook, Instagram, X (Twitter), LINE, ชื่อโปรไฟล์ หรือเอกสารต่าง ๆ
5. กด **ล้างข้อความ** เพื่อเริ่มพิมพ์ใหม่

หมายเหตุ: ตัวสร้างนี้รองรับเฉพาะตัวอักษรภาษาอังกฤษ ตัวอักษรไทย ตัวเลข และสัญลักษณ์จะไม่ถูกแปลง

## คำอธิบายศัพท์ที่ควรรู้

- **Old English:** ชื่อเรียกทั่วไปของตัวอักษรสไตล์โบราณแบบยุคกลาง เส้นหนาและมีความประณีต ในเครื่องมือนี้หมายถึงอักษรแนว Blackletter
- **Blackletter:** กลุ่มตัวพิมพ์ยุโรปยุคกลางที่มีเส้นหนา เหลี่ยมและหักมุมชัดเจน มักเห็นในหัวหนังสือพิมพ์ ปกอัลบั้ม และงานสัก
- **Fraktur:** ตระกูลย่อยของ Blackletter ที่นิยมในเยอรมนี ใช้เป็นฐานของตัวอักษรที่เครื่องมือนี้สร้าง
- **ตัวหนา (Bold Fraktur):** Fraktur ที่เส้นหนาขึ้น อ่านง่ายกว่าและเด่นกว่าในพื้นที่เล็ก
- **Unicode:** มาตรฐานรหัสอักขระสากล ทำให้ข้อความที่แปลงแล้วคัดลอกไปวางบนเว็บและแอปส่วนใหญ่ได้โดยไม่ต้องติดตั้งฟอนต์
- **ตัวอักษรตกแต่ง:** สัญลักษณ์ที่ใส่ครอบข้อความ เช่น ✦ ★ ♛ เพื่อให้ผลลัพธ์ดูโดดเด่นขึ้น
- **คัดลอก:** ปุ่มที่ส่งข้อความผลลัพธ์ไปยังคลิปบอร์ดของอุปกรณ์ เพื่อให้วางที่อื่นได้ทันที

## การใช้งานสร้างสรรค์ของตัวอักษร Old English

- **โครงการประวัติศาสตร์:** เหมาะกับงานธีมยุคกลางหรือวินเทจ
- **บัตรเชิญงาน:** เพิ่มความสง่างามให้บัตรเชิญงานแต่งงานหรือการ์ดงานทางการ
- **การสร้างแบรนด์:** ใช้ทำโลโก้ที่ไม่ซ้ำใครและมีกลิ่นอายงานศิลป์
- **โซเชียลมีเดีย:** ใช้ตกแต่งชื่อโปรไฟล์ ไบโอ และโพสต์ให้ดูโดดเด่น

**ตัวอย่างผลลัพธ์:** `𝖔𝖑𝖉 𝖊𝖓𝖌𝖑𝖎𝖘𝖍 𝖙𝖊𝖝𝖙`