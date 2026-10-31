---
title: ตัวยก/ข้อความเล็ก ออนไลน์ ฟรี
h1: ตัวยก/ข้อความเล็ก
description: แปลงข้อความเป็นตัวยก ตัวห้อย และ small caps ออนไลน์ฟรี เห็นผลลัพธ์ทันทีขณะพิมพ์ คัดลอกได้ในคลิกเดียว วางได้ทุกแพลตฟอร์ม ไม่ต้องดาวน์โหลดแอป ใช้งานได้เลย
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 45
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวยก/ข้อความเล็ก
- ตัวยก/ข้อความเล็ก ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.sup-tool{max-width:720px;margin:0 auto 24px;font-family:inherit}
.sup-tool textarea{width:100%;box-sizing:border-box;min-height:90px;padding:12px;font-size:18px;line-height:1.5;border:1px solid #c9ced6;border-radius:10px;resize:vertical;font-family:inherit;color:inherit;background:transparent}
.sup-tool textarea:focus{outline:2px solid #4f7cff;border-color:#4f7cff}
.sup-arrow{text-align:center;margin:10px 0;opacity:.6;letter-spacing:6px}
.sup-row{display:flex;align-items:center;gap:10px;padding:10px 12px;margin-bottom:8px;border:1px solid #d9dde3;border-radius:10px}
.sup-body{flex:1;min-width:0}
.sup-label{font-size:12px;opacity:.65;margin-bottom:2px}
.sup-out{font-size:20px;line-height:1.5;word-break:break-word;white-space:pre-wrap}
.sup-btn{flex:none;padding:8px 14px;font-size:14px;border:0;border-radius:8px;background:#4f7cff;color:#fff;cursor:pointer;font-family:inherit}
.sup-btn:hover{background:#3b66e6}
.sup-btn.done{background:#1f9d55}
.sup-note{font-size:13px;opacity:.7;margin-top:8px}
</style>
<div class="sup-tool" id="sup-tool">
<textarea id="sup-input" placeholder="พิมพ์ข้อความภาษาอังกฤษที่นี่ เช่น Hello World 2026" aria-label="ข้อความต้นฉบับ">Hello World</textarea>
<div class="sup-arrow" aria-hidden="true">⇩ ⇩ ⇩</div>
<div id="sup-results"></div>
<p class="sup-note">หมายเหตุ: ใช้ได้เฉพาะตัวอักษรภาษาอังกฤษ ตัวเลข และสัญลักษณ์บางตัวเท่านั้น</p>
</div>
<script>
(function () {
  var LOWER = "abcdefghijklmnopqrstuvwxyz";
  var DIGITS = "0123456789";
  var SYMBOLS = "+-=()";
  function buildMap(from, to) {
    var f = Array.from(from);
    var t = Array.from(to);
    var map = {};
    f.forEach(function (ch, idx) { map[ch] = t[idx]; });
    return map;
  }
  var supLower = Object.assign(
    buildMap(LOWER, "ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖqʳˢᵗᵘᵛʷˣʸᶻ"),
    buildMap(DIGITS, "⁰¹²³⁴⁵⁶⁷⁸⁹"),
    buildMap(SYMBOLS, "⁺⁻⁼⁽⁾")
  );
  var supUpper = Object.assign(
    {},
    buildMap("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ᴬᴮCᴰᴱFᴳᴴᴵᴶᴷᴸᴹᴺᴼᴾQᴿSᵀᵁⱽᵂXYZ"),
    buildMap(DIGITS, "⁰¹²³⁴⁵⁶⁷⁸⁹"),
    buildMap(SYMBOLS, "⁺⁻⁼⁽⁾")
  );
  var subMap = Object.assign(
    buildMap("abcdefghijklmnopqrstuvwxyz", "ₐbcdₑfgₕᵢⱼₖₗₘₙₒₚqᵣₛₜᵤᵥwₓyz"),
    buildMap(DIGITS, "₀₁₂₃₄₅₆₇₈₉"),
    buildMap(SYMBOLS, "₊₋₌₍₎")
  );
  var smallCaps = buildMap(LOWER, "ᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘǫʀꜱᴛᴜᴠᴡxʏᴢ");
  function convert(text, map, mode) {
    var src = text;
    if (mode === "lower") { src = text.toLowerCase(); }
    if (mode === "upper") { src = text.toUpperCase(); }
    return Array.from(src).map(function (ch) {
      var hit = map[ch];
      return hit === undefined ? ch : hit;
    }).join("");
  }
  function superUpperStyle(text) {
    var upper = Array.from(text.toUpperCase());
    return upper.map(function (ch) {
      var hit = supUpper[ch];
      if (hit === undefined) { return ch; }
      if (hit === ch) {
        var low = supLower[ch.toLowerCase()];
        return low === undefined ? ch : low;
      }
      return hit;
    }).join("");
  }
  var STYLES = [
    { label: "ตัวยก (Superscript)", fn: function (t) { return convert(t, supLower, "lower"); } },
    { label: "ตัวยกพิมพ์ใหญ่ (Superscript Capital)", fn: superUpperStyle },
    { label: "ตัวห้อย (Subscript)", fn: function (t) { return convert(t, subMap, "lower"); } },
    { label: "ตัวพิมพ์ใหญ่เล็ก (Small Caps)", fn: function (t) { return convert(t, smallCaps, "lower"); } }
  ];
  var input = document.getElementById("sup-input");
  var box = document.getElementById("sup-results");
  function fallbackCopy(text) {
    var ta = document.createElement("textarea");
    ta.value = text;
    ta.setAttribute("readonly", "");
    ta.style.position = "fixed";
    ta.style.opacity = "0";
    document.body.appendChild(ta);
    ta.select();
    try { document.execCommand("copy"); } catch (e) {}
    document.body.removeChild(ta);
  }
  function copyText(text, btn) {
    function ok() {
      btn.textContent = "คัดลอกแล้ว";
      btn.classList.add("done");
      setTimeout(function () {
        btn.textContent = "คัดลอก";
        btn.classList.remove("done");
      }, 1200);
    }
    if (navigator.clipboard) {
      navigator.clipboard.writeText(text).then(ok, function () { fallbackCopy(text); ok(); });
    } else {
      fallbackCopy(text);
      ok();
    }
  }
  var outEls = [];
  STYLES.forEach(function (st) {
    var row = document.createElement("div");
    row.className = "sup-row";
    var body = document.createElement("div");
    body.className = "sup-body";
    var label = document.createElement("div");
    label.className = "sup-label";
    label.textContent = st.label;
    var out = document.createElement("div");
    out.className = "sup-out";
    var btn = document.createElement("button");
    btn.type = "button";
    btn.className = "sup-btn";
    btn.textContent = "คัดลอก";
    btn.addEventListener("click", function () { copyText(out.textContent, btn); });
    body.appendChild(label);
    body.appendChild(out);
    row.appendChild(body);
    row.appendChild(btn);
    box.appendChild(row);
    outEls.push({ el: out, fn: st.fn });
  });
  function render() {
    var value = input.value;
    outEls.forEach(function (o) { o.el.textContent = o.fn(value); });
  }
  input.addEventListener("input", render);
  render();
})();
</script>

## วิธีการใช้งาน

1. พิมพ์หรือวางข้อความภาษาอังกฤษในช่องด้านบน
2. ดูผลลัพธ์ที่แปลงแล้วในแต่ละสไตล์ ซึ่งอัปเดตทันทีขณะพิมพ์
3. กดปุ่ม "คัดลอก" ที่สไตล์ที่ต้องการ
4. วางข้อความที่คัดลอกได้ทุกที่ เช่น X (Twitter), Facebook, Instagram, LINE, Word หรือเอกสารต่าง ๆ

**หมายเหตุ:** ใช้ได้เฉพาะตัวอักษรภาษาอังกฤษ ตัวเลข และสัญลักษณ์บางตัว (+ - = และวงเล็บ) ส่วนตัวอักษรไทยจะไม่ถูกแปลงและแสดงตามเดิม การแสดงผลอาจแตกต่างกันในแต่ละแพลตฟอร์ม ควรทดสอบก่อนใช้งานจริง

**เคล็ดลับ:** หากตัวอักษรบางตัวไม่เปลี่ยนเป็นตัวยก ให้ลองใช้สไตล์ "ตัวยกพิมพ์ใหญ่" ซึ่งรองรับได้ดีกว่าในบางแพลตฟอร์ม

## ความหมายของแต่ละสไตล์

### ตัวยก (Superscript)

ตัวอักษรขนาดเล็กที่ยกสูงกว่าบรรทัดปกติ เช่น ˢᵘᵖᵉʳˢᶜʳⁱᵖᵗ นิยมใช้เขียนเลขยกกำลัง (x²) เชิงอรรถ การอ้างอิง และชื่อผู้ใช้ที่ดูโดดเด่น

### ตัวยกพิมพ์ใหญ่ (Superscript Capital)

ตัวยกที่ใช้รูปตัวพิมพ์ใหญ่ เช่น ᴴᴱᴸᴸᴼ ให้ลักษณะเด่นชัดกว่า และบางแพลตฟอร์มแสดงผลได้ดีกว่าตัวยกตัวพิมพ์เล็ก ตัวอักษรที่ยังไม่มีรูปยกพิมพ์ใหญ่ใน Unicode จะใช้รูปตัวยกพิมพ์เล็กแทน

### ตัวห้อย (Subscript)

ตัวอักษรขนาดเล็กที่ต่ำกว่าบรรทัดปกติ เช่น H₂O หรือ CO₂ นิยมใช้ในสูตรเคมี คณิตศาสตร์ และดัชนีของตัวแปร ตัวอักษรที่ไม่มีรูปตัวห้อยจะแสดงเป็นตัวปกติ

### ตัวพิมพ์ใหญ่เล็ก (Small Caps)

ตัวพิมพ์ใหญ่ที่มีขนาดเท่าตัวพิมพ์เล็ก เช่น ꜱᴍᴀʟʟ ᴄᴀᴘꜱ มักใช้ทำชื่อ หัวข้อ หรือข้อความสไตล์มินิมอลในโปรไฟล์โซเชียลมีเดีย

### ข้อความเล็ก (Tiny Text)

คำเรียกรวมของข้อความที่ดูเล็กกว่าปกติ ซึ่งเกิดจากตัวอักษรพิเศษใน Unicode ไม่ได้ปรับขนาดฟอนต์ จึงคัดลอกและวางได้ในช่องที่ไม่รองรับการจัดรูปแบบ

### Unicode

มาตรฐานรหัสตัวอักษรสากลที่ทำให้ตัวยก ตัวห้อย และสัญลักษณ์พิเศษแสดงผลได้ในหลายอุปกรณ์ แต่ฟอนต์บางตัวอาจไม่มีตัวอักษรครบทุกตัว จึงอาจเห็นเป็นกรอบสี่เหลี่ยมหรือสัญลักษณ์แปลก ๆ