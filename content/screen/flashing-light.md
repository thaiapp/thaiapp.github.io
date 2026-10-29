---
title: ไฟกระพริบ ออนไลน์ ฟรี
h1: ไฟกระพริบ
description: ไฟกระพริบออนไลน์เต็มหน้าจอ ปรับความเร็วและสีได้เอง ใช้ทดสอบหน้าจอ ทำไฟสัญญาณ หรือเพิ่มบรรยากาศปาร์ตี้ได้ทันที ใช้ง่ายบนมือถือและคอมพิวเตอร์ ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 23
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ไฟกระพริบ
- ไฟกระพริบ ออนไลน์
- ทดสอบและวัดค่า
---

<style>
.fl-app{max-width:720px;margin:0 auto 24px;font-family:inherit}
.fl-stage{position:relative;display:flex;align-items:center;justify-content:center;width:100%;height:320px;background:#111;color:#fff;border-radius:12px;cursor:pointer;user-select:none;-webkit-user-select:none;overflow:hidden;text-align:center}
.fl-stage:fullscreen{border-radius:0;height:100%}
.fl-stage:-webkit-full-screen{border-radius:0;height:100%}
.fl-hint{padding:8px 14px;border-radius:8px;background:rgba(0,0,0,.55);color:#fff;font-size:15px;pointer-events:none}
.fl-exit{display:none;position:absolute;top:12px;right:12px;padding:8px 14px;border:0;border-radius:8px;background:rgba(0,0,0,.6);color:#fff;font-size:14px;cursor:pointer}
.fl-stage:fullscreen .fl-exit{display:block}
.fl-stage:-webkit-full-screen .fl-exit{display:block}
.fl-controls{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:14px;margin-top:14px}
.fl-field{display:flex;flex-direction:column;gap:6px;font-size:14px}
.fl-field input[type=range]{width:100%}
.fl-field input[type=color]{width:100%;height:36px;padding:0;border:1px solid #8884;border-radius:6px;background:none}
.fl-field select{padding:8px;border-radius:6px;font-size:14px}
.fl-buttons{display:flex;flex-wrap:wrap;gap:10px;margin-top:14px}
.fl-btn{flex:1 1 140px;padding:12px 16px;border:0;border-radius:8px;background:#e53935;color:#fff;font-size:16px;font-weight:600;cursor:pointer}
.fl-btn.fl-alt{background:#455a64}
.fl-warn{margin-top:14px;padding:10px 14px;border-left:4px solid #f9a825;background:#f9a82522;border-radius:6px;font-size:14px}
</style>
<div class="fl-app" id="fl-app">
<div class="fl-stage" id="fl-stage" role="button" tabindex="0" aria-label="พื้นที่แสดงไฟกระพริบ แตะเพื่อเริ่มหรือหยุด">
<span class="fl-hint" id="fl-hint">แตะที่นี่เพื่อเริ่ม</span>
<button type="button" class="fl-exit" id="fl-exit">ออกจากเต็มหน้าจอ</button>
</div>
<div class="fl-controls">
<label class="fl-field">โหมด
<select id="fl-mode">
<option value="single">สีเดียว (ติด-ดับ)</option>
<option value="alt">สลับสองสี</option>
<option value="rainbow">สีรุ้ง</option>
</select>
</label>
<label class="fl-field">ความเร็ว: <span id="fl-speed-val">2</span> ครั้ง/วินาที (Hz)
<input type="range" id="fl-speed" min="0.5" max="10" step="0.5" value="2">
</label>
<label class="fl-field">ความสว่าง: <span id="fl-bright-val">100</span>%
<input type="range" id="fl-bright" min="20" max="100" step="5" value="100">
</label>
<label class="fl-field">สีที่ 1
<input type="color" id="fl-color1" value="#ffffff">
</label>
<label class="fl-field" id="fl-color2-wrap">สีที่ 2
<input type="color" id="fl-color2" value="#ff0000">
</label>
</div>
<div class="fl-buttons">
<button type="button" class="fl-btn" id="fl-toggle">เริ่ม</button>
<button type="button" class="fl-btn fl-alt" id="fl-full">เต็มหน้าจอ</button>
<button type="button" class="fl-btn fl-alt" id="fl-wake">เปิดหน้าจอไว้: ปิด</button>
</div>
<div class="fl-warn">⚠️ คำเตือน: แสงกะพริบอาจกระตุ้นอาการในผู้ที่ไวต่อแสง (โรคลมชักจากแสง) หากรู้สึกเวียนหัว ตาพร่า หรือไม่สบาย ให้หยุดใช้งานทันที</div>
</div>
<script>
(function () {
  var stage = document.getElementById('fl-stage');
  var hint = document.getElementById('fl-hint');
  var modeEl = document.getElementById('fl-mode');
  var speedEl = document.getElementById('fl-speed');
  var speedVal = document.getElementById('fl-speed-val');
  var brightEl = document.getElementById('fl-bright');
  var brightVal = document.getElementById('fl-bright-val');
  var c1 = document.getElementById('fl-color1');
  var c2 = document.getElementById('fl-color2');
  var c2wrap = document.getElementById('fl-color2-wrap');
  var toggleBtn = document.getElementById('fl-toggle');
  var fullBtn = document.getElementById('fl-full');
  var exitBtn = document.getElementById('fl-exit');
  var wakeBtn = document.getElementById('fl-wake');
  var running = false;
  var timer = null;
  var phase = false;
  var hue = 0;
  var wakeLock = null;
  var wakeWanted = false;
  function paint() {
    var mode = modeEl.value;
    var color = '#000000';
    if (mode === 'single') {
      color = phase ? c1.value : '#000000';
    } else if (mode === 'alt') {
      color = phase ? c1.value : c2.value;
    } else {
      color = 'hsl(' + hue + ',100%,50%)';
    }
    stage.style.background = color;
    stage.style.filter = 'brightness(' + brightEl.value + '%)';
  }
  function tick() {
    phase = !phase;
    hue = (hue + 60) % 360;
    paint();
    var hz = parseFloat(speedEl.value);
    timer = setTimeout(tick, Math.max(20, 500 / hz));
  }
  function start() {
    if (running) { return; }
    running = true;
    hint.style.display = 'none';
    toggleBtn.textContent = 'หยุด';
    tick();
  }
  function stop() {
    running = false;
    clearTimeout(timer);
    timer = null;
    toggleBtn.textContent = 'เริ่ม';
    hint.style.display = '';
    hint.textContent = 'แตะที่นี่เพื่อเริ่ม';
    stage.style.background = '#111';
    stage.style.filter = 'none';
  }
  function toggle() {
    if (running) { stop(); } else { start(); }
  }
  function getFsElement() {
    return document.fullscreenElement || document.webkitFullscreenElement || null;
  }
  function enterFull() {
    var fn = stage.requestFullscreen || stage.webkitRequestFullscreen;
    if (fn) {
      try {
        var p = fn.call(stage);
        if (p && p.catch) { p.catch(function () {}); }
      } catch (e) {}
    }
    start();
  }
  function exitFull() {
    var fn = document.exitFullscreen || document.webkitExitFullscreen;
    if (fn) {
      try {
        var p = fn.call(document);
        if (p && p.catch) { p.catch(function () {}); }
      } catch (e) {}
    }
  }
  function requestWake() {
    if (!('wakeLock' in navigator)) { return; }
    try {
      navigator.wakeLock.request('screen').then(function (lock) {
        wakeLock = lock;
        lock.addEventListener('release', function () { wakeLock = null; });
      }).catch(function () {});
    } catch (e) {}
  }
  function releaseWake() {
    if (wakeLock) {
      try { wakeLock.release(); } catch (e) {}
      wakeLock = null;
    }
  }
  function toggleWake() {
    if (!('wakeLock' in navigator)) {
      wakeBtn.textContent = 'เบราว์เซอร์ไม่รองรับ';
      return;
    }
    wakeWanted = !wakeWanted;
    wakeBtn.textContent = wakeWanted ? 'เปิดหน้าจอไว้: เปิด' : 'เปิดหน้าจอไว้: ปิด';
    if (wakeWanted) { requestWake(); } else { releaseWake(); }
  }
  function syncUi() {
    c2wrap.style.display = modeEl.value === 'alt' ? '' : 'none';
    c1.parentNode.style.display = modeEl.value === 'rainbow' ? 'none' : '';
    speedVal.textContent = speedEl.value;
    brightVal.textContent = brightEl.value;
    if (running) { paint(); }
  }
  stage.addEventListener('click', function (e) {
    if (e.target === exitBtn) { return; }
    toggle();
  });
  stage.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') {
      e.preventDefault();
      toggle();
    }
  });
  exitBtn.addEventListener('click', function (e) {
    e.stopPropagation();
    exitFull();
  });
  toggleBtn.addEventListener('click', toggle);
  fullBtn.addEventListener('click', function () {
    if (getFsElement()) { exitFull(); } else { enterFull(); }
  });
  wakeBtn.addEventListener('click', toggleWake);
  modeEl.addEventListener('change', syncUi);
  speedEl.addEventListener('input', syncUi);
  brightEl.addEventListener('input', syncUi);
  c1.addEventListener('input', syncUi);
  c2.addEventListener('input', syncUi);
  document.addEventListener('visibilitychange', function () {
    if (document.visibilityState === 'visible') {
      if (wakeWanted) { requestWake(); }
    }
  });
  document.addEventListener('keydown', function (e) {
    var tag = e.target && e.target.tagName ? e.target.tagName : '';
    if (tag === 'INPUT' || tag === 'SELECT' || tag === 'BUTTON') { return; }
    if (e.key === 'f' || e.key === 'F') {
      if (getFsElement()) { exitFull(); } else { enterFull(); }
    }
  });
  syncUi();
})();
</script>

## วิธีใช้งานไฟกระพริบ

1. เลือก **โหมด** ที่ต้องการ ได้แก่ สีเดียว สลับสองสี หรือสีรุ้ง
2. เลื่อนแถบ **ความเร็ว** เพื่อกำหนดจำนวนครั้งที่ไฟกระพริบต่อวินาที เริ่มจากค่าต่ำก่อนเพื่อความสบายตา
3. ปรับ **ความสว่าง** และเลือก **สี** ที่ต้องการ (โหมดสลับสองสีจะเลือกได้ 2 สี)
4. กดปุ่ม **เริ่ม** หรือแตะที่พื้นที่แสดงไฟเพื่อเริ่มและหยุด
5. กด **เต็มหน้าจอ** เพื่อให้ไฟกระพริบทั้งจอ แล้วกด Esc หรือปุ่ม "ออกจากเต็มหน้าจอ" เมื่อต้องการกลับ
6. กด **เปิดหน้าจอไว้** หากไม่ต้องการให้หน้าจอดับเองระหว่างใช้งาน

**ปุ่มลัดบนคอมพิวเตอร์:** กด Space หรือ Enter เมื่ออยู่ที่พื้นที่แสดงไฟเพื่อเริ่ม/หยุด และกด F เพื่อเข้าหรือออกจากโหมดเต็มหน้าจอ

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

| คำศัพท์ | ความหมาย |
| --- | --- |
| ไฟกระพริบ | หน้าจอที่เปลี่ยนสีหรือสว่าง-ดับสลับกันเป็นจังหวะ ใช้เป็นไฟสัญญาณ ไฟปาร์ตี้ หรือทดสอบหน้าจอ |
| โหมดสีเดียว | หน้าจอสลับระหว่างสีที่เลือกกับสีดำ ให้จังหวะติด-ดับชัดเจนที่สุด |
| โหมดสลับสองสี | หน้าจอสลับระหว่างสีที่ 1 กับสีที่ 2 ต่อเนื่อง เช่น แดงสลับน้ำเงินแบบไฟฉุกเฉิน |
| โหมดสีรุ้ง | หน้าจอเปลี่ยนสีวนไปตามสเปกตรัมสี เหมาะกับบรรยากาศปาร์ตี้ |
| ความเร็ว | จำนวนครั้งที่ไฟกระพริบใน 1 วินาที ค่ายิ่งสูงไฟยิ่งถี่ |
| Hz (เฮิรตซ์) | หน่วยวัดความถี่ 1 Hz เท่ากับ 1 ครั้งต่อวินาที |
| ความสว่าง | ระดับความจ้าของหน้าจอ ลดลงเพื่อถนอมสายตาหรือประหยัดแบตเตอรี่ |
| สีที่ 1 / สีที่ 2 | สีที่ใช้แสดงบนหน้าจอ สีที่ 2 ใช้เฉพาะโหมดสลับสองสี |
| เต็มหน้าจอ | ขยายพื้นที่ไฟกระพริบให้เต็มจอ โดยซ่อนแถบเบราว์เซอร์และส่วนอื่นของหน้าเว็บ |
| เปิดหน้าจอไว้ | ป้องกันไม่ให้หน้าจอดับหรือล็อกอัตโนมัติขณะใช้งาน (Screen Wake Lock) ต้องใช้เบราว์เซอร์ที่รองรับ |

## ข้อควรระวังในการใช้งาน

- ไม่ควรใช้ความเร็วสูงเป็นเวลานาน โดยเฉพาะในที่มืด
- ผู้ที่มีประวัติลมชักจากแสงหรือไวต่อแสงกะพริบไม่ควรใช้งาน
- เครื่องมือนี้ใช้เป็นแสงประกอบหรือทดสอบหน้าจอเท่านั้น ไม่เหมาะใช้แทนอุปกรณ์สัญญาณฉุกเฉินจริง