---
title: เครื่องมือหน้าจอ ออนไลน์ ฟรี
h1: เครื่องมือหน้าจอ
description: เครื่องมือหน้าจอออนไลน์ฟรี มีหน้าจอสีขาว หน้าจอสีดำ กระจกเงา และไฟกระพริบ ใช้ตรวจจุดเสียบนจอ เป็นไฟส่องหน้าได้ เปิดได้ทั้งมือถือ แท็บเล็ต และคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 19
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- เครื่องมือหน้าจอ
- เครื่องมือหน้าจอ ออนไลน์
- ทดสอบและวัดค่า
---

<style>
.pl-wrap{max-width:720px;margin:0 auto 24px;font-family:inherit}
.pl-tabs{display:flex;flex-wrap:wrap;gap:8px;margin:0 0 12px}
.pl-tab{flex:1 1 120px;padding:10px 12px;border:1px solid #9994;border-radius:10px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.pl-tab[aria-selected="true"]{background:#2563eb;border-color:#2563eb;color:#fff}
.pl-stage{position:relative;width:100%;height:320px;border:1px solid #9996;border-radius:12px;overflow:hidden;display:flex;align-items:center;justify-content:center;background:#fff;cursor:pointer;-webkit-tap-highlight-color:transparent}
.pl-stage.pl-pseudo{position:fixed;top:0;left:0;right:0;bottom:0;width:100%;height:100%;z-index:2147483647;border:0;border-radius:0}
.pl-stage:fullscreen{width:100%;height:100%;border:0;border-radius:0}
.pl-stage:-webkit-full-screen{width:100%;height:100%;border:0;border-radius:0}
.pl-video{position:absolute;top:0;left:0;width:100%;height:100%;object-fit:cover;transform:scaleX(-1);display:none;background:#000}
.pl-hint{position:relative;z-index:1;padding:8px 14px;font-size:16px;text-align:center;pointer-events:none}
.pl-exit{display:none;position:absolute;top:12px;right:12px;z-index:3;padding:8px 14px;border:0;border-radius:20px;background:#000a;color:#fff;font:inherit;font-size:14px;cursor:pointer}
.pl-stage.pl-pseudo .pl-exit,.pl-stage.pl-isfull .pl-exit{display:block}
.pl-stage.pl-pseudo .pl-hint,.pl-stage.pl-isfull .pl-hint{display:none}
.pl-controls{display:flex;flex-wrap:wrap;align-items:center;gap:12px;margin:12px 0 0}
.pl-btn{padding:10px 16px;border:0;border-radius:10px;background:#2563eb;color:#fff;font:inherit;cursor:pointer}
.pl-btn.pl-alt{background:#6b7280}
.pl-opt{display:inline-flex;align-items:center;gap:6px}
.pl-flash{display:none;flex-wrap:wrap;align-items:center;gap:12px}
.pl-msg{min-height:1.4em;margin:10px 0 0;font-size:14px;color:#b45309}
.pl-warn{font-size:13px;opacity:.8;margin:6px 0 0}
</style>
<div id="pl-screen" class="pl-wrap">
<div class="pl-tabs" role="tablist" aria-label="เลือกโหมดหน้าจอ">
<button type="button" class="pl-tab" role="tab" data-mode="white" aria-selected="true">เต็มหน้าจอสีขาว</button>
<button type="button" class="pl-tab" role="tab" data-mode="black" aria-selected="false">เต็มหน้าจอสีดำ</button>
<button type="button" class="pl-tab" role="tab" data-mode="mirror" aria-selected="false">กระจกเงา</button>
<button type="button" class="pl-tab" role="tab" data-mode="flash" aria-selected="false">ไฟกระพริบ</button>
</div>
<div class="pl-stage" id="pl-stage">
<video class="pl-video" id="pl-video" playsinline muted autoplay></video>
<div class="pl-hint" id="pl-hint">แตะที่หน้าจอเพื่อเต็มหน้าจอ</div>
<button type="button" class="pl-exit" id="pl-exit">✕ ออก</button>
</div>
<div class="pl-controls">
<button type="button" class="pl-btn" id="pl-full">เต็มหน้าจอ</button>
<label class="pl-opt"><input type="checkbox" id="pl-awake" checked> เปิดหน้าจอไว้</label>
<button type="button" class="pl-btn pl-alt" id="pl-cam" style="display:none">ปิดกล้อง</button>
<div class="pl-flash" id="pl-flashctl">
<label class="pl-opt">ความเร็ว <input type="range" id="pl-speed" min="1" max="10" step="1" value="1"> <b id="pl-speedval">1</b></label>
<label class="pl-opt">สี <input type="color" id="pl-color" value="#ffffff"></label>
</div>
</div>
<p class="pl-warn" id="pl-warn" style="display:none">คำเตือน: แสงกะพริบอาจกระตุ้นอาการในผู้ที่ไวต่อแสง กรุณาใช้ด้วยความระมัดระวัง</p>
<p class="pl-msg" id="pl-msg" role="status"></p>
<script>
(function () {
  try {
    var $ = function (id) { return document.getElementById(id); };
    var root = $('pl-screen');
    if (!root) { return; }
    var stage = $('pl-stage'), video = $('pl-video'), hint = $('pl-hint');
    var exitBtn = $('pl-exit'), fullBtn = $('pl-full'), awake = $('pl-awake');
    var camBtn = $('pl-cam'), flashCtl = $('pl-flashctl'), speed = $('pl-speed');
    var speedVal = $('pl-speedval'), colorIn = $('pl-color'), warn = $('pl-warn'), msg = $('pl-msg');
    var tabs = root.querySelectorAll('.pl-tab');
    var mode = 'white', stream = null, flashTimer = null, flashOn = true, wakeLock = null;
    function say(t) { msg.textContent = t || ''; }
    function isFull() {
      return !!(document.fullscreenElement || document.webkitFullscreenElement) || stage.classList.contains('pl-pseudo');
    }
    function paint() {
      var bg = '#ffffff', fg = '#555555';
      if (mode === 'black') { bg = '#000000'; fg = '#bbbbbb'; }
      if (mode === 'mirror') { bg = '#000000'; fg = '#ffffff'; }
      if (mode === 'flash') { bg = flashOn ? colorIn.value : '#000000'; fg = flashOn ? '#444444' : '#bbbbbb'; }
      stage.style.backgroundColor = bg;
      hint.style.color = fg;
    }
    function stopFlash() {
      if (flashTimer) { clearInterval(flashTimer); flashTimer = null; }
      flashOn = true;
    }
    function startFlash() {
      stopFlash();
      var ms = Math.round(500 / Number(speed.value || 1));
      flashTimer = setInterval(function () { flashOn = !flashOn; paint(); }, ms);
    }
    function stopCamera() {
      if (stream) {
        try { stream.getTracks().forEach(function (t) { t.stop(); }); } catch (e) {}
        stream = null;
      }
      video.srcObject = null;
      video.style.display = 'none';
      camBtn.style.display = 'none';
    }
    function startCamera() {
      if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
        say('เบราว์เซอร์นี้ไม่รองรับกล้อง หรือหน้าเว็บไม่ได้เปิดผ่าน HTTPS');
        return;
      }
      say('กำลังขอสิทธิ์เข้าถึงกล้อง...');
      navigator.mediaDevices.getUserMedia({ video: { facingMode: 'user' }, audio: false })
        .then(function (s) {
          if (mode !== 'mirror') { s.getTracks().forEach(function (t) { t.stop(); }); return; }
          stream = s;
          video.srcObject = s;
          video.style.display = 'block';
          camBtn.style.display = '';
          camBtn.textContent = 'ปิดกล้อง';
          var p = video.play();
          if (p && p.catch) { p.catch(function () {}); }
          say('');
        })
        .catch(function () {
          say('ไม่สามารถเปิดกล้องได้ กรุณาอนุญาตการใช้กล้องในเบราว์เซอร์');
        });
    }
    function setMode(m) {
      mode = m;
      stopFlash();
      stopCamera();
      say('');
      for (var i = 0; i < tabs.length; i++) {
        tabs[i].setAttribute('aria-selected', tabs[i].getAttribute('data-mode') === m ? 'true' : 'false');
      }
      flashCtl.style.display = m === 'flash' ? 'flex' : 'none';
      warn.style.display = m === 'flash' ? 'block' : 'none';
      if (m === 'mirror') { startCamera(); }
      if (m === 'flash') { startFlash(); }
      paint();
    }
    function lockAwake() {
      if (!awake.checked || !navigator.wakeLock || wakeLock) { return; }
      navigator.wakeLock.request('screen').then(function (l) {
        wakeLock = l;
        l.addEventListener('release', function () { wakeLock = null; });
      }).catch(function () {});
    }
    function unlockAwake() {
      if (wakeLock) { try { wakeLock.release(); } catch (e) {} wakeLock = null; }
    }
    function syncFull() {
      var on = !!(document.fullscreenElement || document.webkitFullscreenElement);
      stage.classList.toggle('pl-isfull', on);
      if (isFull()) { lockAwake(); } else { unlockAwake(); }
    }
    function enterFull() {
      if (isFull()) { return; }
      var req = stage.requestFullscreen || stage.webkitRequestFullscreen;
      if (req) {
        try {
          var r = req.call(stage);
          if (r && r.catch) {
            r.catch(function () { stage.classList.add('pl-pseudo'); syncFull(); });
          }
          return;
        } catch (e) {}
      }
      stage.classList.add('pl-pseudo');
      syncFull();
    }
    function exitFull() {
      stage.classList.remove('pl-pseudo');
      if (document.fullscreenElement || document.webkitFullscreenElement) {
        var ex = document.exitFullscreen || document.webkitExitFullscreen;
        if (ex) { try { ex.call(document); } catch (e) {} }
      }
      syncFull();
    }
    for (var i = 0; i < tabs.length; i++) {
      tabs[i].addEventListener('click', function (ev) { setMode(ev.currentTarget.getAttribute('data-mode')); });
    }
    stage.addEventListener('click', function (ev) { if (ev.target !== exitBtn) { enterFull(); } });
    fullBtn.addEventListener('click', enterFull);
    exitBtn.addEventListener('click', function (ev) { ev.stopPropagation(); exitFull(); });
    camBtn.addEventListener('click', function () {
      if (stream) { stopCamera(); camBtn.style.display = ''; camBtn.textContent = 'เปิดกล้อง'; }
      else { startCamera(); }
    });
    awake.addEventListener('change', function () { if (awake.checked) { if (isFull()) { lockAwake(); } } else { unlockAwake(); } });
    speed.addEventListener('input', function () {
      speedVal.textContent = speed.value;
      if (mode === 'flash') { startFlash(); }
    });
    colorIn.addEventListener('input', paint);
    document.addEventListener('fullscreenchange', syncFull);
    document.addEventListener('webkitfullscreenchange', syncFull);
    document.addEventListener('keydown', function (ev) {
      if (ev.key === 'Escape' && stage.classList.contains('pl-pseudo')) { exitFull(); }
    });
    document.addEventListener('visibilitychange', function () {
      if (document.visibilityState === 'visible' && isFull()) { lockAwake(); }
    });
    window.addEventListener('pagehide', function () { stopCamera(); stopFlash(); unlockAwake(); });
    paint();
  } catch (err) {
    if (window.console) { console.error('Screen tool error:', err); }
  }
})();
</script>
</div>

## วิธีใช้เครื่องมือหน้าจอ

1. เลือกโหมดที่ต้องการจากปุ่มด้านบน ได้แก่ เต็มหน้าจอสีขาว เต็มหน้าจอสีดำ กระจกเงา หรือไฟกระพริบ
2. แตะที่พื้นที่แสดงผล หรือกดปุ่ม "เต็มหน้าจอ" เพื่อขยายให้เต็มจอ
3. ติ๊กที่ "เปิดหน้าจอไว้" หากไม่ต้องการให้จอดับเองระหว่างใช้งาน
4. โหมดกระจกเงา: กดอนุญาตให้เบราว์เซอร์ใช้กล้องหน้า แล้วภาพของคุณจะแสดงแบบกลับซ้ายขวา
5. โหมดไฟกระพริบ: ปรับแถบความเร็วและเลือกสีที่ต้องการ ไฟจะสลับระหว่างสีที่เลือกกับสีดำ
6. กดปุ่ม "✕ ออก" หรือปุ่ม Esc บนคอมพิวเตอร์ เพื่อออกจากโหมดเต็มหน้าจอ

## คำอธิบายศัพท์ที่ควรรู้

- **เต็มหน้าจอ (Fullscreen):** โหมดที่ขยายพื้นที่แสดงผลให้เต็มจอ ซ่อนแถบเมนูและแถบเบราว์เซอร์
- **เต็มหน้าจอสีขาว:** จอสีขาวล้วน ใช้ตรวจหาจุดสีเสียหรือคราบบนหน้าจอ หรือใช้เป็นแสงสว่างเบา ๆ ได้
- **เต็มหน้าจอสีดำ:** จอสีดำล้วน ใช้ตรวจแสงรั่วที่ขอบจอ หรือใช้ในที่มืดโดยไม่รบกวนสายตา
- **กระจกเงา:** แสดงภาพจากกล้องหน้าแบบกลับซ้ายขวา เหมือนส่องกระจกจริง ภาพไม่ถูกอัปโหลดหรือบันทึก
- **ไฟกระพริบ:** หน้าจอที่สลับสว่างและมืดต่อเนื่อง ใช้เป็นสัญญาณไฟหรือไฟส่งสัญญาณ
- **ความเร็ว:** จำนวนครั้งที่ไฟกระพริบต่อวินาที ตั้งได้ตั้งแต่ 1 ถึง 10
- **เปิดหน้าจอไว้ (Screen Wake Lock):** ฟีเจอร์ที่ป้องกันไม่ให้หน้าจอหรี่และดับเองขณะเปิดเต็มหน้าจอ
- **พิกเซลเสีย (Dead Pixel):** จุดเล็ก ๆ บนจอที่ไม่แสดงสีตามปกติ มักเห็นชัดบนพื้นสีขาวหรือสีดำล้วน
- **แสงรั่ว (Backlight Bleeding):** แสงไฟด้านหลังจอที่ลอดออกมาตามขอบ เห็นได้ชัดบนพื้นสีดำในห้องมืด
- **จอ OLED:** จอที่แต่ละพิกเซลเปล่งแสงเอง สีดำจึงไม่ใช้พลังงานและประหยัดแบตเตอรี่มากกว่า
- **สิทธิ์การใช้กล้อง:** การอนุญาตให้เบราว์เซอร์เข้าถึงกล้อง จำเป็นสำหรับโหมดกระจกเงา และต้องเปิดผ่าน HTTPS