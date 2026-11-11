---
title: ปรับรูปเอียงให้ตรง ออนไลน์ ฟรี
h1: ปรับรูปเอียงให้ตรง ออนไลน์
description: ปรับรูปเอียงให้ตรง ออนไลน์ฟรี หมุนภาพ -45° ถึง +45° ดูผลทันที แก้เส้นขอบฟ้าเอียง ตึกเอียง เอกสารสแกนเอียง รองรับ JPG, PNG, WebP, HEIC ไม่ต้องอัปโหลดไฟล์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-11T08:47:00+07:00'
weight: 102
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ปรับรูปเอียงให้ตรง ออนไลน์
- รูปภาพ
---

<style>
.stt{max-width:860px;margin:0 auto 1.5rem;font-family:inherit}
.stt *{box-sizing:border-box}
.stt-drop{border:2px dashed #94a3b8;border-radius:14px;padding:2.2rem 1rem;text-align:center;cursor:pointer;background:rgba(148,163,184,.08);transition:background .15s,border-color .15s}
.stt-drop.stt-over{background:rgba(59,130,246,.12);border-color:#3b82f6}
.stt-drop .stt-ico{font-size:2.2rem;line-height:1}
.stt-drop p{margin:.4rem 0 0}
.stt-drop .stt-sub{font-size:.85rem;opacity:.7}
.stt-btn{display:inline-block;padding:.5rem 1.1rem;border:0;border-radius:8px;background:#2563eb;color:#fff;font-size:.95rem;cursor:pointer;font-family:inherit}
.stt-btn:hover{background:#1d4ed8}
.stt-btn.stt-sec{background:rgba(148,163,184,.25);color:inherit}
.stt-btn.stt-sec:hover{background:rgba(148,163,184,.4)}
.stt-btn[disabled]{opacity:.45;cursor:not-allowed}
.stt-bar{display:flex;flex-wrap:wrap;align-items:center;gap:.6rem;margin:.8rem 0}
.stt-seg{display:inline-flex;border:1px solid rgba(148,163,184,.6);border-radius:8px;overflow:hidden}
.stt-seg button{border:0;padding:.45rem .9rem;background:transparent;color:inherit;cursor:pointer;font-size:.9rem;font-family:inherit}
.stt-seg button.stt-on{background:#2563eb;color:#fff}
.stt-angle{display:flex;align-items:center;gap:.5rem;flex:1 1 320px}
.stt-angle input[type=range]{flex:1;min-width:140px}
.stt-val{min-width:4.2rem;text-align:center;font-variant-numeric:tabular-nums;font-weight:600}
.stt-stage{position:relative;display:flex;justify-content:center;align-items:center;padding:.8rem;border-radius:12px;background:repeating-conic-gradient(rgba(148,163,184,.18) 0% 25%,transparent 0% 50%) 50%/20px 20px;min-height:160px}
.stt-wrap{position:relative;display:inline-block;max-width:100%;line-height:0}
.stt-wrap canvas{max-width:100%;height:auto;display:block}
.stt-grid{position:absolute;inset:0;pointer-events:none;display:none;background-image:linear-gradient(rgba(255,255,255,.75) 1px,transparent 1px),linear-gradient(90deg,rgba(255,255,255,.75) 1px,transparent 1px);background-size:10% 10%;mix-blend-mode:difference}
.stt-grid.stt-show{display:block}
.stt-info{display:flex;flex-wrap:wrap;justify-content:space-between;align-items:center;gap:.6rem;margin-top:.8rem}
.stt-size{font-size:.9rem;opacity:.75;font-variant-numeric:tabular-nums}
.stt-chk{display:inline-flex;align-items:center;gap:.35rem;font-size:.9rem;cursor:pointer}
.stt-msg{margin:.5rem 0 0;font-size:.9rem;min-height:1.2em}
.stt-hide{display:none!important}
</style>
<div class="stt" id="stt-app">
<div class="stt-drop" id="stt-drop" tabindex="0" role="button" aria-label="เลือกรูปภาพ">
<div class="stt-ico">📁</div>
<p><span class="stt-btn" id="stt-pick">เลือก…</span></p>
<p>ลากรูปภาพมาที่นี่ หรือ Ctrl+V เพื่อวาง</p>
<p class="stt-sub">รองรับ JPG, PNG, WebP, GIF และ HEIC</p>
<input type="file" id="stt-file" accept="image/*,.heic,.heif" class="stt-hide">
</div>
<div id="stt-work" class="stt-hide">
<div class="stt-bar">
<div class="stt-seg" role="group" aria-label="โหมด">
<button type="button" id="stt-m-crop" class="stt-on">ครอปอัตโนมัติ</button>
<button type="button" id="stt-m-tilt">เอียง</button>
</div>
<div class="stt-angle">
<button type="button" class="stt-btn stt-sec" id="stt-minus" aria-label="ลด 0.1 องศา">−0.1</button>
<input type="range" id="stt-range" min="-45" max="45" step="0.1" value="0" aria-label="มุมการหมุน">
<button type="button" class="stt-btn stt-sec" id="stt-plus" aria-label="เพิ่ม 0.1 องศา">+0.1</button>
<span class="stt-val" id="stt-val">0.0°</span>
</div>
<button type="button" class="stt-btn stt-sec" id="stt-reset">รีเซ็ต</button>
</div>
<div class="stt-stage">
<div class="stt-wrap">
<canvas id="stt-canvas" width="300" height="200"></canvas>
<div class="stt-grid" id="stt-grid"></div>
</div>
</div>
<div class="stt-info">
<span class="stt-size" id="stt-size">0 × 0px</span>
<label class="stt-chk"><input type="checkbox" id="stt-gridchk"> เส้นกริด</label>
<span>
<button type="button" class="stt-btn" id="stt-dl">ดาวน์โหลด</button>
<button type="button" class="stt-btn stt-sec" id="stt-copy">คัดลอกรูปภาพ</button>
<button type="button" class="stt-btn stt-sec" id="stt-clear">ล้าง</button>
</span>
</div>
</div>
<p class="stt-msg" id="stt-msg" role="status" aria-live="polite"></p>
</div>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var drop = $("stt-drop"), fileIn = $("stt-file"), work = $("stt-work");
  var canvas = $("stt-canvas"), ctx = canvas.getContext("2d");
  var range = $("stt-range"), val = $("stt-val"), sizeEl = $("stt-size");
  var msg = $("stt-msg"), grid = $("stt-grid");
  var img = null, angle = 0, autoCrop = true, rafId = 0;
  var PREVIEW_MAX = 1100;
  function say(t) { msg.textContent = t || ""; }
  function layout(w, h, deg, crop) {
    var a = Math.abs(deg) * Math.PI / 180;
    var s = Math.abs(Math.sin(a)), c = Math.abs(Math.cos(a));
    if (!crop || s === 0) {
      if (!crop) {
        return { w: Math.round(w * c + h * s), h: Math.round(w * s + h * c) };
      }
      return { w: w, h: h };
    }
    var longIsW = w >= h;
    var sideLong = longIsW ? w : h;
    var sideShort = longIsW ? h : w;
    var rw, rh;
    if (2 * s * c * sideLong >= sideShort || Math.abs(s - c) === 0) {
      var x = 0.5 * sideShort;
      rw = longIsW ? x / s : x / c;
      rh = longIsW ? x / c : x / s;
    } else {
      var cos2 = c * c - s * s;
      rw = (w * c - h * s) / cos2;
      rh = (h * c - w * s) / cos2;
    }
    return { w: Math.max(1, Math.round(rw)), h: Math.max(1, Math.round(rh)) };
  }
  function draw(target, scale) {
    var iw = img.naturalWidth || img.width, ih = img.naturalHeight || img.height;
    var L = layout(iw, ih, angle, autoCrop);
    var ow = Math.max(1, Math.round(L.w * scale));
    var oh = Math.max(1, Math.round(L.h * scale));
    target.width = ow;
    target.height = oh;
    var g = target.getContext("2d");
    g.clearRect(0, 0, ow, oh);
    g.imageSmoothingEnabled = true;
    g.imageSmoothingQuality = "high";
    g.save();
    g.translate(ow / 2, oh / 2);
    g.rotate(angle * Math.PI / 180);
    g.drawImage(img, -iw * scale / 2, -ih * scale / 2, iw * scale, ih * scale);
    g.restore();
    return L;
  }
  function render() {
    if (!img) { return; }
    var iw = img.naturalWidth || img.width, ih = img.naturalHeight || img.height;
    var big = Math.max(iw, ih);
    var scale = big > PREVIEW_MAX ? PREVIEW_MAX / big : 1;
    var L = draw(canvas, scale);
    sizeEl.textContent = L.w + " × " + L.h + "px";
    val.textContent = angle.toFixed(1) + "°";
  }
  function schedule() {
    if (rafId) { return; }
    rafId = requestAnimationFrame(function () { rafId = 0; render(); });
  }
  function setAngle(v) {
    v = Math.max(-45, Math.min(45, Math.round(v * 10) / 10));
    angle = v;
    range.value = String(v);
    schedule();
  }
  function setMode(crop) {
    autoCrop = crop;
    $("stt-m-crop").className = crop ? "stt-on" : "";
    $("stt-m-tilt").className = crop ? "" : "stt-on";
    schedule();
  }
  function showImage(src, revoke) {
    var im = new Image();
    im.onload = function () {
      img = im;
      drop.classList.add("stt-hide");
      work.classList.remove("stt-hide");
      setAngle(0);
      setMode(true);
      render();
      say("");
      if (revoke) { URL.revokeObjectURL(src); }
    };
    im.onerror = function () {
      if (revoke) { URL.revokeObjectURL(src); }
      say("ไม่สามารถเปิดไฟล์นี้ได้ ลองใช้ไฟล์ JPG, PNG หรือ WebP (HEIC ใช้ได้เฉพาะเบราว์เซอร์ที่รองรับ)");
    };
    im.src = src;
  }
  function loadFile(file) {
    if (!file) { return; }
    var name = (file.name || "").toLowerCase();
    var okType = (file.type && file.type.indexOf("image/") === 0) || /\.(heic|heif)$/.test(name);
    if (!okType) { say("กรุณาเลือกไฟล์รูปภาพ"); return; }
    if (/\.(heic|heif)$/.test(name) || /heic|heif/.test(file.type || "")) {
      say("กำลังแปลง HEIC...");
    }
    showImage(URL.createObjectURL(file), true);
  }
  function clearAll() {
    img = null;
    work.classList.add("stt-hide");
    drop.classList.remove("stt-hide");
    fileIn.value = "";
    canvas.width = 300;
    canvas.height = 200;
    say("");
  }
  function toBlob(cb) {
    var full = document.createElement("canvas");
    draw(full, 1);
    full.toBlob(function (b) { cb(b); }, "image/png");
  }
  drop.addEventListener("click", function () { fileIn.click(); });
  drop.addEventListener("keydown", function (e) {
    if (e.key === "Enter" || e.key === " ") { e.preventDefault(); fileIn.click(); }
  });
  fileIn.addEventListener("click", function (e) { e.stopPropagation(); });
  fileIn.addEventListener("change", function () { loadFile(fileIn.files && fileIn.files[0]); });
  ["dragenter", "dragover"].forEach(function (n) {
    drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.add("stt-over"); });
  });
  ["dragleave", "drop"].forEach(function (n) {
    drop.addEventListener(n, function (e) { e.preventDefault(); drop.classList.remove("stt-over"); });
  });
  drop.addEventListener("drop", function (e) {
    var f = e.dataTransfer && e.dataTransfer.files;
    if (f && f.length) { loadFile(f[0]); }
  });
  document.addEventListener("paste", function (e) {
    var items = e.clipboardData && e.clipboardData.items;
    if (!items) { return; }
    for (var i = 0; i !== items.length; i++) {
      if (items[i].kind === "file" && items[i].type.indexOf("image/") === 0) {
        loadFile(items[i].getAsFile());
        e.preventDefault();
        return;
      }
    }
  });
  range.addEventListener("input", function () { setAngle(parseFloat(range.value) || 0); });
  $("stt-minus").addEventListener("click", function () { setAngle(angle - 0.1); });
  $("stt-plus").addEventListener("click", function () { setAngle(angle + 0.1); });
  $("stt-reset").addEventListener("click", function () { setAngle(0); });
  $("stt-m-crop").addEventListener("click", function () { setMode(true); });
  $("stt-m-tilt").addEventListener("click", function () { setMode(false); });
  $("stt-gridchk").addEventListener("change", function () {
    grid.classList.toggle("stt-show", this.checked);
  });
  $("stt-clear").addEventListener("click", clearAll);
  $("stt-dl").addEventListener("click", function () {
    if (!img) { return; }
    toBlob(function (b) {
      if (!b) { say("สร้างไฟล์ไม่สำเร็จ"); return; }
      var url = URL.createObjectURL(b);
      var a = document.createElement("a");
      a.href = url;
      a.download = "straightened.png";
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(url); }, 2000);
      say("ดาวน์โหลดแล้ว");
    });
  });
  $("stt-copy").addEventListener("click", function () {
    if (!img) { return; }
    if (!navigator.clipboard || typeof ClipboardItem === "undefined") {
      say("เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูปภาพ กรุณาใช้ปุ่มดาวน์โหลดแทน");
      return;
    }
    toBlob(function (b) {
      if (!b) { say("สร้างรูปภาพไม่สำเร็จ"); return; }
      navigator.clipboard.write([new ClipboardItem({ "image/png": b })]).then(
        function () { say("คัดลอกรูปภาพแล้ว"); },
        function () { say("คัดลอกไม่สำเร็จ กรุณาใช้ปุ่มดาวน์โหลดแทน"); }
      );
    });
  });
})();
</script>

ปรับภาพเอียงให้ตรงทันทีในเบราว์เซอร์ ไม่ต้องอัปโหลด ไม่ต้องใช้เซิร์ฟเวอร์ ไม่ต้องรอ แก้เส้นขอบฟ้าที่เอียง ปรับภาพสถาปัตยกรรมที่เอียง หรือแก้เอกสารสแกนที่เอียง ปรับมุมด้วยแถบเลื่อนละเอียดตั้งแต่ −45° ถึง +45° และดูผลลัพธ์แบบเรียลไทม์ ไฟล์ของคุณอยู่บนอุปกรณ์และประมวลผลทั้งหมดในเบราว์เซอร์

## วิธีใช้งาน

1. **เลือกรูปภาพ** คลิกปุ่ม "เลือก…" ลากไฟล์มาวางในกรอบ หรือกด Ctrl+V เพื่อวางรูปที่คัดลอกไว้
2. **ปรับมุม** ลากแถบเลื่อนไปทางซ้ายหรือขวาเพื่อหมุนภาพทีละน้อย หรือกดปุ่ม −0.1 / +0.1 เพื่อปรับละเอียดทีละ 0.1 องศา
3. **ใช้เส้นกริดช่วยเทียบ** เปิด "เส้นกริด" แล้วดูว่าเส้นขอบฟ้า ขอบตึก หรือขอบกระดาษขนานกับเส้นกริดหรือยัง
4. **เลือกโหมดผลลัพธ์** โหมด "ครอปอัตโนมัติ" (ค่าเริ่มต้น) จะตัดมุมโปร่งใสออกให้ได้ภาพสี่เหลี่ยมสะอาด ส่วนโหมด "เอียง" จะเก็บพื้นที่ภาพที่หมุนไว้ทั้งหมด
5. **รีเซ็ตถ้าต้องการเริ่มใหม่** กด "รีเซ็ต" เพื่อกลับไปที่ 0°
6. **บันทึกผลลัพธ์** กด "ดาวน์โหลด" เพื่อบันทึกเป็นไฟล์ PNG หรือกด "คัดลอกรูปภาพ" เพื่อนำไปวางในแอปอื่น และกด "ล้าง" เมื่อต้องการเปลี่ยนรูปใหม่

## ความหมายของคำศัพท์

- **ปรับรูปเอียง (Straighten)** การหมุนภาพเล็กน้อยเพื่อแก้เส้นแนวนอนหรือแนวตั้งที่เอียง เช่น เส้นขอบฟ้า ขอบตึก หรือขอบเอกสาร
- **แถบเลื่อนมุม** แถบที่ใช้กำหนดองศาการหมุน ปรับได้ตั้งแต่ −45° ถึง +45° ค่าบวกหมุนตามเข็มนาฬิกา ค่าลบหมุนทวนเข็มนาฬิกา
- **องศา (°)** หน่วยวัดมุมการหมุน ค่า 0° คือภาพต้นฉบับ ยิ่งค่าเยอะภาพยิ่งหมุนมาก
- **ครอปอัตโนมัติ** โหมดที่ตัดขอบส่วนเกินและมุมโปร่งใสที่เกิดจากการหมุนออกให้อัตโนมัติ ได้ภาพสี่เหลี่ยมพร้อมใช้ แต่ขนาดภาพจะเล็กลงเล็กน้อย
- **เอียง** โหมดที่เก็บภาพหมุนไว้ทั้งหมดโดยไม่ตัด จึงมีมุมโปร่งใสรอบภาพ เหมาะเมื่อต้องการนำไปแต่งต่อ
- **รีเซ็ต** คืนค่ามุมกลับเป็น 0° โดยไม่ต้องโหลดรูปใหม่
- **เส้นกริด** เส้นตารางซ้อนบนภาพ ใช้ช่วยเทียบว่าเส้นในภาพตรงแล้วหรือยัง ไม่ติดไปกับไฟล์ที่บันทึก
- **ดาวน์โหลด** บันทึกภาพที่ปรับแล้วลงอุปกรณ์เป็นไฟล์ PNG ขนาดเต็มตามต้นฉบับ
- **คัดลอกรูปภาพ** คัดลอกภาพที่ปรับแล้วไปยังคลิปบอร์ด เพื่อวางต่อในแชต เอกสาร หรือโปรแกรมแต่งภาพ
- **ล้าง** ลบรูปที่โหลดอยู่และกลับไปหน้าเลือกไฟล์ใหม่
- **ขนาดภาพ (px)** ความกว้าง × ความสูงของภาพผลลัพธ์ หน่วยเป็นพิกเซล ที่แสดงใต้ภาพตัวอย่าง
- **PNG** ไฟล์ภาพคุณภาพสูงแบบไม่สูญเสียรายละเอียด รองรับพื้นหลังโปร่งใส
- **พื้นหลังโปร่งใส** ส่วนมุมว่างที่เกิดขึ้นในโหมด "เอียง" แสดงเป็นลายตารางเทาในหน้าตัวอย่าง
- **HEIC** ไฟล์ภาพจาก iPhone บางรุ่น ใช้ได้เมื่อเบราว์เซอร์รองรับ เช่น Safari
- **เส้นขอบฟ้า** เส้นแบ่งระหว่างท้องฟ้ากับพื้นดินหรือทะเล เป็นเส้นอ้างอิงที่นิยมใช้เช็กว่าภาพตรงหรือไม่
- **ประมวลผลในเครื่อง** ภาพถูกแก้ไขในเบราว์เซอร์ของคุณ ไม่ถูกส่งไปยังเซิร์ฟเวอร์