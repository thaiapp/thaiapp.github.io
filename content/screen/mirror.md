---
title: กระจกเงา ออนไลน์ ฟรี
h1: กระจกเงา
description: กระจกเงาออนไลน์ฟรี เปิดกล้องหน้าส่องดูตัวเองได้ทันทีบนเบราว์เซอร์ รองรับมือถือ แท็บเล็ตและคอมพิวเตอร์ ไม่บันทึกภาพ ไม่ต้องติดตั้งและไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 22
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- กระจกเงา
- กระจกเงา ออนไลน์
- ทดสอบและวัดค่า
---
<style>
.mr-wrap{max-width:1280px;margin:1rem auto;text-align:center}
.mr-name{font-size:1.4rem;font-weight:700;text-align:center;border:1px dashed #9aa0a6;border-radius:8px;padding:.3rem .6rem;margin-bottom:.8rem;max-width:100%;width:320px;background:transparent;color:inherit}
.mr-stage{position:relative;max-width:100%;aspect-ratio:16/9;margin:0 auto;background:#111;border-radius:12px;overflow:hidden}
.mr-stage video{width:100%;height:100%;object-fit:cover;transform:scaleX(-1);display:block;background:#111}
.mr-play{position:absolute;top:50%;left:50%;width:72px;height:72px;margin:-36px 0 0 -36px;border:0;border-radius:50%;background:rgba(255,255,255,.92);color:#111;font-size:30px;cursor:pointer;display:flex;align-items:center;justify-content:center}
.mr-msg{min-height:1.5em;margin:.6rem 0;color:#c0392b;font-size:.95rem}
.mr-bar{display:flex;flex-wrap:wrap;gap:.5rem;justify-content:center;align-items:center}
.mr-bar button{border:1px solid #9aa0a6;background:transparent;color:inherit;border-radius:8px;padding:.45rem .9rem;font-size:.95rem;cursor:pointer}
.mr-bar button.mr-on{background:#1a73e8;border-color:#1a73e8;color:#fff}
.mr-float{position:fixed;top:90px;left:20px;width:320px;height:210px;min-width:160px;min-height:120px;max-width:96vw;max-height:90vh;background:#111;border-radius:10px;box-shadow:0 8px 30px rgba(0,0,0,.45);overflow:hidden;resize:both;z-index:9999;display:none}
.mr-fhead{position:absolute;top:0;left:0;right:0;height:28px;background:rgba(0,0,0,.65);color:#fff;font-size:.8rem;line-height:28px;padding:0 8px;cursor:move;touch-action:none;z-index:2;display:flex;justify-content:space-between;align-items:center;user-select:none}
.mr-fclose{border:0;background:transparent;color:#fff;font-size:1rem;cursor:pointer;line-height:1}
.mr-float video{position:absolute;top:0;left:0;width:100%;height:100%;object-fit:cover;transform:scaleX(-1);background:#111}
</style>
<div class="mr-wrap" id="mrApp">
<input id="mrName" class="mr-name" type="text" value="กระจกเงา" maxlength="40" aria-label="ชื่อกระจก (แก้ไขได้)">
<div class="mr-stage" id="mrStage" style="width:960px">
<video id="mrVideo" autoplay playsinline muted></video>
<button id="mrPlay" class="mr-play" type="button" aria-label="เริ่มกล้อง">▶</button>
</div>
<p id="mrMsg" class="mr-msg" role="status"></p>
<div class="mr-bar">
<button type="button" id="mrToggle">เริ่ม</button>
<button type="button" class="mr-size" data-w="640">640x360</button>
<button type="button" class="mr-size mr-on" data-w="960">960x540</button>
<button type="button" class="mr-size" data-w="1280">1280x720</button>
<button type="button" id="mrPop">หน้าต่างใหม่</button>
</div>
</div>
<div class="mr-float" id="mrFloat">
<div class="mr-fhead" id="mrFHead"><span id="mrFTitle">กระจกเงา</span><button type="button" class="mr-fclose" id="mrFClose" aria-label="ปิดหน้าต่าง">✕</button></div>
<video id="mrFVideo" autoplay playsinline muted></video>
</div>
<script>
(function () {
  function $(id) { return document.getElementById(id); }
  var video = $('mrVideo'), fvideo = $('mrFVideo'), stage = $('mrStage');
  var playBtn = $('mrPlay'), toggleBtn = $('mrToggle'), popBtn = $('mrPop');
  var msg = $('mrMsg'), nameInput = $('mrName'), fTitle = $('mrFTitle');
  var floatBox = $('mrFloat'), fHead = $('mrFHead'), fClose = $('mrFClose');
  if (!video || !fvideo || !stage || !playBtn || !toggleBtn || !popBtn || !msg || !floatBox || !fHead) { return; }
  var stream = null;
  function setMsg(text) { msg.textContent = text || ''; }
  function sync() {
    var on = !!stream;
    toggleBtn.textContent = on ? 'หยุด' : 'เริ่ม';
    playBtn.style.display = on ? 'none' : 'flex';
  }
  function start() {
    if (stream) { return; }
    if (!window.isSecureContext) {
      setMsg('กล้องใช้งานได้เฉพาะหน้าเว็บที่เป็น HTTPS เท่านั้น');
      return;
    }
    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
      setMsg('เบราว์เซอร์นี้ไม่รองรับการเข้าถึงกล้อง กรุณาลองเบราว์เซอร์อื่น');
      return;
    }
    setMsg('กำลังเปิดกล้อง...');
    navigator.mediaDevices.getUserMedia({
      video: { facingMode: 'user', width: { ideal: 1280 }, height: { ideal: 720 } },
      audio: false
    }).then(function (s) {
      stream = s;
      video.srcObject = s;
      fvideo.srcObject = s;
      var p = video.play();
      if (p && p.catch) { p.catch(function () {}); }
      var p2 = fvideo.play();
      if (p2 && p2.catch) { p2.catch(function () {}); }
      setMsg('');
      sync();
    }).catch(function (err) {
      var name = err && err.name ? err.name : '';
      if (name === 'NotAllowedError' || name === 'SecurityError') {
        setMsg('ไม่ได้รับอนุญาตให้ใช้กล้อง กรุณาอนุญาตในการตั้งค่าเบราว์เซอร์แล้วลองใหม่');
      } else if (name === 'NotFoundError' || name === 'OverconstrainedError') {
        setMsg('ไม่พบกล้องในอุปกรณ์ของคุณ');
      } else if (name === 'NotReadableError') {
        setMsg('กล้องกำลังถูกใช้งานโดยแอปอื่น กรุณาปิดแอปนั้นแล้วลองใหม่');
      } else {
        setMsg('เปิดกล้องไม่สำเร็จ กรุณาลองใหม่อีกครั้ง');
      }
      sync();
    });
  }
  function stop() {
    if (stream) {
      var tracks = stream.getTracks();
      for (var i = 0; i !== tracks.length; i++) { tracks[i].stop(); }
    }
    stream = null;
    video.srcObject = null;
    fvideo.srcObject = null;
    setMsg('');
    sync();
  }
  function toggle() { if (stream) { stop(); } else { start(); } }
  playBtn.addEventListener('click', start);
  toggleBtn.addEventListener('click', toggle);
  video.addEventListener('click', toggle);
  fvideo.addEventListener('click', toggle);
  document.addEventListener('keydown', function (e) {
    var isSpace = e.code === 'Space' || e.key === ' ';
    if (!isSpace) { return; }
    var t = e.target;
    var tag = t && t.tagName ? t.tagName.toLowerCase() : '';
    if (tag === 'input' || tag === 'textarea' || tag === 'select' || tag === 'button' || (t && t.isContentEditable)) { return; }
    e.preventDefault();
    toggle();
  });
  var sizeBtns = document.querySelectorAll('.mr-size');
  for (var i = 0; i !== sizeBtns.length; i++) {
    sizeBtns[i].addEventListener('click', function () {
      var w = this.getAttribute('data-w');
      stage.style.width = w + 'px';
      for (var j = 0; j !== sizeBtns.length; j++) { sizeBtns[j].classList.remove('mr-on'); }
      this.classList.add('mr-on');
    });
  }
  function updateTitle() {
    var v = nameInput.value;
    fTitle.textContent = v ? v : 'กระจกเงา';
  }
  nameInput.addEventListener('input', updateTitle);
  popBtn.addEventListener('click', function () {
    updateTitle();
    floatBox.style.display = 'block';
    if (!stream) { start(); }
  });
  fClose.addEventListener('click', function () { floatBox.style.display = 'none'; });
  var drag = null;
  fHead.addEventListener('pointerdown', function (e) {
    if (e.target === fClose) { return; }
    var r = floatBox.getBoundingClientRect();
    drag = { dx: e.clientX - r.left, dy: e.clientY - r.top };
    if (fHead.setPointerCapture) { fHead.setPointerCapture(e.pointerId); }
    e.preventDefault();
  });
  fHead.addEventListener('pointermove', function (e) {
    if (!drag) { return; }
    var maxX = Math.max(0, window.innerWidth - 60);
    var maxY = Math.max(0, window.innerHeight - 40);
    var x = Math.min(Math.max(0, e.clientX - drag.dx), maxX);
    var y = Math.min(Math.max(0, e.clientY - drag.dy), maxY);
    floatBox.style.left = x + 'px';
    floatBox.style.top = y + 'px';
  });
  function endDrag() { drag = null; }
  fHead.addEventListener('pointerup', endDrag);
  fHead.addEventListener('pointercancel', endDrag);
  window.addEventListener('pagehide', stop);
  sync();
})();
</script>

## วิธีใช้งานกระจกเงาออนไลน์

1. กดปุ่มเล่น ▶ กลางหน้าจอ หรือปุ่ม "เริ่ม" ด้านล่าง เพื่อเปิดกล้อง
2. เมื่อเบราว์เซอร์ถามสิทธิ์ ให้เลือก "อนุญาต" การใช้กล้อง
3. ส่องดูตัวเองได้ทันที ภาพจะกลับด้านซ้าย-ขวาเหมือนกระจกจริง
4. กดปุ่มเว้นวรรค (Space) หรือคลิกที่ภาพ เพื่อเริ่มหรือหยุดกล้อง
5. เลือกขนาดภาพได้ 3 แบบ คือ 640x360, 960x540 และ 1280x720
6. กดปุ่ม "หน้าต่างใหม่" เพื่อเปิดกระจกแบบหน้าต่างลอย ลากย้ายตำแหน่งได้ และดึงมุมเพื่อปรับขนาดได้
7. แก้ไขชื่อกระจกได้โดยพิมพ์ลงในช่องชื่อด้านบน
8. ใช้เสร็จแล้วกด "หยุด" เพื่อปิดกล้อง

**เคล็ดลับ:** หากภาพดูเลอะหรือไม่คมชัด ให้เช็ดเลนส์กล้องให้สะอาด และอยู่ในที่ที่มีแสงสว่างเพียงพอ

## ความเป็นส่วนตัว

เครื่องมือนี้เป็นเพียงกระจกที่เรียบง่าย ไม่มีการบันทึกวิดีโอ ไม่มีการจับภาพ และไม่มีการบันทึกเสียง ภาพจากกล้องแสดงผลบนอุปกรณ์ของคุณเท่านั้น ไม่ถูกส่งไปยังเซิร์ฟเวอร์

## คำศัพท์ที่ควรรู้

- **กระจกเงาออนไลน์:** เครื่องมือบนเว็บที่ใช้กล้องของอุปกรณ์แสดงภาพสดของคุณ ทำหน้าที่แทนกระจก
- **กล้องหน้า (เว็บแคม):** กล้องที่อยู่ด้านเดียวกับหน้าจอ ใช้ถ่ายภาพผู้ใช้เอง
- **การอนุญาตใช้กล้อง:** ข้อความที่เบราว์เซอร์ถามก่อนให้เว็บไซต์เข้าถึงกล้อง ต้องกดอนุญาตจึงจะใช้งานได้
- **ภาพสะท้อน (Mirror):** ภาพที่กลับด้านซ้าย-ขวา ทำให้ดูเหมือนส่องกระจกจริง
- **ความละเอียด (Resolution):** จำนวนจุดภาพที่ประกอบเป็นภาพ ยิ่งมากยิ่งคมชัด
- **640x360 / 960x540 / 1280x720:** ขนาดภาพกว้างxสูง เป็นพิกเซล เลือกใหญ่ขึ้นเมื่อต้องการเห็นรายละเอียดมากขึ้น
- **อัตราส่วน 16:9:** สัดส่วนความกว้างต่อความสูงของภาพแบบจอกว้างที่เครื่องมือนี้ใช้
- **หน้าต่างลอย:** หน้าต่างกระจกขนาดเล็กที่ลากย้ายและปรับขนาดได้ แสดงทับหน้าเว็บ
- **ปุ่มเว้นวรรค (Space):** ปุ่มยาวบนคีย์บอร์ด ใช้สลับเริ่ม/หยุดกล้องได้อย่างรวดเร็ว
- **เลนส์กล้อง:** ส่วนที่รับแสงของกล้อง หากมีรอยเปื้อนภาพจะไม่คมชัด
- **เบราว์เซอร์:** โปรแกรมเปิดเว็บไซต์ เช่น Chrome, Safari, Edge และ Firefox
- **HTTPS:** การเชื่อมต่อเว็บแบบเข้ารหัส เบราว์เซอร์อนุญาตให้ใช้กล้องเฉพาะบนหน้าเว็บแบบนี้