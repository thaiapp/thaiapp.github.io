---
title: นาฬิกาเข็มออนไลน์ ฟรี
h1: นาฬิกาเข็มออนไลน์
description: ดูนาฬิกาเข็มออนไลน์ฟรีตามเขตเวลาของคุณ หน้าปัดใหญ่ อ่านสบายตา เลือกธีมได้ 10 แบบ เข็มวินาทีลื่นไหล โหมดมืด เต็มหน้าจอ ไม่ต้องลงทะเบียน เปิดใช้ได้ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-26T09:00:00+07:00'
weight: 6
tool: true
topic: time
appCategory: UtilitiesApplication
keywords:
- นาฬิกาเข็มออนไลน์
- เวลาและนาฬิกา
---

<style>
#ac-app{--bg:#fff;--fg:#1d1d1f;--mut:#6b7280;--line:#d9dce1;--acc:#e5484d;--panel:#f5f6f8;--rim:#2b2b2e;max-width:760px;margin:16px auto;padding:16px;color:var(--fg);background:var(--bg);border:1px solid var(--line);border-radius:16px;box-sizing:border-box;position:relative;font-family:inherit}
#ac-app.ac-dark{--bg:#000;--fg:#f2f2f2;--mut:#9aa0a6;--line:#2a2d31;--panel:#15171a;--rim:#5a5d63}
#ac-app *{box-sizing:border-box}
#ac-stage{display:flex;flex-direction:column;align-items:center;gap:10px;padding:8px 0;width:100%}
#ac-city{font-size:1.1rem;font-weight:600;min-height:1.4em;text-align:center}
#ac-face{width:100%;display:flex;justify-content:center;transition:transform .6s}
#ac-face svg{width:min(100%,420px);height:auto;aspect-ratio:1/1;display:block}
#ac-date{text-align:center;color:var(--mut);line-height:1.5}
#ac-date b{display:block;color:var(--fg);font-weight:600;font-size:1.05rem}
#ac-bar{display:flex;flex-wrap:wrap;gap:8px;justify-content:center;margin-top:8px}
#ac-app button{font:inherit;color:var(--fg);background:var(--panel);border:1px solid var(--line);border-radius:10px;padding:8px 12px;cursor:pointer;min-height:40px}
#ac-app button[aria-pressed="true"],#ac-app button[aria-expanded="true"],#ac-app .ac-chip.on,#ac-app .ac-z.on{border-color:var(--acc);box-shadow:0 0 0 1px var(--acc) inset}
#ac-app kbd{font:inherit;font-size:.75em;opacity:.6;border:1px solid var(--line);border-radius:4px;padding:0 4px;margin-left:4px}
.ac-pop{margin-top:10px;background:var(--panel);border:1px solid var(--line);border-radius:12px;padding:10px}
.ac-pop[hidden]{display:none}
#ac-themes{display:grid;grid-template-columns:repeat(auto-fill,minmax(84px,1fr));gap:8px}
#ac-app .ac-chip{display:flex;flex-direction:column;align-items:center;gap:4px;padding:8px 4px;font-size:.85rem}
.ac-chip svg{width:56px;height:56px}
#ac-zhead{display:flex;gap:8px;margin-bottom:8px;flex-wrap:wrap}
#ac-q{flex:1;min-width:160px;font:inherit;color:var(--fg);background:var(--bg);border:1px solid var(--line);border-radius:10px;padding:8px 12px}
#ac-zlist{max-height:260px;overflow:auto;display:flex;flex-direction:column;gap:4px}
#ac-app .ac-z{display:flex;justify-content:space-between;gap:8px;text-align:left;width:100%;padding:8px 10px;min-height:0}
.ac-z span:last-child{color:var(--mut);white-space:nowrap}
.ac-ui{transition:opacity .4s}
#ac-app.ac-full{position:fixed;top:0;right:0;bottom:0;left:0;z-index:99999;max-width:none;width:100%;margin:0;border:0;border-radius:0;display:flex;flex-direction:column;justify-content:center;align-items:center;padding:0}
#ac-app.ac-full #ac-face svg{width:min(88vw,74vh,900px)}
#ac-app.ac-full #ac-date{font-size:clamp(1rem,2.4vw,1.6rem)}
#ac-app.ac-full #ac-bar{position:absolute;left:0;right:0;bottom:12px;padding:0 12px;margin:0}
#ac-app.ac-full .ac-pop{position:absolute;left:50%;transform:translateX(-50%);bottom:72px;width:min(94vw,720px);max-height:60vh;overflow:auto;margin:0}
#ac-app.ac-idle .ac-ui{opacity:0;pointer-events:none}
#ac-app.ac-idle{cursor:none}
</style>
<div id="ac-app" role="region" aria-label="นาฬิกาเข็มออนไลน์">
<div id="ac-stage">
<div id="ac-city" aria-live="polite"></div>
<div id="ac-face"></div>
<div id="ac-date"></div>
</div>
<div id="ac-bar" class="ac-ui">
<button type="button" id="ac-b-theme" aria-expanded="false">ธีม</button>
<button type="button" id="ac-b-zone" aria-expanded="false">เขตเวลา</button>
<button type="button" id="ac-b-smooth" aria-pressed="false">ลื่นไหล<kbd>S</kbd></button>
<button type="button" id="ac-b-dark" aria-pressed="false">โหมดมืด<kbd>T</kbd></button>
<button type="button" id="ac-b-date" aria-pressed="true">วันที่<kbd>D</kbd></button>
<button type="button" id="ac-b-full" aria-pressed="false">เต็มหน้าจอ<kbd>F</kbd></button>
</div>
<div id="ac-p-themes" class="ac-pop ac-ui" hidden>
<div id="ac-themes"></div>
</div>
<div id="ac-p-zones" class="ac-pop ac-ui" hidden>
<div id="ac-zhead">
<input type="search" id="ac-q" placeholder="ค้นหาเมืองหรือประเทศ" aria-label="ค้นหาเขตเวลา" autocomplete="off">
<button type="button" id="ac-my">เขตเวลาของฉัน</button>
</div>
<div id="ac-zlist"></div>
</div>
<div id="ac-resetwrap" class="ac-ui" style="text-align:center;margin-top:10px">
<button type="button" id="ac-b-reset">ลบข้อมูลทั้งหมด</button>
</div>
<script>
(function () {
'use strict';
var NS = 'http://www.w3.org/2000/svg';
var app = document.getElementById('ac-app');
if (!app) { return; }
var $ = function (id) { return document.getElementById(id); };
var faceBox = $('ac-face'), cityEl = $('ac-city'), dateEl = $('ac-date');
var themeList = $('ac-themes'), zoneList = $('ac-zlist'), qInput = $('ac-q');
var btn = {
  theme: $('ac-b-theme'), zone: $('ac-b-zone'), smooth: $('ac-b-smooth'),
  dark: $('ac-b-dark'), date: $('ac-b-date'), full: $('ac-b-full'), reset: $('ac-b-reset')
};
var pops = { theme: $('ac-p-themes'), zone: $('ac-p-zones') };
var THEMES = [
  ['a-num', 'ตัวเลข'], ['a-wall', 'คลาสสิก'], ['a-quarter', '4 ตำแหน่ง'],
  ['a-square', 'สี่เหลี่ยม'], ['a-tick', 'ขีดชั่วโมง'], ['a-roman', 'เลขโรมัน'],
  ['a-dot', 'จุด'], ['a-solid', 'ทึบ'], ['a-spectrum', 'สีรุ้ง'], ['a-pop', 'สีสัน']
];
var TH = {
  'Bangkok': 'กรุงเทพมหานคร', 'Jakarta': 'จาการ์ตา', 'Tokyo': 'โตเกียว', 'Seoul': 'โซล',
  'Singapore': 'สิงคโปร์', 'Kuala_Lumpur': 'กัวลาลัมเปอร์', 'Hong_Kong': 'ฮ่องกง',
  'Shanghai': 'เซี่ยงไฮ้', 'Taipei': 'ไทเป', 'Manila': 'มะนิลา', 'Ho_Chi_Minh': 'โฮจิมินห์',
  'Phnom_Penh': 'พนมเปญ', 'Vientiane': 'เวียงจันทน์', 'Yangon': 'ย่างกุ้ง', 'Dhaka': 'ธากา',
  'Kolkata': 'โกลกาตา', 'Calcutta': 'โกลกาตา', 'Dubai': 'ดูไบ', 'London': 'ลอนดอน',
  'Paris': 'ปารีส', 'Berlin': 'เบอร์ลิน', 'Moscow': 'มอสโก', 'Istanbul': 'อิสตันบูล',
  'Cairo': 'ไคโร', 'New_York': 'นิวยอร์ก', 'Los_Angeles': 'ลอสแอนเจลิส', 'Chicago': 'ชิคาโก',
  'Sao_Paulo': 'เซาเปาโล', 'Sydney': 'ซิดนีย์', 'Auckland': 'โอ๊คแลนด์', 'Honolulu': 'โฮโนลูลู'
};
var FALLBACK = [
  'Pacific/Honolulu', 'America/Los_Angeles', 'America/Chicago', 'America/New_York',
  'America/Sao_Paulo', 'Europe/London', 'Europe/Paris', 'Europe/Berlin', 'Africa/Cairo',
  'Europe/Istanbul', 'Europe/Moscow', 'Asia/Dubai', 'Asia/Kolkata', 'Asia/Dhaka',
  'Asia/Yangon', 'Asia/Bangkok', 'Asia/Jakarta', 'Asia/Ho_Chi_Minh', 'Asia/Singapore',
  'Asia/Kuala_Lumpur', 'Asia/Hong_Kong', 'Asia/Shanghai', 'Asia/Taipei', 'Asia/Manila',
  'Asia/Tokyo', 'Asia/Seoul', 'Australia/Sydney', 'Pacific/Auckland', 'UTC'
];
var DEF = { theme: 'a-wall', tz: '', dark: false, date: true, smooth: false };
var st = { theme: DEF.theme, tz: DEF.tz, dark: DEF.dark, date: DEF.date, smooth: DEF.smooth };
var KEY = 'analogClockPrefs';
function themeOk(t) {
  var i;
  for (i = 0; i !== THEMES.length; i++) { if (THEMES[i][0] === t) { return true; } }
  return false;
}
function tzOk(z) {
  try { new Intl.DateTimeFormat('en-GB', { timeZone: z }); return true; } catch (e) { return false; }
}
function load() {
  try { var s = localStorage.getItem(KEY); return s ? JSON.parse(s) : {}; } catch (e) { return {}; }
}
function save() {
  try { localStorage.setItem(KEY, JSON.stringify(st)); } catch (e) {}
}
function syncUrl() {
  try {
    var u = new URL(location.href);
    u.searchParams.delete('theme');
    u.searchParams.delete('tz');
    if (st.theme !== DEF.theme) { u.searchParams.set('theme', st.theme); }
    if (st.tz) { u.searchParams.set('tz', st.tz); }
    history.replaceState(null, '', u.toString());
  } catch (e) {}
}
var saved = load(), k;
for (k in DEF) {
  if (saved && Object.prototype.hasOwnProperty.call(saved, k) && typeof saved[k] === typeof DEF[k]) { st[k] = saved[k]; }
}
if (!themeOk(st.theme)) { st.theme = DEF.theme; }
if (st.tz && !tzOk(st.tz)) { st.tz = ''; }
try {
  var q = new URLSearchParams(location.search);
  var qt = q.get('theme'), qz = q.get('tz');
  if (qt && themeOk(qt)) { st.theme = qt; }
  if (qz && tzOk(qz)) { st.tz = qz; }
} catch (e) {}
/* ---------- SVG ---------- */
function el(tag, at, parent) {
  var n = document.createElementNS(NS, tag), a;
  if (at) { for (a in at) { n.setAttribute(a, at[a]); } }
  if (parent) { parent.appendChild(n); }
  return n;
}
function pol(r, d) {
  var a = d * Math.PI / 180;
  return [r * Math.sin(a), -r * Math.cos(a)];
}
var ROMAN = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII'];
var FONT = 'system-ui,-apple-system,Segoe UI,Roboto,sans-serif';
function buildFace(svg, theme) {
  while (svg.firstChild) { svg.removeChild(svg.firstChild); }
  var solid = theme === 'a-solid';
  var mk = solid ? 'var(--bg)' : 'var(--fg)';
  var i, p;
  function txt(s, r, deg, size, fill, w) {
    var c = pol(r, deg);
    var n = el('text', {
      x: c[0].toFixed(2), y: c[1].toFixed(2), 'text-anchor': 'middle', dy: '.35em',
      style: 'font-size:' + size + 'px;font-weight:' + (w || 600) + ';fill:' + fill + ';font-family:' + FONT
    }, svg);
    n.textContent = s;
    return n;
  }
  function tick(deg, r1, r2, w, color) {
    var a = pol(r1, deg), b = pol(r2, deg);
    el('line', {
      x1: a[0].toFixed(2), y1: a[1].toFixed(2), x2: b[0].toFixed(2), y2: b[1].toFixed(2),
      'stroke-linecap': 'round', style: 'stroke:' + color + ';stroke-width:' + w
    }, svg);
  }
  function dot(r, deg, size, color) {
    var c = pol(r, deg);
    el('circle', { cx: c[0].toFixed(2), cy: c[1].toFixed(2), r: size, style: 'fill:' + color }, svg);
  }
  if (theme === 'a-square') {
    el('rect', { x: -92, y: -92, width: 184, height: 184, rx: 18, style: 'fill:var(--bg);stroke:var(--fg);stroke-width:3' }, svg);
  } else if (theme === 'a-wall') {
    el('circle', { r: 95, style: 'fill:var(--bg);stroke:var(--rim);stroke-width:9' }, svg);
  } else if (solid) {
    el('circle', { r: 96, style: 'fill:var(--fg)' }, svg);
  } else {
    el('circle', { r: 96, style: 'fill:var(--bg);stroke:var(--line);stroke-width:2' }, svg);
  }
  if (theme === 'a-num') {
    for (i = 1; i !== 13; i++) { txt(String(i), 76, i * 30, 17, mk); }
  } else if (theme === 'a-wall') {
    for (i = 0; i !== 60; i++) { if (i % 5 !== 0) { tick(i * 6, 83, 88, 1, mk); } }
    for (i = 0; i !== 12; i++) { tick(i * 30, 79, 88, 3, mk); }
    for (i = 1; i !== 13; i++) { txt(String(i), 66, i * 30, 15, mk); }
  } else if (theme === 'a-quarter') {
    txt('12', 72, 0, 24, mk, 700); txt('3', 72, 90, 24, mk, 700);
    txt('6', 72, 180, 24, mk, 700); txt('9', 72, 270, 24, mk, 700);
    for (i = 0; i !== 12; i++) { if (i % 3 !== 0) { dot(84, i * 30, 2.5, mk); } }
  } else if (theme === 'a-square') {
    for (i = 1; i !== 13; i++) { txt(String(i), 72, i * 30, 15, mk); }
  } else if (theme === 'a-tick' || solid) {
    for (i = 0; i !== 60; i++) { if (i % 5 !== 0) { tick(i * 6, 85, 90, 1, mk); } }
    for (i = 0; i !== 12; i++) { tick(i * 30, 78, 90, 3.5, mk); }
  } else if (theme === 'a-roman') {
    for (i = 1; i !== 13; i++) { txt(ROMAN[i - 1], 72, i * 30, 13, mk, 600); }
  } else if (theme === 'a-dot') {
    for (i = 0; i !== 12; i++) { dot(82, i * 30, i % 3 === 0 ? 4.8 : 3, mk); }
  } else if (theme === 'a-spectrum') {
    for (i = 0; i !== 60; i++) {
      tick(i * 6, i % 5 === 0 ? 76 : 83, 90, i % 5 === 0 ? 3.5 : 2, 'hsl(' + (i * 6) + ',80%,55%)');
    }
  } else if (theme === 'a-pop') {
    for (i = 1; i !== 13; i++) {
      p = pol(76, i * 30);
      el('circle', { cx: p[0].toFixed(2), cy: p[1].toFixed(2), r: 10, style: 'fill:hsl(' + (i * 30) + ',75%,50%)' }, svg);
      txt(String(i), 76, i * 30, 12, '#fff', 700);
    }
  }
  var hg = el('g', null, svg), mg = el('g', null, svg), sg = el('g', null, svg);
  el('line', { x1: 0, y1: 8, x2: 0, y2: -48, 'stroke-linecap': 'round', style: 'stroke:' + mk + ';stroke-width:5.5' }, hg);
  el('line', { x1: 0, y1: 10, x2: 0, y2: -66, 'stroke-linecap': 'round', style: 'stroke:' + mk + ';stroke-width:3.5' }, mg);
  el('line', { x1: 0, y1: 18, x2: 0, y2: -80, 'stroke-linecap': 'round', style: 'stroke:var(--acc);stroke-width:1.6' }, sg);
  el('circle', { r: 4.5, style: 'fill:var(--acc)' }, svg);
  return { h: hg, m: mg, s: sg };
}
function setHands(hs, hd, md, sd) {
  hs.h.setAttribute('transform', 'rotate(' + hd.toFixed(2) + ')');
  hs.m.setAttribute('transform', 'rotate(' + md.toFixed(2) + ')');
  hs.s.setAttribute('transform', 'rotate(' + sd.toFixed(2) + ')');
}
var svg = el('svg', { viewBox: '-100 -100 200 200', role: 'img', 'aria-label': 'นาฬิกาเข็มออนไลน์' });
faceBox.appendChild(svg);
var hands = buildFace(svg, st.theme);
THEMES.forEach(function (t) {
  var b = document.createElement('button');
  b.type = 'button';
  b.className = 'ac-chip';
  b.setAttribute('data-theme', t[0]);
  var s = el('svg', { viewBox: '-100 -100 200 200', 'aria-hidden': 'true' });
  setHands(buildFace(s, t[0]), 305, 60, 180);
  b.appendChild(s);
  var sp = document.createElement('span');
  sp.textContent = t[1];
  b.appendChild(sp);
  b.addEventListener('click', function () { setTheme(t[0]); });
  themeList.appendChild(b);
});
/* ---------- เวลา ---------- */
var fmtT = null, fmtD = null;
function mkFmt() {
  var tz = st.tz || undefined;
  try {
    fmtT = new Intl.DateTimeFormat('en-GB', { timeZone: tz, hourCycle: 'h23', hour: 'numeric', minute: 'numeric', second: 'numeric' });
    fmtD = new Intl.DateTimeFormat('th-TH', { timeZone: tz, weekday: 'long', day: 'numeric', month: 'long', year: 'numeric' });
  } catch (e) {
    st.tz = '';
    fmtT = new Intl.DateTimeFormat('en-GB', { hourCycle: 'h23', hour: 'numeric', minute: 'numeric', second: 'numeric' });
    fmtD = new Intl.DateTimeFormat('th-TH', { weekday: 'long', day: 'numeric', month: 'long', year: 'numeric' });
  }
}
function cityName(id) {
  var key = id.split('/').pop();
  var en = key.replace(/_/g, ' ');
  return TH[key] ? TH[key] + ' (' + en + ')' : en;
}
function partOfDay(h) {
  if (h >= 5 && 12 > h) { return 'เช้า'; }
  if (h >= 12 && 16 > h) { return 'บ่าย'; }
  if (h >= 16 && 19 > h) { return 'เย็น'; }
  return 'กลางคืน';
}
var H = 0, M = 0, S = 0, lastSec = -1, lastMin = -1, raf = 0, timer = 0;
function readParts(now) {
  var p = fmtT.formatToParts(now), j, v;
  for (j = 0; j !== p.length; j++) {
    v = parseInt(p[j].value, 10);
    if (p[j].type === 'hour') { H = v % 24; }
    else if (p[j].type === 'minute') { M = v; }
    else if (p[j].type === 'second') { S = v; }
  }
}
function drawDate(now) {
  if (!st.date) { return; }
  dateEl.textContent = '';
  var b = document.createElement('b');
  b.textContent = fmtD.format(now);
  dateEl.appendChild(b);
  dateEl.appendChild(document.createTextNode(partOfDay(H)));
}
function frame() {
  var now = new Date();
  var t = now.getTime();
  var sec = Math.floor(t / 1000);
  var changed = sec !== lastSec;
  if (changed) {
    lastSec = sec;
    readParts(now);
    if (M !== lastMin || lastMin === -1) { lastMin = M; drawDate(now); }
  }
  if (changed || st.smooth) {
    var sd = st.smooth ? (S + (t % 1000) / 1000) * 6 : S * 6;
    setHands(hands, ((H % 12) + M / 60) * 30, (M + S / 60) * 6, sd);
  }
}
function loop() {
  frame();
  if (st.smooth) { raf = requestAnimationFrame(loop); }
  else { timer = setTimeout(loop, 1000 - (Date.now() % 1000) + 5); }
}
function restart() {
  cancelAnimationFrame(raf);
  clearTimeout(timer);
  lastSec = -1;
  lastMin = -1;
  loop();
}
/* ---------- UI ---------- */
function apply() {
  var i, cs = themeList.children;
  app.classList.toggle('ac-dark', st.dark);
  btn.dark.setAttribute('aria-pressed', String(st.dark));
  btn.smooth.setAttribute('aria-pressed', String(st.smooth));
  btn.date.setAttribute('aria-pressed', String(st.date));
  for (i = 0; i !== cs.length; i++) { cs[i].classList.toggle('on', cs[i].getAttribute('data-theme') === st.theme); }
  cityEl.textContent = st.tz ? cityName(st.tz) : '';
  dateEl.style.display = st.date ? '' : 'none';
}
function commit() { save(); syncUrl(); apply(); }
function setTheme(t) {
  st.theme = t;
  hands = buildFace(svg, t);
  commit();
  restart();
}
function setTz(z) {
  st.tz = z;
  mkFmt();
  commit();
  restart();
  markZone();
}
/* ---------- เขตเวลา ---------- */
var zoneItems = [], zBuilt = false;
function offsetMin(tz, d) {
  var f = new Intl.DateTimeFormat('en-US', { timeZone: tz, hourCycle: 'h23', year: 'numeric', month: 'numeric', day: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric' });
  var p = {};
  f.formatToParts(d).forEach(function (x) { p[x.type] = x.value; });
  var asUtc = Date.UTC(+p.year, +p.month - 1, +p.day, +p.hour % 24, +p.minute, +p.second);
  return Math.round((asUtc - Math.floor(d.getTime() / 1000) * 1000) / 60000);
}
function offLabel(m) {
  var sign = m >= 0 ? '+' : '-', a = Math.abs(m);
  var hh = Math.floor(a / 60), mm = a % 60;
  return 'UTC' + sign + (hh > 9 ? '' : '0') + hh + ':' + (mm > 9 ? '' : '0') + mm;
}
function buildZones() {
  var d = new Date(), ids = [], list = [];
  try { ids = Intl.supportedValuesOf('timeZone'); } catch (e) {}
  if (!ids || !ids.length) { ids = FALLBACK; }
  if (ids.indexOf('UTC') === -1) { ids = ids.concat(['UTC']); }
  ids.forEach(function (id) {
    try { list.push({ id: id, off: offsetMin(id, d) }); } catch (e) {}
  });
  list.sort(function (a, b) { return (a.off - b.off) || (a.id > b.id ? 1 : -1); });
  list.forEach(function (z) {
    var b = document.createElement('button');
    var name = document.createElement('span');
    var info = document.createElement('span');
    var tm = '';
    try { tm = new Intl.DateTimeFormat('en-GB', { timeZone: z.id, hour: '2-digit', minute: '2-digit', hourCycle: 'h23' }).format(d); } catch (e) {}
    b.type = 'button';
    b.className = 'ac-z';
    b.setAttribute('data-id', z.id);
    name.textContent = cityName(z.id) + (z.id.indexOf('/') === -1 ? '' : ' · ' + z.id.split('/')[0]);
    info.textContent = offLabel(z.off) + '  ' + tm;
    b.appendChild(name);
    b.appendChild(info);
    b.addEventListener('click', function () { setTz(z.id); closePops(); });
    zoneList.appendChild(b);
    zoneItems.push({ node: b, q: (z.id.replace(/_/g, ' ') + ' ' + (TH[z.id.split('/').pop()] || '')).toLowerCase() });
  });
  zBuilt = true;
  markZone();
}
function markZone() {
  var i;
  for (i = 0; i !== zoneItems.length; i++) {
    zoneItems[i].node.classList.toggle('on', zoneItems[i].node.getAttribute('data-id') === st.tz);
  }
}
function filterZones() {
  var v = qInput.value.trim().toLowerCase(), i;
  for (i = 0; i !== zoneItems.length; i++) {
    zoneItems[i].node.style.display = (v === '' || zoneItems[i].q.indexOf(v) !== -1) ? '' : 'none';
  }
}
qInput.addEventListener('input', filterZones);
$('ac-my').addEventListener('click', function () { setTz(''); closePops(); });
function closePops() {
  var n;
  for (n in pops) { pops[n].hidden = true; btn[n].setAttribute('aria-expanded', 'false'); }
}
function anyPop() { return !pops.theme.hidden || !pops.zone.hidden; }
function togglePop(name) {
  var open = pops[name].hidden;
  closePops();
  if (open) {
    if (name === 'zone' && !zBuilt) { buildZones(); }
    pops[name].hidden = false;
    btn[name].setAttribute('aria-expanded', 'true');
    if (name === 'zone') { markZone(); }
  }
  wake();
}
/* ---------- เต็มหน้าจอ ---------- */
var wl = null, idleT = 0, shiftT = 0, lastTap = 0;
function nativeFull() { return document.fullscreenElement || document.webkitFullscreenElement || null; }
function isFull() { return nativeFull() === app || app.classList.contains('ac-pseudo'); }
function lock() {
  try {
    if (navigator.wakeLock && isFull()) {
      navigator.wakeLock.request('screen').then(function (l) { wl = l; }).catch(function () {});
    }
  } catch (e) {}
}
function unlock() {
  try { if (wl) { wl.release(); wl = null; } } catch (e) {}
}
function wake() {
  app.classList.remove('ac-idle');
  clearTimeout(idleT);
  if (app.classList.contains('ac-full')) {
    idleT = setTimeout(function () { if (!anyPop()) { app.classList.add('ac-idle'); } }, 3500);
  }
}
function syncFull() {
  var f = isFull();
  app.classList.toggle('ac-full', f);
  btn.full.setAttribute('aria-pressed', String(f));
  clearInterval(shiftT);
  if (f) {
    lock();
    shiftT = setInterval(function () {
      var dx = Math.round(Math.random() * 8 - 4), dy = Math.round(Math.random() * 8 - 4);
      faceBox.style.transform = 'translate(' + dx + 'px,' + dy + 'px)';
    }, 60000);
  } else {
    unlock();
    faceBox.style.transform = '';
  }
  wake();
}
function toggleFull() {
  var d = document, r;
  if (isFull()) {
    if (nativeFull()) { (d.exitFullscreen || d.webkitExitFullscreen).call(d); }
    app.classList.remove('ac-pseudo');
    syncFull();
    return;
  }
  r = app.requestFullscreen || app.webkitRequestFullscreen;
  if (r) {
    try {
      var pr = r.call(app);
      if (pr && pr.catch) { pr.catch(function () { app.classList.add('ac-pseudo'); syncFull(); }); }
    } catch (e) { app.classList.add('ac-pseudo'); }
  } else {
    app.classList.add('ac-pseudo');
  }
  syncFull();
}
document.addEventListener('fullscreenchange', syncFull);
document.addEventListener('webkitfullscreenchange', syncFull);
document.addEventListener('visibilitychange', function () {
  if (document.visibilityState === 'visible' && isFull()) { lock(); }
});
/* แตะสองครั้งที่หน้าปัดเพื่อเข้า/ออกเต็มหน้าจอ */
faceBox.addEventListener('click', function () {
  var t = Date.now();
  if (t - lastTap !== 0 && 350 > t - lastTap) { toggleFull(); lastTap = 0; }
  else { lastTap = t; }
});
['pointermove', 'pointerdown', 'touchstart', 'keydown'].forEach(function (ev) {
  app.addEventListener(ev, wake, { passive: true });
});
/* ---------- ปุ่ม ---------- */
btn.theme.addEventListener('click', function () { togglePop('theme'); });
btn.zone.addEventListener('click', function () { togglePop('zone'); });
btn.smooth.addEventListener('click', function () { toggleSmooth(); });
btn.dark.addEventListener('click', function () { toggleDark(); });
btn.date.addEventListener('click', function () { toggleDate(); });
btn.full.addEventListener('click', toggleFull);
function toggleSmooth() { st.smooth = !st.smooth; commit(); restart(); }
function toggleDark() { st.dark = !st.dark; commit(); }
function toggleDate() { st.date = !st.date; commit(); if (st.date) { lastMin = -1; lastSec = -1; frame(); } }
btn.reset.addEventListener('click', function () {
  try { localStorage.removeItem(KEY); } catch (e) {}
  st.theme = DEF.theme; st.tz = DEF.tz; st.dark = DEF.dark; st.date = DEF.date; st.smooth = DEF.smooth;
  mkFmt();
  hands = buildFace(svg, st.theme);
  syncUrl();
  apply();
  markZone();
  qInput.value = '';
  if (zBuilt) { filterZones(); }
  restart();
});
/* ---------- คีย์ลัด ---------- */
document.addEventListener('keydown', function (e) {
  var tg = e.target && e.target.tagName;
  if (e.ctrlKey || e.metaKey || e.altKey) { return; }
  if (e.key === 'Escape') {
    if (anyPop()) { closePops(); }
    else if (app.classList.contains('ac-pseudo')) { toggleFull(); }
    return;
  }
  if (tg === 'INPUT' || tg === 'SELECT' || tg === 'TEXTAREA') { return; }
  var key = (e.key || '').toLowerCase();
  if (key === 'f') { toggleFull(); }
  else if (key === 's') { toggleSmooth(); }
  else if (key === 't') { toggleDark(); }
  else if (key === 'd') { toggleDate(); }
});
mkFmt();
apply();
loop();
})();
</script>
</div>

## วิธีใช้งานนาฬิกาเข็มออนไลน์

1. **เปิดหน้านี้** นาฬิกาจะแสดงเวลาปัจจุบันตามเขตเวลาของอุปกรณ์ทันที ไม่ต้องติดตั้งหรือลงทะเบียน
2. **เลือกหน้าปัด** กดปุ่ม **ธีม** แล้วเลือกจาก 10 แบบ ได้แก่ ตัวเลข คลาสสิก 4 ตำแหน่ง สี่เหลี่ยม ขีดชั่วโมง เลขโรมัน จุด ทึบ สีรุ้ง และสีสัน
3. **ดูเวลาของเมืองอื่น** กดปุ่ม **เขตเวลา** พิมพ์ชื่อเมืองหรือประเทศในช่องค้นหา แล้วแตะรายการที่ต้องการ ชื่อเมืองจะแสดงเหนือนาฬิกา กดปุ่ม **เขตเวลาของฉัน** เพื่อกลับมาใช้เวลาของอุปกรณ์
4. **ปรับการเดินของเข็มวินาที** กด **ลื่นไหล** (S) ให้เข็มวินาทีไหลต่อเนื่อง กดอีกครั้งเพื่อกลับไปเดินทีละวินาที
5. **เปลี่ยนโหมดสี** กด **โหมดมืด** (T) ให้พื้นหลังเป็นสีดำ เหมาะกับห้องมืดหรือใช้ตอนกลางคืน
6. **แสดงหรือซ่อนวันที่** กด **วันที่** (D) เพื่อเปิดหรือปิดวันที่และช่วงเวลาของวันใต้หน้าปัด
7. **ใช้แบบเต็มหน้าจอ** กด **เต็มหน้าจอ** (F) หรือแตะที่หน้าปัดสองครั้ง ปุ่มทั้งหมดจะจางหายไปหลังไม่กี่วินาที แตะหน้าจอหนึ่งครั้งเพื่อเรียกปุ่มกลับมา กด Esc หรือกดปุ่มเดิมอีกครั้งเพื่อออก
8. **ล้างค่าที่ตั้งไว้** กด **ลบข้อมูลทั้งหมด** เพื่อลบธีม เขตเวลา และการตั้งค่าอื่นที่เบราว์เซอร์จำไว้ให้กลับเป็นค่าเริ่มต้น

เคล็ดลับ: ธีมและเขตเวลาที่เลือกจะถูกจดจำไว้ในเบราว์เซอร์ และแสดงในที่อยู่หน้าเว็บด้วย จึงบุ๊กมาร์กหรือแชร์ลิงก์ให้เปิดมาเจอนาฬิกาแบบเดิมได้

## คำอธิบายเมนูและศัพท์ที่ใช้ในเครื่องมือ

| คำศัพท์ | คำอธิบายสั้น ๆ |
| --- | --- |
| นาฬิกาเข็ม (แอนะล็อก) | นาฬิกาที่บอกเวลาด้วยเข็มบนหน้าปัด แทนการแสดงเป็นตัวเลขดิจิทัล |
| เข็มชั่วโมง | เข็มสั้นและหนาที่สุด ชี้ว่าตอนนี้กี่โมง |
| เข็มนาที | เข็มยาวปานกลาง ชี้ว่าผ่านไปกี่นาทีในชั่วโมงนั้น |
| เข็มวินาที | เข็มเรียวยาวสีแดง ชี้วินาทีปัจจุบัน |
| หน้าปัด | พื้นที่แสดงตัวเลขหรือขีดบอกเวลา ซึ่งเข็มทั้งสามหมุนอยู่ด้านบน |
| ธีม | รูปแบบหน้าปัดให้เลือก 10 แบบ เพื่อให้เข้ากับรสนิยมหรือการใช้งาน |
| ตัวเลข | หน้าปัดที่แสดงเลข 1 ถึง 12 ครบทุกตำแหน่ง อ่านง่ายที่สุด |
| คลาสสิก | หน้าปัดนาฬิกาแขวน มีขอบสีเข้ม ตัวเลข และขีดนาทีรอบวง |
| 4 ตำแหน่ง | แสดงเฉพาะเลข 12, 3, 6 และ 9 ส่วนที่เหลือเป็นจุดเล็ก ดูโปร่งและเรียบ |
| สี่เหลี่ยม | หน้าปัดทรงสี่เหลี่ยมมุมมน พร้อมตัวเลข 1 ถึง 12 |
| ขีดชั่วโมง | ใช้ขีดแทนตัวเลข ขีดชั่วโมงจะยาวและหนากว่าขีดนาที |
| เลขโรมัน | ใช้ตัวเลขโรมัน I ถึง XII แบบนาฬิกาโบราณ |
| จุด | ใช้จุดแทนตัวเลข โดยจุดที่ตำแหน่ง 12, 3, 6 และ 9 จะใหญ่กว่า |
| ทึบ | หน้าปัดสีทึบทั้งวง เข็มและขีดใช้สีตัดกัน |
| สีรุ้ง | ขีดนาฬิกาไล่สีตามสีรุ้งรอบหน้าปัด |
| สีสัน | ตัวเลขแต่ละตัวอยู่ในวงกลมสีต่างกัน ดูสดใสเหมาะกับเด็ก |
| ลื่นไหล | โหมดที่เข็มวินาทีเคลื่อนต่อเนื่องไม่สะดุด แทนการกระโดดทีละวินาที |
| โหมดมืด | เปลี่ยนพื้นหลังเป็นสีดำ ถนอมสายตาในที่มืดและช่วยลดแสงจ้า |
| วันที่ | แสดงวัน เดือน ปี และช่วงเวลาของวัน (เช้า บ่าย เย็น กลางคืน) ใต้หน้าปัด |
| เต็มหน้าจอ | ขยายนาฬิกาให้เต็มจอ ซ่อนปุ่มอัตโนมัติ และไม่ให้หน้าจอดับขณะเปิดใช้ (หากเบราว์เซอร์รองรับ) |
| เขตเวลา | พื้นที่ที่ใช้เวลามาตรฐานเดียวกัน เช่น กรุงเทพฯ ใช้ UTC+07:00 |
| UTC | เวลามาตรฐานสากลที่ใช้อ้างอิง ค่าต่างเวลาของแต่ละเมืองบอกเป็นบวกหรือลบจาก UTC |
| เขตเวลาของฉัน | ปุ่มกลับไปใช้เวลาตามเขตเวลาของอุปกรณ์คุณ |
| ลบข้อมูลทั้งหมด | ล้างค่าที่เบราว์เซอร์จำไว้ เช่น ธีม เขตเวลา และโหมดสี |
| จอไหม้ | ภาพค้างบนหน้าจอบางชนิดเมื่อแสดงภาพเดิมนาน ๆ นาฬิกาจะขยับหน้าปัดเล็กน้อยทุกนาทีในโหมดเต็มหน้าจอเพื่อลดความเสี่ยง |
| คีย์ลัด | F เต็มหน้าจอ, S ลื่นไหล, T โหมดมืด, D วันที่, Esc ปิดเมนูหรือออกจากเต็มหน้าจอ |