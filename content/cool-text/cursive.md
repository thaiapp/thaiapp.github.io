---
title: ตัวสร้างข้อความลายมือ Cursive ออนไลน์ ฟรี
h1: ตัวสร้างข้อความลายมือ Cursive
description: สร้างข้อความลายมือ Cursive ออนไลน์ฟรี พิมพ์ข้อความแล้วดูผลลัพธ์ทันที คัดลอกไปวางใน Facebook, Instagram, X ได้เลย ไม่ต้องสมัครสมาชิก และไม่ต้องติดตั้งแอป
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 42
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างข้อความลายมือ Cursive
- ตัวสร้างข้อความลายมือ Cursive ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.cs-tool{max-width:720px;margin:1.5rem 0;font-family:inherit}
.cs-tool *{box-sizing:border-box}
.cs-label{display:block;font-weight:600;margin:0 0 .4rem}
.cs-input{width:100%;min-height:96px;padding:.75rem .9rem;font:inherit;font-size:1.05rem;line-height:1.5;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5);border-radius:8px;resize:vertical}
.cs-input:focus{outline:2px solid #2563eb;outline-offset:1px;border-color:transparent}
.cs-bar{display:flex;flex-wrap:wrap;align-items:center;gap:.75rem 1.25rem;margin:.6rem 0 1rem}
.cs-toggle{display:inline-flex;align-items:center;gap:.45rem;cursor:pointer;user-select:none}
.cs-toggle input{width:1.1rem;height:1.1rem;cursor:pointer}
.cs-count{margin-left:auto;font-size:.9rem;opacity:.7}
.cs-btn{padding:.45rem .95rem;font:inherit;font-size:.95rem;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.55);border-radius:6px;cursor:pointer}
.cs-btn:hover{background:rgba(128,128,128,.15)}
.cs-btn:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
.cs-note{margin:0 0 .9rem;padding:.55rem .8rem;font-size:.92rem;border-left:3px solid #d97706;background:rgba(217,119,6,.12);border-radius:0 6px 6px 0}
.cs-list{display:flex;flex-direction:column;border:1px solid rgba(128,128,128,.4);border-radius:8px;overflow:hidden}
.cs-row{display:flex;align-items:center;justify-content:space-between;gap:.8rem;padding:.7rem .9rem}
.cs-row+.cs-row{border-top:1px solid rgba(128,128,128,.3)}
.cs-text{flex:1;min-width:0;font-size:1.25rem;line-height:1.5;word-break:break-word;white-space:pre-wrap}
.cs-text.cs-empty{font-size:1rem;opacity:.5}
.cs-copy{flex:none;min-width:6.2rem}
.cs-copy.cs-ok{background:#16a34a;border-color:#16a34a;color:#fff}
@media (max-width:480px){.cs-row{flex-direction:column;align-items:stretch}.cs-copy{width:100%}}
</style>

<div class="cs-tool" id="cs-tool">
<label class="cs-label" for="cs-input">พิมพ์ข้อความของคุณ</label>
<textarea class="cs-input" id="cs-input" rows="3" placeholder="พิมพ์ข้อความภาษาอังกฤษที่นี่ เช่น Hello" autocomplete="off" spellcheck="false">hello</textarea>
<div class="cs-bar">
<label class="cs-toggle" for="cs-bold"><input type="checkbox" id="cs-bold" checked> ตัวหนา</label>
<button type="button" class="cs-btn" id="cs-clear">ล้างข้อความ</button>
<span class="cs-count" id="cs-count" aria-live="polite"></span>
</div>
<p class="cs-note" id="cs-note" hidden>ตัวอักษรไทยจะไม่ถูกแปลง เครื่องมือนี้รองรับเฉพาะตัวอักษรภาษาอังกฤษ (A-Z, a-z)</p>
<div class="cs-list" id="cs-list" role="list"></div>
</div>

<script>
(function () {
  var inputEl = document.getElementById('cs-input');
  var listEl = document.getElementById('cs-list');
  var boldEl = document.getElementById('cs-bold');
  var clearEl = document.getElementById('cs-clear');
  var countEl = document.getElementById('cs-count');
  var noteEl = document.getElementById('cs-note');
  if (!inputEl || !listEl || !boldEl || !clearEl || !countEl || !noteEl) { return; }

  var UPPER = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var LOWER = 'abcdefghijklmnopqrstuvwxyz';
  var SCRIPT_UP = 0x1D49C;
  var SCRIPT_LO = 0x1D4B6;
  var BOLD_UP = 0x1D4D0;
  var BOLD_LO = 0x1D4EA;
  // ตัวอักษร Script บางตัวอยู่ในบล็อก Letterlike Symbols แยกต่างหาก
  var HOLES_UP = { 1: 0x212C, 4: 0x2130, 5: 0x2131, 7: 0x210B, 8: 0x2110, 11: 0x2112, 12: 0x2133, 17: 0x211B };
  var HOLES_LO = { 4: 0x212F, 6: 0x210A, 14: 0x2134 };

  function convert(text, bold) {
    var out = '';
    Array.from(text).forEach(function (ch) {
      var u = UPPER.indexOf(ch);
      var l = LOWER.indexOf(ch);
      if (u !== -1) {
        out += String.fromCodePoint(bold ? BOLD_UP + u : (HOLES_UP[u] || SCRIPT_UP + u));
      } else if (l !== -1) {
        out += String.fromCodePoint(bold ? BOLD_LO + l : (HOLES_LO[l] || SCRIPT_LO + l));
      } else {
        out += ch;
      }
    });
    return out;
  }

  function underline(text) {
    var out = '';
    Array.from(text).forEach(function (ch) {
      out += (ch === '\n' || ch === ' ') ? ch : ch + '\u0332';
    });
    return out;
  }

  // แต่ละสไตล์คือฟังก์ชันที่รับข้อความที่แปลงแล้ว แล้วคืนข้อความสำเร็จรูป
  var STYLES = [
    function (t) { return t; },
    function (t) { return '\u2728 ' + t + ' \u2728'; },
    function (t) { return '\u2661 ' + t + ' \u2661'; },
    function (t) { return '\u2740 ' + t + ' \u2740'; },
    function (t) { return '\u27B3 ' + t; },
    function (t) { return '\uA9C1 ' + t + ' \uA9C2'; },
    function (t) { return '\u2605\u5F61 ' + t + ' \u5F61\u2605'; },
    function (t) { return '\u02D7\u02CF\u02CB ' + t + ' \u02CE\u02CA\u02D7'; },
    function (t) { return underline(t); }
  ];

  var rows = [];

  function copyFallback(text) {
    var ta = document.createElement('textarea');
    ta.value = text;
    ta.setAttribute('readonly', '');
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    try { document.execCommand('copy'); } catch (e) { /* ignore */ }
    document.body.removeChild(ta);
  }

  function flash(btn) {
    btn.textContent = 'คัดลอกแล้ว \u2713';
    btn.classList.add('cs-ok');
    setTimeout(function () {
      btn.textContent = 'คัดลอก';
      btn.classList.remove('cs-ok');
    }, 1500);
  }

  function copyText(text, btn) {
    if (!text) { return; }
    if (navigator.clipboard && window.isSecureContext) {
      navigator.clipboard.writeText(text).then(function () {
        flash(btn);
      }, function () {
        copyFallback(text);
        flash(btn);
      });
    } else {
      copyFallback(text);
      flash(btn);
    }
  }

  function build() {
    STYLES.forEach(function () {
      var row = document.createElement('div');
      row.className = 'cs-row';
      row.setAttribute('role', 'listitem');
      var span = document.createElement('span');
      span.className = 'cs-text';
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'cs-btn cs-copy';
      btn.textContent = 'คัดลอก';
      btn.addEventListener('click', function () { copyText(span.textContent, btn); });
      row.appendChild(span);
      row.appendChild(btn);
      listEl.appendChild(row);
      rows.push({ span: span, btn: btn });
    });
  }

  function render() {
    var raw = inputEl.value;
    var base = convert(raw, boldEl.checked);
    var hasText = raw.trim() !== '';
    STYLES.forEach(function (fn, i) {
      var span = rows[i].span;
      if (hasText) {
        span.textContent = fn(base);
        span.classList.remove('cs-empty');
      } else {
        span.textContent = 'ผลลัพธ์จะแสดงที่นี่';
        span.classList.add('cs-empty');
      }
      rows[i].btn.disabled = !hasText;
    });
    countEl.textContent = Array.from(raw).length + ' ตัวอักษร';
    noteEl.hidden = !/[\u0E00-\u0E7F]/.test(raw);
  }

  build();
  inputEl.addEventListener('input', render);
  boldEl.addEventListener('change', render);
  clearEl.addEventListener('click', function () {
    inputEl.value = '';
    render();
    inputEl.focus();
  });
  render();
})();
</script>

## วิธีใช้งานตัวสร้างข้อความลายมือ Cursive

1. **พิมพ์ข้อความ** ภาษาอังกฤษลงในช่อง "พิมพ์ข้อความของคุณ" หรือวางข้อความที่ต้องการแปลง
2. **ดูตัวอย่างสด** ผลลัพธ์หลายสไตล์จะแสดงด้านล่างทันทีที่พิมพ์ ไม่ต้องกดปุ่มแปลง
3. **เลือกความหนา** ติ๊กหรือเอาติ๊กออกที่ช่อง "ตัวหนา" เพื่อสลับระหว่างลายมือแบบหนาและแบบบาง
4. **คัดลอก** กดปุ่ม "คัดลอก" ด้านขวาของสไตล์ที่ชอบ ปุ่มจะเปลี่ยนเป็น "คัดลอกแล้ว" เมื่อคัดลอกสำเร็จ
5. **นำไปวาง** วางข้อความได้ทุกที่ เช่น แคปชั่น Facebook, Instagram, โปรไฟล์ X (Twitter), ข้อความแชท หรือบัตรเชิญ
6. **เริ่มใหม่** กดปุ่ม "ล้างข้อความ" เพื่อลบข้อความเดิมและพิมพ์ใหม่

**ข้อควรรู้:** รองรับเฉพาะตัวอักษรภาษาอังกฤษ A-Z และ a-z ส่วนตัวเลข ภาษาไทย และสัญลักษณ์จะแสดงตามเดิม

**ตัวอย่างผลลัพธ์:** `Lorem ipsum` จะกลายเป็น `𝓛𝓸𝓻𝓮𝓶 𝓲𝓹𝓼𝓾𝓶`

## คำอธิบายศัพท์ที่ควรรู้

- **Cursive (เคอร์ซีฟ):** รูปแบบการเขียนตัวอักษรแบบเชื่อมต่อกันลื่นไหล คล้ายลายมือเขียนด้วยปากกา
- **Script (สคริปต์):** สไตล์ตัวอักษรเลียนแบบลายมือที่มีเส้นโค้งอ่อนช้อย ในเครื่องมือนี้คือตัวเลือกเมื่อไม่ติ๊ก "ตัวหนา"
- **Bold Script (โบลด์สคริปต์):** ตัวอักษรลายมือแบบหนา เส้นชัดและอ่านง่ายกว่า เป็นสไตล์เริ่มต้นของเครื่องมือนี้
- **Unicode (ยูนิโค้ด):** มาตรฐานรหัสตัวอักษรสากลที่ทำให้ตัวอักษรพิเศษแสดงผลได้เหมือนกันบนหลายอุปกรณ์และแพลตฟอร์ม
- **ตัวอักษรสไตล์ Unicode:** ตัวอักษรที่ถูกสร้างไว้ในชุด Unicode ไม่ใช่ฟอนต์ที่ติดตั้งเพิ่ม จึงคัดลอกไปวางได้โดยรูปร่างไม่เปลี่ยน
- **ตัวอย่างสด (Live Preview):** ผลลัพธ์ที่อัปเดตทันทีขณะพิมพ์ ช่วยให้เห็นหน้าตาข้อความก่อนคัดลอก
- **สัญลักษณ์ตกแต่ง:** อักขระเสริม เช่น ✨ ♡ ❀ ➳ ที่ใส่คู่กับข้อความเพื่อเพิ่มความโดดเด่น
- **ขีดเส้นใต้:** เส้นใต้ตัวอักษรที่สร้างจากอักขระควบ (Combining Character) ซึ่งติดไปกับข้อความเมื่อคัดลอก
- **คัดลอกและวาง (Copy & Paste):** การเลือกข้อความแล้วนำไปวางต่อในแอปหรือเว็บไซต์อื่น

## ตัวอย่างการใช้งานข้อความลายมือ

- **บัตรเชิญและการ์ดอวยพร:** เพิ่มความสง่างามให้ชื่อเจ้าของงานหรือข้อความอวยพร
- **โซเชียลมีเดีย:** ตกแต่งแคปชั่น ชื่อโปรไฟล์ และไบโอให้โดดเด่น
- **ข้อความส่วนตัว:** ใช้กับโน้ตหรือข้อความแชทเพื่อเพิ่มความรู้สึกจริงใจ