---
title: ตัวสร้างแฮช MD5 ของไฟล์ ออนไลน์ ฟรี
h1: ตัวสร้างแฮช MD5 ของไฟล์ ออนไลน์
description: ตรวจสอบความถูกต้องของไฟล์ด้วยตัวสร้างแฮช MD5 ออนไลน์ ฟรี ลากไฟล์มาวางแล้วได้ค่า MD5 checksum ทันที ประมวลผลในเบราว์เซอร์อย่างปลอดภัย ไม่ต้องอัปโหลดไฟล์ใดๆ
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-04T09:28:00+07:00'
weight: 66
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- ตัวสร้างแฮช MD5 ของไฟล์ ออนไลน์
- PDF และไฟล์
---
<style>
.md5t{--md5t-bd:#cfd6e0;--md5t-bg:#f6f8fb;--md5t-ac:#2563eb;--md5t-ok:#15803d;--md5t-okbg:#dcfce7;--md5t-bad:#b91c1c;margin:1rem 0 2rem;font-size:1rem;line-height:1.5}
.md5t *{box-sizing:border-box}
.md5t-drop{border:2px dashed var(--md5t-bd);border-radius:14px;background:var(--md5t-bg);padding:2rem 1rem;text-align:center;cursor:pointer;transition:border-color .15s,background .15s}
.md5t-drop:hover,.md5t-drop:focus,.md5t-drop.md5t-over{border-color:var(--md5t-ac);outline:none;background:#eaf1ff}
.md5t-ico{font-size:2.4rem;line-height:1}
.md5t-main{margin:.5rem 0 .25rem;font-weight:600}
.md5t-sub{margin:0;font-size:.9rem;color:#4b5563}
.md5t-bar{display:flex;flex-wrap:wrap;gap:.5rem;margin:.9rem 0}
.md5t-btn{border:1px solid var(--md5t-bd);background:#fff;color:#111827;border-radius:8px;padding:.5rem .9rem;font:inherit;font-size:.92rem;cursor:pointer}
.md5t-btn:hover{border-color:var(--md5t-ac);color:var(--md5t-ac)}
.md5t-btn.md5t-primary{background:var(--md5t-ac);border-color:var(--md5t-ac);color:#fff}
.md5t-btn.md5t-primary:hover{color:#fff;opacity:.9}
.md5t-btn:disabled{opacity:.5;cursor:not-allowed}
.md5t-opts{display:flex;flex-wrap:wrap;gap:.75rem;align-items:center;margin:.5rem 0 1rem}
.md5t-opts input[type=text]{flex:1 1 280px;min-width:0;border:1px solid var(--md5t-bd);border-radius:8px;padding:.5rem .75rem;font:inherit;font-family:ui-monospace,Menlo,Consolas,monospace;font-size:.9rem}
.md5t-opts label{display:inline-flex;gap:.4rem;align-items:center;font-size:.92rem;cursor:pointer}
.md5t-note{font-size:.88rem;color:#4b5563;margin:.25rem 0}
.md5t-sum{font-weight:600;margin:.75rem 0 .5rem}
.md5t-list{list-style:none;margin:0;padding:0}
.md5t-item{border:1px solid var(--md5t-bd);border-radius:10px;padding:.75rem .9rem;margin:0 0 .6rem;background:#fff}
.md5t-item.md5t-match{border-color:var(--md5t-ok);background:var(--md5t-okbg)}
.md5t-head{display:flex;gap:.5rem;align-items:baseline;justify-content:space-between;flex-wrap:wrap}
.md5t-name{font-weight:600;word-break:break-all}
.md5t-size{font-size:.85rem;color:#4b5563;white-space:nowrap}
.md5t-row{display:flex;gap:.5rem;align-items:center;flex-wrap:wrap;margin-top:.4rem}
.md5t-hash{font-family:ui-monospace,Menlo,Consolas,monospace;font-size:.92rem;word-break:break-all;flex:1 1 260px}
.md5t-tag{font-size:.8rem;font-weight:700;color:var(--md5t-ok)}
.md5t-err{color:var(--md5t-bad);font-size:.9rem}
.md5t-prog{width:100%;height:6px;border-radius:3px;background:#e5e7eb;overflow:hidden;margin-top:.5rem}
.md5t-prog>span{display:block;height:100%;width:0;background:var(--md5t-ac);transition:width .1s}
@media (prefers-color-scheme:dark){.md5t{--md5t-bd:#3b4252;--md5t-bg:#161b26;--md5t-okbg:#12301e}.md5t-drop:hover,.md5t-drop:focus,.md5t-drop.md5t-over{background:#1b2a47}.md5t-btn,.md5t-item{background:#0f131b;color:#e5e7eb}.md5t-sub,.md5t-note,.md5t-size{color:#9ca3af}.md5t-opts input[type=text]{background:#0f131b;color:#e5e7eb}.md5t-item.md5t-match{background:var(--md5t-okbg)}.md5t-prog{background:#2a3140}}
</style>
<div class="md5t" id="md5t">
<div class="md5t-drop" id="md5tDrop" tabindex="0" role="button" aria-label="เลือกไฟล์เพื่อคำนวณ MD5">
<div class="md5t-ico" aria-hidden="true">📁</div>
<p class="md5t-main">ลากไฟล์หรือโฟลเดอร์มาที่นี่ คลิกเพื่อเลือก หรือกด Ctrl+V เพื่อวาง</p>
<p class="md5t-sub">ประมวลผลในเครื่อง 100% — ไฟล์ไม่ออกจากเบราว์เซอร์ของคุณ</p>
</div>
<input type="file" id="md5tFile" multiple hidden>
<input type="file" id="md5tDir" webkitdirectory hidden>
<div class="md5t-bar">
<button type="button" class="md5t-btn md5t-primary" id="md5tPick">เพิ่มไฟล์</button>
<button type="button" class="md5t-btn" id="md5tPickDir">เพิ่มโฟลเดอร์</button>
<button type="button" class="md5t-btn" id="md5tCopyAll" disabled>คัดลอกทั้งหมด</button>
<button type="button" class="md5t-btn" id="md5tDownload" disabled>ดาวน์โหลดผลลัพธ์ (.txt)</button>
<button type="button" class="md5t-btn" id="md5tClear" disabled>ล้าง</button>
</div>
<div class="md5t-opts">
<input type="text" id="md5tExpected" placeholder="วางค่า MD5 ที่คาดหวังเพื่อตรวจสอบ (ไม่บังคับ)" autocomplete="off" spellcheck="false" aria-label="ค่า MD5 ที่คาดหวัง">
<label><input type="checkbox" id="md5tUpper"> ตัวพิมพ์ใหญ่</label>
</div>
<p class="md5t-note">เปิดแท็บนี้ไว้ขณะประมวลผล — การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</p>
<div class="md5t-sum" id="md5tSum" aria-live="polite"></div>
<ul class="md5t-list" id="md5tList"></ul>
</div>
<script>
(function () {
'use strict';
var K = [], S = [
7,12,17,22,7,12,17,22,7,12,17,22,7,12,17,22,
5,9,14,20,5,9,14,20,5,9,14,20,5,9,14,20,
4,11,16,23,4,11,16,23,4,11,16,23,4,11,16,23,
6,10,15,21,6,10,15,21,6,10,15,21,6,10,15,21
];
for (var t = 0; t < 64; t++) { K[t] = Math.floor(Math.abs(Math.sin(t + 1)) * 4294967296) | 0; }
function MD5() {
this.s = [1732584193, -271733879, -1732584194, 271733878];
this.buf = new Uint8Array(64);
this.n = 0;
this.len = 0;
this.w = new Int32Array(16);
}
MD5.prototype.block = function (src, off) {
var w = this.w, st = this.s, a = st[0], b = st[1], c = st[2], d = st[3], i, j, k, f, g, x, r;
for (j = 0; j < 16; j++) {
k = off + j * 4;
w[j] = src[k] | (src[k + 1] << 8) | (src[k + 2] << 16) | (src[k + 3] << 24);
}
for (i = 0; i < 64; i++) {
if (i < 16) { f = (b & c) | (~b & d); g = i; }
else if (i < 32) { f = (d & b) | (~d & c); g = (5 * i + 1) % 16; }
else if (i < 48) { f = b ^ c ^ d; g = (3 * i + 5) % 16; }
else { f = c ^ (b | ~d); g = (7 * i) % 16; }
x = (a + f + K[i] + w[g]) | 0;
r = S[i];
a = d; d = c; c = b;
b = (b + ((x << r) | (x >>> (32 - r)))) | 0;
}
st[0] = (st[0] + a) | 0; st[1] = (st[1] + b) | 0;
st[2] = (st[2] + c) | 0; st[3] = (st[3] + d) | 0;
};
MD5.prototype.update = function (data) {
var i = 0, l = data.length;
this.len += l;
if (this.n > 0) {
while (i < l && this.n < 64) { this.buf[this.n++] = data[i++]; }
if (this.n === 64) { this.block(this.buf, 0); this.n = 0; }
}
while (i + 64 <= l) { this.block(data, i); i += 64; }
while (i < l) { this.buf[this.n++] = data[i++]; }
};
MD5.prototype.hex = function () {
var len = this.len, m = len % 64, padLen = (m < 56) ? (56 - m) : (120 - m);
var pad = new Uint8Array(padLen + 8), lo = (len * 8) >>> 0, hi = Math.floor(len / 536870912) >>> 0, q;
pad[0] = 0x80;
for (q = 0; q < 4; q++) {
pad[padLen + q] = (lo >>> (8 * q)) & 255;
pad[padLen + 4 + q] = (hi >>> (8 * q)) & 255;
}
this.update(pad);
var out = '', p, byteIdx, h;
for (p = 0; p < 4; p++) {
for (byteIdx = 0; byteIdx < 4; byteIdx++) {
h = ((this.s[p] >>> (8 * byteIdx)) & 255).toString(16);
out += (h.length < 2 ? '0' : '') + h;
}
}
return out;
};
function readChunk(file, start, end) {
var blob = file.slice(start, end);
if (blob.arrayBuffer) { return blob.arrayBuffer(); }
return new Promise(function (resolve, reject) {
var fr = new FileReader();
fr.onload = function () { resolve(fr.result); };
fr.onerror = function () { reject(fr.error); };
fr.readAsArrayBuffer(blob);
});
}
function fmtSize(n) {
if (n < 1024) { return n + ' B'; }
var u = ['KB', 'MB', 'GB', 'TB'], i = -1;
do { n = n / 1024; i++; } while (n >= 1024 && i < u.length - 1);
return n.toFixed(n >= 100 ? 0 : 1) + ' ' + u[i];
}
var $ = function (id) { return document.getElementById(id); };
var drop = $('md5tDrop'), fileIn = $('md5tFile'), dirIn = $('md5tDir'), listEl = $('md5tList'), sumEl = $('md5tSum');
var btnCopyAll = $('md5tCopyAll'), btnDl = $('md5tDownload'), btnClear = $('md5tClear');
var expEl = $('md5tExpected'), upEl = $('md5tUpper');
var items = [], queue = [], running = false;
function display(h) { return upEl.checked ? h.toUpperCase() : h; }
function copyText(text, btn) {
function done() {
if (!btn) { return; }
var old = btn.textContent;
btn.textContent = 'คัดลอกแล้ว ✓';
setTimeout(function () { btn.textContent = old; }, 1200);
}
function fallback() {
var ta = document.createElement('textarea');
ta.value = text; ta.style.position = 'fixed'; ta.style.opacity = '0';
document.body.appendChild(ta); ta.select();
try { document.execCommand('copy'); done(); } catch (e) {}
document.body.removeChild(ta);
}
if (navigator.clipboard && navigator.clipboard.writeText) {
navigator.clipboard.writeText(text).then(done, fallback);
} else { fallback(); }
}
function applyVerify() {
var want = expEl.value.trim().toLowerCase().replace(/\s+/g, '');
var matches = 0;
items.forEach(function (it) {
var ok = !!(want && it.hash && it.hash === want);
if (ok) { matches++; }
it.li.classList.toggle('md5t-match', ok);
it.tag.textContent = ok ? 'ตรงกัน ✓ ยืนยันแล้ว' : '';
});
return matches;
}
function updateSummary() {
var done = items.filter(function (i) { return i.hash; }).length;
var total = items.length;
btnCopyAll.disabled = btnDl.disabled = done === 0;
btnClear.disabled = total === 0;
if (!total) { sumEl.textContent = ''; return; }
var txt = 'ไฟล์ทั้งหมด ' + total + ' ไฟล์ — คำนวณเสร็จ ' + done;
var m = applyVerify();
if (expEl.value.trim() && done) { txt += ' — ตรงกับค่าที่ตรวจสอบ ' + m + ' ไฟล์'; }
sumEl.textContent = txt;
}
function renderHash(it) {
if (it.hash) { it.hashEl.textContent = display(it.hash); }
}
function makeItem(file) {
var li = document.createElement('li'); li.className = 'md5t-item';
var head = document.createElement('div'); head.className = 'md5t-head';
var name = document.createElement('span'); name.className = 'md5t-name';
name.textContent = file.webkitRelativePath || file.name || 'file';
var size = document.createElement('span'); size.className = 'md5t-size'; size.textContent = fmtSize(file.size);
head.appendChild(name); head.appendChild(size);
var row = document.createElement('div'); row.className = 'md5t-row';
var hashEl = document.createElement('code'); hashEl.className = 'md5t-hash'; hashEl.textContent = 'รอคิว…';
var tag = document.createElement('span'); tag.className = 'md5t-tag';
var copy = document.createElement('button'); copy.type = 'button'; copy.className = 'md5t-btn'; copy.textContent = 'คัดลอก'; copy.disabled = true;
var rm = document.createElement('button'); rm.type = 'button'; rm.className = 'md5t-btn'; rm.textContent = '×'; rm.setAttribute('aria-label', 'ลบรายการนี้');
row.appendChild(hashEl); row.appendChild(tag); row.appendChild(copy); row.appendChild(rm);
var prog = document.createElement('div'); prog.className = 'md5t-prog';
var bar = document.createElement('span'); prog.appendChild(bar);
li.appendChild(head); li.appendChild(row); li.appendChild(prog);
var it = { file: file, name: name.textContent, hash: '', li: li, hashEl: hashEl, tag: tag, copy: copy, bar: bar, prog: prog, removed: false };
copy.addEventListener('click', function () { copyText(display(it.hash), copy); });
rm.addEventListener('click', function () {
it.removed = true;
items = items.filter(function (x) { return x !== it; });
if (li.parentNode) { li.parentNode.removeChild(li); }
updateSummary();
});
listEl.appendChild(li);
return it;
}
function hashFile(it) {
var file = it.file, CH = 2 * 1024 * 1024, pos = 0, md5 = new MD5();
it.hashEl.textContent = 'กำลังคำนวณ…';
function step() {
if (it.removed) { return Promise.resolve(); }
if (pos >= file.size) {
it.hash = md5.hex();
renderHash(it);
it.copy.disabled = false;
it.bar.style.width = '100%';
setTimeout(function () { if (it.prog.parentNode) { it.prog.parentNode.removeChild(it.prog); } }, 400);
return Promise.resolve();
}
var end = Math.min(pos + CH, file.size);
return readChunk(file, pos, end).then(function (buf) {
md5.update(new Uint8Array(buf));
pos = end;
it.bar.style.width = (file.size ? Math.round(pos / file.size * 100) : 100) + '%';
return step();
});
}
return step().catch(function () {
it.hashEl.innerHTML = '';
var e = document.createElement('span'); e.className = 'md5t-err';
e.textContent = 'อ่านไฟล์นี้ไม่ได้';
it.hashEl.appendChild(e);
});
}
function runQueue() {
if (running) { return; }
running = true;
(function next() {
var it = queue.shift();
if (!it) { running = false; updateSummary(); return; }
hashFile(it).then(function () { updateSummary(); next(); });
})();
}
function addFiles(list) {
var arr = Array.prototype.slice.call(list || []);
if (!arr.length) { return; }
arr.forEach(function (f) {
var it = makeItem(f);
items.push(it); queue.push(it);
});
updateSummary();
runQueue();
}
drop.addEventListener('click', function () { fileIn.click(); });
drop.addEventListener('keydown', function (e) {
if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileIn.click(); }
});
['dragenter', 'dragover'].forEach(function (n) {
drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.add('md5t-over'); });
});
['dragleave', 'drop'].forEach(function (n) {
drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.remove('md5t-over'); });
});
drop.addEventListener('drop', function (e) {
if (e.dataTransfer && e.dataTransfer.files) { addFiles(e.dataTransfer.files); }
});
$('md5tPick').addEventListener('click', function () { fileIn.click(); });
$('md5tPickDir').addEventListener('click', function () { dirIn.click(); });
fileIn.addEventListener('change', function () { addFiles(fileIn.files); fileIn.value = ''; });
dirIn.addEventListener('change', function () { addFiles(dirIn.files); dirIn.value = ''; });
document.addEventListener('paste', function (e) {
var tag = (e.target && e.target.tagName) || '';
if (tag === 'INPUT' || tag === 'TEXTAREA') { return; }
var fs = e.clipboardData && e.clipboardData.files;
if (fs && fs.length) { e.preventDefault(); addFiles(fs); }
});
expEl.addEventListener('input', updateSummary);
upEl.addEventListener('change', function () { items.forEach(renderHash); });
function resultLines() {
return items.filter(function (i) { return i.hash; }).map(function (i) { return display(i.hash) + '  ' + i.name; });
}
btnCopyAll.addEventListener('click', function () { copyText(resultLines().join('\n'), btnCopyAll); });
btnDl.addEventListener('click', function () {
var blob = new Blob([resultLines().join('\n') + '\n'], { type: 'text/plain;charset=utf-8' });
var url = URL.createObjectURL(blob);
var a = document.createElement('a');
a.href = url; a.download = 'md5-checksums.txt';
document.body.appendChild(a); a.click(); document.body.removeChild(a);
setTimeout(function () { URL.revokeObjectURL(url); }, 1000);
});
btnClear.addEventListener('click', function () {
items.forEach(function (i) { i.removed = true; });
items = []; queue = [];
listEl.innerHTML = '';
updateSummary();
});
})();
</script>

## วิธีใช้งานตัวสร้างแฮช MD5 ของไฟล์

1. **เพิ่มไฟล์** — ลากไฟล์หรือโฟลเดอร์มาวางในกรอบด้านบน คลิกที่กรอบหรือปุ่ม "เพิ่มไฟล์" / "เพิ่มโฟลเดอร์" เพื่อเลือกจากเครื่อง หรือกด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้
2. **รอให้คำนวณเสร็จ** — ค่า MD5 ของแต่ละไฟล์จะแสดงใต้ชื่อไฟล์ ไฟล์ขนาดใหญ่จะมีแถบความคืบหน้า และควรเปิดแท็บนี้ค้างไว้จนกว่าจะเสร็จ
3. **คัดลอกค่าแฮช** — กดปุ่ม "คัดลอก" ที่ไฟล์นั้น หรือ "คัดลอกทั้งหมด" เพื่อคัดลอกทุกไฟล์พร้อมกัน
4. **ตรวจสอบกับค่าที่ได้รับมา** — วางค่า MD5 ที่เว็บไซต์ผู้พัฒนาหรือผู้ส่งไฟล์ให้มาในช่อง "ค่า MD5 ที่คาดหวัง" หากตรงกัน รายการนั้นจะถูกไฮไลต์เป็นสีเขียวพร้อมข้อความ "ตรงกัน ยืนยันแล้ว"
5. **ปรับรูปแบบและบันทึกผล** — ติ๊ก "ตัวพิมพ์ใหญ่" หากต้องการแสดงเป็น A–F แล้วกด "ดาวน์โหลดผลลัพธ์ (.txt)" เพื่อบันทึกรายการในรูปแบบเดียวกับคำสั่ง md5sum
6. **เริ่มใหม่** — กด "ล้าง" เพื่อเอารายการทั้งหมดออก หรือกด × เพื่อลบเฉพาะไฟล์ที่ไม่ต้องการ

## อธิบายคำศัพท์ที่เกี่ยวข้อง

- **MD5** — อัลกอริทึมแฮชที่แปลงข้อมูลทุกขนาดให้เป็นค่าความยาวคงที่ 128 บิต (ข้อความฐานสิบหก 32 ตัวอักษร) นิยมใช้ตรวจว่าไฟล์ไม่ถูกเปลี่ยนแปลง
- **แฮช (Hash)** — ค่าที่คำนวณได้จากเนื้อหาไฟล์ ไฟล์เดียวกันจะได้ค่าเดิมเสมอ และเปลี่ยนแค่ 1 บิตค่าก็จะเปลี่ยนไปอย่างสิ้นเชิง
- **เช็คซัม (Checksum)** — ค่าตรวจสอบความถูกต้องของข้อมูล ใช้เปรียบเทียบไฟล์ที่ดาวน์โหลดหรือถ่ายโอนกับไฟล์ต้นฉบับ
- **ความสมบูรณ์ของไฟล์ (File Integrity)** — สถานะที่ไฟล์ไม่ถูกแก้ไข เสียหาย หรือขาดหายระหว่างการส่งต่อ
- **เลขฐานสิบหก (Hexadecimal)** — ระบบตัวเลขที่ใช้ 0–9 และ a–f ซึ่งเป็นรูปแบบที่ค่า MD5 ถูกแสดง
- **Collision (การชนกันของแฮช)** — กรณีที่ไฟล์สองไฟล์ต่างกันได้ค่าแฮชเดียวกัน MD5 มีช่องโหว่นี้ จึงเหมาะกับการตรวจความสมบูรณ์ทั่วไป ไม่เหมาะกับงานความปลอดภัยหรือลายเซ็นดิจิทัล
- **SHA-1 / SHA-256 / SHA-512** — อัลกอริทึมแฮชในตระกูลอื่นที่ปลอดภัยกว่า MD5 โดยเฉพาะ SHA-256 ขึ้นไป
- **ประมวลผลในเครื่อง (Client-side)** — การคำนวณทำในเบราว์เซอร์ของคุณเอง ไฟล์ไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์ใดๆ
- **Drag & Drop** — การลากไฟล์จากเครื่องมาวางบนหน้าเว็บเพื่อเพิ่มไฟล์โดยไม่ต้องเปิดหน้าต่างเลือกไฟล์