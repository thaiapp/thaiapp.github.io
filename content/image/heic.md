---
title: แปลงไฟล์ HEIC เป็น JPG ออนไลน์ ฟรี
h1: แปลงไฟล์ HEIC เป็น JPG
description: แปลงไฟล์ HEIC เป็น JPG หรือ PNG ออนไลน์ฟรี ไม่ต้องอัปโหลด ประมวลผลในเบราว์เซอร์ รองรับแปลงทีละหลายไฟล์ ดาวน์โหลดเป็น ZIP ได้ ปลอดภัย ไม่ต้องติดตั้งโปรแกรม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-12T09:00:00+07:00'
weight: 106
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- แปลงไฟล์ HEIC เป็น JPG
- แปลงไฟล์ HEIC เป็น JPG ออนไลน์
- แปลง HEIC เป็น PNG
- รูปภาพ
---

แปลงรูปภาพ HEIC และ HEIF เป็น JPG หรือ PNG ได้ทันทีในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ ไม่ต้องใช้เซิร์ฟเวอร์ และไม่ต้องรอ iPhone, iPad และโทรศัพท์ Android หลายรุ่นบันทึกรูปเป็น HEIC โดยค่าเริ่มต้น ให้คุณภาพดีในขนาดไฟล์ที่เล็กลง แต่บางโปรแกรมหรือเว็บไซต์ยังไม่รองรับ เครื่องมือนี้จึงแปลงเป็น JPG หรือ PNG เพื่อให้แชร์ อัปโหลด และแก้ไขได้ทุกที่

<style>
.heic-tool{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:16px;margin:16px 0;font-family:inherit}
.heic-bar{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin-bottom:12px}
.heic-btn{border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;border-radius:8px;padding:8px 14px;cursor:pointer;font:inherit}
.heic-btn.active{background:#2563eb;border-color:#2563eb;color:#fff}
.heic-btn:disabled{opacity:.5;cursor:not-allowed}
.heic-drop{border:2px dashed rgba(128,128,128,.6);border-radius:12px;padding:32px 16px;text-align:center;cursor:pointer}
.heic-drop.over{border-color:#2563eb;background:rgba(37,99,235,.08)}
.heic-note{font-size:.9em;opacity:.8;margin:8px 0 0}
.heic-list{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:12px;margin-top:16px}
.heic-card{border:1px solid rgba(128,128,128,.35);border-radius:10px;padding:8px;text-align:center;overflow:hidden}
.heic-card img{max-width:100%;height:110px;object-fit:contain;display:block;margin:0 auto 6px}
.heic-name{font-size:.8em;word-break:break-all;margin-bottom:6px}
.heic-err{color:#dc2626;font-size:.85em}
</style>

<div class="heic-tool" id="heic-tool">
<div class="heic-bar">
<button type="button" class="heic-btn active" id="heic-fmt-jpg">JPG</button>
<button type="button" class="heic-btn" id="heic-fmt-png">PNG</button>
<button type="button" class="heic-btn" id="heic-zip" disabled>ดาวน์โหลด Zip</button>
<button type="button" class="heic-btn" id="heic-clear" disabled>ล้าง</button>
</div>
<div class="heic-drop" id="heic-drop">
<div>📁 ลากไฟล์ HEIC/HEIF มาวางที่นี่ หรือคลิกเพื่อเลือกไฟล์</div>
<div class="heic-note">กด Ctrl ค้างไว้เพื่อเลือกหลายไฟล์ · การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกส่งออกจากอุปกรณ์</div>
</div>
<input type="file" id="heic-input" accept=".heic,.heif,image/heic,image/heif" multiple hidden>
<div class="heic-list" id="heic-list"></div>
</div>

<script src="https://cdn.jsdelivr.net/npm/heic2any@0.0.4/dist/heic2any.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script>
(function () {
  var drop = document.getElementById('heic-drop');
  var input = document.getElementById('heic-input');
  var list = document.getElementById('heic-list');
  var btnJpg = document.getElementById('heic-fmt-jpg');
  var btnPng = document.getElementById('heic-fmt-png');
  var btnZip = document.getElementById('heic-zip');
  var btnClear = document.getElementById('heic-clear');
  var fmt = 'image/jpeg';
  var items = [];

  function ext() { return fmt === 'image/png' ? '.png' : '.jpg'; }

  function baseName(name) { return name.replace(/\.[^.]+$/, ''); }

  function revokeAll() {
    items.forEach(function (it) {
      (it.results || []).forEach(function (r) { URL.revokeObjectURL(r.url); });
    });
  }

  function download(blob, name) {
    var a = document.createElement('a');
    var url = URL.createObjectURL(blob);
    a.href = url;
    a.download = name;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 1000);
  }

  function render() {
    list.innerHTML = '';
    var total = 0;
    items.forEach(function (it) {
      if (it.error) {
        var e = document.createElement('div');
        e.className = 'heic-card';
        var en = document.createElement('div');
        en.className = 'heic-name';
        en.textContent = it.file.name;
        var em = document.createElement('div');
        em.className = 'heic-err';
        em.textContent = it.error;
        e.appendChild(en);
        e.appendChild(em);
        list.appendChild(e);
        return;
      }
      if (!it.results) {
        var w = document.createElement('div');
        w.className = 'heic-card';
        w.textContent = 'กำลังแปลง… ' + it.file.name;
        list.appendChild(w);
        return;
      }
      it.results.forEach(function (r) {
        total += 1;
        var card = document.createElement('div');
        card.className = 'heic-card';
        var img = document.createElement('img');
        img.src = r.url;
        img.alt = r.name;
        var nm = document.createElement('div');
        nm.className = 'heic-name';
        nm.textContent = r.name;
        var b = document.createElement('button');
        b.type = 'button';
        b.className = 'heic-btn';
        b.textContent = 'ดาวน์โหลด';
        b.addEventListener('click', function () { download(r.blob, r.name); });
        card.appendChild(img);
        card.appendChild(nm);
        card.appendChild(b);
        list.appendChild(card);
      });
    });
    btnZip.disabled = total === 0;
    btnClear.disabled = items.length === 0;
  }

  function convertItem(it) {
    it.results = null;
    it.error = null;
    if (typeof heic2any === 'undefined') {
      it.error = 'โหลดตัวแปลงไม่สำเร็จ กรุณารีเฟรชหน้า';
      render();
      return Promise.resolve();
    }
    return heic2any({ blob: it.file, toType: fmt, quality: 0.92 }).then(function (res) {
      var blobs = Array.isArray(res) ? res : [res];
      var base = baseName(it.file.name);
      it.results = blobs.map(function (blob, i) {
        var suffix = blobs.length > 1 ? '-' + (i + 1) : '';
        return { blob: blob, name: base + suffix + ext(), url: URL.createObjectURL(blob) };
      });
    }).catch(function () {
      it.error = 'แปลงไม่สำเร็จ ไฟล์อาจไม่ใช่ HEIC/HEIF';
    }).then(render);
  }

  function addFiles(files) {
    Array.prototype.slice.call(files).forEach(function (f) {
      var it = { file: f, results: null, error: null };
      items.push(it);
      render();
      convertItem(it);
    });
  }

  function setFormat(next) {
    if (next === fmt) { return; }
    fmt = next;
    btnJpg.classList.toggle('active', fmt === 'image/jpeg');
    btnPng.classList.toggle('active', fmt === 'image/png');
    revokeAll();
    items.forEach(function (it) { it.results = null; });
    render();
    items.forEach(convertItem);
  }

  drop.addEventListener('click', function () { input.click(); });
  input.addEventListener('change', function () {
    addFiles(input.files);
    input.value = '';
  });
  drop.addEventListener('dragover', function (e) {
    e.preventDefault();
    drop.classList.add('over');
  });
  drop.addEventListener('dragleave', function () { drop.classList.remove('over'); });
  drop.addEventListener('drop', function (e) {
    e.preventDefault();
    drop.classList.remove('over');
    if (e.dataTransfer && e.dataTransfer.files) { addFiles(e.dataTransfer.files); }
  });
  btnJpg.addEventListener('click', function () { setFormat('image/jpeg'); });
  btnPng.addEventListener('click', function () { setFormat('image/png'); });
  btnClear.addEventListener('click', function () {
    revokeAll();
    items = [];
    render();
  });
  btnZip.addEventListener('click', function () {
    if (typeof JSZip === 'undefined') {
      alert('โหลดตัวสร้างไฟล์ ZIP ไม่สำเร็จ กรุณารีเฟรชหน้า');
      return;
    }
    var zip = new JSZip();
    items.forEach(function (it) {
      (it.results || []).forEach(function (r) { zip.file(r.name, r.blob); });
    });
    zip.generateAsync({ type: 'blob' }).then(function (blob) {
      download(blob, 'heic-converted.zip');
    });
  });
})();
</script>

## วิธีใช้งานเครื่องมือแปลงไฟล์ HEIC เป็น JPG

1. **เลือกรูปแบบไฟล์ที่ต้องการ** กดปุ่ม **JPG** หรือ **PNG** ที่ด้านบนของเครื่องมือ (ค่าเริ่มต้นคือ JPG)
2. **เพิ่มไฟล์ HEIC/HEIF** ลากไฟล์มาวางในกรอบ หรือคลิกที่กรอบเพื่อเลือกไฟล์จากเครื่อง เลือกได้หลายไฟล์พร้อมกัน
3. **รอการแปลง** เครื่องมือจะแปลงภาพในเบราว์เซอร์ทันที และแสดงภาพขนาดย่อของแต่ละไฟล์ (ไฟล์ HEIC บางไฟล์มีหลายรูป ระบบจะแยกให้ทุกภาพ)
4. **ดาวน์โหลดผลลัพธ์** กด **ดาวน์โหลด** ที่ภาพขนาดย่อเพื่อบันทึกทีละภาพ หรือกด **ดาวน์โหลด Zip** เพื่อบันทึกทุกภาพเป็นไฟล์เดียว
5. **เริ่มใหม่** กด **ล้าง** เพื่อลบรายการทั้งหมดก่อนแปลงชุดใหม่

> หากเปลี่ยนปุ่ม JPG/PNG หลังเพิ่มไฟล์แล้ว เครื่องมือจะแปลงไฟล์เดิมใหม่ให้อัตโนมัติ

## คำอธิบายศัพท์ที่เกี่ยวข้อง

- **HEIC (High Efficiency Image Container)** รูปแบบไฟล์ภาพที่ iPhone และอุปกรณ์รุ่นใหม่ใช้เป็นค่าเริ่มต้น เก็บภาพคุณภาพสูงในขนาดไฟล์ที่เล็กกว่า JPG แต่เปิดได้ไม่ทุกโปรแกรม
- **HEIF (High Efficiency Image File Format)** มาตรฐานหลักของรูปแบบ HEIC ใช้เก็บภาพและข้อมูลประกอบ เช่น ภาพต่อเนื่องหรือภาพหลายเฟรมในไฟล์เดียว
- **JPG / JPEG** รูปแบบภาพที่ใช้กันแพร่หลายที่สุด ไฟล์เล็ก เปิดได้ทุกอุปกรณ์ เหมาะกับการแชร์และอัปโหลด แต่เป็นการบีบอัดแบบสูญเสียรายละเอียดเล็กน้อย
- **PNG (Portable Network Graphics)** รูปแบบภาพที่ไม่สูญเสียรายละเอียด รองรับพื้นหลังโปร่งใส เหมาะกับงานกราฟิก แต่ไฟล์มักใหญ่กว่า JPG
- **ZIP** ไฟล์บีบอัดที่รวมหลายไฟล์ไว้ด้วยกัน ช่วยให้ดาวน์โหลดภาพที่แปลงแล้วทั้งหมดได้ในครั้งเดียว
- **การประมวลผลในเบราว์เซอร์ (Client-side)** การแปลงไฟล์ทำงานบนอุปกรณ์ของคุณเอง ไม่ส่งรูปไปเซิร์ฟเวอร์ จึงเป็นส่วนตัวและรวดเร็ว
- **ภาพขนาดย่อ (Thumbnail)** ภาพตัวอย่างขนาดเล็กของไฟล์ที่แปลงแล้ว ใช้ตรวจสอบผลก่อนดาวน์โหลด