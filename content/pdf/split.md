---
title: แยกไฟล์ PDF ออนไลน์ ฟรี
h1: แยกไฟล์ PDF
description: แยกไฟล์ PDF ออนไลน์ฟรี เลือกหน้าที่ต้องการหรือพิมพ์ช่วงหน้า แล้วดาวน์โหลดเป็น PDF ใหม่ได้ทันที ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลด ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-06T09:00:00+07:00'
weight: 79
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- แยกไฟล์ PDF
- แยกไฟล์ PDF ออนไลน์
- PDF และไฟล์
---

<style>
#pdfsplit{max-width:960px;margin:0 auto}
#pdfsplit [hidden]{display:none!important}
#pdfsplit .ps-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:28px 16px;text-align:center;cursor:pointer;transition:background .15s,border-color .15s}
#pdfsplit .ps-drop:hover,#pdfsplit .ps-drop.ps-over,#pdfsplit .ps-drop:focus-visible{border-color:#2563eb;background:rgba(37,99,235,.08);outline:none}
#pdfsplit .ps-drop-title{font-size:1.1em;font-weight:600;margin:0 0 6px}
#pdfsplit .ps-drop-sub{margin:0;opacity:.75;font-size:.9em}
#pdfsplit .ps-privacy{font-size:.85em;opacity:.8;margin:10px 0}
#pdfsplit .ps-info{font-weight:600;margin:14px 0 6px;word-break:break-all}
#pdfsplit .ps-bar{display:flex;flex-wrap:wrap;gap:12px 18px;align-items:center;margin:10px 0 14px}
#pdfsplit .ps-bar label{display:inline-flex;align-items:center;gap:6px}
#pdfsplit .ps-range{padding:6px 8px;border:1px solid rgba(128,128,128,.55);border-radius:6px;background:transparent;color:inherit;width:190px;max-width:100%}
#pdfsplit .ps-count{font-size:.9em;opacity:.8}
#pdfsplit .ps-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(130px,1fr));gap:12px}
#pdfsplit .ps-card{position:relative;border:2px solid rgba(128,128,128,.35);border-radius:10px;padding:6px;cursor:pointer;user-select:none;-webkit-user-select:none}
#pdfsplit .ps-card:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
#pdfsplit .ps-card.ps-sel{border-color:#2563eb;background:rgba(37,99,235,.1)}
#pdfsplit .ps-check{display:none;position:absolute;top:8px;left:8px;width:22px;height:22px;border-radius:50%;background:#2563eb;color:#fff;text-align:center;line-height:22px;font-size:13px;z-index:2}
#pdfsplit .ps-card.ps-sel .ps-check{display:block}
#pdfsplit .ps-thumb{height:150px;display:flex;align-items:center;justify-content:center;overflow:hidden;background:rgba(128,128,128,.12);border-radius:6px}
#pdfsplit .ps-thumb canvas{display:block;background:#fff;box-shadow:0 1px 4px rgba(0,0,0,.3);transition:transform .2s}
#pdfsplit .ps-row{display:flex;justify-content:space-between;align-items:center;margin-top:6px;font-size:13px}
#pdfsplit .ps-mini{border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;border-radius:6px;cursor:pointer;padding:2px 6px;font-size:12px}
#pdfsplit .ps-mini:hover{border-color:#2563eb}
#pdfsplit .ps-actions{display:flex;flex-wrap:wrap;gap:10px;margin:18px 0 6px}
#pdfsplit .ps-btn{border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;padding:10px 20px;border-radius:8px;cursor:pointer;font-size:1em}
#pdfsplit .ps-btn.ps-primary{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
#pdfsplit .ps-btn:disabled{opacity:.45;cursor:not-allowed}
#pdfsplit .ps-msg{min-height:1.5em;margin:8px 0 0;font-size:.95em}
#pdfsplit .ps-msg.ps-err{color:#dc2626}
</style>
<div id="pdfsplit">
<div id="ps-drop" class="ps-drop" tabindex="0" role="button" aria-label="เลือกไฟล์ PDF">
<p class="ps-drop-title">📄 วางไฟล์ PDF ที่นี่ หรือคลิกเพื่อเลือกไฟล์</p>
<p class="ps-drop-sub">ลากไฟล์มาวาง กด Ctrl+V หรือคลิกเพื่อเรียกดูไฟล์</p>
<input type="file" id="ps-file" accept="application/pdf,.pdf" hidden>
</div>
<p class="ps-privacy">🛡️ การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกอัปโหลดออกจากอุปกรณ์</p>
<div id="ps-work" hidden>
<div id="ps-info" class="ps-info"></div>
<div class="ps-bar">
<label><input type="checkbox" id="ps-all"> เลือกทุกหน้า</label>
<label>ช่วงหน้า <input type="text" id="ps-range" class="ps-range" placeholder="เช่น 1-3, 5, 7-9" autocomplete="off" inputmode="text"></label>
<span id="ps-count" class="ps-count"></span>
</div>
<div id="ps-grid" class="ps-grid"></div>
<div class="ps-actions">
<button type="button" id="ps-go" class="ps-btn ps-primary" disabled>แยกและดาวน์โหลด</button>
<button type="button" id="ps-clear" class="ps-btn">ล้าง</button>
</div>
</div>
<p id="ps-msg" class="ps-msg" role="status" aria-live="polite"></p>
</div>
<script>
(function () {
  'use strict';
  var $ = function (id) { return document.getElementById(id); };
  var drop = $('ps-drop'), fileIn = $('ps-file'), work = $('ps-work'), info = $('ps-info'),
      grid = $('ps-grid'), allBox = $('ps-all'), rangeIn = $('ps-range'), countEl = $('ps-count'),
      goBtn = $('ps-go'), clearBtn = $('ps-clear'), msgEl = $('ps-msg');
  if (!drop || !fileIn || !grid || !work) { return; }
  var LIBS = {
    pdflib: [
      'https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js',
      'https://cdn.jsdelivr.net/npm/pdf-lib@1.17.1/dist/pdf-lib.min.js'
    ],
    pdfjs: [
      'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js',
      'https://cdn.jsdelivr.net/npm/pdfjs-dist@3.11.174/build/pdf.min.js'
    ],
    worker: [
      'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js',
      'https://cdn.jsdelivr.net/npm/pdfjs-dist@3.11.174/build/pdf.worker.min.js'
    ]
  };
  var pages = [], srcBytes = null, fileName = 'document', token = 0, libsPromise = null;
  function msg(text, isErr) {
    msgEl.textContent = text || '';
    msgEl.className = 'ps-msg' + (isErr ? ' ps-err' : '');
  }
  function loadScript(urls, isReady) {
    return new Promise(function (resolve, reject) {
      var i = 0;
      (function next() {
        if (isReady()) { resolve(); return; }
        if (i >= urls.length) { reject(new Error('lib-load')); return; }
        var s = document.createElement('script');
        s.src = urls[i++];
        s.async = true;
        s.onload = function () { if (isReady()) { resolve(); } else { next(); } };
        s.onerror = function () { next(); };
        document.head.appendChild(s);
      })();
    });
  }
  function setupWorker() {
    var i = 0;
    function tryNext() {
      if (i >= LIBS.worker.length) {
        window.pdfjsLib.GlobalWorkerOptions.workerSrc = LIBS.worker[0];
        return Promise.resolve();
      }
      var u = LIBS.worker[i++];
      return fetch(u).then(function (r) {
        if (!r.ok) { throw new Error('worker'); }
        return r.text();
      }).then(function (t) {
        if (t.trim().charAt(0) === '<') { throw new Error('worker'); }
        var blob = new Blob([t], { type: 'text/javascript' });
        window.pdfjsLib.GlobalWorkerOptions.workerSrc = URL.createObjectURL(blob);
      }).catch(tryNext);
    }
    return tryNext();
  }
  function ensureLibs() {
    if (!libsPromise) {
      libsPromise = loadScript(LIBS.pdflib, function () { return !!window.PDFLib; })
        .then(function () { return loadScript(LIBS.pdfjs, function () { return !!window.pdfjsLib; }); })
        .then(setupWorker)
        .catch(function (e) { libsPromise = null; throw e; });
    }
    return libsPromise;
  }
  function errText(e) {
    if (e && e.name === 'PasswordException') { return 'ไฟล์ PDF นี้ถูกป้องกันด้วยรหัสผ่าน จึงไม่สามารถประมวลผลได้'; }
    if (e && e.message === 'lib-load') { return 'โหลดส่วนประกอบที่จำเป็นไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ตแล้วลองใหม่'; }
    return 'ไม่สามารถอ่านไฟล์ PDF นี้ได้ ไฟล์อาจเสียหายหรือไม่ใช่ไฟล์ PDF ที่ถูกต้อง';
  }
  function resetState() {
    pages = [];
    srcBytes = null;
    grid.innerHTML = '';
    work.hidden = true;
    rangeIn.value = '';
    allBox.checked = false;
    allBox.indeterminate = false;
    goBtn.disabled = true;
  }
  function toRange(nums) {
    var out = [], i = 0;
    while (i < nums.length) {
      var j = i;
      while (j + 1 < nums.length && nums[j + 1] === nums[j] + 1) { j++; }
      out.push(j > i ? nums[i] + '-' + nums[j] : String(nums[i]));
      i = j + 1;
    }
    return out.join(', ');
  }
  function parseRange(text, n) {
    var t = text.replace(/[\u2013\u2014~]/g, '-').replace(/\s*-\s*/g, '-').trim();
    var set = {};
    if (!t) { return { ok: true, set: set }; }
    var parts = t.split(/[,\s]+/);
    for (var i = 0; i < parts.length; i++) {
      var s = parts[i];
      if (!s) { continue; }
      var m = /^(\d+)(?:-(\d+))?$/.exec(s);
      if (!m) { return { ok: false, msg: 'รูปแบบช่วงหน้าไม่ถูกต้อง "' + s + '" (ตัวอย่างที่ถูกต้อง 1-3, 5, 7-9)' }; }
      var a = parseInt(m[1], 10), b = m[2] ? parseInt(m[2], 10) : a;
      if (a > b) { var tmp = a; a = b; b = tmp; }
      if (a < 1 || b > n) { return { ok: false, msg: 'หน้า ' + (a < 1 ? a : b) + ' อยู่นอกช่วง (ไฟล์นี้มี ' + n + ' หน้า)' }; }
      for (var k = a; k <= b; k++) { set[k] = true; }
    }
    return { ok: true, set: set };
  }
  function refresh(fromRange) {
    var sel = [];
    pages.forEach(function (p, i) {
      p.num.textContent = String(i + 1);
      p.el.classList.toggle('ps-sel', p.sel);
      p.el.setAttribute('aria-checked', p.sel ? 'true' : 'false');
      if (p.sel) { sel.push(i + 1); }
    });
    var n = pages.length;
    allBox.checked = n > 0 && sel.length === n;
    allBox.indeterminate = sel.length > 0 && sel.length < n;
    countEl.textContent = 'เลือกแล้ว ' + sel.length + ' / ' + n + ' หน้า';
    info.textContent = fileName + '.pdf · ' + n + ' หน้า';
    goBtn.disabled = sel.length === 0;
    if (!fromRange) { rangeIn.value = toRange(sel); }
  }
  function applyRot(p) {
    if (!p.canvas) { return; }
    var k = 1;
    if (p.rot % 180 !== 0) { k = Math.min(1, 112 / p.h, 148 / p.w); }
    p.canvas.style.transform = 'rotate(' + p.rot + 'deg) scale(' + k + ')';
  }
  function makeCard(i) {
    var el = document.createElement('div');
    el.className = 'ps-card';
    el.tabIndex = 0;
    el.setAttribute('role', 'checkbox');
    el.setAttribute('aria-checked', 'false');
    el.innerHTML = '<span class="ps-check">\u2713</span>' +
      '<div class="ps-thumb"></div>' +
      '<div class="ps-row"><span class="ps-num"></span><span>' +
      '<button type="button" class="ps-mini ps-rot" title="หมุน 90°">\u2938 90°</button> ' +
      '<button type="button" class="ps-mini ps-del" title="ลบหน้านี้ออกจากรายการ">\u00d7</button>' +
      '</span></div>';
    var p = {
      src: i, rot: 0, sel: false, el: el, canvas: null, w: 0, h: 0,
      thumb: el.querySelector('.ps-thumb'), num: el.querySelector('.ps-num')
    };
    el.addEventListener('click', function (e) {
      if (e.target.closest && e.target.closest('.ps-mini')) { return; }
      p.sel = !p.sel;
      refresh();
    });
    el.addEventListener('keydown', function (e) {
      if ((e.key === ' ' || e.key === 'Enter') && e.target === el) {
        e.preventDefault();
        p.sel = !p.sel;
        refresh();
      }
    });
    el.querySelector('.ps-rot').addEventListener('click', function (e) {
      e.stopPropagation();
      p.rot = (p.rot + 90) % 360;
      applyRot(p);
    });
    el.querySelector('.ps-del').addEventListener('click', function (e) {
      e.stopPropagation();
      var k = pages.indexOf(p);
      if (k > -1) { pages.splice(k, 1); }
      el.parentNode && el.parentNode.removeChild(el);
      refresh();
      if (!pages.length) { msg('ไม่มีหน้าเหลืออยู่ กด "ล้าง" แล้วเลือกไฟล์ใหม่'); }
    });
    grid.appendChild(el);
    return p;
  }
  function renderThumb(pdf, p, my) {
    return pdf.getPage(p.src + 1).then(function (page) {
      var vp = page.getViewport({ scale: 1 });
      var s = Math.min(112 / vp.width, 140 / vp.height);
      var dpr = Math.min(window.devicePixelRatio || 1, 2);
      var vp2 = page.getViewport({ scale: s * dpr });
      var c = document.createElement('canvas');
      c.width = Math.ceil(vp2.width);
      c.height = Math.ceil(vp2.height);
      p.w = vp.width * s;
      p.h = vp.height * s;
      c.style.width = p.w + 'px';
      c.style.height = p.h + 'px';
      return page.render({ canvasContext: c.getContext('2d'), viewport: vp2 }).promise.then(function () {
        if (my !== token) { return; }
        p.canvas = c;
        p.thumb.appendChild(c);
        applyRot(p);
        page.cleanup();
      });
    }).catch(function () {
      if (my === token) { p.thumb.textContent = '\u2014'; }
    });
  }
  function buildCards(pdf, my) {
    var n = pdf.numPages;
    work.hidden = false;
    for (var i = 0; i < n; i++) { pages.push(makeCard(i)); }
    refresh();
    msg('');
    var chain = Promise.resolve();
    pages.slice().forEach(function (p) {
      chain = chain.then(function () {
        if (my !== token) { return; }
        return renderThumb(pdf, p, my);
      });
    });
    chain.then(function () {
      try { pdf.destroy(); } catch (e) { /* ignore */ }
    });
  }
  function handleFile(file) {
    if (!file) { return; }
    if (!(file.type === 'application/pdf' || /\.pdf$/i.test(file.name))) {
      msg('กรุณาเลือกไฟล์ PDF เท่านั้น', true);
      return;
    }
    var my = ++token;
    resetState();
    msg('กำลังโหลดไฟล์…');
    var buf = null;
    file.arrayBuffer().then(function (b) {
      buf = b;
      return ensureLibs();
    }).then(function () {
      if (my !== token) { return null; }
      srcBytes = new Uint8Array(buf);
      fileName = file.name.replace(/\.pdf$/i, '') || 'document';
      return window.pdfjsLib.getDocument({ data: new Uint8Array(buf.slice(0)) }).promise;
    }).then(function (pdf) {
      if (!pdf || my !== token) { return; }
      buildCards(pdf, my);
    }).catch(function (e) {
      if (my !== token) { return; }
      resetState();
      msg(errText(e), true);
    });
  }
  function download(data, name) {
    var blob = new Blob([data], { type: 'application/pdf' });
    var url = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = url;
    a.download = name;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 4000);
  }
  function splitAndDownload() {
    var chosen = pages.filter(function (p) { return p.sel; });
    if (!chosen.length || !srcBytes) { return; }
    goBtn.disabled = true;
    msg('กำลังแยกไฟล์…');
    var PDFLib = window.PDFLib;
    PDFLib.PDFDocument.load(srcBytes, { ignoreEncryption: true }).then(function (src) {
      return PDFLib.PDFDocument.create().then(function (out) {
        return out.copyPages(src, chosen.map(function (p) { return p.src; })).then(function (copied) {
          copied.forEach(function (pg, i) {
            var base = pg.getRotation().angle || 0;
            var r = (((base + chosen[i].rot) % 360) + 360) % 360;
            pg.setRotation(PDFLib.degrees(r));
            out.addPage(pg);
          });
          return out.save();
        });
      });
    }).then(function (data) {
      download(data, fileName + '-split.pdf');
      msg('เสร็จแล้ว ดาวน์โหลด ' + fileName + '-split.pdf (' + chosen.length + ' หน้า)');
    }).catch(function () {
      msg('แยกไฟล์ไม่สำเร็จ กรุณาลองใหม่อีกครั้ง', true);
    }).then(function () {
      goBtn.disabled = pages.filter(function (p) { return p.sel; }).length === 0;
    });
  }
  drop.addEventListener('click', function () { fileIn.click(); });
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); fileIn.click(); }
  });
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add('ps-over'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove('ps-over'); });
  });
  drop.addEventListener('drop', function (e) {
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    handleFile(f);
  });
  fileIn.addEventListener('change', function () {
    var f = fileIn.files && fileIn.files[0];
    handleFile(f);
    fileIn.value = '';
  });
  document.addEventListener('paste', function (e) {
    var files = e.clipboardData && e.clipboardData.files;
    if (!files || !files.length) { return; }
    for (var i = 0; i < files.length; i++) {
      if (files[i].type === 'application/pdf' || /\.pdf$/i.test(files[i].name)) {
        e.preventDefault();
        handleFile(files[i]);
        return;
      }
    }
  });
  allBox.addEventListener('change', function () {
    var v = allBox.checked;
    pages.forEach(function (p) { p.sel = v; });
    refresh();
  });
  rangeIn.addEventListener('input', function () {
    var r = parseRange(rangeIn.value, pages.length);
    if (!r.ok) { return; }
    msg('');
    pages.forEach(function (p, i) { p.sel = !!r.set[i + 1]; });
    refresh(true);
  });
  rangeIn.addEventListener('change', function () {
    var r = parseRange(rangeIn.value, pages.length);
    if (!r.ok) { msg(r.msg, true); } else { msg(''); refresh(); }
  });
  goBtn.addEventListener('click', splitAndDownload);
  clearBtn.addEventListener('click', function () {
    token++;
    resetState();
    msg('');
  });
})();
</script>

เครื่องมือแยกไฟล์ PDF ช่วยดึงเฉพาะหน้าที่ต้องการออกมาเป็นไฟล์ PDF ใหม่ ใช้งานได้ตรงในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ ไม่ต้องมีบัญชี และไม่จำกัดขนาดไฟล์ เลือกหน้าโดยคลิกที่ภาพขนาดย่อหรือพิมพ์ช่วงหน้า แล้วดาวน์โหลดผลลัพธ์ได้ทันที เหมาะสำหรับการแยกบทเรียน ตัดหน้าที่ไม่ต้องการออก หรือส่งเฉพาะหน้าสำคัญให้ผู้อื่น

## วิธีใช้งานเครื่องมือแยกไฟล์ PDF

1. **เลือกไฟล์ PDF** ลากไฟล์มาวางในกรอบด้านบน คลิกเพื่อเรียกดูไฟล์ในเครื่อง หรือคัดลอกไฟล์แล้วกด `Ctrl`+`V`
2. **รอให้แสดงภาพขนาดย่อ** ทุกหน้าของไฟล์จะแสดงเป็นภาพเล็ก พร้อมหมายเลขหน้ากำกับ
3. **เลือกหน้าที่ต้องการ** คลิกที่ภาพขนาดย่อเพื่อเลือกหรือยกเลิก ใช้ช่อง "เลือกทุกหน้า" เพื่อเลือกทั้งหมดในครั้งเดียว หรือพิมพ์ช่วงหน้าในช่อง เช่น `1-3, 5, 7-9`
4. **ปรับแต่งเพิ่มเติม (ไม่บังคับ)** กดปุ่ม ⤸ 90° เพื่อหมุนหน้า หรือกด × เพื่อลบหน้าที่ไม่ต้องการออกจากรายการ
5. **กด "แยกและดาวน์โหลด"** ระบบจะสร้างไฟล์ PDF ใหม่จากหน้าที่เลือกและบันทึกลงเครื่องให้ทันที
6. **กด "ล้าง"** เมื่อใช้งานเสร็จ เพื่อล้างไฟล์ออกจากหน้าจอและเริ่มต้นกับไฟล์ใหม่

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **PDF** รูปแบบไฟล์เอกสารที่แสดงผลเหมือนกันทุกอุปกรณ์ นิยมใช้กับเอกสารทางการ รายงาน และสัญญา
- **แยกไฟล์ PDF** การดึงเฉพาะบางหน้าออกจากไฟล์ต้นฉบับ แล้วบันทึกเป็นไฟล์ PDF ใหม่ โดยไฟล์ต้นฉบับไม่เปลี่ยนแปลง
- **ภาพขนาดย่อ (Thumbnail)** ภาพตัวอย่างขนาดเล็กของแต่ละหน้า ช่วยให้มองเห็นเนื้อหาและคลิกเลือกหน้าได้ง่าย
- **ช่วงหน้า** วิธีระบุหน้าด้วยตัวเลข ใช้ขีดกลางสำหรับหน้าต่อเนื่อง และเครื่องหมายจุลภาคคั่นระหว่างกลุ่ม เช่น `1-3, 5, 7-9` หมายถึงหน้า 1 ถึง 3, หน้า 5 และหน้า 7 ถึง 9
- **เลือกทุกหน้า** ช่องทำเครื่องหมายสำหรับเลือกหรือยกเลิกการเลือกทุกหน้าพร้อมกัน
- **⤸ 90° (หมุนหน้า)** หมุนหน้าที่ต้องการตามเข็มนาฬิกาครั้งละ 90 องศา ใช้แก้หน้าที่สแกนมาผิดทิศทาง และการหมุนจะมีผลกับไฟล์ที่ดาวน์โหลดด้วย
- **× (ลบหน้า)** นำหน้านั้นออกจากรายการในเครื่องมือ เพื่อไม่ให้ถูกนำไปรวมในไฟล์ใหม่ ไฟล์ต้นฉบับในเครื่องของคุณไม่ถูกแก้ไข
- **แยกและดาวน์โหลด** ปุ่มสร้างไฟล์ PDF ใหม่จากหน้าที่เลือกและบันทึกลงอุปกรณ์
- **ล้าง** ปุ่มนำไฟล์และการเลือกทั้งหมดออก เพื่อเริ่มต้นใหม่
- **ประมวลผลในเครื่อง (Local Processing)** การทำงานทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งไปยังเซิร์ฟเวอร์ จึงปลอดภัยสำหรับเอกสารส่วนตัว
- **ไฟล์ที่มีรหัสผ่าน** ไฟล์ PDF ที่ถูกล็อกด้วยรหัสผ่านไม่สามารถเปิดอ่านได้ ต้องปลดล็อกก่อนจึงจะแยกหน้าได้