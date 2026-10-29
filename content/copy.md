---
title: คัดลอกไปยังคลิปบอร์ด ออนไลน์ ฟรี
h1: คัดลอกไปยังคลิปบอร์ด
description: คัดลอกไปยังคลิปบอร์ดออนไลน์ฟรี วางข้อความแล้วกดคัดลอกได้ทันที นับจำนวนอักขระ สร้างลิงก์แชร์ข้อความ ประมวลผลในเบราว์เซอร์ ปลอดภัย ใช้ได้ทั้งมือถือและคอม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 25
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- คัดลอกไปยังคลิปบอร์ด
- คัดลอกไปยังคลิปบอร์ด ออนไลน์
- ข้อความและตัวอักษร
---

<style>
.cb-box{max-width:720px;margin:0 auto 24px;padding:16px;border:1px solid rgba(128,128,128,.35);border-radius:12px;box-sizing:border-box}
.cb-box textarea{width:100%;min-height:200px;padding:12px;font-size:16px;line-height:1.5;border:1px solid rgba(128,128,128,.45);border-radius:8px;box-sizing:border-box;resize:vertical;font-family:inherit;background:transparent;color:inherit}
.cb-opts{display:flex;flex-wrap:wrap;gap:8px 20px;margin:12px 0}
.cb-opts label{display:inline-flex;align-items:center;gap:6px;cursor:pointer;font-size:15px}
.cb-btns{display:flex;flex-wrap:wrap;gap:8px;margin:8px 0}
.cb-btns button{padding:10px 18px;font-size:16px;border:1px solid rgba(128,128,128,.5);border-radius:8px;cursor:pointer;background:transparent;color:inherit;font-family:inherit}
.cb-btns button.cb-primary{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
.cb-btns button:hover{opacity:.85}
.cb-stats{display:flex;flex-wrap:wrap;gap:6px 20px;font-size:14px;opacity:.85;margin-top:8px}
.cb-msg{min-height:24px;margin-top:8px;font-size:15px;font-weight:600}
.cb-ok{color:#16a34a}
.cb-err{color:#dc2626}
.cb-help dt{font-weight:700;margin-top:12px}
.cb-help dd{margin:2px 0 0 0}
</style>

<div class="cb-box" id="cb-app">
<textarea id="cb-text" placeholder="พิมพ์หรือวางข้อความที่ต้องการคัดลอกที่นี่..." aria-label="ข้อความที่ต้องการคัดลอก"></textarea>
<div class="cb-opts">
<label><input type="checkbox" id="cb-trim"> ตัดช่องว่างหน้า-หลังข้อความ</label>
<label><input type="checkbox" id="cb-blank"> ลบบรรทัดว่าง</label>
</div>
<div class="cb-btns">
<button type="button" class="cb-primary" id="cb-copy">คัดลอกไปยังคลิปบอร์ด</button>
<button type="button" id="cb-paste">วางจากคลิปบอร์ด</button>
<button type="button" id="cb-share">สร้างลิงก์แชร์</button>
<button type="button" id="cb-clear">ล้างข้อความ</button>
</div>
<div class="cb-msg" id="cb-msg" role="status" aria-live="polite"></div>
<div class="cb-stats">
<span>อักขระ: <b id="cb-chars">0</b> / <span id="cb-max">2000</span></span>
<span>ไม่รวมช่องว่าง: <b id="cb-nospace">0</b></span>
<span>บรรทัด: <b id="cb-lines">0</b></span>
</div>
</div>

<script>
(function () {
  var MAX = 2000;
  var $ = function (id) { return document.getElementById(id); };
  var ta = $('cb-text');
  var msgBox = $('cb-msg');
  var timer = null;
  if (!ta) { return; }
  $('cb-max').textContent = MAX;
  function msg(text, ok) {
    msgBox.textContent = text;
    msgBox.className = 'cb-msg ' + (ok ? 'cb-ok' : 'cb-err');
    clearTimeout(timer);
    timer = setTimeout(function () { msgBox.textContent = ''; }, 3500);
  }
  function stats() {
    var v = ta.value;
    $('cb-chars').textContent = Array.from(v).length;
    $('cb-nospace').textContent = Array.from(v.replace(/\s/g, '')).length;
    $('cb-lines').textContent = v ? v.split('\n').length : 0;
  }
  function clean(v) {
    if ($('cb-trim').checked) { v = v.trim(); }
    if ($('cb-blank').checked) {
      v = v.split('\n').filter(function (l) { return l.trim() !== ''; }).join('\n');
    }
    return v;
  }
  function fallbackCopy(v) {
    var t = document.createElement('textarea');
    t.value = v;
    t.setAttribute('readonly', '');
    t.style.position = 'fixed';
    t.style.top = '-1000px';
    document.body.appendChild(t);
    t.select();
    var done = false;
    try { done = document.execCommand('copy'); } catch (e) { done = false; }
    document.body.removeChild(t);
    return done;
  }
  function copyText(v, okText) {
    if (navigator.clipboard && window.isSecureContext) {
      navigator.clipboard.writeText(v).then(function () {
        msg(okText, true);
      }, function () {
        if (fallbackCopy(v)) { msg(okText, true); } else { msg('คัดลอกไม่สำเร็จ กรุณาลองใหม่อีกครั้ง', false); }
      });
    } else if (fallbackCopy(v)) {
      msg(okText, true);
    } else {
      msg('คัดลอกไม่สำเร็จ กรุณาลองใหม่อีกครั้ง', false);
    }
  }
  function toB64(s) {
    var bytes = new TextEncoder().encode(s);
    var bin = '';
    for (var i = 0; i !== bytes.length; i++) { bin += String.fromCharCode(bytes[i]); }
    return btoa(bin).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '');
  }
  function fromB64(b) {
    b = b.replace(/-/g, '+').replace(/_/g, '/');
    while (b.length % 4 !== 0) { b += '='; }
    var bin = atob(b);
    var bytes = new Uint8Array(bin.length);
    for (var i = 0; i !== bin.length; i++) { bytes[i] = bin.charCodeAt(i); }
    return new TextDecoder().decode(bytes);
  }
  ta.addEventListener('input', function () {
    var arr = Array.from(ta.value);
    if (arr.length > MAX) {
      ta.value = arr.slice(0, MAX).join('');
      msg('ข้อความยาวเกิน ' + MAX + ' อักขระ ระบบตัดส่วนเกินออกให้แล้ว', false);
    }
    stats();
  });
  $('cb-copy').addEventListener('click', function () {
    var v = clean(ta.value);
    if (!v) { msg('กรุณาใส่ข้อความก่อนคัดลอก', false); return; }
    ta.value = v;
    stats();
    copyText(v, 'คัดลอกไปยังคลิปบอร์ดแล้ว ✓');
  });
  $('cb-paste').addEventListener('click', function () {
    if (!navigator.clipboard || !navigator.clipboard.readText) {
      msg('เบราว์เซอร์นี้ไม่รองรับการวางอัตโนมัติ กรุณากด Ctrl+V ในช่องข้อความ', false);
      return;
    }
    navigator.clipboard.readText().then(function (t) {
      ta.value = Array.from(t).slice(0, MAX).join('');
      stats();
      msg('วางข้อความจากคลิปบอร์ดแล้ว ✓', true);
    }, function () {
      msg('ไม่ได้รับอนุญาตให้อ่านคลิปบอร์ด กรุณากด Ctrl+V ในช่องข้อความ', false);
    });
  });
  $('cb-share').addEventListener('click', function () {
    var v = clean(ta.value);
    if (!v) { msg('กรุณาใส่ข้อความก่อนสร้างลิงก์', false); return; }
    var url = location.href.split('#')[0] + '#t=' + toB64(v);
    try { history.replaceState(null, '', url); } catch (e) { }
    copyText(url, 'คัดลอกลิงก์แชร์แล้ว ✓ ส่งให้ผู้อื่นเปิดได้เลย');
  });
  $('cb-clear').addEventListener('click', function () {
    ta.value = '';
    stats();
    try { history.replaceState(null, '', location.href.split('#')[0]); } catch (e) { }
    ta.focus();
  });
  if (location.hash.indexOf('#t=') === 0) {
    try {
      ta.value = Array.from(fromB64(location.hash.slice(3))).slice(0, MAX).join('');
    } catch (e) { ta.value = ''; }
  }
  stats();
})();
</script>

## วิธีใช้งานเครื่องมือคัดลอกไปยังคลิปบอร์ด

1. **พิมพ์หรือวางข้อความ** ลงในช่องข้อความด้านบน หรือกดปุ่ม "วางจากคลิปบอร์ด" เพื่อดึงข้อความที่คัดลอกไว้ก่อนหน้ามาใส่โดยอัตโนมัติ
2. **เลือกตัวเลือกเสริม** (ถ้าต้องการ) เช่น ตัดช่องว่างหน้า-หลังข้อความ หรือลบบรรทัดว่าง เพื่อจัดข้อความให้เรียบร้อยก่อนคัดลอก
3. **กดปุ่ม "คัดลอกไปยังคลิปบอร์ด"** เมื่อขึ้นข้อความ "คัดลอกไปยังคลิปบอร์ดแล้ว" แสดงว่าสำเร็จ
4. **นำไปวางที่ปลายทาง** ด้วย Ctrl+V (Windows) หรือ Command+V (Mac) หรือแตะค้างแล้วเลือก "วาง" บนมือถือ
5. **ต้องการส่งต่อให้คนอื่น** กดปุ่ม "สร้างลิงก์แชร์" ระบบจะคัดลอกลิงก์ที่มีข้อความฝังอยู่ ส่งให้ผู้รับเปิดแล้วเห็นข้อความเดียวกันทันที
6. **เริ่มใหม่** กดปุ่ม "ล้างข้อความ" เพื่อลบข้อความและลิงก์แชร์ออกจากหน้านี้

> ข้อความทั้งหมดประมวลผลในเบราว์เซอร์ของคุณเท่านั้น ไม่มีการส่งข้อความไปเก็บไว้ที่เซิร์ฟเวอร์

## คำอธิบายศัพท์ที่เกี่ยวข้อง

<dl class="cb-help">
<dt>คลิปบอร์ด (Clipboard)</dt>
<dd>พื้นที่เก็บข้อมูลชั่วคราวในอุปกรณ์ ใช้พักข้อความหรือไฟล์ที่คัดลอกไว้ เพื่อนำไปวางที่อื่น ข้อมูลจะถูกแทนที่เมื่อคัดลอกสิ่งใหม่</dd>
<dt>คัดลอก (Copy)</dt>
<dd>การทำสำเนาข้อความไปไว้ในคลิปบอร์ด โดยข้อความต้นฉบับยังอยู่ที่เดิม</dd>
<dt>วาง (Paste)</dt>
<dd>การนำข้อมูลในคลิปบอร์ดไปใส่ในตำแหน่งที่ต้องการ เช่น ช่องแชต เอกสาร หรืออีเมล</dd>
<dt>Ctrl+C / Ctrl+V</dt>
<dd>แป้นพิมพ์ลัดสำหรับคัดลอกและวางบน Windows และ Linux ส่วน Mac ใช้ Command+C และ Command+V</dd>
<dt>อักขระ (Character)</dt>
<dd>ตัวอักษร ตัวเลข สัญลักษณ์ ช่องว่าง และอีโมจิแต่ละตัวที่พิมพ์ในข้อความ เครื่องมือนี้จำกัดไว้ที่ 2,000 อักขระ</dd>
<dt>อักขระไม่รวมช่องว่าง</dt>
<dd>จำนวนอักขระที่นับเฉพาะตัวอักษรและสัญลักษณ์ ไม่นับช่องว่างและการขึ้นบรรทัดใหม่ มีประโยชน์เมื่อต้องส่งข้อความตามเงื่อนไขจำนวนตัวอักษร</dd>
<dt>บรรทัดว่าง</dt>
<dd>บรรทัดที่ไม่มีข้อความ เกิดจากการกด Enter ซ้ำหลายครั้ง ใช้ตัวเลือก "ลบบรรทัดว่าง" เพื่อให้ข้อความกระชับขึ้น</dd>
<dt>ลิงก์แชร์</dt>
<dd>ลิงก์ที่เก็บข้อความไว้ในส่วนท้ายของที่อยู่เว็บ (หลังเครื่องหมาย #) ผู้ที่ได้รับลิงก์จึงเปิดดูข้อความเดียวกันได้ อย่าใช้กับข้อมูลลับ เช่น รหัสผ่านหรือเลขบัตร</dd>
<dt>ประมวลผลในเบราว์เซอร์</dt>
<dd>การทำงานทั้งหมดเกิดขึ้นบนอุปกรณ์ของคุณ ข้อความไม่ถูกส่งออกไปยังเซิร์ฟเวอร์ จึงใช้งานได้รวดเร็วและเป็นส่วนตัว</dd>
</dl>