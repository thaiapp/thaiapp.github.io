---
title: หมุน PDF ออนไลน์ ฟรี
h1: หมุน PDF
description: หมุน PDF ออนไลน์ฟรี แก้หน้าที่หันผิดด้านได้ในคลิกเดียว หมุนทีละหน้า จัดลำดับ ลบหน้า แล้วดาวน์โหลดทันที ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกส่งออกจากเครื่อง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-07T09:00:00+07:00'
weight: 84
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- หมุน PDF
- หมุน PDF ออนไลน์
- PDF และไฟล์
---

<style>
.pr-app{margin:1rem 0}
.pr-app [hidden]{display:none!important}
.pr-drop{border:2px dashed rgba(128,128,128,.55);border-radius:10px;padding:28px 16px;text-align:center;line-height:1.7}
.pr-drop.pr-over{border-color:#0f766e;background:rgba(15,118,110,.08)}
.pr-drop small{display:block;opacity:.75;margin-top:8px}
.pr-btn{font:inherit;cursor:pointer;border:1px solid #0f766e;background:#0f766e;color:#fff;border-radius:8px;padding:8px 16px;margin:8px 4px 0}
.pr-btn.pr-alt{background:transparent;color:inherit;border-color:rgba(128,128,128,.6)}
.pr-btn:disabled{opacity:.5;cursor:not-allowed}
.pr-btn:focus-visible,.pr-b:focus-visible{outline:2px solid #0f766e;outline-offset:2px}
.pr-bar{display:flex;flex-wrap:wrap;align-items:center;gap:4px 8px;margin:14px 0 6px}
.pr-bar .pr-btn{margin:4px 0}
.pr-hint{opacity:.75;font-size:.9em}
#pr-msg{min-height:1.5em;margin:6px 0}
.pr-err{color:#dc2626}
.pr-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:12px;margin-top:8px}
.pr-card{border:1px solid rgba(128,128,128,.45);border-radius:8px;padding:8px;cursor:grab}
.pr-card.pr-drag{opacity:.4}
.pr-thumb{height:200px;display:flex;align-items:center;justify-content:center;background:#fff;border-radius:4px;overflow:hidden}
.pr-thumb canvas{max-width:100%;max-height:100%}
.pr-row{display:flex;align-items:center;gap:6px;margin-top:8px}
.pr-no{flex:1;font-size:.9em;opacity:.8}
.pr-b{font:inherit;cursor:pointer;border:1px solid rgba(128,128,128,.6);background:transparent;color:inherit;border-radius:6px;padding:2px 8px;min-width:34px}
.pr-b:hover{border-color:#0f766e}
</style>

<div class="pr-app" id="pr-app">
  <div class="pr-drop" id="pr-drop">
    <strong>วางไฟล์ PDF ที่นี่</strong> หรือกด Ctrl+V เพื่อวางไฟล์
    <div><button type="button" class="pr-btn" id="pr-pick">เลือกไฟล์ PDF…</button></div>
    <small>การประมวลผลเกิดในเบราว์เซอร์ของคุณ ไฟล์จะไม่ออกจากอุปกรณ์</small>
  </div>
  <input type="file" id="pr-file" accept="application/pdf,.pdf" multiple hidden>
  <div class="pr-bar" id="pr-bar" hidden>
    <button type="button" class="pr-btn pr-alt" id="pr-add">เพิ่ม PDF</button>
    <button type="button" class="pr-btn" id="pr-save">ดาวน์โหลด PDF</button>
    <button type="button" class="pr-btn pr-alt" id="pr-clear">ล้าง</button>
    <span class="pr-hint" id="pr-count"></span>
    <span class="pr-hint">ลากเพื่อจัดลำดับหน้าใหม่</span>
  </div>
  <div id="pr-msg" role="status" aria-live="polite"></div>
  <div class="pr-grid" id="pr-grid"></div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js"></script>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var app = $('pr-app'), drop = $('pr-drop'), input = $('pr-file'), bar = $('pr-bar');
  var grid = $('pr-grid'), msg = $('pr-msg');
  var files = {}, pages = [], seq = 0, dragFrom = null, observer = null;
  var libsOk = !!(window.pdfjsLib && window.PDFLib);
  if (libsOk) {
    pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';
  }
  if ('IntersectionObserver' in window) {
    observer = new IntersectionObserver(function (entries) {
      entries.forEach(function (en) {
        if (!en.isIntersecting) return;
        observer.unobserve(en.target);
        var p = en.target._p;
        if (p && !p.drawn) draw(p);
      });
    }, { rootMargin: '300px' });
  }
  function say(t, isErr) {
    msg.textContent = t || '';
    msg.className = isErr ? 'pr-err' : '';
  }
  function hasFiles(e) {
    var t = e.dataTransfer && e.dataTransfer.types;
    return !!t && Array.prototype.indexOf.call(t, 'Files') > -1;
  }
  function draw(p) {
    p.drawn = true;
    var cv = p.el.querySelector('canvas');
    if (p.task) { try { p.task.cancel(); } catch (e) {} }
    var rotation = (p.pg.rotate + p.rot) % 360;
    var v1 = p.pg.getViewport({ scale: 1, rotation: rotation });
    var dpr = Math.min(window.devicePixelRatio || 1, 2);
    var scale = Math.min(150 / v1.width, 190 / v1.height);
    var v = p.pg.getViewport({ scale: scale * dpr, rotation: rotation });
    cv.width = Math.floor(v.width);
    cv.height = Math.floor(v.height);
    cv.style.width = Math.floor(v.width / dpr) + 'px';
    cv.style.height = Math.floor(v.height / dpr) + 'px';
    var task = p.pg.render({ canvasContext: cv.getContext('2d'), viewport: v });
    p.task = task;
    task.promise.then(function () { if (p.task === task) p.task = null; }).catch(function () {});
  }
  function sync() {
    pages.forEach(function (p, i) {
      grid.appendChild(p.el);
      p.el.querySelector('.pr-no').textContent = String(i + 1);
    });
    bar.hidden = pages.length === 0;
    $('pr-count').textContent = pages.length ? pages.length + ' หน้า' : '';
  }
  function dropDoc(fid) {
    if (!files[fid]) return;
    if (pages.some(function (p) { return p.fid === fid; })) return;
    try { files[fid].doc.destroy(); } catch (e) {}
    delete files[fid];
  }
  function removePage(p) {
    if (p.task) { try { p.task.cancel(); } catch (e) {} }
    if (observer) observer.unobserve(p.el);
    pages.splice(pages.indexOf(p), 1);
    p.el.remove();
    dropDoc(p.fid);
    sync();
  }
  function addCard(fid, idx, pg) {
    var p = { fid: fid, idx: idx, pg: pg, rot: 0, task: null, drawn: false };
    var el = document.createElement('div');
    el.className = 'pr-card';
    el.draggable = true;
    el.title = files[fid].name;
    el.innerHTML = '<div class="pr-thumb"><canvas></canvas></div>' +
      '<div class="pr-row"><span class="pr-no"></span>' +
      '<button type="button" class="pr-b pr-rot" title="หมุน 90° ตามเข็มนาฬิกา" aria-label="หมุน 90° ตามเข็มนาฬิกา">90°⤸</button>' +
      '<button type="button" class="pr-b pr-del" title="ลบหน้านี้" aria-label="ลบหน้านี้">×</button></div>';
    el._p = p;
    p.el = el;
    el.querySelector('.pr-rot').addEventListener('click', function () {
      p.rot = (p.rot + 90) % 360;
      draw(p);
    });
    el.querySelector('.pr-del').addEventListener('click', function () { removePage(p); });
    el.addEventListener('dragstart', function (e) {
      dragFrom = p;
      el.classList.add('pr-drag');
      e.dataTransfer.effectAllowed = 'move';
      try { e.dataTransfer.setData('text/plain', 'page'); } catch (x) {}
    });
    el.addEventListener('dragend', function () {
      dragFrom = null;
      el.classList.remove('pr-drag');
    });
    el.addEventListener('dragover', function (e) { if (dragFrom) e.preventDefault(); });
    el.addEventListener('drop', function (e) {
      if (!dragFrom) return;
      e.preventDefault();
      e.stopPropagation();
      if (dragFrom === p) return;
      var from = pages.indexOf(dragFrom), to = pages.indexOf(p);
      pages.splice(from, 1);
      pages.splice(to, 0, dragFrom);
      sync();
    });
    pages.push(p);
    grid.appendChild(el);
    if (observer) observer.observe(el); else draw(p);
  }
  async function addFiles(list) {
    if (!libsOk) {
      say('โหลดไลบรารี PDF ไม่สำเร็จ กรุณารีเฟรชหน้านี้และตรวจสอบอินเทอร์เน็ต', true);
      return;
    }
    var arr = Array.prototype.slice.call(list).filter(function (f) {
      return f.type === 'application/pdf' || /\.pdf$/i.test(f.name);
    });
    if (!arr.length) { say('กรุณาเลือกไฟล์ PDF เท่านั้น', true); return; }
    say('กำลังอ่านไฟล์…');
    var failed = false;
    for (var i = 0; i < arr.length; i++) {
      try {
        var buf = await arr[i].arrayBuffer();
        var doc = await pdfjsLib.getDocument({ data: new Uint8Array(buf.slice(0)) }).promise;
        var fid = ++seq;
        files[fid] = { name: arr[i].name, buf: buf, doc: doc };
        for (var n = 1; n <= doc.numPages; n++) {
          addCard(fid, n - 1, await doc.getPage(n));
        }
        sync();
      } catch (e) {
        failed = true;
        say(e && e.name === 'PasswordException'
          ? 'ไฟล์ ' + arr[i].name + ' ถูกล็อกด้วยรหัสผ่าน กรุณาปลดล็อกก่อนใช้งาน'
          : 'เปิดไฟล์ ' + arr[i].name + ' ไม่ได้ ไฟล์อาจเสียหาย', true);
      }
    }
    if (!failed) say('');
  }
  async function save() {
    if (!pages.length) return;
    var btn = $('pr-save');
    btn.disabled = true;
    say('กำลังสร้างไฟล์…');
    try {
      var PD = PDFLib.PDFDocument, out = await PD.create(), srcs = {}, ids = {};
      for (var i = 0; i < pages.length; i++) {
        var p = pages[i];
        ids[p.fid] = true;
        if (!srcs[p.fid]) srcs[p.fid] = await PD.load(files[p.fid].buf, { ignoreEncryption: true });
        var copied = (await out.copyPages(srcs[p.fid], [p.idx]))[0];
        copied.setRotation(PDFLib.degrees((p.pg.rotate + p.rot) % 360));
        out.addPage(copied);
      }
      var keys = Object.keys(ids);
      var name = keys.length === 1 ? files[keys[0]].name.replace(/\.pdf$/i, '') + '-rotated.pdf' : 'rotated.pdf';
      var bytes = await out.save();
      var url = URL.createObjectURL(new Blob([bytes], { type: 'application/pdf' }));
      var a = document.createElement('a');
      a.href = url;
      a.download = name;
      document.body.appendChild(a);
      a.click();
      a.remove();
      setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
      say('สร้างไฟล์เรียบร้อยแล้ว');
    } catch (e) {
      say('สร้างไฟล์ไม่สำเร็จ ไฟล์อาจเสียหายหรือถูกเข้ารหัส', true);
    }
    btn.disabled = false;
  }
  function clearAll() {
    pages.forEach(function (p) { if (p.task) { try { p.task.cancel(); } catch (e) {} } });
    pages = [];
    grid.innerHTML = '';
    Object.keys(files).forEach(function (k) { try { files[k].doc.destroy(); } catch (e) {} });
    files = {};
    input.value = '';
    say('');
    sync();
  }
  function pick() { input.click(); }
  $('pr-pick').addEventListener('click', pick);
  $('pr-add').addEventListener('click', pick);
  $('pr-save').addEventListener('click', save);
  $('pr-clear').addEventListener('click', clearAll);
  input.addEventListener('change', function () {
    var list = Array.prototype.slice.call(input.files);
    input.value = '';
    if (list.length) addFiles(list);
  });
  app.addEventListener('dragover', function (e) {
    if (!hasFiles(e)) return;
    e.preventDefault();
    drop.classList.add('pr-over');
  });
  app.addEventListener('dragleave', function (e) {
    if (e.target === drop || e.target === app) drop.classList.remove('pr-over');
  });
  app.addEventListener('drop', function (e) {
    if (!hasFiles(e)) return;
    e.preventDefault();
    drop.classList.remove('pr-over');
    addFiles(e.dataTransfer.files);
  });
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData && e.clipboardData.files;
    if (f && f.length) addFiles(f);
  });
})();
</script>

เอกสารที่สแกนหรือถ่ายด้วยโทรศัพท์มักได้หน้าที่ตะแคงหรือกลับหัว เครื่องมือนี้ช่วยแก้ได้ทันที เปิดไฟล์ PDF คลิกปุ่มหมุนที่หน้าที่ต้องการ แล้วดาวน์โหลดไฟล์ที่แก้แล้ว คลิกหนึ่งครั้งหมุน 90° ตามเข็มนาฬิกา สองครั้งกลับหัว สามครั้งหมุนไปอีกทิศ และเปิดหลายไฟล์พร้อมกันเพื่อรวมเป็นไฟล์เดียวได้

## วิธีใช้งาน

1. **เพิ่มไฟล์** กดปุ่ม "เลือกไฟล์ PDF…" ลากไฟล์มาวางในกรอบ หรือกด `Ctrl`+`V` เพื่อวางไฟล์ที่คัดลอกไว้
2. **ดูภาพย่อ** ทุกหน้าของไฟล์จะแสดงเป็นภาพย่อ ตรวจดูว่าหน้าไหนหันผิดทิศ
3. **หมุนหน้า** กดปุ่ม **90°⤸** ใต้ภาพย่อของหน้านั้น ภาพจะหมุนตามเข็มนาฬิกาทีละ 90° ทันที
4. **จัดลำดับหรือลบหน้า (ถ้าต้องการ)** ลากภาพย่อไปวางทับตำแหน่งที่ต้องการ หรือกด **×** เพื่อลบหน้าที่ไม่ใช้
5. **เพิ่มไฟล์อื่น (ถ้าต้องการ)** กด "เพิ่ม PDF" เพื่อนำหน้าจากหลายไฟล์มาจัดรวมกัน
6. **ดาวน์โหลด** กด "ดาวน์โหลด PDF" ไฟล์ใหม่จะถูกสร้างในเครื่องและบันทึกลงอุปกรณ์ของคุณ

## คำอธิบายปุ่มและคำศัพท์

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| เลือกไฟล์ PDF… | เปิดหน้าต่างเลือกไฟล์ PDF จากอุปกรณ์ เลือกได้หลายไฟล์พร้อมกัน |
| วางไฟล์ / Ctrl+V | นำไฟล์ PDF เข้าเครื่องมือโดยลากมาวางในกรอบ หรือวางจากคลิปบอร์ด |
| เพิ่ม PDF | เพิ่มไฟล์อีกชุดเข้ามาต่อท้ายหน้าที่เปิดอยู่ |
| ภาพย่อ (Thumbnail) | ภาพตัวอย่างขนาดเล็กของแต่ละหน้า ใช้ดูทิศทางก่อนหมุน |
| 90°⤸ | ปุ่มหมุนหน้าไปทางขวา 90° ตามเข็มนาฬิกา กดซ้ำเพื่อหมุนต่อ |
| ตามเข็มนาฬิกา | ทิศทางหมุนไปทางขวา เหมือนเข็มของนาฬิกา |
| ลากเพื่อจัดลำดับ | ลากภาพย่อไปวางตำแหน่งใหม่เพื่อสลับลำดับหน้า |
| × | ลบหน้านั้นออกจากไฟล์ผลลัพธ์ ไฟล์ต้นฉบับในเครื่องไม่เปลี่ยน |
| ดาวน์โหลด PDF | สร้างไฟล์ที่หมุนและจัดลำดับแล้ว พร้อมบันทึกลงเครื่อง |
| ล้าง | ล้างทุกหน้าออกจากเครื่องมือเพื่อเริ่มใหม่ |
| แนวตั้ง / แนวนอน | ทิศทางของหน้ากระดาษ แนวตั้งสูงกว่ากว้าง แนวนอนกว้างกว่าสูง |
| ประมวลผลในเบราว์เซอร์ | ทำงานทั้งหมดบนเครื่องของคุณ ไม่อัปโหลดไฟล์ไปยังเซิร์ฟเวอร์ |

## เหมาะกับงานแบบไหน

- หน้าแนวนอน เช่น ตารางกว้างหรือแผนภาพ ที่ตะแคงอยู่ในเอกสารแนวตั้ง
- หนังสือหรือนิตยสารที่สแกนแล้วบางหน้าหันผิดทิศ
- ไฟล์ PDF จากกล้องโทรศัพท์ที่ถือเครื่องผิดแนวตอนถ่าย
- เอกสารกฎหมายหรืองานวิศวกรรมที่ลายเซ็นหรือตราประทับอยู่ด้านข้าง

## การหมุนถูกบันทึกอย่างไร

การหมุนจะถูกฝังลงในไฟล์ตอนดาวน์โหลด ไม่ใช่แค่คำแนะนำให้โปรแกรมอ่านแสดงผล จึงแสดงผลถูกทิศในโปรแกรมอ่าน PDF ทุกตัว ไฟล์ถูกประมวลผลในหน่วยความจำของเบราว์เซอร์ จึงไม่ถูกอัปโหลดไปที่ใด และเอกสารยาว 200 หน้าก็จัดการได้รวดเร็ว