---
title: ทดสอบเว็บแคม ออนไลน์ ฟรี
h1: ทดสอบเว็บแคม
description: ทดสอบเว็บแคมออนไลน์ฟรี ดูภาพสด วัดความละเอียด FPS ความสว่าง ถ่ายภาพ อัดคลิปสั้น พร้อมคะแนนสรุปและวิธีแก้ปัญหา ไม่ต้องติดตั้งโปรแกรมและไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-19T08:19:00+07:00'
weight: 128
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ทดสอบเว็บแคม
- ทดสอบเว็บแคม ออนไลน์
- ทดสอบและวัดค่า
---

เครื่องมือนี้ช่วยตรวจว่ากล้องเว็บแคมหรือกล้องหน้ามือถือของคุณใช้งานได้ปกติหรือไม่ ก่อนเข้าประชุม Zoom, Google Meet, Microsoft Teams หรือไลฟ์สด ภาพจากกล้องจะแสดงและประมวลผลบนอุปกรณ์ของคุณเท่านั้น ไม่มีการอัปโหลด

<style>
.wc-tool{max-width:760px;margin:1rem auto;font-size:15px;line-height:1.5}
.wc-stage{position:relative;background:#000;border-radius:12px;overflow:hidden;aspect-ratio:16/9}
.wc-stage video{width:100%;height:100%;object-fit:contain;display:block;background:#000}
.wc-stage video.wc-mirror{transform:scaleX(-1)}
.wc-ph{position:absolute;left:0;right:0;top:0;bottom:0;display:flex;align-items:center;justify-content:center;text-align:center;padding:1rem;color:#cbd5e1}
.wc-msg{margin:.75rem 0;padding:.6rem .8rem;border-radius:8px;display:none}
.wc-msg.wc-err{display:block;background:rgba(220,38,38,.12);border:1px solid rgba(220,38,38,.5)}
.wc-msg.wc-ok{display:block;background:rgba(22,163,74,.12);border:1px solid rgba(22,163,74,.5)}
.wc-row{display:flex;flex-wrap:wrap;gap:.5rem;margin:.75rem 0;align-items:center}
.wc-row label{display:flex;flex-direction:column;font-size:13px;gap:.2rem;flex:1 1 180px}
.wc-row select{padding:.45rem;border-radius:8px;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;font-size:15px}
.wc-btn{padding:.55rem .9rem;border-radius:8px;border:1px solid rgba(128,128,128,.55);background:rgba(128,128,128,.1);color:inherit;font-size:15px;cursor:pointer}
.wc-btn.wc-main{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
.wc-btn:disabled{opacity:.45;cursor:not-allowed}
.wc-chk{display:flex;align-items:center;gap:.4rem;cursor:pointer}
.wc-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:.5rem;margin:.75rem 0}
.wc-card{border:1px solid rgba(128,128,128,.35);border-radius:10px;padding:.55rem .7rem;background:rgba(128,128,128,.06)}
.wc-card small{display:block;opacity:.7;font-size:12px}
.wc-card strong{font-size:17px;word-break:break-word}
.wc-box{border:1px solid rgba(128,128,128,.35);border-radius:10px;padding:.75rem;margin:.75rem 0}
.wc-box h3{margin:.1rem 0 .5rem;font-size:16px}
.wc-score{font-size:34px;font-weight:700;line-height:1}
.wc-bar{height:10px;border-radius:6px;background:rgba(128,128,128,.25);overflow:hidden;margin-top:.4rem}
.wc-bar span{display:block;height:100%;width:0;background:#16a34a;transition:width .15s}
.wc-chips{display:flex;flex-wrap:wrap;gap:.4rem}
.wc-chip{padding:.2rem .55rem;border-radius:999px;border:1px solid rgba(128,128,128,.4);font-size:13px}
.wc-chip.wc-y{background:rgba(22,163,74,.15);border-color:rgba(22,163,74,.6)}
.wc-chip.wc-n{opacity:.55;text-decoration:line-through}
.wc-tool ul.wc-tips{margin:.4rem 0 0;padding-left:1.2rem}
.wc-tool canvas.wc-spark{width:100%;height:50px;display:block}
.wc-tool video.wc-play{width:100%;max-height:260px;margin-top:.5rem;border-radius:8px;background:#000}
</style>
<div class="wc-tool" id="wcTool">
<div class="wc-stage">
<video id="wcVideo" autoplay playsinline muted></video>
<div id="wcPlaceholder" class="wc-ph">กดปุ่ม "เริ่มทดสอบกล้อง" แล้วเลือก "อนุญาต" เมื่อเบราว์เซอร์ขอสิทธิ์ใช้กล้อง</div>
</div>
<div id="wcMsg" class="wc-msg" role="status" aria-live="polite"></div>
<div class="wc-row">
<button type="button" class="wc-btn wc-main" id="wcStart">เริ่มทดสอบกล้อง</button>
<button type="button" class="wc-btn" id="wcStop" disabled>หยุดกล้อง</button>
<label class="wc-chk"><input type="checkbox" id="wcMirror"> กลับภาพ (มิเรอร์)</label>
</div>
<div class="wc-row">
<label>เลือกกล้อง<select id="wcCam"><option value="">กล้องเริ่มต้น</option></select></label>
<label>ความละเอียดที่ต้องการ<select id="wcRes">
<option value="auto">อัตโนมัติ</option>
<option value="640x480">640 x 480 (VGA)</option>
<option value="1280x720">1280 x 720 (HD)</option>
<option value="1920x1080">1920 x 1080 (Full HD)</option>
<option value="2560x1440">2560 x 1440 (2K)</option>
<option value="3840x2160">3840 x 2160 (4K)</option>
</select></label>
</div>
<div class="wc-box">
<h3>คะแนนสรุปผลการทดสอบ</h3>
<div class="wc-score" id="wcScore">--</div>
<div class="wc-bar"><span id="wcScoreBar"></span></div>
<div id="wcVerdict" style="margin-top:.4rem">เริ่มทดสอบกล้องเพื่อดูคะแนน</div>
<ul class="wc-tips" id="wcTips"></ul>
</div>
<div class="wc-grid">
<div class="wc-card"><small>ความละเอียดจริง</small><strong id="wcRs">--</strong></div>
<div class="wc-card"><small>อัตราส่วนภาพ</small><strong id="wcAr">--</strong></div>
<div class="wc-card"><small>เฟรมเรตตอนนี้ (FPS)</small><strong id="wcFps">--</strong></div>
<div class="wc-card"><small>FPS เฉลี่ย / ต่ำสุด</small><strong id="wcFpsAvg">--</strong></div>
<div class="wc-card"><small>ความสว่าง</small><strong id="wcBr">--</strong></div>
<div class="wc-card"><small>คอนทราสต์</small><strong id="wcCt">--</strong></div>
<div class="wc-card"><small>กล้องที่ใช้งาน</small><strong id="wcLabel">--</strong></div>
</div>
<div class="wc-box">
<h3>กราฟความเสถียรของ FPS</h3>
<canvas id="wcSpark" class="wc-spark" width="700" height="50"></canvas>
</div>
<div class="wc-box">
<h3>ความละเอียดที่กล้องรองรับ</h3>
<div class="wc-row"><button type="button" class="wc-btn" id="wcScan">ตรวจหาความละเอียดที่รองรับ</button></div>
<div class="wc-chips" id="wcScanOut"></div>
</div>
<div class="wc-box">
<h3>ถ่ายภาพและบันทึกคลิปทดสอบ</h3>
<div class="wc-row">
<button type="button" class="wc-btn" id="wcSnap" disabled>ถ่ายภาพ (PNG)</button>
<button type="button" class="wc-btn" id="wcRec" disabled>บันทึกคลิป (สูงสุด 10 วินาที)</button>
</div>
<div id="wcRecInfo"></div>
<video id="wcPlay" class="wc-play" controls playsinline style="display:none"></video>
</div>
<div class="wc-box">
<h3>ทดสอบไมโครโฟน (ไม่บังคับ)</h3>
<div class="wc-row"><button type="button" class="wc-btn" id="wcMic">เปิดทดสอบไมค์</button><span id="wcMicLabel"></span></div>
<div class="wc-bar"><span id="wcMicBar"></span></div>
<small>พูดหรือเคาะเบา ๆ แล้วดูว่าแถบระดับเสียงขยับหรือไม่</small>
</div>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var video = $('wcVideo'), selCam = $('wcCam'), selRes = $('wcRes');
  var stream = null, statTimer = null, fpsTimer = null;
  var frames = 0, lastFrames = 0, lastTime = 0, rvfcOn = false;
  var fpsList = [], fpsNow = 0;
  var rec = null, recChunks = [], recTimer = null, recUrl = null;
  var micStream = null, micCtx = null, micRaf = null;
  var cv = document.createElement('canvas');
  cv.width = 64; cv.height = 36;
  var cx = cv.getContext('2d', { willReadFrequently: true });
  var presets = [
    { w: 320, h: 240 }, { w: 640, h: 360 }, { w: 640, h: 480 }, { w: 800, h: 600 },
    { w: 1280, h: 720 }, { w: 1920, h: 1080 }, { w: 2560, h: 1440 }, { w: 3840, h: 2160 }
  ];
  var cur = { w: 0, h: 0, br: -1, ct: 0 };
  function msg(text, kind) {
    var m = $('wcMsg');
    m.textContent = text || '';
    m.className = 'wc-msg' + (text ? (kind === 'ok' ? ' wc-ok' : ' wc-err') : '');
  }
  function hasMedia() {
    if (!window.isSecureContext) {
      msg('หน้านี้ต้องเปิดผ่าน HTTPS เบราว์เซอร์จึงจะอนุญาตให้ใช้กล้อง', 'err');
      return false;
    }
    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
      msg('เบราว์เซอร์นี้ไม่รองรับการเข้าถึงกล้อง ลองใช้ Chrome, Edge, Firefox หรือ Safari เวอร์ชันล่าสุด', 'err');
      return false;
    }
    return true;
  }
  function explain(err) {
    var n = err && err.name ? err.name : '';
    if (n === 'NotAllowedError' || n === 'PermissionDeniedError') {
      return 'ถูกปฏิเสธสิทธิ์ใช้กล้อง คลิกไอคอนกุญแจ (หรือไอคอนกล้อง) ข้างช่องที่อยู่เว็บ เลือก "อนุญาต" สำหรับกล้อง แล้วรีเฟรชหน้า และตรวจสอบการตั้งค่าความเป็นส่วนตัวของ Windows/macOS ด้วย';
    }
    if (n === 'NotFoundError' || n === 'DevicesNotFoundError') {
      return 'ไม่พบกล้อง ตรวจสอบว่าเสียบสาย USB แน่นหรือไม่ กล้องในเครื่องถูกปิดไว้หรือเปล่า แล้วลองเสียบใหม่หรือรีสตาร์ตเครื่อง';
    }
    if (n === 'NotReadableError' || n === 'TrackStartError') {
      return 'เปิดกล้องไม่ได้ เพราะอาจมีโปรแกรมอื่นใช้กล้องอยู่ (เช่น Zoom, Teams, OBS, แท็บอื่นในเบราว์เซอร์) ให้ปิดโปรแกรมเหล่านั้นก่อน แล้วลองใหม่';
    }
    if (n === 'OverconstrainedError' || n === 'ConstraintNotSatisfiedError') {
      return 'กล้องไม่รองรับความละเอียดที่เลือก ลองเปลี่ยนเป็น "อัตโนมัติ" หรือเลือกความละเอียดที่ต่ำลง';
    }
    if (n === 'SecurityError') {
      return 'เบราว์เซอร์บล็อกการใช้กล้องด้วยเหตุผลด้านความปลอดภัย ตรวจสอบว่าเปิดหน้านี้ผ่าน HTTPS และไม่ได้ฝังอยู่ในกรอบที่ไม่อนุญาตให้ใช้กล้อง';
    }
    return 'เปิดกล้องไม่สำเร็จ (' + (n || 'ไม่ทราบสาเหตุ') + ') ลองรีเฟรชหน้า เปลี่ยนเบราว์เซอร์ หรือเสียบกล้องใหม่';
  }
  function setText(id, t) { $(id).textContent = t; }
  function resetReadouts() {
    ['wcRs', 'wcAr', 'wcFps', 'wcFpsAvg', 'wcBr', 'wcCt', 'wcLabel'].forEach(function (id) { setText(id, '--'); });
    setText('wcScore', '--');
    $('wcScoreBar').style.width = '0';
    setText('wcVerdict', 'เริ่มทดสอบกล้องเพื่อดูคะแนน');
    $('wcTips').textContent = '';
    fpsList = []; fpsNow = 0; cur.br = -1;
    drawSpark();
  }
  function gcd(a, b) { return b ? gcd(b, a % b) : a; }
  function ratio(w, h) {
    if (!w || !h) { return '--'; }
    var r = w / h;
    if (0.02 > Math.abs(r - 16 / 9)) { return '16:9'; }
    if (0.02 > Math.abs(r - 4 / 3)) { return '4:3'; }
    if (0.02 > Math.abs(r - 16 / 10)) { return '16:10'; }
    if (0.02 > Math.abs(r - 1)) { return '1:1'; }
    var g = gcd(w, h);
    return (w / g) + ':' + (h / g);
  }
  function stop(keepMsg) {
    if (statTimer) { clearInterval(statTimer); statTimer = null; }
    if (fpsTimer) { clearInterval(fpsTimer); fpsTimer = null; }
    stopRec(true);
    if (stream) {
      stream.getTracks().forEach(function (t) { t.onended = null; t.stop(); });
      stream = null;
    }
    video.srcObject = null;
    $('wcPlaceholder').style.display = 'flex';
    $('wcStop').disabled = true;
    $('wcSnap').disabled = true;
    $('wcRec').disabled = true;
    $('wcStart').textContent = 'เริ่มทดสอบกล้อง';
    resetReadouts();
    if (!keepMsg) { msg(''); }
  }
  function start() {
    if (!hasMedia()) { return; }
    stop(true);
    msg('กำลังเปิดกล้อง กรุณาอนุญาตเมื่อเบราว์เซอร์ถามสิทธิ์...', 'ok');
    var v = {};
    if (selCam.value) { v.deviceId = { exact: selCam.value }; } else { v.facingMode = 'user'; }
    if (selRes.value !== 'auto') {
      var p = selRes.value.split('x');
      v.width = { ideal: parseInt(p[0], 10) };
      v.height = { ideal: parseInt(p[1], 10) };
    }
    navigator.mediaDevices.getUserMedia({ video: v, audio: false }).then(function (s) {
      stream = s;
      video.srcObject = s;
      var pr = video.play();
      if (pr && pr.catch) { pr.catch(function () {}); }
      $('wcPlaceholder').style.display = 'none';
      $('wcStop').disabled = false;
      $('wcSnap').disabled = false;
      $('wcRec').disabled = false;
      $('wcStart').textContent = 'เริ่มใหม่';
      msg('เปิดกล้องสำเร็จ กำลังวัดค่า...', 'ok');
      s.getVideoTracks()[0].onended = function () {
        stop(true);
        msg('กล้องถูกตัดการเชื่อมต่อหรือถูกปิด ลองเสียบใหม่แล้วกดเริ่มอีกครั้ง', 'err');
      };
      listCams();
      beginStats();
    }).catch(function (e) {
      stop(true);
      msg(explain(e), 'err');
    });
  }
  function listCams() {
    if (!navigator.mediaDevices.enumerateDevices) { return; }
    navigator.mediaDevices.enumerateDevices().then(function (devs) {
      var cams = devs.filter(function (d) { return d.kind === 'videoinput'; });
      var active = '';
      if (stream && stream.getVideoTracks()[0]) {
        active = stream.getVideoTracks()[0].getSettings().deviceId || '';
      }
      selCam.textContent = '';
      var def = document.createElement('option');
      def.value = ''; def.textContent = 'กล้องเริ่มต้น';
      selCam.appendChild(def);
      cams.forEach(function (c, i) {
        var o = document.createElement('option');
        o.value = c.deviceId;
        o.textContent = c.label || ('กล้อง ' + (i + 1));
        selCam.appendChild(o);
      });
      if (active) { selCam.value = active; }
    }).catch(function () {});
  }
  function beginStats() {
    frames = 0; lastFrames = 0; lastTime = performance.now(); rvfcOn = false;
    if (video.requestVideoFrameCallback) {
      rvfcOn = true;
      var loop = function () {
        if (!stream) { return; }
        frames++;
        video.requestVideoFrameCallback(loop);
      };
      video.requestVideoFrameCallback(loop);
    }
    fpsTimer = setInterval(sampleFps, 1000);
    statTimer = setInterval(sampleImage, 500);
  }
  function sampleFps() {
    if (!stream) { return; }
    var now = performance.now();
    var total = frames;
    if (!rvfcOn && video.getVideoPlaybackQuality) {
      total = video.getVideoPlaybackQuality().totalVideoFrames;
    }
    var dt = (now - lastTime) / 1000;
    var f = dt > 0 ? (total - lastFrames) / dt : 0;
    if (!rvfcOn && !video.getVideoPlaybackQuality) {
      var st = stream.getVideoTracks()[0].getSettings();
      f = st.frameRate || 0;
    }
    lastFrames = total; lastTime = now;
    fpsNow = f;
    fpsList.push(f);
    if (fpsList.length > 60) { fpsList.shift(); }
    var use = fpsList.length > 1 ? fpsList.slice(1) : fpsList;
    var sum = 0, mn = 9999;
    use.forEach(function (x) { sum += x; if (mn > x) { mn = x; } });
    var avg = use.length ? sum / use.length : 0;
    setText('wcFps', f.toFixed(1));
    setText('wcFpsAvg', avg.toFixed(1) + ' / ' + (mn === 9999 ? 0 : mn).toFixed(1));
    drawSpark();
    updateScore(avg, mn === 9999 ? 0 : mn, use.length);
  }
  function sampleImage() {
    if (!stream || !video.videoWidth) { return; }
    var track = stream.getVideoTracks()[0];
    var st = track.getSettings();
    cur.w = video.videoWidth; cur.h = video.videoHeight;
    setText('wcRs', cur.w + ' x ' + cur.h);
    setText('wcAr', ratio(cur.w, cur.h));
    setText('wcLabel', track.label || 'ไม่ทราบชื่อ');
    try {
      cx.drawImage(video, 0, 0, 64, 36);
      var d = cx.getImageData(0, 0, 64, 36).data;
      var n = 0, sum = 0, sq = 0, i, y;
      for (i = 0; d.length > i; i += 4) {
        y = 0.299 * d[i] + 0.587 * d[i + 1] + 0.114 * d[i + 2];
        sum += y; sq += y * y; n++;
      }
      var mean = sum / n;
      var sd = Math.sqrt(Math.max(0, sq / n - mean * mean));
      cur.br = mean / 255 * 100;
      cur.ct = sd / 128 * 100;
      var bl = cur.br > 75 ? 'สว่างมาก' : (cur.br > 27 ? 'พอดี' : (cur.br > 15 ? 'ค่อนข้างมืด' : 'มืดมาก'));
      var cl = cur.ct > 28 ? 'ดี' : (cur.ct > 14 ? 'ปานกลาง' : 'ต่ำ');
      setText('wcBr', Math.round(cur.br) + '% (' + bl + ')');
      setText('wcCt', Math.round(cur.ct) + '% (' + cl + ')');
    } catch (e) {}
    if (st && st.frameRate && fpsList.length === 0) { setText('wcFps', '~' + Math.round(st.frameRate)); }
  }
  function updateScore(avg, mn, count) {
    if (count > 2 === false || cur.br > -1 === false) { return; }
    var px = cur.w * cur.h;
    var sRes = px > 1900000 ? 30 : (px > 900000 ? 25 : (px > 300000 ? 15 : 8));
    var sFps = avg > 27 ? 30 : (avg > 23 ? 26 : (avg > 14 ? 16 : 6));
    var sBr = (cur.br > 27 && cur.br > 75 === false) ? 25 : ((cur.br > 15 && cur.br > 85 === false) ? 15 : 5);
    var sStab = mn > avg * 0.8 ? 15 : 7;
    var total = sRes + sFps + sBr + sStab;
    total = Math.min(100, total);
    setText('wcScore', total + '/100');
    var bar = $('wcScoreBar');
    bar.style.width = total + '%';
    bar.style.background = total > 79 ? '#16a34a' : (total > 54 ? '#ca8a04' : '#dc2626');
    var v = total > 84 ? 'ยอดเยี่ยม พร้อมใช้ประชุม เรียนออนไลน์ และสตรีม'
      : (total > 64 ? 'ดี ใช้งานวิดีโอคอลทั่วไปได้สบาย'
      : (total > 44 ? 'พอใช้ ควรปรับแสงหรือการตั้งค่ากล้อง' : 'ควรแก้ไข กล้องอาจเก่า แสงน้อย หรือเปิดความละเอียดไม่ถึง'));
    setText('wcVerdict', v);
    var tips = [];
    if (cur.br > 27 === false) { tips.push('ภาพมืด: เพิ่มแสงด้านหน้า เช่น หันหน้าเข้าหาหน้าต่างหรือเปิดไฟโต๊ะ'); }
    if (cur.br > 75) { tips.push('ภาพสว่างจัด: ลดแสงหรือหลีกเลี่ยงการนั่งหันหลังให้หน้าต่าง'); }
    if (cur.ct > 14 === false) { tips.push('คอนทราสต์ต่ำ: ภาพอาจดูซีด ลองเช็ดเลนส์และปรับแสงให้ตกกระทบใบหน้าสม่ำเสมอ'); }
    if (avg > 23 === false) { tips.push('FPS ต่ำ: ปิดแท็บและโปรแกรมอื่น ใช้พอร์ต USB 3.0 หรือเพิ่มแสง เพราะกล้องมักลด FPS เองเมื่อแสงน้อย'); }
    if (mn > avg * 0.8 === false) { tips.push('FPS แกว่ง: อาจเกิดจากเครื่องทำงานหนักหรือสาย USB ไม่เสถียร'); }
    if (px > 300000 === false) { tips.push('ความละเอียดต่ำ: ลองเลือก HD หรือ Full HD ในช่องความละเอียดที่ต้องการ หรือกดตรวจหาความละเอียดที่รองรับ'); }
    var ul = $('wcTips');
    ul.textContent = '';
    tips.forEach(function (t) { var li = document.createElement('li'); li.textContent = t; ul.appendChild(li); });
  }
  function drawSpark() {
    var c = $('wcSpark'), g = c.getContext('2d');
    g.clearRect(0, 0, c.width, c.height);
    if (fpsList.length > 1 === false) { return; }
    var max = 30;
    fpsList.forEach(function (f) { if (f > max) { max = f; } });
    g.strokeStyle = '#2563eb'; g.lineWidth = 2; g.beginPath();
    fpsList.forEach(function (f, i) {
      var x = i / 59 * c.width, y = c.height - 4 - (f / max) * (c.height - 8);
      if (i === 0) { g.moveTo(x, y); } else { g.lineTo(x, y); }
    });
    g.stroke();
  }
  function download(blob, name) {
    var u = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = u; a.download = name;
    document.body.appendChild(a); a.click(); document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(u); }, 4000);
  }
  function snap() {
    if (!stream || !video.videoWidth) { return; }
    var c = document.createElement('canvas');
    c.width = video.videoWidth; c.height = video.videoHeight;
    var g = c.getContext('2d');
    if ($('wcMirror').checked) { g.translate(c.width, 0); g.scale(-1, 1); }
    g.drawImage(video, 0, 0);
    c.toBlob(function (b) { if (b) { download(b, 'webcam-snapshot.png'); } }, 'image/png');
  }
  function stopRec(silent) {
    if (recTimer) { clearTimeout(recTimer); recTimer = null; }
    if (rec && rec.state !== 'inactive') {
      if (silent) { rec.onstop = null; }
      try { rec.stop(); } catch (e) {}
    }
    rec = null;
    $('wcRec').textContent = 'บันทึกคลิป (สูงสุด 10 วินาที)';
  }
  function toggleRec() {
    if (rec) { stopRec(false); return; }
    if (!stream) { return; }
    if (!window.MediaRecorder) { $('wcRecInfo').textContent = 'เบราว์เซอร์นี้ไม่รองรับการบันทึกคลิป'; return; }
    var types = ['video/webm;codecs=vp9', 'video/webm;codecs=vp8', 'video/webm', 'video/mp4'];
    var mime = '';
    types.forEach(function (t) { if (!mime && MediaRecorder.isTypeSupported(t)) { mime = t; } });
    recChunks = [];
    try { rec = mime ? new MediaRecorder(stream, { mimeType: mime }) : new MediaRecorder(stream); }
    catch (e) { rec = null; $('wcRecInfo').textContent = 'เริ่มบันทึกไม่ได้ในเบราว์เซอร์นี้'; return; }
    var type = rec.mimeType || mime || 'video/webm';
    rec.ondataavailable = function (e) { if (e.data && e.data.size) { recChunks.push(e.data); } };
    rec.onstop = function () {
      var blob = new Blob(recChunks, { type: type });
      if (recUrl) { URL.revokeObjectURL(recUrl); }
      recUrl = URL.createObjectURL(blob);
      var p = $('wcPlay');
      p.src = recUrl; p.style.display = 'block';
      var ext = type.indexOf('mp4') > -1 ? 'mp4' : 'webm';
      var info = $('wcRecInfo');
      info.textContent = 'บันทึกเสร็จแล้ว เล่นดูด้านล่าง  ';
      var a = document.createElement('a');
      a.href = recUrl; a.download = 'webcam-test.' + ext; a.textContent = 'ดาวน์โหลดคลิป';
      info.appendChild(a);
    };
    rec.start();
    $('wcRec').textContent = 'หยุดบันทึก';
    $('wcRecInfo').textContent = 'กำลังบันทึก...';
    recTimer = setTimeout(function () { stopRec(false); }, 10000);
  }
  function scan() {
    if (!hasMedia()) { return; }
    var dev = selCam.value;
    var out = $('wcScanOut');
    stop(true);
    out.textContent = 'กำลังตรวจ กรุณารอสักครู่...';
    var results = [], i = 0;
    function next() {
      if (i >= presets.length) {
        out.textContent = '';
        results.forEach(function (r) {
          var s = document.createElement('span');
          s.className = 'wc-chip ' + (r.ok ? 'wc-y' : 'wc-n');
          s.textContent = (r.ok ? '✓ ' : '✗ ') + r.p.w + ' x ' + r.p.h;
          out.appendChild(s);
        });
        msg('ตรวจความละเอียดเสร็จแล้ว', 'ok');
        start();
        return;
      }
      var p = presets[i++];
      var v = { width: { exact: p.w }, height: { exact: p.h } };
      if (dev) { v.deviceId = { exact: dev }; }
      navigator.mediaDevices.getUserMedia({ video: v }).then(function (s) {
        s.getTracks().forEach(function (t) { t.stop(); });
        results.push({ p: p, ok: true });
        setTimeout(next, 200);
      }).catch(function (e) {
        if (e && (e.name === 'NotAllowedError' || e.name === 'NotReadableError' || e.name === 'NotFoundError')) {
          out.textContent = '';
          msg(explain(e), 'err');
          return;
        }
        results.push({ p: p, ok: false });
        setTimeout(next, 50);
      });
    }
    next();
  }
  function toggleMic() {
    if (micStream) { stopMic(); return; }
    if (!hasMedia()) { return; }
    navigator.mediaDevices.getUserMedia({ audio: true }).then(function (s) {
      micStream = s;
      var AC = window.AudioContext || window.webkitAudioContext;
      micCtx = new AC();
      var src = micCtx.createMediaStreamSource(s);
      var an = micCtx.createAnalyser();
      an.fftSize = 512;
      src.connect(an);
      var buf = new Uint8Array(an.fftSize);
      $('wcMic').textContent = 'ปิดไมค์';
      var t = s.getAudioTracks()[0];
      setText('wcMicLabel', t && t.label ? t.label : '');
      var tick = function () {
        if (!micStream) { return; }
        an.getByteTimeDomainData(buf);
        var sum = 0, k;
        for (k = 0; buf.length > k; k++) { var x = (buf[k] - 128) / 128; sum += x * x; }
        var lvl = Math.min(100, Math.sqrt(sum / buf.length) * 400);
        $('wcMicBar').style.width = lvl + '%';
        micRaf = requestAnimationFrame(tick);
      };
      tick();
    }).catch(function (e) { msg(explain(e).replace('กล้อง', 'ไมโครโฟน'), 'err'); });
  }
  function stopMic() {
    if (micRaf) { cancelAnimationFrame(micRaf); micRaf = null; }
    if (micStream) { micStream.getTracks().forEach(function (t) { t.stop(); }); micStream = null; }
    if (micCtx) { try { micCtx.close(); } catch (e) {} micCtx = null; }
    $('wcMicBar').style.width = '0';
    $('wcMic').textContent = 'เปิดทดสอบไมค์';
    setText('wcMicLabel', '');
  }
  $('wcStart').addEventListener('click', start);
  $('wcStop').addEventListener('click', function () { stop(false); });
  $('wcMirror').addEventListener('change', function () { video.classList.toggle('wc-mirror', this.checked); });
  selCam.addEventListener('change', function () { if (stream) { start(); } });
  selRes.addEventListener('change', function () { if (stream) { start(); } });
  $('wcSnap').addEventListener('click', snap);
  $('wcRec').addEventListener('click', toggleRec);
  $('wcScan').addEventListener('click', scan);
  $('wcMic').addEventListener('click', toggleMic);
  window.addEventListener('pagehide', function () { stop(true); stopMic(); });
})();</script>
</div>

## วิธีใช้งานเครื่องมือทดสอบเว็บแคม

1. **กด "เริ่มทดสอบกล้อง"** เบราว์เซอร์จะแสดงหน้าต่างขอสิทธิ์ใช้กล้อง ให้เลือก "อนุญาต" (บนมือถืออาจต้องเลื่อนขึ้นไปบนสุดของหน้าเพื่อดูหน้าต่างนี้)
2. **ดูภาพสด** หากเห็นภาพตัวเองแสดงว่ากล้องทำงาน หากภาพดำหรือไม่ขึ้น ให้ดูข้อความแจ้งสาเหตุเหนือปุ่มควบคุม
3. **เลือกกล้อง** ถ้าเครื่องมีหลายกล้อง (กล้องในเครื่อง กล้อง USB หรือกล้องเสมือนจากโปรแกรมอย่าง OBS) ให้สลับทดสอบทีละตัวในช่อง "เลือกกล้อง"
4. **เลือกความละเอียดที่ต้องการ** แล้วดูว่าความละเอียดจริงตรงกับที่เลือกหรือไม่ หรือกด "ตรวจหาความละเอียดที่รองรับ" เพื่อดูรายการทั้งหมดที่กล้องทำได้
5. **รอให้เครื่องมือวัดค่าประมาณ 5-10 วินาที** แล้วอ่านคะแนนสรุปและคำแนะนำที่แสดงใต้ภาพ
6. **ปรับแสงหรือการตั้งค่า** ตามคำแนะนำ จากนั้นดูคะแนนที่เปลี่ยนไปแบบเรียลไทม์
7. **ถ่ายภาพหรือบันทึกคลิป** เพื่อตรวจคุณภาพภาพนิ่งและภาพเคลื่อนไหว ไฟล์จะอยู่ในเครื่องของคุณเท่านั้น
8. **ทดสอบไมโครโฟน** (ถ้าต้องการ) โดยกด "เปิดทดสอบไมค์" แล้วพูด ถ้าแถบระดับเสียงขยับแสดงว่าไมค์ทำงาน
9. **กด "หยุดกล้อง"** เมื่อเสร็จ เพื่อปิดการใช้งานกล้องและคืนกล้องให้โปรแกรมอื่น

## ความหมายของค่าต่าง ๆ ที่เครื่องมือแสดง

| คำศัพท์ | ความหมายโดยย่อ | ค่าที่ควรได้ |
| --- | --- | --- |
| ความละเอียดจริง | จำนวนพิกเซลของภาพที่เบราว์เซอร์ได้รับจากกล้องจริง ๆ (กว้าง x สูง) อาจต่ำกว่าที่ระบุบนกล่อง | 1280 x 720 ขึ้นไปสำหรับวิดีโอคอล |
| อัตราส่วนภาพ | สัดส่วนความกว้างต่อความสูงของภาพ เช่น 16:9 (จอกว้าง) หรือ 4:3 (จอเดิม) | 16:9 เหมาะกับการประชุมส่วนใหญ่ |
| เฟรมเรต (FPS) | จำนวนภาพต่อวินาที ยิ่งสูงภาพเคลื่อนไหวยิ่งลื่น วัดจากเฟรมที่ได้รับจริง | 24-30 FPS ขึ้นไป |
| FPS เฉลี่ย / ต่ำสุด | ค่าเฉลี่ยและค่าต่ำสุดตลอดช่วงทดสอบ ใช้ดูว่ากล้องค้างหรือสะดุดหรือไม่ | ค่าต่ำสุดไม่ควรต่ำกว่าเฉลี่ยมาก |
| ความสว่าง | ระดับความสว่างเฉลี่ยของภาพ คิดเป็นเปอร์เซ็นต์ (0% = ดำสนิท, 100% = ขาวจัด) | ประมาณ 30-75% |
| คอนทราสต์ | ความต่างระหว่างส่วนมืดกับส่วนสว่างในภาพ ค่าต่ำทำให้ภาพดูซีดหรือหม่น | มากกว่า 15% |
| กลับภาพ (มิเรอร์) | พลิกภาพซ้าย-ขวาเหมือนส่องกระจก ปิดไว้เป็นค่าเริ่มต้น เพื่อให้เห็นเหมือนที่คนอื่นเห็น ตัวหนังสือจะไม่กลับด้าน | ปิดไว้เมื่อตรวจป้ายหรือเอกสาร |
| ความละเอียดที่รองรับ | รายการความละเอียดที่กล้องตอบรับได้จริง เครื่องหมาย ✓ คือรองรับ ✗ คือไม่รองรับ | มี HD (1280 x 720) ขึ้นไป |
| คะแนนสรุป | คะแนน 0-100 จากความละเอียด FPS ความเสถียรของ FPS และความสว่าง เป็นเพียงตัวช่วยประเมินเบื้องต้น | 65 ขึ้นไปถือว่าใช้งานได้ดี |
| ระดับเสียงไมค์ | แถบแสดงความดังของเสียงที่ไมโครโฟนรับ ใช้ตรวจว่าไมค์ทำงานหรือไม่ | แถบขยับเมื่อพูด |
| สิทธิ์เข้าถึงกล้อง (Permission) | การอนุญาตจากผู้ใช้ให้เว็บไซต์เปิดกล้องได้ ถ้าไม่อนุญาต เครื่องมือจะแสดงภาพไม่ได้ | อนุญาตเฉพาะเว็บที่ไว้ใจ |

## เว็บแคมไม่ขึ้นภาพ แก้ไขอย่างไร

- **ตรวจสิทธิ์ในเบราว์เซอร์:** คลิกไอคอนกุญแจข้างช่องที่อยู่เว็บ แล้วตั้งค่ากล้องเป็น "อนุญาต" จากนั้นรีเฟรชหน้า
- **ตรวจการตั้งค่าของระบบ:** ใน Windows ไปที่ ตั้งค่า > ความเป็นส่วนตัวและความปลอดภัย > กล้อง ส่วนใน macOS ไปที่ การตั้งค่าระบบ > ความเป็นส่วนตัวและความปลอดภัย > กล้อง แล้วเปิดให้เบราว์เซอร์ที่ใช้
- **ปิดโปรแกรมที่แย่งกล้อง:** Zoom, Teams, Skype, OBS หรือแท็บอื่นอาจใช้กล้องอยู่ ซึ่งทำให้เกิดข้อผิดพลาดแบบ "เปิดกล้องไม่ได้"
- **เลือกกล้องให้ถูกตัว:** ถ้ามีหลายกล้อง ลองสลับในช่อง "เลือกกล้อง"
- **เช็กการเชื่อมต่อ:** ถอดแล้วเสียบสาย USB ใหม่ ลองพอร์ตอื่น หลีกเลี่ยงฮับ USB ราคาถูก
- **อัปเดตไดรเวอร์และเบราว์เซอร์:** รวมถึงระบบปฏิบัติการ เพราะปัญหาบางอย่างหายได้ด้วยการอัปเดต
- **ดูที่ปิดกล้อง (Privacy shutter):** โน้ตบุ๊กหลายรุ่นมีฝาปิดเลนส์หรือปุ่มปิดกล้องที่ตัวเครื่อง
- **รีสตาร์ตเครื่อง:** ได้ผลบ่อยกว่าที่คิด หากทำตามทุกข้อแล้วยังไม่ได้ ให้ลองเบราว์เซอร์อื่นเพื่อแยกว่าปัญหาอยู่ที่เบราว์เซอร์หรือที่ตัวกล้อง

## เช็กลิสต์ก่อนเข้าประชุมออนไลน์

- ภาพคมชัดและไม่ค้าง (คะแนนสรุปควรอยู่ระดับ "ดี" ขึ้นไป)
- แสงมาจากด้านหน้า ไม่นั่งหันหลังให้หน้าต่างหรือหลอดไฟ
- กล้องอยู่ระดับสายตา และใบหน้าอยู่กลางภาพ
- เช็ดเลนส์ให้สะอาด รอยนิ้วมือทำให้ภาพฟุ้งได้
- ปิดโปรแกรมที่ไม่จำเป็นเพื่อให้ FPS เสถียร
- ทดสอบไมค์ด้วยในครั้งเดียวกัน แล้วเลือกอุปกรณ์เดียวกันใน Zoom, Meet หรือ Teams

## คำถามที่พบบ่อย

### ทดสอบเว็บแคมออนไลน์ปลอดภัยหรือไม่

เครื่องมือนี้ประมวลผลภาพในเบราว์เซอร์ของคุณเท่านั้น ไม่มีการอัปโหลดภาพหรือเสียงไปยังเซิร์ฟเวอร์ ภาพถ่ายและคลิปที่บันทึกจะถูกเก็บในเครื่องของคุณ และจะหายไปเมื่อปิดหน้าเว็บ ยกเว้นไฟล์ที่คุณเลือกดาวน์โหลดเอง

### ทำไมความละเอียดที่แสดงต่ำกว่าที่ระบุบนกล่องกล้อง

ความละเอียดจริงขึ้นกับกล้อง ไดรเวอร์ เบราว์เซอร์ และการเชื่อมต่อ USB กล้องที่ระบุ 1080p อาจส่งภาพเพียง 640 x 480 จนกว่าเว็บไซต์จะร้องขอความละเอียดสูงกว่านั้น ลองเลือก "1920 x 1080" ในช่องความละเอียดที่ต้องการ หรือกดตรวจหาความละเอียดที่รองรับ

### FPS ต่ำหรือแกว่ง เกิดจากอะไร

สาเหตุที่พบบ่อยคือแสงน้อย (กล้องลด FPS อัตโนมัติเพื่อรับแสงมากขึ้น) เครื่องทำงานหนัก พอร์ต USB ความเร็วต่ำ หรือมีโปรแกรมอื่นใช้กล้องอยู่ ลองเพิ่มแสง ปิดโปรแกรมอื่น และเสียบกล้องที่พอร์ต USB 3.0

### ใช้ทดสอบกล้องมือถือได้ไหม

ได้ เปิดหน้านี้ในเบราว์เซอร์มือถือ แล้วอนุญาตการเข้าถึงกล้อง หากมีหลายกล้อง (หน้า/หลัง) สามารถสลับได้ในช่อง "เลือกกล้อง" หลังจากกดเริ่มทดสอบครั้งแรก

### ทำไมภาพไม่กลับด้านเหมือนในแอปวิดีโอคอล

แอปวิดีโอคอลมักแสดงภาพของคุณแบบมิเรอร์ เพื่อให้ขยับตัวได้เหมือนส่องกระจก แต่คนอื่นเห็นภาพไม่กลับด้าน เครื่องมือนี้ปิดการกลับภาพไว้เป็นค่าเริ่มต้น เพื่อให้เห็นตรงกับที่ผู้อื่นเห็น หากต้องการเทียบกับแอปให้เปิด "กลับภาพ"

### เครื่องมือนี้ใช้กับเบราว์เซอร์อะไรได้บ้าง

รองรับ Chrome, Edge, Firefox และ Safari เวอร์ชันล่าสุด ต้องเปิดผ่าน HTTPS ส่วนการบันทึกคลิปอาจแตกต่างกันเล็กน้อยตามเบราว์เซอร์

### ทำไมกดอนุญาตแล้วยังไม่ขึ้นภาพ

ตรวจว่าไม่มีโปรแกรมอื่นกำลังใช้กล้อง ตรวจการตั้งค่าความเป็นส่วนตัวของระบบปฏิบัติการ และลองสลับกล้องในช่อง "เลือกกล้อง" ดูวิธีแก้ละเอียดในหัวข้อ "เว็บแคมไม่ขึ้นภาพ แก้ไขอย่างไร" ด้านบน