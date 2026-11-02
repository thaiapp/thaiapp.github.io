---
title: Lenny Face ออนไลน์ ฟรี
h1: Lenny Face
description: คัดลอก Lenny Face ได้ในคลิกเดียว พร้อมอีโมติคอนคล้ายกันกว่า 20 แบบ ใช้กับ LINE, Facebook, Instagram และแชททุกแพลตฟอร์ม รองรับมือถือ แท็บเล็ต และคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-02T09:00:00+07:00'
weight: 52
tool: true
topic: emoji
appCategory: UtilitiesApplication
keywords:
- Lenny Face
- Lenny Face ออนไลน์
- อิโมจิและสัญลักษณ์
---

<style>
.lf-tool{max-width:720px;margin:0 auto 24px;font-family:inherit}
.lf-tool h3{margin:16px 0 8px}
.lf-box{display:flex;gap:8px;flex-wrap:wrap;align-items:stretch}
.lf-input{flex:1 1 240px;min-width:0;font-size:28px;padding:12px 14px;border:1px solid #bbb;border-radius:10px;text-align:center;background:transparent;color:inherit}
.lf-btn{cursor:pointer;border:1px solid #888;border-radius:10px;background:transparent;color:inherit;font-size:16px;padding:10px 16px}
.lf-btn:hover{background:rgba(127,127,127,.15)}
.lf-main{background:#2b7de9;border-color:#2b7de9;color:#fff}
.lf-main:hover{background:#1f66c4}
.lf-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:8px}
.lf-item{font-size:18px;padding:12px 8px;word-break:keep-all;overflow-wrap:anywhere}
.lf-status{min-height:24px;margin-top:8px;font-size:15px;text-align:center}
</style>

<div class="lf-tool" id="lf-tool">
<h3>คัดลอก / วาง</h3>
<div class="lf-box">
<input type="text" id="lf-input" class="lf-input" value="( ͡° ͜ʖ ͡°)" aria-label="ข้อความ Lenny Face">
<button type="button" id="lf-copy" class="lf-btn lf-main">คัดลอก</button>
<button type="button" id="lf-clear" class="lf-btn">ล้าง</button>
</div>
<div class="lf-status" id="lf-status" role="status" aria-live="polite"></div>
<h3>อีโมติคอนที่คล้ายกัน</h3>
<p>คลิกที่ปุ่มเพื่อคัดลอกไปที่คลิปบอร์ด ▼</p>
<div class="lf-grid" id="lf-grid"></div>
</div>
<script>
(function () {
  var faces = [
    "( ͡° ͜ʖ ͡°)",
    "( ͠° ͟ʖ ͡°)",
    "( ͡~ ͜ʖ ͡°)",
    "( ͡ʘ ͜ʖ ͡ʘ)",
    "( ͡o ͜ʖ ͡o)",
    "(° ͜ʖ °)",
    "( ‾ʖ̫‾)",
    "( ಠ ͜ʖಠ)",
    "( ͡° ʖ̯ ͡°)",
    "( ͡ಥ ͜ʖ ͡ಥ)",
    "༼ ͡° ͜ʖ ͡° ༽",
    "(▀̿Ĺ̯▀̿ ̿)",
    "( ✧≖ ͜ʖ≖)",
    "(ง ͠° ͟ل͜ ͡°)ง",
    "(͡ ͡° ͜ つ ͡͡°)",
    "[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]",
    "(✿❦ ͜ʖ ❦)",
    "ᕦ( ͡° ͜ʖ ͡°)ᕤ",
    "( ͡° ͜ʖ ͡°)╭∩╮",
    "¯\\_( ͡° ͜ʖ ͡°)_/¯",
    "(╯ ͠° ͟ʖ ͡°)╯┻━┻",
    "( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)",
    "¯\\_(ツ)_/¯",
    "ಠ_ಠ"
  ];
  var input = document.getElementById("lf-input");
  var grid = document.getElementById("lf-grid");
  var statusEl = document.getElementById("lf-status");
  var timer = null;
  function say(msg) {
    statusEl.textContent = msg;
    if (timer) { clearTimeout(timer); }
    timer = setTimeout(function () { statusEl.textContent = ""; }, 2000);
  }
  function fallbackCopy(text) {
    var ta = document.createElement("textarea");
    ta.value = text;
    ta.setAttribute("readonly", "");
    ta.style.position = "fixed";
    ta.style.top = "-1000px";
    document.body.appendChild(ta);
    ta.select();
    var ok = false;
    try { ok = document.execCommand("copy"); } catch (e) { ok = false; }
    document.body.removeChild(ta);
    return ok;
  }
  function copyText(text) {
    if (!text) { say("ยังไม่มีข้อความให้คัดลอก"); return; }
    if (navigator.clipboard) {
      if (navigator.clipboard.writeText) {
        navigator.clipboard.writeText(text).then(function () {
          say("คัดลอกแล้ว ✓");
        }, function () {
          say(fallbackCopy(text) ? "คัดลอกแล้ว ✓" : "คัดลอกไม่สำเร็จ กรุณาคัดลอกด้วยตนเอง");
        });
        return;
      }
    }
    say(fallbackCopy(text) ? "คัดลอกแล้ว ✓" : "คัดลอกไม่สำเร็จ กรุณาคัดลอกด้วยตนเอง");
  }
  faces.forEach(function (face) {
    var b = document.createElement("button");
    b.type = "button";
    b.className = "lf-btn lf-item";
    b.textContent = face;
    b.addEventListener("click", function () {
      input.value = face;
      copyText(face);
    });
    grid.appendChild(b);
  });
  document.getElementById("lf-copy").addEventListener("click", function () {
    copyText(input.value);
  });
  document.getElementById("lf-clear").addEventListener("click", function () {
    input.value = "";
    input.focus();
  });
})();
</script>

## วิธีใช้งาน Lenny Face

1. เปิดหน้านี้ แล้วดูที่ช่อง **คัดลอก / วาง** ด้านบน ซึ่งจะมี Lenny Face ต้นฉบับ `( ͡° ͜ʖ ͡°)` ให้อยู่แล้ว
2. กดปุ่ม **คัดลอก** เพื่อคัดลอกข้อความในช่องไปที่คลิปบอร์ด หรือเลือกแบบอื่นจากรายการ **อีโมติคอนที่คล้ายกัน** โดยกดที่ปุ่มได้เลย ระบบจะคัดลอกให้ทันที
3. เมื่อเห็นข้อความ "คัดลอกแล้ว ✓" ให้ไปที่แอปที่ต้องการ เช่น LINE, Facebook, Instagram, Discord หรือ X (Twitter)
4. กดค้างที่ช่องพิมพ์แล้วเลือก **วาง** บนมือถือ หรือกด Ctrl + V (Windows) / Cmd + V (Mac) บนคอมพิวเตอร์
5. ต้องการแก้ไขหรือผสมกับข้อความอื่น ให้พิมพ์ต่อในช่องได้เลย แล้วกด **คัดลอก** อีกครั้ง
6. กดปุ่ม **ล้าง** เมื่อต้องการเริ่มใหม่

> เคล็ดลับ: ถ้าแอปแสดงตัวอักษรเพี้ยนหรือเป็นกล่องสี่เหลี่ยม แสดงว่าฟอนต์ของอุปกรณ์ยังไม่รองรับสัญลักษณ์บางตัว ลองเลือกแบบที่เรียบง่ายกว่า เช่น `(° ͜ʖ °)` หรือ `ಠ_ಠ`

## ความหมายของแต่ละแบบ

| อีโมติคอน | ชื่อเรียก | คำอธิบายสั้น ๆ |
|---|---|---|
| `( ͡° ͜ʖ ͡°)` | Lenny Face ต้นฉบับ | หน้าทะเล้นแบบมีเลศนัย ใช้ส่งมุกแซวหรือพูดเป็นนัย |
| `( ͠° ͟ʖ ͡°)` | Lenny ตาเหล่ | หน้าขี้เล่นแต่ดูงง ๆ เหมือนกำลังคิดแผนอยู่ |
| `( ͡~ ͜ʖ ͡°)` | Lenny ขยิบตา | ขยิบตาข้างหนึ่ง ใช้แซวหรือส่งสัญญาณลับ |
| `( ͡ʘ ͜ʖ ͡ʘ)` | Lenny ตาโต | ตาเบิกกว้าง แสดงความตกใจหรือตื่นเต้น |
| `( ͡o ͜ʖ ͡o)` | Lenny ตากลม | ตากลมโต ดูซื่อ ๆ แต่ยังมีความแสบซ่อนอยู่ |
| `(° ͜ʖ °)` | Lenny แบบเรียบ | เวอร์ชันสั้น ไม่มีหูแต่งหน้า ใช้ได้ทุกแอปเพราะอ่านง่าย |
| `( ‾ʖ̫‾)` | Lenny หน้านิ่ง | ตาหรี่ ปากเฉย ๆ ดูเท่หรือเบื่อโลก |
| `( ಠ ͜ʖಠ)` | Lenny ตาเขียว | สายตาจับผิด ใช้ตอนไม่เชื่อหรือสงสัย |
| `( ͡° ʖ̯ ͡°)` | Lenny ปากเบี้ยว | ปากเบี้ยวเล็กน้อย แสดงความเขิน ฝืน หรือรู้สึกแปลก ๆ |
| `( ͡ಥ ͜ʖ ͡ಥ)` | Lenny น้ำตาซึม | ตาแฉะ ใช้ตอนซึ้ง เสียใจ หรือแกล้งทำเป็นสะเทือนใจ |
| `༼ ͡° ͜ʖ ͡° ༽` | Lenny มีวงเล็บพิเศษ | ใส่วงเล็บทิเบตครอบ ดูเป็นพิธีการ เหมือนกำลังประกาศอะไรสักอย่าง |
| `(▀̿Ĺ̯▀̿ ̿)` | Lenny แว่นดำ | ใส่แว่นดำสุดเท่ ใช้ตอนมั่นใจหรือทำตัวเป็นนักเลง |
| `( ✧≖ ͜ʖ≖)` | Lenny ตาเจ้าเล่ห์ | ตาหรี่พร้อมประกายดาว บอกว่ากำลังวางแผนหรือแอบยิ้ม |
| `(ง ͠° ͟ل͜ ͡°)ง` | Lenny สายต่อสู้ | ชูหมัดทั้งสองข้าง ใช้ท้าสู้หรือให้กำลังใจแบบฮึกเหิม |
| `(͡ ͡° ͜ つ ͡͡°)` | Lenny ปากยื่น | ทำปากยื่น ดูน่ารักหรืออ้อนขอ |
| `[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]` | Lenny เงินล้น | มีเครื่องหมายดอลลาร์ล้อมรอบ ใช้ตอนพูดถึงเงิน โชคลาภ หรือความรวย |
| `(✿❦ ͜ʖ ❦)` | Lenny ดอกไม้ | ตาเป็นรูปดอกไม้ ดูอ่อนโยนและโรแมนติก |
| `ᕦ( ͡° ͜ʖ ͡°)ᕤ` | Lenny กล้ามโต | อวดกล้ามแขน ใช้ตอนแข็งแรงหรือสู้ต่อ |
| `( ͡° ͜ʖ ͡°)╭∩╮` | Lenny ชูนิ้ว | ท่าทางหยาบคายเล็กน้อย ใช้เฉพาะกับเพื่อนสนิทเท่านั้น |
| `¯\_( ͡° ͜ʖ ͡°)_/¯` | Lenny ยักไหล่ | ยกไหล่ เป็นท่าทาง "ไม่รู้สิ" หรือ "ช่างมัน" |
| `(╯ ͠° ͟ʖ ͡°)╯┻━┻` | Lenny พลิกโต๊ะ | พลิกโต๊ะด้วยความโมโห ใช้ตอนหัวเสียสุด ๆ |
| `( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)` | Lenny ซ้อนชั้น | หน้า Lenny หลายชั้นซ้อนกัน ใช้เป็นมุกขำขันหรือเน้นอารมณ์ |
| `¯\_(ツ)_/¯` | Shrug | ท่ายักไหล่แบบญี่ปุ่น ยอมแพ้อย่างอารมณ์ดี |
| `ಠ_ಠ` | Look of Disapproval | ใบหน้าไม่พอใจ มองด้วยสายตาตำหนิ |

## คำศัพท์ที่ควรรู้

- **Lenny Face**: ใบหน้าอีโมติคอนที่สร้างจากตัวอักษรและสัญลักษณ์ Unicode ใช้ส่งความรู้สึกขี้เล่น แซว หรือมีเลศนัย
- **อีโมติคอน (Emoticon)**: ใบหน้าหรือท่าทางที่สร้างจากตัวอักษรและเครื่องหมายบนคีย์บอร์ด ต่างจากอีโมจิที่เป็นภาพ
- **อีโมจิ (Emoji)**: ภาพสัญลักษณ์ขนาดเล็กที่ระบบหรือแอปแสดงผลเป็นรูป เช่น 😀 ❤️
- **Unicode**: มาตรฐานที่กำหนดรหัสให้ตัวอักษรและสัญลักษณ์ของทุกภาษา ทำให้ข้อความเดียวกันแสดงได้บนหลายแพลตฟอร์ม
- **คลิปบอร์ด (Clipboard)**: พื้นที่พักข้อความชั่วคราวในอุปกรณ์ เมื่อคัดลอกแล้วจะนำไปวางที่อื่นได้
- **คัดลอก / วาง (Copy / Paste)**: คัดลอกคือเก็บข้อความไว้ในคลิปบอร์ด วางคือนำข้อความนั้นไปใส่ในช่องพิมพ์ปลายทาง
- **ตัวอักษรผสม (Combining Characters)**: เครื่องหมายที่ซ้อนอยู่บนหรือใต้ตัวอักษรอื่น ทำให้ได้เอฟเฟกต์ เช่น ตาเอียงหรือเส้นขีดทับ

## คำถามที่พบบ่อย

**ใช้ Lenny Face กับ LINE, Facebook หรือ Instagram ได้ไหม?**
ได้ เพราะเป็นข้อความธรรมดา คัดลอกแล้ววางในช่องแชท คอมเมนต์ หรือโพสต์ได้ทันที

**ทำไมบางแอปแสดงผลเพี้ยน?**
เพราะฟอนต์ของแอปหรืออุปกรณ์อาจไม่รองรับสัญลักษณ์พิเศษบางตัว ลองเลือกแบบอื่นที่เรียบง่ายกว่า

**ต้องติดตั้งแอปหรือไม่?**
ไม่ต้อง ใช้งานผ่านเบราว์เซอร์ได้ทันที ทั้งมือถือ แท็บเล็ต และคอมพิวเตอร์