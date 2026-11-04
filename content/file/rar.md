---
title: แตกไฟล์ RAR ออนไลน์ ฟรี
h1: แตกไฟล์ RAR ออนไลน์
description: แตกไฟล์ RAR ออนไลน์ฟรี เปิดดูและดาวน์โหลดไฟล์ใน RAR, RAR5, 7z, ZIP และ tar ได้ทันทีในเบราว์เซอร์ ไม่ต้องติดตั้งโปรแกรม ไม่ต้องอัปโหลดไฟล์ ปลอดภัย 100%
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-04T09:05:00+07:00'
weight: 64
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- แตกไฟล์ RAR ออนไลน์
- PDF และไฟล์
---

เปิดไฟล์ **RAR** ได้โดยตรงในเบราว์เซอร์ รองรับ **7z, ZIP, tar, gz** และอื่นๆ ไม่ต้องอัปโหลด ไม่ต้องติดตั้งโปรแกรม

<style>
.rar-tool{max-width:760px;margin:1.2rem auto;font-size:15px}
.rar-tool *{box-sizing:border-box}
.rar-drop{border:2px dashed rgba(127,127,127,.55);border-radius:14px;padding:34px 16px;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
.rar-drop:hover,.rar-drop.rar-over{background:rgba(127,127,127,.12);border-color:#3b82f6}
.rar-drop .rar-icon{font-size:38px;line-height:1}
.rar-drop .rar-title{font-weight:600;margin-top:8px}
.rar-drop .rar-sub{opacity:.75;font-size:13px;margin-top:4px}
.rar-note{opacity:.8;font-size:13px;margin:8px 2px}
.rar-status{margin:12px 0;padding:10px 14px;border-radius:10px;background:rgba(59,130,246,.12);display:none}
.rar-status.rar-err{background:rgba(220,38,38,.14)}
.rar-pass{display:none;gap:8px;margin:12px 0;flex-wrap:wrap}
.rar-pass input{flex:1;min-width:180px;padding:9px 12px;border-radius:8px;border:1px solid rgba(127,127,127,.5);background:transparent;color:inherit;font:inherit}
.rar-btn{padding:9px 16px;border-radius:8px;border:1px solid rgba(127,127,127,.5);background:transparent;color:inherit;font:inherit;cursor:pointer}
.rar-btn:hover{background:rgba(127,127,127,.15)}
.rar-btn.rar-main{background:#2563eb;border-color:#2563eb;color:#fff}
.rar-btn.rar-main:hover{background:#1d4ed8}
.rar-bar{display:none;align-items:center;justify-content:space-between;gap:10px;flex-wrap:wrap;margin:14px 0 8px}
.rar-bar .rar-sum{font-weight:600;word-break:break-all}
.rar-acts{display:flex;gap:8px;flex-wrap:wrap}
.rar-list{list-style:none;margin:0;padding:0;border:1px solid rgba(127,127,127,.35);border-radius:10px;display:none;max-height:420px;overflow:auto}
.rar-list li{display:flex;align-items:center;gap:10px;padding:9px 12px;border-bottom:1px solid rgba(127,127,127,.2)}
.rar-list li:last-child{border-bottom:0}
.rar-list .rar-name{flex:1;min-width:0;word-break:break-all}
.rar-list .rar-size{opacity:.7;font-size:12.5px;white-space:nowrap}
.rar-list button{padding:5px 10px;border-radius:6px;border:1px solid rgba(127,127,127,.5);background:transparent;color:inherit;cursor:pointer}
.rar-list button:hover{background:rgba(127,127,127,.15)}
</style>

<div id="rar-tool" class="rar-tool">
<div id="rar-drop" class="rar-drop" role="button" tabindex="0">
<div class="rar-icon">🗃️</div>
<div class="rar-title">วางไฟล์บีบอัดที่นี่ หรือคลิกเพื่อเลือกไฟล์</div>
<div class="rar-sub">รองรับ RAR, RAR5, 7z, ZIP, tar, gz, bz2, xz, cab, ISO หรือกด Ctrl+V เพื่อวาง</div>
</div>
<input id="rar-input" type="file" style="display:none">
<div class="rar-note">🛡️ ประมวลผลในเครื่อง 100% ไฟล์ไม่ถูกส่งออกจากเบราว์เซอร์ของคุณ</div>
<div id="rar-status" class="rar-status"></div>
<form id="rar-pass" class="rar-pass" autocomplete="off" onsubmit="return false">
<input id="rar-pass-input" type="password" placeholder="ใส่รหัสผ่านของไฟล์บีบอัด" autocomplete="off">
<button id="rar-pass-btn" class="rar-btn rar-main" type="submit">ปลดล็อก</button>
</form>
<div id="rar-bar" class="rar-bar">
<div id="rar-sum" class="rar-sum"></div>
<div class="rar-acts">
<button id="rar-export" class="rar-btn rar-main" type="button">ส่งออกไปโฟลเดอร์</button>
<button id="rar-clear" class="rar-btn" type="button">ล้าง</button>
</div>
</div>
<ul id="rar-list" class="rar-list"></ul>
</div>

<script>
(function () {
  // ตำแหน่งไลบรารีแตกไฟล์ (libarchive.js) ถ้าต้องการโฮสต์เอง ให้เปลี่ยนเป็นโฟลเดอร์ของคุณ เช่น '/libs/libarchive/'
  var LIB = 'https://cdn.jsdelivr.net/npm/libarchive.js@2.0.2/dist/';
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('rar-drop'), input = $('rar-input'), statusEl = $('rar-status');
  var passBox = $('rar-pass'), passInput = $('rar-pass-input'), passBtn = $('rar-pass-btn');
  var bar = $('rar-bar'), sumEl = $('rar-sum'), listEl = $('rar-list');
  var archive = null, items = [], libPromise = null, busy = false;

  function setStatus(msg, isErr) {
    if (!msg) { statusEl.style.display = 'none'; return; }
    statusEl.textContent = msg;
    statusEl.className = 'rar-status' + (isErr ? ' rar-err' : '');
    statusEl.style.display = 'block';
  }

  function fmtSize(n) {
    var u = ['B', 'KB', 'MB', 'GB'], i = 0;
    n = Number(n) || 0;
    while (n >= 1024 && i !== u.length - 1) { n = n / 1024; i++; }
    return (i === 0 ? n : n.toFixed(1)) + ' ' + u[i];
  }

  function reset() {
    archive = null; items = [];
    listEl.textContent = '';
    listEl.style.display = 'none';
    bar.style.display = 'none';
    passBox.style.display = 'none';
    passInput.value = '';
    input.value = '';
    setStatus('');
  }

  // โหลดตัวแตกไฟล์แบบตรวจสอบก่อน: ถ้า URL ผิดแล้วได้หน้า HTML กลับมา จะแสดงข้อความที่อ่านง่ายแทน error ใน console
  function loadLib() {
    if (libPromise) return libPromise;
    libPromise = (async function () {
      var workerUrl = LIB + 'worker-bundle.js';
      var res = await fetch(workerUrl);
      var txt = await res.text();
      if (!res.ok || txt.trim().charCodeAt(0) === 60) { throw new Error('LIB_LOAD'); }
      // worker-bundle.js adalah ES module: cek file wasm yang direferensikan agar error 404 terlihat jelas
      var wasmRef = txt.match(/["'`]([^"'`\s]*\.wasm)["'`]/);
      if (wasmRef) {
        var wasmUrl = new URL(wasmRef[1], workerUrl).href;
        var wr = await fetch(wasmUrl, { method: 'HEAD' });
        if (!wr.ok) { console.warn('ไม่พบไฟล์ wasm:', wasmUrl); throw new Error('LIB_LOAD'); }
      }
      // worker แบบ module ต้องใช้ import (ห้ามใช้ importScripts) และ import.meta.url ของไฟล์จริงยังคงชี้ไปที่ CDN
      var shim = new Blob(['import ' + JSON.stringify(workerUrl) + ';'], { type: 'text/javascript' });
      var mod = await import(LIB + 'libarchive.js');
      mod.Archive.init({ workerUrl: URL.createObjectURL(shim) });
      return mod.Archive;
    })();
    libPromise.catch(function () { libPromise = null; });
    return libPromise;
  }

  function itemPath(it) { return String(it.path || '') + String(it.file.name || ''); }

  function renderList() {
    listEl.textContent = '';
    var total = 0;
    items.forEach(function (it, idx) {
      total += Number(it.file.size) || 0;
      var li = document.createElement('li');
      var name = document.createElement('span');
      name.className = 'rar-name';
      name.textContent = '📄 ' + itemPath(it);
      var size = document.createElement('span');
      size.className = 'rar-size';
      size.textContent = fmtSize(it.file.size);
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.title = 'ดาวน์โหลดไฟล์นี้';
      btn.textContent = '⬇';
      btn.addEventListener('click', function () { downloadOne(idx); });
      li.appendChild(name); li.appendChild(size); li.appendChild(btn);
      listEl.appendChild(li);
    });
    sumEl.textContent = items.length + ' ไฟล์ · ' + fmtSize(total);
    bar.style.display = 'flex';
    listEl.style.display = items.length ? 'block' : 'none';
    setStatus(items.length ? '' : 'ไม่พบไฟล์ในไฟล์บีบอัดนี้');
  }

  async function listFiles() {
    setStatus('กำลังอ่านไฟล์บีบอัด…');
    items = await archive.getFilesArray();
    renderList();
  }

  async function openFile(file) {
    if (!file || busy) return;
    busy = true;
    reset();
    setStatus('กำลังอ่านไฟล์บีบอัด…');
    try {
      var Archive = await loadLib();
      archive = await Archive.open(file);
      var enc = false;
      try { enc = await archive.hasEncryptedData(); } catch (e) { enc = false; }
      if (enc) {
        setStatus('ไฟล์นี้ถูกป้องกันด้วยรหัสผ่าน กรุณาใส่รหัสผ่านเพื่อดำเนินการต่อ');
        passBox.style.display = 'flex';
        passInput.focus();
      } else {
        await listFiles();
      }
    } catch (err) {
      showError(err);
    }
    busy = false;
  }

  function showError(err) {
    archive = null;
    if (err && err.message === 'LIB_LOAD') {
      setStatus('โหลดตัวแตกไฟล์ไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ตแล้วลองใหม่อีกครั้ง', true);
    } else {
      setStatus('เปิดไฟล์ไม่สำเร็จ ไฟล์อาจเสียหาย รหัสผ่านไม่ถูกต้อง หรือเป็นรูปแบบที่เบราว์เซอร์ยังไม่รองรับ', true);
    }
  }

  async function submitPassword() {
    if (!archive || busy) return;
    busy = true;
    try {
      await archive.usePassword(passInput.value);
      await listFiles();
      passBox.style.display = 'none';
    } catch (err) {
      showError(err);
    }
    busy = false;
  }

  function save(file, name) {
    var url = URL.createObjectURL(file);
    var a = document.createElement('a');
    a.href = url; a.download = name;
    document.body.appendChild(a); a.click(); a.remove();
    setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
  }

  async function downloadOne(idx) {
    var it = items[idx];
    try {
      var f = await it.file.extract();
      save(f, it.file.name || 'file');
    } catch (err) {
      setStatus('ดาวน์โหลดไม่สำเร็จ ลองใหม่อีกครั้ง หรือตรวจสอบรหัสผ่าน', true);
    }
  }

  // ป้องกันการเขียนไฟล์ออกนอกโฟลเดอร์ปลายทาง (path traversal)
  function safeParts(p) {
    var parts = String(p).split('/').filter(function (s) { return s !== '' && s !== '.'; });
    if (parts.indexOf('..') !== -1) return null;
    return parts.map(function (s) { return s.replace(/[\\:*?"|]/g, '_'); });
  }

  async function exportAll() {
    if (!items.length || busy) return;
    if (!window.showDirectoryPicker) {
      setStatus('การส่งออกไปโฟลเดอร์ใช้ได้กับ Chrome หรือ Edge บนคอมพิวเตอร์ ส่วนเบราว์เซอร์อื่นให้กด ⬇ ดาวน์โหลดทีละไฟล์', true);
      return;
    }
    var root;
    try { root = await window.showDirectoryPicker({ mode: 'readwrite' }); } catch (e) { return; }
    busy = true;
    var done = 0, skipped = 0;
    try {
      for (var i = 0; i !== items.length; i++) {
        var parts = safeParts(itemPath(items[i]));
        if (!parts || !parts.length) { skipped++; continue; }
        setStatus('กำลังส่งออก ' + (i + 1) + ' / ' + items.length + ' …');
        var f = await items[i].file.extract();
        var dir = root;
        for (var j = 0; j !== parts.length - 1; j++) {
          dir = await dir.getDirectoryHandle(parts[j], { create: true });
        }
        var fh = await dir.getFileHandle(parts[parts.length - 1], { create: true });
        var w = await fh.createWritable();
        await w.write(f);
        await w.close();
        done++;
      }
      setStatus('ส่งออกสำเร็จ ' + done + ' ไฟล์' + (skipped ? ' (ข้าม ' + skipped + ' ไฟล์ที่ path ไม่ปลอดภัย)' : ''));
    } catch (err) {
      setStatus('ส่งออกไม่สำเร็จ กรุณาลองใหม่อีกครั้ง', true);
    }
    busy = false;
  }

  drop.addEventListener('click', function () { input.click(); });
  drop.addEventListener('keydown', function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); input.click(); } });
  input.addEventListener('change', function () { openFile(input.files[0]); });
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add('rar-over'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove('rar-over'); });
  });
  drop.addEventListener('drop', function (e) { openFile(e.dataTransfer.files[0]); });
  document.addEventListener('paste', function (e) {
    var fl = e.clipboardData && e.clipboardData.files;
    if (fl && fl.length) openFile(fl[0]);
  });
  passBox.addEventListener('submit', function (e) { e.preventDefault(); submitPassword(); });
  $('rar-export').addEventListener('click', exportAll);
  $('rar-clear').addEventListener('click', reset);
})();
</script>

## วิธีใช้งานเครื่องมือแตกไฟล์ RAR ออนไลน์

1. **เลือกไฟล์บีบอัด** คลิกที่กรอบด้านบนเพื่อเลือกไฟล์ `.rar` จากเครื่อง หรือลากไฟล์มาวางในกรอบ หรือกด `Ctrl` + `V` เพื่อวางไฟล์ที่คัดลอกไว้
2. **รอให้เครื่องมืออ่านไฟล์** รายชื่อไฟล์ภายในจะแสดงพร้อมโครงสร้างโฟลเดอร์และขนาดของแต่ละไฟล์ ทุกขั้นตอนทำงานในเบราว์เซอร์ของคุณ ไฟล์จึงไม่ถูกส่งออกไปที่ใด
3. **ใส่รหัสผ่านถ้าไฟล์ถูกล็อก** หากไฟล์ป้องกันด้วยรหัสผ่าน ช่องกรอกรหัสผ่านจะปรากฏขึ้น พิมพ์รหัสแล้วกด **ปลดล็อก**
4. **ดาวน์โหลดไฟล์ที่ต้องการ** กดปุ่ม ⬇ ท้ายชื่อไฟล์เพื่อดาวน์โหลดเฉพาะไฟล์นั้น
5. **หรือส่งออกทั้งหมด** กด **ส่งออกไปโฟลเดอร์** แล้วเลือกโฟลเดอร์ปลายทาง ไฟล์ทั้งหมดจะถูกวางไว้พร้อมโครงสร้างโฟลเดอร์เดิม (ใช้ได้กับ Chrome และ Edge บนคอมพิวเตอร์)
6. **เริ่มใหม่** กด **ล้าง** เพื่อปิดไฟล์ปัจจุบันและเลือกไฟล์ใหม่

**ข้อควรรู้:** ระหว่างประมวลผลให้เปิดแท็บนี้ค้างไว้ การสลับแอปหรือล็อกหน้าจออาจทำให้การทำงานหยุดชั่วคราว ไฟล์ RAR หรือ 7z ที่เข้ารหัสด้วย AES อาจเปิดในเบราว์เซอร์ไม่ได้ ให้ใช้โปรแกรมบนเดสก์ท็อป เช่น WinRAR หรือ 7-Zip แทน

## ไม่ใช่แค่ RAR

เครื่องมือนี้เปิดไฟล์ได้หลายรูปแบบในหน้าเดียว ทั้ง RAR, RAR5, 7z, ZIP, tar, gz, bz2, xz, cab, ISO, LZH และ cpio รวมถึงไฟล์ tarball อย่าง `.tar.gz` และ `.tar.bz2` ที่นิยมใช้บน Linux และ macOS ก็แตกไฟล์ได้ในขั้นตอนเดียว

## คำศัพท์ที่ควรรู้

- **ไฟล์บีบอัด (Archive):** ไฟล์เดียวที่รวมหลายไฟล์และโฟลเดอร์เข้าด้วยกัน มักถูกบีบอัดให้เล็กลงเพื่อประหยัดพื้นที่และส่งต่อได้สะดวก
- **แตกไฟล์ (Extract):** การนำไฟล์ที่อยู่ในไฟล์บีบอัดออกมาใช้งานได้ตามปกติ
- **RAR:** รูปแบบไฟล์บีบอัดที่นิยมสำหรับการแชร์ไฟล์ มีอัตราการบีบอัดดี ปกติต้องใช้ WinRAR หรือโปรแกรมที่รองรับในการเปิด
- **RAR5:** RAR เวอร์ชันใหม่ที่ปรับปรุงการบีบอัดและการเข้ารหัส ไฟล์ที่สร้างจาก WinRAR รุ่นใหม่มักเป็นรูปแบบนี้
- **ZIP:** รูปแบบไฟล์บีบอัดที่แพร่หลายที่สุด ระบบปฏิบัติการส่วนใหญ่เปิดได้ในตัว
- **7z:** รูปแบบไฟล์บีบอัดของโปรแกรม 7-Zip ซึ่งโดดเด่นเรื่องอัตราการบีบอัดสูง
- **tar:** รูปแบบที่รวมหลายไฟล์เป็นไฟล์เดียวโดยไม่บีบอัด นิยมใช้บน Linux และ macOS
- **gz / bz2 / xz:** วิธีบีบอัดที่มักใช้ร่วมกับ tar เช่น `.tar.gz`, `.tar.bz2` และ `.tar.xz`
- **Tarball:** ชื่อเรียกไฟล์ tar ที่ถูกบีบอัดต่ออีกชั้น เช่น `.tar.gz`
- **ISO:** ไฟล์ภาพของแผ่นดิสก์ ใช้เก็บเนื้อหาของแผ่น CD, DVD หรือชุดติดตั้งโปรแกรม
- **cab / LZH / cpio:** รูปแบบไฟล์บีบอัดหรือรวมไฟล์อีกกลุ่มหนึ่ง พบในชุดติดตั้ง Windows และไฟล์เก่าบางประเภท
- **รหัสผ่านของไฟล์บีบอัด:** รหัสที่ใช้ล็อกไม่ให้เปิดดูเนื้อหาในไฟล์บีบอัดได้ หากไม่มีรหัสที่ถูกต้องจะแตกไฟล์ไม่ได้
- **การเข้ารหัส AES:** มาตรฐานเข้ารหัสข้อมูลที่แข็งแรงซึ่งไฟล์ RAR และ 7z ใช้ ไฟล์ที่ล็อกด้วย AES อาจเปิดในเบราว์เซอร์ไม่ได้
- **ส่งออกไปโฟลเดอร์:** ฟีเจอร์เขียนไฟล์ที่แตกแล้วทั้งหมดลงโฟลเดอร์ในเครื่องโดยตรง พร้อมโครงสร้างโฟลเดอร์เดิม รองรับ Chrome และ Edge บนคอมพิวเตอร์
- **ประมวลผลในเครื่อง (Client-side):** การทำงานทั้งหมดเกิดในเบราว์เซอร์ของคุณ ไฟล์จึงไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์
- **WebAssembly (WASM):** เทคโนโลยีที่ให้เบราว์เซอร์รันโค้ดความเร็วสูง ทำให้แตกไฟล์ขนาดใหญ่ได้โดยไม่ต้องติดตั้งโปรแกรม