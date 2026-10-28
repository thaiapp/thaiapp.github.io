---
title: นาฬิกาพลิกออนไลน์ ฟรี
h1: นาฬิกาพลิกออนไลน์
description: 'ดูนาฬิกาพลิกออนไลน์แบบเรียลไทม์ ตัวเลขใหญ่อ่านง่าย รองรับเต็มจอ โหมดมืด แสดงวันที่ และเวลา 12/24 ชั่วโมง ใช้ได้ทุกอุปกรณ์ ฟรี ไม่ต้องดาวน์โหลดแอปหรือสมัคร'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-27T09:00:00+07:00'
weight: 5
tool: true
topic: time
appCategory: UtilitiesApplication
keywords:
- นาฬิกาพลิกออนไลน์
- เวลาและนาฬิกา
---
<style>
.fc-app{--bg:#eef0f3;--card:#ffffff;--txt:#1d2024;--line:rgba(0,0,0,.18);--shadow:0 6px 18px rgba(0,0,0,.16);--muted:#5b616b;--h:clamp(84px,23vw,210px);--gap:clamp(8px,2vw,22px);margin:16px 0;font-family:system-ui,-apple-system,"Segoe UI",Roboto,"Noto Sans Thai",sans-serif}
.fc-app.fc-dark{--bg:#000000;--card:#2a2c30;--txt:#f1f2f4;--line:rgba(0,0,0,.65);--shadow:0 6px 18px rgba(0,0,0,.6);--muted:#9aa0a8}
.fc-stage{background:var(--bg);border-radius:14px;padding:clamp(18px,4vw,40px) 10px;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:clamp(10px,2vw,20px);min-height:260px;box-sizing:border-box;color:var(--txt)}
.fc-stage:fullscreen{border-radius:0;width:100%;height:100%;--h:min(27vw,56vh)}
.fc-stage.fc-fake{position:fixed;top:0;left:0;right:0;bottom:0;z-index:99999;border-radius:0;--h:min(27vw,56vh)}
.fc-app.fc-nosec .fc-stage{--h:clamp(84px,34vw,260px)}
.fc-app.fc-nosec .fc-stage:fullscreen,.fc-app.fc-nosec .fc-stage.fc-fake{--h:min(40vw,56vh)}
.fc-row{display:flex;align-items:center;justify-content:center;gap:var(--gap);width:100%}
.fc-sep{font-size:calc(var(--h)*.36);font-weight:700;color:var(--muted);line-height:1}
.fc-app.fc-nosec .fc-sep.fc-sep-s,.fc-app.fc-nosec .fc-card.fc-card-s{display:none}
.fc-card{position:relative;width:calc(var(--h)*1.02);height:var(--h);perspective:700px;font-size:calc(var(--h)*.74);font-weight:700;font-variant-numeric:tabular-nums;box-shadow:var(--shadow);border-radius:calc(var(--h)*.08)}
.fc-half,.fc-leaf-face{position:absolute;left:0;right:0;height:50%;overflow:hidden;background:var(--card);color:var(--txt)}
.fc-half span,.fc-leaf-face span{position:absolute;left:0;right:0;height:200%;line-height:var(--h);text-align:center;white-space:nowrap}
.fc-top{top:0;border-radius:calc(var(--h)*.08) calc(var(--h)*.08) 0 0}
.fc-bottom{bottom:0;border-radius:0 0 calc(var(--h)*.08) calc(var(--h)*.08)}
.fc-top span,.fc-front span{top:0}
.fc-bottom span,.fc-back span{top:-100%}
.fc-leaf{position:absolute;left:0;right:0;top:0;height:50%;transform-origin:50% 100%;transform-style:preserve-3d;z-index:3;display:none}
.fc-leaf.fc-go{display:block;animation:fcflip .55s ease-in forwards}
.fc-leaf-face{top:0;backface-visibility:hidden;-webkit-backface-visibility:hidden}
.fc-front{border-radius:calc(var(--h)*.08) calc(var(--h)*.08) 0 0}
.fc-back{transform:rotateX(180deg);border-radius:0 0 calc(var(--h)*.08) calc(var(--h)*.08)}
.fc-card:after{content:"";position:absolute;left:0;right:0;top:50%;height:2px;margin-top:-1px;background:var(--line);z-index:4}
@keyframes fcflip{from{transform:rotateX(0deg)}to{transform:rotateX(-180deg)}}
.fc-ampm{min-height:1.2em;font-size:clamp(14px,2.6vw,26px);font-weight:700;color:var(--muted)}
.fc-date{min-height:1.4em;font-size:clamp(15px,2.8vw,28px);color:var(--muted);text-align:center}
.fc-bar{width:min(70%,520px);height:5px;border-radius:5px;background:var(--line);overflow:hidden;display:none}
.fc-app.fc-nosec .fc-bar{display:block}
.fc-bar i{display:block;height:100%;width:0;background:var(--muted)}
.fc-controls{display:flex;flex-wrap:wrap;gap:8px;justify-content:center;margin-top:12px}
.fc-btn{border:1px solid #c5cad1;background:#fff;color:#1d2024;border-radius:999px;padding:8px 16px;font-size:15px;cursor:pointer;line-height:1.2}
.fc-btn:hover{background:#f1f3f5}
.fc-btn.fc-on{background:#1d2024;color:#fff;border-color:#1d2024}
.fc-btn kbd{font:inherit;font-weight:700;opacity:.65;margin-left:6px}
@media (prefers-reduced-motion:reduce){.fc-leaf.fc-go{animation-duration:.01s}}
</style>
<div class="fc-app" id="fcApp">
<div class="fc-stage" id="fcStage">
<div class="fc-row">
<div class="fc-card fc-card-h" id="fcH"></div>
<div class="fc-sep">:</div>
<div class="fc-card fc-card-m" id="fcM"></div>
<div class="fc-sep fc-sep-s">:</div>
<div class="fc-card fc-card-s" id="fcS"></div>
</div>
<div class="fc-ampm" id="fcAmpm"></div>
<div class="fc-date" id="fcDate"></div>
<div class="fc-bar"><i id="fcBar"></i></div>
</div>
<div class="fc-controls">
<button type="button" class="fc-btn" id="btnSec">วินาที <kbd>S</kbd></button>
<button type="button" class="fc-btn" id="btnDate">วันที่ <kbd>D</kbd></button>
<button type="button" class="fc-btn" id="btnHour">12/24 ชม. <kbd>H</kbd></button>
<button type="button" class="fc-btn" id="btnDark">โหมดมืด <kbd>T</kbd></button>
<button type="button" class="fc-btn" id="btnFull">เต็มจอ <kbd>F</kbd></button>
</div>
</div>
<script>(function () {
  var app = document.getElementById('fcApp');
  var stage = document.getElementById('fcStage');
  if (!app || !stage) { return; }
  var KEY = 'flipClockSettings';
  var defaults = { sec: true, date: false, h12: false, dark: false };
  var st = { sec: defaults.sec, date: defaults.date, h12: defaults.h12, dark: defaults.dark };
  try {
    var saved = JSON.parse(localStorage.getItem(KEY) || '{}');
    ['sec', 'date', 'h12', 'dark'].forEach(function (k) {
      if (typeof saved[k] === 'boolean') { st[k] = saved[k]; }
    });
  } catch (e) {}
  function save() {
    try { localStorage.setItem(KEY, JSON.stringify(st)); } catch (e) {}
  }
  function makeCard(el) {
    function half(cls, tag) {
      var d = document.createElement('div');
      d.className = cls;
      var s = document.createElement('span');
      d.appendChild(s);
      return { box: d, txt: s };
    }
    var top = half('fc-half fc-top');
    var bottom = half('fc-half fc-bottom');
    var leaf = document.createElement('div');
    leaf.className = 'fc-leaf';
    var front = half('fc-leaf-face fc-front');
    var back = half('fc-leaf-face fc-back');
    leaf.appendChild(front.box);
    leaf.appendChild(back.box);
    el.appendChild(top.box);
    el.appendChild(bottom.box);
    el.appendChild(leaf);
    var current = null;
    var timer = null;
    function setAll(v) {
      top.txt.textContent = v;
      bottom.txt.textContent = v;
      front.txt.textContent = v;
      back.txt.textContent = v;
    }
    return {
      set: function (v, animate) {
        if (v === current) { return; }
        var old = current;
        current = v;
        if (old === null || !animate) { setAll(v); return; }
        clearTimeout(timer);
        leaf.className = 'fc-leaf';
        top.txt.textContent = v;
        bottom.txt.textContent = old;
        front.txt.textContent = old;
        back.txt.textContent = v;
        void leaf.offsetWidth;
        leaf.className = 'fc-leaf fc-go';
        timer = setTimeout(function () {
          setAll(v);
          leaf.className = 'fc-leaf';
        }, 580);
      }
    };
  }
  var cH = makeCard(document.getElementById('fcH'));
  var cM = makeCard(document.getElementById('fcM'));
  var cS = makeCard(document.getElementById('fcS'));
  var elAmpm = document.getElementById('fcAmpm');
  var elDate = document.getElementById('fcDate');
  var elBar = document.getElementById('fcBar');
  var btn = {
    sec: document.getElementById('btnSec'),
    date: document.getElementById('btnDate'),
    h12: document.getElementById('btnHour'),
    dark: document.getElementById('btnDark'),
    full: document.getElementById('btnFull')
  };
  function pad(n) { return n > 9 ? String(n) : '0' + n; }
  var first = true;
  function render() {
    var now = new Date();
    var h = now.getHours();
    var label = '';
    if (st.h12) {
      label = h > 11 ? 'หลังเที่ยง' : 'ก่อนเที่ยง';
      h = h % 12;
      if (h === 0) { h = 12; }
    }
    var anim = !first;
    cH.set(pad(h), anim);
    cM.set(pad(now.getMinutes()), anim);
    cS.set(pad(now.getSeconds()), anim);
    first = false;
    elAmpm.textContent = label;
    if (st.date) {
      try {
        elDate.textContent = now.toLocaleDateString('th-TH', { weekday: 'long', day: 'numeric', month: 'long', year: 'numeric' });
      } catch (e) {
        elDate.textContent = now.toDateString();
      }
    } else {
      elDate.textContent = '';
    }
    elBar.style.width = (now.getSeconds() * 100 / 59) + '%';
  }
  function tick() {
    render();
    setTimeout(tick, 1005 - (Date.now() % 1000));
  }
  function applyState() {
    app.classList.toggle('fc-nosec', !st.sec);
    app.classList.toggle('fc-dark', st.dark);
    btn.sec.classList.toggle('fc-on', st.sec);
    btn.date.classList.toggle('fc-on', st.date);
    btn.h12.classList.toggle('fc-on', st.h12);
    btn.dark.classList.toggle('fc-on', st.dark);
    render();
  }
  function toggle(k) {
    st[k] = !st[k];
    save();
    applyState();
  }
  var wake = null;
  function requestWake() {
    try {
      if (navigator.wakeLock) {
        navigator.wakeLock.request('screen').then(function (l) { wake = l; }).catch(function () {});
      }
    } catch (e) {}
  }
  function releaseWake() {
    try {
      if (wake) { wake.release(); wake = null; }
    } catch (e) {}
  }
  function isFull() {
    return !!document.fullscreenElement || stage.classList.contains('fc-fake');
  }
  function enterFull() {
    var done = false;
    try {
      if (stage.requestFullscreen) {
        var p = stage.requestFullscreen();
        if (p && p.catch) { p.catch(function () { stage.classList.add('fc-fake'); }); }
        done = true;
      }
    } catch (e) {}
    if (!done) { stage.classList.add('fc-fake'); }
    requestWake();
    btn.full.classList.add('fc-on');
  }
  function exitFull() {
    try {
      if (document.fullscreenElement && document.exitFullscreen) { document.exitFullscreen(); }
    } catch (e) {}
    stage.classList.remove('fc-fake');
    releaseWake();
    btn.full.classList.remove('fc-on');
  }
  function toggleFull() { if (isFull()) { exitFull(); } else { enterFull(); } }
  document.addEventListener('fullscreenchange', function () {
    if (!document.fullscreenElement) {
      stage.classList.remove('fc-fake');
      releaseWake();
      btn.full.classList.remove('fc-on');
    }
  });
  document.addEventListener('visibilitychange', function () {
    if (!document.hidden && isFull()) { requestWake(); }
  });
  btn.sec.addEventListener('click', function () { toggle('sec'); });
  btn.date.addEventListener('click', function () { toggle('date'); });
  btn.h12.addEventListener('click', function () { toggle('h12'); });
  btn.dark.addEventListener('click', function () { toggle('dark'); });
  btn.full.addEventListener('click', toggleFull);
  document.addEventListener('keydown', function (e) {
    var t = e.target;
    var tag = t && t.tagName ? t.tagName.toLowerCase() : '';
    if (tag === 'input' || tag === 'textarea' || tag === 'select' || (t && t.isContentEditable)) { return; }
    if (e.ctrlKey || e.metaKey || e.altKey) { return; }
    var k = (e.key || '').toLowerCase();
    if (k === 's') { toggle('sec'); }
    else if (k === 'd') { toggle('date'); }
    else if (k === 'h') { toggle('h12'); }
    else if (k === 't') { toggle('dark'); }
    else if (k === 'f') { toggleFull(); }
    else if (k === 'escape' && stage.classList.contains('fc-fake')) { exitFull(); }
  });
  applyState();
  tick();
})();
</script>

## วิธีใช้งานนาฬิกาพลิกออนไลน์

1. **เปิดหน้านี้** นาฬิกาจะแสดงเวลาปัจจุบันของเครื่องคุณทันที ไม่ต้องติดตั้งหรือสมัครสมาชิก
2. **ดูเวลา** การ์ดซ้ายคือชั่วโมง การ์ดกลางคือนาที และการ์ดขวาคือวินาที เมื่อตัวเลขเปลี่ยนการ์ดจะพลิกลงมา
3. **ซ่อนหรือแสดงวินาที** กดปุ่ม "วินาที" หรือกดแป้น S หากซ่อนวินาที การ์ดชั่วโมงและนาทีจะขยายใหญ่ขึ้น และมีแถบเล็ก ๆ แสดงความคืบหน้าของนาทีปัจจุบัน
4. **เปลี่ยนรูปแบบเวลา** กดปุ่ม "12/24 ชม." หรือกดแป้น H เพื่อสลับระหว่างเวลา 24 ชั่วโมง กับ 12 ชั่วโมงที่มีคำว่า ก่อนเที่ยง หรือ หลังเที่ยง
5. **แสดงวันที่** กดปุ่ม "วันที่" หรือกดแป้น D เพื่อแสดงวันในสัปดาห์และวันที่ใต้การ์ด
6. **ใช้โหมดมืด** กดปุ่ม "โหมดมืด" หรือกดแป้น T เหมาะกับห้องที่มีแสงน้อยหรือใช้วางข้างเตียง
7. **เปิดเต็มจอ** กดปุ่ม "เต็มจอ" หรือกดแป้น F แล้วนาฬิกาจะขยายเต็มหน้าจอ กด Esc เพื่อออก บนโทรศัพท์ให้หมุนเป็นแนวนอนเพื่อให้การ์ดใหญ่ที่สุด
8. **จำการตั้งค่า** ระบบจะจำการตั้งค่าไว้ในเบราว์เซอร์ของคุณ เมื่อกลับมาใหม่จะใช้ค่าเดิมโดยอัตโนมัติ

### แป้นลัด

| แป้น | การทำงาน |
|------|----------|
| S | แสดงหรือซ่อนวินาที |
| D | แสดงหรือซ่อนวันที่ |
| H | สลับเวลา 12 / 24 ชั่วโมง |
| T | เปิดหรือปิดโหมดมืด |
| F | เปิดเต็มจอ |
| Esc | ออกจากโหมดเต็มจอ |

## คำอธิบายศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยย่อ |
|---------|----------------|
| นาฬิกาพลิก (Flip Clock) | นาฬิกาที่แสดงเวลาด้วยแผ่นการ์ดที่พลิกเปลี่ยนตัวเลข เลียนแบบนาฬิกากลไกแบบเก่า |
| Split-flap | รูปแบบการ์ดที่แบ่งครึ่งบนและครึ่งล่าง ครึ่งบนจะพับลงมาเพื่อเผยตัวเลขใหม่ |
| การ์ด (Card) | แผ่นที่แสดงตัวเลขหนึ่งชุด ได้แก่ ชั่วโมง นาที และวินาที |
| วินาที | หน่วยเวลาที่เล็กที่สุดบนนาฬิกานี้ ปิดได้หากต้องการหน้าจอที่เรียบง่ายขึ้น |
| แถบความคืบหน้า | เส้นบาง ๆ ใต้การ์ดที่ค่อย ๆ เต็มตลอดหนึ่งนาที เมื่อซ่อนวินาที |
| เวลา 24 ชั่วโมง | ระบบเวลา 00:00 ถึง 23:59 ที่ใช้ทั่วไปในประเทศไทย |
| เวลา 12 ชั่วโมง | ระบบเวลา 1 ถึง 12 ที่ใช้คู่กับ ก่อนเที่ยง หรือ หลังเที่ยง |
| ก่อนเที่ยง / หลังเที่ยง | ตัวบอกช่วงเวลาในระบบ 12 ชั่วโมง ตรงกับ AM และ PM |
| โหมดมืด (Dark Mode) | การแสดงผลด้วยพื้นดำและการ์ดสีเทาเข้ม ช่วยให้สบายตาในที่แสงน้อย |
| เต็มจอ (Fullscreen) | โหมดที่แสดงเฉพาะนาฬิกาเต็มหน้าจอ เหมาะกับใช้เป็นนาฬิกาตั้งโต๊ะ |
| ป้องกันหน้าจอดับ (Wake Lock) | ฟีเจอร์ของเบราว์เซอร์ที่ช่วยให้หน้าจอเปิดค้างขณะอยู่ในโหมดเต็มจอ หากอุปกรณ์รองรับ |
| แป้นลัด (Shortcut) | ปุ่มบนคีย์บอร์ดที่กดแล้วสั่งงานได้ทันที เช่น S, D, H, T และ F |
| เบราว์เซอร์ | โปรแกรมที่ใช้เปิดเว็บ เช่น Chrome, Safari หรือ Edge |