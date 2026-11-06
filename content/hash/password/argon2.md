---
title: เครื่องมือสร้างและตรวจสอบ Argon2 ออนไลน์ ฟรี
h1: เครื่องมือสร้างและตรวจสอบ Argon2
description: เครื่องมือสร้างและตรวจสอบ Argon2 ช่วยให้งานเขียนโค้ดสะดวกขึ้น รองรับ argon2id, argon2i, argon2d ปรับหน่วยความจำและการวนซ้ำได้ ใช้ได้ทั้งมือถือและเดสก์ท็อป
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-06T09:00:00+07:00'
weight: 76
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เครื่องมือสร้างและตรวจสอบ Argon2
- เครื่องมือสร้างและตรวจสอบ Argon2 ออนไลน์
- เครื่องมือนักพัฒนา
---

สร้างแฮช argon2id / argon2i / argon2d ด้วยหน่วยความจำและการวนซ้ำที่กำหนดเอง และตรวจสอบแฮชที่มีอยู่ — ทำงานทั้งหมดในเบราว์เซอร์ของคุณ รหัสผ่านไม่ถูกส่งออกไปที่ใด

<style>
.a2-tool{max-width:720px;margin:1.5rem 0;font:inherit;color:inherit}
.a2-tool *{box-sizing:border-box}
.a2-tool [hidden]{display:none!important}
.a2-tabs{display:flex;gap:.5rem;margin-bottom:1rem}
.a2-tab{flex:1;padding:.6rem 1rem;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;border-radius:.5rem;cursor:pointer;font:inherit}
.a2-tab.is-active{background:#2563eb;border-color:#2563eb;color:#fff}
.a2-label{display:block;margin:1rem 0 .35rem;font-weight:600}
.a2-row{display:flex;gap:.5rem;align-items:stretch}
.a2-input,.a2-select,.a2-textarea{width:100%;padding:.6rem .75rem;border:1px solid rgba(128,128,128,.5);border-radius:.5rem;background:transparent;color:inherit;font:inherit}
.a2-textarea{min-height:5.5rem;resize:vertical;font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;word-break:break-all}
.a2-btn{padding:.6rem 1rem;border:1px solid rgba(128,128,128,.5);border-radius:.5rem;background:transparent;color:inherit;cursor:pointer;font:inherit;white-space:nowrap}
.a2-btn-primary{background:#2563eb;border-color:#2563eb;color:#fff;margin-top:1rem}
.a2-btn:disabled{opacity:.6;cursor:wait}
.a2-hint{margin:.4rem 0 0;font-size:.875rem;opacity:.75}
.a2-warn{margin:.4rem 0 0;font-size:.875rem;color:#b45309}
.a2-radios{display:flex;flex-wrap:wrap;gap:.5rem 1.25rem}
.a2-radios label{display:inline-flex;align-items:center;gap:.35rem;cursor:pointer}
.a2-range{width:100%}
.a2-out{margin-top:1rem;padding:.75rem;border:1px dashed rgba(128,128,128,.6);border-radius:.5rem;word-break:break-all;font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:.9rem}
.a2-err{margin-top:1rem;color:#dc2626}
.a2-ok{margin-top:1rem;font-weight:600;color:#16a34a}
.a2-bad{margin-top:1rem;font-weight:600;color:#dc2626}
</style>
<div class="a2-tool" id="a2-tool">
<div class="a2-tabs" role="tablist">
<button type="button" class="a2-tab is-active" id="a2-tab-gen" role="tab" aria-selected="true">สร้าง</button>
<button type="button" class="a2-tab" id="a2-tab-ver" role="tab" aria-selected="false">ตรวจสอบ</button>
</div>
<div id="a2-panel-gen">
<label class="a2-label" for="a2-pass">รหัสผ่าน</label>
<div class="a2-row">
<input class="a2-input" id="a2-pass" type="text" autocomplete="off" autocapitalize="off" spellcheck="false" placeholder="พิมพ์รหัสผ่านที่ต้องการแฮช">
<button type="button" class="a2-btn" id="a2-rand">🎲 สุ่ม</button>
</div>
<p class="a2-hint">เคล็ดลับ: ใช้ปุ่มสุ่มเพื่อลองใช้เครื่องมือโดยไม่ต้องพิมพ์รหัสผ่านจริง</p>
<span class="a2-label">ตัวแปร</span>
<div class="a2-radios">
<label><input type="radio" name="a2-variant" value="argon2id" checked> argon2id</label>
<label><input type="radio" name="a2-variant" value="argon2i"> argon2i</label>
<label><input type="radio" name="a2-variant" value="argon2d"> argon2d</label>
</div>
<p class="a2-hint">argon2id คือค่าเริ่มต้นที่แนะนำ (RFC 9106)</p>
<label class="a2-label" for="a2-mem">หน่วยความจำ</label>
<select class="a2-select" id="a2-mem">
<option value="16">16 MiB</option>
<option value="32">32 MiB</option>
<option value="64" selected>64 MiB</option>
<option value="128">128 MiB</option>
</select>
<p class="a2-warn" id="a2-mem-warn" hidden>128 MiB อาจทำให้เบราว์เซอร์มือถือที่มีหน่วยความจำน้อยขัดข้อง 64 MiB เป็นค่าเริ่มต้นที่ปลอดภัยกว่า</p>
<label class="a2-label" for="a2-time">การวนซ้ำ: <span id="a2-time-val">3</span></label>
<input class="a2-range" id="a2-time" type="range" min="1" max="10" step="1" value="3">
<p class="a2-hint">หน่วยความจำ + การวนซ้ำมากขึ้น = ช้าลง = ยากต่อการโจมตีแบบ brute-force</p>
<button type="button" class="a2-btn a2-btn-primary" id="a2-gen-btn">สร้างแฮช</button>
<div class="a2-err" id="a2-gen-err" role="alert" hidden></div>
<div id="a2-gen-result" hidden>
<span class="a2-label">แฮช argon2 ที่เข้ารหัส</span>
<div class="a2-out" id="a2-gen-out"></div>
<button type="button" class="a2-btn" id="a2-copy" style="margin-top:.5rem">คัดลอก</button>
</div>
</div>
<div id="a2-panel-ver" hidden>
<label class="a2-label" for="a2-vpass">รหัสผ่าน</label>
<input class="a2-input" id="a2-vpass" type="text" autocomplete="off" autocapitalize="off" spellcheck="false" placeholder="รหัสผ่านที่ต้องการตรวจสอบ">
<label class="a2-label" for="a2-venc">แฮช argon2 สำหรับตรวจสอบ</label>
<textarea class="a2-textarea" id="a2-venc" spellcheck="false" autocomplete="off" placeholder="วางแฮช argon2 ที่เข้ารหัส (เริ่มต้นด้วย $argon2id$, $argon2i$ หรือ $argon2d$)"></textarea>
<button type="button" class="a2-btn a2-btn-primary" id="a2-ver-btn">ตรวจสอบ</button>
<div class="a2-ok" id="a2-ver-ok" role="status" hidden>รหัสผ่านตรงกับแฮชนี้</div>
<div class="a2-bad" id="a2-ver-bad" role="status" hidden>รหัสผ่านไม่ตรงกับแฮชนี้</div>
<div class="a2-err" id="a2-ver-err" role="alert" hidden></div>
</div>
</div>

<script>
(function () {
  'use strict';
  var LIB_URLS = [
    'https://cdn.jsdelivr.net/npm/argon2-browser@1.18.0/dist/argon2-bundled.min.js',
    'https://unpkg.com/argon2-browser@1.18.0/dist/argon2-bundled.min.js'
  ];
  var MAX_VERIFY_MEM_KIB = 262144;
  var MAX_VERIFY_TIME = 20;
  var libPromise = null;
  function $(id) { return document.getElementById(id); }
  function show(el, on) { el.hidden = !on; }
  /* โหลดไลบรารีแบบปลอดภัย: ดึงเป็นข้อความก่อน ถ้าเป็น HTML (เช่นหน้า 404) จะไม่ถูกรันเป็น JS
     จึงไม่เกิด Uncaught SyntaxError: Unexpected token '<' */
  function injectFrom(url) {
    return fetch(url, { credentials: 'omit' }).then(function (res) {
      if (!res.ok) { throw new Error('HTTP ' + res.status); }
      return res.text();
    }).then(function (code) {
      if (/^\s*</.test(code)) { throw new Error('Response is not JavaScript'); }
      var s = document.createElement('script');
      s.text = code;
      document.head.appendChild(s);
      if (!window.argon2 || typeof window.argon2.hash !== 'function') {
        throw new Error('argon2 global not found');
      }
      return window.argon2;
    });
  }
  function loadLib() {
    if (window.argon2 && typeof window.argon2.hash === 'function') {
      return Promise.resolve(window.argon2);
    }
    if (libPromise) { return libPromise; }
    var i = 0;
    function next(lastErr) {
      if (i === LIB_URLS.length) { return Promise.reject(lastErr || new Error('load failed')); }
      return injectFrom(LIB_URLS[i++]).catch(next);
    }
    libPromise = next().catch(function (e) {
      libPromise = null;
      e.isLoad = true;
      throw e;
    });
    return libPromise;
  }
  function typeOf(lib, name) {
    var T = lib.ArgonType || {};
    var fallback = { argon2d: 0, argon2i: 1, argon2id: 2 };
    var key = { argon2d: 'Argon2d', argon2i: 'Argon2i', argon2id: 'Argon2id' }[name];
    return (typeof T[key] === 'number') ? T[key] : fallback[name];
  }
  /* แท็บ */
  function setTab(tab) {
    var gen = tab === 'gen';
    show($('a2-panel-gen'), gen);
    show($('a2-panel-ver'), !gen);
    $('a2-tab-gen').classList.toggle('is-active', gen);
    $('a2-tab-ver').classList.toggle('is-active', !gen);
    $('a2-tab-gen').setAttribute('aria-selected', gen ? 'true' : 'false');
    $('a2-tab-ver').setAttribute('aria-selected', gen ? 'false' : 'true');
  }
  $('a2-tab-gen').addEventListener('click', function () { setTab('gen'); });
  $('a2-tab-ver').addEventListener('click', function () { setTab('ver'); });
  /* สุ่มรหัสผ่าน */
  $('a2-rand').addEventListener('click', function () {
    var chars = 'ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789!@#$%^&*';
    var buf = new Uint32Array(16);
    crypto.getRandomValues(buf);
    var out = '';
    for (var i = 0; i !== buf.length; i++) { out += chars.charAt(buf[i] % chars.length); }
    $('a2-pass').value = out;
  });
  $('a2-mem').addEventListener('change', function () {
    show($('a2-mem-warn'), $('a2-mem').value === '128');
  });
  $('a2-time').addEventListener('input', function () {
    $('a2-time-val').textContent = $('a2-time').value;
  });
  function selectedVariant() {
    var r = document.querySelector('input[name="a2-variant"]:checked');
    return r ? r.value : 'argon2id';
  }
  /* สร้างแฮช */
  $('a2-gen-btn').addEventListener('click', function () {
    var btn = $('a2-gen-btn');
    var errBox = $('a2-gen-err');
    show(errBox, false);
    show($('a2-gen-result'), false);
    var pass = $('a2-pass').value;
    if (!pass) {
      errBox.textContent = 'กรุณากรอกรหัสผ่านหรือกดปุ่มสุ่ม';
      show(errBox, true);
      return;
    }
    var memKiB = parseInt($('a2-mem').value, 10) * 1024;
    var time = Math.min(10, Math.max(1, parseInt($('a2-time').value, 10) || 3));
    var variant = selectedVariant();
    var salt = new Uint8Array(16);
    crypto.getRandomValues(salt);
    btn.disabled = true;
    btn.textContent = 'กำลังแฮช...';
    loadLib().then(function (lib) {
      return new Promise(function (resolve) { setTimeout(resolve, 30); }).then(function () {
        return lib.hash({
          pass: pass,
          salt: salt,
          time: time,
          mem: memKiB,
          hashLen: 32,
          parallelism: 1,
          type: typeOf(lib, variant)
        });
      });
    }).then(function (res) {
      $('a2-gen-out').textContent = res.encoded;
      show($('a2-gen-result'), true);
    }).catch(function (e) {
      errBox.textContent = e && e.isLoad
        ? 'โหลดโมดูล argon2 ไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ตแล้วลองใหม่'
        : 'สร้างแฮชไม่สำเร็จ' + (e && e.message ? ' (' + e.message + ')' : '');
      show(errBox, true);
    }).then(function () {
      btn.disabled = false;
      btn.textContent = 'สร้างแฮช';
    });
  });
  /* คัดลอก */
  $('a2-copy').addEventListener('click', function () {
    var btn = $('a2-copy');
    var text = $('a2-gen-out').textContent;
    function done() {
      btn.textContent = 'คัดลอกแล้ว';
      setTimeout(function () { btn.textContent = 'คัดลอก'; }, 1500);
    }
    function fallback() {
      var range = document.createRange();
      range.selectNodeContents($('a2-gen-out'));
      var sel = window.getSelection();
      sel.removeAllRanges();
      sel.addRange(range);
      try { document.execCommand('copy'); done(); } catch (e) { /* ignore */ }
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else {
      fallback();
    }
  });
  /* ตรวจสอบ */
  $('a2-ver-btn').addEventListener('click', function () {
    var btn = $('a2-ver-btn');
    var errBox = $('a2-ver-err');
    show($('a2-ver-ok'), false);
    show($('a2-ver-bad'), false);
    show(errBox, false);
    var pass = $('a2-vpass').value;
    var enc = $('a2-venc').value.trim();
    var m = /^\$(argon2id|argon2i|argon2d)\$/.exec(enc);
    if (!pass || !enc) {
      errBox.textContent = 'กรุณากรอกรหัสผ่านและแฮช argon2';
      show(errBox, true);
      return;
    }
    if (!m) {
      errBox.textContent = 'รูปแบบแฮช argon2 ไม่ถูกต้อง';
      show(errBox, true);
      return;
    }
    var p = /\$m=(\d+),t=(\d+),p=(\d+)/.exec(enc);
    if (p && (parseInt(p[1], 10) > MAX_VERIFY_MEM_KIB || parseInt(p[2], 10) > MAX_VERIFY_TIME)) {
      errBox.textContent = 'พารามิเตอร์ของแฮชนี้ใหญ่เกินกว่าที่เบราว์เซอร์จะตรวจสอบได้อย่างปลอดภัย';
      show(errBox, true);
      return;
    }
    btn.disabled = true;
    btn.textContent = 'กำลังตรวจสอบ...';
    loadLib().then(function (lib) {
      return new Promise(function (resolve) { setTimeout(resolve, 30); }).then(function () {
        return lib.verify({ pass: pass, encoded: enc, type: typeOf(lib, m[1]) });
      });
    }).then(function () {
      show($('a2-ver-ok'), true);
    }).catch(function (e) {
      if (e && e.isLoad) {
        errBox.textContent = 'โหลดโมดูล argon2 ไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ตแล้วลองใหม่';
        show(errBox, true);
      } else if (e && (e.code === -35 || /match/i.test(e.message || ''))) {
        show($('a2-ver-bad'), true);
      } else {
        errBox.textContent = 'รูปแบบแฮช argon2 ไม่ถูกต้อง';
        show(errBox, true);
      }
    }).then(function () {
      btn.disabled = false;
      btn.textContent = 'ตรวจสอบ';
    });
  });
})();
</script>

## วิธีใช้งานเครื่องมือสร้างและตรวจสอบ Argon2

### สร้างแฮช Argon2

1. เปิดแท็บ **สร้าง** แล้วพิมพ์รหัสผ่านที่ต้องการแฮช หรือกดปุ่ม **🎲 สุ่ม** เพื่อสร้างรหัสผ่านทดลอง
2. เลือก **ตัวแปร** ของอัลกอริทึม แนะนำ argon2id
3. เลือก **หน่วยความจำ** (16, 32, 64 หรือ 128 MiB) และเลื่อนแถบ **การวนซ้ำ** ตามความปลอดภัยและความเร็วที่ต้องการ
4. กดปุ่ม **สร้างแฮช** แล้วรอสักครู่ ครั้งแรกอาจช้ากว่าปกติเพราะต้องโหลดโมดูลก่อน
5. กด **คัดลอก** เพื่อนำแฮชที่เข้ารหัสไปใช้งาน เช่น เก็บลงฐานข้อมูล

### ตรวจสอบแฮช Argon2

1. เปลี่ยนไปที่แท็บ **ตรวจสอบ**
2. กรอกรหัสผ่านที่ต้องการทดสอบ
3. วางแฮช argon2 ที่เข้ารหัส ซึ่งขึ้นต้นด้วย `$argon2id$`, `$argon2i$` หรือ `$argon2d$`
4. กดปุ่ม **ตรวจสอบ** เครื่องมือจะอ่านหน่วยความจำ การวนซ้ำ ความขนาน และ salt จากแฮชให้อัตโนมัติ แล้วแจ้งว่ารหัสผ่านตรงหรือไม่ตรงกับแฮช

> เนื่องจากมีการสุ่ม salt ทุกครั้ง การสร้างแฮชจากรหัสผ่านเดิมซ้ำจะได้ผลลัพธ์ที่แตกต่างกัน แต่ทุกค่ายังตรวจสอบกับรหัสผ่านเดิมได้ถูกต้อง

## คำอธิบายศัพท์

- **Argon2** — อัลกอริทึมแฮชรหัสผ่าน ชนะการแข่งขัน Password Hashing Competition ปี 2015 และ RFC 9106 แนะนำสำหรับการจัดเก็บรหัสผ่านใหม่
- **argon2id** — ตัวแปรแบบลูกผสมของ argon2i และ argon2d เป็นค่าเริ่มต้นที่แนะนำ เพราะได้ประโยชน์จากทั้งสองแบบ
- **argon2i** — ต้านทานการโจมตีช่องด้านข้าง (side-channel) เรื่องเวลาได้ดี แต่อ่อนแอกว่าต่อการถอดรหัสด้วย GPU
- **argon2d** — แข็งแกร่งต่อการโจมตีด้วย GPU แต่ไม่ปลอดภัยต่อการโจมตีช่องด้านข้าง
- **หน่วยความจำ (Memory cost)** — ปริมาณ RAM ที่ใช้ระหว่างคำนวณแฮช ยิ่งมากยิ่งทำให้ผู้โจมตีที่ใช้ GPU หรือ ASIC ต้องเสียต้นทุนสูงขึ้น หน่วยเป็น MiB (1 MiB = 1,024 KiB)
- **การวนซ้ำ (Iterations / Time cost)** — จำนวนรอบที่อัลกอริทึมประมวลผลซ้ำ ยิ่งมากยิ่งช้าและยากต่อการเดาสุ่ม แนะนำให้เพิ่มหน่วยความจำก่อนเพิ่มจำนวนรอบ
- **ความขนาน (Parallelism)** — จำนวนเธรดที่ใช้คำนวณ เครื่องมือนี้ตั้งไว้ที่ 1 และจะแสดงเป็น `p=1` ในแฮช
- **Salt** — ค่าสุ่มที่ผสมกับรหัสผ่านก่อนแฮช ช่วยให้รหัสผ่านเดียวกันได้แฮชต่างกัน และป้องกันการโจมตีด้วย rainbow table
- **Memory-hard** — คุณสมบัติที่บังคับให้การคำนวณต้องใช้หน่วยความจำมาก ทำให้การโจมตีแบบขนานด้วยฮาร์ดแวร์เฉพาะทำได้ยากและแพง
- **Brute-force** — การโจมตีโดยไล่ลองรหัสผ่านที่เป็นไปได้ทีละค่า
- **แฮชที่เข้ารหัส (Encoded hash)** — สตริงรูปแบบ `$argon2id$v=19$m=65536,t=3,p=1$salt$hash` ซึ่งรวมตัวแปร เวอร์ชัน หน่วยความจำ (`m`, หน่วย KiB) การวนซ้ำ (`t`) ความขนาน (`p`) salt และค่าแฮชไว้ในที่เดียว
- **WASM (WebAssembly)** — รูปแบบโค้ดที่เบราว์เซอร์รันได้เร็วใกล้เคียงโค้ดเนทีฟ เครื่องมือนี้ใช้ไลบรารี argon2-browser ที่คอมไพล์เป็น WASM จึงคำนวณในเบราว์เซอร์ได้ทั้งหมด

> ควรใช้เครื่องมือนี้เพื่อทดสอบหรือเรียนรู้ ส่วนระบบจริงควรแฮชรหัสผ่านฝั่งเซิร์ฟเวอร์ด้วยไลบรารี Argon2 ที่เชื่อถือได้