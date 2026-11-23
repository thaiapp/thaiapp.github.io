---
title: ตัวสร้าง QR Code และรหัสผ่านออนไลน์ ฟรี
h1: ตัวสร้าง QR Code และรหัสผ่านออนไลน์
description: ตัวสร้าง QR Code และรหัสผ่านออนไลน์ฟรี สร้าง QR ลิงก์ Wi-Fi LINE PromptPay ใส่โลโก้ ปรับสีได้ โหลด PNG/SVG พร้อมสุ่มรหัสผ่านปลอดภัย ใช้ในเบราว์เซอร์ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-23T09:00:00+07:00'
weight: 148
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างออนไลน์
- สร้าง QR Code
- QR Code Wi-Fi
- QR Code LINE
- QR PromptPay
- ตัวสร้างรหัสผ่าน
- สุ่มรหัสผ่าน
- สุ่มและคำนวณ
---

<style>
.pg{--pg-line:rgba(127,127,127,.38);--pg-soft:rgba(127,127,127,.08);--pg-accent:#2563eb;color-scheme:light dark;margin:1.25rem 0 2rem;max-width:100%;color:inherit}
.pg,.pg *{box-sizing:border-box}
.pg [hidden]{display:none!important}
.pg-tabs{display:flex;gap:.25rem;margin-bottom:1rem;border-bottom:1px solid var(--pg-line)}
.pg-tab{appearance:none;-webkit-appearance:none;background:none;border:0;border-bottom:3px solid transparent;margin-bottom:-1px;padding:.65rem 1.1rem;font:inherit;font-weight:600;color:inherit;opacity:.7;cursor:pointer}
.pg-tab:hover{opacity:1}
.pg-tab.is-active{border-bottom-color:var(--pg-accent);opacity:1}
.pg-tab:focus-visible,.pg-btn:focus-visible,.pg .pg-in:focus-visible,.pg summary:focus-visible{outline:2px solid var(--pg-accent);outline-offset:2px}
.pg-grid{display:grid;grid-template-columns:minmax(0,1fr) minmax(0,360px);gap:1.25rem;align-items:start}
@media (max-width:780px){.pg-grid{grid-template-columns:minmax(0,1fr)}}
.pg-card{border:1px solid var(--pg-line);border-radius:10px;padding:1rem;background:var(--pg-soft)}
.pg-f{margin-bottom:.85rem}
.pg-f>label,.pg-lab{display:block;font-weight:600;font-size:.92em;margin-bottom:.3rem}
.pg-hint{font-size:.82em;opacity:.78;margin-top:.25rem;line-height:1.5}
.pg .pg-in{display:block;width:100%;padding:.5rem .65rem;border:1px solid var(--pg-line);border-radius:6px;background:transparent;color:inherit;font:inherit}
.pg textarea.pg-in{min-height:5.5rem;resize:vertical}
.pg input[type=range]{width:100%;accent-color:var(--pg-accent)}
.pg input[type=color]{width:100%;height:2.4rem;padding:2px;border:1px solid var(--pg-line);border-radius:6px;background:transparent}
.pg-row{display:grid;grid-template-columns:1fr 1fr;gap:.75rem}
.pg-chk{display:flex;gap:.5rem;align-items:flex-start;margin:.35rem 0;font-weight:400;cursor:pointer}
.pg-chk input{margin-top:.3rem}
.pg-det{border:1px solid var(--pg-line);border-radius:8px;padding:.25rem .85rem .6rem;margin-top:.25rem}
.pg-det summary{cursor:pointer;font-weight:600;padding:.5rem 0}
.pg-btn{appearance:none;-webkit-appearance:none;border:1px solid var(--pg-line);background:transparent;color:inherit;border-radius:6px;padding:.5rem .9rem;font:inherit;font-weight:600;cursor:pointer}
.pg-btn:hover:not(:disabled){border-color:var(--pg-accent)}
.pg-btn:disabled{opacity:.45;cursor:not-allowed}
.pg-btn--p{background:var(--pg-accent);border-color:var(--pg-accent);color:#fff}
.pg-actions{display:flex;flex-wrap:wrap;gap:.5rem;margin-top:.85rem}
.pg-out{text-align:center}
.pg-out canvas{display:block;margin:0 auto;max-width:100%;height:auto;border:1px solid var(--pg-line);border-radius:6px}
.pg-empty{padding:2.5rem 1rem;border:1px dashed var(--pg-line);border-radius:8px;opacity:.8}
.pg-warn{margin-top:.75rem;padding:.5rem .75rem;border-left:4px solid #d97706;background:rgba(217,119,6,.12);text-align:left;font-size:.88em;line-height:1.55}
.pg-warn p{margin:.15rem 0}
.pg-seg{display:flex;gap:1rem;flex-wrap:wrap}
.pg-seg label{display:flex;gap:.4rem;align-items:center;font-weight:400;cursor:pointer}
.pg-pw{display:flex;gap:.5rem;align-items:center;padding:.5rem .65rem;margin-bottom:.5rem;border:1px solid var(--pg-line);border-radius:6px;background:transparent}
.pg-pw code{flex:1;min-width:0;font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:1.05em;word-break:break-all;background:none;padding:0;border:0;color:inherit;user-select:all}
.pg-bar{height:8px;border-radius:4px;background:var(--pg-line);overflow:hidden;margin-top:.9rem}
.pg-bar i{display:block;height:100%;width:0;border-radius:4px;transition:width .2s}
.pg-toast{position:fixed;left:50%;bottom:1.5rem;transform:translateX(-50%);background:#111;color:#fff;padding:.5rem 1.1rem;border-radius:999px;font-size:.92em;z-index:99999;opacity:0;pointer-events:none;transition:opacity .2s}
.pg-toast.is-on{opacity:1}
@media (prefers-reduced-motion:reduce){.pg-bar i,.pg-toast{transition:none}}
</style>

<div class="pg" id="pg-app">
<div class="pg-tabs" role="tablist" aria-label="เลือกเครื่องมือ">
<button type="button" class="pg-tab is-active" role="tab" id="tab-qr" data-tab="qr" aria-selected="true" aria-controls="pg-qr">สร้าง QR Code</button>
<button type="button" class="pg-tab" role="tab" id="tab-pw" data-tab="pw" aria-selected="false" aria-controls="pg-pw">สร้างรหัสผ่าน</button>
</div>
<div class="pg-panel" id="pg-qr" role="tabpanel" aria-labelledby="tab-qr">
<div class="pg-grid">
<div class="pg-card">
<div class="pg-f"><label for="qr-type">ประเภท QR Code</label><select class="pg-in" id="qr-type"></select></div>
<div id="qr-fields"></div>
<details class="pg-det" open>
<summary>ปรับแต่งหน้าตา QR Code</summary>
<div class="pg-row">
<div class="pg-f"><label for="qr-fg">สีจุด</label><input type="color" id="qr-fg" value="#000000"></div>
<div class="pg-f"><label for="qr-bg">สีพื้นหลัง</label><input type="color" id="qr-bg" value="#ffffff"></div>
</div>
<div class="pg-row">
<div class="pg-f"><label for="qr-shape">รูปแบบจุด</label><select class="pg-in" id="qr-shape"><option value="square">สี่เหลี่ยม</option><option value="rounded">มุมมน</option><option value="dots">วงกลม</option></select></div>
<div class="pg-f"><label for="qr-ecc">ความทนทานต่อข้อผิดพลาด</label><select class="pg-in" id="qr-ecc"><option value="0">L (~7%)</option><option value="1" selected>M (~15%)</option><option value="2">Q (~25%)</option><option value="3">H (~30%)</option></select></div>
</div>
<div class="pg-f"><label for="qr-size">ขนาดภาพ: <output id="qr-size-v">512</output> px</label><input type="range" id="qr-size" min="200" max="1200" step="20" value="512"></div>
<div class="pg-f"><label for="qr-margin">ขอบว่างรอบ QR (Quiet zone): <output id="qr-margin-v">4</output> โมดูล</label><input type="range" id="qr-margin" min="0" max="10" step="1" value="4"></div>
<div class="pg-f"><label for="qr-logo">โลโก้กลาง QR Code (ไม่บังคับ)</label><input class="pg-in" type="file" id="qr-logo" accept="image/*"><div class="pg-hint">เมื่อใส่โลโก้ ระบบจะเปลี่ยนความทนทานต่อข้อผิดพลาดเป็นระดับ H ให้อัตโนมัติ</div></div>
<div class="pg-f" id="qr-logo-opts" hidden><label for="qr-logo-size">ขนาดโลโก้: <output id="qr-logo-size-v">20</output>%</label><input type="range" id="qr-logo-size" min="10" max="30" step="1" value="20"><div class="pg-actions"><button type="button" class="pg-btn" id="qr-logo-clear">ลบโลโก้</button></div></div>
<div class="pg-f"><label for="qr-cap">ข้อความใต้ QR Code (ไม่บังคับ)</label><input class="pg-in" type="text" id="qr-cap" maxlength="40" placeholder="เช่น สแกนเพื่อดูเมนู"></div>
</details>
</div>
<div class="pg-card pg-out">
<div class="pg-empty" id="qr-empty">กรอกข้อมูลทางซ้ายเพื่อสร้าง QR Code</div>
<canvas id="qr-canvas" width="300" height="300" aria-label="ตัวอย่าง QR Code" hidden></canvas>
<div class="pg-warn" id="qr-warn" role="status" hidden></div>
<div class="pg-hint" id="qr-info"></div>
<div class="pg-actions" style="justify-content:center">
<button type="button" class="pg-btn pg-btn--p" id="qr-png" disabled>ดาวน์โหลด PNG</button>
<button type="button" class="pg-btn" id="qr-svg" disabled>ดาวน์โหลด SVG</button>
<button type="button" class="pg-btn" id="qr-copy" disabled>คัดลอกรูป</button>
<button type="button" class="pg-btn" id="qr-share" hidden>แชร์</button>
</div>
</div>
</div>
</div>
<div class="pg-panel" id="pg-pw" role="tabpanel" aria-labelledby="tab-pw" hidden>
<div class="pg-grid">
<div class="pg-card">
<div class="pg-f"><span class="pg-lab">รูปแบบ</span><div class="pg-seg"><label><input type="radio" name="pw-mode" value="password" checked> รหัสผ่าน</label><label><input type="radio" name="pw-mode" value="pin"> PIN (ตัวเลขล้วน)</label></div></div>
<div class="pg-f"><label for="pw-len">ความยาว: <output id="pw-len-v">16</output> ตัวอักษร</label><input type="range" id="pw-len" min="4" max="64" step="1" value="16"></div>
<div id="pw-opts">
<div class="pg-f">
<span class="pg-lab">ชุดตัวอักษร</span>
<label class="pg-chk"><input type="checkbox" id="pw-lower" checked> ตัวพิมพ์เล็ก (a-z)</label>
<label class="pg-chk"><input type="checkbox" id="pw-upper" checked> ตัวพิมพ์ใหญ่ (A-Z)</label>
<label class="pg-chk"><input type="checkbox" id="pw-digits" checked> ตัวเลข (0-9)</label>
<label class="pg-chk"><input type="checkbox" id="pw-symbols"> สัญลักษณ์ (!@#$%&amp;*)</label>
</div>
<div class="pg-f">
<label class="pg-chk"><input type="checkbox" id="pw-amb" checked> ไม่รวมตัวอักษรที่คล้ายกัน (0 O o 1 l I i L)</label>
<label class="pg-chk"><input type="checkbox" id="pw-each" checked> ต้องมีครบทุกชุดที่เลือกอย่างน้อยอย่างละ 1 ตัว</label>
</div>
</div>
<div class="pg-f"><label for="pw-count">จำนวนที่สร้างต่อครั้ง</label><select class="pg-in" id="pw-count"><option value="1">1 รายการ</option><option value="5">5 รายการ</option><option value="10">10 รายการ</option></select></div>
<button type="button" class="pg-btn pg-btn--p" id="pw-gen">สร้างใหม่</button>
</div>
<div class="pg-card">
<div id="pw-list" aria-live="polite"></div>
<div class="pg-warn" id="pw-warn" role="status" hidden></div>
<div id="pw-meter" hidden>
<div class="pg-bar"><i id="pw-bar"></i></div>
<div class="pg-hint" id="pw-info"></div>
</div>
<div class="pg-actions"><button type="button" class="pg-btn" id="pw-copyall" hidden>คัดลอกทั้งหมด</button></div>
<div class="pg-hint">รหัสผ่านถูกสุ่มในเบราว์เซอร์ของคุณ ไม่มีการส่งข้อมูลไปที่เซิร์ฟเวอร์</div>
</div>
</div>
</div>
<div class="pg-toast" id="pg-toast" role="status" aria-live="polite"></div>
</div>

<script>
(function () {
  'use strict';
  var $ = function (id) { return document.getElementById(id); };
  if (!$('pg-app')) { return; }

  /* ---------- ยูทิลิตี้ ---------- */
  var toastTimer;
  function toast(msg) {
    var t = $('pg-toast');
    t.textContent = msg;
    t.classList.add('is-on');
    clearTimeout(toastTimer);
    toastTimer = setTimeout(function () { t.classList.remove('is-on'); }, 1900);
  }
  function copyText(text) {
    function fallback() {
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
      toast(ok ? 'คัดลอกแล้ว' : 'คัดลอกไม่สำเร็จ กรุณาคัดลอกด้วยตนเอง');
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(function () { toast('คัดลอกแล้ว'); }, fallback);
    } else {
      fallback();
    }
  }
  function download(blob, name) {
    var url = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = url;
    a.download = name;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 1500);
  }
  function escXml(s) {
    return String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
  }

  /* ---------- แท็บ ---------- */
  function showTab(name) {
    ['qr', 'pw'].forEach(function (n) {
      var on = n === name;
      $('pg-' + n).hidden = !on;
      $('tab-' + n).classList.toggle('is-active', on);
      $('tab-' + n).setAttribute('aria-selected', on ? 'true' : 'false');
    });
  }
  [].forEach.call(document.querySelectorAll('.pg-tab'), function (b) {
    b.addEventListener('click', function () { showTab(b.getAttribute('data-tab')); });
  });
  function tabFromHash() {
    var h = (location.hash || '').toLowerCase();
    if (h === '#password' || h === '#pw') { showTab('pw'); }
    else if (h === '#qr' || h === '#qrcode') { showTab('qr'); }
  }
  window.addEventListener('hashchange', tabFromHash);

  /* ---------- ตัวเข้ารหัส QR Code (โหมด byte, เวอร์ชัน 1-40) ---------- */
  var ECC_PER_BLOCK = [
    [-1, 7, 10, 15, 20, 26, 18, 20, 24, 30, 18, 20, 24, 26, 30, 22, 24, 28, 30, 28, 28, 28, 28, 30, 30, 26, 28, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30],
    [-1, 10, 16, 26, 18, 24, 16, 18, 22, 22, 26, 30, 22, 22, 24, 24, 28, 28, 26, 26, 26, 26, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28],
    [-1, 13, 22, 18, 26, 18, 24, 18, 22, 20, 24, 28, 26, 24, 20, 30, 24, 28, 28, 26, 30, 28, 30, 30, 30, 30, 28, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30],
    [-1, 17, 28, 22, 16, 22, 28, 26, 26, 24, 28, 24, 28, 22, 24, 24, 30, 28, 28, 26, 28, 30, 24, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30]
  ];
  var NUM_BLOCKS = [
    [-1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 4, 6, 6, 6, 6, 7, 8, 8, 9, 9, 10, 12, 12, 12, 13, 14, 15, 16, 17, 18, 19, 19, 20, 21, 22, 24, 25],
    [-1, 1, 1, 1, 2, 2, 4, 4, 4, 5, 5, 5, 8, 9, 9, 10, 10, 11, 13, 14, 16, 17, 17, 18, 20, 21, 23, 25, 26, 28, 29, 31, 33, 35, 37, 38, 40, 43, 45, 47, 49],
    [-1, 1, 1, 2, 2, 4, 4, 6, 6, 8, 8, 8, 10, 12, 16, 12, 17, 16, 18, 21, 20, 23, 23, 25, 27, 29, 34, 34, 35, 38, 40, 43, 45, 48, 51, 53, 56, 59, 62, 65, 68],
    [-1, 1, 1, 2, 4, 4, 4, 5, 6, 8, 8, 11, 11, 16, 16, 18, 16, 19, 21, 25, 25, 25, 34, 30, 32, 35, 37, 40, 42, 45, 48, 51, 54, 57, 60, 63, 66, 70, 74, 77, 81]
  ];
  var FORMAT_BITS = [1, 0, 3, 2]; /* L, M, Q, H */

  function rawModules(v) {
    var r = (16 * v + 128) * v + 64;
    if (v >= 2) {
      var na = Math.floor(v / 7) + 2;
      r -= (25 * na - 10) * na - 55;
      if (v >= 7) { r -= 36; }
    }
    return r;
  }
  function dataCodewords(v, e) {
    return Math.floor(rawModules(v) / 8) - ECC_PER_BLOCK[e][v] * NUM_BLOCKS[e][v];
  }
  function gfMul(x, y) {
    var z = 0;
    for (var i = 7; i >= 0; i--) {
      z = (z << 1) ^ ((z >>> 7) * 0x11D);
      z ^= ((y >>> i) & 1) * x;
    }
    return z;
  }
  function rsDivisor(deg) {
    var r = [], i, j;
    for (i = 0; i < deg - 1; i++) { r.push(0); }
    r.push(1);
    var root = 1;
    for (i = 0; i < deg; i++) {
      for (j = 0; j < r.length; j++) {
        r[j] = gfMul(r[j], root);
        if (j + 1 < r.length) { r[j] ^= r[j + 1]; }
      }
      root = gfMul(root, 2);
    }
    return r;
  }
  function rsRemainder(data, div) {
    var r = div.map(function () { return 0; });
    data.forEach(function (b) {
      var f = b ^ r.shift();
      r.push(0);
      div.forEach(function (c, i) { r[i] ^= gfMul(c, f); });
    });
    return r;
  }
  function addEcc(data, v, e) {
    var nb = NUM_BLOCKS[e][v], be = ECC_PER_BLOCK[e][v];
    var raw = Math.floor(rawModules(v) / 8);
    var nShort = nb - (raw % nb), shortLen = Math.floor(raw / nb);
    var blocks = [], div = rsDivisor(be), i, k = 0;
    for (i = 0; i < nb; i++) {
      var dat = data.slice(k, k + shortLen - be + (i < nShort ? 0 : 1));
      k += dat.length;
      var ecc = rsRemainder(dat, div);
      if (i < nShort) { dat.push(0); }
      blocks.push(dat.concat(ecc));
    }
    var out = [];
    for (i = 0; i < blocks[0].length; i++) {
      blocks.forEach(function (b, j) {
        if (i !== shortLen - be || j >= nShort) { out.push(b[i]); }
      });
    }
    return out;
  }
  function bit(x, i) { return ((x >>> i) & 1) !== 0; }

  function alignPositions(v, size) {
    if (v === 1) { return []; }
    var n = Math.floor(v / 7) + 2;
    var step = (v === 32) ? 26 : Math.ceil((v * 4 + 4) / (n * 2 - 2)) * 2;
    var r = [6];
    for (var pos = size - 7; r.length < n; pos -= step) { r.splice(1, 0, pos); }
    return r;
  }

  function penaltyScore(m, size) {
    var p = 0, x, y, run, dark = 0, i;
    for (y = 0; y < size; y++) {
      run = 1;
      for (x = 1; x < size; x++) {
        if (m[y][x] === m[y][x - 1]) { run++; } else { if (run >= 5) { p += run - 2; } run = 1; }
      }
      if (run >= 5) { p += run - 2; }
    }
    for (x = 0; x < size; x++) {
      run = 1;
      for (y = 1; y < size; y++) {
        if (m[y][x] === m[y - 1][x]) { run++; } else { if (run >= 5) { p += run - 2; } run = 1; }
      }
      if (run >= 5) { p += run - 2; }
    }
    for (y = 0; y < size - 1; y++) {
      for (x = 0; x < size - 1; x++) {
        if (m[y][x] === m[y][x + 1] && m[y][x] === m[y + 1][x] && m[y][x] === m[y + 1][x + 1]) { p += 3; }
      }
    }
    var pats = ['10111010000', '00001011101'];
    function scan(str) {
      var c = 0;
      pats.forEach(function (pt) {
        var at = str.indexOf(pt);
        while (at !== -1) { c++; at = str.indexOf(pt, at + 1); }
      });
      return c * 40;
    }
    for (y = 0; y < size; y++) {
      var rs = '';
      for (x = 0; x < size; x++) { rs += m[y][x] ? '1' : '0'; if (m[y][x]) { dark++; } }
      p += scan(rs);
    }
    for (x = 0; x < size; x++) {
      var cs = '';
      for (y = 0; y < size; y++) { cs += m[y][x] ? '1' : '0'; }
      p += scan(cs);
    }
    var total = size * size;
    p += Math.floor(Math.abs(dark * 20 - total * 10) / total) * 10;
    return p;
  }

  /* bytes: Array ของตัวเลข 0-255, ecl: 0=L 1=M 2=Q 3=H */
  function qrCreate(bytes, ecl) {
    var v, i, j, x, y;
    for (v = 1; ; v++) {
      if (v > 40) { throw new Error('ข้อมูลยาวเกินกว่าที่ QR Code จะรองรับได้'); }
      if (4 + (v < 10 ? 8 : 16) + bytes.length * 8 <= dataCodewords(v, ecl) * 8) { break; }
    }
    var bits = [];
    function put(val, len) { for (var k = len - 1; k >= 0; k--) { bits.push((val >>> k) & 1); } }
    put(4, 4);
    put(bytes.length, v < 10 ? 8 : 16);
    bytes.forEach(function (b) { put(b, 8); });
    var cap = dataCodewords(v, ecl) * 8;
    put(0, Math.min(4, cap - bits.length));
    put(0, (8 - (bits.length % 8)) % 8);
    for (var pad = 0xEC; bits.length < cap; pad ^= 0xEC ^ 0x11) { put(pad, 8); }
    var data = [];
    for (i = 0; i < bits.length; i += 8) {
      var byte = 0;
      for (j = 0; j < 8; j++) { byte = (byte << 1) | bits[i + j]; }
      data.push(byte);
    }
    var all = addEcc(data, v, ecl);

    var size = v * 4 + 17;
    var m = [], fn = [];
    for (y = 0; y < size; y++) {
      m.push([]); fn.push([]);
      for (x = 0; x < size; x++) { m[y].push(false); fn[y].push(false); }
    }
    function setFn(px, py, dark) { m[py][px] = dark; fn[py][px] = true; }
    function finder(cx, cy) {
      for (var dy = -4; dy <= 4; dy++) {
        for (var dx = -4; dx <= 4; dx++) {
          var d = Math.max(Math.abs(dx), Math.abs(dy)), xx = cx + dx, yy = cy + dy;
          if (xx >= 0 && xx < size && yy >= 0 && yy < size) { setFn(xx, yy, d !== 2 && d !== 4); }
        }
      }
    }
    function align(cx, cy) {
      for (var dy = -2; dy <= 2; dy++) {
        for (var dx = -2; dx <= 2; dx++) { setFn(cx + dx, cy + dy, Math.max(Math.abs(dx), Math.abs(dy)) !== 1); }
      }
    }
    function formatBits(mask) {
      var d = (FORMAT_BITS[ecl] << 3) | mask, rem = d, k;
      for (k = 0; k < 10; k++) { rem = (rem << 1) ^ ((rem >>> 9) * 0x537); }
      var b = ((d << 10) | rem) ^ 0x5412;
      for (k = 0; k <= 5; k++) { setFn(8, k, bit(b, k)); }
      setFn(8, 7, bit(b, 6)); setFn(8, 8, bit(b, 7)); setFn(7, 8, bit(b, 8));
      for (k = 9; k < 15; k++) { setFn(14 - k, 8, bit(b, k)); }
      for (k = 0; k < 8; k++) { setFn(size - 1 - k, 8, bit(b, k)); }
      for (k = 8; k < 15; k++) { setFn(8, size - 15 + k, bit(b, k)); }
      setFn(8, size - 8, true);
    }
    for (i = 0; i < size; i++) { setFn(6, i, i % 2 === 0); setFn(i, 6, i % 2 === 0); }
    finder(3, 3); finder(size - 4, 3); finder(3, size - 4);
    var ap = alignPositions(v, size), na = ap.length;
    for (i = 0; i < na; i++) {
      for (j = 0; j < na; j++) {
        if (!((i === 0 && j === 0) || (i === 0 && j === na - 1) || (i === na - 1 && j === 0))) { align(ap[i], ap[j]); }
      }
    }
    formatBits(0);
    if (v >= 7) {
      var vr = v;
      for (i = 0; i < 12; i++) { vr = (vr << 1) ^ ((vr >>> 11) * 0x1F25); }
      var vb = (v << 12) | vr;
      for (i = 0; i < 18; i++) {
        var a = size - 11 + (i % 3), b2 = Math.floor(i / 3), col = bit(vb, i);
        setFn(a, b2, col); setFn(b2, a, col);
      }
    }
    var k2 = 0;
    for (var right = size - 1; right >= 1; right -= 2) {
      if (right === 6) { right = 5; }
      for (var vert = 0; vert < size; vert++) {
        for (j = 0; j < 2; j++) {
          x = right - j;
          y = (((right + 1) & 2) === 0) ? size - 1 - vert : vert;
          if (!fn[y][x] && k2 < all.length * 8) {
            m[y][x] = bit(all[k2 >>> 3], 7 - (k2 & 7));
            k2++;
          }
        }
      }
    }
    function applyMask(mask) {
      for (var yy = 0; yy < size; yy++) {
        for (var xx = 0; xx < size; xx++) {
          var inv;
          switch (mask) {
            case 0: inv = (xx + yy) % 2 === 0; break;
            case 1: inv = yy % 2 === 0; break;
            case 2: inv = xx % 3 === 0; break;
            case 3: inv = (xx + yy) % 3 === 0; break;
            case 4: inv = (Math.floor(xx / 3) + Math.floor(yy / 2)) % 2 === 0; break;
            case 5: inv = (xx * yy) % 2 + (xx * yy) % 3 === 0; break;
            case 6: inv = ((xx * yy) % 2 + (xx * yy) % 3) % 2 === 0; break;
            default: inv = ((xx + yy) % 2 + (xx * yy) % 3) % 2 === 0;
          }
          if (!fn[yy][xx] && inv) { m[yy][xx] = !m[yy][xx]; }
        }
      }
    }
    var best = 0, bestP = Infinity;
    for (var mk = 0; mk < 8; mk++) {
      applyMask(mk);
      formatBits(mk);
      var pn = penaltyScore(m, size);
      if (pn < bestP) { bestP = pn; best = mk; }
      applyMask(mk);
    }
    applyMask(best);
    formatBits(best);
    return { version: v, size: size, m: m };
  }

  function utf8(str) {
    if (window.TextEncoder) { return Array.prototype.slice.call(new TextEncoder().encode(str)); }
    var s = unescape(encodeURIComponent(str)), out = [];
    for (var i = 0; i < s.length; i++) { out.push(s.charCodeAt(i)); }
    return out;
  }

  /* ---------- สร้างข้อมูลตามประเภท QR ---------- */
  function crc16(str) {
    var crc = 0xFFFF;
    for (var i = 0; i < str.length; i++) {
      crc ^= str.charCodeAt(i) << 8;
      for (var j = 0; j < 8; j++) {
        crc = (crc & 0x8000) ? ((crc << 1) ^ 0x1021) : (crc << 1);
        crc &= 0xFFFF;
      }
    }
    return ('0000' + crc.toString(16).toUpperCase()).slice(-4);
  }
  function tlv(tag, val) { return tag + ('0' + val.length).slice(-2) + val; }
  function promptPay(idRaw, amountRaw) {
    var d = String(idRaw).replace(/\D/g, ''), sub, val;
    if (d.length === 13) { sub = '02'; val = d; }
    else if (d.length === 10 && d.charAt(0) === '0') { sub = '01'; val = '0066' + d.slice(1); }
    else if (d.length === 11 && d.slice(0, 2) === '66') { sub = '01'; val = '00' + d; }
    else if (d.length === 15) { sub = '03'; val = d; }
    else { throw new Error('PromptPay: ใส่เบอร์มือถือ 10 หลัก เลขบัตรประชาชน/ภาษี 13 หลัก หรือ e-Wallet ID 15 หลัก'); }
    var amount = parseFloat(String(amountRaw).replace(/,/g, ''));
    var hasAmt = amountRaw !== '' && !isNaN(amount) && amount > 0;
    if (String(amountRaw).trim() !== '' && !hasAmt) { throw new Error('PromptPay: จำนวนเงินต้องเป็นตัวเลขมากกว่า 0'); }
    if (hasAmt && amount > 99999999.99) { throw new Error('PromptPay: จำนวนเงินสูงเกินไป'); }
    var out = tlv('00', '01') + tlv('01', hasAmt ? '12' : '11') +
      tlv('29', tlv('00', 'A000000677010111') + tlv(sub, val)) +
      tlv('58', 'TH') + tlv('53', '764') + (hasAmt ? tlv('54', amount.toFixed(2)) : '') + '6304';
    return out + crc16(out);
  }
  function wifiEsc(s) { return String(s).replace(/([\\;,:"])/g, '\\$1'); }
  function vEsc(s) { return String(s).replace(/([\\,;])/g, '\\$1').replace(/\r?\n/g, '\\n'); }
  function waNumber(raw) {
    var d = String(raw).replace(/\D/g, '');
    if (d.slice(0, 2) === '00') { d = d.slice(2); }
    else if (d.charAt(0) === '0') { d = '66' + d.slice(1); }
    return d;
  }

  var TYPES = {
    text: {
      label: 'ข้อความ / ลิงก์ (URL)',
      fields: [{ id: 'text', label: 'ข้อความหรือลิงก์', kind: 'textarea', ph: 'https://www.example.com', hint: 'ลิงก์ควรขึ้นต้นด้วย https:// เพื่อให้มือถือเปิดได้ทันที' }],
      build: function (v) { return v.text.trim(); }
    },
    wifi: {
      label: 'Wi-Fi',
      fields: [
        { id: 'ssid', label: 'ชื่อเครือข่าย (SSID)', kind: 'text', ph: 'MyWiFi' },
        { id: 'pass', label: 'รหัสผ่าน Wi-Fi', kind: 'text', ph: 'รหัสผ่านของเครือข่าย' },
        { id: 'enc', label: 'ชนิดการเข้ารหัส', kind: 'select', opts: [['WPA', 'WPA / WPA2 / WPA3'], ['WEP', 'WEP'], ['nopass', 'ไม่มีรหัสผ่าน']] },
        { id: 'hid', label: 'เครือข่ายซ่อนชื่อ (Hidden SSID)', kind: 'check' }
      ],
      build: function (v) {
        if (!v.ssid.trim()) { return ''; }
        var s = 'WIFI:T:' + v.enc + ';S:' + wifiEsc(v.ssid) + ';';
        if (v.enc !== 'nopass') { s += 'P:' + wifiEsc(v.pass) + ';'; }
        if (v.hid) { s += 'H:true;'; }
        return s + ';';
      }
    },
    whatsapp: {
      label: 'WhatsApp',
      fields: [
        { id: 'phone', label: 'เบอร์โทร', kind: 'text', ph: '0812345678', hint: 'ใส่รหัสประเทศได้ เช่น 66812345678 ถ้าขึ้นต้นด้วย 0 ระบบจะแปลงเป็นเบอร์ไทย (66) ให้' },
        { id: 'msg', label: 'ข้อความเริ่มต้น (ไม่บังคับ)', kind: 'textarea', ph: 'สวัสดีครับ สนใจสินค้า' }
      ],
      build: function (v) {
        var n = waNumber(v.phone);
        if (!n) { return ''; }
        return 'https://wa.me/' + n + (v.msg.trim() ? '?text=' + encodeURIComponent(v.msg.trim()) : '');
      }
    },
    line: {
      label: 'LINE',
      fields: [{ id: 'id', label: 'LINE ID หรือ LINE Official Account', kind: 'text', ph: '@myshop', hint: 'LINE OA ขึ้นต้นด้วย @ เช่น @myshop ส่วน LINE ID ส่วนตัวพิมพ์ได้เลย เช่น myname (หรือวางลิงก์ LINE ที่มีอยู่แล้วก็ได้)' }],
      build: function (v) {
        var id = v.id.trim();
        if (!id) { return ''; }
        if (/^https?:\/\//i.test(id)) { return id; }
        if (id.charAt(0) === '@') { return 'https://line.me/R/ti/p/' + encodeURIComponent(id); }
        return 'https://line.me/ti/p/~' + encodeURIComponent(id.replace(/^~/, ''));
      }
    },
    promptpay: {
      label: 'PromptPay (พร้อมเพย์)',
      fields: [
        { id: 'id', label: 'เบอร์มือถือ / เลขบัตรประชาชน / เลขภาษี', kind: 'text', ph: '0812345678', hint: 'เบอร์มือถือ 10 หลัก เลขบัตรประชาชนหรือเลขประจำตัวผู้เสียภาษี 13 หลัก หรือ e-Wallet ID 15 หลัก' },
        { id: 'amt', label: 'จำนวนเงิน (บาท, ไม่บังคับ)', kind: 'text', ph: 'เว้นว่างเพื่อให้ผู้โอนกรอกเอง' }
      ],
      build: function (v) {
        if (!v.id.trim()) { return ''; }
        return promptPay(v.id, v.amt.trim());
      }
    },
    tel: {
      label: 'โทรศัพท์',
      fields: [{ id: 'phone', label: 'เบอร์โทรศัพท์', kind: 'text', ph: '0812345678' }],
      build: function (v) {
        var p = v.phone.replace(/[^\d+]/g, '');
        return p ? 'tel:' + p : '';
      }
    },
    sms: {
      label: 'SMS',
      fields: [
        { id: 'phone', label: 'เบอร์โทรศัพท์', kind: 'text', ph: '0812345678' },
        { id: 'msg', label: 'ข้อความ', kind: 'textarea', ph: 'พิมพ์ข้อความที่ต้องการส่ง' }
      ],
      build: function (v) {
        var p = v.phone.replace(/[^\d+]/g, '');
        return p ? 'SMSTO:' + p + ':' + v.msg : '';
      }
    },
    email: {
      label: 'อีเมล',
      fields: [
        { id: 'to', label: 'ส่งถึง', kind: 'text', ph: 'name@example.com' },
        { id: 'sub', label: 'หัวข้อ (ไม่บังคับ)', kind: 'text', ph: '' },
        { id: 'body', label: 'เนื้อหา (ไม่บังคับ)', kind: 'textarea', ph: '' }
      ],
      build: function (v) {
        var to = v.to.trim();
        if (!to) { return ''; }
        var q = [];
        if (v.sub.trim()) { q.push('subject=' + encodeURIComponent(v.sub.trim())); }
        if (v.body.trim()) { q.push('body=' + encodeURIComponent(v.body.trim())); }
        return 'mailto:' + to + (q.length ? '?' + q.join('&') : '');
      }
    },
    vcard: {
      label: 'นามบัตร (vCard)',
      fields: [
        { id: 'name', label: 'ชื่อ-นามสกุล', kind: 'text', ph: 'สมชาย ใจดี' },
        { id: 'org', label: 'บริษัท / องค์กร', kind: 'text', ph: '' },
        { id: 'phone', label: 'เบอร์โทรศัพท์', kind: 'text', ph: '0812345678' },
        { id: 'mail', label: 'อีเมล', kind: 'text', ph: 'name@example.com' },
        { id: 'url', label: 'เว็บไซต์', kind: 'text', ph: 'https://www.example.com' }
      ],
      build: function (v) {
        var name = v.name.trim();
        if (!name) { return ''; }
        var sp = name.indexOf(' '), given = sp === -1 ? name : name.slice(0, sp), fam = sp === -1 ? '' : name.slice(sp + 1).trim();
        var l = ['BEGIN:VCARD', 'VERSION:3.0', 'N:' + vEsc(fam) + ';' + vEsc(given) + ';;;', 'FN:' + vEsc(name)];
        if (v.org.trim()) { l.push('ORG:' + vEsc(v.org.trim())); }
        if (v.phone.trim()) { l.push('TEL;TYPE=CELL:' + v.phone.replace(/[^\d+]/g, '')); }
        if (v.mail.trim()) { l.push('EMAIL:' + v.mail.trim()); }
        if (v.url.trim()) { l.push('URL:' + v.url.trim()); }
        l.push('END:VCARD');
        return l.join('\n');
      }
    }
  };

  /* ---------- ส่วนฟอร์ม QR ---------- */
  var curType = 'text';
  var store = {};
  var typeSel = $('qr-type');
  Object.keys(TYPES).forEach(function (k) {
    var o = document.createElement('option');
    o.value = k;
    o.textContent = TYPES[k].label;
    typeSel.appendChild(o);
  });

  function readVals() {
    var v = {};
    TYPES[curType].fields.forEach(function (f) {
      var el = $('f-' + f.id);
      v[f.id] = el ? (f.kind === 'check' ? el.checked : el.value) : (f.kind === 'check' ? false : '');
    });
    return v;
  }
  function saveVals() {
    TYPES[curType].fields.forEach(function (f) {
      var el = $('f-' + f.id);
      if (el) { store[curType + '.' + f.id] = (f.kind === 'check') ? el.checked : el.value; }
    });
  }
  function buildFields() {
    var box = $('qr-fields');
    box.textContent = '';
    TYPES[curType].fields.forEach(function (f) {
      var wrap = document.createElement('div');
      wrap.className = 'pg-f';
      var saved = store[curType + '.' + f.id];
      var el, lab = document.createElement('label');
      lab.setAttribute('for', 'f-' + f.id);
      if (f.kind === 'check') {
        wrap.className = 'pg-f';
        lab.className = 'pg-chk';
        el = document.createElement('input');
        el.type = 'checkbox';
        el.id = 'f-' + f.id;
        el.checked = !!saved;
        lab.appendChild(el);
        lab.appendChild(document.createTextNode(' ' + f.label));
        wrap.appendChild(lab);
      } else {
        lab.textContent = f.label;
        wrap.appendChild(lab);
        if (f.kind === 'textarea') { el = document.createElement('textarea'); }
        else if (f.kind === 'select') {
          el = document.createElement('select');
          f.opts.forEach(function (p) {
            var o = document.createElement('option');
            o.value = p[0];
            o.textContent = p[1];
            el.appendChild(o);
          });
        } else { el = document.createElement('input'); el.type = 'text'; }
        el.id = 'f-' + f.id;
        el.className = 'pg-in';
        if (f.ph) { el.placeholder = f.ph; }
        if (saved !== undefined) { el.value = saved; }
        wrap.appendChild(el);
        if (f.hint) {
          var h = document.createElement('div');
          h.className = 'pg-hint';
          h.textContent = f.hint;
          wrap.appendChild(h);
        }
      }
      box.appendChild(wrap);
    });
  }

  /* ---------- วาด QR ---------- */
  var logoImg = null, logoData = '', current = null;

  function isFinder(x, y, n) {
    return (x < 7 && y < 7) || (x >= n - 7 && y < 7) || (x < 7 && y >= n - 7);
  }
  function roundRect(c, x, y, w, h, r) {
    c.beginPath();
    c.moveTo(x + r, y);
    c.lineTo(x + w - r, y);
    c.arcTo(x + w, y, x + w, y + r, r);
    c.lineTo(x + w, y + h - r);
    c.arcTo(x + w, y + h, x + w - r, y + h, r);
    c.lineTo(x + r, y + h);
    c.arcTo(x, y + h, x, y + h - r, r);
    c.lineTo(x, y + r);
    c.arcTo(x, y, x + r, y, r);
    c.closePath();
  }
  function layout(qr, o) {
    var n = qr.size + 2 * o.margin;
    var cell = Math.max(1, Math.floor(o.size / n));
    var W = cell * n;
    var band = o.caption ? Math.round(Math.max(28, W * 0.12)) : 0;
    return { n: n, cell: cell, W: W, band: band, H: W + band, off: o.margin * cell };
  }
  function drawQR(canvas, qr, o) {
    var L = layout(qr, o), cell = L.cell, off = L.off, x, y;
    canvas.width = L.W;
    canvas.height = L.H;
    var c = canvas.getContext('2d');
    c.fillStyle = o.bg;
    c.fillRect(0, 0, L.W, L.H);
    c.fillStyle = o.fg;
    for (y = 0; y < qr.size; y++) {
      for (x = 0; x < qr.size; x++) {
        if (!qr.m[y][x]) { continue; }
        var px = off + x * cell, py = off + y * cell;
        if (o.shape === 'dots' && !isFinder(x, y, qr.size)) {
          c.beginPath();
          c.arc(px + cell / 2, py + cell / 2, cell * 0.46, 0, Math.PI * 2);
          c.fill();
        } else if (o.shape === 'rounded') {
          roundRect(c, px, py, cell, cell, cell * 0.3);
          c.fill();
        } else {
          c.fillRect(px, py, cell, cell);
        }
      }
    }
    if (logoImg) {
      var area = qr.size * cell, s = Math.round(area * o.logoScale);
      var bx = Math.round(off + (area - s) / 2), by = bx;
      var pad = Math.max(2, Math.round(cell * 0.6)), inner = s - 2 * pad;
      c.fillStyle = o.bg;
      roundRect(c, bx, by, s, s, Math.round(s * 0.12));
      c.fill();
      var nw = logoImg.naturalWidth || inner, nh = logoImg.naturalHeight || inner;
      var iw = nw >= nh ? inner : inner * nw / nh, ih = nw >= nh ? inner * nh / nw : inner;
      c.drawImage(logoImg, bx + (s - iw) / 2, by + (s - ih) / 2, iw, ih);
    }
    if (o.caption) {
      c.fillStyle = o.fg;
      c.font = '600 ' + Math.round(L.band * 0.46) + 'px system-ui, "Noto Sans Thai", "Sarabun", sans-serif';
      c.textAlign = 'center';
      c.textBaseline = 'middle';
      c.fillText(o.caption, L.W / 2, L.W + L.band / 2, L.W - 2 * cell);
    }
    return L;
  }
  function toSVG(qr, o) {
    var n = qr.size + 2 * o.margin, m = o.margin;
    var band = o.caption ? Math.max(3, n * 0.12) : 0, H = n + band, x, y;
    var s = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 ' + n + ' ' + H + '" width="' + o.size + '" height="' + Math.round(o.size * H / n) + '">';
    s += '<rect width="' + n + '" height="' + H + '" fill="' + o.bg + '"/>';
    var path = '', shapes = '';
    for (y = 0; y < qr.size; y++) {
      x = 0;
      while (x < qr.size) {
        if (!qr.m[y][x]) { x++; continue; }
        if (o.shape === 'square' || isFinder(x, y, qr.size) && o.shape === 'dots') {
          var run = 1;
          while (x + run < qr.size && qr.m[y][x + run] && (o.shape === 'square' || isFinder(x + run, y, qr.size))) { run++; }
          path += 'M' + (x + m) + ' ' + (y + m) + 'h' + run + 'v1h-' + run + 'z';
          x += run;
        } else if (o.shape === 'rounded') {
          shapes += '<rect x="' + (x + m) + '" y="' + (y + m) + '" width="1" height="1" rx="0.3"/>';
          x++;
        } else {
          shapes += '<circle cx="' + (x + m + 0.5) + '" cy="' + (y + m + 0.5) + '" r="0.46"/>';
          x++;
        }
      }
    }
    s += '<g fill="' + o.fg + '">' + (path ? '<path d="' + path + '" shape-rendering="crispEdges"/>' : '') + shapes + '</g>';
    if (logoImg && logoData) {
      var sz = qr.size * o.logoScale, bx = m + (qr.size - sz) / 2, pd = 0.6, inner = sz - 2 * pd;
      s += '<rect x="' + bx + '" y="' + bx + '" width="' + sz + '" height="' + sz + '" rx="' + (sz * 0.12) + '" fill="' + o.bg + '"/>';
      s += '<image x="' + (bx + pd) + '" y="' + (bx + pd) + '" width="' + inner + '" height="' + inner + '" preserveAspectRatio="xMidYMid meet" href="' + logoData + '" xlink:href="' + logoData + '"/>';
    }
    if (o.caption) {
      s += '<text x="' + (n / 2) + '" y="' + (n + band / 2) + '" text-anchor="middle" dominant-baseline="central" font-size="' + (band * 0.46) + '" font-weight="600" font-family="system-ui, Noto Sans Thai, Sarabun, sans-serif" fill="' + o.fg + '">' + escXml(o.caption) + '</text>';
    }
    return s + '</svg>';
  }

  function lum(hex) {
    var r = parseInt(hex.slice(1, 3), 16) / 255, g = parseInt(hex.slice(3, 5), 16) / 255, b = parseInt(hex.slice(5, 7), 16) / 255;
    function ch(u) { return u <= 0.03928 ? u / 12.92 : Math.pow((u + 0.055) / 1.055, 2.4); }
    return 0.2126 * ch(r) + 0.7152 * ch(g) + 0.0722 * ch(b);
  }
  function setWarn(list) {
    var w = $('qr-warn');
    w.textContent = '';
    list.forEach(function (t) {
      var p = document.createElement('p');
      p.textContent = t;
      w.appendChild(p);
    });
    w.hidden = list.length === 0;
  }
  function setReady(on) {
    ['qr-png', 'qr-svg', 'qr-copy'].forEach(function (id) { $(id).disabled = !on; });
    $('qr-canvas').hidden = !on;
    $('qr-empty').hidden = on;
  }
  function showEmpty(msg) {
    current = null;
    setReady(false);
    $('qr-empty').textContent = msg;
    $('qr-info').textContent = '';
  }
  function getOpts() {
    return {
      size: +$('qr-size').value,
      margin: +$('qr-margin').value,
      fg: $('qr-fg').value,
      bg: $('qr-bg').value,
      shape: $('qr-shape').value,
      ecc: +$('qr-ecc').value,
      caption: $('qr-cap').value.trim(),
      logoScale: +$('qr-logo-size').value / 100
    };
  }
  function renderQR() {
    var warns = [], data, o = getOpts();
    saveVals();
    try { data = TYPES[curType].build(readVals()); }
    catch (e) { showEmpty(e.message); setWarn([]); return; }
    if (!data) { showEmpty('กรอกข้อมูลทางซ้ายเพื่อสร้าง QR Code'); setWarn([]); return; }
    if (logoImg && o.ecc < 3) {
      $('qr-ecc').value = '3';
      o.ecc = 3;
      warns.push('ปรับความทนทานต่อข้อผิดพลาดเป็นระดับ H ให้อัตโนมัติ เพราะมีโลโก้อยู่กลาง QR Code');
    }
    var qr, bytes = utf8(data);
    try { qr = qrCreate(bytes, o.ecc); }
    catch (e2) { showEmpty('ข้อมูลยาวเกินไป ลองลดความยาวข้อความ หรือเลือกความทนทานต่อข้อผิดพลาดระดับ L'); setWarn([]); return; }
    var L = drawQR($('qr-canvas'), qr, o);
    current = { qr: qr, o: o, data: data };
    setReady(true);
    $('qr-info').textContent = 'เวอร์ชัน ' + qr.version + ' (' + qr.size + '×' + qr.size + ' โมดูล) ขนาดภาพจริง ' + L.W + '×' + L.H + ' px';

    var l1 = lum(o.fg), l2 = lum(o.bg), ratio = (Math.max(l1, l2) + 0.05) / (Math.min(l1, l2) + 0.05);
    if (l1 > l2) { warns.push('สีจุดอ่อนกว่าพื้นหลัง (QR สลับสี) แอปสแกนบางตัวอ่านไม่ได้ แนะนำให้ใช้จุดสีเข้มบนพื้นสีอ่อน'); }
    else if (ratio < 4) { warns.push('คอนทราสต์ระหว่างสีจุดกับพื้นหลังต่ำ (' + ratio.toFixed(1) + ':1) อาจสแกนไม่ติด แนะนำให้ใช้อย่างน้อย 4:1'); }
    if (o.margin < 2) { warns.push('ขอบว่างน้อยกว่า 2 โมดูล อาจสแกนไม่ติด แนะนำ 4 โมดูล'); }
    if (logoImg && o.logoScale > 0.25) { warns.push('โลโก้ใหญ่เกิน 25% ของ QR Code อาจทำให้สแกนยาก ควรทดสอบสแกนก่อนใช้งานจริง'); }
    if (bytes.length > 300) { warns.push('ข้อมูลค่อนข้างยาว จุดจึงหนาแน่นและสแกนช้าลง หากเป็นลิงก์ยาว ลองใช้ลิงก์แบบสั้น'); }
    if (curType === 'text' && /^[^\s\/:]+\.[a-z]{2,}(\/\S*)?$/i.test(data)) { warns.push('ดูเหมือนเป็นเว็บไซต์ แต่ยังไม่มี https:// นำหน้า บางแอปอาจเปิดเป็นข้อความธรรมดา'); }
    setWarn(warns);
  }
  var renderTimer;
  function schedule() { clearTimeout(renderTimer); renderTimer = setTimeout(renderQR, 90); }

  function syncOut() {
    $('qr-size-v').textContent = $('qr-size').value;
    $('qr-margin-v').textContent = $('qr-margin').value;
    $('qr-logo-size-v').textContent = $('qr-logo-size').value;
  }
  $('pg-qr').addEventListener('input', function (e) {
    if (e.target.id === 'qr-type' || e.target.id === 'qr-logo') { return; }
    syncOut();
    schedule();
  });
  $('pg-qr').addEventListener('change', function (e) {
    if (e.target.id === 'qr-type' || e.target.id === 'qr-logo') { return; }
    schedule();
  });
  typeSel.addEventListener('change', function () {
    saveVals();
    curType = typeSel.value;
    buildFields();
    renderQR();
  });
  $('qr-logo').addEventListener('change', function () {
    var f = this.files && this.files[0];
    if (!f) { return; }
    if (f.size > 3 * 1024 * 1024) { toast('ไฟล์โลโก้ใหญ่เกิน 3 MB'); this.value = ''; return; }
    var fr = new FileReader();
    fr.onload = function () {
      var img = new Image();
      img.onload = function () {
        logoImg = img;
        logoData = fr.result;
        $('qr-logo-opts').hidden = false;
        renderQR();
      };
      img.onerror = function () { toast('อ่านไฟล์รูปโลโก้ไม่ได้'); };
      img.src = fr.result;
    };
    fr.onerror = function () { toast('อ่านไฟล์รูปโลโก้ไม่ได้'); };
    fr.readAsDataURL(f);
  });
  $('qr-logo-clear').addEventListener('click', function () {
    logoImg = null;
    logoData = '';
    $('qr-logo').value = '';
    $('qr-logo-opts').hidden = true;
    renderQR();
  });

  function fileName(ext) { return 'qrcode-' + curType + '.' + ext; }
  $('qr-png').addEventListener('click', function () {
    if (!current) { return; }
    $('qr-canvas').toBlob(function (b) {
      if (b) { download(b, fileName('png')); } else { toast('สร้างไฟล์ PNG ไม่สำเร็จ'); }
    }, 'image/png');
  });
  $('qr-svg').addEventListener('click', function () {
    if (!current) { return; }
    download(new Blob([toSVG(current.qr, current.o)], { type: 'image/svg+xml;charset=utf-8' }), fileName('svg'));
  });
  $('qr-copy').addEventListener('click', function () {
    if (!current) { return; }
    if (!(navigator.clipboard && window.ClipboardItem)) { toast('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูป ให้ดาวน์โหลดแทน'); return; }
    $('qr-canvas').toBlob(function (b) {
      if (!b) { toast('คัดลอกรูปไม่สำเร็จ'); return; }
      navigator.clipboard.write([new ClipboardItem({ 'image/png': b })]).then(
        function () { toast('คัดลอกรูปแล้ว'); },
        function () { toast('เบราว์เซอร์ไม่อนุญาตให้คัดลอกรูป ให้ดาวน์โหลดแทน'); }
      );
    }, 'image/png');
  });
  try {
    var probe = new File([new Blob(['x'])], 'qr.png', { type: 'image/png' });
    if (navigator.share && navigator.canShare && navigator.canShare({ files: [probe] })) {
      $('qr-share').hidden = false;
      $('qr-share').addEventListener('click', function () {
        if (!current) { return; }
        $('qr-canvas').toBlob(function (b) {
          if (!b) { return; }
          navigator.share({ files: [new File([b], fileName('png'), { type: 'image/png' })], title: 'QR Code' }).catch(function () {});
        }, 'image/png');
      });
    }
  } catch (e3) { /* ไม่รองรับการแชร์ไฟล์ */ }

  /* ---------- สุ่มรหัสผ่าน ---------- */
  var SETS = {
    lower: 'abcdefghijklmnopqrstuvwxyz',
    upper: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
    digits: '0123456789',
    symbols: '!@#$%^&*()-_=+[]{};:,.?/~'
  };
  function rndInt(max) {
    var lim = Math.floor(4294967296 / max) * max, a = new Uint32Array(1);
    do { crypto.getRandomValues(a); } while (a[0] >= lim);
    return a[0] % max;
  }
  function genOne(len, sets, each) {
    var pool = sets.join(''), out = [], i, j, t;
    if (each && sets.length <= len) {
      sets.forEach(function (s) { out.push(s.charAt(rndInt(s.length))); });
    }
    while (out.length < len) { out.push(pool.charAt(rndInt(pool.length))); }
    for (i = out.length - 1; i > 0; i--) {
      j = rndInt(i + 1);
      t = out[i]; out[i] = out[j]; out[j] = t;
    }
    return out.join('');
  }
  function fmtTime(sec) {
    var y;
    if (sec < 1) { return 'น้อยกว่า 1 วินาที'; }
    if (sec < 60) { return Math.round(sec) + ' วินาที'; }
    if (sec < 3600) { return Math.round(sec / 60) + ' นาที'; }
    if (sec < 86400) { return Math.round(sec / 3600) + ' ชั่วโมง'; }
    if (sec < 31536000) { return Math.round(sec / 86400) + ' วัน'; }
    y = sec / 31536000;
    if (y < 1e6) { return Math.round(y).toLocaleString('en-US') + ' ปี'; }
    if (y < 1e9) { return (y / 1e6).toFixed(1) + ' ล้านปี'; }
    if (y < 1e12) { return (y / 1e9).toFixed(1) + ' พันล้านปี'; }
    return 'มากกว่า 1 ล้านล้านปี';
  }
  function strength(bits) {
    if (bits < 28) { return ['อ่อนมาก', '#dc2626']; }
    if (bits < 36) { return ['อ่อน', '#ea580c']; }
    if (bits < 60) { return ['พอใช้', '#ca8a04']; }
    if (bits < 80) { return ['ดี', '#16a34a']; }
    return ['แข็งแกร่งมาก', '#15803d'];
  }
  var lastList = [];
  function pwMode() {
    var r = document.querySelector('input[name="pw-mode"]:checked');
    return r ? r.value : 'password';
  }
  function genPasswords() {
    var mode = pwMode(), len = +$('pw-len').value, count = +$('pw-count').value, sets, each = $('pw-each').checked;
    var list = $('pw-list'), warn = $('pw-warn');
    list.textContent = '';
    warn.hidden = true;
    $('pw-meter').hidden = true;
    $('pw-copyall').hidden = true;
    if (mode === 'pin') {
      sets = [SETS.digits];
      each = false;
    } else {
      sets = [];
      var amb = $('pw-amb').checked;
      ['lower', 'upper', 'digits', 'symbols'].forEach(function (k) {
        if ($('pw-' + k).checked) { sets.push(amb ? SETS[k].replace(/[0Oo1lIiL]/g, '') : SETS[k]); }
      });
    }
    if (!sets.length) {
      warn.textContent = 'กรุณาเลือกชุดตัวอักษรอย่างน้อย 1 ชุด';
      warn.hidden = false;
      lastList = [];
      return;
    }
    if (!(window.crypto && crypto.getRandomValues)) {
      warn.textContent = 'เบราว์เซอร์นี้ไม่รองรับการสุ่มแบบปลอดภัย (crypto.getRandomValues) กรุณาใช้เบราว์เซอร์รุ่นใหม่';
      warn.hidden = false;
      return;
    }
    lastList = [];
    for (var i = 0; i < count; i++) {
      var pw = genOne(len, sets, each);
      lastList.push(pw);
      var row = document.createElement('div');
      row.className = 'pg-pw';
      var code = document.createElement('code');
      code.textContent = pw;
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'pg-btn';
      btn.textContent = 'คัดลอก';
      btn.setAttribute('data-pw', String(i));
      row.appendChild(code);
      row.appendChild(btn);
      list.appendChild(row);
    }
    var poolSize = sets.join('').length, bits = len * Math.log(poolSize) / Math.LN2;
    var st = strength(bits), secs = Math.pow(2, bits - 1) / 1e10;
    $('pw-bar').style.width = Math.min(100, bits / 100 * 100) + '%';
    $('pw-bar').style.background = st[1];
    $('pw-info').textContent = 'ความแข็งแรง: ' + st[0] + ' · เอนโทรปีประมาณ ' + Math.round(bits) + ' บิต · หากถูกเดาแบบ brute force ที่ 10 พันล้านครั้ง/วินาที ใช้เวลาเฉลี่ยประมาณ ' + fmtTime(secs) + (mode === 'pin' ? ' · PIN ควรใช้กับระบบที่จำกัดจำนวนครั้งที่ลองผิด' : '');
    $('pw-meter').hidden = false;
    $('pw-copyall').hidden = count < 2;
  }
  $('pw-list').addEventListener('click', function (e) {
    var b = e.target;
    if (b && b.getAttribute && b.getAttribute('data-pw') !== null) { copyText(lastList[+b.getAttribute('data-pw')]); }
  });
  $('pw-copyall').addEventListener('click', function () { if (lastList.length) { copyText(lastList.join('\n')); } });
  $('pw-gen').addEventListener('click', genPasswords);
  $('pg-pw').addEventListener('input', function (e) {
    var id = e.target.id;
    if (id === 'pw-len') { $('pw-len-v').textContent = e.target.value; }
    if (e.target.name === 'pw-mode') { return; }
    genPasswords();
  });
  $('pg-pw').addEventListener('change', function (e) {
    var t = e.target;
    if (t.name === 'pw-mode') {
      var pin = t.value === 'pin', len = $('pw-len');
      $('pw-opts').hidden = pin;
      len.max = pin ? '12' : '64';
      len.value = pin ? '6' : '16';
      $('pw-len-v').textContent = len.value;
      genPasswords();
    } else if (t.id === 'pw-count') {
      genPasswords();
    }
  });

  /* ---------- เริ่มต้น ---------- */
  buildFields();
  syncOut();
  renderQR();
  genPasswords();
  tabFromHash();
})();
</script>

## วิธีสร้าง QR Code

1. **เลือกประเภท QR Code** ที่ต้องการ เช่น ข้อความ/ลิงก์ (URL), Wi-Fi, WhatsApp, LINE, PromptPay, โทรศัพท์, SMS, อีเมล หรือนามบัตร (vCard)
2. **กรอกข้อมูล** ในช่องที่แสดงขึ้นมา QR Code จะอัปเดตทันทีโดยไม่ต้องกดปุ่มสร้าง
3. **ปรับแต่งหน้าตา** ได้ตามต้องการ ทั้งสีจุด สีพื้นหลัง รูปแบบจุด (สี่เหลี่ยม มุมมน วงกลม) ขนาดภาพ ขอบว่าง โลโก้กลาง QR Code และข้อความใต้ภาพ
4. **อ่านคำเตือนใต้ตัวอย่าง** ถ้ามี เช่น คอนทราสต์ต่ำ โลโก้ใหญ่เกินไป หรือขอบว่างน้อยเกินไป เพื่อให้ QR Code สแกนติดง่าย
5. **ดาวน์โหลดหรือแชร์** เลือก PNG สำหรับเว็บและแชท, SVG สำหรับงานพิมพ์ขนาดใหญ่ หรือกดคัดลอกรูปไปวางในเอกสารได้ทันที
6. **ทดสอบสแกนก่อนใช้งานจริง** ด้วยมือถืออย่างน้อย 2 เครื่อง โดยเฉพาะ QR ที่ใส่โลโก้หรือใช้สีพิเศษ

## วิธีสร้างรหัสผ่าน

1. เปิดแท็บ **สร้างรหัสผ่าน** แล้วเลือกรูปแบบ **รหัสผ่าน** หรือ **PIN (ตัวเลขล้วน)**
2. เลื่อนแถบ **ความยาว** แนะนำอย่างน้อย 16 ตัวอักษรสำหรับบัญชีสำคัญ
3. เลือก **ชุดตัวอักษร** ที่ต้องการ และเปิด "ไม่รวมตัวอักษรที่คล้ายกัน" หากต้องพิมพ์รหัสด้วยมือ
4. เลือก **จำนวนที่สร้างต่อครั้ง** ได้ 1, 5 หรือ 10 รายการ ระบบจะสุ่มใหม่ทุกครั้งที่ปรับตัวเลือกหรือกด "สร้างใหม่"
5. ดู **แถบความแข็งแรง** และเวลาโดยประมาณที่ใช้เดารหัส จากนั้นกด **คัดลอก** เพื่อนำไปใช้
6. บันทึกรหัสผ่านไว้ในตัวจัดการรหัสผ่าน และไม่ใช้รหัสเดียวกันซ้ำกับหลายบริการ

## คำอธิบายศัพท์

- **QR Code** – บาร์โค้ดสองมิติที่เก็บข้อความ ลิงก์ หรือข้อมูลอื่นไว้ในรูปจุดสี่เหลี่ยม สแกนได้ด้วยกล้องมือถือ
- **URL** – ที่อยู่ของเว็บไซต์ เช่น https://www.example.com
- **Wi-Fi QR Code** – QR ที่เก็บชื่อเครือข่ายและรหัสผ่าน เมื่อสแกนมือถือจะเชื่อมต่อ Wi-Fi ให้โดยไม่ต้องพิมพ์รหัส
- **SSID** – ชื่อเครือข่าย Wi-Fi ที่ปรากฏในรายการเมื่อค้นหาสัญญาณ
- **WPA / WPA2 / WPA3 / WEP** – มาตรฐานการเข้ารหัสสัญญาณ Wi-Fi ปัจจุบันนิยมใช้ WPA2 หรือ WPA3 ส่วน WEP เก่าและไม่ปลอดภัย
- **Hidden SSID** – เครือข่าย Wi-Fi ที่ซ่อนชื่อไม่ให้แสดงในรายการ ต้องระบุว่าซ่อนเพื่อให้มือถือเชื่อมต่อได้
- **PromptPay (พร้อมเพย์)** – บริการโอนเงินของไทยที่ผูกบัญชีกับเบอร์มือถือหรือเลขบัตรประชาชน QR ชนิดนี้ฝังเลขผู้รับและจำนวนเงินตามมาตรฐาน EMVCo
- **vCard** – รูปแบบไฟล์นามบัตรอิเล็กทรอนิกส์ เมื่อสแกนสามารถบันทึกชื่อ เบอร์ และอีเมลลงรายชื่อติดต่อได้
- **ความทนทานต่อข้อผิดพลาด (Error Correction: L, M, Q, H)** – ปริมาณข้อมูลสำรองใน QR Code ที่ช่วยให้สแกนได้แม้ภาพเสียหรือถูกโลโก้บังบางส่วน L กู้ได้ประมาณ 7%, M 15%, Q 25%, H 30% ยิ่งสูงยิ่งมีจุดมากขึ้นและสแกนช้าลงเล็กน้อย
- **โมดูล (Module)** – จุดสี่เหลี่ยมเล็ก ๆ แต่ละจุดที่ประกอบกันเป็น QR Code
- **ขอบว่าง (Quiet zone)** – พื้นที่ว่างรอบ QR Code ที่ช่วยให้กล้องแยกภาพออกจากพื้นหลัง มาตรฐานแนะนำอย่างน้อย 4 โมดูล
- **คอนทราสต์ (Contrast)** – ความต่างระหว่างสีจุดกับสีพื้นหลัง ยิ่งต่างมากยิ่งสแกนติดง่าย
- **PNG** – ไฟล์ภาพแบบพิกเซล เหมาะกับการใช้บนเว็บ แชท และเอกสารทั่วไป
- **SVG** – ไฟล์ภาพแบบเวกเตอร์ ขยายได้ไม่จำกัดโดยภาพไม่แตก เหมาะกับป้าย โปสเตอร์ และงานพิมพ์
- **เอนโทรปี (Entropy)** – ตัวเลขวัดความสุ่มของรหัสผ่านในหน่วยบิต ยิ่งสูงยิ่งเดายาก เพิ่มได้ด้วยการเพิ่มความยาวหรือชุดตัวอักษร
- **Brute force** – วิธีโจมตีรหัสผ่านด้วยการไล่เดาทุกความเป็นไปได้ ตัวเลขเวลาที่แสดงเป็นเพียงค่าประมาณเพื่อเปรียบเทียบ
- **ตัวอักษรที่คล้ายกัน** – ตัวอักษรที่อ่านสับสนง่าย เช่น 0 กับ O และ 1 กับ l กับ I การตัดออกช่วยลดความผิดพลาดเมื่อต้องพิมพ์เอง
- **PIN** – รหัสตัวเลขสั้น ๆ ที่ใช้ปลดล็อกหรือยืนยันตัวตน ควรใช้กับระบบที่จำกัดจำนวนครั้งที่ใส่ผิด
- **crypto.getRandomValues** – ฟังก์ชันของเบราว์เซอร์ที่สุ่มตัวเลขแบบปลอดภัยเชิงการเข้ารหัส ใช้สร้างรหัสผ่านในหน้านี้

## คำถามที่พบบ่อย

### QR Code ที่สร้างจากหน้านี้หมดอายุไหม

ไม่หมดอายุ เพราะเป็น QR แบบคงที่ (static) ข้อมูลถูกฝังอยู่ในภาพเอง ไม่ผ่านเซิร์ฟเวอร์ ใช้ได้ตราบเท่าที่ลิงก์หรือข้อมูลปลายทางยังใช้งานได้

### ควรเลือกความทนทานต่อข้อผิดพลาดระดับไหน

ระดับ M เหมาะกับงานทั่วไป หากพิมพ์บนพื้นผิวที่อาจถลอกหรือเลอะ ให้เลือก Q หรือ H เมื่อใส่โลโก้กลาง QR Code ระบบจะเลือกระดับ H ให้อัตโนมัติ

### ควรดาวน์โหลดเป็น PNG หรือ SVG

PNG เหมาะกับการใช้บนเว็บ แชท และเอกสารทั่วไป ส่วน SVG เหมาะกับงานพิมพ์ขนาดใหญ่ เช่น ป้ายหรือโปสเตอร์ เพราะขยายแล้วภาพไม่แตก

### PromptPay QR Code ที่สร้างใช้โอนเงินได้จริงไหม

สร้างตามรูปแบบมาตรฐานพร้อมเพย์ แต่ก่อนนำไปใช้จริงควรสแกนทดสอบด้วยแอปธนาคารและตรวจชื่อบัญชีผู้รับให้ถูกต้องทุกครั้ง

### ข้อมูลที่กรอกถูกส่งไปที่ไหน

ไม่ถูกส่งไปที่ใด ทั้ง QR Code และรหัสผ่านถูกสร้างในเบราว์เซอร์ของคุณเอง ปิดหน้านี้แล้วข้อมูลจะหายไป

### ทำไม QR Code สแกนไม่ติด

สาเหตุที่พบบ่อยคือคอนทราสต์ของสีต่ำ สีจุดอ่อนกว่าพื้นหลัง ขอบว่างน้อยเกินไป โลโก้ใหญ่เกินไป หรือข้อมูลยาวจนจุดหนาแน่น ลองปรับตามคำเตือนที่แสดงใต้ตัวอย่าง QR Code

### รหัสผ่านที่สร้างปลอดภัยแค่ไหน

สุ่มด้วย crypto.getRandomValues ของเบราว์เซอร์ ซึ่งเป็นตัวสุ่มระดับการเข้ารหัส สำหรับบัญชีสำคัญแนะนำให้ยาวอย่างน้อย 16 ตัวอักษร ไม่ใช้ซ้ำกับบริการอื่น และเก็บไว้ในตัวจัดการรหัสผ่าน

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {"@type": "Question", "name": "QR Code ที่สร้างจากหน้านี้หมดอายุไหม", "acceptedAnswer": {"@type": "Answer", "text": "ไม่หมดอายุ เพราะเป็น QR แบบคงที่ (static) ข้อมูลถูกฝังอยู่ในภาพเอง ไม่ผ่านเซิร์ฟเวอร์ ใช้ได้ตราบเท่าที่ลิงก์หรือข้อมูลปลายทางยังใช้งานได้"}},
    {"@type": "Question", "name": "ควรเลือกความทนทานต่อข้อผิดพลาดระดับไหน", "acceptedAnswer": {"@type": "Answer", "text": "ระดับ M เหมาะกับงานทั่วไป หากพิมพ์บนพื้นผิวที่อาจถลอกหรือเลอะ ให้เลือก Q หรือ H เมื่อใส่โลโก้กลาง QR Code ระบบจะเลือกระดับ H ให้อัตโนมัติ"}},
    {"@type": "Question", "name": "ควรดาวน์โหลดเป็น PNG หรือ SVG", "acceptedAnswer": {"@type": "Answer", "text": "PNG เหมาะกับการใช้บนเว็บ แชท และเอกสารทั่วไป ส่วน SVG เหมาะกับงานพิมพ์ขนาดใหญ่ เช่น ป้ายหรือโปสเตอร์ เพราะขยายแล้วภาพไม่แตก"}},
    {"@type": "Question", "name": "PromptPay QR Code ที่สร้างใช้โอนเงินได้จริงไหม", "acceptedAnswer": {"@type": "Answer", "text": "สร้างตามรูปแบบมาตรฐานพร้อมเพย์ แต่ก่อนนำไปใช้จริงควรสแกนทดสอบด้วยแอปธนาคารและตรวจชื่อบัญชีผู้รับให้ถูกต้องทุกครั้ง"}},
    {"@type": "Question", "name": "ข้อมูลที่กรอกถูกส่งไปที่ไหน", "acceptedAnswer": {"@type": "Answer", "text": "ไม่ถูกส่งไปที่ใด ทั้ง QR Code และรหัสผ่านถูกสร้างในเบราว์เซอร์ของคุณเอง ปิดหน้านี้แล้วข้อมูลจะหายไป"}},
    {"@type": "Question", "name": "ทำไม QR Code สแกนไม่ติด", "acceptedAnswer": {"@type": "Answer", "text": "สาเหตุที่พบบ่อยคือคอนทราสต์ของสีต่ำ สีจุดอ่อนกว่าพื้นหลัง ขอบว่างน้อยเกินไป โลโก้ใหญ่เกินไป หรือข้อมูลยาวจนจุดหนาแน่น ลองปรับตามคำเตือนที่แสดงใต้ตัวอย่าง QR Code"}},
    {"@type": "Question", "name": "รหัสผ่านที่สร้างปลอดภัยแค่ไหน", "acceptedAnswer": {"@type": "Answer", "text": "สุ่มด้วย crypto.getRandomValues ของเบราว์เซอร์ ซึ่งเป็นตัวสุ่มระดับการเข้ารหัส สำหรับบัญชีสำคัญแนะนำให้ยาวอย่างน้อย 16 ตัวอักษร ไม่ใช้ซ้ำกับบริการอื่น และเก็บไว้ในตัวจัดการรหัสผ่าน"}}
  ]
}
</script>