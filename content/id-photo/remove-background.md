---
title: ลบพื้นหลังรูปติดบัตรออนไลน์ ฟรี
h1: ลบพื้นหลังรูปติดบัตรออนไลน์
description: ลบพื้นหลังรูปติดบัตรออนไลน์ เปลี่ยนเป็นสีขาว ฟ้า หรือแดงล้วนได้ทันที ประมวลผลในเบราว์เซอร์ รูปไม่ถูกอัปโหลด ปรับขนาดได้ ภาพคมชัด ใช้ฟรี ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-10T09:00:00+07:00'
weight: 96
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ลบพื้นหลังรูปติดบัตรออนไลน์
- รูปภาพ
---

เปลี่ยนพื้นหลังรูปติดบัตรเป็นสีขาว ฟ้า หรือแดงล้วนได้ในไม่กี่วินาที ลากรูปมาวาง ปรับตำแหน่งใบหน้า แล้วดาวน์โหลดได้ทันที รูปของคุณถูกประมวลผลในเบราว์เซอร์ ไม่ถูกส่งไปยังเซิร์ฟเวอร์

<style>
.bgrm{--bg-accent:#2563eb;max-width:760px;margin:1.5rem 0;font-size:1rem;line-height:1.5}
.bgrm *{box-sizing:border-box}
.bgrm-drop{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:.35rem;min-height:150px;padding:1.25rem;border:2px dashed rgba(128,128,128,.55);border-radius:12px;text-align:center;cursor:pointer}
.bgrm-drop.is-over,.bgrm-drop:focus-within{border-color:var(--bg-accent);background:rgba(37,99,235,.08)}
.bgrm-drop input{position:absolute;width:1px;height:1px;opacity:0;overflow:hidden}
.bgrm-hint{font-size:.875rem;opacity:.75}
.bgrm-status{min-height:1.5rem;margin:.75rem 0;font-size:.9375rem}
.bgrm-status.is-error{color:#c62828;font-weight:600}
.bgrm-panel{display:none;grid-template-columns:minmax(0,1fr);gap:1rem}
.bgrm-panel.is-on{display:grid}
@media (min-width:720px){.bgrm-panel.is-on{grid-template-columns:minmax(0,1.1fr) minmax(0,1fr)}}
.bgrm-stage{display:flex;justify-content:center;align-items:flex-start;padding:.75rem;border:1px solid rgba(128,128,128,.35);border-radius:12px;background:repeating-conic-gradient(rgba(128,128,128,.12) 0 25%,transparent 0 50%) 0 0/16px 16px}
.bgrm-stage canvas{display:block;max-width:100%;max-height:520px;width:auto;height:auto}
.bgrm-ctrl{display:flex;flex-direction:column;gap:.9rem}
.bgrm-field{display:flex;flex-direction:column;gap:.3rem}
.bgrm-field>label,.bgrm-field>span{font-weight:600;font-size:.9375rem}
.bgrm-field select,.bgrm-field input[type=range]{width:100%}
.bgrm-field select{padding:.5rem;border-radius:8px;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;font:inherit}
.bgrm-colors{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center}
.bgrm-sw{width:44px;height:44px;border-radius:50%;border:3px solid transparent;outline:1px solid rgba(128,128,128,.6);cursor:pointer;padding:0}
.bgrm-sw[aria-pressed=true]{border-color:var(--bg-accent);outline-color:var(--bg-accent)}
.bgrm-sw:focus-visible,.bgrm-btn:focus-visible{outline:3px solid var(--bg-accent);outline-offset:2px}
.bgrm-custom{width:44px;height:44px;padding:0;border:0;background:none;cursor:pointer}
.bgrm-row{display:flex;gap:.5rem;flex-wrap:wrap}
.bgrm-btn{flex:1 1 auto;min-height:44px;padding:.6rem 1.1rem;border-radius:8px;border:1px solid var(--bg-accent);background:var(--bg-accent);color:#fff;font:inherit;font-weight:600;cursor:pointer}
.bgrm-btn.is-ghost{background:transparent;color:inherit;border-color:rgba(128,128,128,.6)}
.bgrm-btn:disabled{opacity:.5;cursor:not-allowed}
</style>
<div class="bgrm" id="bgrm">
<label class="bgrm-drop" id="bgrm-drop" for="bgrm-file">
<strong>ลากรูปมาวางที่นี่ หรือกดเพื่อเลือกไฟล์</strong>
<span class="bgrm-hint">กด Ctrl+V เพื่อวางรูปจากคลิปบอร์ด · รองรับ JPG, PNG, WebP</span>
<input type="file" id="bgrm-file" accept="image/*">
</label>
<div class="bgrm-status" id="bgrm-status" role="status" aria-live="polite"></div>
<div class="bgrm-panel" id="bgrm-panel">
<div class="bgrm-stage"><canvas id="bgrm-canvas" width="413" height="531" aria-label="ตัวอย่างรูปติดบัตรที่เปลี่ยนพื้นหลังแล้ว"></canvas></div>
<div class="bgrm-ctrl">
<div class="bgrm-field">
<span id="bgrm-lbl-color">สีพื้นหลัง</span>
<div class="bgrm-colors" role="group" aria-labelledby="bgrm-lbl-color">
<button type="button" class="bgrm-sw" data-color="#ffffff" style="background:#ffffff" aria-pressed="true" aria-label="สีขาว" title="ขาว"></button>
<button type="button" class="bgrm-sw" data-color="#2f6fd6" style="background:#2f6fd6" aria-pressed="false" aria-label="สีฟ้า" title="ฟ้า"></button>
<button type="button" class="bgrm-sw" data-color="#d62d2d" style="background:#d62d2d" aria-pressed="false" aria-label="สีแดง" title="แดง"></button>
<input type="color" class="bgrm-custom" id="bgrm-custom" value="#cccccc" aria-label="เลือกสีเอง" title="เลือกสีเอง">
</div>
</div>
<div class="bgrm-field">
<label for="bgrm-size">ขนาดรูป</label>
<select id="bgrm-size">
<option value="413x531">35 × 45 มม. (413 × 531 px)</option>
<option value="295x354">1 นิ้ว 25 × 30 มม. (295 × 354 px)</option>
<option value="600x600">2 × 2 นิ้ว (600 × 600 px)</option>
<option value="orig">ขนาดเดิม</option>
</select>
</div>
<div class="bgrm-field">
<label for="bgrm-zoom">ซูม</label>
<input type="range" id="bgrm-zoom" min="100" max="300" value="100">
</div>
<div class="bgrm-field">
<label for="bgrm-pos">ตำแหน่งแนวตั้ง</label>
<input type="range" id="bgrm-pos" min="0" max="100" value="50">
</div>
<div class="bgrm-field">
<label for="bgrm-thr">ความเข้มของการตัด</label>
<input type="range" id="bgrm-thr" min="20" max="80" value="50">
</div>
<div class="bgrm-field">
<label for="bgrm-feather">ความนุ่มของขอบ</label>
<input type="range" id="bgrm-feather" min="0" max="100" value="30">
</div>
<div class="bgrm-field">
<label for="bgrm-fmt">รูปแบบไฟล์</label>
<select id="bgrm-fmt">
<option value="jpg">JPG</option>
<option value="png">PNG</option>
</select>
</div>
<div class="bgrm-row">
<button type="button" class="bgrm-btn" id="bgrm-dl">ดาวน์โหลด</button>
<button type="button" class="bgrm-btn is-ghost" id="bgrm-reset">เริ่มใหม่</button>
</div>
</div>
</div>
</div>
<script>
(function () {
  'use strict';
  var SEG_BASE = 'https://cdn.jsdelivr.net/npm/@mediapipe/selfie_segmentation@0.1.1675465747/';
  var MAXD = 1280;
  var $ = function (id) { return document.getElementById(id); };
  var root = $('bgrm');
  if (!root) { return; }
  var el = {
    drop: $('bgrm-drop'), file: $('bgrm-file'), status: $('bgrm-status'), panel: $('bgrm-panel'),
    canvas: $('bgrm-canvas'), custom: $('bgrm-custom'), size: $('bgrm-size'), zoom: $('bgrm-zoom'),
    pos: $('bgrm-pos'), thr: $('bgrm-thr'), feather: $('bgrm-feather'), fmt: $('bgrm-fmt'),
    dl: $('bgrm-dl'), reset: $('bgrm-reset')
  };
  var ctx = el.canvas.getContext('2d');
  var st = { work: null, src: null, mask: null, cut: null, seg: null, segPromise: null, pending: null, color: '#ffffff', name: 'id-photo', busy: false, raf: 0 };
  function say(msg, isErr) {
    el.status.textContent = msg || '';
    el.status.className = 'bgrm-status' + (isErr ? ' is-error' : '');
  }
  function loadScript(src) {
    return new Promise(function (resolve, reject) {
      var s = document.createElement('script');
      s.src = src;
      s.async = true;
      s.crossOrigin = 'anonymous';
      s.onload = resolve;
      s.onerror = function () { reject(new Error('โหลดสคริปต์ไม่สำเร็จ')); };
      document.head.appendChild(s);
    });
  }
  function getSeg() {
    if (st.segPromise) { return st.segPromise; }
    st.segPromise = loadScript(SEG_BASE + 'selfie_segmentation.js').then(function () {
      if (typeof window.SelfieSegmentation !== 'function') { throw new Error('โมเดลตัดพื้นหลังไม่พร้อมใช้งาน'); }
      var seg = new window.SelfieSegmentation({ locateFile: function (f) { return SEG_BASE + f; } });
      seg.setOptions({ modelSelection: 0 });
      seg.onResults(function (r) { if (st.pending) { st.pending(r); st.pending = null; } });
      return seg.initialize().then(function () { st.seg = seg; return seg; });
    }).catch(function (e) { st.segPromise = null; throw e; });
    return st.segPromise;
  }
  function segment(canvas) {
    return getSeg().then(function (seg) {
      return new Promise(function (resolve, reject) {
        st.pending = resolve;
        seg.send({ image: canvas }).catch(reject);
      });
    });
  }
  function readMask(result, w, h) {
    var c = document.createElement('canvas');
    c.width = w; c.height = h;
    var x = c.getContext('2d');
    x.drawImage(result.segmentationMask, 0, 0, w, h);
    var d = x.getImageData(0, 0, w, h).data;
    var n = w * h, minA = 255, i;
    for (i = 3; i < d.length; i += 4) { if (d[i] < minA) { minA = d[i]; } }
    var useAlpha = minA < 250;
    var m = new Uint8Array(n);
    for (i = 0; i < n; i++) { m[i] = useAlpha ? d[i * 4 + 3] : d[i * 4]; }
    return m;
  }
  function buildCut() {
    if (!st.src || !st.mask) { return; }
    var w = st.work.width, h = st.work.height;
    var thr = el.thr.value / 100;
    var f = 0.02 + (el.feather.value / 100) * 0.3;
    var out = new ImageData(new Uint8ClampedArray(st.src.data), w, h);
    var d = out.data, m = st.mask, n = w * h, i, t, v;
    for (i = 0; i < n; i++) {
      v = m[i] / 255;
      t = (v - (thr - f)) / (2 * f);
      t = t < 0 ? 0 : (t > 1 ? 1 : t);
      d[i * 4 + 3] = Math.round(d[i * 4 + 3] * t * t * (3 - 2 * t));
    }
    if (!st.cut) { st.cut = document.createElement('canvas'); }
    st.cut.width = w; st.cut.height = h;
    st.cut.getContext('2d').putImageData(out, 0, 0);
  }
  function render() {
    if (!st.cut) { return; }
    var iw = st.work.width, ih = st.work.height, W, H;
    if (el.size.value === 'orig') { W = iw; H = ih; }
    else { var p = el.size.value.split('x'); W = parseInt(p[0], 10); H = parseInt(p[1], 10); }
    el.canvas.width = W; el.canvas.height = H;
    ctx.fillStyle = st.color;
    ctx.fillRect(0, 0, W, H);
    var s = Math.max(W / iw, H / ih) * (el.zoom.value / 100);
    var dw = iw * s, dh = ih * s;
    var x = (W - dw) / 2;
    var y = (H - dh) * (el.pos.value / 100);
    ctx.imageSmoothingEnabled = true;
    ctx.imageSmoothingQuality = 'high';
    ctx.drawImage(st.cut, x, y, dw, dh);
  }
  function schedule(rebuild) {
    if (st.raf) { cancelAnimationFrame(st.raf); }
    st.raf = requestAnimationFrame(function () {
      st.raf = 0;
      if (rebuild) { buildCut(); }
      render();
    });
  }
  function handleFile(file) {
    if (!file || !/^image\//.test(file.type)) { say('กรุณาเลือกไฟล์รูปภาพ (JPG, PNG, WebP)', true); return; }
    if (st.busy) { return; }
    st.busy = true;
    st.name = (file.name || 'id-photo').replace(/\.[^.]+$/, '') || 'id-photo';
    el.panel.classList.remove('is-on');
    say('กำลังเปิดรูป...');
    var url = URL.createObjectURL(file);
    var img = new Image();
    img.onload = function () {
      URL.revokeObjectURL(url);
      var sc = Math.min(1, MAXD / Math.max(img.naturalWidth, img.naturalHeight));
      var w = Math.max(1, Math.round(img.naturalWidth * sc));
      var h = Math.max(1, Math.round(img.naturalHeight * sc));
      var work = document.createElement('canvas');
      work.width = w; work.height = h;
      var wx = work.getContext('2d');
      wx.drawImage(img, 0, 0, w, h);
      st.work = work;
      st.src = wx.getImageData(0, 0, w, h);
      say('กำลังโหลดโมเดลตัดพื้นหลัง (ครั้งแรกประมาณ 7 MB) และประมวลผล...');
      segment(work).then(function (r) {
        st.mask = readMask(r, w, h);
        buildCut();
        render();
        el.panel.classList.add('is-on');
        say('เสร็จแล้ว ตรวจดูขอบผมก่อนดาวน์โหลด');
      }).catch(function (e) {
        say('ประมวลผลไม่สำเร็จ: ' + (e && e.message ? e.message : 'ไม่ทราบสาเหตุ') + ' ตรวจสอบอินเทอร์เน็ตแล้วลองใหม่', true);
      }).then(function () { st.busy = false; });
    };
    img.onerror = function () {
      URL.revokeObjectURL(url);
      st.busy = false;
      say('เปิดรูปนี้ไม่ได้ ลองใช้ไฟล์ JPG หรือ PNG', true);
    };
    img.src = url;
  }
  el.file.addEventListener('change', function () { handleFile(el.file.files && el.file.files[0]); el.file.value = ''; });
  ['dragenter', 'dragover'].forEach(function (ev) {
    el.drop.addEventListener(ev, function (e) { e.preventDefault(); el.drop.classList.add('is-over'); });
  });
  ['dragleave', 'drop'].forEach(function (ev) {
    el.drop.addEventListener(ev, function (e) { e.preventDefault(); el.drop.classList.remove('is-over'); });
  });
  el.drop.addEventListener('drop', function (e) { handleFile(e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0]); });
  document.addEventListener('paste', function (e) {
    var items = (e.clipboardData && e.clipboardData.items) || [];
    for (var i = 0; i < items.length; i++) {
      if (items[i].kind === 'file' && /^image\//.test(items[i].type)) { handleFile(items[i].getAsFile()); e.preventDefault(); return; }
    }
  });
  var sws = root.querySelectorAll('.bgrm-sw');
  function setColor(c) {
    st.color = c;
    for (var i = 0; i < sws.length; i++) { sws[i].setAttribute('aria-pressed', sws[i].getAttribute('data-color') === c ? 'true' : 'false'); }
    schedule(false);
  }
  for (var k = 0; k < sws.length; k++) {
    sws[k].addEventListener('click', function () { setColor(this.getAttribute('data-color')); });
  }
  el.custom.addEventListener('input', function () { setColor(el.custom.value); });
  el.size.addEventListener('change', function () { schedule(false); });
  el.zoom.addEventListener('input', function () { schedule(false); });
  el.pos.addEventListener('input', function () { schedule(false); });
  el.thr.addEventListener('input', function () { schedule(true); });
  el.feather.addEventListener('input', function () { schedule(true); });
  el.dl.addEventListener('click', function () {
    if (!st.cut) { return; }
    var png = el.fmt.value === 'png';
    el.canvas.toBlob(function (blob) {
      if (!blob) { say('สร้างไฟล์ไม่สำเร็จ ลองใหม่อีกครั้ง', true); return; }
      var a = document.createElement('a');
      var u = URL.createObjectURL(blob);
      a.href = u;
      a.download = st.name + '-bg.' + (png ? 'png' : 'jpg');
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      setTimeout(function () { URL.revokeObjectURL(u); }, 1000);
    }, png ? 'image/png' : 'image/jpeg', 0.95);
  });
  el.reset.addEventListener('click', function () {
    st.work = st.src = st.mask = st.cut = null;
    el.zoom.value = 100; el.pos.value = 50; el.thr.value = 50; el.feather.value = 30;
    el.panel.classList.remove('is-on');
    setColor('#ffffff');
    say('');
  });
})();
</script>

## วิธีใช้งาน

1. **เลือกรูป** ลากไฟล์มาวางในกรอบด้านบน กดเพื่อเลือกไฟล์จากเครื่อง หรือกด Ctrl+V เพื่อวางรูปที่คัดลอกไว้ แนะนำรูปที่ถ่ายตรง แสงสว่างพอ และพื้นหลังเรียบ
2. **รอประมวลผล** การใช้งานครั้งแรกจะโหลดโมเดลตัดพื้นหลังประมาณ 7 MB หลังจากนั้นจะเร็วขึ้น
3. **เลือกสีพื้นหลัง** กดสีขาว ฟ้า หรือแดงตามที่เอกสารกำหนด หรือกดช่องสีสุดท้ายเพื่อเลือกสีเอง
4. **เลือกขนาดรูป** เลือกขนาดมาตรฐานที่ต้องการ หรือเลือก "ขนาดเดิม" เพื่อคงสัดส่วนของรูปต้นฉบับ
5. **จัดตำแหน่ง** ใช้ตัวเลื่อนซูมและตำแหน่งแนวตั้งให้ศีรษะและไหล่อยู่ในกรอบพอดี
6. **ปรับขอบ** หากมีขอบขาวหรือเงาค้างที่เส้นผม ให้ลองปรับความเข้มของการตัดและความนุ่มของขอบ
7. **ดาวน์โหลด** เลือก JPG หรือ PNG แล้วกดดาวน์โหลด ก่อนยื่นเอกสารควรตรวจสอบเงื่อนไขของหน่วยงานที่รับรูปอีกครั้ง

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **พื้นหลัง** คือสีด้านหลังตัวบุคคลในรูป รูปติดบัตรส่วนใหญ่ต้องใช้สีเรียบ เช่น ขาว ฟ้า หรือแดง ตามที่หน่วยงานกำหนด
- **ลบพื้นหลัง** คือการแยกตัวบุคคลออกจากฉากเดิม แล้วนำไปวางบนสีพื้นหลังใหม่
- **ขนาดรูป (มม. / px)** มม. คือขนาดจริงเมื่อพิมพ์ ส่วน px (พิกเซล) คือจำนวนจุดภาพของไฟล์ ซึ่งยิ่งมากภาพยิ่งละเอียด
- **ซูม** คือการขยายภาพเข้าใกล้ใบหน้า ใช้เมื่อใบหน้าเล็กเกินไปในกรอบ
- **ตำแหน่งแนวตั้ง** คือการเลื่อนภาพขึ้นหรือลงภายในกรอบ ใช้ได้เมื่อซูมเข้าไปแล้ว
- **ความเข้มของการตัด** คือระดับความเข้มงวดในการตัดขอบตัวบุคคล ค่าสูงตัดพื้นหลังออกมากขึ้น ค่าต่ำเก็บส่วนของตัวบุคคลไว้มากขึ้น
- **ความนุ่มของขอบ** คือความเนียนของรอยต่อระหว่างตัวบุคคลกับพื้นหลัง ช่วยลดขอบแข็งหรือรอยหยักตามเส้นผม
- **รูปแบบไฟล์ JPG** คือไฟล์ขนาดเล็ก เหมาะกับการอัปโหลดหรือแนบเอกสารส่วนใหญ่
- **รูปแบบไฟล์ PNG** คือไฟล์คุณภาพคมชัดไม่สูญเสียรายละเอียด ขนาดไฟล์ใหญ่กว่า JPG
- **ประมวลผลในเบราว์เซอร์** คือการทำงานบนอุปกรณ์ของคุณเอง รูปจึงไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์