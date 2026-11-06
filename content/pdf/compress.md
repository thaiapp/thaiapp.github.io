---
title: บีบอัดไฟล์ PDF ออนไลน์ ฟรี
h1: บีบอัดไฟล์ PDF
description: 'บีบอัดไฟล์ PDF ออนไลน์ฟรี ลดขนาดได้ 4 ระดับ จัดลำดับ หมุน หรือลบหน้าได้ก่อนบีบอัด ประมวลผลในเบราว์เซอร์ ไม่ต้องอัปโหลด ใช้งานได้ทั้งมือถือและคอมพิวเตอร์'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-06T09:00:00+07:00'
weight: 80
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- บีบอัดไฟล์ PDF
- บีบอัดไฟล์ PDF ออนไลน์
- PDF และไฟล์
---

<style>
.pc-app{max-width:720px;margin:0 auto 1.5rem;font-size:1rem;line-height:1.5}
.pc-app [hidden]{display:none!important}
.pc-drop{border:2px dashed rgba(128,128,128,.55);border-radius:12px;padding:2rem 1rem;text-align:center;cursor:pointer;display:flex;flex-direction:column;gap:.35rem;outline:none}
.pc-drop:hover,.pc-drop:focus,.pc-drop.pc-over{border-color:#2563eb;background:rgba(37,99,235,.07)}
.pc-drop span{font-size:.9rem;opacity:.75}
.pc-box{border:1px solid rgba(128,128,128,.4);border-radius:12px;padding:1rem;margin-top:.75rem}
.pc-row{display:flex;align-items:center;justify-content:space-between;gap:.75rem;flex-wrap:wrap}
.pc-name{font-weight:600;word-break:break-all}
.pc-meta{font-size:.9rem;opacity:.75}
.pc-label{font-weight:600;margin:1rem 0 .35rem}
.pc-range{width:100%;margin:0}
.pc-ticks{display:flex;justify-content:space-between;font-size:.85rem;opacity:.7;gap:.25rem}
.pc-hint{font-size:.9rem;margin:.5rem 0 0;opacity:.85}
.pc-pages{display:grid;grid-template-columns:repeat(auto-fill,minmax(104px,1fr));gap:.6rem;max-height:360px;overflow:auto;padding:.25rem}
.pc-pg{border:1px solid rgba(128,128,128,.4);border-radius:10px;padding:.4rem;text-align:center;cursor:grab;position:relative}
.pc-th{height:100px;display:flex;align-items:center;justify-content:center;overflow:hidden;background:rgba(128,128,128,.12);border-radius:6px}
.pc-th img{max-width:100%;max-height:100%;display:block;transition:transform .15s;pointer-events:none}
.pc-num{display:block;font-size:.8rem;opacity:.8;margin:.25rem 0}
.pc-bar{display:flex;justify-content:center;gap:.2rem}
.pc-ib{font:inherit;font-size:.85rem;line-height:1;min-width:1.7rem;padding:.3rem .25rem;border-radius:6px;border:1px solid rgba(128,128,128,.45);background:transparent;color:inherit;cursor:pointer}
.pc-ib:hover:not(:disabled){border-color:#2563eb;color:#2563eb}
.pc-ib:disabled{opacity:.35;cursor:not-allowed}
.pc-btns{display:flex;gap:.5rem;flex-wrap:wrap;margin-top:1rem}
.pc-btn{font:inherit;border-radius:8px;padding:.65rem 1.1rem;cursor:pointer;border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit}
.pc-btn.pc-main{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600;flex:1 1 200px}
.pc-btn:disabled{opacity:.55;cursor:not-allowed}
.pc-status{margin:.75rem 0 0;font-size:.95rem}
.pc-result{margin:.75rem 0 0;font-weight:600}
.pc-err{color:#dc2626;margin:.75rem 0 0;font-size:.95rem}
.pc-note{font-size:.85rem;opacity:.75;margin-top:.75rem}
</style>
<div class="pc-app" id="pc-app">
<div class="pc-drop" id="pc-drop" tabindex="0" role="button" aria-label="เลือกไฟล์ PDF">
<strong>📄 วางไฟล์ PDF ที่นี่</strong>
<span>หรือคลิกเพื่อเลือกไฟล์ / กด Ctrl+V เพื่อวาง</span>
</div>
<input type="file" id="pc-file" accept="application/pdf,.pdf" hidden>
<div class="pc-box" id="pc-panel" hidden>
<div class="pc-row">
<div>
<div class="pc-name" id="pc-name"></div>
<div class="pc-meta" id="pc-size"></div>
</div>
<button type="button" class="pc-btn" id="pc-clear">ล้าง</button>
</div>
<div class="pc-label">หน้าในไฟล์ <span class="pc-meta" id="pc-count"></span></div>
<div class="pc-pages" id="pc-pages"></div>
<p class="pc-note">ลากการ์ดเพื่อสลับลำดับ หรือใช้ปุ่ม ‹ › ⤸ หมุน 90° และ × ลบหน้า</p>
<div class="pc-label">ระดับการบีบอัด</div>
<input class="pc-range" id="pc-level" type="range" min="0" max="3" step="1" value="2" aria-label="ระดับการบีบอัด">
<div class="pc-ticks" id="pc-ticks">
<span>น้อยที่สุด</span><span>เบา</span><span>แรง</span><span>มากที่สุด</span>
</div>
<p class="pc-hint" id="pc-hint"></p>
<div class="pc-btns">
<button type="button" class="pc-btn pc-main" id="pc-go">บีบอัดและดาวน์โหลด</button>
</div>
<p class="pc-status" id="pc-status" aria-live="polite" hidden></p>
<p class="pc-result" id="pc-result" hidden></p>
<p class="pc-err" id="pc-err" role="alert" hidden></p>
<p class="pc-note">เปิดแท็บนี้ค้างไว้ขณะประมวลผล การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</p>
</div>
<p class="pc-note">🛡️ ประมวลผลในเบราว์เซอร์ของคุณทั้งหมด ไฟล์ PDF ไม่ถูกอัปโหลดไปที่ใด</p>
</div>

<script>
(function () {
  'use strict';
  var root = document.getElementById('pc-app');
  if (!root) return;
  /* pdf.js โหลดจาก CDN แบบ pin เวอร์ชัน มีสำรอง 2 แหล่ง */
  var BASES = [
    'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/',
    'https://cdn.jsdelivr.net/npm/pdfjs-dist@3.11.174/build/'
  ];
  var MAX_SIDE = 3000;
  var MAX_AREA = 12000000;
  var THUMB_SIDE = 140;
  var THUMB_MAX = 200;
  var LEVELS = [
    { scale: 2.0, q: 0.85, iq: 0.85, ms: 2600, hint: 'น้อยที่สุด: ภาพคมชัดที่สุด ขนาดไฟล์ลดลงน้อย' },
    { scale: 1.6, q: 0.75, iq: 0.75, ms: 2000, hint: 'เบา: ใกล้เคียงต้นฉบับ ขนาดไฟล์ลดลงพอประมาณ' },
    { scale: 1.3, q: 0.60, iq: 0.60, ms: 1500, hint: 'แรง: สมดุลระหว่างขนาดกับคุณภาพ แนะนำให้เริ่มที่ระดับนี้' },
    { scale: 1.0, q: 0.45, iq: 0.45, ms: 1100, hint: 'มากที่สุด: ไฟล์เล็กที่สุด ข้อความยังอ่านได้ แต่ภาพจะนุ่มลง' }
  ];
  function $(id) { return document.getElementById(id); }
  var drop = $('pc-drop'), input = $('pc-file'), panel = $('pc-panel');
  var elName = $('pc-name'), elSize = $('pc-size'), elCount = $('pc-count'), range = $('pc-level');
  var pagesBox = $('pc-pages');
  var ticks = $('pc-ticks').getElementsByTagName('span');
  var hint = $('pc-hint'), goBtn = $('pc-go'), clearBtn = $('pc-clear');
  var elStatus = $('pc-status'), elResult = $('pc-result'), elErr = $('pc-err');
  var file = null, fileBuf = null, items = [], busy = false, ready = false;
  var token = 0, dragIdx = -1, libPromise = null, pdfLibPromise = null, pageCount = 0;
  function fmt(n) {
    if (n < 1024) return n + ' B';
    if (n < 1048576) return (n / 1024).toFixed(1) + ' KB';
    return (n / 1048576).toFixed(2) + ' MB';
  }
  function show(el, text) {
    if (text === null) { el.hidden = true; el.textContent = ''; return; }
    el.textContent = text; el.hidden = false;
  }
  function resetMsgs() { show(elStatus, null); show(elResult, null); show(elErr, null); }
  function refreshUi() {
    goBtn.disabled = busy || !ready;
    clearBtn.disabled = busy;
    range.disabled = busy;
    elCount.textContent = ready ? '(' + items.length + ' หน้า)' : '(กำลังโหลด...)';
    var btns = pagesBox.getElementsByTagName('button');
    for (var i = 0; i < btns.length; i++) {
      var act = btns[i].getAttribute('data-act');
      var idx = +btns[i].getAttribute('data-i');
      var off = busy;
      if (act === 'left' && idx === 0) off = true;
      if (act === 'right' && idx === items.length - 1) off = true;
      if (act === 'del' && items.length < 2) off = true;
      btns[i].disabled = off;
    }
  }
  /* ---------- โหลดไลบรารี (ไม่รับ HTML ที่ถูกส่งมาแทนสคริปต์) ---------- */
  function loadScript(src) {
    return new Promise(function (resolve, reject) {
      var s = document.createElement('script');
      s.src = src;
      s.onload = function () { resolve(); };
      s.onerror = function () { s.parentNode && s.parentNode.removeChild(s); reject(new Error('lib')); };
      document.head.appendChild(s);
    });
  }
  function fetchScriptText(url) {
    return fetch(url).then(function (r) {
      if (!r.ok) throw new Error('worker');
      return r.text();
    }).then(function (t) {
      if (t.replace(/^\s+/, '').charAt(0) === '<') throw new Error('worker');
      return t;
    });
  }
  async function loadLibOnce() {
    var i, lib = window.pdfjsLib, first = 0;
    if (!lib) {
      for (i = 0; i < BASES.length && !lib; i++) {
        try { await loadScript(BASES[i] + 'pdf.min.js'); } catch (e) { continue; }
        if (window.pdfjsLib) { lib = window.pdfjsLib; first = i; }
      }
    }
    if (!lib) throw new Error('lib');
    for (i = 0; i < BASES.length; i++) {
      var b = BASES[(first + i) % BASES.length];
      try {
        var t = await fetchScriptText(b + 'pdf.worker.min.js');
        lib.GlobalWorkerOptions.workerSrc = URL.createObjectURL(new Blob([t], { type: 'text/javascript' }));
        return lib;
      } catch (e) { /* ลองแหล่งถัดไป */ }
    }
    throw new Error('worker');
  }
  function loadLib() {
    if (libPromise) return libPromise;
    libPromise = loadLibOnce();
    libPromise.catch(function () { libPromise = null; });
    return libPromise;
  }
  /*OPT-START*/
  var PDFLIBS = [
    'https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js',
    'https://cdn.jsdelivr.net/npm/pdf-lib@1.17.1/dist/pdf-lib.min.js'
  ];
  function loadPdfLib() {
    if (pdfLibPromise) return pdfLibPromise;
    pdfLibPromise = (async function () {
      if (window.PDFLib) return window.PDFLib;
      for (var i = 0; i < PDFLIBS.length; i++) {
        try { await loadScript(PDFLIBS[i]); } catch (e) { continue; }
        if (window.PDFLib) return window.PDFLib;
      }
      throw new Error('lib');
    })();
    pdfLibPromise.catch(function () { pdfLibPromise = null; });
    return pdfLibPromise;
  }
  async function inflate(bytes) {
    var ds = new DecompressionStream('deflate');
    var w = ds.writable.getWriter();
    w.write(bytes).catch(function () {});
    w.close().catch(function () {});
    return new Uint8Array(await new Response(ds.readable).arrayBuffer());
  }
  function unpredict(data, colors, columns) {
    var rb = columns * colors, rows = Math.floor(data.length / (rb + 1));
    var out = new Uint8Array(rows * rb);
    for (var r = 0; r < rows; r++) {
      var ft = data[r * (rb + 1)], so = r * (rb + 1) + 1, o = r * rb;
      for (var i = 0; i < rb; i++) {
        var x = data[so + i];
        var a = i >= colors ? out[o + i - colors] : 0;
        var b = r > 0 ? out[o - rb + i] : 0;
        var c = (r > 0 && i >= colors) ? out[o - rb + i - colors] : 0;
        var v;
        if (ft === 0) v = x;
        else if (ft === 1) v = x + a;
        else if (ft === 2) v = x + b;
        else if (ft === 3) v = x + ((a + b) >> 1);
        else if (ft === 4) {
          var p = a + b - c, pa = Math.abs(p - a), pb = Math.abs(p - b), pc = Math.abs(p - c);
          v = x + ((pa <= pb && pa <= pc) ? a : (pb <= pc ? b : c));
        } else throw new Error('predictor');
        out[o + i] = v & 255;
      }
    }
    return out;
  }
  function pdfNum(L, ctx, dict, key) {
    var v = ctx.lookup(dict.get(L.PDFName.of(key)));
    return v && typeof v.asNumber === 'function' ? v.asNumber() : null;
  }
  function pdfNames(L, ctx, v) {
    v = ctx.lookup(v);
    if (!v) return [];
    if (v instanceof L.PDFName) return [v.asString().replace(/^\//, '')];
    if (v instanceof L.PDFArray) {
      var r = [];
      for (var i = 0; i < v.size(); i++) {
        var e = ctx.lookup(v.get(i));
        r.push(e instanceof L.PDFName ? e.asString().replace(/^\//, '') : '?');
      }
      return r;
    }
    return ['?'];
  }
  function colorComps(L, ctx, dict) {
    var cs = ctx.lookup(dict.get(L.PDFName.of('ColorSpace')));
    if (cs instanceof L.PDFName) {
      var n = cs.asString().replace(/^\//, '');
      return n === 'DeviceRGB' ? 3 : (n === 'DeviceGray' ? 1 : null);
    }
    if (cs instanceof L.PDFArray && cs.size() > 1) {
      var h = ctx.lookup(cs.get(0));
      if (h instanceof L.PDFName && h.asString() === '/ICCBased') {
        var s = ctx.lookup(cs.get(1));
        var nn = s && s.dict ? pdfNum(L, ctx, s.dict, 'N') : null;
        return (nn === 3 || nn === 1) ? nn : null;
      }
    }
    return null;
  }
  async function toBitmap(blob) {
    try { return await createImageBitmap(blob, { imageOrientation: 'none' }); }
    catch (e) { return await createImageBitmap(blob); }
  }
  async function recompressImage(L, ctx, ref, stream, lvl) {
    var dict = stream.dict, N = L.PDFName.of;
    var has = function (k) { return dict.has(N(k)); };
    if (has('ImageMask') || has('Mask') || has('Decode')) return false;
    var filters = pdfNames(L, ctx, dict.get(N('Filter')));
    if (filters.length !== 1) return false;
    var comps = colorComps(L, ctx, dict);
    var w = pdfNum(L, ctx, dict, 'Width'), h = pdfNum(L, ctx, dict, 'Height');
    var bpc = pdfNum(L, ctx, dict, 'BitsPerComponent');
    if (!comps || !w || !h || bpc !== 8 || w * h > 40000000) return false;
    var raw = stream.contents, bmp = null, flat = null;
    if (filters[0] === 'DCTDecode') {
      bmp = await toBitmap(new Blob([raw], { type: 'image/jpeg' }));
    } else if (filters[0] === 'FlateDecode') {
      if (w * h < 40000) return false;
      var data = await inflate(raw);
      var parms = ctx.lookup(dict.get(N('DecodeParms')));
      if (parms instanceof L.PDFArray) parms = ctx.lookup(parms.get(0));
      var pred = parms && parms.get ? pdfNum(L, ctx, parms, 'Predictor') : null;
      if (pred && pred >= 10) {
        var cols = pdfNum(L, ctx, parms, 'Columns') || 1, clr = pdfNum(L, ctx, parms, 'Colors') || 1;
        if (cols !== w || clr !== comps) return false;
        data = unpredict(data, comps, w);
      } else if (pred && pred > 1) return false;
      if (data.length < w * h * comps) return false;
      var rgba = new Uint8ClampedArray(w * h * 4);
      for (var i = 0, j = 0, k = 0; i < w * h; i++, j += 4) {
        if (comps === 3) { rgba[j] = data[k]; rgba[j + 1] = data[k + 1]; rgba[j + 2] = data[k + 2]; k += 3; }
        else { rgba[j] = rgba[j + 1] = rgba[j + 2] = data[k]; k += 1; }
        rgba[j + 3] = 255;
      }
      flat = document.createElement('canvas');
      flat.width = w; flat.height = h;
      flat.getContext('2d').putImageData(new ImageData(rgba, w, h), 0, 0);
    } else return false;
    var k2 = Math.min(1, lvl.ms / Math.max(w, h));
    var tw = Math.max(1, Math.round(w * k2)), th = Math.max(1, Math.round(h * k2));
    var c = document.createElement('canvas');
    c.width = tw; c.height = th;
    var g = c.getContext('2d', { alpha: false });
    g.fillStyle = '#ffffff'; g.fillRect(0, 0, tw, th);
    g.imageSmoothingEnabled = true; g.imageSmoothingQuality = 'high';
    g.drawImage(flat || bmp, 0, 0, tw, th);
    if (bmp && bmp.close) bmp.close();
    var blob = await toJpeg(c, lvl.iq);
    c.width = 0; c.height = 0;
    if (flat) { flat.width = 0; flat.height = 0; }
    if (!blob || blob.size >= raw.length * 0.92) return false;
    var bytes = new Uint8Array(await blob.arrayBuffer());
    dict.set(N('Width'), L.PDFNumber.of(tw));
    dict.set(N('Height'), L.PDFNumber.of(th));
    dict.set(N('BitsPerComponent'), L.PDFNumber.of(8));
    dict.set(N('ColorSpace'), N('DeviceRGB'));
    dict.set(N('Filter'), N('DCTDecode'));
    dict.delete(N('DecodeParms'));
    ctx.assign(ref, L.PDFRawStream.of(dict, bytes));
    return true;
  }
  async function optimizeWithLib(srcBuf, order, lvl, onProg) {
    var L = await loadPdfLib();
    var src = await L.PDFDocument.load(new Uint8Array(srcBuf.slice(0)), { updateMetadata: false });
    var out = await L.PDFDocument.create();
    var copied = await out.copyPages(src, order.map(function (o) { return o.n - 1; }));
    copied.forEach(function (p, i) {
      if (order[i].rot) p.setRotation(L.degrees((p.getRotation().angle + order[i].rot) % 360));
      out.addPage(p);
    });
    var ctx = out.context, list = [];
    ctx.enumerateIndirectObjects().forEach(function (pair) {
      var o = pair[1];
      if (o instanceof L.PDFRawStream) {
        var sub = o.dict.get(L.PDFName.of('Subtype'));
        if (sub && sub.toString() === '/Image') list.push(pair);
      }
    });
    for (var i = 0; i < list.length; i++) {
      if (onProg) onProg(i + 1, list.length);
      try { await recompressImage(L, ctx, list[i][0], list[i][1], lvl); } catch (e) { /* ข้ามรูปที่ประมวลผลไม่ได้ */ }
    }
    var bytes = await out.save({ useObjectStreams: true });
    return new Blob([bytes], { type: 'application/pdf' });
  }
  /*OPT-END*/
  function errText(e) {
    if (e && e.name === 'PasswordException') return 'ไฟล์ PDF นี้ถูกล็อกด้วยรหัสผ่าน';
    if (e && (e.message === 'lib' || e.message === 'worker')) return 'โหลดตัวอ่าน PDF ไม่สำเร็จ ตรวจสอบอินเทอร์เน็ตแล้วลองใหม่';
    return 'ไม่สามารถอ่านหรือบีบอัดไฟล์นี้ได้ ไฟล์อาจเสียหรือใหญ่เกินกว่าที่เบราว์เซอร์จะรองรับ';
  }
  function updateLevel() {
    var v = +range.value;
    for (var i = 0; i < ticks.length; i++) {
      ticks[i].style.fontWeight = i === v ? '700' : '400';
      ticks[i].style.color = i === v ? '#2563eb' : '';
    }
    hint.textContent = LEVELS[v].hint;
  }
  /* ---------- รายการหน้า ---------- */
  function mk(tag, cls, text) {
    var e = document.createElement(tag);
    if (cls) e.className = cls;
    if (text) e.textContent = text;
    return e;
  }
  function ib(act, idx, label, text) {
    var b = mk('button', 'pc-ib', text);
    b.type = 'button';
    b.setAttribute('data-act', act);
    b.setAttribute('data-i', String(idx));
    b.setAttribute('aria-label', label);
    b.title = label;
    return b;
  }
  function renderPages() {
    pagesBox.textContent = '';
    items.forEach(function (it, idx) {
      var card = mk('div', 'pc-pg');
      card.draggable = true;
      card.setAttribute('data-i', String(idx));
      var th = mk('div', 'pc-th');
      var img = document.createElement('img');
      img.alt = 'หน้า ' + it.n;
      img.setAttribute('data-n', String(it.n));
      if (it.src) { img.src = it.src; } else { img.hidden = true; }
      img.style.transform = 'rotate(' + it.rot + 'deg)';
      th.appendChild(img);
      var num = mk('span', 'pc-num', (idx + 1) + (it.n !== idx + 1 ? ' (เดิม ' + it.n + ')' : ''));
      var bar = mk('div', 'pc-bar');
      bar.appendChild(ib('left', idx, 'ย้ายไปก่อนหน้า', '‹'));
      bar.appendChild(ib('rot', idx, 'หมุน 90 องศา', '⤸'));
      bar.appendChild(ib('del', idx, 'ลบหน้านี้', '×'));
      bar.appendChild(ib('right', idx, 'ย้ายไปถัดไป', '›'));
      card.appendChild(th); card.appendChild(num); card.appendChild(bar);
      pagesBox.appendChild(card);
    });
    refreshUi();
  }
  function move(from, to) {
    if (from === to || from < 0 || to < 0 || from >= items.length || to >= items.length) return;
    var it = items.splice(from, 1)[0];
    items.splice(to, 0, it);
    renderPages();
  }
  function cardOf(node) {
    while (node && node !== pagesBox) {
      if (node.className === 'pc-pg') return node;
      node = node.parentNode;
    }
    return null;
  }
  pagesBox.addEventListener('click', function (e) {
    var b = e.target;
    while (b && b !== pagesBox && b.tagName !== 'BUTTON') b = b.parentNode;
    if (!b || b === pagesBox || busy) return;
    var act = b.getAttribute('data-act'), idx = +b.getAttribute('data-i');
    if (act === 'left') move(idx, idx - 1);
    else if (act === 'right') move(idx, idx + 1);
    else if (act === 'rot') { items[idx].rot = (items[idx].rot + 90) % 360; renderPages(); }
    else if (act === 'del' && items.length > 1) { items.splice(idx, 1); renderPages(); }
  });
  pagesBox.addEventListener('dragstart', function (e) {
    var c = cardOf(e.target);
    if (!c || busy) { e.preventDefault(); return; }
    dragIdx = +c.getAttribute('data-i');
    if (e.dataTransfer) {
      e.dataTransfer.effectAllowed = 'move';
      try { e.dataTransfer.setData('text/plain', String(dragIdx)); } catch (x) { /* ignore */ }
    }
  });
  pagesBox.addEventListener('dragover', function (e) { if (dragIdx >= 0) e.preventDefault(); });
  pagesBox.addEventListener('drop', function (e) {
    if (dragIdx < 0) return;
    e.preventDefault();
    var c = cardOf(e.target);
    if (c) move(dragIdx, +c.getAttribute('data-i'));
    dragIdx = -1;
  });
  pagesBox.addEventListener('dragend', function () { dragIdx = -1; });
  /* ---------- เลือก / ล้างไฟล์ ---------- */
  async function loadPages(f, tk) {
    var buf = await f.arrayBuffer();
    if (tk !== token) return;
    var lib = await loadLib();
    var pdf = await lib.getDocument({ data: new Uint8Array(buf.slice(0)) }).promise;
    if (tk !== token) { pdf.destroy(); return; }
    fileBuf = buf;
    pageCount = pdf.numPages;
    items = [];
    for (var i = 1; i <= pdf.numPages; i++) items.push({ n: i, rot: 0, src: '' });
    ready = true;
    renderPages();
    for (var p = 1; p <= pdf.numPages && p <= THUMB_MAX; p++) {
      if (tk !== token) break;
      var page = await pdf.getPage(p);
      var v1 = page.getViewport({ scale: 1 });
      var s = THUMB_SIDE / Math.max(v1.width, v1.height);
      var vp = page.getViewport({ scale: s });
      var c = document.createElement('canvas');
      c.width = Math.max(1, Math.round(vp.width));
      c.height = Math.max(1, Math.round(vp.height));
      var ctx = c.getContext('2d', { alpha: false });
      ctx.fillStyle = '#ffffff';
      ctx.fillRect(0, 0, c.width, c.height);
      await page.render({ canvasContext: ctx, viewport: vp }).promise;
      var src = c.toDataURL('image/jpeg', 0.7);
      c.width = 0; c.height = 0;
      page.cleanup();
      for (var k = 0; k < items.length; k++) { if (items[k].n === p) items[k].src = src; }
      var im = pagesBox.querySelector('img[data-n="' + p + '"]');
      if (im) { im.src = src; im.hidden = false; }
    }
    await pdf.destroy();
  }
  function setFile(f) {
    if (busy) return;
    resetMsgs();
    if (!f) return;
    var isPdf = f.type === 'application/pdf' || /\.pdf$/i.test(f.name);
    if (!isPdf) { show(elErr, 'กรุณาเลือกไฟล์ PDF เท่านั้น'); return; }
    var tk = ++token;
    file = f; fileBuf = null; items = []; ready = false;
    elName.textContent = f.name;
    elSize.textContent = 'ขนาดไฟล์เดิม ' + fmt(f.size);
    panel.hidden = false;
    drop.hidden = true;
    updateLevel();
    renderPages();
    loadPages(f, tk).catch(function (e) {
      if (tk !== token) return;
      clearFile(true);
      show(elErr, errText(e));
    });
  }
  function clearFile(force) {
    if (busy && force !== true) return;
    token++;
    file = null; fileBuf = null; items = []; ready = false;
    input.value = '';
    pagesBox.textContent = '';
    panel.hidden = true; drop.hidden = false;
    resetMsgs();
  }
  /* ---------- สร้างไฟล์ PDF ใหม่จากภาพ JPEG ---------- */
  function buildPdf(pages) {
    var enc = new TextEncoder();
    var chunks = [], offsets = [], pos = 0;
    function put(x) {
      var b = typeof x === 'string' ? enc.encode(x) : x;
      chunks.push(b); pos += b.length;
    }
    function obj(id, body) {
      offsets[id] = pos;
      put(id + ' 0 obj\n' + body + '\nendobj\n');
    }
    var total = 2 + pages.length * 3;
    put('%PDF-1.4\n%\u00e2\u00e3\u00cf\u00d3\n');
    var kids = pages.map(function (p, k) { return (3 + 3 * k) + ' 0 R'; }).join(' ');
    obj(1, '<< /Type /Catalog /Pages 2 0 R >>');
    obj(2, '<< /Type /Pages /Kids [ ' + kids + ' ] /Count ' + pages.length + ' >>');
    pages.forEach(function (p, k) {
      var pid = 3 + 3 * k, cid = pid + 1, iid = pid + 2;
      var w = p.w.toFixed(2), h = p.h.toFixed(2);
      obj(pid, '<< /Type /Page /Parent 2 0 R /MediaBox [0 0 ' + w + ' ' + h + '] /Resources << /XObject << /Im0 ' + iid + ' 0 R >> >> /Contents ' + cid + ' 0 R >>');
      var cs = 'q ' + w + ' 0 0 ' + h + ' 0 0 cm /Im0 Do Q';
      obj(cid, '<< /Length ' + cs.length + ' >>\nstream\n' + cs + '\nendstream');
      offsets[iid] = pos;
      put(iid + ' 0 obj\n<< /Type /XObject /Subtype /Image /Width ' + p.pw + ' /Height ' + p.ph + ' /ColorSpace /DeviceRGB /BitsPerComponent 8 /Filter /DCTDecode /Length ' + p.data.length + ' >>\nstream\n');
      put(p.data);
      put('\nendstream\nendobj\n');
    });
    var xrefPos = pos;
    var x = 'xref\n0 ' + (total + 1) + '\n0000000000 65535 f \n';
    for (var i = 1; i <= total; i++) {
      x += ('0000000000' + offsets[i]).slice(-10) + ' 00000 n \n';
    }
    put(x + 'trailer\n<< /Size ' + (total + 1) + ' /Root 1 0 R >>\nstartxref\n' + xrefPos + '\n%%EOF\n');
    return new Blob(chunks, { type: 'application/pdf' });
  }
  function toJpeg(canvas, q) {
    return new Promise(function (resolve) { canvas.toBlob(resolve, 'image/jpeg', q); });
  }
  async function rasterCompress(order, lvl) {
    var lib = await loadLib();
    var pdf = await lib.getDocument({ data: new Uint8Array(fileBuf.slice(0)) }).promise;
    var n = order.length, pages = [];
    for (var i = 0; i < n; i++) {
      show(elStatus, 'กำลังบีบอัดหน้า ' + (i + 1) + ' / ' + n);
      var page = await pdf.getPage(order[i].n);
      var rot = ((page.rotate || 0) + order[i].rot) % 360;
      var base = page.getViewport({ scale: 1, rotation: rot });
      var scale = lvl.scale;
      var side = Math.max(base.width, base.height) * scale;
      if (side > MAX_SIDE) scale = scale * MAX_SIDE / side;
      var area = base.width * base.height * scale * scale;
      if (area > MAX_AREA) scale = scale * Math.sqrt(MAX_AREA / area);
      var vp = page.getViewport({ scale: scale, rotation: rot });
      var c = document.createElement('canvas');
      c.width = Math.max(1, Math.round(vp.width));
      c.height = Math.max(1, Math.round(vp.height));
      var ctx = c.getContext('2d', { alpha: false });
      ctx.fillStyle = '#ffffff';
      ctx.fillRect(0, 0, c.width, c.height);
      await page.render({ canvasContext: ctx, viewport: vp }).promise;
      var blob = await toJpeg(c, lvl.q);
      if (!blob) throw new Error('jpeg');
      var data = new Uint8Array(await blob.arrayBuffer());
      pages.push({ w: base.width, h: base.height, pw: c.width, ph: c.height, data: data });
      c.width = 0; c.height = 0;
      page.cleanup();
    }
    await pdf.destroy();
    show(elStatus, 'กำลังสร้างไฟล์ PDF...');
    return buildPdf(pages);
  }
  function isEdited(order) {
    if (order.length !== pageCount) return true;
    for (var i = 0; i < order.length; i++) { if (order[i].n !== i + 1 || order[i].rot) return true; }
    return false;
  }
  async function runCompress() {
    var lvl = LEVELS[+range.value];
    var order = items.map(function (it) { return { n: it.n, rot: it.rot }; });
    var best = null, mode = 'img', firstErr = null;
    try {
      best = await optimizeWithLib(fileBuf, order, lvl, function (a, b) {
        show(elStatus, 'กำลังบีบอัดรูปภาพ ' + a + ' / ' + b);
      });
    } catch (e) { firstErr = e; }
    if (!best || best.size > file.size * 0.95) {
      try {
        show(elStatus, 'กำลังลองวิธีแปลงเป็นภาพ...');
        var rb = await rasterCompress(order, lvl);
        if (!best || rb.size < best.size * 0.85) { best = rb; mode = 'raster'; }
      } catch (e2) { if (!best) throw (firstErr || e2); }
    }
    return { blob: best, mode: mode, edited: isEdited(order) };
  }
  function download(blob) {
    var name = file.name.replace(/\.pdf$/i, '') + '-compressed.pdf';
    var a = document.createElement('a');
    var url = URL.createObjectURL(blob);
    a.href = url; a.download = name;
    document.body.appendChild(a); a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 10000);
  }
  function setBusy(b) { busy = b; refreshUi(); }
  goBtn.addEventListener('click', function () {
    if (!file || !fileBuf || !ready || busy) return;
    resetMsgs(); setBusy(true);
    runCompress().then(function (res) {
      var blob = res.blob, before = file.size, after = blob.size;
      var pct = Math.round((1 - after / before) * 100);
      var txt = fmt(before) + ' → ' + fmt(after) + (pct > 0 ? ' (ลดลง ' + pct + '%)' : ' (ใหญ่กว่าเดิม ' + Math.abs(pct) + '%)');
      show(elStatus, null);
      show(elResult, txt);
      if (!res.edited && after >= before) {
        show(elErr, 'ไฟล์นี้เล็กอยู่แล้วหรือบีบอัดมาแล้ว ลดขนาดต่อไม่ได้ จึงไม่ดาวน์โหลดไฟล์ที่ใหญ่กว่าเดิมให้ ลองเลือกระดับที่แรงขึ้น');
        return;
      }
      if (res.mode === 'raster') show(elStatus, 'หมายเหตุ: ไฟล์นี้ใช้วิธีแปลงหน้าเป็นภาพ ข้อความในไฟล์ใหม่จะเลือกคัดลอกไม่ได้');
      download(blob);
    }).catch(function (e) {
      show(elStatus, null);
      show(elErr, errText(e));
    }).then(function () { setBusy(false); });
  });
  clearBtn.addEventListener('click', function () { clearFile(); });
  range.addEventListener('input', updateLevel);
  drop.addEventListener('click', function () { input.click(); });
  drop.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); input.click(); }
  });
  input.addEventListener('change', function () { setFile(input.files && input.files[0]); });
  ['dragenter', 'dragover'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add('pc-over'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove('pc-over'); });
  });
  drop.addEventListener('drop', function (e) {
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    setFile(f);
  });
  document.addEventListener('paste', function (e) {
    if (busy || !e.clipboardData || !e.clipboardData.files || !e.clipboardData.files.length) return;
    setFile(e.clipboardData.files[0]);
  });
  updateLevel();
})();
</script>

บีบอัดไฟล์ PDF ในเบราว์เซอร์ได้โดยตรง ไม่ต้องอัปโหลด ไม่ต้องสมัครสมาชิก มี 4 ระดับให้เลือกว่าจะให้ไฟล์เล็กแค่ไหนและเก็บรายละเอียดของภาพไว้มากเท่าไร ก่อนบีบอัดยังจัดลำดับหน้า หมุนหน้า หรือลบหน้าที่ไม่ต้องการได้ เหมาะกับการลดขนาดไฟล์เพื่อแนบอีเมล ส่งผ่านแชต หรืออัปโหลดเข้าเว็บที่จำกัดขนาดไฟล์

## วิธีใช้งาน

1. ลากไฟล์ PDF มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด `Ctrl`+`V` เพื่อวางไฟล์
2. รอให้ภาพตัวอย่างของแต่ละหน้าแสดงขึ้น (ขั้นตอนนี้ไม่บังคับ ข้ามไปขั้นตอนที่ 4 ได้ทันที)
3. จัดการหน้าตามต้องการ: ลากการ์ดหรือกด ‹ › เพื่อสลับลำดับ กด ⤸ เพื่อหมุนทีละ 90° และกด × เพื่อลบหน้า
4. เลื่อนแถบเพื่อเลือกระดับการบีบอัด หากไม่แน่ใจให้เริ่มที่ระดับ **แรง**
5. กดปุ่ม **บีบอัดและดาวน์โหลด** แล้วรอจนแถบสถานะแสดงว่าเสร็จ
6. ไฟล์ใหม่จะถูกดาวน์โหลดอัตโนมัติ พร้อมแสดงขนาดก่อนและหลังบีบอัดว่าลดลงเท่าไร
7. ถ้าผลลัพธ์ยังใหญ่ไป ให้เลือกระดับที่แรงขึ้นแล้วกดบีบอัดอีกครั้ง หากไฟล์เล็กอยู่แล้ว เครื่องมือจะแจ้งและไม่ดาวน์โหลดไฟล์ที่ใหญ่กว่าเดิมให้

## ระดับการบีบอัด

| ระดับ | คำอธิบายสั้น ๆ |
|---|---|
| น้อยที่สุด | หน้ากระดาษคมชัดที่สุด แต่ขนาดไฟล์ลดลงน้อย |
| เบา | ใกล้เคียงต้นฉบับ ขนาดไฟล์ลดลงพอประมาณ |
| แรง | สมดุลระหว่างขนาดกับคุณภาพ เป็นจุดเริ่มต้นที่แนะนำ |
| มากที่สุด | ไฟล์เล็กที่สุด ข้อความยังอ่านได้ แต่ภาพจะนุ่มลง |

## คำอธิบายศัพท์ที่ควรรู้

- **บีบอัด (Compress):** ลดขนาดไฟล์เป็น KB หรือ MB ให้เล็กลง เพื่อส่งหรืออัปโหลดได้ง่ายขึ้น
- **ขนาดไฟล์:** ปริมาณพื้นที่ที่ไฟล์ใช้ในอุปกรณ์ ส่วนขนาดหน้ากระดาษ (เช่น A4) จะไม่เปลี่ยน
- **ระดับการบีบอัด:** ตัวเลือกที่กำหนดว่าจะลดขนาดไฟล์มากแค่ไหน ยิ่งลดมาก ภาพยิ่งนุ่มลง
- **ความละเอียด (DPI):** จำนวนจุดต่อนิ้วของภาพในหน้า ค่ายิ่งสูงยิ่งคมชัดแต่ไฟล์ใหญ่ขึ้น
- **คุณภาพ JPEG:** ระดับการเก็บรายละเอียดของภาพเมื่อบันทึกเป็น JPEG ค่าน้อยลงทำให้ไฟล์เล็กลงแต่ภาพเบลอขึ้น
- **ภาพตัวอย่างหน้า (Thumbnail):** ภาพย่อของแต่ละหน้าที่ใช้ดูว่าหน้าไหนคือหน้าไหนก่อนบีบอัด
- **ลำดับหน้า:** ตำแหน่งของหน้าในไฟล์ใหม่ ลากการ์ดหรือกด ‹ › เพื่อสลับตำแหน่งได้
- **หมุนหน้า (⤸):** หมุนหน้าทีละ 90° ตามเข็มนาฬิกา เหมาะกับหน้าที่สแกนมาผิดทิศ
- **ลบหน้า (×):** นำหน้าที่ไม่ต้องการออกจากไฟล์ใหม่ ต้องเหลืออย่างน้อย 1 หน้า
- **ล้าง:** ปิดไฟล์ที่เลือกอยู่และเริ่มใหม่ด้วยไฟล์อื่น
- **บีบอัดและดาวน์โหลด:** ปุ่มเริ่มประมวลผลตามระดับและการจัดหน้าที่เลือก แล้วบันทึกไฟล์ใหม่ลงเครื่องอัตโนมัติ
- **บีบอัดรูปภาพในไฟล์:** ลดขนาดเฉพาะรูปภาพที่ฝังอยู่ใน PDF ส่วนข้อความและโครงหน้ากระดาษคงเดิม ข้อความจึงยังเลือกคัดลอกได้
- **โหมดแปลงเป็นภาพ:** วิธีสำรองที่แปลงแต่ละหน้าเป็นภาพ ใช้เฉพาะเมื่อทำให้ไฟล์เล็กลงชัดเจน ข้อความในไฟล์ใหม่จะเลือกคัดลอกไม่ได้
- **ประมวลผลในเครื่อง:** การทำงานทั้งหมดเกิดในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งออกจากอุปกรณ์
- **ไฟล์ที่ถูกล็อกด้วยรหัสผ่าน:** ต้องปลดล็อกก่อนจึงจะบีบอัดได้

หมายเหตุ: ไฟล์ที่มีแต่ข้อความหรือบีบอัดมาแล้วอาจลดขนาดได้น้อยหรือไม่ได้เลย เพราะไม่มีรูปภาพให้ลดขนาด ในกรณีนี้เครื่องมือจะลองวิธีแปลงเป็นภาพและใช้ก็ต่อเมื่อไฟล์เล็กลงชัดเจน หากยังไม่เล็กลงจะไม่ดาวน์โหลดไฟล์ใหม่ให้