---
title: เทมเพลตพิมพ์รูปติดบัตร 4×6 ออนไลน์ ฟรี
h1: เทมเพลตพิมพ์รูปติดบัตร 4×6
description: เทมเพลตพิมพ์รูปติดบัตร 4×6 จัดรูปหลายใบลงกระดาษ 4×6, 3R หรือ A4 ตามขนาดจริง ประมวลผลบนอุปกรณ์ของคุณ ไม่อัปโหลดรูป ดาวน์โหลดฟรี พร้อมส่งร้านพิมพ์รูปได้ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-10T09:00:00+07:00'
weight: 97
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- เทมเพลตพิมพ์รูปติดบัตร 4×6
- เทมเพลตพิมพ์รูปติดบัตร 4×6 ออนไลน์
- รูปภาพ
---

จัดรูปติดบัตรที่ทำเสร็จแล้วลงกระดาษอัดรูปหรือกระดาษ A4 หนึ่งแผ่น เรียงตามขนาดจริง พร้อมใช้กับร้านล้างรูป ตู้คีออส หรือเครื่องพิมพ์ที่บ้าน

<style>
.idp{max-width:760px;margin:1rem auto;color-scheme:light dark}
.idp [hidden]{display:none!important}
.idp-drop{border:2px dashed rgba(127,127,127,.5);border-radius:12px;padding:2rem 1rem;text-align:center;cursor:pointer}
.idp-drop.on,.idp-drop:focus{border-color:#2563eb;outline:none}
.idp-drop p{margin:.4rem 0}
.idp-ico{font-size:2rem}
.idp-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:.75rem;margin:1rem 0}
.idp label{display:block;font-size:.85rem;font-weight:600}
.idp select,.idp input[type=number]{width:100%;box-sizing:border-box;margin-top:.25rem;padding:.5rem;border:1px solid rgba(127,127,127,.5);border-radius:8px;background:transparent;color:inherit;font:inherit}
.idp-row{display:flex;gap:.5rem;align-items:flex-end}
.idp button{padding:.55rem 1rem;border:1px solid rgba(127,127,127,.5);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.idp button.pri{background:#2563eb;border-color:#2563eb;color:#fff}
.idp-view{text-align:center;padding:.75rem;border-radius:12px;background:rgba(127,127,127,.12)}
.idp-view canvas{max-width:100%;max-height:70vh;height:auto;background:#fff;box-shadow:0 2px 10px rgba(0,0,0,.25)}
.idp-info{margin:.75rem 0;font-weight:600}
.idp-warn{margin:.75rem 0;padding:.6rem .8rem;border-radius:8px;background:rgba(245,158,11,.18)}
.idp-btns{display:flex;flex-wrap:wrap;gap:.5rem;margin-top:.5rem}
</style>

<div class="idp" id="idp-app">
  <div class="idp-drop" id="idp-drop" tabindex="0" role="button" aria-label="เลือกรูปติดบัตร">
    <div class="idp-ico">🖨️</div>
    <p><strong>ลากรูปมาวางที่นี่</strong> คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง</p>
    <p><small>อัปโหลดรูปติดบัตรที่ครอปเสร็จแล้ว ประมวลผลในเบราว์เซอร์ รูปไม่ถูกส่งออกจากอุปกรณ์</small></p>
    <input type="file" id="idp-file" accept="image/*" hidden>
  </div>
  <div id="idp-err" class="idp-warn" hidden></div>
  <div id="idp-work" hidden>
    <div class="idp-grid">
      <div><label for="idp-size">ขนาดรูป</label><select id="idp-size"></select></div>
      <div id="idp-custom" class="idp-row" hidden>
        <div><label for="idp-cw">กว้าง (mm)</label><input type="number" id="idp-cw" value="35" min="10" max="200" step="0.1"></div>
        <div><label for="idp-ch">สูง (mm)</label><input type="number" id="idp-ch" value="45" min="10" max="200" step="0.1"></div>
      </div>
      <div><label for="idp-paper">ขนาดกระดาษ</label><select id="idp-paper"></select></div>
      <div class="idp-row">
        <div><label for="idp-n">จำนวนรูป</label><input type="number" id="idp-n" value="1" min="1" step="1"></div>
        <button type="button" id="idp-full">เต็มแผ่น</button>
      </div>
      <div><label for="idp-fit">การจัดวางแต่ละรูป</label><select id="idp-fit"><option value="cover">เต็มกรอบ</option><option value="contain">พอดีกรอบ</option></select></div>
    </div>
    <div id="idp-warn" class="idp-warn" hidden>รูปนี้ยังไม่ได้ครอปเป็นสัดส่วนมาตรฐาน แผ่นด้านล่างเป็นการครอปกึ่งกลางแบบคร่าวๆ ควรครอปรูปให้ได้สัดส่วนที่ถูกต้องก่อนพิมพ์จริง</div>
    <div class="idp-view"><canvas id="idp-canvas" width="10" height="10"></canvas></div>
    <div class="idp-info" id="idp-info"></div>
    <div class="idp-btns">
      <button type="button" class="pri" id="idp-jpg">ดาวน์โหลด JPG</button>
      <button type="button" id="idp-png">ดาวน์โหลด PNG</button>
      <button type="button" id="idp-change">เปลี่ยนรูป</button>
      <button type="button" id="idp-clear">ล้าง</button>
    </div>
    <p><small>เวลาพิมพ์ ให้เลือก “ไม่มีขอบ (borderless)” และ “ขนาดจริง (actual size)” ห้ามเลือก “พอดีหน้ากระดาษ”</small></p>
  </div>
</div>

<script>
(function () {
  var DPI = 300, GAP = 2, MAR = 2, EPS = 0.0001;
  var SIZES = [
    { l: "1 นิ้ว (25×30 mm)", w: 25, h: 30 },
    { l: "1.5 นิ้ว (33×48 mm)", w: 33, h: 48 },
    { l: "35×45 mm (พาสปอร์ต / วีซ่าทั่วไป)", w: 35, h: 45 },
    { l: "2×2 นิ้ว (50.8×50.8 mm)", w: 50.8, h: 50.8 }
  ];
  var PAPERS = [
    { l: "4×6 นิ้ว (4R) 101.6×152.4 mm", s: "4×6", w: 101.6, h: 152.4 },
    { l: "3R 89×127 mm", s: "3R", w: 89, h: 127 },
    { l: "A4 210×297 mm", s: "A4", w: 210, h: 297 }
  ];
  var $ = function (id) { return document.getElementById(id); };
  var img = null, url = null, auto = true, lastMax = 0;
  var drop = $("idp-drop"), fileIn = $("idp-file"), work = $("idp-work"), err = $("idp-err");
  var selSize = $("idp-size"), selPaper = $("idp-paper"), selFit = $("idp-fit");
  var inN = $("idp-n"), inW = $("idp-cw"), inH = $("idp-ch");
  var cv = $("idp-canvas"), info = $("idp-info"), warn = $("idp-warn");

  function addOpt(sel, text, val) {
    var o = document.createElement("option");
    o.textContent = text; o.value = String(val); sel.appendChild(o);
  }
  SIZES.forEach(function (s, i) { addOpt(selSize, s.l, i); });
  addOpt(selSize, "กำหนดเอง", "custom");
  PAPERS.forEach(function (p, i) { addOpt(selPaper, p.l, i); });
  selSize.value = "2";

  function clampMm(v) {
    v = parseFloat(v);
    if (!(v >= 10)) { return 10; }
    if (v > 200) { return 200; }
    return v;
  }
  function getSize() {
    if (selSize.value === "custom") { return { w: clampMm(inW.value), h: clampMm(inH.value) }; }
    return SIZES[parseInt(selSize.value, 10)];
  }
  function fmt(x) { return String(Math.round(x * 10) / 10); }
  function showErr(msg) { err.textContent = msg; err.hidden = !msg; }

  function gridOf(pw, ph, w, h) {
    var c = Math.floor((pw - 2 * MAR + GAP + EPS) / (w + GAP));
    var r = Math.floor((ph - 2 * MAR + GAP + EPS) / (h + GAP));
    return { cols: Math.max(c, 0), rows: Math.max(r, 0) };
  }
  function bestLayout(p, w, h) {
    var a = gridOf(p.w, p.h, w, h), b = gridOf(p.h, p.w, w, h);
    if (b.cols * b.rows > a.cols * a.rows) {
      return { land: true, W: p.h, H: p.w, cols: b.cols, rows: b.rows, max: b.cols * b.rows };
    }
    return { land: false, W: p.w, H: p.h, cols: a.cols, rows: a.rows, max: a.cols * a.rows };
  }

  function render() {
    if (!img) { return; }
    var sz = getSize(), paper = PAPERS[parseInt(selPaper.value, 10)];
    var L = bestLayout(paper, sz.w, sz.h);
    lastMax = L.max;
    var ratioDiff = Math.abs(img.naturalWidth / img.naturalHeight - sz.w / sz.h) / (sz.w / sz.h);
    warn.hidden = !(ratioDiff > 0.06);
    if (L.max === 0) {
      cv.width = 10; cv.height = 10;
      info.textContent = "รูปขนาดนี้ใหญ่เกินกว่าจะวางลงกระดาษที่เลือก กรุณาเลือกกระดาษที่ใหญ่ขึ้นหรือลดขนาดรูป";
      return;
    }
    inN.max = String(L.max);
    var n = auto ? L.max : parseInt(inN.value, 10);
    if (!(n >= 1)) { n = 1; }
    if (n > L.max) { n = L.max; }
    inN.value = String(n);
    var k = DPI / 25.4;
    var W = Math.round(L.W * k), H = Math.round(L.H * k);
    cv.width = W; cv.height = H;
    var ctx = cv.getContext("2d");
    ctx.imageSmoothingEnabled = true; ctx.imageSmoothingQuality = "high";
    ctx.fillStyle = "#fff"; ctx.fillRect(0, 0, W, H);
    var cw = Math.round(sz.w * k), ch = Math.round(sz.h * k), g = Math.round(GAP * k);
    var uc = n >= L.cols ? L.cols : n, ur = Math.ceil(n / L.cols);
    var x0 = Math.round((W - (uc * cw + (uc - 1) * g)) / 2);
    var y0 = Math.round((H - (ur * ch + (ur - 1) * g)) / 2);
    var iw = img.naturalWidth, ih = img.naturalHeight, cover = selFit.value === "cover";
    var sc = cover ? Math.max(cw / iw, ch / ih) : Math.min(cw / iw, ch / ih);
    var sw = cover ? cw / sc : iw, sh = cover ? ch / sc : ih;
    var sx = cover ? (iw - sw) / 2 : 0, sy = cover ? (ih - sh) / 2 : 0;
    var dw = cover ? cw : iw * sc, dh = cover ? ch : ih * sc;
    var i;
    for (i = 0; i !== n; i++) {
      var x = x0 + (i % L.cols) * (cw + g), y = y0 + Math.floor(i / L.cols) * (ch + g);
      ctx.fillStyle = "#fff"; ctx.fillRect(x, y, cw, ch);
      ctx.drawImage(img, sx, sy, sw, sh, x + (cw - dw) / 2, y + (ch - dh) / 2, dw, dh);
      ctx.strokeStyle = "#999"; ctx.lineWidth = 2;
      ctx.strokeRect(x + 1, y + 1, cw - 2, ch - 2);
    }
    info.textContent = n + " รูป · " + fmt(sz.w) + "×" + fmt(sz.h) + " mm · กระดาษ " + paper.s +
      " (" + (L.land ? "แนวนอน" : "แนวตั้ง") + ") · " + W + "×" + H + " px (300 DPI) · จัดได้สูงสุด " + L.max + " รูป";
  }

  function loadFile(f) {
    if (!f || String(f.type).indexOf("image/") !== 0) { showErr("กรุณาเลือกไฟล์รูปภาพ (JPG, PNG, WebP)"); return; }
    var u = URL.createObjectURL(f), im = new Image();
    im.onload = function () {
      if (url) { URL.revokeObjectURL(url); }
      url = u; img = im; showErr("");
      var r = im.naturalWidth / im.naturalHeight, bi = -1, bd = 1;
      SIZES.forEach(function (s, i) {
        var d = Math.abs(r - s.w / s.h) / (s.w / s.h);
        if (d < bd) { bd = d; bi = i; }
      });
      if (bi >= 0 && bd <= 0.06) { selSize.value = String(bi); $("idp-custom").hidden = true; }
      auto = true; work.hidden = false; drop.hidden = true; render();
    };
    im.onerror = function () {
      URL.revokeObjectURL(u);
      showErr("เปิดรูปนี้ไม่ได้ (ไฟล์ HEIC อาจไม่รองรับในเบราว์เซอร์นี้) ลองแปลงเป็น JPG หรือ PNG ก่อน");
    };
    im.src = u;
  }

  function save(type, ext) {
    cv.toBlob(function (blob) {
      if (!blob) { return; }
      var a = document.createElement("a"), u = URL.createObjectURL(blob);
      a.href = u; a.download = "id-photo-print-sheet." + ext;
      document.body.appendChild(a); a.click(); document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(u); }, 1000);
    }, type, 0.95);
  }

  drop.addEventListener("click", function () { fileIn.click(); });
  drop.addEventListener("keydown", function (e) {
    if (e.key === "Enter" || e.key === " ") { e.preventDefault(); fileIn.click(); }
  });
  fileIn.addEventListener("change", function () { loadFile(fileIn.files[0]); fileIn.value = ""; });
  ["dragenter", "dragover"].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.add("on"); });
  });
  ["dragleave", "drop"].forEach(function (ev) {
    drop.addEventListener(ev, function (e) { e.preventDefault(); drop.classList.remove("on"); });
  });
  drop.addEventListener("drop", function (e) { loadFile(e.dataTransfer.files[0]); });
  document.addEventListener("paste", function (e) {
    var items = (e.clipboardData && e.clipboardData.items) || [], i;
    for (i = 0; i !== items.length; i++) {
      if (items[i].type.indexOf("image/") === 0) { loadFile(items[i].getAsFile()); break; }
    }
  });
  selSize.addEventListener("change", function () {
    $("idp-custom").hidden = selSize.value !== "custom"; auto = true; render();
  });
  selPaper.addEventListener("change", function () { auto = true; render(); });
  selFit.addEventListener("change", render);
  [inW, inH].forEach(function (el) { el.addEventListener("input", function () { auto = true; render(); }); });
  inN.addEventListener("input", function () { auto = false; render(); });
  $("idp-full").addEventListener("click", function () { auto = true; render(); });
  $("idp-jpg").addEventListener("click", function () { save("image/jpeg", "jpg"); });
  $("idp-png").addEventListener("click", function () { save("image/png", "png"); });
  $("idp-change").addEventListener("click", function () { fileIn.click(); });
  $("idp-clear").addEventListener("click", function () {
    img = null; if (url) { URL.revokeObjectURL(url); url = null; }
    work.hidden = true; drop.hidden = false; showErr("");
  });
})();
</script>

## วิธีใช้งานเทมเพลตพิมพ์รูปติดบัตร 4×6

1. **อัปโหลดรูป** ลากไฟล์มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด `Ctrl`+`V` เพื่อวางรูปจากคลิปบอร์ด ควรใช้รูปติดบัตรที่ครอปเสร็จแล้ว
2. **เลือกขนาดรูป** ระบบเดาขนาดจากสัดส่วนรูปให้อัตโนมัติ หากไม่ตรงให้เลือกขนาดเอง หรือเลือก “กำหนดเอง” แล้วกรอกความกว้างและความสูงเป็นมิลลิเมตร
3. **เลือกขนาดกระดาษ** มีให้เลือก 4×6 นิ้ว (4R), 3R และ A4 ระบบหมุนแผ่นให้จัดรูปได้จำนวนมากที่สุดโดยอัตโนมัติ
4. **ปรับจำนวนรูป** ค่าเริ่มต้นคือเต็มแผ่น หากต้องการน้อยกว่านั้นให้พิมพ์จำนวนที่ต้องการ แล้วกด “เต็มแผ่น” เพื่อกลับไปใช้จำนวนสูงสุด
5. **เลือกการจัดวางแต่ละรูป** ใช้ “เต็มกรอบ” หรือ “พอดีกรอบ” ตามสัดส่วนของรูปที่อัปโหลด
6. **ดาวน์โหลดแผ่นพิมพ์** กด “ดาวน์โหลด JPG” หรือ “ดาวน์โหลด PNG” แล้วนำไฟล์ไปพิมพ์ที่ร้านล้างรูป ตู้คีออส หรือเครื่องพิมพ์ที่บ้าน
7. **ตั้งค่าตอนพิมพ์** เลือกพิมพ์แบบ “ไม่มีขอบ” และ “ขนาดจริง” จากนั้นตัดตามเส้นสีเทารอบแต่ละรูป

## คำอธิบายศัพท์และตัวเลือกในเครื่องมือ

- **ขนาดรูป** ขนาดจริงของรูปติดบัตรแต่ละใบ หน่วยเป็นมิลลิเมตร (mm) เช่น 25×30 mm หรือ 35×45 mm
- **1 นิ้ว / 1.5 นิ้ว** ชื่อเรียกขนาดรูปติดบัตรที่นิยมในไทย ใช้กับเอกสารสมัครงาน สมัครเรียน และบัตรทั่วไป
- **35×45 mm** ขนาดรูปที่ใช้กับพาสปอร์ตและวีซ่าของหลายประเทศ
- **2×2 นิ้ว (50.8 mm)** รูปสี่เหลี่ยมจัตุรัสที่ใช้กับพาสปอร์ตและวีซ่าสหรัฐอเมริกา
- **กำหนดเอง** กรอกความกว้างและความสูงเองเมื่อเอกสารของคุณต้องการขนาดพิเศษ
- **4×6 นิ้ว (4R)** กระดาษอัดรูปขนาดมาตรฐานที่ร้านล้างรูปและตู้คีออสใช้บ่อยที่สุด
- **3R (89×127 mm)** กระดาษอัดรูปขนาดเล็กกว่า 4R เล็กน้อย
- **A4 (210×297 mm)** กระดาษสำนักงานที่ใช้กับเครื่องพิมพ์ที่บ้านและร้านถ่ายเอกสาร
- **จำนวนรูป** จำนวนสำเนาที่ต้องการบนแผ่นเดียว ระบบคำนวณจำนวนสูงสุดตามขนาดรูปและกระดาษ
- **เต็มแผ่น** ใช้จำนวนรูปสูงสุดที่วางได้บนกระดาษที่เลือก
- **เต็มกรอบ (cover)** ขยายรูปให้เต็มกรอบและตัดส่วนที่เกินออก ไม่มีขอบขาวภายในกรอบ
- **พอดีกรอบ (contain)** ย่อรูปให้เห็นครบทั้งภาพ อาจมีพื้นที่ว่างสีขาวในกรอบ
- **300 DPI** ความละเอียดของไฟล์ (จุดต่อนิ้ว) ที่ระดับนี้ภาพคมชัดเหมาะกับงานพิมพ์
- **ไม่มีขอบ (borderless)** ตัวเลือกพิมพ์ให้ภาพเต็มกระดาษ ไม่เว้นขอบขาวของเครื่องพิมพ์
- **ขนาดจริง (actual size)** พิมพ์ตามขนาดไฟล์ 100% ทำให้รูปแต่ละใบได้ขนาดตรงตามที่กำหนด
- **พอดีหน้ากระดาษ (fit to page)** ตัวเลือกที่ย่อหรือขยายภาพตามกระดาษ ไม่ควรใช้ เพราะขนาดรูปจะเพี้ยน
- **เส้นสีเทาและช่องว่าง** เส้นกรอบรอบแต่ละรูปและช่องว่างสีขาว 2 mm ไว้เป็นแนวตัด โดยเฉพาะรูปพื้นหลังขาวที่มองไม่เห็นขอบบนกระดาษขาว
- **แนวตั้ง / แนวนอน** ทิศทางของแผ่นที่ระบบเลือกให้ เพื่อจัดรูปลงกระดาษได้มากที่สุด
- **JPG / PNG** JPG ไฟล์เล็ก ส่งร้านพิมพ์ได้สะดวก ส่วน PNG คมชัดไม่บีบอัดแบบสูญเสียคุณภาพ แต่ไฟล์ใหญ่กว่า