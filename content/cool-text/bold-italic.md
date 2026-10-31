---
title: ข้อความตัวหนา / ตัวเอียง ออนไลน์ ฟรี
h1: ข้อความตัวหนา / ตัวเอียง
description: แปลงข้อความเป็นตัวหนา ตัวเอียง และหนาเอียง 6 สไตล์ ทั้งแบบมีหัวและไม่มีหัว ดูตัวอย่างสดในเบราว์เซอร์ แล้วคัดลอกไปวางบน Facebook, X, Instagram ได้ฟรีทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 40
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ข้อความตัวหนา / ตัวเอียง
- ข้อความตัวหนา / ตัวเอียง ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.bi-tool{max-width:720px;margin:0 auto 1.5rem}
.bi-tool *{box-sizing:border-box}
.bi-input{width:100%;min-height:96px;padding:12px;font:inherit;font-size:1.05rem;border:1px solid #9994;border-radius:10px;background:transparent;color:inherit;resize:vertical}
.bi-input:focus{outline:2px solid #4a7dff;outline-offset:1px}
.bi-arrow{text-align:center;margin:.6rem 0;opacity:.6;letter-spacing:.3em}
.bi-row{display:flex;align-items:center;gap:10px;padding:10px 12px;margin-bottom:8px;border:1px solid #9994;border-radius:10px}
.bi-text{flex:1;min-width:0;font-size:1.15rem;word-break:break-word;white-space:pre-wrap}
.bi-label{display:block;font-size:.75rem;opacity:.65;margin-bottom:2px}
.bi-copy{flex:none;padding:7px 14px;border:0;border-radius:8px;background:#4a7dff;color:#fff;font:inherit;font-size:.9rem;cursor:pointer}
.bi-copy:hover{background:#3763d8}
.bi-copy.bi-done{background:#1f9d55}
.bi-sample{font-size:1.1rem;word-break:break-all}
</style>
<div class="bi-tool" id="bi-tool">
<textarea class="bi-input" id="bi-input" rows="3" placeholder="พิมพ์ข้อความภาษาอังกฤษที่นี่ เช่น hello" aria-label="ข้อความที่ต้องการแปลง">hello</textarea>
<div class="bi-arrow" aria-hidden="true">⇩ ⇩ ⇩</div>
<div id="bi-results" aria-live="polite"></div>
<noscript>ต้องเปิดใช้งาน JavaScript เพื่อใช้เครื่องมือนี้</noscript>
</div>
<script>
(function () {
  var STYLES = [
    { name: 'หนา + เอียง แบบไม่มีหัว', up: 0x1D63C, lo: 0x1D656 },
    { name: 'หนา แบบไม่มีหัว', up: 0x1D5D4, lo: 0x1D5EE },
    { name: 'เอียง แบบไม่มีหัว', up: 0x1D608, lo: 0x1D622 },
    { name: 'หนา + เอียง แบบมีหัว', up: 0x1D468, lo: 0x1D482 },
    { name: 'หนา แบบมีหัว', up: 0x1D400, lo: 0x1D41A },
    { name: 'เอียง แบบมีหัว', up: 0x1D434, lo: 0x1D44E, exc: { 'h': '\u210E' } }
  ];
  var input = document.getElementById('bi-input');
  var results = document.getElementById('bi-results');
  if (!input || !results) { return; }
  function convert(text, st) {
    var out = '';
    Array.from(text).forEach(function (ch) {
      var c = ch.codePointAt(0);
      if (st.exc && st.exc[ch]) {
        out += st.exc[ch];
      } else if (c >= 65 && c <= 90) {
        out += String.fromCodePoint(st.up + (c - 65));
      } else if (c >= 97 && c <= 122) {
        out += String.fromCodePoint(st.lo + (c - 97));
      } else {
        out += ch;
      }
    });
    return out;
  }
  function copyText(text, btn) {
    function done() {
      var old = btn.textContent;
      btn.textContent = 'คัดลอกแล้ว';
      btn.classList.add('bi-done');
      setTimeout(function () {
        btn.textContent = old;
        btn.classList.remove('bi-done');
      }, 1500);
    }
    function fallback() {
      var ta = document.createElement('textarea');
      ta.value = text;
      ta.style.position = 'fixed';
      ta.style.opacity = '0';
      document.body.appendChild(ta);
      ta.select();
      try { document.execCommand('copy'); done(); } catch (e) {}
      document.body.removeChild(ta);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else {
      fallback();
    }
  }
  var rows = STYLES.map(function (st) {
    var row = document.createElement('div');
    row.className = 'bi-row';
    var box = document.createElement('div');
    box.className = 'bi-text';
    var label = document.createElement('span');
    label.className = 'bi-label';
    label.textContent = st.name;
    var val = document.createElement('span');
    box.appendChild(label);
    box.appendChild(val);
    var btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'bi-copy';
    btn.textContent = 'คัดลอก';
    btn.addEventListener('click', function () { copyText(val.textContent, btn); });
    row.appendChild(box);
    row.appendChild(btn);
    results.appendChild(row);
    return { st: st, val: val };
  });
  function render() {
    var text = input.value;
    rows.forEach(function (r) { r.val.textContent = convert(text, r.st); });
  }
  input.addEventListener('input', render);
  render();
})();
</script>

สไตล์ตัวอักษรหนาและเอียงช่วยเน้นเนื้อหาและเพิ่มความโดดเด่นให้ข้อความ เครื่องมือนี้มี 6 รูปแบบ ทั้งฟอนต์แบบมีหัวและไม่มีหัว พร้อมเอฟเฟกต์หนา เอียง และหนาเอียง

ตัวอย่างผลลัพธ์: `𝘼 𝗔 𝘈 𝑨 𝐀 𝐴`

## วิธีใช้งาน

1. พิมพ์หรือวางข้อความภาษาอังกฤษลงในช่องด้านบน
2. ดูผลลัพธ์ทั้ง 6 สไตล์ที่แสดงให้เห็นทันที
3. กดปุ่ม "คัดลอก" ที่สไตล์ที่ต้องการ
4. นำไปวางที่ไหนก็ได้ เช่น X (Twitter), Facebook, Instagram, TikTok หรือแชต

หมายเหตุ: ใช้ได้เฉพาะตัวอักษรภาษาอังกฤษ (A-Z, a-z) ตัวอักษรไทย ตัวเลข และสัญลักษณ์จะคงเดิม

## ความหมายของแต่ละสไตล์

- **ตัวหนา (Bold):** ตัวอักษรเส้นหนา ดูหนักแน่นและเด่นชัด เหมาะกับการเน้นคำสำคัญ
- **ตัวเอียง (Italic):** ตัวอักษรเอนไปทางขวา ให้ความรู้สึกนุ่มนวล ใช้เน้นคำหรือการอ้างอิง
- **หนา + เอียง (Bold Italic):** รวมความหนาและการเอียงเข้าด้วยกัน เน้นได้มากที่สุด
- **แบบไม่มีหัว (Sans-serif):** ตัวอักษรเส้นเรียบไม่มีเชิงที่ปลาย ดูทันสมัย อ่านง่ายบนหน้าจอ
- **แบบมีหัว (Serif):** ตัวอักษรมีเชิงที่ปลายเส้น ให้ความรู้สึกคลาสสิกและเป็นทางการ
- **Unicode:** มาตรฐานรหัสตัวอักษรที่ทำให้ข้อความหนา/เอียงเหล่านี้คัดลอกและวางได้ในแทบทุกแพลตฟอร์ม โดยไม่ต้องตั้งค่าฟอนต์

## เมื่อใดควรใช้ตัวอักษรหนาและเอียง

- **เน้นข้อความสำคัญ:** ชี้จุดสำคัญในโพสต์หรือข้อความของคุณ
- **การพิมพ์สร้างสรรค์:** เพิ่มมิติและบุคลิกให้ชื่อ โปรไฟล์ หรือแคปชัน
- **การใช้งานมืออาชีพ:** เหมาะกับหัวข้อ คำอ้างอิง และการสร้างแบรนด์บนโซเชียลมีเดีย

## ข้อควรรู้

- ข้อความที่แปลงแล้วเป็นตัวอักษร Unicode ไม่ใช่การจัดรูปแบบ จึงอาจไม่ถูกอ่านออกเสียงโดยโปรแกรมช่วยอ่านหน้าจอ ควรใช้เป็นจุดเน้นสั้นๆ ไม่ควรใช้กับข้อความยาว
- บางแพลตฟอร์มหรือฟอนต์เก่าอาจแสดงผลเป็นกล่องสี่เหลี่ยม
- ตัวเอียงแบบมีหัวของตัว h ใช้อักขระ ℎ ซึ่งเป็นข้อยกเว้นของชุดตัวอักษร Unicode