---
title: เข้ารหัสและถอดรหัสไฟล์ออนไลน์ ฟรี
h1: เข้ารหัสและถอดรหัสไฟล์ออนไลน์
description: เข้ารหัสและถอดรหัสไฟล์ออนไลน์ด้วย AES-256 ตั้งรหัสผ่านแล้วบันทึกเป็น .enc ได้ในเบราว์เซอร์ ไม่ต้องอัปโหลด ไฟล์ไม่ออกจากเครื่อง ใช้ฟรี ไม่ต้องติดตั้งแอป
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-04T09:00:00+07:00'
weight: 68
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- เข้ารหัสและถอดรหัสไฟล์ออนไลน์
- PDF และไฟล์
---

<style>
#enc{max-width:760px;margin:0 auto 2rem;font:inherit}
#enc *{box-sizing:border-box}
#enc .enc-tabs{display:flex;gap:.5rem;margin-bottom:1rem}
#enc .enc-tabs button{flex:1;padding:.7rem;border:1px solid #8886;border-radius:.6rem;background:none;color:inherit;font:inherit;font-weight:600;cursor:pointer}
#enc .enc-tabs button.on{background:#2563eb;border-color:#2563eb;color:#fff}
#enc .enc-drop{display:flex;flex-direction:column;align-items:center;gap:.3rem;text-align:center;padding:2rem 1rem;border:2px dashed #8888;border-radius:.8rem;cursor:pointer}
#enc .enc-drop.over{border-color:#2563eb;background:#2563eb14}
#enc .enc-ic{font-size:2.2rem}
#enc ul{list-style:none;margin:1rem 0;padding:0}
#enc li{display:flex;flex-wrap:wrap;align-items:center;gap:.5rem;padding:.55rem .7rem;border:1px solid #8884;border-radius:.5rem;margin:0 0 .4rem}
#enc li span{flex:1;min-width:0;overflow-wrap:anywhere}
#enc li a{color:#2563eb;font-weight:600}
#enc li em{color:#dc2626;font-style:normal;width:100%}
#enc li button{border:0;background:none;color:inherit;font-size:1.2rem;cursor:pointer}
#enc input[type=password],#enc input[type=text]{width:100%;padding:.7rem;margin:0 0 .5rem;border:1px solid #8886;border-radius:.5rem;background:transparent;color:inherit;font:inherit}
#enc .enc-act{display:flex;flex-wrap:wrap;gap:.5rem;margin-top:.6rem}
#enc .enc-act button{padding:.7rem 1.2rem;border:1px solid #8886;border-radius:.5rem;background:none;color:inherit;font:inherit;cursor:pointer}
#enc #enc-go{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
#enc button:disabled{opacity:.5;cursor:not-allowed}
#enc #enc-hint{margin:.6rem 0 0;font-size:.9rem;opacity:.8}
#enc #enc-msg{min-height:1.5em;margin:.6rem 0 0}
#enc #enc-msg.bad{color:#dc2626}
</style>
<div id="enc">
<div class="enc-tabs"><button type="button" class="on" data-m="e">🔒 เข้ารหัส</button><button type="button" data-m="d">🔓 ถอดรหัส</button></div>
<label class="enc-drop" id="enc-drop" for="enc-file"><span class="enc-ic">📁</span><b>ลากไฟล์มาวางที่นี่ หรือคลิกเพื่อเลือกไฟล์</b><small>หรือกด Ctrl+V เพื่อวางไฟล์ • ประมวลผลในเครื่อง 100% ไฟล์ไม่ถูกอัปโหลด</small></label>
<input type="file" id="enc-file" multiple hidden>
<ul id="enc-list"></ul>
<form id="enc-form" autocomplete="off">
<input type="password" id="enc-p1" placeholder="รหัสผ่าน" autocomplete="new-password">
<input type="password" id="enc-p2" placeholder="ยืนยันรหัสผ่าน" autocomplete="new-password">
<label><input type="checkbox" id="enc-show"> แสดงรหัสผ่าน</label>
</form>
<div class="enc-act"><button type="button" id="enc-go" disabled>🔒 เข้ารหัส</button><button type="button" id="enc-all" hidden>⬇ ดาวน์โหลดทั้งหมด</button><button type="button" id="enc-clear">ล้าง</button></div>
<p id="enc-hint"></p>
<p id="enc-msg" role="status"></p>
</div>
<script>
(function () {
'use strict';
var SB = [], SR = [], i, p = 1, q = 1, x;
do {
  p = (p ^ (p << 1) ^ ((p & 128) ? 27 : 0)) & 255;
  q ^= q << 1; q ^= q << 2; q ^= q << 4; q &= 255;
  if (q & 128) q ^= 9;
  x = q ^ (((q << 1) | (q >> 7)) & 255) ^ (((q << 2) | (q >> 6)) & 255) ^ (((q << 3) | (q >> 5)) & 255) ^ (((q << 4) | (q >> 4)) & 255);
  SB[p] = (x ^ 99) & 255;
} while (p !== 1);
SB[0] = 99;
for (i = 0; i < 16; i++) SR[i] = 4 * (((i >> 2) + (i & 3)) & 3) + (i & 3);
function xt(a) { return ((a << 1) ^ ((a & 128) ? 27 : 0)) & 255; }
function expand(key) {
  var nk = key.length / 4, nr = nk + 6, w = new Uint8Array(16 * (nr + 1)), t, j, rc = 1, n;
  w.set(key);
  for (n = nk; n < 4 * (nr + 1); n++) {
    t = [w[4 * n - 4], w[4 * n - 3], w[4 * n - 2], w[4 * n - 1]];
    if (n % nk === 0) { t = [SB[t[1]] ^ rc, SB[t[2]], SB[t[3]], SB[t[0]]]; rc = xt(rc); }
    else if (nk > 6 && n % nk === 4) t = [SB[t[0]], SB[t[1]], SB[t[2]], SB[t[3]]];
    for (j = 0; j < 4; j++) w[4 * n + j] = w[4 * (n - nk) + j] ^ t[j];
  }
  return { w: w, nr: nr };
}
var S = new Uint8Array(16), T = new Uint8Array(16);
function block(k, inp, out) {
  var r, n, c, a0, a1, a2, a3;
  for (n = 0; n < 16; n++) S[n] = inp[n] ^ k.w[n];
  for (r = 1; r <= k.nr; r++) {
    for (n = 0; n < 16; n++) T[n] = SB[S[SR[n]]];
    if (r < k.nr) {
      for (c = 0; c < 16; c += 4) {
        a0 = T[c]; a1 = T[c + 1]; a2 = T[c + 2]; a3 = T[c + 3];
        S[c] = xt(a0) ^ xt(a1) ^ a1 ^ a2 ^ a3;
        S[c + 1] = a0 ^ xt(a1) ^ xt(a2) ^ a2 ^ a3;
        S[c + 2] = a0 ^ a1 ^ xt(a2) ^ xt(a3) ^ a3;
        S[c + 3] = xt(a0) ^ a0 ^ a1 ^ a2 ^ xt(a3);
      }
    } else { for (n = 0; n < 16; n++) S[n] = T[n]; }
    for (n = 0; n < 16; n++) S[n] ^= k.w[16 * r + n];
  }
  for (n = 0; n < 16; n++) out[n] = S[n];
}
var TE = new TextEncoder(), TD = new TextDecoder();
function u16(v, o) { return v[o] | (v[o + 1] << 8); }
function u32(v, o) { return (v[o] | (v[o + 1] << 8) | (v[o + 2] << 16) | (v[o + 3] << 24)) >>> 0; }
function w16(a, o, n) { a[o] = n & 255; a[o + 1] = (n >> 8) & 255; }
function w32(a, o, n) { w16(a, o, n & 65535); w16(a, o + 2, (n >>> 16) & 65535); }
function tick() { return new Promise(function (r) { setTimeout(r, 0); }); }
async function ctr(key, data) {
  var k = expand(key), n = data.length, out = new Uint8Array(n), c = new Uint8Array(16), ks = new Uint8Array(16), b = 0, o, j;
  for (o = 0; o < n; o += 16) {
    b++; c[0] = b & 255; c[1] = (b >> 8) & 255; c[2] = (b >> 16) & 255; c[3] = (b >> 24) & 255;
    block(k, c, ks);
    for (j = 0; j < 16 && o + j < n; j++) out[o + j] = data[o + j] ^ ks[j];
    if ((b & 16383) === 0) await tick();
  }
  return out;
}
async function kdf(pw, salt, len) {
  var km = await crypto.subtle.importKey('raw', TE.encode(pw), 'PBKDF2', false, ['deriveBits']);
  return new Uint8Array(await crypto.subtle.deriveBits({ name: 'PBKDF2', hash: 'SHA-1', salt: salt, iterations: 1000 }, km, len * 8));
}
async function hmac(key, data) {
  var k = await crypto.subtle.importKey('raw', key, { name: 'HMAC', hash: 'SHA-1' }, false, ['sign']);
  return new Uint8Array(await crypto.subtle.sign('HMAC', k, data)).subarray(0, 10);
}
async function inflate(d) {
  if (typeof DecompressionStream === 'undefined') throw new Error('method');
  var s = new Blob([d]).stream().pipeThrough(new DecompressionStream('deflate-raw'));
  return new Uint8Array(await new Response(s).arrayBuffer());
}
async function zipEnc(name, data, pw) {
  var salt = crypto.getRandomValues(new Uint8Array(16)), dk = await kdf(pw, salt, 66);
  var ct = await ctr(dk.subarray(0, 32), data), mac = await hmac(dk.subarray(32, 64), ct);
  var nm = TE.encode(name), csz = 16 + 2 + ct.length + 10, d = new Date();
  var dt = ((d.getFullYear() - 1980) << 9) | ((d.getMonth() + 1) << 5) | d.getDate();
  var tm = (d.getHours() << 11) | (d.getMinutes() << 5) | (d.getSeconds() >> 1);
  var ex = [1, 153, 7, 0, 2, 0, 65, 69, 3, 0, 0];
  var L = new Uint8Array(30 + nm.length + 11), C = new Uint8Array(46 + nm.length + 11), E = new Uint8Array(22);
  w32(L, 0, 0x04034b50); w16(L, 4, 51); w16(L, 6, 0x0801); w16(L, 8, 99); w16(L, 10, tm); w16(L, 12, dt);
  w32(L, 14, 0); w32(L, 18, csz); w32(L, 22, data.length); w16(L, 26, nm.length); w16(L, 28, 11);
  L.set(nm, 30); L.set(ex, 30 + nm.length);
  w32(C, 0, 0x02014b50); w16(C, 4, 51); w16(C, 6, 51); w16(C, 8, 0x0801); w16(C, 10, 99); w16(C, 12, tm); w16(C, 14, dt);
  w32(C, 16, 0); w32(C, 20, csz); w32(C, 24, data.length); w16(C, 28, nm.length); w16(C, 30, 11);
  C.set(nm, 46); C.set(ex, 46 + nm.length);
  w32(E, 0, 0x06054b50); w16(E, 8, 1); w16(E, 10, 1); w32(E, 12, C.length); w32(E, 16, L.length + csz);
  return new Blob([L, salt, dk.subarray(64, 66), ct, mac, C, E], { type: 'application/octet-stream' });
}
async function unzip(buf, pw) {
  var v = new Uint8Array(buf), e = -1, n, o, res = [], k, q, z;
  for (k = v.length - 22; k >= 0 && k >= v.length - 65557; k--) { if (u32(v, k) === 0x06054b50) { e = k; break; } }
  if (e < 0) throw new Error('bad');
  n = u16(v, e + 10); o = u32(v, e + 16);
  for (k = 0; k < n; k++) {
    if (u32(v, o) !== 0x02014b50) throw new Error('bad');
    var fl = u16(v, o + 8), m = u16(v, o + 10), cs = u32(v, o + 20), nl = u16(v, o + 28), xl = u16(v, o + 30), cl = u16(v, o + 32), lo = u32(v, o + 42);
    var nm = TD.decode(v.subarray(o + 46, o + 46 + nl)), xs = o + 46 + nl, xe = xs + xl, aes = null;
    for (q = xs; q + 4 <= xe;) { if (u16(v, q) === 0x9901) aes = { st: v[q + 8], m: u16(v, q + 9) }; q += 4 + u16(v, q + 2); }
    o += 46 + nl + xl + cl;
    if (nm.charAt(nm.length - 1) === '/') continue;
    var ds = lo + 30 + u16(v, lo + 26) + u16(v, lo + 28), raw = v.subarray(ds, ds + cs), data = raw, rm = m;
    if (fl & 1) {
      if (m !== 99 || !aes || aes.st < 1 || aes.st > 3) throw new Error('noaes');
      var kl = [0, 16, 24, 32][aes.st], sl = kl / 2, dk = await kdf(pw, raw.subarray(0, sl), 2 * kl + 2);
      if (dk[2 * kl] !== raw[sl] || dk[2 * kl + 1] !== raw[sl + 1]) throw new Error('pw');
      var ct = raw.subarray(sl + 2, raw.length - 10), mac = await hmac(dk.subarray(kl, 2 * kl), ct);
      for (z = 0; z < 10; z++) { if (mac[z] !== raw[raw.length - 10 + z]) throw new Error('mac'); }
      data = await ctr(dk.subarray(0, kl), ct); rm = aes.m;
    }
    if (rm === 8) data = await inflate(data); else if (rm !== 0) throw new Error('method');
    res.push({ name: nm, data: data });
  }
  return res;
}
if (typeof module === 'object' && module && module.exports) { module.exports = { expand: expand, block: block, zipEnc: zipEnc, unzip: unzip }; return; }
var ERR = { pw: 'รหัสผ่านไม่ถูกต้อง', mac: 'ไฟล์เสียหายหรือถูกแก้ไข', noaes: 'ไฟล์นี้ไม่ได้เข้ารหัสแบบ AES', method: 'ไม่รองรับรูปแบบบีบอัดนี้', x: 'ไม่ใช่ไฟล์ .enc ที่ถูกต้อง' };
var $ = function (s) { return document.getElementById(s); };
var mode = 'e', items = [], busy = false;
var dz = $('enc-drop'), fi = $('enc-file'), ls = $('enc-list'), p1 = $('enc-p1'), p2 = $('enc-p2'), go = $('enc-go'), all = $('enc-all'), msg = $('enc-msg'), hint = $('enc-hint');
var tabs = document.querySelectorAll('#enc .enc-tabs button');
function fmt(n) { return n < 1024 ? n + ' B' : n < 1048576 ? (n / 1024).toFixed(1) + ' KB' : (n / 1048576).toFixed(1) + ' MB'; }
function say(t, bad) { msg.textContent = t || ''; msg.className = bad ? 'bad' : ''; }
function isEnc(f) { return /\.enc$/i.test(f.name); }
function check() {
  var ok = items.length > 0 && p1.value !== '' && (mode === 'd' || p1.value === p2.value) && !busy;
  go.disabled = !ok;
  if (mode === 'e' && p2.value && p1.value !== p2.value) say('รหัสผ่านไม่ตรงกัน', true);
  else if (msg.className === 'bad' && msg.textContent === 'รหัสผ่านไม่ตรงกัน') say('');
}
function revoke(it) { (it.outs || []).forEach(function (o) { URL.revokeObjectURL(o.url); }); it.outs = null; it.err = null; }
function clearOut() { items.forEach(revoke); }
function render() {
  var n = 0, h = '';
  ls.textContent = '';
  items.forEach(function (it, ix) {
    var li = document.createElement('li'), nm = document.createElement('span'), sz = document.createElement('small'), xb = document.createElement('button');
    nm.textContent = (isEnc(it.f) ? '🔒 ' : '📄 ') + it.f.name; sz.textContent = fmt(it.f.size);
    xb.type = 'button'; xb.textContent = '×'; xb.setAttribute('aria-label', 'ลบ');
    xb.onclick = function () { revoke(it); items.splice(ix, 1); render(); };
    li.appendChild(nm); li.appendChild(sz);
    (it.outs || []).forEach(function (o) {
      var a = document.createElement('a'); a.href = o.url; a.download = o.name; a.textContent = '⬇ ' + o.name; li.appendChild(a); n++;
    });
    if (it.err) { var er = document.createElement('em'); er.textContent = it.err; li.appendChild(er); }
    li.appendChild(xb); ls.appendChild(li);
  });
  all.hidden = n < 2;
  if (mode === 'e' && items.some(isEnc)) h = 'มีไฟล์ .enc อยู่ในรายการ หากต้องการเปิดไฟล์ ให้สลับไปที่แท็บถอดรหัส';
  if (mode === 'd' && items.some(function (f) { return !isEnc(f.f); })) h = 'มีไฟล์ที่ไม่ใช่ .enc อยู่ในรายการ หากต้องการเข้ารหัส ให้สลับไปที่แท็บเข้ารหัส';
  hint.textContent = h;
  check();
}
function addFiles(list) {
  Array.prototype.slice.call(list).forEach(function (f) { items.push({ f: f }); });
  clearOut(); say(''); render();
}
async function run() {
  if (!window.crypto || !crypto.subtle) { say('เบราว์เซอร์นี้ไม่รองรับการเข้ารหัส (ต้องเปิดหน้านี้ผ่าน HTTPS)', true); return; }
  var ok = 0, k, it, buf, b, r;
  busy = true; clearOut(); check();
  for (k = 0; k < items.length; k++) {
    it = items[k]; say('กำลังประมวลผล ' + (k + 1) + '/' + items.length + ' …');
    try {
      buf = await it.f.arrayBuffer();
      if (mode === 'e') {
        b = await zipEnc(it.f.name, new Uint8Array(buf), p1.value);
        it.outs = [{ name: it.f.name + '.enc', url: URL.createObjectURL(b) }];
      } else {
        r = await unzip(buf, p1.value);
        it.outs = r.map(function (o) { return { name: o.name.split('/').pop() || 'file', url: URL.createObjectURL(new Blob([o.data])) }; });
      }
      ok++;
    } catch (e) { it.err = ERR[e && e.message] || ERR.x; }
    render();
  }
  busy = false; check();
  say(ok ? 'เสร็จแล้ว ' + ok + '/' + items.length + ' ไฟล์ กดดาวน์โหลดได้เลย' : 'ดำเนินการไม่สำเร็จ', !ok);
}
Array.prototype.forEach.call(tabs, function (t) {
  t.onclick = function () {
    mode = t.getAttribute('data-m');
    Array.prototype.forEach.call(tabs, function (o) { o.className = o === t ? 'on' : ''; });
    p2.style.display = mode === 'e' ? '' : 'none';
    go.textContent = mode === 'e' ? '🔒 เข้ารหัส' : '🔓 ถอดรหัส';
    clearOut(); say(''); render();
  };
});
fi.onchange = function () { addFiles(fi.files); fi.value = ''; };
dz.ondragover = function (e) { e.preventDefault(); dz.className = 'enc-drop over'; };
dz.ondragleave = function () { dz.className = 'enc-drop'; };
dz.ondrop = function (e) { e.preventDefault(); dz.className = 'enc-drop'; if (e.dataTransfer && e.dataTransfer.files.length) addFiles(e.dataTransfer.files); };
document.addEventListener('paste', function (e) { var f = e.clipboardData && e.clipboardData.files; if (f && f.length) addFiles(f); });
$('enc-show').onchange = function () { p1.type = p2.type = this.checked ? 'text' : 'password'; };
p1.oninput = p2.oninput = check;
go.onclick = run;
all.onclick = function () {
  var l = [];
  items.forEach(function (it) { (it.outs || []).forEach(function (o) { l.push(o); }); });
  l.forEach(function (o, n) {
    setTimeout(function () { var a = document.createElement('a'); a.href = o.url; a.download = o.name; document.body.appendChild(a); a.click(); a.remove(); }, n * 400);
  });
};
$('enc-clear').onclick = function () { clearOut(); items = []; p1.value = p2.value = ''; say(''); render(); };
$('enc-form').onsubmit = function (e) { e.preventDefault(); if (!go.disabled) run(); };
render();
})();
</script>

## วิธีใช้งานเครื่องมือเข้ารหัสและถอดรหัสไฟล์

### วิธีเข้ารหัสไฟล์

1. เลือกแท็บ **เข้ารหัส** ด้านบนของเครื่องมือ
2. ลากไฟล์มาวางในกรอบ คลิกเพื่อเลือกไฟล์ หรือกด `Ctrl`+`V` เพื่อวางไฟล์ที่คัดลอกไว้ เลือกได้หลายไฟล์พร้อมกัน
3. ตั้งรหัสผ่านและพิมพ์ยืนยันอีกครั้ง หากต้องการตรวจสอบตัวอักษร ให้ติ๊ก **แสดงรหัสผ่าน**
4. กดปุ่ม **เข้ารหัส** รอจนระบบแสดงว่าเสร็จแล้ว
5. กด **ดาวน์โหลด** ที่ไฟล์ `.enc` แต่ละไฟล์ หรือกด **ดาวน์โหลดทั้งหมด** เมื่อมีหลายไฟล์

### วิธีถอดรหัสไฟล์

1. เลือกแท็บ **ถอดรหัส**
2. เพิ่มไฟล์ `.enc` ที่ต้องการเปิด
3. กรอกรหัสผ่านเดียวกับที่ใช้ตอนเข้ารหัส
4. กดปุ่ม **ถอดรหัส** แล้วดาวน์โหลดไฟล์ต้นฉบับกลับมา

### ข้อควรรู้ก่อนใช้งาน

- รหัสผ่านที่ลืมไม่สามารถกู้คืนได้ ควรจดเก็บไว้ในที่ปลอดภัย
- ระหว่างประมวลผล ควรเปิดแท็บนี้ค้างไว้ การสลับแอปหรือล็อกหน้าจออาจทำให้ทำงานช้าลงหรือหยุดชั่วคราว
- ไฟล์ขนาดใหญ่ใช้เวลานานขึ้นและใช้หน่วยความจำของเครื่องมากขึ้น
- ไฟล์ `.enc` เปิดด้วยโปรแกรม ZIP ทั่วไปได้ โดยเปลี่ยนนามสกุลเป็น `.zip` แล้วกรอกรหัสผ่าน

## คำอธิบายศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยสรุป |
| --- | --- |
| เข้ารหัส (Encrypt) | แปลงไฟล์ให้อ่านไม่ได้ หากไม่มีรหัสผ่านที่ถูกต้อง |
| ถอดรหัส (Decrypt) | แปลงไฟล์ที่เข้ารหัสแล้วให้กลับมาใช้งานได้เหมือนเดิม |
| รหัสผ่าน (Password) | ข้อความลับที่ใช้ล็อกและปลดล็อกไฟล์ ยิ่งยาวและเดายากยิ่งปลอดภัย |
| AES-256 | มาตรฐานการเข้ารหัสที่แพร่หลาย ใช้กุญแจยาว 256 บิต เป็นที่ยอมรับในงานด้านความปลอดภัย |
| ไฟล์ .enc | ไฟล์ผลลัพธ์ที่ผ่านการเข้ารหัสแล้ว ภายในเป็น ZIP มาตรฐานที่มีรหัสผ่านป้องกัน |
| ZIP | รูปแบบไฟล์เก็บถาวรที่ใช้กันทั่วไป เปิดได้ด้วย 7-Zip, WinZip และ macOS |
| ประมวลผลในเครื่อง (Local processing) | การทำงานทั้งหมดเกิดในเบราว์เซอร์ของคุณ ไฟล์และรหัสผ่านไม่ถูกส่งไปที่เซิร์ฟเวอร์ |
| ไม่ต้องอัปโหลด | ไม่มีการส่งไฟล์ออกจากอุปกรณ์ จึงลดความเสี่ยงข้อมูลรั่วไหลระหว่างทาง |
| PBKDF2 | วิธีแปลงรหัสผ่านให้เป็นกุญแจเข้ารหัส โดยคำนวณซ้ำหลายรอบเพื่อให้เดารหัสผ่านยากขึ้น |
| HMAC | ค่าตรวจสอบความสมบูรณ์ของไฟล์ ใช้ยืนยันว่าไฟล์ไม่ถูกแก้ไขหรือเสียหาย |
| ยืนยันรหัสผ่าน | ช่องกรอกรหัสผ่านซ้ำ เพื่อป้องกันการพิมพ์ผิดตอนเข้ารหัส |