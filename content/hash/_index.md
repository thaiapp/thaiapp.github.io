---
title: เครื่องมือแฮชและรหัสผ่านออนไลน์ ฟรี
h1: เครื่องมือแฮชและรหัสผ่านออนไลน์
description: เครื่องมือแฮชออนไลน์ฟรี สร้าง MD5, SHA-1, SHA-256, SHA-512, CRC32 พร้อม bcrypt และ argon2id ประมวลผลในเบราว์เซอร์ ปลอดภัย ใช้ได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-04T09:00:00+07:00'
weight: 69
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เครื่องมือแฮชและรหัสผ่านออนไลน์
- เครื่องมือนักพัฒนา
---

<style>
.hx{max-width:100%;margin:1.25rem 0}
.hx *{box-sizing:border-box}
.hx-tabs{display:flex;flex-wrap:wrap;gap:.5rem;margin:0 0 1rem}
.hx-tab{cursor:pointer;border:1px solid rgba(127,127,127,.45);background:transparent;color:inherit;border-radius:.6rem;padding:.5rem .8rem;font:inherit;line-height:1.3}
.hx-tab[aria-selected="true"]{background:#2563eb;border-color:#2563eb;color:#fff}
.hx-panel[hidden]{display:none}
.hx-desc{margin:0 0 .75rem;opacity:.85}
.hx label{display:block;font-weight:600;margin:.75rem 0 .3rem}
.hx label.hx-check{display:inline-flex;gap:.4rem;align-items:center;font-weight:400;margin:0}
.hx textarea,.hx input[type=text],.hx input[type=number],.hx select{width:100%;padding:.6rem .7rem;border:1px solid rgba(127,127,127,.5);border-radius:.5rem;background:transparent;color:inherit;font:inherit}
.hx textarea{min-height:7rem;resize:vertical}
.hx .hx-mono{font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;word-break:break-all}
.hx-row{display:flex;flex-wrap:wrap;gap:.75rem}
.hx-row>div{flex:1 1 9rem}
.hx-actions{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.75rem 0}
.hx-btn{cursor:pointer;border:1px solid #2563eb;background:#2563eb;color:#fff;border-radius:.5rem;padding:.55rem 1rem;font:inherit}
.hx-btn.hx-ghost{background:transparent;color:inherit;border-color:rgba(127,127,127,.5)}
.hx-btn:disabled{opacity:.6;cursor:wait}
.hx-msg{min-height:1.4rem;margin:.4rem 0 0;font-size:.95rem}
.hx-ok{color:#15803d}
.hx-bad{color:#b91c1c}
.hx-box{border-top:1px dashed rgba(127,127,127,.5);margin-top:1.25rem;padding-top:.5rem}
</style>

<div class="hx" id="hx-app">
<div class="hx-tabs" role="tablist" aria-label="เลือกอัลกอริทึม">
<button type="button" class="hx-tab" role="tab" data-key="md5" aria-selected="true">🔏 MD5</button>
<button type="button" class="hx-tab" role="tab" data-key="sha1" aria-selected="false">🛡️ SHA-1</button>
<button type="button" class="hx-tab" role="tab" data-key="sha256" aria-selected="false">🛡️ SHA-256</button>
<button type="button" class="hx-tab" role="tab" data-key="sha512" aria-selected="false">🛡️ SHA-512</button>
<button type="button" class="hx-tab" role="tab" data-key="crc32" aria-selected="false">🧮 CRC32</button>
<button type="button" class="hx-tab" role="tab" data-key="bcrypt" aria-selected="false">🔐 bcrypt</button>
<button type="button" class="hx-tab" role="tab" data-key="argon2" aria-selected="false">🗝️ argon2id</button>
</div>
<div class="hx-panel" id="hx-p-hash">
<p class="hx-desc" id="hx-hash-desc"></p>
<label for="hx-text">ข้อความที่ต้องการแฮช</label>
<textarea id="hx-text" placeholder="พิมพ์หรือวางข้อความที่นี่ ผลลัพธ์จะแสดงทันที" spellcheck="false"></textarea>
<label for="hx-out">ผลลัพธ์ <span id="hx-algo-name"></span></label>
<input type="text" id="hx-out" class="hx-mono" readonly placeholder="ผลลัพธ์จะแสดงที่นี่">
<div class="hx-actions">
<button type="button" class="hx-btn" id="hx-copy">คัดลอกผลลัพธ์</button>
<button type="button" class="hx-btn hx-ghost" id="hx-clear">ล้างข้อความ</button>
<label class="hx-check"><input type="checkbox" id="hx-upper"> ตัวพิมพ์ใหญ่</label>
</div>
<p class="hx-msg" id="hx-hash-msg" role="status"></p>
</div>
<div class="hx-panel" id="hx-p-bcrypt" hidden>
<p class="hx-desc">bcrypt เป็นอัลกอริทึมแฮชรหัสผ่านที่ตั้งใจให้ช้า มีการสุ่มค่า salt ทุกครั้ง ผลลัพธ์จึงต่างกันแม้ใช้รหัสผ่านเดิม</p>
<label for="hx-bc-pw">รหัสผ่าน</label>
<input type="text" id="hx-bc-pw" autocomplete="off" spellcheck="false" placeholder="พิมพ์รหัสผ่านที่ต้องการแฮช">
<label for="hx-bc-cost">Cost factor (ยิ่งสูงยิ่งช้าและปลอดภัย)</label>
<select id="hx-bc-cost"></select>
<div class="hx-actions">
<button type="button" class="hx-btn" id="hx-bc-gen">สร้างแฮช bcrypt</button>
<button type="button" class="hx-btn hx-ghost" id="hx-bc-copy">คัดลอกผลลัพธ์</button>
</div>
<label for="hx-bc-out">ผลลัพธ์ bcrypt</label>
<input type="text" id="hx-bc-out" class="hx-mono" readonly placeholder="ผลลัพธ์จะแสดงที่นี่">
<p class="hx-msg" id="hx-bc-msg" role="status"></p>
<div class="hx-box">
<label for="hx-bc-vpw">ตรวจสอบรหัสผ่านกับแฮช bcrypt</label>
<input type="text" id="hx-bc-vpw" autocomplete="off" spellcheck="false" placeholder="รหัสผ่านที่ต้องการตรวจสอบ">
<label for="hx-bc-vh">แฮช bcrypt</label>
<input type="text" id="hx-bc-vh" class="hx-mono" autocomplete="off" spellcheck="false" placeholder="วางแฮชที่ขึ้นต้นด้วย $2a$ หรือ $2b$">
<div class="hx-actions"><button type="button" class="hx-btn" id="hx-bc-ver">ตรวจสอบ</button></div>
<p class="hx-msg" id="hx-bc-vmsg" role="status"></p>
</div>
</div>
<div class="hx-panel" id="hx-p-argon2" hidden>
<p class="hx-desc">argon2id เป็นอัลกอริทึมแฮชรหัสผ่านรุ่นใหม่ ใช้หน่วยความจำและเวลาประมวลผลสูงเพื่อทนต่อการเดาด้วยการ์ดจอ มีการสุ่มค่า salt ทุกครั้ง</p>
<label for="hx-ar-pw">รหัสผ่าน</label>
<input type="text" id="hx-ar-pw" autocomplete="off" spellcheck="false" placeholder="พิมพ์รหัสผ่านที่ต้องการแฮช">
<div class="hx-row">
<div><label for="hx-ar-mem">หน่วยความจำ (MB)</label><input type="number" id="hx-ar-mem" value="64" min="8" max="256" step="8"></div>
<div><label for="hx-ar-it">จำนวนรอบ</label><input type="number" id="hx-ar-it" value="3" min="1" max="20"></div>
<div><label for="hx-ar-par">Parallelism</label><input type="number" id="hx-ar-par" value="1" min="1" max="8"></div>
<div><label for="hx-ar-len">ความยาวแฮช (ไบต์)</label><input type="number" id="hx-ar-len" value="32" min="16" max="64"></div>
</div>
<div class="hx-actions">
<button type="button" class="hx-btn" id="hx-ar-gen">สร้างแฮช argon2id</button>
<button type="button" class="hx-btn hx-ghost" id="hx-ar-copy">คัดลอกผลลัพธ์</button>
</div>
<label for="hx-ar-out">ผลลัพธ์ argon2id</label>
<input type="text" id="hx-ar-out" class="hx-mono" readonly placeholder="ผลลัพธ์จะแสดงที่นี่">
<p class="hx-msg" id="hx-ar-msg" role="status"></p>
<div class="hx-box">
<label for="hx-ar-vpw">ตรวจสอบรหัสผ่านกับแฮช argon2id</label>
<input type="text" id="hx-ar-vpw" autocomplete="off" spellcheck="false" placeholder="รหัสผ่านที่ต้องการตรวจสอบ">
<label for="hx-ar-vh">แฮช argon2id</label>
<input type="text" id="hx-ar-vh" class="hx-mono" autocomplete="off" spellcheck="false" placeholder="วางแฮชที่ขึ้นต้นด้วย $argon2id$">
<div class="hx-actions"><button type="button" class="hx-btn" id="hx-ar-ver">ตรวจสอบ</button></div>
<p class="hx-msg" id="hx-ar-vmsg" role="status"></p>
</div>
</div>
</div>

<script>
(function () {
  'use strict';
  /*core-start*/
  function md5(bytes) {
    var S = [7,12,17,22,7,12,17,22,7,12,17,22,7,12,17,22,5,9,14,20,5,9,14,20,5,9,14,20,5,9,14,20,4,11,16,23,4,11,16,23,4,11,16,23,4,11,16,23,6,10,15,21,6,10,15,21,6,10,15,21,6,10,15,21];
    var K = [], i, j, o;
    for (i = 0; i < 64; i++) { K[i] = Math.floor(Math.abs(Math.sin(i + 1)) * 4294967296) >>> 0; }
    var len = bytes.length;
    var total = (((len + 8) >> 6) + 1) * 64;
    var buf = new Uint8Array(total);
    buf.set(bytes);
    buf[len] = 0x80;
    var dv = new DataView(buf.buffer);
    dv.setUint32(total - 8, (len * 8) >>> 0, true);
    dv.setUint32(total - 4, Math.floor(len / 536870912), true);
    var a0 = 0x67452301, b0 = 0xefcdab89, c0 = 0x98badcfe, d0 = 0x10325476;
    for (o = 0; o < total; o += 64) {
      var M = [];
      for (j = 0; j < 16; j++) { M[j] = dv.getUint32(o + j * 4, true); }
      var A = a0, B = b0, C = c0, D = d0;
      for (i = 0; i < 64; i++) {
        var F, g;
        if (i < 16) { F = (B & C) | (~B & D); g = i; }
        else if (i < 32) { F = (D & B) | (~D & C); g = (5 * i + 1) % 16; }
        else if (i < 48) { F = B ^ C ^ D; g = (3 * i + 5) % 16; }
        else { F = C ^ (B | ~D); g = (7 * i) % 16; }
        F = (F + A + K[i] + M[g]) >>> 0;
        A = D; D = C; C = B;
        B = (B + ((F << S[i]) | (F >>> (32 - S[i])))) >>> 0;
      }
      a0 = (a0 + A) >>> 0; b0 = (b0 + B) >>> 0; c0 = (c0 + C) >>> 0; d0 = (d0 + D) >>> 0;
    }
    var out = new DataView(new ArrayBuffer(16));
    out.setUint32(0, a0, true); out.setUint32(4, b0, true); out.setUint32(8, c0, true); out.setUint32(12, d0, true);
    return hex(out.buffer);
  }
  var crcTable = (function () {
    var t = [], c, n, k;
    for (n = 0; n < 256; n++) {
      c = n;
      for (k = 0; k < 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
      t[n] = c >>> 0;
    }
    return t;
  })();
  function crc32(b) {
    var c = 0xFFFFFFFF, i, s;
    for (i = 0; i < b.length; i++) { c = crcTable[(c ^ b[i]) & 255] ^ (c >>> 8); }
    s = ((c ^ 0xFFFFFFFF) >>> 0).toString(16);
    while (s.length < 8) { s = '0' + s; }
    return s;
  }
  function hex(buf) {
    var a = new Uint8Array(buf), s = '', i;
    for (i = 0; i < a.length; i++) { s += (a[i] < 16 ? '0' : '') + a[i].toString(16); }
    return s;
  }
  /*core-end*/

  var ALGOS = {
    md5: { name: 'MD5', desc: 'MD5 สร้างค่าแฮชขนาด 128 บิต (อักขระฐานสิบหก 32 ตัว) นิยมใช้ตรวจสอบความสมบูรณ์ของข้อมูล แต่ไม่เหมาะกับการเก็บรหัสผ่าน' },
    sha1: { name: 'SHA-1', desc: 'SHA-1 สร้างค่าแฮชขนาด 160 บิต (อักขระฐานสิบหก 40 ตัว) ปัจจุบันไม่แนะนำสำหรับงานด้านความปลอดภัย ใช้เพื่อความเข้ากันได้กับระบบเดิม' },
    sha256: { name: 'SHA-256', desc: 'SHA-256 สร้างค่าแฮชขนาด 256 บิต (อักขระฐานสิบหก 64 ตัว) อยู่ในตระกูล SHA-2 นิยมใช้กับลายเซ็นดิจิทัล ใบรับรอง และบล็อกเชน' },
    sha512: { name: 'SHA-512', desc: 'SHA-512 สร้างค่าแฮชขนาด 512 บิต (อักขระฐานสิบหก 128 ตัว) อยู่ในตระกูล SHA-2 ให้ความยาวผลลัพธ์มากกว่า SHA-256' },
    crc32: { name: 'CRC32', desc: 'CRC32 สร้างค่าตรวจสอบขนาด 32 บิต (อักขระฐานสิบหก 8 ตัว) ใช้ตรวจจับข้อผิดพลาดของข้อมูล ไม่ใช่การแฮชเพื่อความปลอดภัย' }
  };
  var SHA_NAMES = { sha1: 'SHA-1', sha256: 'SHA-256', sha512: 'SHA-512' };
  var LIB_URLS = [
    'https://cdn.jsdelivr.net/npm/hash-wasm@4.11.0/dist/index.umd.min.js',
    'https://unpkg.com/hash-wasm@4.11.0/dist/index.umd.min.js'
  ];

  function $(id) { return document.getElementById(id); }
  function toBytes(s) { return new TextEncoder().encode(s); }
  function setMsg(el, text, kind) {
    el.textContent = text || '';
    el.className = 'hx-msg' + (kind ? ' hx-' + kind : '');
  }
  function clamp(v, min, max, def) {
    var n = parseInt(v, 10);
    if (isNaN(n)) { return def; }
    return Math.min(max, Math.max(min, n));
  }
  function copyText(text, msgEl) {
    if (!text) { setMsg(msgEl, 'ยังไม่มีผลลัพธ์ให้คัดลอก', 'bad'); return; }
    var done = function () { setMsg(msgEl, 'คัดลอกแล้ว', 'ok'); };
    var fallback = function () {
      var t = document.createElement('textarea');
      t.value = text;
      t.style.position = 'fixed';
      t.style.opacity = '0';
      document.body.appendChild(t);
      t.select();
      try { document.execCommand('copy'); done(); } catch (e) { setMsg(msgEl, 'คัดลอกไม่สำเร็จ กรุณาคัดลอกด้วยตนเอง', 'bad'); }
      document.body.removeChild(t);
    };
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else { fallback(); }
  }

  var libPromise = null;
  function loadScript(url) {
    return fetch(url).then(function (r) {
      var ct = r.headers.get('content-type') || '';
      if (!r.ok || ct.indexOf('javascript') === -1) { throw new Error('bad response'); }
      return r.text();
    }).then(function (code) {
      if (code.charAt(0) === '<') { throw new Error('not javascript'); }
      var s = document.createElement('script');
      s.text = code;
      document.head.appendChild(s);
    });
  }
  function getLib() {
    if (window.hashwasm && window.hashwasm.bcrypt && window.hashwasm.argon2id) { return Promise.resolve(window.hashwasm); }
    if (!libPromise) {
      libPromise = LIB_URLS.reduce(function (p, u) {
        return p.catch(function () { return loadScript(u); });
      }, Promise.reject(new Error('start'))).then(function () {
        if (!window.hashwasm || !window.hashwasm.bcrypt || !window.hashwasm.argon2id) { throw new Error('missing lib'); }
        return window.hashwasm;
      }).catch(function () {
        libPromise = null;
        throw new Error('โหลดไลบรารีไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ตแล้วลองใหม่');
      });
    }
    return libPromise;
  }
  function runTask(btn, msgEl, task) {
    btn.disabled = true;
    setMsg(msgEl, 'กำลังประมวลผล...', '');
    return task().then(function (res) {
      btn.disabled = false;
      return res;
    }, function (err) {
      btn.disabled = false;
      setMsg(msgEl, (err && err.message) ? err.message : 'เกิดข้อผิดพลาด กรุณาลองใหม่', 'bad');
      return null;
    });
  }
  function randomSalt(n) {
    var s = new Uint8Array(n);
    window.crypto.getRandomValues(s);
    return s;
  }

  var current = 'md5';
  var tabs = document.querySelectorAll('#hx-app .hx-tab');
  var pHash = $('hx-p-hash'), pBc = $('hx-p-bcrypt'), pAr = $('hx-p-argon2');
  var seq = 0;

  function compute(key, text) {
    var b = toBytes(text);
    if (key === 'md5') { return Promise.resolve(md5(b)); }
    if (key === 'crc32') { return Promise.resolve(crc32(b)); }
    if (!window.crypto || !window.crypto.subtle) {
      return Promise.reject(new Error('เบราว์เซอร์นี้ไม่รองรับ Web Crypto (ต้องเปิดผ่าน HTTPS)'));
    }
    return window.crypto.subtle.digest(SHA_NAMES[key], b).then(hex);
  }
  function updateHash() {
    if (!ALGOS[current]) { return; }
    var text = $('hx-text').value;
    var my = ++seq;
    if (!text) { $('hx-out').value = ''; setMsg($('hx-hash-msg'), '', ''); return; }
    compute(current, text).then(function (h) {
      if (my !== seq) { return; }
      $('hx-out').value = $('hx-upper').checked ? h.toUpperCase() : h;
      setMsg($('hx-hash-msg'), '', '');
    }, function (err) {
      if (my !== seq) { return; }
      setMsg($('hx-hash-msg'), err.message, 'bad');
    });
  }
  function showTab(key) {
    current = key;
    var i;
    for (i = 0; i < tabs.length; i++) {
      tabs[i].setAttribute('aria-selected', tabs[i].getAttribute('data-key') === key ? 'true' : 'false');
    }
    pHash.hidden = !ALGOS[key];
    pBc.hidden = key !== 'bcrypt';
    pAr.hidden = key !== 'argon2';
    if (ALGOS[key]) {
      $('hx-hash-desc').textContent = ALGOS[key].desc;
      $('hx-algo-name').textContent = '(' + ALGOS[key].name + ')';
      updateHash();
    }
  }

  var costSel = $('hx-bc-cost'), c, opt;
  for (c = 4; c <= 14; c++) {
    opt = document.createElement('option');
    opt.value = String(c);
    opt.textContent = String(c) + (c === 10 ? ' (ค่าเริ่มต้น)' : '');
    if (c === 10) { opt.selected = true; }
    costSel.appendChild(opt);
  }

  var t;
  for (t = 0; t < tabs.length; t++) {
    tabs[t].addEventListener('click', function () { showTab(this.getAttribute('data-key')); });
  }
  $('hx-text').addEventListener('input', updateHash);
  $('hx-upper').addEventListener('change', updateHash);
  $('hx-copy').addEventListener('click', function () { copyText($('hx-out').value, $('hx-hash-msg')); });
  $('hx-clear').addEventListener('click', function () { $('hx-text').value = ''; updateHash(); $('hx-text').focus(); });

  $('hx-bc-gen').addEventListener('click', function () {
    var pw = $('hx-bc-pw').value, msg = $('hx-bc-msg');
    if (!pw) { setMsg(msg, 'กรุณากรอกรหัสผ่าน', 'bad'); return; }
    if (toBytes(pw).length > 72) { setMsg(msg, 'bcrypt รองรับรหัสผ่านไม่เกิน 72 ไบต์', 'bad'); return; }
    runTask(this, msg, function () {
      return getLib().then(function (lib) {
        return lib.bcrypt({ password: pw, salt: randomSalt(16), costFactor: clamp(costSel.value, 4, 14, 10), outputType: 'encoded' });
      });
    }).then(function (h) {
      if (h) { $('hx-bc-out').value = h; setMsg(msg, 'สร้างแฮชสำเร็จ', 'ok'); }
    });
  });
  $('hx-bc-copy').addEventListener('click', function () { copyText($('hx-bc-out').value, $('hx-bc-msg')); });
  $('hx-bc-ver').addEventListener('click', function () {
    var pw = $('hx-bc-vpw').value, h = $('hx-bc-vh').value.trim(), msg = $('hx-bc-vmsg');
    if (!pw || !h) { setMsg(msg, 'กรุณากรอกรหัสผ่านและแฮชให้ครบ', 'bad'); return; }
    runTask(this, msg, function () {
      return getLib().then(function (lib) {
        return lib.bcryptVerify({ password: pw, hash: h }).catch(function () {
          throw new Error('รูปแบบแฮช bcrypt ไม่ถูกต้อง');
        });
      });
    }).then(function (ok) {
      if (ok === null) { return; }
      setMsg(msg, ok ? 'ตรงกัน: รหัสผ่านนี้ตรงกับแฮช' : 'ไม่ตรงกัน: รหัสผ่านนี้ไม่ตรงกับแฮช', ok ? 'ok' : 'bad');
    });
  });

  $('hx-ar-gen').addEventListener('click', function () {
    var pw = $('hx-ar-pw').value, msg = $('hx-ar-msg');
    if (!pw) { setMsg(msg, 'กรุณากรอกรหัสผ่าน', 'bad'); return; }
    var par = clamp($('hx-ar-par').value, 1, 8, 1);
    var memMb = clamp($('hx-ar-mem').value, 8, 256, 64);
    var opts = {
      password: pw,
      salt: randomSalt(16),
      parallelism: par,
      iterations: clamp($('hx-ar-it').value, 1, 20, 3),
      memorySize: memMb * 1024,
      hashLength: clamp($('hx-ar-len').value, 16, 64, 32),
      outputType: 'encoded'
    };
    runTask(this, msg, function () {
      return getLib().then(function (lib) { return lib.argon2id(opts); });
    }).then(function (h) {
      if (h) { $('hx-ar-out').value = h; setMsg(msg, 'สร้างแฮชสำเร็จ', 'ok'); }
    });
  });
  $('hx-ar-copy').addEventListener('click', function () { copyText($('hx-ar-out').value, $('hx-ar-msg')); });
  $('hx-ar-ver').addEventListener('click', function () {
    var pw = $('hx-ar-vpw').value, h = $('hx-ar-vh').value.trim(), msg = $('hx-ar-vmsg');
    if (!pw || !h) { setMsg(msg, 'กรุณากรอกรหัสผ่านและแฮชให้ครบ', 'bad'); return; }
    runTask(this, msg, function () {
      return getLib().then(function (lib) {
        return lib.argon2Verify({ password: pw, hash: h }).catch(function () {
          throw new Error('รูปแบบแฮช argon2id ไม่ถูกต้อง');
        });
      });
    }).then(function (ok) {
      if (ok === null) { return; }
      setMsg(msg, ok ? 'ตรงกัน: รหัสผ่านนี้ตรงกับแฮช' : 'ไม่ตรงกัน: รหัสผ่านนี้ไม่ตรงกับแฮช', ok ? 'ok' : 'bad');
    });
  });

  showTab('md5');
})();
</script>

## วิธีใช้งานเครื่องมือแฮชและรหัสผ่านออนไลน์

### สร้างแฮช MD5, SHA-1, SHA-256, SHA-512 และ CRC32

1. เลือกแท็บอัลกอริทึมที่ต้องการด้านบน เช่น SHA-256
2. พิมพ์หรือวางข้อความลงในช่อง "ข้อความที่ต้องการแฮช"
3. ผลลัพธ์จะแสดงในช่อง "ผลลัพธ์" ทันทีโดยไม่ต้องกดปุ่ม
4. ติ๊ก "ตัวพิมพ์ใหญ่" หากต้องการให้ผลลัพธ์เป็นตัวอักษร A-F แทน a-f
5. กด "คัดลอกผลลัพธ์" เพื่อนำค่าแฮชไปใช้งานต่อ หรือกด "ล้างข้อความ" เพื่อเริ่มใหม่

### สร้างแฮชรหัสผ่านด้วย bcrypt

1. เลือกแท็บ bcrypt
2. กรอกรหัสผ่านที่ต้องการแฮช (ไม่เกิน 72 ไบต์)
3. เลือก Cost factor ค่า 10-12 เหมาะกับงานทั่วไป ยิ่งสูงยิ่งช้าแต่ยิ่งทนต่อการเดารหัส
4. กด "สร้างแฮช bcrypt" แล้วคัดลอกผลลัพธ์ที่ขึ้นต้นด้วย $2a$ หรือ $2b$ ไปเก็บในฐานข้อมูล

### สร้างแฮชรหัสผ่านด้วย argon2id

1. เลือกแท็บ argon2id
2. กรอกรหัสผ่านและปรับค่าหน่วยความจำ จำนวนรอบ Parallelism และความยาวแฮช หรือใช้ค่าเริ่มต้นได้เลย
3. กด "สร้างแฮช argon2id" แล้วคัดลอกผลลัพธ์ที่ขึ้นต้นด้วย $argon2id$ ซึ่งมีค่า salt และพารามิเตอร์รวมอยู่ในสตริงเดียวกัน

### ตรวจสอบรหัสผ่านกับแฮช (bcrypt และ argon2id)

1. เลื่อนไปที่ส่วน "ตรวจสอบรหัสผ่านกับแฮช" ในแท็บ bcrypt หรือ argon2id
2. กรอกรหัสผ่านและวางแฮชที่เคยสร้างไว้
3. กด "ตรวจสอบ" ระบบจะแจ้งว่ารหัสผ่านตรงหรือไม่ตรงกับแฮช

**ข้อควรรู้:** MD5, SHA และ CRC32 ให้ผลลัพธ์เดิมทุกครั้งเมื่อข้อความเหมือนกัน ส่วน bcrypt และ argon2id จะได้ผลลัพธ์ต่างกันทุกครั้งเพราะมีการสุ่ม salt แต่ยังตรวจสอบกับรหัสผ่านเดิมได้ถูกต้อง

## คำอธิบายศัพท์ที่ควรรู้

- **แฮช (Hash):** การแปลงข้อมูลให้เป็นสตริงความยาวคงที่ด้วยสูตรคณิตศาสตร์ ข้อมูลเดิมให้ผลลัพธ์เดิมเสมอ และย้อนกลับเป็นข้อมูลต้นฉบับไม่ได้
- **MD5:** อัลกอริทึมแฮชขนาด 128 บิต ทำงานเร็ว ใช้ตรวจสอบว่าไฟล์หรือข้อความเปลี่ยนแปลงหรือไม่ แต่มีช่องโหว่เรื่องการชนกัน จึงไม่ควรใช้กับรหัสผ่านหรือลายเซ็น
- **SHA-1:** อัลกอริทึมแฮชขนาด 160 บิต พบการชนกันได้จริงแล้ว ปัจจุบันจึงไม่แนะนำสำหรับงานด้านความปลอดภัย
- **SHA-256:** อัลกอริทึมแฮชขนาด 256 บิตในตระกูล SHA-2 ได้รับความนิยมสูง ใช้ในใบรับรองดิจิทัล ลายเซ็น และบล็อกเชน
- **SHA-512:** อัลกอริทึมแฮชขนาด 512 บิตในตระกูล SHA-2 ให้ผลลัพธ์ยาวกว่า SHA-256 และทำงานได้ดีบนระบบ 64 บิต
- **CRC32:** ค่าตรวจสอบ 32 บิตสำหรับตรวจจับข้อผิดพลาดระหว่างการส่งหรือจัดเก็บข้อมูล ไม่เหมาะกับงานด้านความปลอดภัย
- **bcrypt:** อัลกอริทึมแฮชรหัสผ่านที่ออกแบบให้ช้าโดยตั้งใจ มี salt ในตัว และปรับความช้าได้ด้วย Cost factor
- **argon2id:** อัลกอริทึมแฮชรหัสผ่านรุ่นใหม่ ผู้ชนะการแข่งขัน Password Hashing Competition ใช้หน่วยความจำสูงเพื่อทนต่อการโจมตีด้วยฮาร์ดแวร์เฉพาะทาง
- **Salt:** ค่าสุ่มที่เติมเข้าไปก่อนแฮช ทำให้รหัสผ่านเดียวกันได้แฮชต่างกัน และป้องกันการโจมตีด้วยตารางแฮชสำเร็จรูป (Rainbow Table)
- **Cost factor:** ตัวเลขกำหนดความหนักของ bcrypt โดยจำนวนรอบการคำนวณเพิ่มขึ้นเป็น 2 ยกกำลังค่านี้
- **หน่วยความจำ (Memory cost):** ปริมาณหน่วยความจำที่ argon2id ใช้ระหว่างคำนวณ ยิ่งมากยิ่งยากต่อการเดาแบบขนาน
- **จำนวนรอบ (Iterations):** จำนวนครั้งที่ argon2id ประมวลผลซ้ำ ยิ่งมากยิ่งช้าและปลอดภัยขึ้น
- **Parallelism:** จำนวนเธรดที่ argon2id ใช้คำนวณพร้อมกัน
- **ความยาวแฮช (Hash length):** ขนาดผลลัพธ์ของ argon2id หน่วยเป็นไบต์ ค่า 32 ไบต์เพียงพอสำหรับงานทั่วไป
- **ค่าฐานสิบหก (Hexadecimal):** รูปแบบแสดงผลลัพธ์ด้วยอักขระ 0-9 และ a-f ซึ่งเป็นรูปแบบที่ MD5, SHA และ CRC32 ใช้
- **การชนกัน (Collision):** กรณีที่ข้อมูลสองชุดต่างกันให้ค่าแฮชเดียวกัน ถ้าทำได้ง่ายแสดงว่าอัลกอริทึมไม่ปลอดภัยพอ
- **UTF-8:** รูปแบบการเข้ารหัสตัวอักษรที่เครื่องมือนี้ใช้แปลงข้อความ รวมถึงภาษาไทย ก่อนนำไปแฮช

## คำถามที่พบบ่อย

### ข้อมูลที่กรอกถูกส่งไปที่เซิร์ฟเวอร์หรือไม่

ไม่ถูกส่ง การแฮชทั้งหมดทำในเบราว์เซอร์ของคุณ สำหรับ bcrypt และ argon2id เบราว์เซอร์จะดาวน์โหลดโค้ดไลบรารีคำนวณเพียงครั้งเดียวเมื่อกดใช้งานครั้งแรก โดยไม่ส่งรหัสผ่านออกไปที่ใด

### ถอดรหัสแฮชกลับเป็นข้อความเดิมได้หรือไม่

ไม่ได้ เพราะแฮชเป็นการแปลงทางเดียว วิธีที่ใช้ตรวจสอบคือแฮชข้อความที่ต้องการเปรียบเทียบแล้วดูว่าได้ค่าเดียวกันหรือไม่

### ควรเลือกอัลกอริทึมไหนดี

ตรวจสอบความสมบูรณ์ของข้อมูลใช้ SHA-256 หรือ SHA-512 ส่วนการเก็บรหัสผ่านควรใช้ argon2id หรือ bcrypt ไม่ควรใช้ MD5 หรือ SHA ตรง ๆ กับรหัสผ่าน

### ทำไมแฮช bcrypt และ argon2id ของรหัสผ่านเดิมจึงไม่เหมือนกันทุกครั้ง

เพราะทุกครั้งที่สร้างจะมีการสุ่ม salt ใหม่ ซึ่งเป็นพฤติกรรมที่ถูกต้อง ให้ใช้ฟังก์ชัน "ตรวจสอบ" เพื่อยืนยันว่ารหัสผ่านตรงกับแฮช