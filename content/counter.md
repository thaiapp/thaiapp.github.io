---
title: เครื่องนับจำนวน ออนไลน์ ฟรี
h1: เครื่องนับจำนวน
description: เครื่องนับจำนวนออนไลน์ฟรี กดปุ่ม + หรือ − เพื่อนับคะแนน นับคน หรือนับจำนวนครั้ง แก้ไขชื่อได้ บันทึกอัตโนมัติ ไม่ต้องติดตั้ง ใช้ได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 18
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- เครื่องนับจำนวน
- เครื่องนับจำนวน ออนไลน์
- สุ่มและคำนวณ
---
<style>
.cnt-app{--c-bg:#fff;--c-fg:#1f2937;--c-dim:#c4c9d1;--c-line:#d9dde3;--c-main:#2563eb;--c-minus:#e11d48;--c-soft:#f3f5f8;max-width:520px;margin:0 auto 1.5rem;padding:1rem;border:1px solid var(--c-line);border-radius:16px;background:var(--c-bg);color:var(--c-fg);font-family:inherit;box-sizing:border-box}
@media (prefers-color-scheme:dark){.cnt-app{--c-bg:#1b1f27;--c-fg:#f1f3f6;--c-dim:#4a5160;--c-line:#343b48;--c-soft:#262c37}}
.cnt-app *{box-sizing:border-box}
.cnt-app button{font:inherit;cursor:pointer;border:1px solid var(--c-line);background:var(--c-soft);color:var(--c-fg);border-radius:10px;padding:.45rem .9rem;-webkit-tap-highlight-color:transparent}
.cnt-app button:hover{filter:brightness(.96)}
.cnt-app button:focus-visible,.cnt-app input:focus-visible,.cnt-display:focus-visible{outline:3px solid var(--c-main);outline-offset:2px}
.cnt-toolbar{display:flex;gap:.5rem;justify-content:flex-end;margin-bottom:.75rem;flex-wrap:wrap}
.cnt-name{display:block;width:100%;text-align:center;font-size:1.15rem;font-weight:600;border:0;border-bottom:2px dashed var(--c-line);background:transparent;color:inherit;padding:.4rem;margin-bottom:.5rem}
.cnt-display{display:block;width:100%;text-align:center;font-size:clamp(3.5rem,18vw,6.5rem);line-height:1.15;font-weight:700;font-variant-numeric:tabular-nums;cursor:text;padding:.25rem 0;border-radius:12px;word-break:break-all}
.cnt-display .dim{color:var(--c-dim)}
.cnt-edit{display:block;width:100%;text-align:center;font-size:clamp(3.5rem,18vw,6.5rem);font-weight:700;font-variant-numeric:tabular-nums;border:2px solid var(--c-main);border-radius:12px;background:transparent;color:inherit;padding:0}
.cnt-btns{display:grid;grid-template-columns:1fr 1fr;gap:.75rem;margin-top:.75rem}
.cnt-app .cnt-btn{font-size:2.6rem;line-height:1;padding:.7rem 0;color:#fff;border:0;border-radius:14px;user-select:none;touch-action:manipulation}
.cnt-app .cnt-minus{background:var(--c-minus)}
.cnt-app .cnt-plus{background:var(--c-main)}
.cnt-row{display:grid;grid-template-columns:1fr auto auto auto auto;gap:.4rem;align-items:center;padding:.45rem;border:1px solid var(--c-line);border-radius:12px;margin-bottom:.5rem}
.cnt-row.on{border-color:var(--c-main);box-shadow:0 0 0 1px var(--c-main)}
.cnt-row input{min-width:0;width:100%;border:0;border-bottom:1px dashed var(--c-line);background:transparent;color:inherit;font:inherit;padding:.25rem}
.cnt-row .val{min-width:3.2rem;text-align:center;font-weight:700;font-size:1.3rem;font-variant-numeric:tabular-nums;cursor:pointer}
.cnt-row button{padding:.3rem .7rem;font-size:1.2rem}
.cnt-hint{margin:.75rem 0 0;font-size:.85rem;opacity:.75;text-align:center}
.cnt-app [hidden]{display:none!important}
</style>
<div class="cnt-app" id="cnt-app">
<div class="cnt-toolbar">
<button type="button" id="cnt-view">มุมมองรายการ</button>
<button type="button" id="cnt-reset">รีเซ็ต</button>
</div>
<div id="cnt-single">
<input type="text" class="cnt-name" id="cnt-name" maxlength="40" placeholder="ตั้งชื่อตัวนับ" aria-label="ชื่อตัวนับ">
<div class="cnt-display" id="cnt-display" role="button" tabindex="0" aria-live="polite" title="คลิกเพื่อแก้ไขตัวเลข"></div>
<div class="cnt-btns">
<button type="button" class="cnt-btn cnt-minus" id="cnt-minus" aria-label="ลดหนึ่ง">－</button>
<button type="button" class="cnt-btn cnt-plus" id="cnt-plus" aria-label="เพิ่มหนึ่ง">＋</button>
</div>
</div>
<div id="cnt-list" hidden>
<div id="cnt-rows"></div>
<button type="button" id="cnt-add">＋ เพิ่มตัวนับ</button>
</div>
<p class="cnt-hint">กด + หรือ Space เพื่อเพิ่ม · กด − เพื่อลด</p>
</div>
<script>
(function () {
  'use strict';
  var MIN = -99999, MAX = 999999, LIMIT = 50, KEY = 'counter-tool-v1';
  var state = { counters: [{ n: '', v: 0 }], active: 0, view: 'single' };
  var $ = function (id) { return document.getElementById(id); };
  var app = $('cnt-app');
  if (!app) { return; }
  var elName = $('cnt-name'), elDisplay = $('cnt-display');
  var elSingle = $('cnt-single'), elList = $('cnt-list'), elRows = $('cnt-rows');
  var elView = $('cnt-view');
  function clamp(v) {
    v = parseInt(v, 10);
    if (isNaN(v)) { v = 0; }
    return Math.max(MIN, Math.min(MAX, v));
  }
  function load() {
    try {
      var raw = localStorage.getItem(KEY);
      if (!raw) { return; }
      var s = JSON.parse(raw);
      if (s && Array.isArray(s.counters) && s.counters.length) {
        state.counters = s.counters.slice(0, LIMIT).map(function (c) {
          return { n: String((c && c.n) || '').slice(0, 40), v: clamp(c && c.v) };
        });
        state.active = Math.max(0, Math.min(state.counters.length - 1, parseInt(s.active, 10) || 0));
        state.view = s.view === 'list' ? 'list' : 'single';
      }
    } catch (e) { /* ignore broken storage */ }
  }
  function save() {
    try { localStorage.setItem(KEY, JSON.stringify(state)); } catch (e) { /* storage unavailable */ }
  }
  function fmt(v) {
    var abs = String(Math.abs(v));
    var padded = abs.padStart(4, '0');
    var zeros = padded.length - abs.length;
    return (v < 0 ? '-' : '') + (zeros > 0 ? '<span class="dim">' + padded.slice(0, zeros) + '</span>' : '') + abs;
  }
  function current() { return state.counters[state.active]; }
  function render() {
    var isList = state.view === 'list';
    elSingle.hidden = isList;
    elList.hidden = !isList;
    elView.textContent = isList ? 'มุมมองเดี่ยว' : 'มุมมองรายการ';
    if (!isList) {
      var c = current();
      if (document.activeElement !== elName) { elName.value = c.n; }
      elDisplay.innerHTML = fmt(c.v);
    } else {
      renderRows();
    }
  }
  function renderRows() {
    elRows.innerHTML = '';
    state.counters.forEach(function (c, i) {
      var row = document.createElement('div');
      row.className = 'cnt-row' + (i === state.active ? ' on' : '');
      var name = document.createElement('input');
      name.type = 'text'; name.maxLength = 40; name.value = c.n;
      name.placeholder = 'ตัวนับ ' + (i + 1);
      name.setAttribute('aria-label', 'ชื่อตัวนับ ' + (i + 1));
      name.addEventListener('input', function () { c.n = name.value; save(); });
      name.addEventListener('focus', function () { state.active = i; });
      var minus = document.createElement('button');
      minus.type = 'button'; minus.textContent = '－'; minus.setAttribute('aria-label', 'ลดหนึ่ง');
      minus.addEventListener('click', function () { state.active = i; step(-1); });
      var val = document.createElement('div');
      val.className = 'val'; val.textContent = c.v; val.title = 'คลิกเพื่อแก้ไขตัวเลข';
      val.addEventListener('click', function () {
        var input = window.prompt('ใส่ตัวเลข (' + MIN + ' ถึง ' + MAX + ')', c.v);
        if (input !== null) { c.v = clamp(input); state.active = i; save(); render(); }
      });
      var plus = document.createElement('button');
      plus.type = 'button'; plus.textContent = '＋'; plus.setAttribute('aria-label', 'เพิ่มหนึ่ง');
      plus.addEventListener('click', function () { state.active = i; step(1); });
      var del = document.createElement('button');
      del.type = 'button'; del.textContent = '✕'; del.setAttribute('aria-label', 'ลบตัวนับ');
      del.disabled = state.counters.length === 1;
      del.addEventListener('click', function () {
        state.counters.splice(i, 1);
        state.active = Math.max(0, Math.min(state.counters.length - 1, state.active));
        save(); render();
      });
      row.appendChild(name); row.appendChild(minus); row.appendChild(val);
      row.appendChild(plus); row.appendChild(del);
      elRows.appendChild(row);
    });
  }
  function step(d) {
    var c = current();
    c.v = clamp(c.v + d);
    keepAwake();
    save(); render();
  }
  var lock = null;
  function keepAwake() {
    try {
      if ('wakeLock' in navigator && !lock) {
        navigator.wakeLock.request('screen').then(function (l) {
          lock = l;
          l.addEventListener('release', function () { lock = null; });
        }).catch(function () { lock = null; });
      }
    } catch (e) { lock = null; }
  }
  document.addEventListener('visibilitychange', function () {
    if (document.visibilityState === 'visible') { lock = null; }
  });
  function editNumber() {
    var c = current();
    var input = document.createElement('input');
    input.type = 'text'; input.className = 'cnt-edit'; input.value = c.v;
    input.setAttribute('inputmode', 'numeric'); input.setAttribute('aria-label', 'แก้ไขตัวเลข');
    elDisplay.hidden = true;
    elDisplay.parentNode.insertBefore(input, elDisplay);
    input.focus(); input.select();
    var done = false;
    function finish(ok) {
      if (done) { return; }
      done = true;
      if (ok) { c.v = clamp(input.value); save(); }
      if (input.parentNode) { input.parentNode.removeChild(input); }
      elDisplay.hidden = false;
      render();
    }
    input.addEventListener('keydown', function (e) {
      e.stopPropagation();
      if (e.key === 'Enter') { finish(true); }
      if (e.key === 'Escape') { finish(false); }
    });
    input.addEventListener('blur', function () { finish(true); });
  }
  $('cnt-plus').addEventListener('click', function () { step(1); });
  $('cnt-minus').addEventListener('click', function () { step(-1); });
  elDisplay.addEventListener('click', editNumber);
  elDisplay.addEventListener('keydown', function (e) {
    if (e.key === 'Enter') { e.preventDefault(); editNumber(); }
  });
  elName.addEventListener('input', function () { current().n = elName.value; save(); });
  elView.addEventListener('click', function () {
    state.view = state.view === 'list' ? 'single' : 'list';
    save(); render();
  });
  $('cnt-add').addEventListener('click', function () {
    if (state.counters.length >= LIMIT) { return; }
    state.counters.push({ n: '', v: 0 });
    state.active = state.counters.length - 1;
    save(); render();
  });
  $('cnt-reset').addEventListener('click', function () {
    if (state.view === 'list') {
      if (!window.confirm('รีเซ็ตตัวนับทั้งหมดเป็น 0 ใช่หรือไม่?')) { return; }
      state.counters.forEach(function (c) { c.v = 0; });
    } else {
      if (!window.confirm('รีเซ็ตตัวเลขเป็น 0 ใช่หรือไม่?')) { return; }
      current().v = 0;
    }
    save(); render();
  });
  document.addEventListener('keydown', function (e) {
    var t = e.target, tag = t && t.tagName ? t.tagName.toLowerCase() : '';
    if (tag === 'input' || tag === 'textarea' || tag === 'select' || (t && t.isContentEditable)) { return; }
    if (e.ctrlKey || e.metaKey || e.altKey) { return; }
    if (tag === 'button' && e.key === ' ') { return; }
    if (e.key === '+' || e.key === '=' || e.key === ' ') { e.preventDefault(); step(1); }
    else if (e.key === '-' || e.key === '_') { e.preventDefault(); step(-1); }
  });
  load();
  render();
})();</script>

## วิธีใช้เครื่องนับจำนวน

1. **เปิดหน้านี้ได้ทันที** ไม่ต้องติดตั้งหรือสมัครสมาชิก ตัวเลขเริ่มต้นที่ 0000
2. **กดปุ่ม ＋** เพื่อเพิ่มทีละ 1 หรือ **กดปุ่ม －** เพื่อลดทีละ 1
3. **ใช้คีย์บอร์ดแทนการคลิก** กด `+` หรือ `Space` เพื่อเพิ่ม และกด `-` เพื่อลด
4. **ตั้งชื่อตัวนับ** โดยพิมพ์ในช่องชื่อด้านบนตัวเลข เช่น "ผู้เข้าร่วม" หรือ "ทีม A"
5. **แก้ไขตัวเลขโดยตรง** ด้วยการคลิกที่ตัวเลข พิมพ์ค่าที่ต้องการ แล้วกด Enter (กด Esc เพื่อยกเลิก)
6. **นับหลายรายการพร้อมกัน** โดยกด "มุมมองรายการ" แล้วกด "เพิ่มตัวนับ" ได้สูงสุด 50 ตัว
7. **เริ่มนับใหม่** ด้วยปุ่ม "รีเซ็ต" ระบบจะถามยืนยันก่อนล้างตัวเลขเป็น 0
8. **รีเฟรชหรือปิดหน้าได้** ข้อมูลถูกบันทึกในเบราว์เซอร์ของคุณ เมื่อกลับมาเปิดใหม่ตัวเลขยังอยู่เหมือนเดิม

## คำอธิบายศัพท์

- **ตัวนับ (Counter):** ช่องแสดงตัวเลขหนึ่งชุดที่เพิ่มหรือลดค่าได้ ใช้นับคน คะแนน หรือจำนวนครั้ง
- **ปุ่ม ＋ (เพิ่ม):** เพิ่มค่าตัวนับขึ้นทีละ 1 ใช้แทนด้วยปุ่ม `+` หรือ `Space` บนคีย์บอร์ดได้
- **ปุ่ม － (ลด):** ลดค่าตัวนับลงทีละ 1 ใช้แทนด้วยปุ่ม `-` บนคีย์บอร์ดได้
- **ชื่อตัวนับ:** ข้อความที่ตั้งเองเพื่อบอกว่ากำลังนับอะไร ช่วยแยกแยะเมื่อใช้หลายตัวนับ
- **ตัวเลขนำหน้า (Leading zeros):** เลขศูนย์สีจางที่แสดงให้ครบ 4 หลักตั้งแต่เริ่มต้น เมื่อเกิน 9999 จะขยายเป็น 5 หลักขึ้นไปโดยอัตโนมัติ
- **ช่วงตัวเลข:** ค่าที่นับได้อยู่ระหว่าง -99999 ถึง 999999 หากเกินกว่านี้ระบบจะหยุดที่ค่าสูงสุดหรือต่ำสุด
- **มุมมองรายการ (List view):** โหมดแสดงตัวนับหลายตัวเรียงกัน ใช้เมื่อต้องนับหลายอย่างพร้อมกัน เช่น คะแนนหลายทีม
- **รีเซ็ต (Reset):** ล้างค่าตัวเลขกลับเป็น 0 ในมุมมองเดี่ยวจะรีเซ็ตตัวนับปัจจุบัน ในมุมมองรายการจะรีเซ็ตทุกตัว
- **บันทึกอัตโนมัติ:** เครื่องมือจัดเก็บข้อมูลไว้ในเบราว์เซอร์ (localStorage) ของอุปกรณ์คุณ ไม่ส่งไปยังเซิร์ฟเวอร์ และจะหายหากล้างข้อมูลเบราว์เซอร์
- **หน้าจอไม่ดับ (Wake Lock):** เมื่อกดนับ เบราว์เซอร์ที่รองรับจะพยายามไม่ปิดหน้าจอ เพื่อให้นับต่อเนื่องได้สะดวก
- **ปุ่มลัดคีย์บอร์ด:** คีย์ที่ใช้แทนการคลิกเมาส์ ได้แก่ `+` หรือ `Space` สำหรับเพิ่ม และ `-` สำหรับลด