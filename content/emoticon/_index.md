---
title: ข้อความอีโมติคอน ออนไลน์ ฟรี
h1: ข้อความอีโมติคอน
description: 'คัดลอกข้อความอีโมติคอนและคาโอโมจิได้ในคลิกเดียว นำไปวางในแคปชั่น แชท หรือโซเชียลได้ทันที ใช้ง่าย ไม่ต้องติดตั้งโปรแกรม ใช้ฟรีสำหรับทุกคน บนมือถือและพีซี'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-02T09:00:00+07:00'
weight: 51
tool: true
topic: emoji
appCategory: UtilitiesApplication
keywords:
- ข้อความอีโมติคอน
- ข้อความอีโมติคอน ออนไลน์
- อิโมจิและสัญลักษณ์
---
<style>
.emo-tool{margin:16px 0 28px}
.emo-tabs{display:flex;flex-wrap:wrap;gap:8px;margin-bottom:14px}
.emo-tab{font:inherit;font-size:14px;padding:6px 14px;border-radius:999px;border:1px solid rgba(128,128,128,.4);background:transparent;color:inherit;cursor:pointer}
.emo-tab[aria-pressed="true"]{background:#2563eb;border-color:#2563eb;color:#fff}
.emo-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:10px}
.emo-item{font:inherit;font-size:17px;line-height:1.6;padding:14px 8px;min-height:56px;border-radius:10px;border:1px solid rgba(128,128,128,.35);background:rgba(128,128,128,.07);color:inherit;cursor:pointer;overflow:hidden;word-break:keep-all;text-align:center}
.emo-item:hover,.emo-item:focus-visible{border-color:#2563eb;background:rgba(37,99,235,.12);outline:none}
.emo-item.done{border-color:#16a34a;background:rgba(22,163,74,.15)}
.emo-toast{position:fixed;left:50%;bottom:24px;transform:translateX(-50%) translateY(20px);max-width:90vw;padding:10px 18px;border-radius:10px;background:#111827;color:#fff;font-size:15px;opacity:0;pointer-events:none;transition:all .2s;z-index:9999}
.emo-toast.show{opacity:1;transform:translateX(-50%) translateY(0)}</style>
<div class="emo-tool">
<p>คลิกที่อีโมติคอนเพื่อคัดลอกไปที่คลิปบอร์ด ▼</p>
<div class="emo-tabs" id="emo-tabs" role="group" aria-label="หมวดหมู่อีโมติคอน"></div>
<div class="emo-grid" id="emo-grid"></div>
<div class="emo-toast" id="emo-toast" role="status" aria-live="polite"></div>
</div>

<script>
(function () {
  var DATA = [
    { n: "ยอดนิยม", l: ["( ͡° ͜ʖ ͡°)", "¯\\_(ツ)_/¯", "ヽ༼ຈل͜ຈ༽ﾉ", "ಠ_ಠ", "¯\\(°_o)/¯", "(≧▽≦)", "ʕ•ᴥ•ʔ", "(ಥ﹏ಥ)"] },
    { n: "มีความสุข", l: ["(≧▽≦)", "(◕‿◕)", "(*^_^*)", "٩(♡ε♡ )۶", "(✿◠‿◠)", "•̀.̫•́✧", "(๑˃̵ᴗ˂̵)ﻭ", "ヽ(^o^)丿", "(・∀・)", "(＾ｕ＾)", "(^o^)", "(๑•̀ㅂ•́)ﻭ✧", "(*´∀｀)", "(/◕ヮ◕)/"] },
    { n: "รัก", l: ["(•ө•)♡", "(๑´ڡ`๑)", "ლ(´ڡ`ლ)", "(ㆁωㆁ*)", "(◉ω◉)", "(･ิω･ิ)", "(︶^︶)"] },
    { n: "เศร้า", l: ["(T_T)", "(｡ŏ﹏ŏ)", "( ･ั﹏･ั)", "(｡>﹏<｡)", "(ಥ﹏ಥ)", "༼ಢ_ಢ༽", "(;´༎ຶД༎ຶ`)", "(´-﹏-`；)", "＿|￣|○", "இдஇ", "(¯―¯٥)"] },
    { n: "โกรธ", l: ["(ノಠ益ಠ)", "(~_~メ)", "(・へ・)", "→_→", "凸-_-凸", "ಠ_ಠ", "(；･`д･´)"] },
    { n: "งง / เขิน", l: ["(-_-;)", "^_^;", "(^o^;", "(ーー;)", "('・ω・')", "(；´Д｀)", "m(_ _;)m", "( ﾟдﾟ)", "(゜o゜)", "(´_ゝ`)", "¯\\(°_o)/¯", "ó_ò"] },
    { n: "อื่น ๆ", l: ["ʕ•ᴥ•ʔ", "ᶘᵒᴥᵒᶅ", "Ƹ̵̡Ӝ̵̨̄Ʒ", "♪♫*•♪", "囧", "༼ ºلº ༽", "( ͡° ͜ʖ ͡°)", "´• ل •`", "'ㅂ'", "'ㅅ'", "-ㅅ-", "(▀̿̿Ĺ̯̿▀̿ ̿)"] }
  ];
  var tabsEl = document.getElementById("emo-tabs");
  var gridEl = document.getElementById("emo-grid");
  var toastEl = document.getElementById("emo-toast");
  if (!tabsEl || !gridEl || !toastEl) { return; }
  var timer = null;
  function showToast(msg) {
    toastEl.textContent = msg;
    toastEl.className = "emo-toast show";
    clearTimeout(timer);
    timer = setTimeout(function () { toastEl.className = "emo-toast"; }, 1600);
  }
  function legacyCopy(text) {
    return new Promise(function (resolve, reject) {
      var ta = document.createElement("textarea");
      ta.value = text;
      ta.setAttribute("readonly", "");
      ta.style.position = "fixed";
      ta.style.opacity = "0";
      document.body.appendChild(ta);
      ta.select();
      try {
        if (document.execCommand("copy")) { resolve(); } else { reject(new Error("copy failed")); }
      } catch (e) { reject(e); }
      document.body.removeChild(ta);
    });
  }
  function copyText(text) {
    if (navigator.clipboard && window.isSecureContext) {
      return navigator.clipboard.writeText(text).catch(function () { return legacyCopy(text); });
    }
    return legacyCopy(text);
  }
  function renderList(list) {
    gridEl.textContent = "";
    list.forEach(function (text) {
      var b = document.createElement("button");
      b.type = "button";
      b.className = "emo-item";
      b.textContent = text;
      b.setAttribute("aria-label", "คัดลอก " + text);
      b.addEventListener("click", function () {
        copyText(text).then(function () {
          b.classList.add("done");
          setTimeout(function () { b.classList.remove("done"); }, 700);
          showToast("คัดลอกแล้ว: " + text);
        }).catch(function () {
          showToast("คัดลอกไม่สำเร็จ กรุณาลองอีกครั้ง");
        });
      });
      gridEl.appendChild(b);
    });
  }
  function allItems() {
    var seen = {}, out = [];
    DATA.forEach(function (c) {
      c.l.forEach(function (t) { if (!seen[t]) { seen[t] = 1; out.push(t); } });
    });
    return out;
  }
  var tabs = [{ n: "ทั้งหมด", l: allItems() }].concat(DATA);
  function select(i) {
    Array.prototype.forEach.call(tabsEl.children, function (btn, idx) {
      btn.setAttribute("aria-pressed", idx === i ? "true" : "false");
    });
    renderList(tabs[i].l);
  }
  tabs.forEach(function (t, i) {
    var b = document.createElement("button");
    b.type = "button";
    b.className = "emo-tab";
    b.textContent = t.n;
    b.setAttribute("aria-pressed", "false");
    b.addEventListener("click", function () { select(i); });
    tabsEl.appendChild(b);
  });
  select(0);
})();
</script>

## วิธีใช้งานเครื่องมือข้อความอีโมติคอน

1. **เลือกหมวดหมู่** – แตะแท็บด้านบน เช่น ยอดนิยม มีความสุข รัก เศร้า หรือโกรธ เพื่อกรองให้เหลือเฉพาะอารมณ์ที่ต้องการ หรือเลือก "ทั้งหมด" เพื่อดูครบทุกแบบ
2. **คลิกที่อีโมติคอน** – เมื่อคลิก ข้อความจะถูกคัดลอกไปยังคลิปบอร์ดทันที พร้อมแจ้งเตือน "คัดลอกแล้ว" ที่ด้านล่างหน้าจอ
3. **นำไปวาง** – เปิดแอปที่ต้องการ เช่น LINE, Facebook, Instagram, X (Twitter) หรือโน้ต แล้วกดวาง (Ctrl+V บนคอมพิวเตอร์ หรือกดค้างแล้วเลือก "วาง" บนมือถือ)
4. **ปรับแต่งได้ตามต้องการ** – ผสมกับข้อความหรือแคปชั่นของคุณได้เลย เช่น วางต่อท้ายประโยคเพื่อเพิ่มอารมณ์

> เคล็ดลับ: หากอีโมติคอนบางตัวแสดงเป็นสี่เหลี่ยมหรือเพี้ยนในบางแอป แสดงว่าฟอนต์ของแอปนั้นไม่รองรับสัญลักษณ์บางตัว ลองเลือกแบบที่เรียบง่ายกว่าแทน

## ความหมายของคำศัพท์

- **Emoticon (อีโมติคอน)** – มาจากคำว่า Emotion + Icon คือภาพแสดงสีหน้าหรืออารมณ์ที่สร้างจากตัวอักษร ตัวเลข และเครื่องหมายวรรคตอน เช่น `:-)` และ `:-(`
- **Kaomoji (คาโอโมจิ)** – อีโมติคอนสไตล์ญี่ปุ่นที่อ่านในแนวตั้งตรงได้เลย ไม่ต้องเอียงหัว มักใช้อักขระหลากหลายภาษาประกอบกันให้ดูน่ารักหรือสื่อสีหน้าได้ละเอียดขึ้น
- **Emoji (อีโมจิ)** – รูปภาพขนาดเล็กตามมาตรฐาน Unicode เช่น 😀 ต่างจากอีโมติคอนที่สร้างจากตัวอักษร
- **ASCII** – ชุดอักขระพื้นฐานบนคีย์บอร์ด ซึ่งอีโมติคอนรุ่นแรก ๆ ใช้สร้างใบหน้าโดยหมุนอ่านตะแคง 90 องศา
- **Unicode** – มาตรฐานรหัสอักขระสากลที่รวมตัวอักษรหลายภาษาและสัญลักษณ์พิเศษ ทำให้คาโอโมจิหลายแบบแสดงผลได้
- **คลิปบอร์ด (Clipboard)** – พื้นที่พักข้อมูลชั่วคราวในอุปกรณ์ เมื่อคัดลอกแล้วสามารถกดวางที่ไหนก็ได้
- **แคปชั่น (Caption)** – ข้อความประกอบโพสต์หรือรูปภาพบนโซเชียลมีเดีย
- **Lenny Face** `( ͡° ͜ʖ ͡°)` – ใบหน้ายิ้มมุมปากแบบกวน ๆ ที่นิยมใช้ในมีม
- **Shrug (ยักไหล่)** `¯\_(ツ)_/¯` – สื่อถึงอาการไม่รู้ ไม่แน่ใจ หรือช่างมัน
- **Look of Disapproval** `ಠ_ಠ` – สีหน้าไม่เห็นด้วยหรือไม่พอใจ
- **Raise Your Dongers** `ヽ༼ຈل͜ຈ༽ﾉ` – ท่าชูมือขึ้นเพื่อแสดงความตื่นเต้นหรือเรียกร้องบางอย่าง

## ประวัติโดยย่อ

ศาสตราจารย์ Scott Fahlman ถูกบันทึกว่าเป็นคนแรกที่ใช้ `:-)` และ `:-(` ในปี 1982 โดยใช้อักขระ ASCII เรียงเป็นใบหน้าที่ต้องหมุนอ่านตะแคง ต่อมาในปี 1986 ผู้ใช้ชาวญี่ปุ่นพัฒนารูปแบบที่อ่านได้ในแนวตรงโดยไม่ต้องเอียงหัว จนกลายเป็นคาโอโมจิที่หลากหลายอย่างในปัจจุบัน