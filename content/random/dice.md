---
title: ทอยลูกเต๋า ออนไลน์ ฟรี
h1: ทอยลูกเต๋า
description: ทอยลูกเต๋าออนไลน์ฟรี เลือกได้ 1-6 ลูก ภาพเคลื่อนไหว 3 มิติ แสดงแต้มและผลรวมทันที สุ่มยุติธรรม ใช้ได้ทั้งมือถือและคอมพิวเตอร์ เหมาะกับเกมบอร์ดและงานกลุ่ม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-30T09:00:00+07:00'
weight: 28
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- ทอยลูกเต๋า
- ทอยลูกเต๋า ออนไลน์
- สุ่มและคำนวณ
---
<style>
#dx-app{--dx-s:76px;--dx-h:38px;max-width:640px;margin:0 auto;text-align:center}
#dx-app *{box-sizing:border-box}
#dx-picker{display:flex;flex-wrap:wrap;gap:8px;justify-content:center;align-items:center;margin:0 0 12px}
#dx-picker .dx-label{font-size:.95rem;margin-right:4px}
#dx-app button{font:inherit;cursor:pointer;border-radius:10px;border:1px solid rgba(128,128,128,.45);background:rgba(128,128,128,.12);color:inherit;padding:8px 14px;min-width:42px}
#dx-app button:hover{background:rgba(128,128,128,.22)}
#dx-app button:focus-visible{outline:3px solid #3b82f6;outline-offset:2px}
#dx-app button[aria-pressed="true"]{background:#2563eb;border-color:#2563eb;color:#fff}
#dx-stage{display:flex;flex-wrap:wrap;gap:30px;justify-content:center;align-items:center;min-height:190px;padding:34px 12px;border:1px solid rgba(128,128,128,.35);border-radius:16px;background:rgba(128,128,128,.07);cursor:pointer;user-select:none;-webkit-tap-highlight-color:transparent}
.dx-wrap{width:var(--dx-s);height:var(--dx-s);perspective:600px}
.dx-die{position:relative;width:100%;height:100%;transform-style:preserve-3d;transition-property:transform;transition-timing-function:cubic-bezier(.2,.8,.2,1);transition-duration:1s}
.dx-face{position:absolute;width:var(--dx-s);height:var(--dx-s);background:#fff;border:1px solid #cbd5e1;border-radius:14px;box-shadow:inset 0 0 10px rgba(0,0,0,.12);display:grid;grid-template-columns:repeat(3,1fr);grid-template-rows:repeat(3,1fr);padding:10px;place-items:center}
.dx-pip{display:block;width:13px;height:13px;border-radius:50%;background:#1f2937}
.dx-f1 .dx-pip{background:#e11d48;width:17px;height:17px}
.dx-f1{transform:translateZ(var(--dx-h))}
.dx-f6{transform:rotateY(180deg) translateZ(var(--dx-h))}
.dx-f3{transform:rotateY(90deg) translateZ(var(--dx-h))}
.dx-f4{transform:rotateY(-90deg) translateZ(var(--dx-h))}
.dx-f2{transform:rotateX(90deg) translateZ(var(--dx-h))}
.dx-f5{transform:rotateX(-90deg) translateZ(var(--dx-h))}
.dx-flat .dx-face{position:relative;transform:none}
.dx-shake{animation:dx-shake .5s ease-in-out}
@keyframes dx-shake{0%,100%{transform:rotate(0)}20%{transform:rotate(-14deg)}40%{transform:rotate(12deg)}60%{transform:rotate(-8deg)}80%{transform:rotate(6deg)}}
#dx-roll{margin:16px 0 4px;padding:12px 34px;font-size:1.15rem;font-weight:700;background:#2563eb;border-color:#2563eb;color:#fff}
#dx-roll:hover{background:#1d4ed8}
#dx-roll[disabled]{opacity:.6;cursor:wait}
#dx-symbols{font-size:2.4rem;line-height:1.3;min-height:3.1rem;margin-top:8px;letter-spacing:.1em}
#dx-total{font-size:1.2rem;font-weight:700;min-height:1.8rem}
#dx-note{font-size:.95rem;min-height:1.4rem;opacity:.85}
#dx-hist-box{margin-top:18px;text-align:left}
#dx-hist-head{display:flex;justify-content:space-between;align-items:center;margin-bottom:6px}
#dx-hist-head strong{font-size:1rem}
#dx-history{margin:0;padding-left:1.4rem;font-size:.95rem}
#dx-history li{padding:2px 0}
.dx-empty{opacity:.7;font-size:.95rem}
@media (prefers-reduced-motion:reduce){.dx-die{transition-duration:0s!important}.dx-shake{animation:none}}
@media (max-width:480px){#dx-app{--dx-s:64px;--dx-h:32px}#dx-stage{gap:24px;padding:28px 8px}.dx-pip{width:11px;height:11px}.dx-f1 .dx-pip{width:14px;height:14px}.dx-face{padding:8px}}
</style>
<div id="dx-app">
<div id="dx-picker" role="group" aria-label="เลือกจำนวนลูกเต๋า"><span class="dx-label">จำนวนลูกเต๋า:</span></div>
<div id="dx-stage" role="button" tabindex="0" aria-label="แตะเพื่อทอยลูกเต๋า"></div>
<button id="dx-roll" type="button">🎲 ทอยลูกเต๋า</button>
<div aria-live="polite">
<div id="dx-symbols"></div>
<div id="dx-total"></div>
<div id="dx-note">กดปุ่มหรือแตะที่ลูกเต๋าเพื่อเริ่มทอย</div>
</div>
<div id="dx-hist-box">
<div id="dx-hist-head"><strong>ประวัติการทอย</strong><button id="dx-clear" type="button">ล้างประวัติ</button></div>
<ol id="dx-history"></ol>
<div id="dx-empty" class="dx-empty">ยังไม่มีประวัติการทอย</div>
</div>
</div>

<script>
(function () {
var root = document.getElementById('dx-app');
if (!root) { return; }
var stage = document.getElementById('dx-stage');
var picker = document.getElementById('dx-picker');
var btnRoll = document.getElementById('dx-roll');
var btnClear = document.getElementById('dx-clear');
var elSymbols = document.getElementById('dx-symbols');
var elTotal = document.getElementById('dx-total');
var elNote = document.getElementById('dx-note');
var elHist = document.getElementById('dx-history');
var elEmpty = document.getElementById('dx-empty');
var SYM = ['\u2680', '\u2681', '\u2682', '\u2683', '\u2684', '\u2685'];
var PIPS = { 1: [4], 2: [0, 8], 3: [0, 4, 8], 4: [0, 2, 6, 8], 5: [0, 2, 4, 6, 8], 6: [0, 2, 3, 5, 6, 8] };
var ANGLE = { 1: [0, 0], 2: [-90, 0], 3: [0, -90], 4: [0, 90], 5: [90, 0], 6: [0, 180] };
var MAX_HISTORY = 10;
var count = 1;
var dice = [];
var history = [];
var rolls = 0;
var busy = false;
var timer = null;
var supports3d = false;
try {
  supports3d = !!(window.CSS && CSS.supports && CSS.supports('transform-style', 'preserve-3d'));
} catch (e) { supports3d = false; }
var reduceMotion = false;
try {
  reduceMotion = !!(window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches);
} catch (e2) { reduceMotion = false; }
function rnd() {
  try {
    if (window.crypto && window.crypto.getRandomValues) {
      var arr = new Uint32Array(1);
      var limit = Math.floor(4294967296 / 6) * 6;
      do { window.crypto.getRandomValues(arr); } while (arr[0] >= limit);
      return (arr[0] % 6) + 1;
    }
  } catch (e3) { }
  return Math.floor(Math.random() * 6) + 1;
}
function makeFace(v, extraClass) {
  var f = document.createElement('div');
  f.className = 'dx-face ' + extraClass;
  var i;
  for (i = 0; i !== 9; i++) {
    var c = document.createElement('span');
    if (PIPS[v].indexOf(i) !== -1) { c.className = 'dx-pip'; }
    f.appendChild(c);
  }
  return f;
}
function setTransform(d, v, spin) {
  var a = ANGLE[v];
  if (spin) { d.sx += spin[0]; d.sy += spin[1]; }
  d.die.style.transform = 'rotateX(' + (a[0] + d.sx) + 'deg) rotateY(' + (a[1] + d.sy) + 'deg)';
}
function showFlat(d, v) {
  while (d.die.firstChild) { d.die.removeChild(d.die.firstChild); }
  d.die.appendChild(makeFace(v, 'dx-f' + v));
}
function build() {
  while (stage.firstChild) { stage.removeChild(stage.firstChild); }
  dice = [];
  var i;
  for (i = 0; i !== count; i++) {
    var wrap = document.createElement('div');
    wrap.className = 'dx-wrap';
    var die = document.createElement('div');
    die.className = 'dx-die';
    var d = { wrap: wrap, die: die, sx: 0, sy: 0, v: (i % 6) + 1 };
    if (supports3d) {
      var n;
      for (n = 1; n !== 7; n++) { die.appendChild(makeFace(n, 'dx-f' + n)); }
      die.style.transitionDuration = '0s';
      setTransform(d, d.v, null);
    } else {
      wrap.className = 'dx-wrap dx-flat';
      showFlat(d, d.v);
    }
    wrap.appendChild(die);
    stage.appendChild(wrap);
    dice.push(d);
  }
  if (supports3d) {
    void stage.offsetWidth;
    for (i = 0; i !== dice.length; i++) { dice[i].die.style.transitionDuration = ''; }
  }
}
function resetResult() {
  elSymbols.textContent = '';
  elTotal.textContent = '';
  elNote.textContent = 'กดปุ่มหรือแตะที่ลูกเต๋าเพื่อเริ่มทอย';
}
function renderHistory() {
  while (elHist.firstChild) { elHist.removeChild(elHist.firstChild); }
  var i;
  for (i = 0; i !== history.length; i++) {
    var li = document.createElement('li');
    li.textContent = history[i];
    elHist.appendChild(li);
  }
  elEmpty.style.display = history.length === 0 ? 'block' : 'none';
  btnClear.style.display = history.length === 0 ? 'none' : 'inline-block';
}
function finish(vals) {
  var total = 0;
  var syms = [];
  var i;
  for (i = 0; i !== vals.length; i++) { total += vals[i]; syms.push(SYM[vals[i] - 1]); }
  elSymbols.textContent = syms.join(' ');
  elTotal.textContent = vals.length === 1 ? 'แต้มที่ได้: ' + total : 'ผลรวม: ' + total + ' (' + vals.join(' + ') + ')';
  var allSame = vals.length > 1;
  for (i = 1; i !== vals.length; i++) { if (vals[i] !== vals[0]) { allSame = false; } }
  elNote.textContent = allSame ? 'เหมือนกันทุกลูก! 🎉' : '';
  rolls += 1;
  var line = 'ครั้งที่ ' + rolls + ': ' + vals.join(', ');
  if (vals.length > 1) { line += ' (รวม ' + total + ')'; }
  history.unshift(line);
  if (history.length > MAX_HISTORY) { history.pop(); }
  renderHistory();
  busy = false;
  btnRoll.disabled = false;
}
function roll() {
  if (busy) { return; }
  busy = true;
  btnRoll.disabled = true;
  elNote.textContent = 'กำลังทอย...';
  var vals = [];
  var i;
  for (i = 0; i !== dice.length; i++) { vals.push(rnd()); }
  var wait = 0;
  for (i = 0; i !== dice.length; i++) {
    var d = dice[i];
    d.v = vals[i];
    if (supports3d) {
      var secs = reduceMotion ? 0 : 0.9 + i * 0.08;
      d.die.style.transitionDuration = secs + 's';
      setTransform(d, d.v, reduceMotion ? null : [360 * (2 + (i % 2)), 360 * (2 + ((i + 1) % 2))]);
      if (secs * 1000 > wait) { wait = secs * 1000; }
    } else {
      showFlat(d, d.v);
      if (!reduceMotion) {
        d.wrap.classList.remove('dx-shake');
        void d.wrap.offsetWidth;
        d.wrap.classList.add('dx-shake');
        wait = 500;
      }
    }
  }
  if (timer) { clearTimeout(timer); }
  timer = setTimeout(function () { finish(vals); }, wait + 80);
}
function setCount(n) {
  if (busy) { return; }
  count = n;
  var btns = picker.getElementsByTagName('button');
  var i;
  for (i = 0; i !== btns.length; i++) {
    btns[i].setAttribute('aria-pressed', String(i + 1 === n));
  }
  build();
  resetResult();
}
(function initPicker() {
  var n;
  for (n = 1; n !== 7; n++) {
    var b = document.createElement('button');
    b.type = 'button';
    b.textContent = String(n);
    b.setAttribute('aria-pressed', n === count ? 'true' : 'false');
    b.setAttribute('aria-label', n + ' ลูก');
    (function (num) { b.addEventListener('click', function () { setCount(num); }); })(n);
    picker.appendChild(b);
  }
})();
btnRoll.addEventListener('click', roll);
stage.addEventListener('click', roll);
stage.addEventListener('keydown', function (ev) {
  if (ev.key === 'Enter' || ev.key === ' ') { ev.preventDefault(); roll(); }
});
btnClear.addEventListener('click', function () {
  history = [];
  rolls = 0;
  renderHistory();
});
build();
renderHistory();
})();
</script>

## วิธีใช้งานเครื่องมือทอยลูกเต๋า

1. **เลือกจำนวนลูกเต๋า** กดตัวเลข 1 ถึง 6 ด้านบน เพื่อกำหนดว่าจะทอยพร้อมกันกี่ลูก (ค่าเริ่มต้นคือ 1 ลูก)
2. **กดปุ่ม "ทอยลูกเต๋า"** หรือแตะ/คลิกที่ลูกเต๋าโดยตรง ลูกเต๋าจะหมุนเป็นภาพเคลื่อนไหว 3 มิติ หากใช้คีย์บอร์ด กด Enter หรือ Space ที่กรอบลูกเต๋าได้เช่นกัน
3. **ดูผลลัพธ์** เมื่อลูกเต๋าหยุดหมุน ระบบจะแสดงสัญลักษณ์ลูกเต๋า แต้มของแต่ละลูก และผลรวมทันที
4. **ทอยซ้ำ** กดทอยได้ไม่จำกัดจำนวนครั้ง โดยผลแต่ละครั้งเป็นอิสระต่อกัน ไม่เกี่ยวกับครั้งก่อนหน้า
5. **ดูประวัติ** รายการด้านล่างเก็บผลการทอยล่าสุด 10 ครั้ง กด "ล้างประวัติ" เพื่อเริ่มนับใหม่
6. **เปลี่ยนจำนวนลูก** เมื่อเลือกจำนวนใหม่ ลูกเต๋าบนหน้าจอจะถูกจัดเรียงใหม่ และผลลัพธ์ที่แสดงอยู่จะถูกล้าง แต่ประวัติยังอยู่

## ความหมายของคำศัพท์

| คำศัพท์ | ความหมายโดยสังเขป |
|---|---|
| ลูกเต๋า (Dice) | ลูกบาศก์ 6 หน้า แต่ละหน้ามีจุดแทนแต้ม 1 ถึง 6 ใช้สุ่มตัวเลขในเกมและการตัดสินใจ |
| แต้ม (Pips) | จุดบนหน้าลูกเต๋า จำนวนจุดคือค่าของแต้มที่ทอยได้ |
| ผลรวม (Total) | ผลบวกของแต้มจากลูกเต๋าทุกลูกที่ทอยในครั้งเดียวกัน |
| ตัวเลขสุ่ม (Random Number) | ตัวเลขที่ไม่สามารถคาดเดาได้ล่วงหน้า เครื่องมือนี้ใช้ตัวสุ่มของเบราว์เซอร์ให้ทุกแต้มมีโอกาสเท่ากัน |
| ความน่าจะเป็น (Probability) | โอกาสที่เหตุการณ์จะเกิดขึ้น ลูกเต๋า 1 ลูกออกแต้มใดแต้มหนึ่งได้ 1 ใน 6 หรือประมาณ 16.67% |
| แต้มซ้ำ (Doublet) | ทอยหลายลูกแล้วได้แต้มเหมือนกัน เช่น ทอย 2 ลูกได้ 4 กับ 4 โอกาสเกิดประมาณ 16.67% ส่วนทอย 3 ลูกแล้วมีอย่างน้อย 2 ลูกซ้ำกันประมาณ 44.44% |
| ภาพเคลื่อนไหว 3 มิติ | ลูกเต๋าหมุนด้วยเทคโนโลยี CSS3 ใช้เพื่อความสนุกเท่านั้น ผลแต้มถูกสุ่มก่อน แล้วลูกเต๋าจึงหมุนไปหยุดที่หน้านั้น |
| โหมดภาพนิ่ง 2 มิติ | โหมดสำรองสำหรับเบราว์เซอร์รุ่นเก่าที่ไม่รองรับภาพ 3 มิติ ผลลัพธ์ยังถูกต้องเหมือนเดิม |
| สัญลักษณ์ลูกเต๋า (⚀ ⚁ ⚂ ⚃ ⚄ ⚅) | ตัวอักษรยูนิโค้ดแทนหน้าลูกเต๋า 1 ถึง 6 คัดลอกไปวางในข้อความได้ |
| ประวัติการทอย | รายการผลการทอยล่าสุดที่เก็บไว้ชั่วคราวในหน้านี้ รีเฟรชหน้าเว็บแล้วจะหายไป |