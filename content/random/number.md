---
title: ตัวสุ่มตัวเลข ออนไลน์ ฟรี
h1: ตัวสุ่มตัวเลข
description: ตัวสุ่มตัวเลขออนไลน์ ตั้งช่วงตัวเลขและจำนวนผลลัพธ์ได้เอง เลือกไม่ซ้ำกันได้ เหมาะกับเล่นเกม แบ่งทีม จับสลาก กดครั้งเดียวรู้ผลทันที ใช้ฟรี ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-30T09:00:00+07:00'
weight: 29
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- ตัวสุ่มตัวเลข
- ตัวสุ่มตัวเลข ออนไลน์
- สุ่มและคำนวณ
---
<div class="rn-wrap" id="rn-app">
  <div class="rn-row">
    <div class="rn-field">
      <label for="rn-min">ค่าต่ำสุด</label>
      <input type="number" id="rn-min" value="1" min="0" max="999999" step="1" inputmode="numeric">
    </div>
    <span class="rn-tilde" aria-hidden="true">~</span>
    <div class="rn-field">
      <label for="rn-max">ค่าสูงสุด</label>
      <input type="number" id="rn-max" value="100" min="0" max="999999" step="1" inputmode="numeric">
    </div>
    <span class="rn-times" aria-hidden="true">x</span>
    <div class="rn-field">
      <label for="rn-qty">จำนวนผลลัพธ์</label>
      <input type="number" id="rn-qty" value="1" min="1" max="1000" step="1" inputmode="numeric">
    </div>
  </div>
  <label class="rn-check" for="rn-unique">
    <input type="checkbox" id="rn-unique">
    <span>ไม่ซ้ำกัน</span>
  </label>
  <div class="rn-actions">
    <button type="button" class="rn-btn rn-primary" id="rn-go">สุ่มตัวเลข</button>
    <button type="button" class="rn-btn" id="rn-copy" disabled>คัดลอกผลลัพธ์</button>
  </div>
  <div class="rn-msg" id="rn-msg" role="alert"></div>
  <h2 class="rn-title" id="rn-title">ผลลัพธ์</h2>
  <div class="rn-result" id="rn-result" aria-live="polite"><span class="rn-empty">กดปุ่ม "สุ่มตัวเลข" เพื่อดูผลลัพธ์</span></div>
</div>

<style>
.rn-wrap{--rn-bg:#ffffff;--rn-fg:#1f2937;--rn-muted:#6b7280;--rn-border:#d1d5db;--rn-accent:#2563eb;--rn-accent-fg:#ffffff;--rn-chip:#eff6ff;--rn-err:#b91c1c;max-width:720px;margin:0 auto 2rem;padding:20px;border:1px solid var(--rn-border);border-radius:14px;background:var(--rn-bg);color:var(--rn-fg);box-sizing:border-box}
@media (prefers-color-scheme: dark){.rn-wrap{--rn-bg:#111827;--rn-fg:#f3f4f6;--rn-muted:#9ca3af;--rn-border:#374151;--rn-accent:#3b82f6;--rn-chip:#1e293b;--rn-err:#f87171}}
.rn-wrap *{box-sizing:border-box}
.rn-row{display:flex;flex-wrap:wrap;align-items:flex-end;gap:10px}
.rn-field{display:flex;flex-direction:column;gap:4px;flex:1 1 120px;min-width:100px}
.rn-field label{font-size:.85rem;color:var(--rn-muted)}
.rn-field input{width:100%;padding:10px 12px;font-size:1.05rem;border:1px solid var(--rn-border);border-radius:8px;background:transparent;color:inherit}
.rn-field input:focus{outline:2px solid var(--rn-accent);outline-offset:1px}
.rn-tilde,.rn-times{padding-bottom:10px;font-size:1.2rem;color:var(--rn-muted)}
.rn-check{display:inline-flex;align-items:center;gap:8px;margin-top:14px;cursor:pointer;font-size:1rem}
.rn-check input{width:18px;height:18px;accent-color:var(--rn-accent)}
.rn-actions{display:flex;flex-wrap:wrap;gap:10px;margin-top:16px}
.rn-btn{padding:11px 20px;font-size:1rem;border:1px solid var(--rn-border);border-radius:8px;background:transparent;color:inherit;cursor:pointer}
.rn-btn:disabled{opacity:.5;cursor:not-allowed}
.rn-primary{flex:1 1 160px;background:var(--rn-accent);border-color:var(--rn-accent);color:var(--rn-accent-fg);font-weight:600}
.rn-msg{margin-top:12px;color:var(--rn-err);font-size:.95rem}
.rn-msg:empty{display:none}
.rn-title{margin:22px 0 10px;font-size:1.1rem}
.rn-result{display:flex;flex-wrap:wrap;gap:8px;min-height:64px;align-items:center;justify-content:center;padding:14px;border:1px dashed var(--rn-border);border-radius:10px}
.rn-empty{color:var(--rn-muted)}
.rn-big{font-size:3.5rem;font-weight:700;line-height:1.1;color:var(--rn-accent);word-break:break-all}
.rn-chip{display:inline-block;padding:6px 12px;border-radius:999px;background:var(--rn-chip);font-size:1.05rem;font-variant-numeric:tabular-nums}
@media (max-width: 480px){.rn-tilde,.rn-times{display:none}.rn-big{font-size:2.6rem}}
</style>

<script>
(function () {
  var MAX_VALUE = 999999;
  var MAX_QTY = 1000;
  var busy = false;
  var current = [];
  function byId(id) { return document.getElementById(id); }
  var elMin = byId('rn-min');
  var elMax = byId('rn-max');
  var elQty = byId('rn-qty');
  var elUnique = byId('rn-unique');
  var elGo = byId('rn-go');
  var elCopy = byId('rn-copy');
  var elMsg = byId('rn-msg');
  var elTitle = byId('rn-title');
  var elResult = byId('rn-result');
  if (!elMin || !elMax || !elQty || !elUnique || !elGo || !elCopy || !elMsg || !elTitle || !elResult) { return; }
  function randInt(min, max) {
    var range = max - min + 1;
    var cr = window.crypto || window.msCrypto;
    if (cr && cr.getRandomValues) {
      var buf = new Uint32Array(1);
      var limit = Math.floor(4294967296 / range) * range;
      do { cr.getRandomValues(buf); } while (buf[0] >= limit);
      return min + (buf[0] % range);
    }
    return min + Math.floor(Math.random() * range);
  }
  function generate(min, max, qty, unique) {
    var list = [];
    var seen = {};
    var n;
    if (unique) {
      while (list.length !== qty) {
        n = randInt(min, max);
        if (!seen[n]) { seen[n] = true; list.push(n); }
      }
    } else {
      for (var i = qty; i > 0; i--) { list.push(randInt(min, max)); }
    }
    return list;
  }
  function showMessage(text) { elMsg.textContent = text || ''; }
  function clearResult() {
    while (elResult.firstChild) { elResult.removeChild(elResult.firstChild); }
  }
  function renderBig(value) {
    clearResult();
    var big = document.createElement('span');
    big.className = 'rn-big';
    big.textContent = String(value);
    elResult.appendChild(big);
  }
  function render(list) {
    current = list;
    elTitle.textContent = list.length > 1 ? 'ผลลัพธ์ (' + list.length + ' ค่า)' : 'ผลลัพธ์';
    if (list.length === 1) {
      renderBig(list[0]);
    } else {
      clearResult();
      for (var i = 0; list.length > i; i++) {
        var chip = document.createElement('span');
        chip.className = 'rn-chip';
        chip.textContent = String(list[i]);
        elResult.appendChild(chip);
      }
    }
    elCopy.disabled = false;
  }
  function readInputs() {
    var min = parseInt(elMin.value, 10);
    var max = parseInt(elMax.value, 10);
    var qty = parseInt(elQty.value, 10);
    if (isNaN(min) || isNaN(max) || isNaN(qty)) { return { error: 'กรุณากรอกตัวเลขให้ครบทุกช่อง' }; }
    if (0 > min || max > MAX_VALUE) { return { error: 'ช่วงตัวเลขที่ใช้ได้คือ 0 ถึง 999,999' }; }
    if (min > max) { return { error: 'ค่าต่ำสุดต้องไม่มากกว่าค่าสูงสุด' }; }
    if (1 > qty || qty > MAX_QTY) { return { error: 'จำนวนผลลัพธ์ต้องอยู่ระหว่าง 1 ถึง 1,000' }; }
    if (elUnique.checked && qty > (max - min + 1)) {
      return { error: 'เลือกไม่ซ้ำกันไม่ได้ เพราะจำนวนผลลัพธ์มากกว่าจำนวนตัวเลขในช่วงที่ตั้งไว้' };
    }
    return { min: min, max: max, qty: qty, unique: elUnique.checked };
  }
  function run() {
    if (busy) { return; }
    var input = readInputs();
    if (input.error) { showMessage(input.error); return; }
    showMessage('');
    var list = generate(input.min, input.max, input.qty, input.unique);
    if (list.length !== 1) { render(list); return; }
    busy = true;
    elGo.disabled = true;
    var ticks = 8;
    var timer = setInterval(function () {
      ticks--;
      if (ticks > 0) {
        renderBig(randInt(input.min, input.max));
      } else {
        clearInterval(timer);
        render(list);
        busy = false;
        elGo.disabled = false;
      }
    }, 55);
  }
  function copyText(text, done) {
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(function () { done(true); }, function () { done(fallbackCopy(text)); });
    } else {
      done(fallbackCopy(text));
    }
  }
  function fallbackCopy(text) {
    var ta = document.createElement('textarea');
    ta.value = text;
    ta.setAttribute('readonly', '');
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    var ok = false;
    try { ok = document.execCommand('copy'); } catch (e) { ok = false; }
    document.body.removeChild(ta);
    return ok;
  }
  elGo.addEventListener('click', run);
  elCopy.addEventListener('click', function () {
    if (current.length === 0) { return; }
    copyText(current.join(', '), function (ok) {
      var old = 'คัดลอกผลลัพธ์';
      elCopy.textContent = ok ? 'คัดลอกแล้ว' : 'คัดลอกไม่สำเร็จ';
      setTimeout(function () { elCopy.textContent = old; }, 1500);
    });
  });
  [elMin, elMax, elQty].forEach(function (el) {
    el.addEventListener('keydown', function (e) { if (e.key === 'Enter') { run(); } });
  });
})();
</script>

## วิธีใช้ตัวสุ่มตัวเลข

1. **กรอกช่วงตัวเลข** ใส่ค่าต่ำสุดในช่องซ้าย และค่าสูงสุดในช่องขวา เช่น 1 ถึง 100
2. **ระบุจำนวนผลลัพธ์** ใส่จำนวนตัวเลขที่ต้องการสุ่มในช่อง "จำนวนผลลัพธ์" สุ่มได้สูงสุด 1,000 ค่าต่อครั้ง
3. **เลือกตัวเลือก "ไม่ซ้ำกัน"** ติ๊กถ้าไม่ต้องการให้มีเลขซ้ำ เช่น การจับสลากหรือแบ่งลำดับ ไม่ติ๊กหากยอมให้เลขซ้ำได้
4. **กดปุ่ม "สุ่มตัวเลข"** หรือกด Enter ที่ช่องกรอกตัวเลข ผลลัพธ์จะแสดงทันทีในกรอบด้านล่าง
5. **คัดลอกหรือสุ่มใหม่** กด "คัดลอกผลลัพธ์" เพื่อนำไปวางที่อื่น หรือกดสุ่มซ้ำได้ไม่จำกัดครั้ง

**ตัวอย่างการใช้งาน**

- สุ่มเลข 1 ถึง 6 จำนวน 1 ค่า แทนการทอยลูกเต๋า
- สุ่มเลข 1 ถึง 30 จำนวน 5 ค่า แบบไม่ซ้ำกัน เพื่อเลือกผู้โชคดีจากเลขที่นั่ง
- สุ่มเลข 1 ถึง 2 เพื่อแบ่งทีม หรือตัดสินใจเลือกข้อใดข้อหนึ่ง

## คำอธิบายศัพท์

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| ช่วงตัวเลข | ขอบเขตของตัวเลขที่ตัวสุ่มเลือกได้ ตั้งได้ตั้งแต่ 0 ถึง 999,999 |
| ค่าต่ำสุด (Min) | ตัวเลขที่น้อยที่สุดในช่วงที่สุ่ม ค่านี้มีโอกาสถูกสุ่มได้เช่นกัน |
| ค่าสูงสุด (Max) | ตัวเลขที่มากที่สุดในช่วงที่สุ่ม ค่านี้มีโอกาสถูกสุ่มได้เช่นกัน |
| จำนวนผลลัพธ์ (Quantity) | จำนวนตัวเลขที่ต้องการให้สุ่มออกมาในการกดแต่ละครั้ง สูงสุด 1,000 ค่า |
| ไม่ซ้ำกัน (Unique) | โหมดที่ทำให้ตัวเลขแต่ละค่าออกมาได้เพียงครั้งเดียว จำนวนผลลัพธ์ต้องไม่เกินจำนวนตัวเลขในช่วงที่ตั้งไว้ |
| ผลลัพธ์ (Result) | ตัวเลขที่สุ่มได้ หากสุ่มหลายค่าจะแสดงเป็นรายการ |
| คัดลอกผลลัพธ์ | คัดลอกตัวเลขทั้งหมดไปยังคลิปบอร์ด คั่นด้วยเครื่องหมายจุลภาค |
| RNG (Random Number Generator) | ตัวสร้างตัวเลขสุ่ม คือระบบหรืออัลกอริทึมที่สร้างตัวเลขโดยไม่มีรูปแบบที่คาดเดาได้ |
| crypto.getRandomValues | ฟังก์ชันสุ่มที่มีในเบราว์เซอร์ ใช้ข้อมูลสุ่มจากระบบปฏิบัติการ ให้ผลที่คาดเดายากกว่าวิธีทั่วไป |
| Math.random | ฟังก์ชันสุ่มแบบพื้นฐานของ JavaScript เหมาะกับงานทั่วไป แต่ไม่ควรใช้กับงานด้านความปลอดภัย |
| Mersenne-Twister | อัลกอริทึมสุ่มที่นิยมใช้ในโปรแกรมต่างๆ ให้เลขกระจายตัวดี แต่ไม่ถือว่าปลอดภัยสำหรับงานเข้ารหัส |

ตัวสุ่มตัวเลขนี้ใช้ `crypto.getRandomValues` ในการสร้างตัวเลข และประมวลผลบนเบราว์เซอร์ของคุณทั้งหมด ไม่มีการส่งข้อมูลไปยังเซิร์ฟเวอร์