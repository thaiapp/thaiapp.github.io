---
title: แปลงตัวเลขเป็นตัวหนังสือ ออนไลน์ ฟรี
h1: แปลงตัวเลขเป็นตัวหนังสือ ออนไลน์
description: 'แปลงตัวเลขเป็นตัวหนังสือภาษาอังกฤษ ออนไลน์ฟรี ผลลัพธ์ปรากฏขณะพิมพ์ รองรับทศนิยม ค่าลบ และการเขียนเช็ค ฟังเสียงอ่านและคัดลอกได้ในคลิกเดียว ไม่ต้องสมัคร'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-26T09:00:00+07:00'
weight: 27
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- แปลงตัวเลขเป็นตัวหนังสือ ออนไลน์
- ข้อความและตัวอักษร
---
<div class="ennum" id="ennum">
<label class="ennum-label" for="ennum-input">ตัวเลข</label>
<div class="ennum-bar">
<input class="ennum-input" id="ennum-input" type="text" inputmode="decimal" autocomplete="off" spellcheck="false" placeholder="เช่น 1,234.56 หรือ -7" value="1234.56">
<button type="button" class="ennum-btn" id="ennum-up" aria-label="เพิ่มค่า 1">▲</button>
<button type="button" class="ennum-btn" id="ennum-down" aria-label="ลดค่า 1">▼</button>
<button type="button" class="ennum-btn" id="ennum-clear">ล้าง</button>
</div>
<p class="ennum-msg" id="ennum-msg" role="status" aria-live="polite"></p>
<div class="ennum-list" id="ennum-list"></div>
</div>

<style>
.ennum{max-width:760px;margin:1rem 0 2rem;font-size:1rem;line-height:1.6}
.ennum-label{display:block;margin-bottom:.4rem;font-weight:600}
.ennum-bar{display:flex;gap:.4rem;flex-wrap:wrap}
.ennum-input{flex:1 1 220px;min-width:0;padding:.65rem .8rem;font:inherit;font-size:1.15rem;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5);border-radius:6px}
.ennum-input:focus-visible,.ennum-btn:focus-visible{outline:2px solid #2f6fed;outline-offset:2px}
.ennum-btn{padding:.5rem .9rem;font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5);border-radius:6px;cursor:pointer}
.ennum-btn:hover{background:rgba(128,128,128,.15)}
.ennum-msg{min-height:1.6em;margin:.5rem 0;color:#c0392b}
.ennum-item{display:grid;grid-template-columns:1fr auto;gap:.3rem .8rem;padding:.8rem 0;border-top:1px solid rgba(128,128,128,.3)}
.ennum-name{grid-column:1/-1;font-size:.9rem;opacity:.75}
.ennum-text{margin:0;font-size:1.1rem;overflow-wrap:anywhere}
.ennum-acts{display:flex;gap:.4rem;align-items:flex-start}
.ennum-acts .ennum-btn{padding:.25rem .6rem;font-size:.9rem}
</style>
<script>
(function () {
  "use strict";
  var ONES = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"];
  var TENS = ["","","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"];
  var SCALES = ["","thousand","million","billion","trillion","quadrillion","quintillion","sextillion","septillion","octillion","nonillion","decillion"];
  var MAX_INT_DIGITS = SCALES.length * 3;
  var MAX_FRAC_DIGITS = 30;

  function below1000(n, brit) {
    var h = Math.floor(n / 100), r = n % 100, out = [];
    if (h) out.push(ONES[h] + " hundred");
    if (r) {
      if (h && brit) out.push("and");
      out.push(r < 20 ? ONES[r] : TENS[Math.floor(r / 10)] + (r % 10 ? "-" + ONES[r % 10] : ""));
    }
    return out.join(" ");
  }

  function intWords(s, brit) {
    if (/^0+$/.test(s)) return "zero";
    var groups = [], i;
    for (i = s.length; i > 0; i -= 3) groups.unshift(parseInt(s.slice(Math.max(0, i - 3), i), 10));
    var n = groups.length, parts = [];
    groups.forEach(function (v, idx) {
      if (!v) return;
      var sc = SCALES[n - 1 - idx];
      var txt = below1000(v, brit) + (sc ? " " + sc : "");
      if (brit && idx === n - 1 && v < 100 && parts.length) txt = "and " + txt;
      parts.push(txt);
    });
    return parts.join(" ");
  }

  function ordinal(words) {
    var irregular = { one: "first", two: "second", three: "third", five: "fifth", eight: "eighth", nine: "ninth", twelve: "twelfth" };
    return words.replace(/[a-z]+$/, function (w) {
      if (irregular[w]) return irregular[w];
      if (/y$/.test(w)) return w.slice(0, -1) + "ieth";
      return w + "th";
    });
  }

  function cap(s) { return s.charAt(0).toUpperCase() + s.slice(1); }

  function parse(raw) {
    var t = String(raw).replace(/[,\s]/g, "");
    if (t === "" || t === "-" || t === "." || t === "-.") return { empty: true };
    var m = /^(-?)(\d*)(?:\.(\d*))?$/.exec(t);
    if (!m) return { error: "กรอกได้เฉพาะตัวเลข ลูกน้ำ จุดทศนิยม และเครื่องหมายลบ" };
    var int = (m[2] || "0").replace(/^0+(?=\d)/, "");
    var frac = m[3] || "";
    if (int.length > MAX_INT_DIGITS || frac.length > MAX_FRAC_DIGITS) return { error: "ไม่อยู่ในขอบเขต (รองรับสูงสุด " + MAX_INT_DIGITS + " หลัก และทศนิยม " + MAX_FRAC_DIGITS + " ตำแหน่ง)" };
    return { neg: m[1] === "-", int: int, frac: frac, hasPoint: t.indexOf(".") !== -1 };
  }

  function convert(p) {
    var minus = p.neg && (/[1-9]/.test(p.int) || /[1-9]/.test(p.frac)) ? "minus " : "";
    var pointWords = p.frac ? " point " + p.frac.split("").map(function (d) { return ONES[+d]; }).join(" ") : "";
    var us = minus + intWords(p.int, false) + pointWords;
    var uk = minus + intWords(p.int, true) + pointWords;
    var ord = p.frac && /[1-9]/.test(p.frac) ? null : minus + ordinal(intWords(p.int, false));
    var cents = (p.frac + "00").slice(0, 2), intBig = BigInt(p.int);
    if (+((p.frac + "000").charAt(2)) >= 5) {
      var c = +cents + 1;
      if (c === 100) { intBig += 1n; c = 0; }
      cents = (c < 10 ? "0" : "") + c;
    }
    var cheque = cap(minus + intWords(intBig.toString(), false)) + " and " + cents + "/100";
    return [
      { name: "ตัวเลขภาษาอังกฤษ (แบบอเมริกัน)", text: us, lang: "en-US" },
      { name: "ตัวเลขภาษาอังกฤษ (แบบอังกฤษ)", text: uk, lang: "en-GB" },
      { name: "ลำดับที่ (Ordinal)", text: ord, lang: "en-US" },
      { name: "เขียนเช็ค (Cheque)", text: cheque, lang: "en-US" }
    ];
  }

  /*UI*/
  var root = document.getElementById("ennum");
  if (!root) return;
  var input = document.getElementById("ennum-input");
  var msg = document.getElementById("ennum-msg");
  var list = document.getElementById("ennum-list");
  var canSpeak = "speechSynthesis" in window && "SpeechSynthesisUtterance" in window;

  function copyText(text, btn) {
    function done() {
      var old = btn.textContent;
      btn.textContent = "คัดลอกแล้ว";
      setTimeout(function () { btn.textContent = old; }, 1500);
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
    } else { fallback(); }
  }

  function speak(text, lang) {
    window.speechSynthesis.cancel();
    var u = new SpeechSynthesisUtterance(text);
    u.lang = lang;
    window.speechSynthesis.speak(u);
  }

  function makeBtn(label, onClick) {
    var b = document.createElement("button");
    b.type = "button";
    b.className = "ennum-btn";
    b.textContent = label;
    b.addEventListener("click", function () { onClick(b); });
    return b;
  }

  function render() {
    list.textContent = "";
    msg.textContent = "";
    var p = parse(input.value);
    if (p.empty) return;
    if (p.error) { msg.textContent = p.error; return; }
    convert(p).forEach(function (r) {
      var item = document.createElement("div");
      item.className = "ennum-item";
      var name = document.createElement("div");
      name.className = "ennum-name";
      name.textContent = r.name;
      var text = document.createElement("p");
      text.className = "ennum-text";
      text.textContent = r.text === null ? "ไม่รองรับจำนวนที่มีทศนิยม" : r.text;
      item.appendChild(name);
      item.appendChild(text);
      if (r.text !== null) {
        var acts = document.createElement("div");
        acts.className = "ennum-acts";
        acts.appendChild(makeBtn("คัดลอก", function (b) { copyText(r.text, b); }));
        if (canSpeak) acts.appendChild(makeBtn("ฟังเสียง", function () { speak(r.text, r.lang); }));
        item.appendChild(acts);
      }
      list.appendChild(item);
    });
  }

  function step(dir) {
    var p = parse(input.value);
    if (p.empty) p = { neg: false, int: "0", frac: "" };
    if (p.error) return;
    var f = p.frac.length;
    var v = BigInt((p.neg ? "-" : "") + p.int + p.frac) + BigInt(dir) * (10n ** BigInt(f));
    var neg = v < 0n, s = (neg ? -v : v).toString();
    while (s.length < f + 1) s = "0" + s;
    var out = f ? s.slice(0, -f) + "." + s.slice(-f) : s;
    if (out.split(".")[0].length > MAX_INT_DIGITS) return;
    input.value = (neg ? "-" : "") + out;
    render();
  }

  input.addEventListener("input", render);
  input.addEventListener("keydown", function (e) {
    if (e.key === "ArrowUp") { e.preventDefault(); step(1); }
    else if (e.key === "ArrowDown") { e.preventDefault(); step(-1); }
  });
  document.getElementById("ennum-up").addEventListener("click", function () { step(1); });
  document.getElementById("ennum-down").addEventListener("click", function () { step(-1); });
  document.getElementById("ennum-clear").addEventListener("click", function () { input.value = ""; render(); input.focus(); });
  render();
})();
</script>

## วิธีใช้งาน

1. พิมพ์หรือวางตัวเลขลงในช่อง "ตัวเลข" โดยวางตัวเลขที่มีลูกน้ำได้ เช่น 1,234,567
2. ผลลัพธ์จะปรากฏทันทีขณะพิมพ์ ไม่ต้องกดปุ่มแปลง
3. ใส่จุดทศนิยมหรือเครื่องหมายลบนำหน้าได้ เช่น 12.5 หรือ -7
4. กดปุ่ม ▲ ▼ หรือใช้ลูกศรขึ้นลงบนคีย์บอร์ดเพื่อเพิ่มหรือลดค่าทีละ 1
5. กด "คัดลอก" เพื่อคัดลอกผลลัพธ์ไปยังคลิปบอร์ด
6. กด "ฟังเสียง" เพื่อฟังการออกเสียงภาษาอังกฤษ (ขึ้นอยู่กับเบราว์เซอร์ที่ใช้)
7. กด "ล้าง" เพื่อเริ่มกรอกตัวเลขใหม่

## คำอธิบายคำศัพท์

- **ตัวเลขภาษาอังกฤษ (Cardinal number)**: จำนวนนับที่เขียนเป็นคำ เช่น 25 เป็น twenty-five
- **แบบอเมริกัน (American English)**: อ่านตัวเลขโดยไม่ใส่ "and" ระหว่างหลักร้อยกับหลักสิบ เช่น one hundred twenty-three
- **แบบอังกฤษ (British English)**: ใส่ "and" หลัง hundred เช่น one hundred and twenty-three
- **ลำดับที่ (Ordinal number)**: ตัวเลขที่บอกลำดับ เช่น 1 เป็น first, 2 เป็น second, 21 เป็น twenty-first
- **เขียนเช็ค (Cheque)**: รูปแบบเขียนจำนวนเงินบนเช็ค ใช้คำบอกจำนวนเต็มแล้วตามด้วยเศษสตางค์เป็นเศษส่วน เช่น One hundred and 50/100
- **ทศนิยม (Decimal / point)**: ส่วนหลังจุด อ่านทีละหลัก เช่น 3.14 เป็น three point one four
- **ค่าลบ (Minus / Negative)**: ตัวเลขติดลบ อ่านนำหน้าด้วย minus เช่น -5 เป็น minus five
- **ขีดกลาง (Hyphen)**: เลข 21 ถึง 99 ที่ไม่ลงท้ายด้วยศูนย์ ใช้ขีดกลางเชื่อมคำ เช่น forty-two
- **หน่วยหลักใหญ่ (Scale)**: thousand (พัน), million (ล้าน), billion (พันล้าน), trillion (ล้านล้าน) และหน่วยที่ใหญ่กว่านั้นจนถึง decillion