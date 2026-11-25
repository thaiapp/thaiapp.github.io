---
title: ไม้บรรทัดออนไลน์ (พิกเซล) ฟรี
h1: ไม้บรรทัดออนไลน์ (พิกเซล)
description: ไม้บรรทัดออนไลน์วัดขนาดเป็นพิกเซล ซม. มม. และนิ้ว ลากกรอบวัดบนหน้าจอหรือรูปภาพได้ทันที ใช้ได้ทั้งมือถือและคอมพิวเตอร์ ฟรี ไม่ต้องสมัครสมาชิก ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-25T09:00:00+07:00'
weight: 162
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ไม้บรรทัดออนไลน์ (พิกเซล)
- ทดสอบและวัดค่า
---

<style>
.rt{color-scheme:light dark;max-width:100%}
.rt *{box-sizing:border-box}
.rt-bar{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:0 0 10px}
.rt-bar label{display:inline-flex;align-items:center;gap:6px;font-size:14px}
.rt button,.rt input,.rt select{font:inherit;font-size:14px;color:inherit;background:rgba(128,128,128,.12);border:1px solid rgba(128,128,128,.45);border-radius:6px;padding:5px 9px;margin:0}
.rt button{cursor:pointer}
.rt button:hover:not(:disabled){background:rgba(128,128,128,.28)}
.rt button:disabled,.rt input:disabled{opacity:.45;cursor:not-allowed}
.rt input[type=number]{width:88px}
.rt input[type=range]{width:120px;padding:0}
.rt :focus-visible{outline:2px solid #2f7de1;outline-offset:1px}
.rt-board{display:grid;grid-template-columns:24px minmax(0,1fr);grid-template-rows:24px 460px;border:1px solid rgba(128,128,128,.5);border-radius:6px;overflow:hidden}
.rt-corner{background:rgba(128,128,128,.22);border-right:1px solid rgba(128,128,128,.5);border-bottom:1px solid rgba(128,128,128,.5)}
.rt-rt,.rt-rl{position:relative;overflow:hidden;background:rgba(128,128,128,.12)}
.rt-rt{border-bottom:1px solid rgba(128,128,128,.5)}
.rt-rl{border-right:1px solid rgba(128,128,128,.5)}
.rt-rt canvas,.rt-rl canvas{position:absolute;left:0;top:0;width:100%;height:100%;display:block}
.rt-mk{position:absolute;background:#e5484d;pointer-events:none;display:none}
.rt-rt .rt-mk{top:0;bottom:0;width:1px}
.rt-rl .rt-mk{left:0;right:0;height:1px}
.rt-stage{position:relative;overflow:hidden;touch-action:none;cursor:crosshair;outline:none;user-select:none;-webkit-user-select:none;background:rgba(128,128,128,.07)}
.rt-img{position:absolute;left:0;top:0;max-width:none;pointer-events:none}
.rt-img[hidden],.rt-hint[hidden]{display:none}
.rt-hint{position:absolute;left:12px;right:12px;bottom:12px;margin:0;font-size:14px;opacity:.7;pointer-events:none}
.rt-f{position:absolute;border:2px solid var(--c);cursor:move}
.rt-f.on{box-shadow:0 0 0 1px var(--c)}
.rt-t{position:absolute;left:0;top:0;max-width:100%;overflow:hidden;white-space:nowrap;color:#fff;font-size:12px;font-weight:600;line-height:1.5;padding:0 5px;pointer-events:none}
.rt-h{display:none;position:absolute;width:14px;height:14px;background:#fff;border:2px solid var(--c);border-radius:3px}
.rt-f.on .rt-h{display:block}
.rh-nw{left:-9px;top:-9px;cursor:nwse-resize}
.rh-n{left:calc(50% - 7px);top:-9px;cursor:ns-resize}
.rh-ne{right:-9px;top:-9px;cursor:nesw-resize}
.rh-e{right:-9px;top:calc(50% - 7px);cursor:ew-resize}
.rh-se{right:-9px;bottom:-9px;cursor:nwse-resize}
.rh-s{left:calc(50% - 7px);bottom:-9px;cursor:ns-resize}
.rh-sw{left:-9px;bottom:-9px;cursor:nesw-resize}
.rh-w{left:-9px;top:calc(50% - 7px);cursor:ew-resize}
.rt-pos,.rt-info{margin:8px 0 0;font-size:14px}
.rt-msg{min-height:1.5em;margin:6px 0 0;font-size:14px;color:#2f7de1}
.rt-wrap{overflow-x:auto}
.rt-tb{border-collapse:collapse;width:100%;font-size:14px}
.rt-tb caption{text-align:left;padding:4px 0;font-size:13px;opacity:.75}
.rt-tb th,.rt-tb td{padding:4px 8px;text-align:right;border-bottom:1px solid rgba(128,128,128,.3)}
.rt-tb th:first-child,.rt-tb td:first-child{text-align:left}
.rt-tb tbody tr{cursor:pointer}
.rt-tb tr.on{background:rgba(47,125,225,.16)}
@media (max-width:600px){.rt-board{grid-template-rows:24px 340px}}
</style>

<div class="rt" id="rt-app">
<div class="rt-bar">
<label>หน่วย <select id="rt-unit"><option value="px">px</option><option value="mm">mm</option><option value="cm">cm</option><option value="in">in</option><option value="pt">pt</option><option value="rem">rem</option></select></label>
<label>ปัดเศษ <select id="rt-snap"><option value="0">ปิด</option><option value="5">5 px</option><option value="10">10 px</option><option value="20">20 px</option><option value="50">50 px</option></select></label>
<label>PPI <input type="number" id="rt-ppi" min="20" max="1000" step="1" value="96"></label>
<button type="button" id="rt-card">ปรับเทียบด้วยบัตร</button>
</div>
<div class="rt-bar">
<button type="button" id="rt-filebtn">โหลดรูปภาพ</button>
<input type="file" id="rt-file" accept="image/*" hidden>
<label>ซูม <input type="range" id="rt-zoom" min="10" max="400" step="5" value="100" disabled> <span id="rt-zv">100%</span></label>
<button type="button" id="rt-fit" disabled>พอดีกับพื้นที่</button>
<button type="button" id="rt-z100" disabled>100%</button>
<button type="button" id="rt-rmimg" disabled>ลบรูป</button>
</div>
<div class="rt-board">
<div class="rt-corner"></div>
<div class="rt-rt"><canvas id="rt-ct"></canvas><i class="rt-mk" id="rt-mx"></i></div>
<div class="rt-rl"><canvas id="rt-cv"></canvas><i class="rt-mk" id="rt-my"></i></div>
<div class="rt-stage" id="rt-stage" tabindex="0" aria-label="พื้นที่วัด ลากเพื่อสร้างกรอบ ใช้ปุ่มลูกศรเพื่อย้ายกรอบที่เลือก"><img class="rt-img" id="rt-img" alt="" hidden><p class="rt-hint" id="rt-hint">ลากบนพื้นที่นี้เพื่อสร้างกรอบวัด · วางรูป (Ctrl+V) หรือลากไฟล์รูปมาวางเพื่อวัดบนรูป</p></div>
</div>
<p class="rt-pos" id="rt-pos">เลื่อนเมาส์บนพื้นที่วัดเพื่อดูตำแหน่ง</p>
<p class="rt-info" id="rt-info"></p>
<div class="rt-bar" style="margin-top:10px">
<label>X <input type="number" id="rt-x" step="any" disabled></label>
<label>Y <input type="number" id="rt-y" step="any" disabled></label>
<label>กว้าง <input type="number" id="rt-w" step="any" min="0" disabled></label>
<label>สูง <input type="number" id="rt-h" step="any" min="0" disabled></label>
</div>
<div class="rt-bar">
<button type="button" id="rt-cs" disabled>คัดลอกขนาด</button>
<button type="button" id="rt-cc" disabled>คัดลอก CSS</button>
<button type="button" id="rt-clink" disabled>คัดลอกลิงก์</button>
<button type="button" id="rt-del" disabled>ลบกรอบ</button>
<button type="button" id="rt-clear" disabled>ล้างทั้งหมด</button>
</div>
<p class="rt-msg" id="rt-msg" role="status" aria-live="polite"></p>
<div class="rt-wrap" id="rt-tbl" hidden><table class="rt-tb"><caption id="rt-cap"></caption><thead><tr><th>กรอบ</th><th>X</th><th>Y</th><th>กว้าง</th><th>สูง</th><th>เส้นทแยง</th></tr></thead><tbody id="rt-rows"></tbody></table></div>
</div>

<script>
(function () {
  'use strict';
  var $ = function (id) { return document.getElementById(id); };
  var root = $('rt-app'), stage = $('rt-stage'), img = $('rt-img');
  if (!root || !stage) { return; }
  var COLORS = ['#e5484d', '#2f7de1', '#2a9d5c', '#d98a00', '#8e4ec6', '#0e9aa7', '#d6409f', '#6b7280'];
  var NICE = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000, 20000];
  var S = { unit: 'px', ppi: 96, scale: 1, snap: 0, iw: 0, ih: 0 };
  var frames = [], sel = null, drag = null, cnt = 0, msgT = 0, imgUrl = '';
  var SW = 0, SH = 0, R = null, rq = 0, rd = 0, RW = 23;
  function measure() { SW = stage.clientWidth; SH = stage.clientHeight; R = null; }
  try {
    var saved = parseFloat(localStorage.getItem('rt-ppi'));
    if (saved >= 20 && saved <= 1000) { S.ppi = saved; }
  } catch (err) { /* storage unavailable */ }

  function fac() {
    switch (S.unit) {
      case 'mm': return S.ppi / 25.4;
      case 'cm': return S.ppi / 2.54;
      case 'in': return S.ppi;
      case 'pt': return S.ppi / 72;
      case 'rem': return 16;
      default: return 1;
    }
  }
  function toU(px) { return px / fac(); }
  function fromU(v) { return v * fac(); }
  function fmt(v) {
    var d = (S.unit === 'in' || S.unit === 'rem') ? 3 : 2;
    return String(parseFloat(Number(v).toFixed(d)));
  }
  function cl(v, a, b) { return Math.min(Math.max(v, a), b); }
  function sn(v) { return S.snap ? Math.round(v / S.snap) * S.snap : Math.round(v); }
  function pt(e) {
    var r = R || (R = stage.getBoundingClientRect());
    return { x: (e.clientX - r.left) / S.scale, y: (e.clientY - r.top) / S.scale };
  }
  function say(t) {
    var m = $('rt-msg');
    m.textContent = t;
    clearTimeout(msgT);
    msgT = setTimeout(function () { m.textContent = ''; }, 3500);
  }

  function ruler(cv, horiz, w, h, col) {
    var dpr = window.devicePixelRatio || 1;
    if (!w || !h) { return; }
    cv.width = Math.round(w * dpr);
    cv.height = Math.round(h * dpr);
    var c = cv.getContext('2d');
    c.setTransform(dpr, 0, 0, dpr, 0, 0);
    c.clearRect(0, 0, w, h);
    c.strokeStyle = col; c.fillStyle = col; c.lineWidth = 1;
    c.font = '10px sans-serif'; c.textBaseline = 'top';
    var f = fac() * S.scale, i, minor = NICE[NICE.length - 1], lab = minor, q;
    for (i = 0; i < NICE.length; i++) { if (NICE[i] * f >= 3.5) { minor = NICE[i]; break; } }
    for (i = 0; i < NICE.length; i++) {
      q = NICE[i] / minor;
      if (NICE[i] >= minor && Math.abs(q - Math.round(q)) < 1e-6 && NICE[i] * f >= 36) { lab = NICE[i]; break; }
    }
    var r = Math.max(1, Math.round(lab / minor)), len = horiz ? w : h, n = Math.ceil(len / (minor * f));
    c.beginPath();
    for (i = 0; i <= n; i++) {
      var p = Math.round(i * minor * f) + 0.5, big = i % r === 0;
      var mid = !big && r % 2 === 0 && i % (r / 2) === 0;
      var L = big ? 14 : (mid ? 9 : 5);
      if (horiz) { c.moveTo(p, h); c.lineTo(p, h - L); } else { c.moveTo(w, p); c.lineTo(w - L, p); }
      if (big) {
        var txt = String(parseFloat((i * minor).toFixed(4)));
        if (horiz) { c.fillText(txt, p + 2, 2); }
        else { c.save(); c.translate(12, p + 2); c.rotate(Math.PI / 2); c.fillText(txt, 0, 0); c.restore(); }
      }
    }
    c.stroke();
  }
  function drawRulers() {
    if (rd) { return; }
    rd = requestAnimationFrame(function () {
      rd = 0;
      measure();
      var col = getComputedStyle(root).color;
      ruler($('rt-ct'), true, SW, RW, col);
      ruler($('rt-cv'), false, RW, SH, col);
    });
  }

  function mk(x, y, w, h) {
    cnt++;
    var f = { id: cnt, x: x, y: y, w: w, h: h, c: COLORS[(cnt - 1) % COLORS.length], n: String.fromCharCode(65 + ((cnt - 1) % 26)) };
    var d = document.createElement('div');
    d.className = 'rt-f';
    d.setAttribute('data-id', String(f.id));
    d.style.setProperty('--c', f.c);
    d.style.background = f.c + '26';
    var t = document.createElement('b');
    t.className = 'rt-t';
    t.style.background = f.c;
    d.appendChild(t);
    ['nw', 'n', 'ne', 'e', 'se', 's', 'sw', 'w'].forEach(function (k) {
      var hd = document.createElement('i');
      hd.className = 'rt-h rh-' + k;
      hd.setAttribute('data-h', k);
      d.appendChild(hd);
    });
    stage.appendChild(d);
    f.el = d; f.t = t;
    frames.push(f);
    return f;
  }
  function drop(f) {
    var i = frames.indexOf(f);
    if (i < 0) { return; }
    stage.removeChild(f.el);
    frames.splice(i, 1);
    if (sel === f) { sel = null; }
    render();
  }

  function setIn(id, px) {
    var e = $(id);
    if (document.activeElement !== e) { e.value = sel ? fmt(toU(px)) : ''; }
  }
  function hash() {
    try {
      var u = location.pathname + location.search;
      if (sel) { history.replaceState(null, '', u + '#' + Math.round(sel.w) + 'x' + Math.round(sel.h)); }
      else if (/^#\d+x\d+$/.test(location.hash)) { history.replaceState(null, '', u); }
    } catch (err) { /* ignore */ }
  }
  function rows() {
    var tb = $('rt-rows');
    while (tb.firstChild) { tb.removeChild(tb.firstChild); }
    frames.forEach(function (f) {
      var tr = document.createElement('tr');
      if (f === sel) { tr.className = 'on'; }
      var vals = [f.n, fmt(toU(f.x)), fmt(toU(f.y)), fmt(toU(f.w)), fmt(toU(f.h)), fmt(toU(Math.sqrt(f.w * f.w + f.h * f.h)))];
      vals.forEach(function (v, i) {
        var td = document.createElement('td');
        td.textContent = v;
        if (i === 0) { td.style.color = f.c; td.style.fontWeight = '700'; }
        tr.appendChild(td);
      });
      tr.addEventListener('click', function () { sel = f; render(); });
      tb.appendChild(tr);
    });
    $('rt-tbl').hidden = !frames.length;
    $('rt-cap').textContent = 'หน่วย: ' + S.unit;
  }
  function render() {
    if (!rq) { rq = requestAnimationFrame(function () { rq = 0; doRender(); }); }
  }
  function doRender() {
    var k = S.scale;
    frames.forEach(function (f) {
      var s = f.el.style;
      s.left = (f.x * k) + 'px'; s.top = (f.y * k) + 'px';
      s.width = (f.w * k) + 'px'; s.height = (f.h * k) + 'px';
      f.el.classList.toggle('on', f === sel);
      f.t.textContent = f.n + ' ' + fmt(toU(f.w)) + ' × ' + fmt(toU(f.h)) + ' ' + S.unit;
    });
    $('rt-hint').hidden = frames.length > 0;
    ['rt-x', 'rt-y', 'rt-w', 'rt-h', 'rt-cs', 'rt-cc', 'rt-clink', 'rt-del'].forEach(function (id) { $(id).disabled = !sel; });
    $('rt-clear').disabled = !frames.length;
    if (sel) { setIn('rt-x', sel.x); setIn('rt-y', sel.y); setIn('rt-w', sel.w); setIn('rt-h', sel.h); }
    else { ['rt-x', 'rt-y', 'rt-w', 'rt-h'].forEach(function (id) { $(id).value = ''; }); }
    rows();
    hash();
  }
  function info() {
    var t = 'หน้าต่างเบราว์เซอร์ ' + window.innerWidth + ' × ' + window.innerHeight + ' px · DPR ' + (window.devicePixelRatio || 1);
    if (S.iw) { t += ' · รูปภาพ ' + S.iw + ' × ' + S.ih + ' px'; }
    $('rt-info').textContent = t;
  }

  function enableImg(on) {
    ['rt-zoom', 'rt-fit', 'rt-z100', 'rt-rmimg'].forEach(function (id) { $(id).disabled = !on; });
  }
  function applyScale() {
    if (S.iw) {
      img.style.width = (S.iw * S.scale) + 'px';
      img.style.height = (S.ih * S.scale) + 'px';
    }
    $('rt-zv').textContent = Math.round(S.scale * 100) + '%';
    $('rt-zoom').value = String(Math.round(S.scale * 100));
    drawRulers();
    render();
    info();
  }
  function fit() {
    if (!S.iw) { return; }
    measure();
    var s = Math.min(SW / S.iw, SH / S.ih, 1);
    S.scale = Math.max(0.1, Math.floor(s * 100) / 100);
    applyScale();
  }
  function loadImage(file) {
    if (!file || String(file.type).indexOf('image/') !== 0) { say('ไฟล์ต้องเป็นรูปภาพ เช่น PNG หรือ JPG'); return; }
    var u = URL.createObjectURL(file), im = new Image();
    im.onload = function () {
      if (!im.naturalWidth || !im.naturalHeight) { URL.revokeObjectURL(u); say('อ่านขนาดรูปนี้ไม่ได้ ลองไฟล์ PNG หรือ JPG'); return; }
      if (imgUrl) { URL.revokeObjectURL(imgUrl); }
      imgUrl = u;
      img.src = u; img.hidden = false;
      S.iw = im.naturalWidth; S.ih = im.naturalHeight;
      enableImg(true);
      fit();
      say('โหลดรูปแล้ว ขนาด ' + S.iw + ' × ' + S.ih + ' px');
    };
    im.onerror = function () { URL.revokeObjectURL(u); say('เปิดรูปนี้ไม่ได้ ลองไฟล์ PNG หรือ JPG'); };
    im.src = u;
  }
  function removeImage() {
    img.hidden = true;
    img.removeAttribute('src');
    if (imgUrl) { URL.revokeObjectURL(imgUrl); imgUrl = ''; }
    S.iw = 0; S.ih = 0; S.scale = 1;
    enableImg(false);
    applyScale();
  }

  function oldCopy(t, ok) {
    var a = document.createElement('textarea');
    a.value = t; a.style.position = 'fixed'; a.style.opacity = '0';
    document.body.appendChild(a); a.select();
    var r = false;
    try { r = document.execCommand('copy'); } catch (err) { r = false; }
    document.body.removeChild(a);
    say(r ? ok : 'คัดลอกไม่ได้ ลองเลือกข้อความแล้วกด Ctrl+C');
  }
  function copy(t, ok) {
    if (navigator.clipboard && window.isSecureContext) {
      navigator.clipboard.writeText(t).then(function () { say(ok); }, function () { oldCopy(t, ok); });
    } else { oldCopy(t, ok); }
  }

  stage.addEventListener('pointerdown', function (e) {
    if (e.button > 0) { return; }
    measure();
    var t = e.target, h = t.closest('.rt-h'), fe = t.closest('.rt-f'), p = pt(e);
    e.preventDefault();
    stage.focus({ preventScroll: true });
    if (fe) {
      var f = frames.filter(function (x) { return String(x.id) === fe.getAttribute('data-id'); })[0];
      if (f) {
        sel = f;
        drag = { t: h ? 'r' : 'm', f: f, k: h ? h.getAttribute('data-h') : '', cx: e.clientX, cy: e.clientY, o: { x: f.x, y: f.y, w: f.w, h: f.h } };
        render();
        return;
      }
    }
    drag = { t: 'n', f: null, cx: e.clientX, cy: e.clientY, ox: sn(cl(p.x, 0, SW / S.scale)), oy: sn(cl(p.y, 0, SH / S.scale)) };
  });
  document.addEventListener('pointermove', function (e) {
    if (!drag) { return; }
    var k = S.scale, dx = (e.clientX - drag.cx) / k, dy = (e.clientY - drag.cy) / k, f = drag.f, o = drag.o;
    if (drag.t === 'n') {
      if (!f) {
        if (Math.abs(e.clientX - drag.cx) + Math.abs(e.clientY - drag.cy) < 4) { return; }
        if (frames.length >= 8) { say('สร้างได้สูงสุด 8 กรอบ กรุณาลบกรอบเดิมก่อน'); drag = null; return; }
        f = drag.f = mk(drag.ox, drag.oy, 1, 1);
        sel = f;
      }
      var p = pt(e), cx = sn(cl(p.x, 0, SW / k)), cy = sn(cl(p.y, 0, SH / k));
      f.x = Math.min(drag.ox, cx); f.y = Math.min(drag.oy, cy);
      f.w = Math.max(1, Math.abs(cx - drag.ox)); f.h = Math.max(1, Math.abs(cy - drag.oy));
    } else if (drag.t === 'm') {
      f.x = sn(o.x + dx); f.y = sn(o.y + dy);
    } else {
      var l = o.x, t = o.y, r = o.x + o.w, b = o.y + o.h, q = drag.k;
      if (q.indexOf('w') > -1) { l = sn(o.x + dx); }
      if (q.indexOf('e') > -1) { r = sn(o.x + o.w + dx); }
      if (q.indexOf('n') > -1) { t = sn(o.y + dy); }
      if (q.indexOf('s') > -1) { b = sn(o.y + o.h + dy); }
      f.x = Math.min(l, r); f.w = Math.max(1, Math.abs(r - l));
      f.y = Math.min(t, b); f.h = Math.max(1, Math.abs(b - t));
    }
    render();
  });
  function endDrag() {
    if (drag && drag.t === 'n' && !drag.f) { sel = null; render(); }
    drag = null;
  }
  document.addEventListener('pointerup', endDrag);
  document.addEventListener('pointercancel', endDrag);

  stage.addEventListener('pointermove', function (e) {
    var p = pt(e), mx = $('rt-mx'), my = $('rt-my');
    mx.style.display = 'block'; my.style.display = 'block';
    mx.style.left = (p.x * S.scale) + 'px'; my.style.top = (p.y * S.scale) + 'px';
    $('rt-pos').textContent = 'ตำแหน่งเมาส์: X ' + fmt(toU(Math.floor(p.x))) + ' · Y ' + fmt(toU(Math.floor(p.y))) + ' ' + S.unit;
  });
  stage.addEventListener('pointerleave', function () { $('rt-mx').style.display = 'none'; $('rt-my').style.display = 'none'; });

  stage.addEventListener('keydown', function (e) {
    if (e.key === 'Escape') { sel = null; render(); return; }
    if (!sel) { return; }
    var s = e.shiftKey ? 10 : 1, d = null;
    if (e.key === 'ArrowLeft') { d = [-s, 0]; }
    else if (e.key === 'ArrowRight') { d = [s, 0]; }
    else if (e.key === 'ArrowUp') { d = [0, -s]; }
    else if (e.key === 'ArrowDown') { d = [0, s]; }
    if (d) {
      e.preventDefault();
      if (e.altKey) { sel.w = Math.max(1, sel.w + d[0]); sel.h = Math.max(1, sel.h + d[1]); }
      else { sel.x += d[0]; sel.y += d[1]; }
      render();
      return;
    }
    if (e.key === 'Delete' || e.key === 'Backspace') { e.preventDefault(); drop(sel); }
  });

  [['rt-x', 'x'], ['rt-y', 'y'], ['rt-w', 'w'], ['rt-h', 'h']].forEach(function (a) {
    $(a[0]).addEventListener('input', function () {
      var v = parseFloat(this.value);
      if (!sel || !isFinite(v)) { return; }
      var px = fromU(v);
      if ((a[1] === 'w' || a[1] === 'h') && px <= 0) { return; }
      sel[a[1]] = px;
      render();
    });
  });

  $('rt-unit').addEventListener('change', function () { S.unit = this.value; drawRulers(); render(); });
  $('rt-snap').addEventListener('change', function () { S.snap = parseInt(this.value, 10) || 0; });
  $('rt-ppi').addEventListener('change', function () {
    var v = parseFloat(this.value);
    if (v >= 20 && v <= 1000) {
      S.ppi = v;
      try { localStorage.setItem('rt-ppi', String(v)); } catch (err) { /* ignore */ }
      drawRulers(); render();
    } else { this.value = String(S.ppi); say('PPI ต้องอยู่ระหว่าง 20 ถึง 1000'); }
  });
  $('rt-card').addEventListener('click', function () {
    if (!sel) { say('ลากกรอบให้ความกว้างเท่าด้านยาวของบัตรจริง (85.6 มม.) แล้วกดปุ่มนี้อีกครั้ง'); return; }
    var v = Math.round(sel.w / 85.6 * 25.4 * 10) / 10;
    if (!(v >= 20 && v <= 1000)) { say('ค่าที่ได้ผิดปกติ ลองลากกรอบให้ตรงกับบัตรอีกครั้ง'); return; }
    S.ppi = v;
    $('rt-ppi').value = String(v);
    try { localStorage.setItem('rt-ppi', String(v)); } catch (err) { /* ignore */ }
    drawRulers(); render();
    say('ปรับเทียบแล้ว PPI = ' + v);
  });

  $('rt-filebtn').addEventListener('click', function () { $('rt-file').click(); });
  $('rt-file').addEventListener('change', function () {
    if (this.files && this.files[0]) { loadImage(this.files[0]); }
    this.value = '';
  });
  $('rt-zoom').addEventListener('input', function () { S.scale = parseInt(this.value, 10) / 100; applyScale(); });
  $('rt-fit').addEventListener('click', fit);
  $('rt-z100').addEventListener('click', function () { S.scale = 1; applyScale(); });
  $('rt-rmimg').addEventListener('click', removeImage);

  $('rt-cs').addEventListener('click', function () {
    if (sel) { copy(fmt(toU(sel.w)) + ' × ' + fmt(toU(sel.h)) + ' ' + S.unit, 'คัดลอกขนาดแล้ว'); }
  });
  $('rt-cc').addEventListener('click', function () {
    if (sel) {
      copy('width: ' + String(parseFloat(sel.w.toFixed(2))) + 'px; height: ' + String(parseFloat(sel.h.toFixed(2))) + 'px;', 'คัดลอก CSS แล้ว');
    }
  });
  $('rt-clink').addEventListener('click', function () { copy(location.href, 'คัดลอกลิงก์แล้ว'); });
  $('rt-del').addEventListener('click', function () { if (sel) { drop(sel); } });
  $('rt-clear').addEventListener('click', function () {
    frames.slice().forEach(function (f) { stage.removeChild(f.el); });
    frames = []; sel = null;
    render();
  });

  stage.addEventListener('dragover', function (e) { e.preventDefault(); });
  stage.addEventListener('drop', function (e) {
    e.preventDefault();
    var f = e.dataTransfer && e.dataTransfer.files && e.dataTransfer.files[0];
    if (f) { loadImage(f); }
  });
  document.addEventListener('paste', function (e) {
    var items = (e.clipboardData && e.clipboardData.items) || [];
    for (var i = 0; i < items.length; i++) {
      if (String(items[i].type).indexOf('image/') === 0) {
        var f = items[i].getAsFile();
        if (f) { e.preventDefault(); loadImage(f); }
        return;
      }
    }
  });

  window.addEventListener('resize', function () { R = null; drawRulers(); info(); });
  window.addEventListener('scroll', function () { R = null; }, true);
  if (window.ResizeObserver) { new ResizeObserver(function () { drawRulers(); }).observe(stage); }
  window.addEventListener('load', function () { drawRulers(); });

  $('rt-ppi').value = String(S.ppi);
  var m = /^#(\d{1,5})x(\d{1,5})$/.exec(location.hash);
  if (m && Number(m[1]) > 0 && Number(m[2]) > 0) { sel = mk(20, 20, Number(m[1]), Number(m[2])); }
  drawRulers();
  render();
  info();
})();
</script>

## วิธีใช้งานไม้บรรทัดออนไลน์ (พิกเซล)

1. **เลือกหน่วย** จากช่อง "หน่วย" ได้แก่ px, mm, cm, in, pt และ rem แถบไม้บรรทัดด้านบนและด้านซ้ายจะเปลี่ยนตามหน่วยที่เลือก
2. **สร้างกรอบวัด** โดยลากเมาส์ (หรือลากนิ้วบนมือถือ) บนพื้นที่วัด กรอบจะแสดงความกว้างและความสูงทันที สร้างได้สูงสุด 8 กรอบ แต่ละกรอบมีตัวอักษรและสีของตัวเอง
3. **ย้ายหรือปรับขนาดกรอบ** โดยลากกรอบเพื่อย้าย ลากจุดสี่เหลี่ยมที่ขอบหรือมุมเพื่อปรับขนาด หรือพิมพ์ค่า X, Y, กว้าง, สูง ในช่องใต้พื้นที่วัด
4. **วัดบนรูปภาพ** โดยกด "โหลดรูปภาพ" วางรูปด้วย Ctrl+V (⌘+V บน Mac) หรือลากไฟล์รูปมาวางบนพื้นที่วัด จากนั้นใช้แถบซูมหรือปุ่ม "พอดีกับพื้นที่" ค่าที่ได้เป็นพิกเซลของรูปจริงเสมอ ไม่เปลี่ยนตามระดับซูม
5. **วัดสิ่งที่อยู่นอกหน้านี้** เช่น แอปหรือเว็บไซต์อื่น โดยแคปหน้าจอ แล้ววางภาพนั้นลงในเครื่องมือ
6. **วัดเป็น ซม. หรือนิ้วให้ตรงกับของจริง** โดยวางบัตรประชาชนหรือบัตรเครดิตบนหน้าจอ ลากกรอบให้ความกว้างด้านยาวเท่าบัตร (85.6 มม.) แล้วกด "ปรับเทียบด้วยบัตร" ค่า PPI จะถูกคำนวณและจำไว้ในเบราว์เซอร์ของคุณ
7. **นำค่าไปใช้** โดยกด "คัดลอกขนาด" "คัดลอก CSS" หรือ "คัดลอกลิงก์" ลิงก์จะมีขนาดกรอบต่อท้าย เช่น `#320x180` เมื่อเปิดลิงก์นั้น กรอบขนาดเดิมจะกลับมาอีกครั้ง

**ปุ่มลัด** (คลิกที่พื้นที่วัดก่อน): ปุ่มลูกศรย้ายกรอบทีละ 1 px · Shift+ลูกศรย้ายทีละ 10 px · Alt+ลูกศรปรับขนาด · Delete ลบกรอบที่เลือก · Esc ยกเลิกการเลือก

**เคล็ดลับ:** กด Ctrl+0 (⌘+0 บน Mac) เพื่อรีเซ็ตการซูมของเบราว์เซอร์เป็น 100% ก่อนวัด เพื่อให้ค่าตรงที่สุด

## ความหมายของคำศัพท์

- **พิกเซล (px):** จุดเล็กที่สุดของภาพบนหน้าจอ ใช้บอกขนาดของรูปภาพ องค์ประกอบเว็บ และงานออกแบบ
- **CSS pixel:** พิกเซลที่เว็บเบราว์เซอร์ใช้คำนวณ เป็นหน่วยเดียวกับ px ใน CSS และเครื่องมือนักพัฒนา หนึ่งหน่วยอาจใช้พิกเซลจริงของจอหลายจุด
- **DPR (Device Pixel Ratio):** อัตราส่วนระหว่างพิกเซลจริงของจอกับ CSS pixel เช่น จอ Retina มักมีค่า 2 ภาพแคปหน้าจอจึงมีขนาดใหญ่กว่าที่เห็นเป็นเท่าตัว
- **PPI (Pixels Per Inch):** จำนวนพิกเซลต่อหนึ่งนิ้ว ใช้แปลง px เป็นหน่วยความยาว ค่าเริ่มต้นของเว็บคือ 96 และปรับเทียบให้ตรงกับจอของคุณได้
- **มิลลิเมตร (mm) และเซนติเมตร (cm):** หน่วยความยาวในระบบเมตริก 1 ซม. เท่ากับ 10 มม.
- **นิ้ว (in):** หน่วยความยาว 1 นิ้ว เท่ากับ 25.4 มม.
- **พอยต์ (pt):** หน่วยที่ใช้กับขนาดตัวอักษรและงานพิมพ์ 1 pt เท่ากับ 1/72 นิ้ว
- **rem:** หน่วยสัมพัทธ์ในเว็บที่อิงขนาดตัวอักษรของหน้า ค่าเริ่มต้นคือ 1 rem เท่ากับ 16 px
- **กรอบ:** สี่เหลี่ยมที่คุณลากเพื่อวัด แสดงตำแหน่ง (X, Y) ความกว้าง ความสูง และความยาวเส้นทแยง
- **X และ Y:** ตำแหน่งของมุมบนซ้ายของกรอบ นับจากมุมบนซ้ายของพื้นที่วัด (หรือของรูป)
- **เส้นทแยง:** ความยาวจากมุมหนึ่งไปอีกมุมที่ตรงข้ามของกรอบ ใช้เทียบกับขนาดจอที่ระบุเป็นนิ้ว
- **ปัดเศษ:** ทำให้ขอบกรอบขยับเป็นช่วงเท่า ๆ กัน เช่น ทีละ 5 หรือ 10 px เพื่อให้วางตำแหน่งได้เป๊ะ
- **ปรับเทียบ:** การบอกเครื่องมือว่า 1 นิ้วบนจอของคุณยาวเท่าไร โดยใช้บัตรที่มีขนาดมาตรฐานเป็นตัวอ้างอิง
- **ซูม:** ขยายหรือย่อรูปเพื่อดูรายละเอียด ค่าที่วัดยังคงเป็นพิกเซลของรูปจริง