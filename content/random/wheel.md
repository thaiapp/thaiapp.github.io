---
title: เกมส์วงล้อ ออนไลน์ ฟรี
h1: เกมส์วงล้อ
description: เกมส์วงล้อออนไลน์ ใช้งานง่าย ใส่รายการแล้วกดหมุนเพื่อสุ่มผลลัพธ์ทันที ใช้ได้ทั้งมือถือและคอมพิวเตอร์ เริ่มได้ในไม่กี่วินาที ใช้งานฟรี ไม่ต้องดาวน์โหลดแอป
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-28T09:00:00+07:00'
weight: 14
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- เกมส์วงล้อ
- เกมส์วงล้อ ออนไลน์
- สุ่มและคำนวณ
---

<div class="wl-app" id="wl-app">
<div class="wl-bar">
<div class="wl-title" id="wl-title">วงล้อของฉัน</div>
<input class="wl-title-input" id="wl-title-input" type="text" maxlength="60" aria-label="ชื่อเรื่อง" hidden>
<div class="wl-bar-btns">
<button type="button" id="wl-edit-title">แก้ไข</button>
<button type="button" id="wl-fs">เต็มหน้าจอ</button>
</div>
</div>
<div class="wl-main">
<div class="wl-stage">
<div class="wl-pointer" aria-hidden="true">▼</div>
<canvas id="wl-canvas" width="600" height="600" aria-label="วงล้อสุ่ม"></canvas>
<button type="button" class="wl-center" id="wl-center">หมุน</button>
</div>
<div class="wl-panel">
<label for="wl-input">รายการ (1 บรรทัดต่อ 1 รายการ)</label>
<textarea id="wl-input" rows="9" spellcheck="false"></textarea>
<div class="wl-count" id="wl-count"></div>
<div class="wl-btns">
<button type="button" class="wl-primary" id="wl-spin">หมุน</button>
<button type="button" id="wl-hide">ซ่อนรายการที่เลือก</button>
<button type="button" id="wl-reset">รีเซ็ต</button>
<button type="button" id="wl-default">ค่าเริ่มต้น</button>
</div>
<div class="wl-presets-label">ตัวอย่างสำเร็จรูป</div>
<div class="wl-presets" id="wl-presets">
<button type="button" data-preset="yesno">ใช่ / ไม่ใช่</button>
<button type="button" data-preset="food">ตัวเลือกอาหาร</button>
<button type="button" data-preset="fruit">ผลไม้</button>
<button type="button" data-preset="activity">กิจกรรม</button>
<button type="button" data-preset="movie">ประเภทหนัง</button>
<button type="button" data-preset="animal">สัตว์</button>
</div>
</div>
</div>
<div class="wl-msg" id="wl-msg" role="status"></div>
<div class="wl-modal" id="wl-modal" hidden>
<div class="wl-modal-box">
<div class="wl-modal-label">ผลลัพธ์</div>
<div class="wl-modal-result" id="wl-result"></div>
<div class="wl-modal-btns">
<button type="button" id="wl-modal-hide">ซ่อนรายการนี้</button>
<button type="button" class="wl-primary" id="wl-modal-close">ปิด</button>
</div>
</div>
</div>
</div>
<style>
.wl-app{max-width:900px;margin:0 auto 24px;padding:16px;border:1px solid rgba(128,128,128,.35);border-radius:14px;font-family:"Sarabun","Noto Sans Thai","Leelawadee UI",Tahoma,sans-serif;position:relative;box-sizing:border-box}
.wl-app *{box-sizing:border-box}
.wl-app [hidden]{display:none!important}
.wl-app:fullscreen{max-width:none;margin:0;border-radius:0;overflow:auto;background:#fff;color:#222}
.wl-bar{display:flex;align-items:center;justify-content:space-between;gap:8px;flex-wrap:wrap;margin-bottom:12px}
.wl-title{font-size:20px;font-weight:700;word-break:break-word}
.wl-title-input{flex:1;min-width:160px;font-size:18px;padding:6px 10px;border:1px solid rgba(128,128,128,.6);border-radius:8px;font-family:inherit}
.wl-bar-btns{display:flex;gap:6px}
.wl-app button{font-family:inherit;font-size:14px;padding:8px 14px;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:rgba(128,128,128,.12);color:inherit;cursor:pointer}
.wl-app button:hover{background:rgba(128,128,128,.25)}
.wl-app button.wl-primary{background:#e74c3c;border-color:#e74c3c;color:#fff;font-weight:700}
.wl-app button.wl-primary:hover{background:#c0392b}
.wl-app button:disabled{opacity:.5;cursor:not-allowed}
.wl-main{display:flex;gap:20px;flex-wrap:wrap;align-items:flex-start}
.wl-stage{position:relative;flex:1 1 320px;max-width:460px;margin:0 auto;padding-top:22px}
.wl-stage canvas{display:block;width:100%;height:auto;border-radius:50%;box-shadow:0 4px 14px rgba(0,0,0,.25);transform:rotate(0deg)}
.wl-pointer{position:absolute;top:0;left:50%;transform:translateX(-50%);font-size:34px;line-height:1;color:#e74c3c;z-index:2;text-shadow:0 1px 2px rgba(0,0,0,.4)}
.wl-center{position:absolute;top:calc(50% + 11px);left:50%;transform:translate(-50%,-50%);width:76px;height:76px;border-radius:50%!important;padding:0!important;background:#fff!important;color:#222!important;font-weight:700;font-size:16px!important;border:3px solid #e74c3c!important;z-index:3}
.wl-panel{flex:1 1 280px;min-width:260px}
.wl-panel label{display:block;font-weight:700;margin-bottom:6px}
.wl-panel textarea{width:100%;padding:10px;font-size:16px;line-height:1.5;border:1px solid rgba(128,128,128,.6);border-radius:8px;font-family:inherit;resize:vertical;background:#fff;color:#222}
.wl-count{font-size:13px;margin:6px 0 10px;opacity:.8}
.wl-count.wl-warn{color:#c0392b;opacity:1;font-weight:700}
.wl-btns,.wl-presets{display:flex;flex-wrap:wrap;gap:6px}
.wl-presets-label{margin:14px 0 6px;font-size:13px;opacity:.8}
.wl-msg{min-height:20px;margin-top:10px;font-size:14px;text-align:center}
.wl-modal{position:absolute;inset:0;background:rgba(0,0,0,.5);display:flex;align-items:center;justify-content:center;border-radius:14px;z-index:10;padding:16px}
.wl-modal-box{background:#fff;color:#222;border-radius:14px;padding:22px;max-width:360px;width:100%;text-align:center;box-shadow:0 8px 30px rgba(0,0,0,.4)}
.wl-modal-label{font-size:14px;opacity:.7}
.wl-modal-result{font-size:30px;font-weight:700;margin:10px 0 18px;word-break:break-word}
.wl-modal-btns{display:flex;gap:8px;justify-content:center;flex-wrap:wrap}
</style>
<script>
(function () {
  var MAX = 100;
  var COLORS = ['#e74c3c', '#3498db', '#f1c40f', '#2ecc71', '#9b59b6', '#e67e22', '#1abc9c', '#ec407a'];
  var DEFAULT_TITLE = 'วงล้อของฉัน';
  var DEFAULT_ITEMS = ['1', '2', '3', '4', '5', '6', '7', '8'];
  var PRESETS = {
    yesno: { t: 'ใช่ / ไม่ใช่', i: ['ใช่', 'ไม่ใช่'] },
    food: { t: 'วันนี้กินอะไรดี', i: ['ข้าวมันไก่', 'ผัดไทย', 'ต้มยำกุ้ง', 'ส้มตำ', 'ข้าวผัด', 'ก๋วยเตี๋ยว', 'ข้าวกะเพรา', 'หมูกระทะ'] },
    fruit: { t: 'ผลไม้', i: ['มะม่วง', 'ทุเรียน', 'มังคุด', 'ส้ม', 'กล้วย', 'แตงโม', 'สับปะรด', 'องุ่น'] },
    activity: { t: 'วันนี้ทำอะไรดี', i: ['ดูหนัง', 'ออกกำลังกาย', 'อ่านหนังสือ', 'ทำอาหาร', 'เดินเล่น', 'เล่นเกม', 'นอนพัก', 'ไปคาเฟ่'] },
    movie: { t: 'ประเภทหนัง', i: ['แอ็กชัน', 'คอมเมดี้', 'สยองขวัญ', 'โรแมนติก', 'ไซไฟ', 'ดราม่า', 'แอนิเมชัน', 'สืบสวน'] },
    animal: { t: 'สัตว์', i: ['ช้าง', 'เสือ', 'แมว', 'สุนัข', 'นกฮูก', 'ปลาโลมา', 'กระต่าย', 'เต่า'] }
  };
  var $ = function (id) { return document.getElementById(id); };
  var app = $('wl-app');
  var canvas = $('wl-canvas');
  var ctx = canvas.getContext('2d');
  var input = $('wl-input');
  var countEl = $('wl-count');
  var msgEl = $('wl-msg');
  var titleEl = $('wl-title');
  var titleInput = $('wl-title-input');
  var editTitleBtn = $('wl-edit-title');
  var modal = $('wl-modal');
  var resultEl = $('wl-result');
  var items = DEFAULT_ITEMS.slice();
  var hidden = [];
  var rot = 0;
  var spinning = false;
  var lastWinner = null;
  var editingTitle = false;
  function rnd() {
    if (window.crypto && window.crypto.getRandomValues) {
      var a = new Uint32Array(1);
      window.crypto.getRandomValues(a);
      return a[0] / 4294967296;
    }
    return Math.random();
  }
  function parseInput() {
    var lines = input.value.split('\n').map(function (s) { return s.trim(); }).filter(function (s) { return s.length > 0; });
    var tooMany = lines.length > MAX;
    items = lines.slice(0, MAX);
    return tooMany;
  }
  function say(text) { msgEl.textContent = text || ''; }
  function updateCount(tooMany) {
    if (tooMany) {
      countEl.textContent = 'มีรายการมากเกินไป ได้ไม่เกิน ' + MAX + ' รายการ';
      countEl.className = 'wl-count wl-warn';
    } else {
      countEl.textContent = 'ทั้งหมด ' + items.length + ' รายการ' + (hidden.length > 0 ? ' (ซ่อนอยู่ ' + hidden.length + ')' : '');
      countEl.className = 'wl-count';
    }
  }
  function cut(text, max) {
    var chars = Array.from(text);
    return chars.length > max ? chars.slice(0, max - 1).join('') + '…' : text;
  }
  function draw() {
    var size = canvas.width;
    var c = size / 2;
    var n = items.length;
    ctx.clearRect(0, 0, size, size);
    if (n === 0) {
      ctx.beginPath();
      ctx.arc(c, c, c - 4, 0, Math.PI * 2);
      ctx.fillStyle = '#ddd';
      ctx.fill();
      ctx.fillStyle = '#555';
      ctx.font = 'bold 30px "Sarabun","Noto Sans Thai","Leelawadee UI",Tahoma,sans-serif';
      ctx.textAlign = 'center';
      ctx.textBaseline = 'middle';
      ctx.fillText('กรุณาใส่รายชื่อ', c, c - 60);
      return;
    }
    var arc = (Math.PI * 2) / n;
    var fontSize = Math.max(11, Math.min(34, Math.floor(420 / n) + 4));
    items.forEach(function (text, i) {
      var start = -Math.PI / 2 + i * arc;
      var color = COLORS[i % COLORS.length];
      if (n > 1 && n % COLORS.length === 1 && i === n - 1) { color = '#95a5a6'; }
      ctx.beginPath();
      ctx.moveTo(c, c);
      ctx.arc(c, c, c - 4, start, start + arc);
      ctx.closePath();
      ctx.fillStyle = color;
      ctx.fill();
      if (n > 1) {
        ctx.strokeStyle = 'rgba(255,255,255,.85)';
        ctx.lineWidth = 2;
        ctx.stroke();
      }
      ctx.save();
      ctx.translate(c, c);
      ctx.rotate(start + arc / 2);
      ctx.textAlign = 'right';
      ctx.textBaseline = 'middle';
      ctx.fillStyle = '#fff';
      ctx.shadowColor = 'rgba(0,0,0,.45)';
      ctx.shadowBlur = 3;
      ctx.font = 'bold ' + fontSize + 'px "Sarabun","Noto Sans Thai","Leelawadee UI",Tahoma,sans-serif';
      ctx.fillText(cut(text, 16), c - 28, 0);
      ctx.restore();
    });
  }
  function setRotation(deg, animate) {
    canvas.style.transition = animate ? 'transform 5s cubic-bezier(.17,.67,.12,.99)' : 'none';
    canvas.style.transform = 'rotate(' + deg + 'deg)';
  }
  function refresh() {
    updateCount(parseInput());
    draw();
  }
  function syncInput() {
    input.value = items.join('\n');
    updateCount(false);
    draw();
  }
  function closeModal() { modal.hidden = true; }
  function hideSelected() {
    if (spinning) { return; }
    var idx = lastWinner === null ? -1 : items.indexOf(lastWinner);
    if (idx === -1) {
      say('ยังไม่มีรายการที่เลือก กรุณาหมุนวงล้อก่อน');
      return;
    }
    hidden.push(items.splice(idx, 1)[0]);
    lastWinner = null;
    closeModal();
    syncInput();
    say('ซ่อนรายการที่เลือกแล้ว กด รีเซ็ต เพื่อนำกลับมา');
  }
  function resetAll() {
    if (spinning) { return; }
    parseInput();
    items = items.concat(hidden).slice(0, MAX);
    hidden = [];
    lastWinner = null;
    rot = 0;
    setRotation(0, false);
    closeModal();
    syncInput();
    say('รีเซ็ตแล้ว');
  }
  function loadDefault() {
    if (spinning) { return; }
    items = DEFAULT_ITEMS.slice();
    hidden = [];
    lastWinner = null;
    titleEl.textContent = DEFAULT_TITLE;
    closeModal();
    syncInput();
    say('กลับเป็นค่าเริ่มต้นแล้ว');
  }
  function loadPreset(key) {
    var p = PRESETS[key];
    if (!p || spinning) { return; }
    items = p.i.slice();
    hidden = [];
    lastWinner = null;
    titleEl.textContent = p.t;
    closeModal();
    syncInput();
    say('');
  }
  function spin() {
    if (spinning) { return; }
    var tooMany = parseInput();
    updateCount(tooMany);
    draw();
    var n = items.length;
    if (n === 0) {
      say('กรุณาใส่รายชื่อ');
      return;
    }
    closeModal();
    say('');
    var winner = Math.floor(rnd() * n);
    var seg = 360 / n;
    var target = (winner + 0.15 + rnd() * 0.7) * seg;
    var delta = ((((-target - rot) % 360) + 360) % 360);
    var final = rot + 360 * (5 + Math.floor(rnd() * 3)) + delta;
    spinning = true;
    setRotation(final, true);
    window.setTimeout(function () {
      rot = final % 360;
      setRotation(rot, false);
      spinning = false;
      lastWinner = items[winner];
      resultEl.textContent = lastWinner;
      modal.hidden = false;
    }, 5200);
  }
  function toggleTitleEdit() {
    if (!editingTitle) {
      editingTitle = true;
      titleInput.value = titleEl.textContent;
      titleEl.hidden = true;
      titleInput.hidden = false;
      titleInput.focus();
      editTitleBtn.textContent = 'เสร็จสิ้น';
    } else {
      editingTitle = false;
      var v = titleInput.value.trim();
      titleEl.textContent = v.length > 0 ? v : DEFAULT_TITLE;
      titleInput.hidden = true;
      titleEl.hidden = false;
      editTitleBtn.textContent = 'แก้ไข';
    }
  }
  function toggleFullscreen() {
    if (document.fullscreenElement) {
      document.exitFullscreen();
    } else if (app.requestFullscreen) {
      app.requestFullscreen();
    } else {
      say('อุปกรณ์นี้ไม่รองรับโหมดเต็มหน้าจอ');
    }
  }
  input.value = items.join('\n');
  refresh();
  input.addEventListener('input', function () {
    hidden = [];
    lastWinner = null;
    refresh();
  });
  $('wl-spin').addEventListener('click', spin);
  $('wl-center').addEventListener('click', spin);
  $('wl-hide').addEventListener('click', hideSelected);
  $('wl-reset').addEventListener('click', resetAll);
  $('wl-default').addEventListener('click', loadDefault);
  $('wl-modal-hide').addEventListener('click', hideSelected);
  $('wl-modal-close').addEventListener('click', closeModal);
  editTitleBtn.addEventListener('click', toggleTitleEdit);
  titleInput.addEventListener('keydown', function (e) {
    if (e.key === 'Enter') { toggleTitleEdit(); }
  });
  $('wl-fs').addEventListener('click', toggleFullscreen);
  $('wl-presets').addEventListener('click', function (e) {
    var key = e.target && e.target.getAttribute ? e.target.getAttribute('data-preset') : null;
    if (key) { loadPreset(key); }
  });
  document.addEventListener('keydown', function (e) {
    var tag = e.target && e.target.tagName ? e.target.tagName.toUpperCase() : '';
    if (tag === 'TEXTAREA' || tag === 'INPUT') { return; }
    if (e.ctrlKey || e.metaKey || e.altKey) { return; }
    var k = e.key;
    if (k === ' ' || k === 'Spacebar') {
      if (tag === 'BUTTON') { return; }
      e.preventDefault();
      spin();
    } else if (k === 's' || k === 'S') { hideSelected(); }
    else if (k === 'r' || k === 'R') { resetAll(); }
    else if (k === 'e' || k === 'E') { e.preventDefault(); input.focus(); }
    else if (k === 'f' || k === 'F') { toggleFullscreen(); }
    else if (k === 'x' || k === 'X' || k === 'Escape') { closeModal(); }
  });
})();
</script>

## วิธีใช้งานเกมส์วงล้อ

1. **ใส่รายการ** – พิมพ์ชื่อหรือตัวเลือกในช่อง "รายการ" โดยใส่ 1 รายการต่อ 1 บรรทัด (สูงสุด 100 รายการ) วงล้อจะอัปเดตทันทีที่พิมพ์
2. **ตั้งชื่อเรื่อง (ไม่บังคับ)** – กด "แก้ไข" ที่ด้านบนวงล้อ พิมพ์ชื่อที่ต้องการ แล้วกด "เสร็จสิ้น"
3. **หมุนวงล้อ** – กดปุ่ม "หมุน" ตรงกลางวงล้อ หรือกดปุ่ม "หมุน" ด้านขวา (บนคอมพิวเตอร์กด Space ได้)
4. **ดูผลลัพธ์** – รอประมาณ 5 วินาที วงล้อจะหยุดและแสดงผลลัพธ์ตรงกับรายการที่ลูกศร ▼ ชี้อยู่
5. **หมุนต่อหรือซ่อนรายการ** – กด "ซ่อนรายการนี้" หากไม่ต้องการให้ถูกสุ่มซ้ำ แล้วหมุนต่อได้เลย
6. **เริ่มใหม่** – กด "รีเซ็ต" เพื่อนำรายการที่ซ่อนกลับมา หรือ "ค่าเริ่มต้น" เพื่อกลับไปใช้รายการตัวอย่าง

เคล็ดลับ: หากไม่อยากพิมพ์เอง ให้เลือก "ตัวอย่างสำเร็จรูป" เช่น ใช่ / ไม่ใช่ หรือตัวเลือกอาหาร แล้วแก้ไขต่อได้ตามต้องการ

## ปุ่มลัดบนคีย์บอร์ด

| ปุ่ม | การทำงาน |
|------|----------|
| Space | หมุนวงล้อ |
| S | ซ่อนรายการที่เลือก |
| R | รีเซ็ต |
| E | แก้ไขรายการ |
| F | เปิด/ปิดโหมดเต็มหน้าจอ |
| X หรือ Esc | ปิดหน้าต่างผลลัพธ์ |

ปุ่มลัดใช้ได้เมื่อไม่ได้กำลังพิมพ์ในช่องข้อความ

## คำอธิบายศัพท์

| คำศัพท์ | ความหมายโดยสรุป |
|---------|------------------|
| วงล้อ | วงกลมที่แบ่งเป็นช่องตามจำนวนรายการ แต่ละช่องมีสีและชื่อของตัวเอง |
| รายการ | ชื่อหรือตัวเลือกที่ต้องการสุ่ม ใส่ได้ 1 รายการต่อบรรทัด สูงสุด 100 รายการ |
| ลูกศร ▼ | ตัวชี้ที่ด้านบนวงล้อ ช่องที่ลูกศรชี้เมื่อวงล้อหยุดคือผลลัพธ์ |
| หมุน | สั่งให้วงล้อหมุนและสุ่มผลลัพธ์ 1 รายการ |
| ผลลัพธ์ | รายการที่ถูกสุ่มได้ในการหมุนครั้งนั้น |
| ชื่อเรื่อง | ข้อความหัวข้อของวงล้อ แก้ไขได้ เช่น "วันนี้กินอะไรดี" |
| ซ่อนรายการที่เลือก | นำรายการที่สุ่มได้ออกจากวงล้อชั่วคราว เพื่อไม่ให้ถูกสุ่มซ้ำ |
| รีเซ็ต | นำรายการที่ซ่อนไว้กลับเข้าวงล้อ และคืนวงล้อสู่ตำแหน่งเริ่มต้น |
| ค่าเริ่มต้น | ล้างการแก้ไขทั้งหมด แล้วกลับไปใช้ชื่อเรื่องและรายการตัวอย่างเดิม |
| ตัวอย่างสำเร็จรูป | ชุดรายการที่เตรียมไว้ให้ เช่น ใช่ / ไม่ใช่ อาหาร ผลไม้ กิจกรรม |
| เต็มหน้าจอ | ขยายเครื่องมือให้เต็มหน้าจอ เหมาะกับการใช้ฉายให้หลายคนดู |
| ปุ่มลัด | ปุ่มบนคีย์บอร์ดที่ใช้สั่งงานแทนการคลิกเมาส์ |

## วงล้อสุ่มทำงานอย่างไร

เมื่อกดหมุน เครื่องมือจะสร้างเลขสุ่มด้วย JavaScript API ของเบราว์เซอร์ แล้วคำนวณว่าวงล้อต้องหยุดที่ช่องใด จากนั้นจึงหมุนวงล้อด้วยแอนิเมชัน CSS ทุกรายการมีโอกาสถูกเลือกเท่ากัน และการประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ รายการที่พิมพ์จะไม่ถูกส่งไปที่เซิร์ฟเวอร์