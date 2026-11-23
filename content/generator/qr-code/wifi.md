---
title: สร้าง QR Code Wi-Fi ออนไลน์ ฟรี
h1: สร้าง QR Code Wi-Fi
description: สร้าง QR Code Wi-Fi ออนไลน์ฟรี ใส่ชื่อและรหัสผ่านก็ได้ภาพพร้อมใช้งาน รองรับ WPA3 และ Hidden ปรับสีและขนาดได้ ดาวน์โหลด PNG หรือ SVG และสั่งพิมพ์ได้ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-23T09:00:00+07:00'
weight: 150
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สร้าง QR Code Wi-Fi
- สร้าง QR Code Wi-Fi ออนไลน์
- QR Code Wi-Fi พิมพ์
- ดาวน์โหลด QR Code Wi-Fi PNG
- สุ่มและคำนวณ
---

สร้าง QR Code สำหรับเชื่อมต่อ Wi-Fi ให้แขก ลูกค้า หรือคนในบ้านสแกนเพื่อเข้าเครือข่ายได้ทันที โดยไม่ต้องพิมพ์รหัสผ่านเอง ข้อมูลทั้งหมดประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการส่งชื่อเครือข่ายหรือรหัสผ่านไปยังเซิร์ฟเวอร์

<style>
.wq{max-width:780px;margin:1.5rem 0}
.wq *{box-sizing:border-box}
.wq-grid{display:grid;grid-template-columns:1fr;gap:1.2rem}
@media (min-width:700px){.wq-grid{grid-template-columns:1fr 1fr}}
.wq label{display:block;font-weight:600;margin:.7rem 0 .25rem}
.wq input[type=text],.wq input[type=password],.wq select{width:100%;padding:.55rem .7rem;border:1px solid rgba(128,128,128,.5);border-radius:8px;font:inherit;background:transparent;color:inherit}
.wq input[type=color]{width:100%;height:2.4rem;padding:2px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent}
.wq-row{display:flex;gap:.6rem;flex-wrap:wrap}
.wq-row>div{flex:1 1 120px}
.wq label.wq-chk{display:flex;align-items:center;gap:.5rem;font-weight:400;margin:.45rem 0}
.wq details{margin-top:.8rem;border:1px solid rgba(128,128,128,.35);border-radius:8px;padding:.5rem .8rem}
.wq summary{cursor:pointer;font-weight:600}
.wq-out{text-align:center}
.wq-out canvas{max-width:100%;height:auto;border:1px solid rgba(128,128,128,.3);border-radius:8px;background:#fff}
.wq-btns{display:flex;gap:.5rem;flex-wrap:wrap;justify-content:center;margin:.8rem 0}
.wq button{padding:.55rem 1rem;border:1px solid #2563eb;border-radius:8px;background:#2563eb;color:#fff;font:inherit;cursor:pointer}
.wq button.wq-alt{background:transparent;color:inherit;border-color:rgba(128,128,128,.5)}
.wq button:disabled{opacity:.45;cursor:not-allowed}
.wq-msg{min-height:1.4em;font-size:.9rem;color:#b45309;white-space:pre-line;margin-bottom:.5rem}
.wq-note{font-size:.85rem;opacity:.8}
@media print{body *{visibility:hidden!important}#wq-cv,#wq-cv *{visibility:visible!important}#wq-cv{position:absolute;left:0;top:0;max-width:90vw;border:0}}
</style>
<div class="wq" id="wq">
<div class="wq-grid">
<div class="wq-form">
<label for="wq-ssid">ชื่อเครือข่าย (SSID)</label>
<input type="text" id="wq-ssid" maxlength="64" autocomplete="off" placeholder="เช่น MyHome_WiFi">
<label for="wq-sec">ความปลอดภัย</label>
<select id="wq-sec"><option value="WPA">WPA / WPA2 (แนะนำ)</option><option value="SAE">WPA3</option><option value="WEP">WEP</option><option value="nopass">ไม่มีรหัสผ่าน</option></select>
<div id="wq-pwbox">
<label for="wq-pw">รหัสผ่าน</label>
<input type="password" id="wq-pw" maxlength="64" autocomplete="off" placeholder="อย่างน้อย 8 ตัวอักษร">
<label class="wq-chk"><input type="checkbox" id="wq-show"> แสดงรหัสผ่าน</label>
</div>
<label class="wq-chk"><input type="checkbox" id="wq-hid"> เครือข่ายซ่อนชื่อ (Hidden)</label>
<details>
<summary>ตั้งค่าขั้นสูง</summary>
<label for="wq-ecl">ระดับแก้ไขข้อผิดพลาด</label>
<select id="wq-ecl"><option value="0">L (ต่ำ)</option><option value="1" selected>M (ปานกลาง)</option><option value="2">Q (สูง)</option><option value="3">H (สูงสุด)</option></select>
<div class="wq-row">
<div><label for="wq-px">ขนาดภาพ</label><select id="wq-px"><option value="300">300 px</option><option value="600" selected>600 px</option><option value="1000">1000 px</option><option value="1500">1500 px</option></select></div>
<div><label for="wq-mg">ขอบ (Quiet Zone)</label><select id="wq-mg"><option value="2">แคบ</option><option value="4" selected>ปกติ</option><option value="6">กว้าง</option></select></div>
</div>
<div class="wq-row">
<div><label for="wq-fg">สี QR</label><input type="color" id="wq-fg" value="#000000"></div>
<div><label for="wq-bg">สีพื้นหลัง</label><input type="color" id="wq-bg" value="#ffffff"></div>
</div>
<label class="wq-chk"><input type="checkbox" id="wq-lab" checked> ใส่ข้อความ "สแกนเพื่อเชื่อมต่อ" และชื่อ Wi-Fi บนภาพ</label>
<label class="wq-chk"><input type="checkbox" id="wq-spw"> แสดงรหัสผ่านบนภาพ (ทุกคนที่เห็นภาพจะเห็นรหัสผ่าน)</label>
</details>
</div>
<div class="wq-out">
<div id="wq-msg" class="wq-msg" role="status" aria-live="polite"></div>
<canvas id="wq-cv" width="300" height="300" aria-label="QR Code Wi-Fi"></canvas>
<div class="wq-btns">
<button type="button" id="wq-png" disabled>ดาวน์โหลด PNG</button>
<button type="button" id="wq-svg" class="wq-alt" disabled>ดาวน์โหลด SVG</button>
<button type="button" id="wq-print" class="wq-alt" disabled>พิมพ์</button>
</div>
<p class="wq-note">SVG เป็นเฉพาะตัว QR ไม่รวมข้อความ</p>
</div>
</div>
</div>
<script>
(function () {
'use strict';
var LT = '<';
/*QR-START*/
var EC = [[-1,7,10,15,20,26,18,20,24,30,18,20,24,26,30,22,24,28,30,28,28],[-1,10,16,26,18,24,16,18,22,22,26,30,22,22,24,24,28,28,26,26,26],[-1,13,22,18,26,18,24,18,22,20,24,28,26,24,20,30,24,28,28,26,30],[-1,17,28,22,16,22,28,26,26,24,28,24,28,22,24,24,30,28,28,26,28]];
var NB = [[-1,1,1,1,1,1,2,2,2,2,4,4,4,4,4,6,6,6,6,7,8],[-1,1,1,1,2,2,4,4,4,5,5,5,8,9,9,10,10,11,13,14,16],[-1,1,1,2,2,4,4,6,6,8,8,8,10,12,16,12,17,16,18,21,20],[-1,1,1,2,4,4,4,5,6,8,8,11,11,16,16,18,16,19,21,25,25]];
var FB = [1, 0, 3, 2];
function mul(x, y) { var z = 0; for (var i = 7; i >= 0; i--) { z = (z << 1) ^ ((z >>> 7) * 285); z ^= ((y >>> i) & 1) * x; } return z; }
function rawMods(v) { var r = (16 * v + 128) * v + 64; if (v >= 2) { var a = Math.floor(v / 7) + 2; r -= (25 * a - 10) * a - 55; if (v >= 7) r -= 36; } return r; }
function dataCw(v, e) { return Math.floor(rawMods(v) / 8) - EC[e][v] * NB[e][v]; }
function encode(text, e) {
var bytes = Array.from(new TextEncoder().encode(text)), v, i, k;
for (v = 1; v !== 21; v++) { if (4 + (v !== 10 && v < 10 ? 8 : 16) + bytes.length * 8 <= dataCw(v, e) * 8) break; }
if (v === 21) throw new Error('too long');
var bits = [];
function put(val, n) { for (var q = n - 1; q >= 0; q--) bits.push((val >>> q) & 1); }
put(4, 4); put(bytes.length, v < 10 ? 8 : 16);
bytes.forEach(function (b) { put(b, 8); });
var cap = dataCw(v, e) * 8;
put(0, Math.min(4, cap - bits.length));
while (bits.length % 8) bits.push(0);
for (var p = 236; bits.length < cap; p ^= 236 ^ 17) put(p, 8);
var data = [];
for (i = 0; i < bits.length; i += 8) { var bb = 0; for (k = 0; k < 8; k++) bb = (bb << 1) | bits[i + k]; data.push(bb); }
var nb = NB[e][v], el = EC[e][v], raw = Math.floor(rawMods(v) / 8), ns = nb - raw % nb, sl = Math.floor(raw / nb);
var div = []; for (i = 0; i < el - 1; i++) div.push(0); div.push(1);
var root = 1;
for (i = 0; i < el; i++) { for (var j = 0; j < div.length; j++) { div[j] = mul(div[j], root); if (j + 1 < div.length) div[j] ^= div[j + 1]; } root = mul(root, 2); }
var blocks = [], o = 0;
for (i = 0; i < nb; i++) {
var d = data.slice(o, o + sl - el + (i < ns ? 0 : 1)); o += d.length;
var r = div.map(function () { return 0; });
d.forEach(function (x) { var f = x ^ r.shift(); r.push(0); div.forEach(function (c, t) { r[t] ^= mul(c, f); }); });
if (i < ns) d.push(0);
blocks.push(d.concat(r));
}
var all = [];
for (i = 0; i < blocks[0].length; i++) blocks.forEach(function (bl, jj) { if (i !== sl - el || jj >= ns) all.push(bl[i]); });
var n = v * 4 + 17, m = [], fn = [];
for (i = 0; i < n; i++) { m.push(new Array(n).fill(0)); fn.push(new Array(n).fill(0)); }
function set(x, y, d) { m[y][x] = d ? 1 : 0; fn[y][x] = 1; }
for (i = 0; i < n; i++) { set(6, i, i % 2 === 0); set(i, 6, i % 2 === 0); }
function finder(cx, cy) { for (var dy = -4; dy !== 5; dy++) for (var dx = -4; dx !== 5; dx++) { var x = cx + dx, y = cy + dy, dd = Math.max(Math.abs(dx), Math.abs(dy)); if (x >= 0 && x < n && y >= 0 && y < n) set(x, y, dd !== 2 && dd !== 4); } }
finder(3, 3); finder(n - 4, 3); finder(3, n - 4);
var al = [];
if (v > 1) { var na = Math.floor(v / 7) + 2, st = Math.ceil((v * 4 + 4) / (na * 2 - 2)) * 2; al = [6]; for (var q = n - 7; al.length < na; q -= st) al.splice(1, 0, q); }
al.forEach(function (cy, a) { al.forEach(function (cx, b) {
if ((a === 0 && b === 0) || (a === 0 && b === al.length - 1) || (a === al.length - 1 && b === 0)) return;
for (var dy = -2; dy !== 3; dy++) for (var dx = -2; dx !== 3; dx++) set(cx + dx, cy + dy, Math.max(Math.abs(dx), Math.abs(dy)) !== 1);
}); });
function fmt(mask) {
var d = (FB[e] << 3) | mask, r2 = d;
for (var t = 0; t !== 10; t++) r2 = (r2 << 1) ^ ((r2 >>> 9) * 1335);
var bt = ((d << 10) | r2) ^ 21522;
function g(z) { return (bt >>> z) & 1; }
for (var a = 0; a !== 6; a++) set(8, a, g(a));
set(8, 7, g(6)); set(8, 8, g(7)); set(7, 8, g(8));
for (a = 9; a !== 15; a++) set(14 - a, 8, g(a));
for (a = 0; a !== 8; a++) set(n - 1 - a, 8, g(a));
for (a = 8; a !== 15; a++) set(8, n - 15 + a, g(a));
set(8, n - 8, 1);
}
fmt(0);
if (v >= 7) {
var r3 = v; for (i = 0; i !== 12; i++) r3 = (r3 << 1) ^ ((r3 >>> 11) * 7973);
var vb = (v << 12) | r3;
for (i = 0; i !== 18; i++) { var c = (vb >>> i) & 1, a2 = n - 11 + i % 3, b2 = Math.floor(i / 3); set(a2, b2, c); set(b2, a2, c); }
}
var idx = 0;
for (var rt = n - 1; rt >= 1; rt -= 2) {
if (rt === 6) rt = 5;
for (var vt = 0; vt !== n; vt++) for (var j2 = 0; j2 !== 2; j2++) {
var x = rt - j2, up = ((rt + 1) & 2) === 0, y = up ? n - 1 - vt : vt;
if (!fn[y][x] && idx < all.length * 8) { m[y][x] = (all[idx >>> 3] >>> (7 - (idx & 7))) & 1; idx++; }
}
}
var MF = [
function (x, y) { return (x + y) % 2 === 0; },
function (x, y) { return y % 2 === 0; },
function (x, y) { return x % 3 === 0; },
function (x, y) { return (x + y) % 3 === 0; },
function (x, y) { return (Math.floor(x / 3) + Math.floor(y / 2)) % 2 === 0; },
function (x, y) { return x * y % 2 + x * y % 3 === 0; },
function (x, y) { return (x * y % 2 + x * y % 3) % 2 === 0; },
function (x, y) { return ((x + y) % 2 + x * y % 3) % 2 === 0; }
];
function apply(k2) { for (var y = 0; y !== n; y++) for (var x = 0; x !== n; x++) if (!fn[y][x] && MF[k2](x, y)) m[y][x] ^= 1; }
function pen() {
var p2 = 0, x, y, dark = 0, s;
for (var pass = 0; pass !== 2; pass++) for (y = 0; y !== n; y++) {
s = ''; for (x = 0; x !== n; x++) s += pass ? m[x][y] : m[y][x];
p2 += (s.match(/(?=10111010000|00001011101)/g) || []).length * 40;
s.replace(/(.)\1{4,}/g, function (rr) { p2 += rr.length - 2; return ''; });
}
for (y = 0; y !== n; y++) for (x = 0; x !== n; x++) {
dark += m[y][x];
if (y + 1 < n && x + 1 < n && m[y][x] === m[y][x + 1] && m[y][x] === m[y + 1][x] && m[y][x] === m[y + 1][x + 1]) p2 += 3;
}
return p2 + (Math.ceil(Math.abs(dark * 20 - n * n * 10) / (n * n)) - 1) * 10;
}
var best = 0, bp = 1e9;
for (i = 0; i !== 8; i++) { apply(i); fmt(i); var pp = pen(); apply(i); if (pp < bp) { bp = pp; best = i; } }
apply(best); fmt(best);
return m;
}
/*QR-END*/
function $(id) { return document.getElementById(id); }
if (!$('wq-ssid')) return;
var M = null;
function esc(s) { return s.replace(/([\\;,:"])/g, '\\$1'); }
function payload() {
var t = $('wq-sec').value, p = $('wq-pw').value, o = 'WIFI:T:' + t + ';S:' + esc($('wq-ssid').value) + ';';
if (t !== 'nopass' && p) o += 'P:' + esc(p) + ';';
if ($('wq-hid').checked) o += 'H:true;';
return o + ';';
}
function lum(hex) {
var c = [1, 3, 5].map(function (i) { var v = parseInt(hex.substr(i, 2), 16) / 255; return v <= 0.03928 ? v / 12.92 : Math.pow((v + 0.055) / 1.055, 2.4); });
return 0.2126 * c[0] + 0.7152 * c[1] + 0.0722 * c[2];
}
function F(z, bold) { return (bold ? '700 ' : '400 ') + z + 'px "Noto Sans Thai",Sarabun,Tahoma,sans-serif'; }
function draw() {
var cv = $('wq-cv'), n = M.length, mg = +$('wq-mg').value, px = +$('wq-px').value, fg = $('wq-fg').value, bg = $('wq-bg').value;
var sc = Math.max(2, Math.floor(px / (n + 2 * mg))), w = sc * (n + 2 * mg);
var lab = $('wq-lab').checked, spw = $('wq-spw').checked && $('wq-sec').value !== 'nopass';
var fs = Math.round(w * 0.055), top = 0, bot = 0, lines = [];
if (lab) {
lines.push('Wi-Fi: ' + $('wq-ssid').value);
if (spw) lines.push('Password: ' + $('wq-pw').value);
top = Math.round(fs * 2.4); bot = Math.round(lines.length * fs * 1.7 + fs * 0.6);
}
cv.width = w; cv.height = top + w + bot;
var g = cv.getContext('2d');
g.fillStyle = bg; g.fillRect(0, 0, cv.width, cv.height);
g.fillStyle = fg;
for (var r = 0; r !== n; r++) for (var c = 0; c !== n; c++) if (M[r][c]) g.fillRect((mg + c) * sc, top + (mg + r) * sc, sc, sc);
function txt(s, yy, sz, bold) {
var z = sz; g.font = F(z, bold);
while (g.measureText(s).width > w * 0.92 && z > 10) { z -= 1; g.font = F(z, bold); }
g.textAlign = 'center'; g.textBaseline = 'middle'; g.fillText(s, w / 2, yy);
}
if (lab) {
txt('สแกนเพื่อเชื่อมต่อ Wi-Fi', top * 0.6, fs * 1.2, true);
lines.forEach(function (s, i) { txt(s, top + w + fs * 1.2 + i * fs * 1.7, fs, i === 0); });
}
}
function svg() {
var n = M.length, mg = +$('wq-mg').value, s = n + 2 * mg, d = '';
for (var r = 0; r !== n; r++) for (var c = 0; c !== n; c++) if (M[r][c]) d += 'M' + (c + mg) + ' ' + (r + mg) + 'h1v1h-1z';
return LT + 'svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ' + s + ' ' + s + '" shape-rendering="crispEdges">' + LT + 'rect width="' + s + '" height="' + s + '" fill="' + $('wq-bg').value + '"/>' + LT + 'path d="' + d + '" fill="' + $('wq-fg').value + '"/>' + LT + '/svg>';
}
function setBtns(on) { ['wq-png', 'wq-svg', 'wq-print'].forEach(function (id) { $(id).disabled = !on; }); }
function render() {
var msg = [], ssid = $('wq-ssid').value, t = $('wq-sec').value, pw = $('wq-pw').value, cv = $('wq-cv');
$('wq-pwbox').style.display = t === 'nopass' ? 'none' : '';
if (!ssid) {
M = null; setBtns(false);
cv.getContext('2d').clearRect(0, 0, cv.width, cv.height);
$('wq-msg').textContent = 'กรอกชื่อเครือข่าย (SSID) เพื่อสร้าง QR Code';
return;
}
if (new TextEncoder().encode(ssid).length > 32) msg.push('SSID ยาวเกิน 32 ไบต์ อุปกรณ์บางรุ่นอาจเชื่อมต่อไม่ได้');
if (t !== 'nopass') {
if (!pw) msg.push('ยังไม่ได้กรอกรหัสผ่าน');
else if ((t === 'WPA' || t === 'SAE') && (pw.length < 8 || pw.length > 63)) msg.push('รหัสผ่าน WPA ต้องยาว 8-63 ตัวอักษร');
}
if (t === 'SAE') msg.push('WPA3: อุปกรณ์รุ่นเก่าอาจสแกนไม่ได้ ถ้าเราเตอร์เป็นโหมด WPA2/WPA3 ให้เลือก WPA / WPA2');
if ($('wq-hid').checked) msg.push('Hidden: Android บางรุ่นอาจเชื่อมต่อไม่ได้');
var l1 = lum($('wq-fg').value), l2 = lum($('wq-bg').value), cr = (Math.max(l1, l2) + 0.05) / (Math.min(l1, l2) + 0.05);
if (cr < 3) msg.push('สีคอนทราสต์ต่ำ สแกนยาก');
else if (l1 > l2) msg.push('สี QR สว่างกว่าพื้นหลัง เครื่องสแกนบางรุ่นอ่านไม่ได้');
try { M = encode(payload(), +$('wq-ecl').value); draw(); setBtns(true); }
catch (err) { M = null; setBtns(false); msg.push('ข้อมูลยาวเกินไป ไม่สามารถสร้าง QR Code ได้'); }
$('wq-msg').textContent = msg.join('\n');
}
function dl(href, name) { var a = document.createElement('a'); a.href = href; a.download = name; document.body.appendChild(a); a.click(); document.body.removeChild(a); }
$('wq-png').addEventListener('click', function () { if (M) dl($('wq-cv').toDataURL('image/png'), 'wifi-qr-code.png'); });
$('wq-svg').addEventListener('click', function () {
if (!M) return;
var u = URL.createObjectURL(new Blob([svg()], { type: 'image/svg+xml' }));
dl(u, 'wifi-qr-code.svg');
setTimeout(function () { URL.revokeObjectURL(u); }, 1000);
});
$('wq-print').addEventListener('click', function () { if (M) window.print(); });
$('wq-show').addEventListener('change', function () { $('wq-pw').type = this.checked ? 'text' : 'password'; });
['wq-ssid', 'wq-sec', 'wq-pw', 'wq-hid', 'wq-ecl', 'wq-px', 'wq-mg', 'wq-fg', 'wq-bg', 'wq-lab', 'wq-spw'].forEach(function (id) {
$(id).addEventListener('input', render);
$(id).addEventListener('change', render);
});
render();
})();
</script>

## วิธีใช้งานเครื่องมือสร้าง QR Code Wi-Fi

1. กรอก **ชื่อเครือข่าย (SSID)** ให้ตรงกับชื่อ Wi-Fi ทุกตัวอักษร ตัวพิมพ์เล็กและพิมพ์ใหญ่มีผล
2. เลือก **ความปลอดภัย** ให้ตรงกับที่ตั้งไว้ในเราเตอร์ ส่วนใหญ่คือ WPA / WPA2
3. กรอก **รหัสผ่าน** และกด "แสดงรหัสผ่าน" เพื่อตรวจสอบว่าพิมพ์ถูกต้อง
4. ถ้าต้องการ เปิด **ตั้งค่าขั้นสูง** เพื่อปรับขนาดภาพ สี ขอบ ระดับแก้ไขข้อผิดพลาด และข้อความบนภาพ
5. QR Code จะแสดงทันทีขณะพิมพ์ ให้ดูข้อความแจ้งเตือนเหนือภาพ แล้วกด **ดาวน์โหลด PNG**, **ดาวน์โหลด SVG** หรือ **พิมพ์**
6. สแกนทดสอบด้วยมือถือก่อนนำไปติดหรือแจกจริง

## อธิบายศัพท์และตัวเลือก

- **SSID**: ชื่อเครือข่าย Wi-Fi ที่แสดงในรายการเมื่อค้นหาสัญญาณ
- **WPA / WPA2**: มาตรฐานความปลอดภัยที่ใช้กันทั่วไปและรองรับเกือบทุกอุปกรณ์
- **WPA3**: มาตรฐานรุ่นใหม่ที่ปลอดภัยกว่า อุปกรณ์รุ่นเก่าอาจสแกนไม่ได้
- **WEP**: มาตรฐานเก่าที่ปลอดภัยต่ำ ควรใช้เมื่อจำเป็นเท่านั้น
- **ไม่มีรหัสผ่าน (Open)**: เครือข่ายเปิด ใครก็เชื่อมต่อได้โดยไม่ต้องกรอกรหัส
- **เครือข่ายซ่อนชื่อ (Hidden)**: เครือข่ายที่ไม่แสดงชื่อในรายการ ต้องระบุ SSID เองจึงจะเชื่อมต่อได้
- **ระดับแก้ไขข้อผิดพลาด (L, M, Q, H)**: ความสามารถของ QR ในการอ่านได้แม้ภาพเสียหาย ระดับสูงอ่านทนกว่าแต่ QR จะหนาแน่นขึ้น ค่า M เหมาะกับการใช้งานทั่วไป
- **ขนาดภาพ**: ความกว้างของภาพ PNG เป็นพิกเซล ใช้ขนาดใหญ่เมื่อต้องพิมพ์
- **ขอบ (Quiet Zone)**: พื้นที่ว่างรอบ QR ที่ช่วยให้กล้องอ่านได้ง่าย ไม่ควรตัดออก
- **สี QR และสีพื้นหลัง**: ควรใช้สีเข้มบนพื้นสว่างและมีคอนทราสต์สูง
- **ข้อความบนภาพ**: เพิ่มหัวข้อและชื่อ Wi-Fi ใต้ QR เพื่อให้นำไปพิมพ์ติดได้ทันที
- **PNG**: ไฟล์ภาพทั่วไป เหมาะกับแชร์และพิมพ์
- **SVG**: ไฟล์ภาพเวกเตอร์ ขยายได้ไม่แตก เหมาะกับงานพิมพ์ขนาดใหญ่

## วิธีสแกน QR Code Wi-Fi

- **iPhone**: เปิดแอปกล้อง เล็งที่ QR Code แล้วแตะแบนเนอร์เชื่อมต่อ Wi-Fi ที่ปรากฏ
- **Android**: เปิดกล้อง Google Lens หรือเมนูสแกน QR ในหน้าการตั้งค่า Wi-Fi แล้วแตะเพื่อเชื่อมต่อ

## QR Code สแกนไม่ติด แก้อย่างไร

- ตรวจสอบ SSID และรหัสผ่านว่าตรงกับเราเตอร์ทุกตัวอักษร
- เพิ่มขนาดภาพ หรือเพิ่มขอบให้กว้างขึ้น
- ใช้สีเข้มบนพื้นสว่าง หลีกเลี่ยงสีกลับด้าน
- เลือกชนิดความปลอดภัยให้ตรงกับเราเตอร์ ถ้าไม่แน่ใจให้ลอง WPA / WPA2
- หลีกเลี่ยงเครือข่ายซ่อนชื่อ เพราะ Android บางรุ่นเชื่อมต่อไม่ได้

## คำถามที่พบบ่อย

**ปลอดภัยไหม ข้อมูลถูกส่งไปที่ไหน**
QR Code ถูกสร้างในเบราว์เซอร์ของคุณทั้งหมด ไม่มีการส่งชื่อเครือข่ายหรือรหัสผ่านไปยังเซิร์ฟเวอร์ อย่างไรก็ตาม ใครก็ตามที่สแกน QR Code จะเชื่อมต่อได้ จึงควรแจกเฉพาะผู้ที่ไว้ใจ

**ถ้าเปลี่ยนรหัสผ่านต้องทำอย่างไร**
QR Code เก่าจะใช้ไม่ได้ ให้สร้าง QR Code ใหม่ด้วยรหัสผ่านล่าสุดแล้วพิมพ์ใหม่

**ชื่อหรือรหัสผ่านมีอักขระพิเศษได้ไหม**
ได้ เครื่องมือจะจัดการอักขระพิเศษอย่าง \ ; , : และเครื่องหมายคำพูดให้โดยอัตโนมัติ

**ใช้ฟรีและไม่ต้องสมัครสมาชิกใช่ไหม**
ใช่ ใช้ได้ฟรีทั้งบนมือถือและคอมพิวเตอร์ โดยไม่ต้องสมัครสมาชิก

QR Code เป็นเครื่องหมายการค้าจดทะเบียนของ DENSO WAVE