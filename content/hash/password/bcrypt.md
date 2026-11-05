---
title: เครื่องมือสร้างและตรวจสอบ bcrypt ออนไลน์ ฟรี
h1: เครื่องมือสร้างและตรวจสอบ bcrypt
description: สร้างแฮช bcrypt ปรับค่า cost 4-15 ได้ และตรวจสอบรหัสผ่านกับแฮชเดิมได้ทันที ประมวลผลในเบราว์เซอร์ทั้งหมด ปลอดภัย รวดเร็ว ฟรี ไม่ต้องสมัครสมาชิกก่อนใช้งาน
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-05T09:00:00+07:00'
weight: 75
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เครื่องมือสร้างและตรวจสอบ bcrypt
- เครื่องมือสร้างและตรวจสอบ bcrypt ออนไลน์
- เครื่องมือนักพัฒนา
---

สร้างแฮช bcrypt ด้วยค่า cost ที่ปรับได้ (4-15) และตรวจสอบรหัสผ่านกับแฮชที่มีอยู่ ทำงานทั้งหมดในเบราว์เซอร์ของคุณ รหัสผ่านไม่ถูกส่งไปยังเซิร์ฟเวอร์

<div class="bc-tool" id="bc-tool">
<div class="bc-tabs" role="tablist">
<button type="button" class="bc-tab is-active" role="tab" data-tab="gen" aria-selected="true">สร้าง</button>
<button type="button" class="bc-tab" role="tab" data-tab="verify" aria-selected="false">ตรวจสอบ</button>
</div>
<div class="bc-status" id="bc-lib-status" hidden></div>
<section class="bc-panel" id="bc-panel-gen">
<form id="bc-gen-form" autocomplete="off" novalidate>
<label class="bc-label" for="bc-gen-pw">รหัสผ่าน</label>
<div class="bc-row">
<input type="password" id="bc-gen-pw" class="bc-input" autocomplete="new-password" spellcheck="false" placeholder="พิมพ์รหัสผ่านที่ต้องการแฮช">
<button type="button" class="bc-btn bc-btn-ghost" id="bc-gen-toggle">แสดง</button>
<button type="button" class="bc-btn bc-btn-ghost" id="bc-gen-random">🎲 สุ่ม</button>
</div>
<p class="bc-hint">เคล็ดลับ: ใช้ปุ่มสุ่มเพื่อลองใช้เครื่องมือโดยไม่ต้องพิมพ์รหัสผ่านจริง</p>
<label class="bc-label" for="bc-cost">ปัจจัย Cost: <strong id="bc-cost-val">10</strong> <span class="bc-est" id="bc-cost-est"></span></label>
<input type="range" id="bc-cost" min="4" max="15" step="1" value="10" class="bc-range">
<p class="bc-hint">ค่า cost สูงกว่า = ช้ากว่า = ยากต่อการโจมตีแบบ brute-force ค่า 10 เป็นค่าเริ่มต้นที่ดี</p>
<p class="bc-warn" id="bc-cost-warn" hidden>ค่า cost ตั้งแต่ 13 ขึ้นไปอาจทำให้แท็บค้างหลายวินาทีถึงหลายสิบวินาทีบนอุปกรณ์ที่ช้า</p>
<button type="button" class="bc-btn bc-btn-primary" id="bc-gen-btn">สร้างแฮช</button>
<p class="bc-msg bc-fail" id="bc-gen-error" hidden></p>
<div id="bc-gen-result" hidden>
<div class="bc-label">แฮช bcrypt</div>
<div class="bc-out"><code id="bc-gen-hash"></code></div>
<button type="button" class="bc-btn bc-btn-ghost" id="bc-gen-copy">คัดลอก</button>
</div>
</form>
</section>
<section class="bc-panel" id="bc-panel-verify" hidden>
<form id="bc-ver-form" autocomplete="off" novalidate>
<label class="bc-label" for="bc-ver-pw">รหัสผ่าน</label>
<input type="password" id="bc-ver-pw" class="bc-input bc-full" autocomplete="new-password" spellcheck="false" placeholder="รหัสผ่านที่ต้องการตรวจสอบ">
<label class="bc-label" for="bc-ver-hash">แฮช bcrypt สำหรับตรวจสอบ</label>
<textarea id="bc-ver-hash" class="bc-input bc-full" rows="3" spellcheck="false" placeholder="วางแฮช bcrypt ที่มีอยู่ (เริ่มต้นด้วย $2a$, $2b$ หรือ $2y$)"></textarea>
<button type="button" class="bc-btn bc-btn-primary" id="bc-ver-btn">ตรวจสอบ</button>
<p class="bc-msg" id="bc-ver-result" hidden></p>
</form>
</section>
</div>
<style>
.bc-tool{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:16px;margin:16px 0;max-width:100%;box-sizing:border-box}
.bc-tool *{box-sizing:border-box}
.bc-tabs{display:flex;gap:6px;margin-bottom:14px}
.bc-tab{flex:1;padding:8px 12px;border:1px solid rgba(128,128,128,.35);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.bc-tab.is-active{background:#2563eb;border-color:#2563eb;color:#fff}
.bc-label{display:block;margin:12px 0 6px;font-weight:600}
.bc-row{display:flex;gap:6px;flex-wrap:wrap}
.bc-input{flex:1 1 200px;min-width:0;padding:9px 11px;border:1px solid rgba(128,128,128,.45);border-radius:8px;background:transparent;color:inherit;font:inherit}
.bc-full{width:100%;display:block}
textarea.bc-input{font-family:ui-monospace,Menlo,Consolas,monospace;word-break:break-all;resize:vertical}
.bc-range{width:100%}
.bc-btn{padding:9px 14px;border-radius:8px;border:1px solid rgba(128,128,128,.45);background:transparent;color:inherit;font:inherit;cursor:pointer}
.bc-btn-primary{background:#2563eb;border-color:#2563eb;color:#fff;margin-top:12px}
.bc-btn-primary[disabled]{opacity:.6;cursor:wait}
.bc-hint{margin:6px 0 0;font-size:.875em;opacity:.75}
.bc-est{font-weight:400;opacity:.75;font-size:.9em}
.bc-warn{margin:8px 0 0;padding:8px 10px;border-radius:8px;background:rgba(245,158,11,.15);border:1px solid rgba(245,158,11,.5);font-size:.9em}
.bc-status{margin-bottom:10px;padding:8px 10px;border-radius:8px;background:rgba(239,68,68,.12);border:1px solid rgba(239,68,68,.5);font-size:.9em}
.bc-out{margin:0 0 8px;padding:10px;border-radius:8px;border:1px solid rgba(128,128,128,.35);overflow-x:auto}
.bc-out code{font-family:ui-monospace,Menlo,Consolas,monospace;white-space:pre-wrap;word-break:break-all}
.bc-msg{margin:12px 0 0;padding:9px 11px;border-radius:8px;font-weight:600}
.bc-ok{background:rgba(34,197,94,.15);border:1px solid rgba(34,197,94,.55)}
.bc-fail{background:rgba(239,68,68,.12);border:1px solid rgba(239,68,68,.5)}
.bc-wait{background:rgba(128,128,128,.12);border:1px solid rgba(128,128,128,.35)}
</style>
<script>
(function () {
  var root = document.getElementById('bc-tool');
  if (!root) { return; }
  function $(id) { return document.getElementById(id); }
  function getLib() {
    return (window.dcodeIO && window.dcodeIO.bcrypt) || window.bcrypt || null;
  }
  var HASH_RE = /^\$2[aby]\$(0[4-9]|[12][0-9]|3[01])\$[.\/A-Za-z0-9]{53}$/;
  var statusEl = $('bc-lib-status');
  function checkLib() {
    if (getLib()) { statusEl.hidden = true; return true; }
    statusEl.textContent = 'โหลดไลบรารี bcryptjs ไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ตแล้วรีเฟรชหน้า';
    statusEl.hidden = false;
    return false;
  }
  var SRCS = [
    'https://cdn.jsdelivr.net/npm/bcryptjs@2.4.3/dist/bcrypt.min.js',
    'https://cdnjs.cloudflare.com/ajax/libs/bcryptjs/2.4.3/bcrypt.min.js',
    'https://unpkg.com/bcryptjs@2.4.3/dist/bcrypt.min.js'
  ];
  function loadLib(i) {
    if (getLib()) { checkLib(); return; }
    if (i >= SRCS.length) { checkLib(); return; }
    var s = document.createElement('script');
    s.src = SRCS[i];
    s.onload = function () { if (getLib()) { checkLib(); } else { loadLib(i + 1); } };
    s.onerror = function () { loadLib(i + 1); };
    document.head.appendChild(s);
  }
  loadLib(0);
  var tabs = root.querySelectorAll('.bc-tab');
  var panels = { gen: $('bc-panel-gen'), verify: $('bc-panel-verify') };
  Array.prototype.forEach.call(tabs, function (tab) {
    tab.addEventListener('click', function () {
      var name = tab.getAttribute('data-tab');
      Array.prototype.forEach.call(tabs, function (t) {
        var on = t === tab;
        t.classList.toggle('is-active', on);
        t.setAttribute('aria-selected', on ? 'true' : 'false');
      });
      panels.gen.hidden = name !== 'gen';
      panels.verify.hidden = name !== 'verify';
    });
  });
  var costEl = $('bc-cost');
  function fmtTime(sec) {
    if (sec < 1) { return Math.max(1, Math.round(sec * 1000)) + ' มิลลิวินาที'; }
    if (sec < 60) { return sec.toFixed(1) + ' วินาที'; }
    return Math.round(sec / 60) + ' นาที';
  }
  function updateCost() {
    var c = parseInt(costEl.value, 10);
    $('bc-cost-val').textContent = c;
    $('bc-cost-est').textContent = '(ประมาณ ' + fmtTime(0.25 * Math.pow(2, c - 10)) + ')';
    $('bc-cost-warn').hidden = c < 13;
  }
  costEl.addEventListener('input', updateCost);
  updateCost();
  var genPw = $('bc-gen-pw');
  $('bc-gen-toggle').addEventListener('click', function () {
    var show = genPw.type === 'password';
    genPw.type = show ? 'text' : 'password';
    this.textContent = show ? 'ซ่อน' : 'แสดง';
  });
  $('bc-gen-random').addEventListener('click', function () {
    var chars = 'ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789!@#$%^&*';
    var arr = new Uint32Array(16);
    var out = '';
    if (window.crypto && window.crypto.getRandomValues) {
      window.crypto.getRandomValues(arr);
    } else {
      for (var j = 0; j < arr.length; j++) { arr[j] = Math.floor(Math.random() * 4294967296); }
    }
    for (var i = 0; i < arr.length; i++) { out += chars.charAt(arr[i] % chars.length); }
    genPw.value = out;
    genPw.type = 'text';
    $('bc-gen-toggle').textContent = 'ซ่อน';
  });
  function byteLen(str) {
    return window.TextEncoder ? new TextEncoder().encode(str).length : str.length;
  }
  var genBtn = $('bc-gen-btn');
  var genErr = $('bc-gen-error');
  var genRes = $('bc-gen-result');
  function showGenError(msg) {
    genErr.textContent = msg;
    genErr.hidden = false;
    genBtn.disabled = false;
    genBtn.textContent = 'สร้างแฮช';
  }
  genBtn.addEventListener('click', function () {
    genErr.hidden = true;
    genRes.hidden = true;
    var pw = genPw.value;
    if (!pw) { showGenError('กรุณากรอกรหัสผ่านก่อน'); return; }
    if (!checkLib()) { showGenError('ไลบรารี bcryptjs ยังไม่พร้อมใช้งาน'); return; }
    if (byteLen(pw) > 72) {
      showGenError('bcrypt รองรับรหัสผ่านได้สูงสุด 72 ไบต์ กรุณาใช้รหัสผ่านที่สั้นลง');
      return;
    }
    var cost = parseInt(costEl.value, 10);
    var lib = getLib();
    genBtn.disabled = true;
    genBtn.textContent = 'กำลังแฮช...';
    try {
      lib.genSalt(cost, function (e1, salt) {
        if (e1) { showGenError('สร้าง salt ไม่สำเร็จ: ' + e1.message); return; }
        lib.hash(pw, salt, function (e2, hash) {
          if (e2) { showGenError('สร้างแฮชไม่สำเร็จ: ' + e2.message); return; }
          $('bc-gen-hash').textContent = hash;
          genRes.hidden = false;
          genBtn.disabled = false;
          genBtn.textContent = 'สร้างแฮช';
        });
      });
    } catch (err) {
      showGenError('เกิดข้อผิดพลาด: ' + err.message);
    }
  });
  $('bc-gen-copy').addEventListener('click', function () {
    var btn = this;
    var text = $('bc-gen-hash').textContent;
    function done() {
      btn.textContent = 'คัดลอกแล้ว';
      setTimeout(function () { btn.textContent = 'คัดลอก'; }, 1500);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, function () {});
    } else {
      var ta = document.createElement('textarea');
      ta.value = text;
      document.body.appendChild(ta);
      ta.select();
      try { document.execCommand('copy'); done(); } catch (e) {}
      document.body.removeChild(ta);
    }
  });
  $('bc-gen-form').addEventListener('submit', function (e) { e.preventDefault(); genBtn.click(); });
  var verBtn = $('bc-ver-btn');
  var verRes = $('bc-ver-result');
  function showVer(cls, msg) {
    verRes.className = 'bc-msg ' + cls;
    verRes.textContent = msg;
    verRes.hidden = false;
  }
  verBtn.addEventListener('click', function () {
    var pw = $('bc-ver-pw').value;
    var hash = $('bc-ver-hash').value.trim();
    if (!pw || !hash) { showVer('bc-fail', 'กรุณากรอกรหัสผ่านและแฮชให้ครบ'); return; }
    if (!HASH_RE.test(hash)) { showVer('bc-fail', 'รูปแบบแฮช bcrypt ไม่ถูกต้อง'); return; }
    if (!checkLib()) { showVer('bc-fail', 'ไลบรารี bcryptjs ยังไม่พร้อมใช้งาน'); return; }
    verBtn.disabled = true;
    showVer('bc-wait', 'กำลังตรวจสอบ...');
    try {
      getLib().compare(pw, hash, function (err, ok) {
        verBtn.disabled = false;
        if (err) { showVer('bc-fail', 'ตรวจสอบไม่สำเร็จ: ' + err.message); return; }
        if (ok) { showVer('bc-ok', 'รหัสผ่านตรงกับแฮชนี้'); }
        else { showVer('bc-fail', 'รหัสผ่านไม่ตรงกับแฮชนี้'); }
      });
    } catch (e) {
      verBtn.disabled = false;
      showVer('bc-fail', 'เกิดข้อผิดพลาด: ' + e.message);
    }
  });
  $('bc-ver-form').addEventListener('submit', function (e) { e.preventDefault(); verBtn.click(); });
})();
</script>

bcrypt คืออัลกอริทึมแฮชรหัสผ่านแบบคลาสสิกที่เริ่มใช้ในปี 1999 ยังคงเป็นตัวเลือกเริ่มต้นที่สมเหตุสมผล และมีอยู่ในเกือบทุกเฟรมเวิร์กฝั่งเซิร์ฟเวอร์ หน้านี้ใช้ไลบรารี **bcryptjs** ทำงานในเบราว์เซอร์ของคุณโดยตรง

## วิธีใช้งาน

### สร้างแฮช bcrypt

1. อยู่ที่แท็บ **สร้าง** แล้วพิมพ์รหัสผ่านในช่อง หรือกดปุ่ม **🎲 สุ่ม** เพื่อสร้างรหัสผ่านทดสอบ
2. เลื่อนแถบ **ปัจจัย Cost** เพื่อเลือกระดับความหนักของการคำนวณ (4-15) ค่า 10-12 เหมาะกับการใช้งานทั่วไป
3. กดปุ่ม **สร้างแฮช** แล้วรอสักครู่ ยิ่ง cost สูงยิ่งใช้เวลานาน
4. กด **คัดลอก** เพื่อนำแฮชที่ได้ไปเก็บในฐานข้อมูลหรือใช้ในโค้ดของคุณ

### ตรวจสอบรหัสผ่านกับแฮช

1. เปลี่ยนไปที่แท็บ **ตรวจสอบ**
2. กรอกรหัสผ่านที่ต้องการทดสอบ
3. วางแฮช bcrypt ที่มีอยู่ในช่องที่สอง (ต้องขึ้นต้นด้วย `$2a$`, `$2b$` หรือ `$2y$`)
4. กดปุ่ม **ตรวจสอบ** ระบบจะแจ้งว่ารหัสผ่านตรงหรือไม่ตรงกับแฮช

หมายเหตุ: แฮชเดียวกันสร้างซ้ำได้ผลลัพธ์ไม่เหมือนเดิมทุกครั้ง เพราะ salt ถูกสุ่มใหม่ จึงต้องใช้การตรวจสอบแทนการเปรียบเทียบข้อความตรง ๆ

## อธิบายศัพท์ที่ควรรู้

- **bcrypt**: อัลกอริทึมแฮชรหัสผ่านที่ออกแบบให้ช้าโดยตั้งใจ เพื่อลดความเสี่ยงจากการเดารหัสผ่านจำนวนมาก
- **แฮช (hash)**: ข้อความผลลัพธ์ที่ได้จากการแปลงรหัสผ่านทางเดียว ย้อนกลับเป็นรหัสผ่านเดิมไม่ได้
- **ปัจจัย Cost (cost factor / work factor)**: ตัวเลขที่กำหนดความหนักของการคำนวณ เพิ่มขึ้น 1 ระดับ เวลาที่ใช้เพิ่มเป็น 2 เท่า
- **Salt**: ค่าสุ่มที่ผสมกับรหัสผ่านก่อนแฮช ทำให้รหัสผ่านเหมือนกันได้แฮชต่างกัน และป้องกันการโจมตีด้วย rainbow table ซึ่ง bcrypt เก็บ salt ไว้ในแฮชอยู่แล้ว
- **คำนำหน้า `$2a$` / `$2b$` / `$2y$`**: เวอร์ชันของ bcrypt ที่อยู่ต้นแฮช ปัจจุบัน `$2b$` พบมากที่สุด และทั้งสามแบบตรวจสอบได้ในเครื่องมือนี้
- **โครงสร้างแฮช**: มี 60 ตัวอักษร ประกอบด้วยเวอร์ชัน ค่า cost salt 22 ตัวอักษร และค่าแฮช 31 ตัวอักษร เช่น `$2b$10$...`
- **Brute-force**: การโจมตีด้วยการลองรหัสผ่านทุกแบบไปเรื่อย ๆ ค่า cost ที่สูงทำให้ผู้โจมตีลองได้ช้าลงมาก
- **ตรวจสอบ (verify / compare)**: การนำรหัสผ่านมาแฮชด้วย salt และ cost เดิมในแฮชเป้าหมาย แล้วเทียบผลว่าตรงกันหรือไม่
- **bcryptjs**: ไลบรารี bcrypt ที่เขียนด้วย JavaScript ล้วน ใช้งานในเบราว์เซอร์ได้ แต่ช้ากว่า bcrypt ฝั่งเซิร์ฟเวอร์แบบ native
- **ขีดจำกัด 72 ไบต์**: bcrypt ใช้เฉพาะ 72 ไบต์แรกของรหัสผ่าน ตัวอักษรไทยใช้ 3 ไบต์ต่อตัวใน UTF-8 จึงรองรับได้ประมาณ 24 ตัวอักษร
- **argon2id**: อัลกอริทึมแฮชรหัสผ่านรุ่นใหม่ที่ปัจจุบันแนะนำสำหรับโครงการใหม่ (RFC 9106) ส่วน bcrypt ยังเหมาะเมื่อต้องใช้ร่วมกับระบบที่มีแฮช `$2b$` อยู่แล้ว