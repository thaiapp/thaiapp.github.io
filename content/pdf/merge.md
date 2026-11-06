---
title: รวมไฟล์ PDF ออนไลน์ ฟรี
h1: รวมไฟล์ PDF
description: รวมไฟล์ PDF ออนไลน์ฟรี รวมหลายไฟล์เป็นไฟล์เดียวได้ในไม่กี่คลิก ลากเพื่อจัดลำดับหน้า ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดไฟล์ ใช้ได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-06T09:00:00+07:00'
weight: 78
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- รวมไฟล์ PDF
- รวมไฟล์ PDF ออนไลน์
- PDF และไฟล์
---

รวมไฟล์ PDF หลายไฟล์ให้เป็นเอกสารเดียวได้โดยตรงบนเบราว์เซอร์ของคุณ ไม่ต้องสมัครสมาชิก และไม่ต้องอัปโหลดไฟล์ขึ้นเซิร์ฟเวอร์ จัดเรียงลำดับใหม่ได้ง่ายด้วยการลากและวาง แล้วดาวน์โหลดไฟล์ที่รวมเสร็จได้ทันที เหมาะสำหรับรวมรายงาน ใบแจ้งหนี้ สัญญา เอกสารสมัครงาน หรือเอกสารการเรียน

<style>
.pm{max-width:760px;margin:1.5rem auto;font-family:inherit}
.pm *{box-sizing:border-box}
.pm-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:28px 16px;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
.pm-drop:hover,.pm-drop:focus,.pm-drop.pm-over{background:rgba(80,140,255,.10);border-color:#3b82f6;outline:none}
.pm-drop-title{margin:0 0 6px;font-weight:600;font-size:1.05rem}
.pm-note{margin:0;font-size:.85rem;opacity:.75}
.pm-btn{display:inline-block;border:1px solid rgba(128,128,128,.6);background:transparent;color:inherit;border-radius:8px;padding:9px 16px;font-size:.95rem;cursor:pointer;font-family:inherit}
.pm-btn:hover{background:rgba(128,128,128,.15)}
.pm-btn[disabled]{opacity:.5;cursor:not-allowed}
.pm-primary{background:#2563eb;border-color:#2563eb;color:#fff}
.pm-primary:hover{background:#1d4ed8}
.pm-bar{display:flex;flex-wrap:wrap;gap:8px;margin:14px 0 4px}
.pm-msg{min-height:1.4rem;margin:10px 0 0;font-size:.92rem}
.pm-msg.pm-err{color:#dc2626}
.pm-hint{margin:12px 0 4px;font-size:.85rem;opacity:.75}
.pm-list{list-style:none;margin:8px 0 0;padding:0}
.pm-card{display:flex;align-items:center;gap:10px;border:1px solid rgba(128,128,128,.45);border-radius:10px;padding:10px 12px;margin:0 0 8px;background:rgba(128,128,128,.06)}
.pm-card.pm-dragging{opacity:.4}
.pm-card.pm-target{border-color:#3b82f6;background:rgba(80,140,255,.12)}
.pm-grip{cursor:grab;font-size:1.2rem;opacity:.6;user-select:none}
.pm-num{flex:0 0 auto;min-width:26px;height:26px;line-height:26px;text-align:center;border-radius:50%;background:#2563eb;color:#fff;font-size:.8rem}
.pm-info{flex:1 1 auto;min-width:0}
.pm-name{font-weight:600;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.pm-meta{font-size:.82rem;opacity:.75}
.pm-mini{flex:0 0 auto;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;border-radius:6px;width:32px;height:32px;cursor:pointer;font-size:.9rem;line-height:1}
.pm-mini:hover{background:rgba(128,128,128,.2)}
.pm-mini[disabled]{opacity:.35;cursor:not-allowed}
</style>

<div class="pm" id="pm-root">
<div class="pm-drop" id="pm-drop" tabindex="0" role="button" aria-label="เลือกไฟล์ PDF">
<p class="pm-drop-title">วางไฟล์ PDF ที่นี่ หรือคลิกเพื่อเลือกไฟล์</p>
<p class="pm-note">กด Ctrl+V เพื่อวางไฟล์ได้ · เลือกได้หลายไฟล์พร้อมกัน</p>
<p class="pm-note">ประมวลผลในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์</p>
</div>
<input type="file" id="pm-file" accept="application/pdf,.pdf" multiple style="display:none">
<p class="pm-msg" id="pm-msg" role="status" aria-live="polite"></p>
<div class="pm-bar" id="pm-bar" style="display:none">
<button type="button" class="pm-btn" id="pm-add">เพิ่ม PDF</button>
<button type="button" class="pm-btn pm-primary" id="pm-merge">รวมและดาวน์โหลด</button>
<button type="button" class="pm-btn" id="pm-clear">ล้าง</button>
</div>
<p class="pm-hint" id="pm-hint" style="display:none">ลากการ์ดเพื่อเรียงลำดับใหม่ (หรือกดปุ่ม ▲ ▼ บนมือถือ)</p>
<ul class="pm-list" id="pm-list"></ul>
</div>

<script src="https://cdn.jsdelivr.net/npm/pdf-lib@1.17.1/dist/pdf-lib.min.js"></script>
<script>
(function () {
  var items = [];
  var nextId = 1;
  var busy = false;
  var dragIndex = -1;
  var root = document.getElementById('pm-root');
  var drop = document.getElementById('pm-drop');
  var input = document.getElementById('pm-file');
  var msg = document.getElementById('pm-msg');
  var bar = document.getElementById('pm-bar');
  var hint = document.getElementById('pm-hint');
  var list = document.getElementById('pm-list');
  var btnAdd = document.getElementById('pm-add');
  var btnMerge = document.getElementById('pm-merge');
  var btnClear = document.getElementById('pm-clear');

  if (!root || !drop || !input || !list) { return; }

  function setMsg(text, isError) {
    msg.textContent = text || '';
    msg.className = isError ? 'pm-msg pm-err' : 'pm-msg';
  }

  function fmtSize(n) {
    if (n >= 1048576) { return (n / 1048576).toFixed(2) + ' MB'; }
    if (n >= 1024) { return Math.round(n / 1024) + ' KB'; }
    return n + ' B';
  }

  function hasLib() {
    return typeof window.PDFLib !== 'undefined' && window.PDFLib.PDFDocument;
  }

  function isPdf(file) {
    var name = (file.name || '').toLowerCase();
    return file.type === 'application/pdf' || name.slice(-4) === '.pdf';
  }

  function setBusy(state) {
    busy = state;
    btnMerge.disabled = state;
    btnAdd.disabled = state;
    btnClear.disabled = state;
  }

  function move(from, to) {
    if (to === from || to === -1 || to === items.length) { return; }
    var moved = items.splice(from, 1)[0];
    items.splice(to, 0, moved);
    render();
  }

  function makeBtn(label, title, disabled, handler) {
    var b = document.createElement('button');
    b.type = 'button';
    b.className = 'pm-mini';
    b.textContent = label;
    b.title = title;
    b.setAttribute('aria-label', title);
    b.disabled = disabled;
    b.addEventListener('click', handler);
    return b;
  }

  function render() {
    list.textContent = '';
    var start = 1;
    for (var i = 0; i !== items.length; i += 1) {
      list.appendChild(buildCard(items[i], i, start));
      start += items[i].pages;
    }
    var has = items.length !== 0;
    bar.style.display = has ? 'flex' : 'none';
    hint.style.display = has ? 'block' : 'none';
    drop.style.display = has ? 'none' : 'block';
  }

  function buildCard(item, index, start) {
    var end = start + item.pages - 1;
    var range = item.pages === 1 ? 'หน้า ' + start : 'หน้า ' + start + '–' + end;
    var li = document.createElement('li');
    li.className = 'pm-card';
    li.draggable = true;

    var grip = document.createElement('span');
    grip.className = 'pm-grip';
    grip.textContent = '⠿';
    grip.setAttribute('aria-hidden', 'true');

    var num = document.createElement('span');
    num.className = 'pm-num';
    num.textContent = String(index + 1);

    var info = document.createElement('div');
    info.className = 'pm-info';
    var name = document.createElement('div');
    name.className = 'pm-name';
    name.textContent = item.name;
    name.title = item.name;
    var meta = document.createElement('div');
    meta.className = 'pm-meta';
    meta.textContent = range + ' · ' + item.pages + ' หน้า · ' + fmtSize(item.size);
    info.appendChild(name);
    info.appendChild(meta);

    li.appendChild(grip);
    li.appendChild(num);
    li.appendChild(info);
    li.appendChild(makeBtn('▲', 'เลื่อนขึ้น', index === 0, function () { move(index, index - 1); }));
    li.appendChild(makeBtn('▼', 'เลื่อนลง', index === items.length - 1, function () { move(index, index + 1); }));
    li.appendChild(makeBtn('×', 'ลบไฟล์นี้', false, function () {
      items.splice(index, 1);
      setMsg('');
      render();
    }));

    li.addEventListener('dragstart', function (e) {
      dragIndex = index;
      li.classList.add('pm-dragging');
      if (e.dataTransfer) {
        e.dataTransfer.effectAllowed = 'move';
        try { e.dataTransfer.setData('text/plain', String(index)); } catch (err) { /* ignore */ }
      }
    });
    li.addEventListener('dragend', function () {
      dragIndex = -1;
      li.classList.remove('pm-dragging');
      var targets = list.querySelectorAll('.pm-target');
      for (var k = 0; k !== targets.length; k += 1) { targets[k].classList.remove('pm-target'); }
    });
    li.addEventListener('dragover', function (e) {
      if (dragIndex === -1) { return; }
      e.preventDefault();
      li.classList.add('pm-target');
    });
    li.addEventListener('dragleave', function () { li.classList.remove('pm-target'); });
    li.addEventListener('drop', function (e) {
      if (dragIndex === -1) { return; }
      e.preventDefault();
      e.stopPropagation();
      li.classList.remove('pm-target');
      var from = dragIndex;
      dragIndex = -1;
      move(from, index);
    });
    return li;
  }

  async function addFiles(fileList) {
    if (busy || !fileList || fileList.length === 0) { return; }
    if (!hasLib()) {
      setMsg('โหลดไลบรารี PDF ไม่สำเร็จ กรุณารีเฟรชหน้าหรือตรวจสอบอินเทอร์เน็ต', true);
      return;
    }
    setBusy(true);
    var added = 0;
    var failed = [];
    for (var i = 0; i !== fileList.length; i += 1) {
      var file = fileList[i];
      if (!isPdf(file)) { failed.push(file.name); continue; }
      try {
        var buf = await file.arrayBuffer();
        var doc = await window.PDFLib.PDFDocument.load(buf);
        items.push({ id: nextId, name: file.name, size: file.size, bytes: buf, pages: doc.getPageCount() });
        nextId += 1;
        added += 1;
      } catch (err) {
        failed.push(file.name);
      }
    }
    setBusy(false);
    render();
    if (failed.length !== 0) {
      setMsg('ไม่สามารถเพิ่มไฟล์นี้ได้ (ไม่ใช่ PDF, มีรหัสผ่าน หรือไฟล์เสียหาย): ' + failed.join(', '), true);
    } else if (added !== 0) {
      setMsg('เพิ่มแล้ว ' + added + ' ไฟล์');
    }
  }

  async function mergeAll() {
    if (busy) { return; }
    if (items.length === 0 || items.length === 1) {
      setMsg('กรุณาเพิ่มไฟล์ PDF อย่างน้อย 2 ไฟล์', true);
      return;
    }
    if (!hasLib()) {
      setMsg('โหลดไลบรารี PDF ไม่สำเร็จ กรุณารีเฟรชหน้าหรือตรวจสอบอินเทอร์เน็ต', true);
      return;
    }
    setBusy(true);
    setMsg('กำลังรวมไฟล์ กรุณารอสักครู่...');
    try {
      var out = await window.PDFLib.PDFDocument.create();
      for (var i = 0; i !== items.length; i += 1) {
        var src = await window.PDFLib.PDFDocument.load(items[i].bytes);
        var pages = await out.copyPages(src, src.getPageIndices());
        for (var p = 0; p !== pages.length; p += 1) { out.addPage(pages[p]); }
      }
      var data = await out.save();
      var blob = new Blob([data], { type: 'application/pdf' });
      var url = URL.createObjectURL(blob);
      var a = document.createElement('a');
      a.href = url;
      a.download = 'merged.pdf';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
      setMsg('รวมไฟล์สำเร็จ กำลังดาวน์โหลด merged.pdf (' + out.getPageCount() + ' หน้า)');
    } catch (err) {
      setMsg('เกิดข้อผิดพลาดระหว่างรวมไฟล์ กรุณาลองใหม่อีกครั้ง', true);
    }
    setBusy(false);
  }

  function openPicker() { input.click(); }

  drop.addEventListener('click', openPicker);
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); openPicker(); }
  });
  btnAdd.addEventListener('click', openPicker);
  btnMerge.addEventListener('click', mergeAll);
  btnClear.addEventListener('click', function () {
    if (busy) { return; }
    items = [];
    setMsg('');
    render();
  });
  input.addEventListener('change', function () {
    var picked = input.files;
    addFiles(picked).then(function () { input.value = ''; });
  });

  root.addEventListener('dragover', function (e) {
    if (dragIndex !== -1) { return; }
    e.preventDefault();
    drop.classList.add('pm-over');
  });
  root.addEventListener('dragleave', function (e) {
    if (e.target === root || e.target === drop) { drop.classList.remove('pm-over'); }
  });
  root.addEventListener('drop', function (e) {
    drop.classList.remove('pm-over');
    if (dragIndex !== -1) { return; }
    e.preventDefault();
    if (e.dataTransfer && e.dataTransfer.files) { addFiles(e.dataTransfer.files); }
  });
  document.addEventListener('paste', function (e) {
    var files = e.clipboardData && e.clipboardData.files;
    if (files && files.length !== 0) { addFiles(files); }
  });

  render();
})();
</script>

## วิธีรวมไฟล์ PDF

1. **เลือกไฟล์** ลากไฟล์ PDF มาวางในกรอบด้านบน กดเลือกไฟล์ หรือกด Ctrl+V เพื่อวางไฟล์ เลือกได้หลายไฟล์พร้อมกัน
2. **ตรวจสอบการ์ดไฟล์** แต่ละไฟล์จะแสดงเป็นการ์ด พร้อมชื่อไฟล์ ช่วงหน้าในเอกสารผลลัพธ์ จำนวนหน้า และขนาดไฟล์
3. **จัดลำดับใหม่** ลากการ์ดเพื่อสลับตำแหน่ง หรือกดปุ่ม ▲ ▼ เพื่อเลื่อนขึ้นลง (สะดวกบนมือถือ)
4. **เพิ่มหรือลบไฟล์** กด **เพิ่ม PDF** เพื่อใส่ไฟล์เพิ่ม หรือกด **×** บนการ์ดเพื่อเอาไฟล์นั้นออก
5. **รวมและดาวน์โหลด** เมื่อพร้อมแล้วกด **รวมและดาวน์โหลด** ระบบจะรวมทุกไฟล์เป็น PDF เดียวตามลำดับที่เห็น แล้วดาวน์โหลดเป็นไฟล์ merged.pdf
6. **เริ่มใหม่** กด **ล้าง** เพื่อลบไฟล์ทั้งหมดและเริ่มงานใหม่

> ต้องมีไฟล์ PDF อย่างน้อย 2 ไฟล์จึงจะรวมได้ ไฟล์ที่ตั้งรหัสผ่านไว้หรือไฟล์ที่เสียหายอาจเพิ่มไม่ได้ ควรปลดล็อกไฟล์ก่อน

## อธิบายคำศัพท์

- **PDF** รูปแบบไฟล์เอกสารที่แสดงผลเหมือนเดิมในทุกอุปกรณ์ นิยมใช้กับรายงาน สัญญา และใบแจ้งหนี้
- **รวมไฟล์ PDF (Merge)** การนำ PDF หลายไฟล์มาต่อกันเป็นไฟล์เดียว โดยหน้าจะเรียงตามลำดับของไฟล์
- **พื้นที่วางไฟล์** กรอบสำหรับลากไฟล์มาวาง หรือคลิกเพื่อเลือกไฟล์จากเครื่อง
- **การ์ด** กล่องที่แทนไฟล์ PDF หนึ่งไฟล์ แสดงชื่อ ลำดับ ช่วงหน้า และขนาด
- **ลากและวาง (Drag and Drop)** การกดค้างที่การ์ดแล้วลากไปวางตำแหน่งใหม่ เพื่อเปลี่ยนลำดับไฟล์
- **ช่วงหน้า** เลขหน้าของไฟล์นั้นในเอกสารที่รวมแล้ว เช่น "หน้า 4–9" คือหน้า 4 ถึง 9 ของไฟล์ผลลัพธ์
- **เพิ่ม PDF** ปุ่มสำหรับเพิ่มไฟล์ใหม่ต่อจากรายการเดิม
- **รวมและดาวน์โหลด** ปุ่มสั่งรวมทุกไฟล์ในรายการและบันทึกไฟล์ผลลัพธ์ลงเครื่อง
- **ล้าง** ปุ่มลบไฟล์ทั้งหมดออกจากรายการเพื่อเริ่มใหม่
- **ปุ่ม ×** ลบไฟล์นั้นออกจากรายการ โดยไม่กระทบไฟล์ต้นฉบับในเครื่อง
- **ปุ่ม ▲ ▼** เลื่อนไฟล์ขึ้นหรือลงหนึ่งตำแหน่ง ใช้แทนการลากบนมือถือ
- **ประมวลผลในเครื่อง** การรวมไฟล์ทำงานในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งไปยังเซิร์ฟเวอร์
- **ไฟล์ที่มีรหัสผ่าน** PDF ที่ถูกเข้ารหัสไว้ ต้องปลดล็อกก่อนจึงจะรวมได้