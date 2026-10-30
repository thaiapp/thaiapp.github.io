---
title: เครื่องนวดสั่นบนมือถือ ออนไลน์ ฟรี
h1: เครื่องนวดสั่นบนมือถือ
description: เครื่องนวดสั่นบนมือถือออนไลน์ ใช้ฟรีบน Android เลือกได้หลายโหมด ทั้งสั่นช้า สั่นเร็ว จังหวะกลอง ปรับความแรงได้เอง ไม่ต้องติดตั้งแอปและไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-30T09:00:00+07:00'
weight: 32
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- เครื่องนวดสั่นบนมือถือ
- เครื่องนวดสั่นบนมือถือ ออนไลน์
- เสียงและวิดีโอ
---
<style>
.vb-app{max-width:520px;margin:1.5rem auto;padding:1.25rem;border:1px solid rgba(128,128,128,.4);border-radius:16px;box-sizing:border-box}
.vb-note{padding:.75rem 1rem;margin-bottom:1rem;border-radius:10px;background:rgba(255,170,0,.15);border:1px solid rgba(255,170,0,.6);font-size:.95rem;line-height:1.5}
.vb-note[hidden]{display:none}
.vb-label{display:block;margin:1rem 0 .5rem;font-weight:600}
.vb-modes{display:grid;grid-template-columns:repeat(2,1fr);gap:.5rem}
.vb-mode{padding:.7rem .5rem;border:2px solid rgba(128,128,128,.5);border-radius:10px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.vb-mode[aria-checked="true"]{border-color:#2f7df6;background:rgba(47,125,246,.15);font-weight:700}
.vb-range{width:100%}
.vb-select{width:100%;padding:.6rem;border-radius:10px;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;font:inherit}
.vb-toggle{display:block;width:100%;margin-top:1.25rem;padding:1rem;border:0;border-radius:12px;background:#2f7df6;color:#fff;font:inherit;font-size:1.15rem;font-weight:700;cursor:pointer}
.vb-toggle[disabled]{opacity:.5;cursor:not-allowed}
.vb-toggle.vb-on{background:#d93a3a;animation:vb-shake .25s infinite}
.vb-status{min-height:1.5rem;margin:.75rem 0 0;text-align:center;font-size:.95rem}
@keyframes vb-shake{0%{transform:translateX(0)}25%{transform:translateX(-2px)}75%{transform:translateX(2px)}100%{transform:translateX(0)}}
</style>
<div class="vb-app" id="vb-app">
<div class="vb-note" id="vb-note" hidden></div>
<span class="vb-label" id="vb-modes-label">เลือกโหมดการสั่น</span>
<div class="vb-modes" id="vb-modes" role="radiogroup" aria-labelledby="vb-modes-label">
<button type="button" class="vb-mode" role="radio" aria-checked="true" data-mode="slow">สั่นช้า</button>
<button type="button" class="vb-mode" role="radio" aria-checked="false" data-mode="medium">สั่นปานกลาง</button>
<button type="button" class="vb-mode" role="radio" aria-checked="false" data-mode="fast">สั่นเร็ว</button>
<button type="button" class="vb-mode" role="radio" aria-checked="false" data-mode="progressive">จังหวะก้าวหน้า</button>
<button type="button" class="vb-mode" role="radio" aria-checked="false" data-mode="drum">กลอง</button>
<button type="button" class="vb-mode" role="radio" aria-checked="false" data-mode="continuous">ตลอดเวลา</button>
</div>
<label class="vb-label" for="vb-level">ระดับความแรง: <output id="vb-level-out">5</output>/10</label>
<input class="vb-range" type="range" id="vb-level" min="1" max="10" step="1" value="5">
<label class="vb-label" for="vb-timer">ตั้งเวลาปิดอัตโนมัติ</label>
<select class="vb-select" id="vb-timer">
<option value="0">ไม่จำกัด (หยุดเอง)</option>
<option value="1">1 นาที</option>
<option value="5" selected>5 นาที</option>
<option value="10">10 นาที</option>
<option value="30">30 นาที</option>
</select>
<button type="button" class="vb-toggle" id="vb-toggle">เริ่มสั่น</button>
<p class="vb-status" id="vb-status" aria-live="polite"></p>
</div>
<script>
(function () {
  var supported = typeof navigator !== 'undefined' && typeof navigator.vibrate === 'function';
  var modeBtns = Array.prototype.slice.call(document.querySelectorAll('#vb-modes .vb-mode'));
  var levelEl = document.getElementById('vb-level');
  var levelOut = document.getElementById('vb-level-out');
  var timerEl = document.getElementById('vb-timer');
  var toggleBtn = document.getElementById('vb-toggle');
  var statusEl = document.getElementById('vb-status');
  var noteEl = document.getElementById('vb-note');
  var modeNames = {
    slow: 'สั่นช้า',
    medium: 'สั่นปานกลาง',
    fast: 'สั่นเร็ว',
    progressive: 'จังหวะก้าวหน้า',
    drum: 'กลอง',
    continuous: 'ตลอดเวลา'
  };
  var mode = 'slow';
  var running = false;
  var loopTimer = null;
  var stopTimer = null;
  function buildBase(m, lv) {
    if (m === 'slow') { return [100 + lv * 30, 700 - lv * 50]; }
    if (m === 'medium') { return [80 + lv * 15, 350 - lv * 25]; }
    if (m === 'fast') { return [30 + lv * 8, 120 - lv * 8]; }
    if (m === 'progressive') {
      var out = [];
      Array.from({ length: 8 }).forEach(function (_, i) {
        out.push(40 + i * lv * 6, 300 - i * 30);
      });
      return out;
    }
    if (m === 'drum') {
      var s = 0.5 + lv / 10;
      return [Math.round(150 * s), 80, Math.round(150 * s), 80, Math.round(60 * s), 40, Math.round(60 * s), 400];
    }
    return [3000];
  }
  function sum(arr) {
    return arr.reduce(function (a, b) { return a + b; }, 0);
  }
  function buildPattern() {
    var lv = parseInt(levelEl.value, 10);
    var base = buildBase(mode, lv);
    if (mode === 'continuous') {
      return { pattern: base, wait: 2800 };
    }
    var cycle = sum(base);
    var times = Math.max(1, Math.ceil(3000 / cycle));
    var pattern = Array.from({ length: times }).reduce(function (acc) {
      return acc.concat(base);
    }, []);
    return { pattern: pattern, wait: Math.max(200, sum(pattern) - 50) };
  }
  function clearTimers() {
    if (loopTimer) { clearTimeout(loopTimer); loopTimer = null; }
    if (stopTimer) { clearTimeout(stopTimer); stopTimer = null; }
  }
  function tick() {
    if (!running) { return; }
    var built = buildPattern();
    try { navigator.vibrate(built.pattern); } catch (e) { stop(); return; }
    loopTimer = setTimeout(tick, built.wait);
  }
  function setStatus() {
    statusEl.textContent = running
      ? 'กำลังสั่น: ' + modeNames[mode] + ' (ความแรง ' + levelEl.value + '/10)'
      : 'พร้อมใช้งาน กดปุ่มเพื่อเริ่มสั่น';
  }
  function start() {
    if (!supported) { return; }
    running = true;
    toggleBtn.textContent = 'หยุดสั่น';
    toggleBtn.classList.add('vb-on');
    clearTimers();
    tick();
    var minutes = parseInt(timerEl.value, 10);
    if (minutes > 0) {
      stopTimer = setTimeout(stop, minutes * 60000);
    }
    setStatus();
  }
  function stop() {
    running = false;
    clearTimers();
    if (supported) {
      try { navigator.vibrate(0); } catch (e) {}
    }
    toggleBtn.textContent = 'เริ่มสั่น';
    toggleBtn.classList.remove('vb-on');
    setStatus();
  }
  function restartIfRunning() {
    if (running) {
      if (supported) { try { navigator.vibrate(0); } catch (e) {} }
      clearTimers();
      tick();
      var minutes = parseInt(timerEl.value, 10);
      if (minutes > 0) {
        stopTimer = setTimeout(stop, minutes * 60000);
      }
    }
    setStatus();
  }
  modeBtns.forEach(function (btn) {
    btn.addEventListener('click', function () {
      mode = btn.getAttribute('data-mode');
      modeBtns.forEach(function (b) {
        b.setAttribute('aria-checked', b === btn ? 'true' : 'false');
      });
      restartIfRunning();
    });
  });
  levelEl.addEventListener('input', function () {
    levelOut.textContent = levelEl.value;
    restartIfRunning();
  });
  timerEl.addEventListener('change', restartIfRunning);
  toggleBtn.addEventListener('click', function () {
    if (running) { stop(); } else { start(); }
  });
  document.addEventListener('visibilitychange', function () {
    if (document.hidden && running) { stop(); }
  });
  window.addEventListener('pagehide', function () {
    if (running) { stop(); }
  });
  if (!supported) {
    toggleBtn.disabled = true;
    noteEl.hidden = false;
    noteEl.textContent = 'อุปกรณ์หรือเบราว์เซอร์นี้ไม่รองรับการสั่น กรุณาเปิดหน้านี้ด้วย Chrome หรือ Firefox บนมือถือ Android (คอมพิวเตอร์และ iPhone ยังใช้งานไม่ได้)';
  }
  setStatus();
})();
</script>

## วิธีใช้เครื่องนวดสั่นบนมือถือ

1. เปิดหน้านี้ด้วย **Chrome** หรือ **Firefox** บนมือถือ Android และเปิดเสียงเรียกเข้าหรือโหมดสั่นของเครื่องไว้
2. เลือก **โหมดการสั่น** ที่ต้องการ เช่น สั่นช้า สั่นเร็ว หรือกลอง
3. เลื่อนแถบ **ระดับความแรง** ตั้งแต่ 1 ถึง 10 (ค่าเริ่มต้นคือ 5)
4. เลือก **เวลาปิดอัตโนมัติ** หากไม่ต้องการให้เครื่องสั่นไม่หยุด
5. กดปุ่ม **เริ่มสั่น** เพื่อเริ่มใช้งาน และกดปุ่มเดิมอีกครั้งเพื่อหยุด
6. วางมือถือบนบริเวณที่ต้องการผ่อนคลาย เช่น หัวไหล่หรือน่อง โดยไม่ต้องกดแรง และพักเครื่องเป็นระยะ

ระหว่างสั่น คุณสามารถเปลี่ยนโหมดหรือปรับความแรงได้ทันที โดยไม่ต้องหยุดก่อน หากสลับไปแอปอื่นหรือล็อกหน้าจอ เครื่องมือจะหยุดสั่นอัตโนมัติ

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **โหมดการสั่น**: รูปแบบจังหวะการสั่นที่เลือกได้ ซึ่งแต่ละโหมดมีช่วงสั่นและช่วงหยุดต่างกัน
- **สั่นช้า**: สั่นเป็นจังหวะยาว หยุดนานระหว่างแต่ละครั้ง ให้ความรู้สึกนุ่มและผ่อนคลาย
- **สั่นปานกลาง**: สั่นสลับหยุดด้วยจังหวะพอดี เหมาะกับการใช้งานทั่วไป
- **สั่นเร็ว**: สั่นถี่และหยุดสั้นมาก ให้ความรู้สึกกระตุ้นแรงกว่าโหมดอื่น
- **จังหวะก้าวหน้า**: เริ่มจากสั่นเบาและห่าง แล้วค่อยๆ ยาวขึ้นและถี่ขึ้น ก่อนวนกลับไปเริ่มใหม่
- **กลอง**: สั่นเป็นชุดจังหวะคล้ายตีกลอง มีทั้งช่วงหนักและเบาสลับกัน
- **ตลอดเวลา**: สั่นต่อเนื่องไม่มีช่วงหยุด จนกว่าคุณจะกดหยุดหรือหมดเวลา
- **ระดับความแรง**: ค่า 1 ถึง 10 ที่ปรับสัดส่วนระหว่างช่วงสั่นกับช่วงหยุด ยิ่งสูงยิ่งสั่นนานและถี่ขึ้น (มือถือไม่สามารถเพิ่มแรงมอเตอร์ได้โดยตรง)
- **เวลาปิดอัตโนมัติ**: ตัวตั้งเวลาที่หยุดการสั่นเองเมื่อครบเวลา ช่วยป้องกันการลืมปิดและลดการใช้แบตเตอรี่
- **Vibration API**: ฟังก์ชันของเบราว์เซอร์ที่เว็บไซต์ใช้สั่งให้มอเตอร์สั่นในมือถือ ทำงานได้บน Chrome และ Firefox สำหรับ Android เท่านั้น
- **มิลลิวินาที (ms)**: หน่วยเวลาที่ใช้กำหนดความยาวของการสั่นและการหยุด โดย 1,000 มิลลิวินาทีเท่ากับ 1 วินาที

## คำเตือนการใช้งาน

เครื่องมือนี้ออกแบบมาเพื่อความผ่อนคลายเบาๆ เท่านั้น ไม่ใช่อุปกรณ์ทางการแพทย์ การใช้งานต่อเนื่องนานเกินไปอาจทำให้ร่างกายระคายเคืองหรือมอเตอร์สั่นของมือถือร้อนและเสื่อมเร็ว หากมีโรคประจำตัว ตั้งครรภ์ หรือรู้สึกไม่สบายขณะใช้งาน ควรหยุดใช้และปรึกษาแพทย์