---
title: เครื่องมือสร้างแฮช SHA-1 ออนไลน์ ฟรี
h1: เครื่องมือสร้างแฮช SHA-1
description: เครื่องมือสร้างแฮช SHA-1 จากข้อความฟรี คำนวณทันทีในเบราว์เซอร์ ข้อมูลไม่ถูกส่งออกจากเครื่อง ใช้ได้ทั้งมือถือและเดสก์ท็อป ไม่ต้องดาวน์โหลดแอปหรือสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-05T09:00:00+07:00'
weight: 71
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เครื่องมือสร้างแฮช SHA-1
- เครื่องมือสร้างแฮช SHA-1 ออนไลน์
- เครื่องมือนักพัฒนา
---

<style>
.sha1-tool{max-width:720px;margin:1rem 0 2rem}
.sha1-tool *{box-sizing:border-box}
.sha1-tool textarea{display:block;width:100%;min-height:150px;padding:.75rem;font:inherit;font-size:16px;line-height:1.5;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:8px;resize:vertical}
.sha1-tool textarea:focus-visible,.sha1-tool button:focus-visible,.sha1-tool input:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
.sha1-bar{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;gap:.75rem;margin:.6rem 0 1rem}
.sha1-meta{display:flex;flex-wrap:wrap;align-items:center;gap:1rem;font-size:.9rem}
.sha1-meta label{display:inline-flex;align-items:center;gap:.4rem;cursor:pointer}
.sha1-tool button{font:inherit;font-size:.95rem;padding:.45rem 1rem;border-radius:8px;border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;cursor:pointer}
.sha1-tool button.sha1-primary{background:#2563eb;border-color:#2563eb;color:#fff}
.sha1-tool button:disabled{opacity:.45;cursor:not-allowed}
.sha1-result{display:flex;flex-wrap:wrap;align-items:center;gap:.75rem;padding:.75rem;border:1px solid rgba(128,128,128,.45);border-radius:8px}
.sha1-result code{flex:1 1 280px;min-width:0;font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:1rem;word-break:break-all;background:transparent;padding:0}
.sha1-status{min-height:1.5rem;margin:.5rem 0 0;font-size:.9rem;opacity:.8}
</style>

<div class="sha1-tool">
<label for="sha1-input" style="display:block;margin-bottom:.4rem">ข้อความที่ต้องการแฮช</label>
<textarea id="sha1-input" placeholder="พิมพ์หรือวางข้อความที่นี่" spellcheck="false" autocomplete="off"></textarea>
<div class="sha1-bar">
<div class="sha1-meta"><span id="sha1-len">0 ไบต์</span><label><input type="checkbox" id="sha1-upper"> ตัวพิมพ์ใหญ่</label></div>
<button type="button" id="sha1-clear">ล้าง</button>
</div>
<div class="sha1-result">
<code id="sha1-out">...</code>
<button type="button" class="sha1-primary" id="sha1-copy" disabled>คัดลอก</button>
</div>
<p class="sha1-status" id="sha1-status" role="status" aria-live="polite">— ป้อนข้อความด้านบนเพื่อสร้างแฮช —</p>
</div>

<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var input = $('sha1-input');
  var out = $('sha1-out');
  var lenEl = $('sha1-len');
  var status = $('sha1-status');
  var copyBtn = $('sha1-copy');
  var clearBtn = $('sha1-clear');
  var upper = $('sha1-upper');
  var encoder = new TextEncoder();
  var lastHash = '';
  var token = 0;
  var EMPTY_MSG = '— ป้อนข้อความด้านบนเพื่อสร้างแฮช —';

  function toHex(buffer) {
    return Array.from(new Uint8Array(buffer)).map(function (b) {
      return b.toString(16).padStart(2, '0');
    }).join('');
  }

  function render() {
    out.textContent = lastHash ? (upper.checked ? lastHash.toUpperCase() : lastHash) : '...';
    copyBtn.disabled = !lastHash;
  }

  async function compute() {
    var text = input.value;
    var bytes = encoder.encode(text);
    lenEl.textContent = bytes.length + ' ไบต์';
    var current = ++token;
    if (!text) {
      lastHash = '';
      render();
      status.textContent = EMPTY_MSG;
      return;
    }
    if (!(window.crypto && window.crypto.subtle)) {
      lastHash = '';
      render();
      status.textContent = 'เบราว์เซอร์นี้ไม่รองรับการคำนวณแฮช กรุณาเปิดหน้านี้ผ่าน HTTPS หรือใช้เบราว์เซอร์เวอร์ชันใหม่';
      return;
    }
    try {
      var buffer = await window.crypto.subtle.digest('SHA-1', bytes);
      if (current !== token) { return; }
      lastHash = toHex(buffer);
      status.textContent = '160 บิต เท่ากับเลขฐานสิบหก 40 ตัวอักษร';
      render();
    } catch (err) {
      lastHash = '';
      render();
      status.textContent = 'เกิดข้อผิดพลาดในการคำนวณแฮช กรุณาลองใหม่อีกครั้ง';
    }
  }

  function fallbackCopy(text) {
    var area = document.createElement('textarea');
    area.value = text;
    area.setAttribute('readonly', '');
    area.style.position = 'fixed';
    area.style.top = '0';
    area.style.opacity = '0';
    document.body.appendChild(area);
    area.select();
    var ok = false;
    try { ok = document.execCommand('copy'); } catch (e) { ok = false; }
    document.body.removeChild(area);
    return ok;
  }

  async function copyHash() {
    var text = out.textContent;
    if (!lastHash) { return; }
    var ok = false;
    try {
      if (navigator.clipboard && navigator.clipboard.writeText) {
        await navigator.clipboard.writeText(text);
        ok = true;
      }
    } catch (e) { ok = false; }
    if (!ok) { ok = fallbackCopy(text); }
    copyBtn.textContent = ok ? 'คัดลอกแล้ว' : 'คัดลอกไม่สำเร็จ';
    setTimeout(function () { copyBtn.textContent = 'คัดลอก'; }, 1500);
  }

  input.addEventListener('input', compute);
  upper.addEventListener('change', render);
  copyBtn.addEventListener('click', copyHash);
  clearBtn.addEventListener('click', function () {
    input.value = '';
    compute();
    input.focus();
  });
  compute();
})();
</script>

## วิธีใช้งานเครื่องมือสร้างแฮช SHA-1

1. พิมพ์หรือวางข้อความที่ต้องการลงในช่อง “ข้อความที่ต้องการแฮช”
2. ผลลัพธ์แฮช SHA-1 จะแสดงทันทีขณะพิมพ์ ไม่ต้องกดปุ่มสร้างเพิ่ม
3. ตรวจสอบขนาดข้อความเป็นจำนวนไบต์ได้ที่ด้านล่างช่องกรอก
4. ติ๊ก “ตัวพิมพ์ใหญ่” หากต้องการให้ผลลัพธ์เป็น A-F แทน a-f
5. กด “คัดลอก” เพื่อนำค่าแฮชไปวางในโค้ด ไฟล์คอนฟิก หรือเอกสารของคุณ
6. กด “ล้าง” เพื่อเริ่มต้นใหม่

**ตัวอย่าง:** ข้อความ `abc` จะได้แฮช SHA-1 เป็น `a9993e364706816aba3e25717850c26c9cd0d89d`

**ข้อควรรู้:**

- ข้อความเดิมจะได้แฮชเดิมเสมอ
- เปลี่ยนเพียงหนึ่งตัวอักษร แฮชจะเปลี่ยนไปทั้งหมด
- ช่องว่างและการขึ้นบรรทัดใหม่ท้ายข้อความก็มีผลต่อแฮช
- การคำนวณทำในเบราว์เซอร์ของคุณเอง ข้อความไม่ถูกส่งไปยังเซิร์ฟเวอร์

## คำอธิบายศัพท์

- **แฮช (Hash):** ค่าที่ได้จากการนำข้อมูลใดๆ ไปผ่านสูตรคำนวณทางเดียว ได้ผลลัพธ์ความยาวคงที่ ใช้ตรวจสอบว่าข้อมูลถูกแก้ไขหรือไม่
- **SHA-1 (Secure Hash Algorithm 1):** อัลกอริทึมแฮชที่ออกแบบโดย NSA ของสหรัฐฯ ให้ผลลัพธ์ขนาด 160 บิต
- **ไดเจสต์ (Digest):** ค่าแฮชที่เป็นผลลัพธ์สุดท้าย หรือข้อมูลสรุปของข้อความต้นฉบับ
- **ไบต์ (Byte):** หน่วยเก็บข้อมูล 1 ไบต์เท่ากับ 8 บิต ตัวอักษรภาษาไทย 1 ตัวใช้ 3 ไบต์ใน UTF-8
- **UTF-8:** รูปแบบการเข้ารหัสตัวอักษร ที่เครื่องมือนี้ใช้แปลงข้อความเป็นไบต์ก่อนคำนวณแฮช
- **เลขฐานสิบหก (Hexadecimal):** ระบบเลขที่ใช้ 0-9 และ a-f แทนค่าแฮช SHA-1 มีความยาว 40 ตัวอักษร
- **การชนกัน (Collision):** กรณีที่ข้อมูลสองชุดต่างกันแต่ได้แฮชเท่ากัน
- **SHAttered:** การโจมตีแบบชนกันของ SHA-1 ที่ Google และ CWI Amsterdam เปิดเผยในปี 2017
- **SubtleCrypto:** API เข้ารหัสลับที่มีอยู่ในเบราว์เซอร์ ใช้คำนวณแฮชโดยไม่ต้องติดตั้งไลบรารีเพิ่ม
- **Git:** ระบบจัดการเวอร์ชันโค้ดที่ใช้ SHA-1 ตั้งชื่อ commit, tree และ blob

## SHA-1 เหมาะกับงานแบบไหน

SHA-1 ยังพบได้ในระบบเดิมๆ เช่น Git ตรวจสอบความถูกต้องของข้อมูลทั่วไป หรือทดสอบระบบที่ต้องใช้ค่าแฮชนี้ แต่หลังการโจมตี SHAttered ไม่ควรใช้ SHA-1 กับงานความปลอดภัยใหม่ เช่น ลายเซ็นดิจิทัลหรือใบรับรอง ให้เลือก SHA-256 หรือ SHA-512 แทน ส่วนการเก็บรหัสผ่าน ควรใช้อัลกอริทึมเฉพาะอย่าง bcrypt หรือ Argon2