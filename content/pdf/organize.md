---
title: จัดระเบียบไฟล์ PDF ออนไลน์ ฟรี
h1: จัดระเบียบไฟล์ PDF
description: จัดระเบียบไฟล์ PDF ออนไลน์ ลากสลับลำดับหน้า หมุน ลบหน้า และรวมหลายไฟล์ในที่เดียว ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกอัปโหลด ใช้งานฟรี ไม่ต้องติดตั้งโปรแกรม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-07T09:00:00+07:00'
weight: 83
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- จัดระเบียบไฟล์ PDF
- จัดระเบียบไฟล์ PDF ออนไลน์
- PDF และไฟล์
---

<style>
.pdo{--ac:#2563eb;--bd:rgba(128,128,128,.35);--bg:rgba(128,128,128,.08);margin:1.5rem 0;font-family:inherit}
.pdo *{box-sizing:border-box}
.pdo-drop{border:2px dashed var(--bd);border-radius:12px;padding:2rem 1rem;text-align:center;cursor:pointer;background:var(--bg)}
.pdo-drop:hover,.pdo-drop:focus,.pdo-drop.over{border-color:var(--ac);background:rgba(37,99,235,.1);outline:none}
.pdo-drop strong{display:block;font-size:1.1rem;margin-bottom:.25rem}
.pdo-drop small{opacity:.75}
.pdo-bar{display:none;flex-wrap:wrap;gap:.5rem;align-items:center;margin:1rem 0}
.pdo-bar.on{display:flex}
.pdo-btn{border:1px solid var(--bd);background:transparent;color:inherit;border-radius:8px;padding:.55rem 1rem;font:inherit;cursor:pointer}
.pdo-btn:hover{border-color:var(--ac)}
.pdo-btn.pri{background:var(--ac);border-color:var(--ac);color:#fff}
.pdo-btn:disabled{opacity:.5;cursor:not-allowed}
.pdo-info{margin-left:auto;font-size:.9rem;opacity:.8}
.pdo-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(140px,1fr));gap:.75rem}
.pdo-card{border:1px solid var(--bd);border-radius:10px;padding:.5rem;background:var(--bg);cursor:grab}
.pdo-card.drag{opacity:.4}
.pdo-card.target{outline:2px solid var(--ac)}
.pdo-th{position:relative;aspect-ratio:1/1;background:rgba(128,128,128,.12);border-radius:6px;overflow:hidden}
.pdo-th img{position:absolute;left:50%;top:50%;background:#fff;box-shadow:0 1px 4px rgba(0,0,0,.3);transition:transform .2s;pointer-events:none}
.pdo-meta{display:flex;justify-content:space-between;gap:.4rem;font-size:.78rem;margin:.35rem 0 .25rem}
.pdo-meta span:last-child{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;opacity:.7}
.pdo-act{display:flex;gap:.25rem}
.pdo-act button{flex:1;border:1px solid var(--bd);background:transparent;color:inherit;border-radius:6px;padding:.3rem 0;cursor:pointer;font:inherit;font-size:.85rem}
.pdo-act button:hover{border-color:var(--ac)}
.pdo-act .del:hover{border-color:#dc2626;color:#dc2626}
.pdo-msg{margin:.75rem 0;font-size:.92rem}
.pdo-msg.err{color:#dc2626}
</style>
<div class="pdo" id="pdo">
<div class="pdo-drop" id="pdo-drop" role="button" tabindex="0">
<strong>วางไฟล์ PDF ที่นี่ หรือคลิกเพื่อเลือกไฟล์</strong>
<small>กด Ctrl+V เพื่อวางไฟล์ได้เช่นกัน ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกอัปโหลด</small>
</div>
<input type="file" id="pdo-file" accept="application/pdf,.pdf" multiple hidden>
<div class="pdo-msg" id="pdo-msg" aria-live="polite"></div>
<div class="pdo-bar" id="pdo-bar">
<button type="button" class="pdo-btn" id="pdo-add">+ เพิ่ม PDF</button>
<button type="button" class="pdo-btn pri" id="pdo-dl" disabled>ดาวน์โหลด PDF</button>
<button type="button" class="pdo-btn" id="pdo-clear">ล้าง</button>
<span class="pdo-info" id="pdo-info"></span>
</div>
<div class="pdo-grid" id="pdo-grid"></div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js"></script>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('pdo-drop'), inp = $('pdo-file'), msg = $('pdo-msg'), bar = $('pdo-bar');
  var grid = $('pdo-grid'), info = $('pdo-info'), dl = $('pdo-dl');
  var docs = [], pages = [], uid = 0, dragFrom = -1, busy = false;
  var PJ = window.pdfjsLib, PL = window.PDFLib;
  function say(t, err) { msg.textContent = t || ''; msg.className = 'pdo-msg' + (err ? ' err' : ''); }
  if (!PJ || !PL) {
    say('โหลดไลบรารี PDF ไม่สำเร็จ กรุณารีเฟรชหน้านี้หรือตรวจสอบอินเทอร์เน็ต', true);
    return;
  }
  // Load the pdf.js worker through a blob URL to avoid cross-origin worker errors
  var workerUrl = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js';
  var workerReady = fetch(workerUrl)
    .then(function (r) { if (!r.ok) throw new Error('worker'); return r.text(); })
    .then(function (t) {
      PJ.GlobalWorkerOptions.workerSrc = URL.createObjectURL(new Blob([t], { type: 'text/javascript' }));
    })
    .catch(function () { PJ.GlobalWorkerOptions.workerSrc = workerUrl; });
  function btn(text, title, cls, fn) {
    var b = document.createElement('button');
    b.type = 'button'; b.textContent = text; b.title = title;
    b.setAttribute('aria-label', title);
    if (cls) b.className = cls;
    b.onclick = fn;
    return b;
  }
  function move(a, b) {
    if (b < 0 || b >= pages.length || a === b) return;
    pages.splice(b, 0, pages.splice(a, 1)[0]);
    draw();
  }
  function draw() {
    grid.textContent = '';
    bar.className = 'pdo-bar' + (pages.length ? ' on' : '');
    info.textContent = pages.length ? pages.length + ' หน้า จาก ' + docs.length + ' ไฟล์' : '';
    pages.forEach(function (p, i) {
      var card = document.createElement('div');
      card.className = 'pdo-card';
      card.draggable = true;
      var th = document.createElement('div');
      th.className = 'pdo-th';
      var im = document.createElement('img');
      im.src = p.src; im.alt = 'หน้า ' + (i + 1);
      var upright = p.rot % 180 === 0;
      var ar = upright ? p.ar : 1 / p.ar;
      var w = ar >= 1 ? 88 : 88 * ar, h = ar >= 1 ? 88 / ar : 88;
      im.style.width = (upright ? w : h) + '%';
      im.style.height = (upright ? h : w) + '%';
      im.style.transform = 'translate(-50%,-50%) rotate(' + p.rot + 'deg)';
      th.appendChild(im);
      var meta = document.createElement('div');
      meta.className = 'pdo-meta';
      var s1 = document.createElement('span'); s1.textContent = '#' + (i + 1);
      var s2 = document.createElement('span'); s2.textContent = docs[p.doc].name;
      s2.title = docs[p.doc].name;
      meta.appendChild(s1); meta.appendChild(s2);
      var act = document.createElement('div');
      act.className = 'pdo-act';
      act.appendChild(btn('◀', 'ย้ายไปก่อนหน้า', '', function () { move(i, i - 1); }));
      act.appendChild(btn('⤸', 'หมุน 90°', '', function () { p.rot = (p.rot + 90) % 360; draw(); }));
      act.appendChild(btn('×', 'ลบหน้านี้', 'del', function () { pages.splice(i, 1); draw(); dl.disabled = !pages.length; }));
      act.appendChild(btn('▶', 'ย้ายไปถัดไป', '', function () { move(i, i + 1); }));
      card.ondragstart = function (e) {
        dragFrom = i; card.classList.add('drag');
        e.dataTransfer.effectAllowed = 'move';
        try { e.dataTransfer.setData('text/plain', String(i)); } catch (x) {}
      };
      card.ondragend = function () { dragFrom = -1; draw(); };
      card.ondragover = function (e) { if (dragFrom < 0) return; e.preventDefault(); card.classList.add('target'); };
      card.ondragleave = function () { card.classList.remove('target'); };
      card.ondrop = function (e) {
        e.preventDefault(); e.stopPropagation();
        var f = dragFrom; dragFrom = -1;
        if (f >= 0) move(f, i);
      };
      card.appendChild(th); card.appendChild(meta); card.appendChild(act);
      grid.appendChild(card);
    });
  }
  async function addFiles(list) {
    var fs = Array.prototype.filter.call(list, function (f) {
      return f.type === 'application/pdf' || /\.pdf$/i.test(f.name);
    });
    if (!fs.length) { say('กรุณาเลือกไฟล์ PDF เท่านั้น', true); return; }
    if (busy) { say('กำลังประมวลผลอยู่ กรุณารอสักครู่', true); return; }
    busy = true; dl.disabled = true; say('');
    await workerReady;
    var failed = false;
    for (var i = 0; i < fs.length; i++) {
      var f = fs[i];
      try {
        say('กำลังอ่านไฟล์ ' + f.name + ' ...');
        var buf = await f.arrayBuffer();
        var pdf = await PJ.getDocument({ data: new Uint8Array(buf.slice(0)) }).promise;
        var di = docs.push({ name: f.name, buf: buf }) - 1;
        for (var n = 1; n <= pdf.numPages; n++) {
          var pg = await pdf.getPage(n);
          var v1 = pg.getViewport({ scale: 1 });
          var vp = pg.getViewport({ scale: 200 / Math.max(v1.width, v1.height) });
          var c = document.createElement('canvas');
          c.width = Math.ceil(vp.width); c.height = Math.ceil(vp.height);
          await pg.render({ canvasContext: c.getContext('2d'), viewport: vp }).promise;
          pages.push({ id: ++uid, doc: di, n: n, rot: 0, ar: v1.width / v1.height, src: c.toDataURL('image/jpeg', 0.7) });
          pg.cleanup();
          if (n % 5 === 0 || n === pdf.numPages) draw();
        }
        pdf.destroy();
      } catch (e) {
        failed = true;
        say('อ่านไฟล์ ' + f.name + ' ไม่ได้ ไฟล์อาจเสียหรือมีรหัสผ่านป้องกันอยู่', true);
      }
    }
    busy = false; dl.disabled = !pages.length;
    if (!failed) say('');
    draw();
  }
  dl.onclick = async function () {
    if (!pages.length || busy) return;
    busy = true; dl.disabled = true; say('กำลังสร้างไฟล์ PDF ...');
    try {
      var out = await PL.PDFDocument.create(), src = {};
      for (var i = 0; i < pages.length; i++) {
        var p = pages[i];
        if (!src[p.doc]) src[p.doc] = await PL.PDFDocument.load(docs[p.doc].buf, { ignoreEncryption: true });
        var cp = (await out.copyPages(src[p.doc], [p.n - 1]))[0];
        if (p.rot) cp.setRotation(PL.degrees((cp.getRotation().angle + p.rot) % 360));
        out.addPage(cp);
      }
      var bytes = await out.save();
      var url = URL.createObjectURL(new Blob([bytes], { type: 'application/pdf' }));
      var a = document.createElement('a');
      a.href = url;
      a.download = (docs.length === 1 ? docs[0].name.replace(/\.pdf$/i, '') + '-organized' : 'organized') + '.pdf';
      document.body.appendChild(a); a.click(); a.remove();
      setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
      say('ดาวน์โหลดไฟล์เรียบร้อยแล้ว');
    } catch (e) {
      say('สร้างไฟล์ไม่สำเร็จ: ' + ((e && e.message) || e), true);
    }
    busy = false; dl.disabled = !pages.length;
  };
  $('pdo-clear').onclick = function () {
    if (busy) return;
    docs = []; pages = []; inp.value = ''; say(''); dl.disabled = true; draw();
  };
  $('pdo-add').onclick = function () { inp.click(); };
  drop.onclick = function () { inp.click(); };
  drop.onkeydown = function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); inp.click(); } };
  inp.onchange = function () { addFiles(inp.files); inp.value = ''; };
  function hasFiles(e) {
    return e.dataTransfer && Array.prototype.indexOf.call(e.dataTransfer.types || [], 'Files') > -1;
  }
  drop.addEventListener('dragover', function (e) { if (hasFiles(e)) { e.preventDefault(); drop.classList.add('over'); } });
  drop.addEventListener('dragleave', function () { drop.classList.remove('over'); });
  document.addEventListener('dragover', function (e) { if (hasFiles(e)) e.preventDefault(); });
  document.addEventListener('drop', function (e) {
    if (!hasFiles(e)) return;
    e.preventDefault(); drop.classList.remove('over');
    addFiles(e.dataTransfer.files);
  });
  document.addEventListener('paste', function (e) {
    var f = e.clipboardData && e.clipboardData.files;
    if (f && f.length) addFiles(f);
  });
  draw();
})();
</script>

## วิธีใช้งานเครื่องมือจัดระเบียบไฟล์ PDF

1. **เลือกไฟล์** วางไฟล์ PDF ลงในกรอบด้านบน คลิกเพื่อเลือกไฟล์จากเครื่อง หรือกด `Ctrl`+`V` เพื่อวางไฟล์ที่คัดลอกไว้ เลือกได้หลายไฟล์พร้อมกัน
2. **ดูภาพขนาดย่อ** ทุกหน้าของไฟล์จะแสดงเป็นการ์ดเรียงต่อกัน พร้อมหมายเลขหน้าและชื่อไฟล์ต้นทาง
3. **จัดลำดับหน้า** ลากการ์ดไปวางในตำแหน่งที่ต้องการ หรือกดปุ่ม ◀ ▶ เพื่อขยับทีละหน้า (เหมาะกับมือถือและแท็บเล็ต)
4. **หมุนหน้า** กดปุ่ม ⤸ เพื่อหมุนหน้านั้นครั้งละ 90° กดซ้ำจนได้ทิศทางที่ต้องการ
5. **ลบหน้า** กดปุ่ม × เพื่อเอาหน้าที่ไม่ต้องการออก
6. **เพิ่มหรือรวมไฟล์** กด **+ เพิ่ม PDF** เพื่อนำไฟล์อื่นมาต่อท้าย แล้วลากหน้าไปสลับกับไฟล์เดิมได้
7. **ดาวน์โหลด** เมื่อพอใจแล้วกด **ดาวน์โหลด PDF** เพื่อบันทึกไฟล์ใหม่ตามลำดับที่จัดไว้ หากต้องการเริ่มใหม่ให้กด **ล้าง**

ไฟล์ต้นฉบับจะไม่ถูกแก้ไข เพราะเครื่องมือสร้างไฟล์ PDF ใหม่ให้ทุกครั้ง

## คำศัพท์ที่ควรรู้

- **PDF** รูปแบบไฟล์เอกสารที่แสดงผลเหมือนกันทุกอุปกรณ์ นิยมใช้กับสัญญา รายงาน ใบเสร็จ และเอกสารราชการ
- **ภาพขนาดย่อ (Thumbnail)** ภาพตัวอย่างขนาดเล็กของแต่ละหน้า ช่วยให้เห็นเนื้อหาก่อนจัดลำดับ
- **จัดลำดับหน้า (Reorder)** การสลับตำแหน่งของหน้าในเอกสาร เช่น ย้ายหน้าปกไปไว้ด้านหน้าสุด
- **หมุนหน้า (Rotate)** การปรับทิศทางของหน้าครั้งละ 90° ใช้แก้หน้าที่สแกนมาเอียงหรือกลับด้าน
- **ลบหน้า (Delete)** การเอาหน้าที่ไม่จำเป็นออกจากไฟล์ใหม่ โดยไม่กระทบไฟล์ต้นฉบับ
- **รวมไฟล์ (Merge)** การนำหลายไฟล์ PDF มาต่อกันเป็นไฟล์เดียว
- **ประมวลผลในเครื่อง (Client-side)** การทำงานทั้งหมดเกิดในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งไปยังเซิร์ฟเวอร์ จึงปลอดภัยต่อเอกสารที่เป็นความลับ
- **เบราว์เซอร์ (Browser)** โปรแกรมเปิดเว็บ เช่น Chrome, Edge, Safari หรือ Firefox
- **ไฟล์ที่มีรหัสผ่าน (Encrypted PDF)** ไฟล์ที่ล็อกด้วยรหัส ต้องปลดล็อกก่อนจึงจะจัดระเบียบได้