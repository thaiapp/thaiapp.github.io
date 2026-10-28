---
title: สกอร์บอร์ด ออนไลน์ ฟรี
h1: สกอร์บอร์ด
description: 'สกอร์บอร์ดออนไลน์ฟรี ใช้งานง่าย กดเพิ่มลดคะแนนได้ทันที ตั้งชื่อทีม สลับฝั่ง เลือกธีม และเต็มหน้าจอได้ เหมาะกับกีฬา ควิซ และเกมกระดาน ไม่ต้องสมัครสมาชิก'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-27T09:00:00+07:00'
weight: 3
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สกอร์บอร์ด
- สกอร์บอร์ด ออนไลน์
- สุ่มและคำนวณ
---
<div class="sb-app" id="sb-app">
<style>
.sb-app{max-width:900px;margin:0 auto 24px}
.sb-app *{box-sizing:border-box}
.sb-board{--bg:#0f172a;--card:#1e293b;--fg:#f8fafc;--acc:#38bdf8;--font:inherit;background:var(--bg);color:var(--fg);font-family:var(--font);border-radius:16px;padding:12px;position:relative}
.sb-board[data-theme=bright]{--bg:#e2e8f0;--card:#ffffff;--fg:#0f172a;--acc:#2563eb}
.sb-board[data-theme=led]{--bg:#000000;--card:#0b0b0b;--fg:#ff2a1a;--acc:#ff2a1a;--font:"Courier New",monospace}
.sb-board[data-theme=led] .sb-score,.sb-board[data-theme=led] .sb-sm{text-shadow:0 0 12px #ff2a1a}
.sb-board[data-theme=red-blue]{--acc:#ffffff}
.sb-board[data-theme=red-blue] .sb-t0{background:#dc2626}
.sb-board[data-theme=red-blue] .sb-t1{background:#2563eb}
.sb-board[data-theme=flip]{--bg:#111111;--card:#1a1a1a;--fg:#f5f5f5;--acc:#facc15}
.sb-board[data-theme=flip] .sb-score{background-color:#000000;background-image:linear-gradient(to bottom,transparent calc(50% - 2px),rgba(255,255,255,.18) calc(50% - 2px),rgba(255,255,255,.18) calc(50% + 2px),transparent calc(50% + 2px));border-radius:12px}
.sb-board[data-theme=chalk]{--bg:#26433a;--card:#2f5247;--fg:#f8fafc;--acc:#fde68a;--font:"Comic Sans MS","Chalkboard SE",cursive}
.sb-board[data-theme=chalk] .sb-team{border:2px dashed rgba(255,255,255,.5)}
.sb-teams{display:grid;grid-template-columns:1fr 1fr;gap:12px}
.sb-team{background:var(--card);border-radius:12px;padding:12px;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:8px;min-width:0}
.sb-name,.sb-name-in{font-family:inherit;font-size:clamp(16px,3vw,28px);font-weight:700;text-align:center;width:100%;color:var(--fg);background:transparent;border:0;padding:4px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.sb-name-in,.sb-score-in,.sb-small-in{border:2px dashed var(--acc);border-radius:8px;background:rgba(127,127,127,.12);color:var(--fg);font-family:inherit}
.sb-score{position:relative;font-family:inherit;font-size:clamp(64px,18vw,180px);line-height:1.05;font-weight:800;font-variant-numeric:tabular-nums;width:100%;background:transparent;border:0;color:var(--fg);cursor:pointer;padding:4px 0;user-select:none;-webkit-user-select:none;touch-action:manipulation}
.sb-score-in{width:100%;text-align:center;font-size:clamp(40px,10vw,100px);font-weight:800;padding:4px}
.sb-small{display:flex;gap:8px;justify-content:center;flex-wrap:wrap}
.sb-sm{position:relative;min-width:56px;height:56px;padding:0 12px;font-family:inherit;font-size:clamp(24px,5vw,40px);font-weight:700;border-radius:10px;border:2px solid var(--acc);background:transparent;color:var(--fg);cursor:pointer;touch-action:manipulation}
.sb-small-in{width:76px;height:56px;text-align:center;font-size:24px;font-weight:700}
.sb-minus .sb-score::after,.sb-minus .sb-sm::after{content:"-1";position:absolute;top:2px;right:2px;font-size:14px;line-height:22px;padding:0 8px;border-radius:8px;background:#ef4444;color:#ffffff;font-weight:700;text-shadow:none}
.sb-pop{animation:sbpop .25s ease}
.sb-board[data-theme=flip] .sb-pop,.sb-board[data-theme=red-blue] .sb-pop{animation:sbflip .35s ease}
@keyframes sbpop{0%{transform:scale(.9);opacity:.6}100%{transform:scale(1);opacity:1}}
@keyframes sbflip{0%{transform:rotateX(90deg)}100%{transform:rotateX(0deg)}}
.sb-fsbar{display:none;position:absolute;top:8px;left:50%;transform:translateX(-50%);gap:8px;z-index:3}
.sb-fsbar button{padding:6px 14px;border-radius:999px;border:1px solid var(--acc);background:rgba(0,0,0,.45);color:#ffffff;font:inherit;cursor:pointer}
.sb-fsbar button[aria-pressed=true]{background:#ef4444;border-color:#ef4444}
.sb-board.sb-full{width:100%;height:100%;display:flex;flex-direction:column;justify-content:center;border-radius:0;padding:5vmin 2vmin 2vmin}
.sb-board.sb-full .sb-teams{flex:1}
.sb-board.sb-full .sb-score{font-size:min(30vw,48vh)}
.sb-board.sb-full .sb-fsbar{display:flex}
.sb-board.sb-fake{position:fixed;top:0;right:0;bottom:0;left:0;z-index:9999}
.sb-ctl{display:flex;flex-wrap:wrap;gap:8px;margin-top:12px;align-items:center}
.sb-ctl button,.sb-ctl select{padding:8px 14px;border-radius:10px;border:1px solid #cbd5e1;background:#ffffff;color:#0f172a;font:inherit;cursor:pointer}
.sb-ctl button[aria-pressed=true]{background:#2563eb;border-color:#2563eb;color:#ffffff}
.sb-ctl label{display:inline-flex;align-items:center;gap:6px}
@media (max-width:480px){.sb-team{padding:8px}.sb-teams{gap:8px}.sb-sm{min-width:48px;height:48px}}
</style>
<div class="sb-board" id="sb-board" data-theme="default">
<div class="sb-fsbar"><button type="button" id="sb-minus2" aria-pressed="false">-1</button><button type="button" id="sb-exit">ออก</button></div>
<div class="sb-teams" id="sb-teams"></div>
</div>
<div class="sb-ctl">
<button type="button" id="sb-minus" aria-pressed="false" title="กดค้าง 1 วินาทีเพื่อรีเซ็ตเป็น 0">-1</button>
<button type="button" id="sb-edit" aria-pressed="false">แก้ไข</button>
<button type="button" id="sb-names" aria-pressed="true">ชื่อทีม</button>
<button type="button" id="sb-swap">สลับฝั่ง</button>
<label>เซต <select id="sb-count"><option value="0">ซ่อน</option><option value="1">ตัวเลข 1 จำนวน</option><option value="2">ตัวเลข 2 จำนวน</option></select></label>
<label>ธีม <select id="sb-theme"><option value="default">ค่าเริ่มต้น</option><option value="bright">สไตล์สว่าง</option><option value="led">จอ LED</option><option value="red-blue">ทีมสีแดง / ทีมสีน้ำเงิน</option><option value="flip">นาฬิกาฟลิป</option><option value="chalk">กระดานดำ</option></select></label>
<button type="button" id="sb-reset">รีเซ็ตคะแนน</button>
<button type="button" id="sb-full">เต็มหน้าจอ</button>
<button type="button" id="sb-clear">ลบข้อมูลทั้งหมด</button>
</div>
<script>
(function () {
'use strict';
var KEY = 'scoreboard_v1';
var THEMES = ['default', 'bright', 'led', 'red-blue', 'flip', 'chalk'];
function def() {
return { teams: [{ n: 'บ้าน', s: 0, c: [0, 0] }, { n: 'ผู้มาเยือน', s: 0, c: [0, 0] }], swap: false, names: true, count: 1, theme: 'default' };
}
function num(v) {
v = parseInt(v, 10);
if (isNaN(v)) { return 0; }
return Math.min(999, Math.max(0, v));
}
function load() {
var b = def();
try {
var r = window.localStorage.getItem(KEY);
if (!r) { return b; }
var d = JSON.parse(r);
if (!d || !Array.isArray(d.teams)) { return b; }
var idx = [0, 1];
idx.forEach(function (i) {
var t = d.teams[i];
if (!t) { return; }
if (typeof t.n === 'string') { b.teams[i].n = t.n.slice(0, 20); }
b.teams[i].s = num(t.s);
if (Array.isArray(t.c)) { b.teams[i].c = [num(t.c[0]), num(t.c[1])]; }
});
b.swap = d.swap === true;
b.names = d.names !== false;
if (d.count === 0 || d.count === 1 || d.count === 2) { b.count = d.count; }
if (THEMES.indexOf(d.theme) > -1) { b.theme = d.theme; }
} catch (e) { }
return b;
}
var st = load();
var minus = false;
var edit = false;
var last = null;
var wake = null;
var fake = false;
function $(id) { return document.getElementById(id); }
function save() {
try { window.localStorage.setItem(KEY, JSON.stringify(st)); } catch (e) { }
}
function el(tag, cls, txt) {
var e = document.createElement(tag);
if (cls) { e.className = cls; }
if (txt !== undefined) { e.textContent = txt; }
return e;
}
function bump(i, key, k, d) {
var t = st.teams[i];
if (key === 's') { t.s = num(t.s + d); } else { t.c[k] = num(t.c[k] + d); }
last = { i: i, key: key, k: k };
save();
render();
}
function zero() {
st.teams.forEach(function (t) { t.s = 0; t.c = [0, 0]; });
last = null;
save();
render();
}
function card(i) {
var t = st.teams[i];
var c = el('div', 'sb-team sb-t' + i);
if (minus && !edit) { c.classList.add('sb-minus'); }
if (st.names) {
if (edit) {
var ni = el('input', 'sb-name-in');
ni.type = 'text';
ni.maxLength = 20;
ni.value = t.n;
ni.setAttribute('aria-label', 'ชื่อทีม');
ni.addEventListener('input', function () { t.n = ni.value; save(); });
c.appendChild(ni);
} else {
c.appendChild(el('div', 'sb-name', t.n));
}
}
if (edit) {
var si = el('input', 'sb-score-in');
si.type = 'number';
si.min = '0';
si.max = '999';
si.value = String(t.s);
si.setAttribute('aria-label', 'คะแนน');
si.addEventListener('input', function () { t.s = num(si.value); save(); });
c.appendChild(si);
} else {
var sb = el('button', 'sb-score', String(t.s));
sb.type = 'button';
sb.setAttribute('aria-label', 'คะแนน ' + t.n);
sb.addEventListener('click', function () { bump(i, 's', 0, minus ? -1 : 1); });
if (last && last.i === i && last.key === 's') { sb.classList.add('sb-pop'); }
c.appendChild(sb);
}
if (st.count > 0) {
var w = el('div', 'sb-small');
[0, 1].slice(0, st.count).forEach(function (k) {
if (edit) {
var ci = el('input', 'sb-small-in');
ci.type = 'number';
ci.min = '0';
ci.max = '999';
ci.value = String(t.c[k]);
ci.setAttribute('aria-label', 'ตัวเลข ' + (k + 1));
ci.addEventListener('input', function () { t.c[k] = num(ci.value); save(); });
w.appendChild(ci);
} else {
var cb = el('button', 'sb-sm', String(t.c[k]));
cb.type = 'button';
cb.setAttribute('aria-label', 'ตัวเลข ' + (k + 1) + ' ของ ' + t.n);
cb.addEventListener('click', function () { bump(i, 'c', k, minus ? -1 : 1); });
if (last && last.i === i && last.key === 'c' && last.k === k) { cb.classList.add('sb-pop'); }
w.appendChild(cb);
}
});
c.appendChild(w);
}
return c;
}
function render() {
var tm = $('sb-teams');
tm.textContent = '';
var order = st.swap ? [1, 0] : [0, 1];
order.forEach(function (i) { tm.appendChild(card(i)); });
$('sb-board').setAttribute('data-theme', st.theme);
$('sb-minus').setAttribute('aria-pressed', String(minus));
$('sb-minus2').setAttribute('aria-pressed', String(minus));
$('sb-edit').setAttribute('aria-pressed', String(edit));
$('sb-names').setAttribute('aria-pressed', String(st.names));
$('sb-count').value = String(st.count);
$('sb-theme').value = st.theme;
last = null;
}
function bindMinus(b) {
var timer = null;
var long = false;
function down() {
long = false;
clearTimeout(timer);
timer = setTimeout(function () { long = true; zero(); }, 1000);
}
function up() { clearTimeout(timer); }
b.addEventListener('pointerdown', down);
b.addEventListener('pointerup', up);
b.addEventListener('pointerleave', up);
b.addEventListener('pointercancel', up);
b.addEventListener('click', function () {
if (long) { long = false; return; }
minus = !minus;
render();
});
}
function lock() {
try {
if (navigator.wakeLock && !wake) {
navigator.wakeLock.request('screen').then(function (s) {
wake = s;
s.addEventListener('release', function () { wake = null; });
}).catch(function () { });
}
} catch (e) { }
}
function unlock() {
try { if (wake) { wake.release(); wake = null; } } catch (e) { }
}
function isFull() {
return !!(document.fullscreenElement || document.webkitFullscreenElement) || fake;
}
function sync() {
var f = isFull();
$('sb-board').classList.toggle('sb-full', f);
if (f) { lock(); } else { unlock(); }
}
function useFake() {
fake = true;
$('sb-board').classList.add('sb-fake');
sync();
}
function toggleFull() {
var b = $('sb-board');
try {
if (document.fullscreenElement || document.webkitFullscreenElement) {
var ex = document.exitFullscreen || document.webkitExitFullscreen;
ex.call(document);
} else if (fake) {
fake = false;
b.classList.remove('sb-fake');
sync();
} else {
var rq = b.requestFullscreen || b.webkitRequestFullscreen;
if (rq) {
var p = rq.call(b);
if (p && p.catch) { p.catch(useFake); }
} else {
useFake();
}
}
} catch (e) { useFake(); }
}
bindMinus($('sb-minus'));
bindMinus($('sb-minus2'));
$('sb-edit').addEventListener('click', function () { edit = !edit; render(); });
$('sb-names').addEventListener('click', function () { st.names = !st.names; save(); render(); });
$('sb-swap').addEventListener('click', function () { st.swap = !st.swap; save(); render(); });
$('sb-count').addEventListener('change', function (e) { st.count = parseInt(e.target.value, 10) || 0; save(); render(); });
$('sb-theme').addEventListener('change', function (e) {
if (THEMES.indexOf(e.target.value) > -1) { st.theme = e.target.value; save(); render(); }
});
$('sb-reset').addEventListener('click', function () {
if (window.confirm('รีเซ็ตคะแนนทั้งหมดเป็น 0 ใช่หรือไม่?')) { zero(); }
});
$('sb-full').addEventListener('click', toggleFull);
$('sb-exit').addEventListener('click', toggleFull);
$('sb-clear').addEventListener('click', function () {
if (window.confirm('ลบข้อมูลที่บันทึกไว้ทั้งหมดใช่หรือไม่?')) {
try { window.localStorage.removeItem(KEY); } catch (e) { }
st = def();
minus = false;
edit = false;
render();
}
});
document.addEventListener('fullscreenchange', sync);
document.addEventListener('webkitfullscreenchange', sync);
document.addEventListener('keydown', function (e) {
var t = e.target;
if (t && (t.tagName === 'INPUT' || t.tagName === 'SELECT' || t.tagName === 'TEXTAREA' || t.isContentEditable)) { return; }
if (e.ctrlKey || e.metaKey || e.altKey) { return; }
var order = st.swap ? [1, 0] : [0, 1];
var d = e.shiftKey ? -1 : 1;
var c = e.code;
if (c === 'ArrowLeft' || c === 'ArrowRight') {
if (edit) { return; }
e.preventDefault();
bump(order[c === 'ArrowLeft' ? 0 : 1], 's', 0, d);
} else if (c === 'BracketLeft' || c === 'BracketRight') {
if (edit || st.count === 0) { return; }
e.preventDefault();
bump(order[c === 'BracketLeft' ? 0 : 1], 'c', 0, d);
} else if (c === 'KeyF') {
e.preventDefault();
toggleFull();
} else if (c === 'KeyN') {
e.preventDefault();
st.names = !st.names;
save();
render();
} else if (c === 'Escape' && fake) {
toggleFull();
}
});
render();
})();
</script>
</div>

## วิธีใช้สกอร์บอร์ดออนไลน์

1. **ตั้งชื่อทีม** กดปุ่ม "แก้ไข" แล้วพิมพ์ชื่อทีมและคะแนนเริ่มต้นลงในช่องได้เลย เสร็จแล้วกด "แก้ไข" อีกครั้งเพื่อกลับสู่โหมดนับคะแนน
2. **เพิ่มคะแนน** แตะหรือคลิกที่ตัวเลขคะแนนของทีม คะแนนจะเพิ่มทีละ 1
3. **ลดคะแนน** กดปุ่ม "-1" ให้ติดสถานะเปิด (ตัวเลขทุกช่องจะมีป้าย -1) แล้วแตะตัวเลขที่ต้องการลด เมื่อลดเสร็จให้กด "-1" อีกครั้งเพื่อกลับไปโหมดเพิ่มคะแนน
4. **ใช้ตัวนับรอง** เลือกที่ช่อง "เซต" ว่าจะแสดงตัวเลขเสริม 1 หรือ 2 จำนวนต่อทีม เช่น จำนวนเซต จำนวนรอบ หรือเทิร์น แล้วแตะเพื่อเพิ่มค่าได้เหมือนคะแนนหลัก
5. **สลับฝั่ง** กด "สลับฝั่ง" เมื่อทีมต้องเปลี่ยนด้านของสนามหรือโต๊ะ
6. **เปลี่ยนธีม** เลือกหน้าตาที่เหมาะกับงาน เช่น จอ LED สำหรับสนามกีฬา หรือกระดานดำสำหรับห้องเรียน
7. **ขยายเต็มจอ** กด "เต็มหน้าจอ" เพื่อฉายบนโปรเจคเตอร์หรือทีวี หน้าจอจะไม่ดับระหว่างใช้งาน (หากเบราว์เซอร์รองรับ) กด "ออก" หรือปุ่ม Esc เพื่อกลับมาหน้าปกติ
8. **เริ่มเกมใหม่** กด "รีเซ็ตคะแนน" แล้วยืนยัน คะแนนและตัวเลขเสริมทั้งหมดจะกลับเป็น 0

## คำอธิบายปุ่มและคำศัพท์

| ปุ่ม / คำศัพท์ | ความหมาย |
| --- | --- |
| คะแนน | ตัวเลขใหญ่ของแต่ละทีม แตะเพื่อเพิ่มทีละ 1 ค่าอยู่ระหว่าง 0 ถึง 999 |
| -1 | โหมดลดคะแนน เมื่อเปิดอยู่ การแตะตัวเลขจะลดลงทีละ 1 กดค้างไว้ 1 วินาทีเพื่อรีเซ็ตทุกตัวเลขเป็น 0 |
| แก้ไข | เปลี่ยนชื่อทีมและตัวเลขให้เป็นช่องกรอก เพื่อพิมพ์ค่าที่ต้องการได้โดยตรง |
| ชื่อทีม | ปุ่มแสดงหรือซ่อนชื่อทีม เหมาะเมื่อต้องการให้เห็นเฉพาะตัวเลข |
| เซต / เกม / รอบ / ตา | ตัวเลขเสริมสำหรับนับช่วงการแข่ง เช่น เซตในวอลเลย์บอล เกมในเทนนิส รอบในควิซ หรือตาในเกมกระดาน |
| ตัวเลข 1 จำนวน / 2 จำนวน | จำนวนตัวนับเสริมที่แสดงใต้คะแนนของแต่ละทีม หรือเลือก "ซ่อน" หากไม่ต้องการ |
| สลับฝั่ง | สลับตำแหน่งซ้าย-ขวาของสองทีมบนหน้าจอ สีประจำทีมและคะแนนจะย้ายตามไปด้วย |
| ธีม | รูปแบบการแสดงผล ได้แก่ ค่าเริ่มต้น สไตล์สว่าง จอ LED ทีมสีแดง / ทีมสีน้ำเงิน นาฬิกาฟลิป และกระดานดำ |
| นาฬิกาฟลิป | ธีมที่ตัวเลขพลิกเหมือนป้ายการ์ดเมื่อคะแนนเปลี่ยน (ทีมสีแดง / ทีมสีน้ำเงินก็มีเอฟเฟกต์นี้) |
| เต็มหน้าจอ | ขยายสกอร์บอร์ดให้เต็มจอ ซ่อนส่วนควบคุมอื่น ๆ เพื่อให้คนดูเห็นคะแนนชัดเจน |
| รีเซ็ตคะแนน | ล้างคะแนนและตัวเลขเสริมทุกช่องเป็น 0 โดยจะถามยืนยันก่อน |
| ลบข้อมูลทั้งหมด | ลบชื่อทีม คะแนน และการตั้งค่าที่บันทึกไว้ในเบราว์เซอร์ แล้วกลับสู่ค่าเริ่มต้น |
| ที่เก็บข้อมูลในเครื่อง | สกอร์บอร์ดจดจำค่าล่าสุดไว้ในเบราว์เซอร์ของคุณ เปิดกลับมาใหม่ก็ยังเห็นข้อมูลเดิม โดยไม่ส่งไปยังเซิร์ฟเวอร์ |

### แป้นพิมพ์ลัด

| ปุ่ม | การทำงาน |
| --- | --- |
| ← / → | เพิ่ม 1 คะแนนให้ทีมฝั่งซ้าย / ฝั่งขวา (กด Shift ค้างไว้เพื่อลด 1) |
| [ / ] | เพิ่ม 1 ให้ตัวเลขเสริมตัวแรกของทีมฝั่งซ้าย / ฝั่งขวา (กด Shift ค้างไว้เพื่อลด 1 หรือใช้ { / }) |
| F | เปิดหรือปิดโหมดเต็มหน้าจอ |
| N | แสดงหรือซ่อนชื่อทีม |
| Esc | ออกจากโหมดเต็มหน้าจอ |