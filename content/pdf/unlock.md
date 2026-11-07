---
title: ปลดล็อก PDF - ลบรหัสผ่านและข้อจำกัด PDF ออนไลน์
h1: ปลดล็อก PDF - ลบรหัสผ่านและข้อจำกัด PDF ออนไลน์
description: ปลดล็อก PDF ฟรีออนไลน์ ลบรหัสผ่านและข้อจำกัดการพิมพ์ คัดลอก แก้ไขได้ในคลิกเดียว ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกอัปโหลด ปลอดภัย ใช้ง่าย ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-07T09:00:00+07:00'
weight: 85
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- ปลดล็อก PDF - ลบรหัสผ่านและข้อจำกัด PDF ออนไลน์
- PDF และไฟล์
---

<div id="pu">
<div id="pu-drop" tabindex="0" role="button" aria-label="เลือกไฟล์ PDF">
<input type="file" id="pu-file" accept="application/pdf,.pdf" hidden>
<p><strong>📄 วางไฟล์ PDF ที่นี่ หรือคลิกเพื่อเลือกไฟล์</strong></p>
<p class="pu-sub">ประมวลผลในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์ (กด Ctrl+V เพื่อวางไฟล์ได้)</p>
</div>
<div id="pu-panel" hidden>
<p><strong id="pu-name"></strong> <span id="pu-size"></span></p>
<p id="pu-status"></p>
<p id="pu-pw-row" hidden><input type="password" id="pu-pw" placeholder="กรอกรหัสผ่านของไฟล์" autocomplete="off"></p>
<p id="pu-err" class="pu-err" hidden></p>
<p><button type="button" id="pu-go">ปลดล็อก → ดาวน์โหลด</button> <button type="button" id="pu-reset" class="pu-ghost">ล้าง</button></p>
</div>
<p class="pu-sub">ปลดล็อกเฉพาะ PDF ที่คุณเป็นเจ้าของหรือได้รับอนุญาตให้แก้ไขเท่านั้น</p>
</div>

<style>
#pu [hidden]{display:none!important}
#pu{max-width:640px;margin:1rem 0}
#pu-drop{border:2px dashed #8a94a6;border-radius:12px;padding:2rem 1rem;text-align:center;cursor:pointer}
#pu-drop.over,#pu-drop:focus{border-color:#2563eb;outline:none;background:rgba(37,99,235,.08)}
#pu-panel{border:1px solid #8a94a6;border-radius:12px;padding:1rem;margin-top:1rem}
#pu .pu-sub{font-size:.875rem;opacity:.75}
#pu .pu-err{color:#dc2626;font-weight:600}
#pu input[type=password]{width:100%;box-sizing:border-box;padding:.6rem .75rem;border:1px solid #8a94a6;border-radius:8px;font:inherit;background:transparent;color:inherit}
#pu button{padding:.6rem 1.2rem;border:0;border-radius:8px;background:#2563eb;color:#fff;font:inherit;font-weight:600;cursor:pointer}
#pu button[disabled]{opacity:.6;cursor:wait}
#pu button.pu-ghost{background:transparent;color:inherit;border:1px solid #8a94a6}
</style>

<script>
(function () {
  var BASE = 'https://cdn.jsdelivr.net/npm/@neslinesli93/qpdf-wasm@0.3.0/dist/';
  var $ = function (id) { return document.getElementById(id); };
  var file = null, buf = null, mode = '', factory = null;

  function fmt(n) {
    if (n < 1024) return n + ' B';
    if (n < 1048576) return (n / 1024).toFixed(1) + ' KB';
    return (n / 1048576).toFixed(1) + ' MB';
  }
  function showErr(msg) { $('pu-err').textContent = msg || ''; $('pu-err').hidden = !msg; }

  async function getFactory() {
    if (factory) return factory;
    var res = await fetch(BASE + 'qpdf.js');
    var code = res.ok ? await res.text() : '';
    if (!code || code.trim().charAt(0) === '\x3c') throw new Error('โหลดโมดูลปลดล็อกไม่สำเร็จ กรุณาลองใหม่');
    var f = null;
    try {
      var url = URL.createObjectURL(new Blob([code], { type: 'text/javascript' }));
      var m = await import(url);
      f = m.default || m.createModule || null;
    } catch (e) { f = null; }
    if (typeof f !== 'function') {
      try { f = new Function(code + '\n;return typeof createModule === "function" ? createModule : null;')(); } catch (e2) { f = null; }
    }
    if (typeof f !== 'function') throw new Error('โหลดโมดูลปลดล็อกไม่สำเร็จ กรุณาลองใหม่');
    factory = f;
    return f;
  }

  async function qpdfRun(args) {
    var f = await getFactory();
    var out = [];
    var q = await f({
      noInitialRun: true,
      locateFile: function (p) { return BASE + p; },
      print: function (t) { out.push(t); },
      printErr: function (t) { out.push(t); }
    });
    q.FS.writeFile('/in.pdf', buf);
    try { q.callMain(args); } catch (e) { /* qpdf exits via exception on errors */ }
    var data = null;
    try { data = q.FS.readFile('/out.pdf'); } catch (e3) { data = null; }
    return { text: out.join('\n'), data: data };
  }

  function download(d) {
    var a = document.createElement('a');
    var url = URL.createObjectURL(new Blob([d], { type: 'application/pdf' }));
    a.href = url;
    a.download = file.name.replace(/\.pdf$/i, '') + (mode === 'none' ? '' : '-unlocked') + '.pdf';
    document.body.appendChild(a);
    a.click();
    a.remove();
    setTimeout(function () { URL.revokeObjectURL(url); }, 10000);
  }

  function reset() {
    file = null; buf = null; mode = '';
    $('pu-panel').hidden = true; $('pu-drop').hidden = false;
    $('pu-pw').value = ''; $('pu-file').value = ''; showErr('');
  }

  async function setFile(f) {
    if (!f) return;
    if (!/\.pdf$/i.test(f.name) && f.type !== 'application/pdf') { alert('กรุณาเลือกไฟล์ PDF'); return; }
    file = f; mode = ''; showErr('');
    $('pu-name').textContent = f.name;
    $('pu-size').textContent = fmt(f.size);
    $('pu-drop').hidden = true; $('pu-panel').hidden = false;
    $('pu-pw-row').hidden = true; $('pu-go').hidden = true;
    $('pu-status').textContent = 'กำลังวิเคราะห์ PDF...';
    try {
      buf = new Uint8Array(await f.arrayBuffer());
      var r = await qpdfRun(['--show-encryption', '/in.pdf']);
      if (/invalid password/i.test(r.text)) {
        mode = 'password';
        $('pu-status').textContent = '🔒 PDF นี้ป้องกันด้วยรหัสผ่าน กรอกรหัสผ่านเพื่อปลดล็อก';
        $('pu-pw-row').hidden = false;
        $('pu-go').textContent = 'ปลดล็อก → ดาวน์โหลด';
      } else if (/not encrypted/i.test(r.text)) {
        mode = 'none';
        $('pu-status').textContent = 'PDF นี้ไม่ได้ป้องกันด้วยรหัสผ่านหรือข้อจำกัดใด ๆ';
        $('pu-go').textContent = 'ดาวน์โหลดไฟล์ต้นฉบับ';
      } else if (/\bR = \d/.test(r.text)) {
        mode = 'restricted';
        $('pu-status').textContent = '🔐 PDF นี้มีข้อจำกัดการใช้งาน (เช่น พิมพ์ คัดลอก หรือแก้ไข)';
        $('pu-go').textContent = 'ลบข้อจำกัด → ดาวน์โหลด';
      } else {
        $('pu-status').textContent = '';
        showErr('อ่านไฟล์ไม่ได้ ไฟล์อาจเสียหายหรือไม่ใช่ PDF');
        return;
      }
      $('pu-go').hidden = false;
    } catch (e) {
      $('pu-status').textContent = '';
      showErr(e.message || 'เกิดข้อผิดพลาด');
    }
  }

  async function go() {
    showErr('');
    if (mode === 'none') { download(buf); return; }
    var args = [];
    if (mode === 'password') {
      var pw = $('pu-pw').value;
      if (!pw) { showErr('กรุณากรอกรหัสผ่าน'); return; }
      args.push('--password=' + pw);
    }
    args.push('--decrypt', '/in.pdf', '/out.pdf');
    var btn = $('pu-go'), label = btn.textContent;
    btn.disabled = true; btn.textContent = 'กำลังประมวลผล...';
    try {
      var r = await qpdfRun(args);
      if (r.data) {
        download(r.data);
        $('pu-status').textContent = '✓ ปลดล็อกสำเร็จ';
      } else if (/invalid password/i.test(r.text)) {
        showErr('รหัสผ่านไม่ถูกต้อง');
      } else {
        showErr('ปลดล็อกไม่สำเร็จ กรุณาลองใหม่อีกครั้ง');
      }
    } catch (e) {
      showErr(e.message || 'เกิดข้อผิดพลาด');
    }
    btn.disabled = false; btn.textContent = label;
  }

  var drop = $('pu-drop'), input = $('pu-file');
  drop.addEventListener('click', function () { input.click(); });
  drop.addEventListener('keydown', function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); input.click(); } });
  input.addEventListener('change', function () { setFile(input.files[0]); });
  ['dragenter', 'dragover'].forEach(function (n) {
    drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.add('over'); });
  });
  ['dragleave', 'drop'].forEach(function (n) {
    drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.remove('over'); });
  });
  drop.addEventListener('drop', function (e) { setFile(e.dataTransfer.files[0]); });
  document.addEventListener('paste', function (e) {
    var fl = e.clipboardData && e.clipboardData.files;
    if (fl && fl.length && !file) setFile(fl[0]);
  });
  $('pu-go').addEventListener('click', go);
  $('pu-reset').addEventListener('click', reset);
  $('pu-pw').addEventListener('keydown', function (e) { if (e.key === 'Enter') go(); });
})();
</script>

เครื่องมือปลดล็อก PDF แบบไม่สูญเสียคุณภาพ ทำงานทั้งหมดบนอุปกรณ์ของคุณ ไฟล์ที่ปลดล็อกแล้วยังคงข้อความ ฟอนต์ ภาพเวกเตอร์ และเมตาดาต้าครบเหมือนต้นฉบับ ไม่มีการอัปโหลดไฟล์ และไม่จำกัดขนาดไฟล์

## วิธีใช้งานเครื่องมือปลดล็อก PDF

1. วางไฟล์ PDF ลงในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด **Ctrl+V** เพื่อวางจากคลิปบอร์ด
2. รอสักครู่ให้เครื่องมือวิเคราะห์ไฟล์ ระบบจะบอกว่าไฟล์ถูกป้องกันด้วยรหัสผ่าน มีข้อจำกัดการใช้งาน หรือไม่มีการป้องกัน
3. หากไฟล์ต้องใช้รหัสผ่านในการเปิด ให้กรอกรหัสผ่านแล้วคลิก **ปลดล็อก → ดาวน์โหลด**
4. หากไฟล์เปิดได้ตามปกติแต่พิมพ์ คัดลอก หรือแก้ไขไม่ได้ ให้คลิก **ลบข้อจำกัด → ดาวน์โหลด** โดยไม่ต้องกรอกรหัสผ่าน
5. หากไฟล์ไม่มีการป้องกันใด ๆ คุณสามารถกด **ดาวน์โหลดไฟล์ต้นฉบับ** ได้โดยไฟล์ไม่เปลี่ยนแปลง
6. ไฟล์ที่ปลดล็อกแล้วจะถูกบันทึกในชื่อเดิมต่อท้ายด้วย `-unlocked` กด **ล้าง** เพื่อเริ่มไฟล์ใหม่

> ปลดล็อกเฉพาะ PDF ที่คุณเป็นเจ้าของหรือได้รับอนุญาตให้แก้ไขเท่านั้น

## คำศัพท์ที่ควรรู้

- **รหัสผ่านเปิดไฟล์ (User Password)** — รหัสที่ต้องกรอกก่อนจึงจะเปิดอ่าน PDF ได้ หากไม่ทราบรหัสนี้ เครื่องมือจะปลดล็อกให้ไม่ได้
- **รหัสผ่านเจ้าของ (Owner Password)** — รหัสที่ควบคุมสิทธิ์ของไฟล์ เช่น ห้ามพิมพ์ ห้ามคัดลอก ห้ามแก้ไข ไฟล์ประเภทนี้เปิดอ่านได้ปกติ และเครื่องมือนี้ลบข้อจำกัดให้ได้โดยไม่ต้องใช้รหัส
- **ข้อจำกัดการใช้งาน (Permissions)** — สิทธิ์ที่ผู้สร้างไฟล์กำหนดไว้ เช่น พิมพ์ คัดลอกข้อความ แก้ไข หรือใส่คอมเมนต์
- **AES-128 / AES-256** — มาตรฐานการเข้ารหัสที่ PDF ใช้ ตัวเลขยิ่งสูงยิ่งปลอดภัย รหัสผ่านที่แข็งแรงแทบเป็นไปไม่ได้ที่จะเจาะด้วยคอมพิวเตอร์ทั่วไป
- **Brute-force** — วิธีลองสุ่มรหัสผ่านทุกแบบจนกว่าจะถูก เครื่องมือนี้ไม่เจาะหรือกู้รหัสผ่านที่ลืม ต้องทราบรหัสที่ถูกต้องเท่านั้น
- **ประมวลผลในเบราว์เซอร์ (Client-side)** — การทำงานเกิดขึ้นบนเครื่องของคุณทั้งหมด ไฟล์และรหัสผ่านจะไม่ถูกส่งไปยังเซิร์ฟเวอร์
- **QPDF / WebAssembly** — QPDF คือเครื่องมือจัดการ PDF ที่ถูกแปลงให้รันในเบราว์เซอร์ผ่านเทคโนโลยี WebAssembly (WASM) จึงปลดล็อกได้เร็วและปลอดภัยโดยไม่ต้องติดตั้งโปรแกรม
- **ไม่สูญเสียคุณภาพ (Lossless)** — ไฟล์ถูกถอดรหัสโดยไม่แปลงเป็นรูปภาพ ข้อความยังเลือกและค้นหาได้ ภาพและฟอนต์ไม่เปลี่ยน
- **เมตาดาต้า (Metadata)** — ข้อมูลประกอบไฟล์ เช่น ชื่อเรื่อง ผู้เขียน และวันที่สร้าง ซึ่งยังคงอยู่ครบหลังปลดล็อก

## ข้อควรระวัง

เครื่องมือแบบ "ลบรหัสผ่าน PDF โดยไม่ต้องใช้รหัส" บางเว็บไซต์อาจมาพร้อมโฆษณาแฝงหรือมัลแวร์ หากลืมรหัสผ่านของไฟล์ที่ตั้งเอง ให้ตรวจสอบโปรแกรมจัดการรหัสผ่าน หรือขอรหัสจากผู้ส่งไฟล์