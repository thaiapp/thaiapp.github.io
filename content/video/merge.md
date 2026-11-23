---
title: รวมวิดีโอออนไลน์ ฟรี
h1: รวมวิดีโอออนไลน์
description: รวมวิดีโอออนไลน์ฟรี ต่อคลิป MP4 MOV WebM เรียงลำดับเองได้ เลือกความละเอียด อัตราส่วน ใส่เฟดและเพลง ใช้ได้บนมือถือและคอมพิวเตอร์ ไม่ต้องอัปโหลด ไม่มีลายน้ำ
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-22T13:09:38+07:00'
weight: 144
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- รวมวิดีโอออนไลน์
- รวมวิดีโอ
- ต่อวิดีโอ
- รวมคลิปวิดีโอ
- เสียงและวิดีโอ
---

<div id="vm">
<label class="vm-box" id="vm-drop">🎬 วางวิดีโอที่นี่ หรือคลิกเพื่อเลือกไฟล์ (วางด้วย Ctrl+V ได้)<br><small>เพิ่ม 2 ไฟล์ขึ้นไป · MP4, MOV, WebM · ประมวลผลในเครื่อง ไม่อัปโหลด</small><input id="vm-file" type="file" accept="video/*" multiple hidden></label>
<p id="vm-msg" role="alert"></p>
<select id="vm-sort"><option value="">เรียงลำดับคลิป…</option><option value="add">ตามลำดับที่เพิ่ม</option><option value="rev">ย้อนกลับ</option><option value="az">ชื่อ A–Z</option><option value="za">ชื่อ Z–A</option></select>
<div id="vm-list"></div>
<p id="vm-info"></p>
<div class="vm-g">
<label>พรีเซ็ต<select id="vm-pre"><option value="">กำหนดเอง</option><option value="yt">YouTube 16:9 1080p</option><option value="tt">TikTok / Reels / Shorts 9:16</option><option value="ig">Instagram 1:1</option><option value="wa">WhatsApp 480p</option></select></label>
<label>ความละเอียด<select id="vm-res"><option value="480">480p</option><option value="720" selected>720p</option><option value="1080">1080p</option></select></label>
<label>อัตราส่วน<select id="vm-ratio"><option value="auto">ตามคลิปแรก</option><option value="16:9">16:9 แนวนอน</option><option value="9:16">9:16 แนวตั้ง</option><option value="1:1">1:1 จัตุรัส</option><option value="4:5">4:5</option></select></label>
<label>พื้นที่ว่างรอบภาพ<select id="vm-fill"><option value="black">สีดำ (Letterbox)</option><option value="blur">พื้นหลังเบลอ</option></select></label>
<label>เปลี่ยนคลิป<select id="vm-fade"><option value="0">ตัดต่อทันที</option><option value="0.5">เฟด 0.5 วินาที</option><option value="1">เฟด 1 วินาที</option></select></label>
<label>FPS<select id="vm-fps"><option value="24">24</option><option value="30" selected>30</option><option value="60">60</option></select></label>
<label>เพลงประกอบ (ไม่บังคับ)<input id="vm-mus" type="file" accept="audio/*"></label>
<label>ระดับเสียงเพลง<input id="vm-vol" type="range" min="0" max="100" value="30"></label>
</div>
<p><button type="button" id="vm-go">รวมวิดีโอ</button> <button type="button" id="vm-stop" hidden>ยกเลิก</button></p>
<progress id="vm-bar" value="0" max="100" hidden></progress>
<p id="vm-wait" hidden>เปิดแท็บนี้ไว้ขณะประมวลผล การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</p>
<div id="vm-res-box" hidden><video id="vm-out" controls playsinline></video><p><a id="vm-dl" class="vm-dl" download="merged.mp4">ดาวน์โหลดวิดีโอที่รวมแล้ว</a></p></div>
</div>

<style>
#vm{max-width:100%;margin:1rem 0}
#vm .vm-box{display:block;border:2px dashed #888;border-radius:12px;padding:1.6rem 1rem;text-align:center;cursor:pointer}
#vm .vm-row{display:flex;gap:.5rem;align-items:center;flex-wrap:wrap;padding:.4rem 0;border-bottom:1px solid rgba(128,128,128,.3)}
#vm .vm-n{flex:1;min-width:200px;word-break:break-all}
#vm .vm-g{display:grid;grid-template-columns:repeat(auto-fit,minmax(210px,1fr));gap:.7rem;margin:.8rem 0}
#vm .vm-g label{display:flex;flex-direction:column;gap:.2rem;font-size:.9rem}
#vm select,#vm button,#vm input[type=file]{font:inherit;padding:.4rem .6rem;max-width:100%}
#vm button{cursor:pointer}
#vm progress,#vm video{width:100%}
#vm [hidden]{display:none}
#vm-msg{color:#c0392b}
</style>

<script>
(function () {
  var $ = function (i) { return document.getElementById(i); };
  var clips = [], seq = 0, busy = false, stop = false, cur = null, outUrl = null;
  var PRE = { yt: ['16:9', '1080'], tt: ['9:16', '1080'], ig: ['1:1', '1080'], wa: ['16:9', '480'] };
  var BR = { 480: 1500000, 720: 3000000, 1080: 6000000 };
  function fmt(s) { s = Math.round(s); return Math.floor(s / 60) + ':' + ('0' + (s % 60)).slice(-2); }
  function mb(b) { return (b / 1048576).toFixed(1) + ' MB'; }
  function msg(t) { $('vm-msg').textContent = t || ''; }
  function info() {
    var td = 0;
    clips.forEach(function (c) { td += c.d; });
    var br = BR[$('vm-res').value] + 128000;
    $('vm-info').textContent = clips.length ? clips.length + ' คลิป · ความยาวรวม ' + fmt(td) + ' · ขนาดไฟล์โดยประมาณ ' + mb(br * td / 8) : '';
  }
  function add(files) {
    msg('');
    Array.prototype.forEach.call(files, function (f) {
      if (f.type.indexOf('video') !== 0) { msg('ไฟล์ ' + f.name + ' ไม่ใช่วิดีโอ'); return; }
      var u = URL.createObjectURL(f), v = document.createElement('video');
      v.preload = 'metadata';
      v.onloadedmetadata = function () {
        if (!isFinite(v.duration) || v.videoWidth === 0) { msg('อ่านไฟล์ ' + f.name + ' ไม่ได้'); return; }
        clips.push({ f: f, u: u, d: v.duration, w: v.videoWidth, h: v.videoHeight, mute: false, n: seq++ });
        render();
      };
      v.onerror = function () { msg('เบราว์เซอร์ไม่รองรับไฟล์ ' + f.name + ' ลองแปลงเป็น MP4 ก่อน'); };
      v.src = u;
    });
  }
  function mv(i, d) {
    var j = i + d;
    if (j === -1 || j === clips.length) return;
    var t = clips[i]; clips[i] = clips[j]; clips[j] = t;
    render();
  }
  function btn(txt, fn) {
    var b = document.createElement('button');
    b.type = 'button'; b.textContent = txt; b.onclick = fn;
    return b;
  }
  function render() {
    var L = $('vm-list');
    L.textContent = '';
    clips.forEach(function (c, i) {
      var r = document.createElement('div'); r.className = 'vm-row';
      var t = document.createElement('span'); t.className = 'vm-n';
      t.textContent = (i + 1) + '. ' + c.f.name + ' · ' + fmt(c.d) + ' · ' + c.w + 'x' + c.h + ' · ' + mb(c.f.size);
      r.appendChild(t);
      r.appendChild(btn('◀', function () { mv(i, -1); }));
      r.appendChild(btn('▶', function () { mv(i, 1); }));
      var m = document.createElement('label'), k = document.createElement('input');
      k.type = 'checkbox'; k.checked = c.mute; k.onchange = function () { c.mute = k.checked; };
      m.appendChild(k); m.appendChild(document.createTextNode(' ปิดเสียง'));
      r.appendChild(m);
      r.appendChild(btn('✕', function () { URL.revokeObjectURL(c.u); clips.splice(i, 1); render(); }));
      L.appendChild(r);
    });
    info();
  }
  $('vm-file').onchange = function () { add(this.files); this.value = ''; };
  $('vm-drop').ondragover = function (e) { e.preventDefault(); };
  $('vm-drop').ondrop = function (e) { e.preventDefault(); add(e.dataTransfer.files); };
  document.addEventListener('paste', function (e) { if (e.clipboardData && e.clipboardData.files.length) add(e.clipboardData.files); });
  $('vm-res').onchange = info;
  $('vm-pre').onchange = function () {
    var p = PRE[this.value];
    if (p) { $('vm-ratio').value = p[0]; $('vm-res').value = p[1]; info(); }
  };
  $('vm-sort').onchange = function () {
    var v = this.value;
    if (v === 'rev') clips.reverse();
    else if (v === 'az') clips.sort(function (a, b) { return a.f.name.localeCompare(b.f.name); });
    else if (v === 'za') clips.sort(function (a, b) { return b.f.name.localeCompare(a.f.name); });
    else if (v === 'add') clips.sort(function (a, b) { return a.n - b.n; });
    this.value = '';
    render();
  };
  $('vm-stop').onclick = function () {
    stop = true;
    if (cur) { cur.v.pause(); cur.v.dispatchEvent(new Event('ended')); }
  };
  $('vm-go').onclick = function () { merge().catch(function (e) { msg('เกิดข้อผิดพลาด: ' + (e && e.message ? e.message : e)); finish(); }); };
  var ac = null, rec = null;
  function finish() {
    busy = false; cur = null;
    $('vm-go').hidden = false; $('vm-stop').hidden = true; $('vm-wait').hidden = true; $('vm-bar').hidden = true;
    if (ac) { try { ac.close(); } catch (e) {} ac = null; }
  }
  async function merge() {
    if (busy) return;
    if (clips.length === 0 || clips.length === 1) { msg('เพิ่มวิดีโออย่างน้อย 2 ไฟล์'); return; }
    if (!window.MediaRecorder || !HTMLCanvasElement.prototype.captureStream) { msg('เบราว์เซอร์นี้ไม่รองรับการรวมวิดีโอ ลองใช้ Chrome, Edge, Firefox หรือ Safari รุ่นใหม่'); return; }
    var mt = ['video/mp4;codecs=avc1,mp4a.40.2', 'video/mp4', 'video/webm;codecs=vp9,opus', 'video/webm'].filter(function (t) { return MediaRecorder.isTypeSupported(t); })[0];
    if (!mt) { msg('ไม่พบรูปแบบเอาต์พุตที่เบราว์เซอร์รองรับ'); return; }
    msg(''); busy = true; stop = false;
    var rs = parseInt($('vm-res').value, 10), rv = $('vm-ratio').value, fd = parseFloat($('vm-fade').value), fps = parseInt($('vm-fps').value, 10);
    var ar = rv === 'auto' ? clips[0].w / clips[0].h : rv.split(':')[0] / rv.split(':')[1];
    var W, H;
    if (ar >= 1) { H = rs; W = Math.round(rs * ar); } else { W = rs; H = Math.round(rs / ar); }
    W += W % 2; H += H % 2;
    var cv = document.createElement('canvas'); cv.width = W; cv.height = H;
    var ctx = cv.getContext('2d');
    var blur = $('vm-fill').value === 'blur' && 'filter' in ctx;
    var AC = window.AudioContext || window.webkitAudioContext;
    ac = new AC(); await ac.resume();
    var dest = ac.createMediaStreamDestination();
    var st = cv.captureStream(fps);
    dest.stream.getAudioTracks().forEach(function (t) { st.addTrack(t); });
    var chunks = [];
    rec = new MediaRecorder(st, { mimeType: mt, videoBitsPerSecond: BR[rs], audioBitsPerSecond: 128000 });
    rec.ondataavailable = function (e) { if (e.data && e.data.size) chunks.push(e.data); };
    var stopped = new Promise(function (res) { rec.onstop = res; });
    var mus = null, mf = $('vm-mus').files[0];
    if (mf) {
      mus = new Audio(URL.createObjectURL(mf)); mus.loop = true;
      var mg = ac.createGain(); mg.gain.value = $('vm-vol').value / 100;
      ac.createMediaElementSource(mus).connect(mg); mg.connect(dest);
    }
    var total = 0, done = 0;
    clips.forEach(function (c) { total += c.d; });
    $('vm-go').hidden = true; $('vm-stop').hidden = false; $('vm-wait').hidden = false; $('vm-bar').hidden = false; $('vm-bar').value = 0;
    $('vm-res-box').hidden = true;
    function draw(v, al) {
      var vw = v.videoWidth, vh = v.videoHeight;
      ctx.globalAlpha = 1; ctx.fillStyle = '#000'; ctx.fillRect(0, 0, W, H);
      ctx.globalAlpha = al;
      if (blur) {
        var s = Math.max(W / vw, H / vh);
        ctx.filter = 'blur(24px)';
        ctx.drawImage(v, (W - vw * s) / 2, (H - vh * s) / 2, vw * s, vh * s);
        ctx.filter = 'none';
      }
      var k = Math.min(W / vw, H / vh);
      ctx.drawImage(v, (W - vw * k) / 2, (H - vh * k) / 2, vw * k, vh * k);
      ctx.globalAlpha = 1;
    }
    function tick() {
      if (!busy) return;
      if (cur && cur.v.readyState >= 2) {
        var t = cur.v.currentTime, d = cur.c.d, al = 1;
        if (fd > 0) al = Math.max(0, Math.min(1, t / fd, (d - t) / fd));
        draw(cur.v, al);
        cur.g.gain.value = cur.c.mute ? 0 : al;
        $('vm-bar').value = Math.min(100, (done + t) / total * 100);
      }
      requestAnimationFrame(tick);
    }
    function play(c) {
      return new Promise(function (res) {
        var v = document.createElement('video');
        v.playsInline = true; v.preload = 'auto'; v.src = c.u;
        var g = ac.createGain(), s = ac.createMediaElementSource(v);
        s.connect(g); g.connect(dest);
        v.onended = function () { cur = null; res(); };
        v.onerror = function () { cur = null; res(); };
        cur = { v: v, g: g, c: c };
        v.play().catch(function () { cur = null; res(); });
      });
    }
    rec.start(1000);
    if (mus) mus.play().catch(function () {});
    requestAnimationFrame(tick);
    for (var i = 0; i !== clips.length; i++) {
      if (stop) break;
      await play(clips[i]);
      done += clips[i].d;
    }
    if (mus) mus.pause();
    rec.stop();
    await stopped;
    var cancelled = stop;
    finish();
    if (cancelled) { msg('ยกเลิกการรวมวิดีโอแล้ว'); return; }
    if (outUrl) URL.revokeObjectURL(outUrl);
    var blob = new Blob(chunks, { type: mt.split(';')[0] });
    outUrl = URL.createObjectURL(blob);
    $('vm-out').src = outUrl;
    $('vm-dl').href = outUrl;
    $('vm-dl').download = 'merged.' + (mt.indexOf('mp4') !== -1 ? 'mp4' : 'webm');
    $('vm-res-box').hidden = false;
    msg('');
  }
})();
</script>

## วิธีใช้งานรวมวิดีโอ

1. **เพิ่มวิดีโอ** ลากไฟล์มาวาง คลิกกรอบด้านบนเพื่อเลือกไฟล์ หรือกด Ctrl+V เพิ่มได้ตั้งแต่ 2 ไฟล์ขึ้นไป
2. **จัดลำดับคลิป** ใช้ปุ่ม ◀ ▶ เลื่อนคลิปไปก่อนหรือหลัง หรือเลือกเรียงตามชื่อ A–Z, Z–A และย้อนกลับ
3. **เลือกพรีเซ็ตหรือตั้งค่าเอง** เช่น YouTube, TikTok, Instagram, WhatsApp หรือกำหนดความละเอียดและอัตราส่วนเอง
4. **เลือกวิธีจัดภาพ** ถ้าคลิปมีขนาดต่างกัน เลือกพื้นที่ว่างเป็นสีดำหรือพื้นหลังเบลอ
5. **ปรับแต่งเพิ่มเติม** เลือกเฟดตอนเปลี่ยนคลิป ปิดเสียงเฉพาะคลิปที่ไม่ต้องการ หรือใส่เพลงประกอบพร้อมปรับระดับเสียง
6. **กดรวมวิดีโอ** เปิดแท็บนี้ไว้จนเสร็จ เวลาประมวลผลใกล้เคียงความยาววิดีโอรวม จากนั้นดูตัวอย่างและกดดาวน์โหลด

ทุกขั้นตอนทำงานในเบราว์เซอร์ของคุณ วิดีโอไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์ ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำ

## รวมวิดีโอที่ขนาดหรือแนวภาพต่างกัน

คลิปจากโทรศัพท์แนวตั้งและคลิปจากกล้องแนวนอนรวมกันได้ เครื่องมือจะย่อภาพแต่ละคลิปให้พอดีกับเฟรมที่เลือกโดยไม่บิดสัดส่วน พื้นที่ที่เหลือเติมด้วยสีดำหรือพื้นหลังเบลอ

## พรีเซ็ตสำหรับแพลตฟอร์ม

| พรีเซ็ต | อัตราส่วน | ความละเอียด | เหมาะกับ |
|---|---|---|---|
| YouTube | 16:9 | 1080p | วิดีโอแนวนอนทั่วไป |
| TikTok / Reels / Shorts | 9:16 | 1080p | วิดีโอสั้นแนวตั้ง |
| Instagram | 1:1 | 1080p | โพสต์ในฟีด |
| WhatsApp | 16:9 | 480p | ส่งต่อในแชต ไฟล์เล็ก |

## คำอธิบายศัพท์

- **ความละเอียด (Resolution)** จำนวนพิกเซลของภาพ เช่น 720p หรือ 1080p ค่าสูงขึ้นภาพคมขึ้นแต่ไฟล์ใหญ่ขึ้น
- **อัตราส่วน (Aspect Ratio)** สัดส่วนกว้างต่อสูงของเฟรม เช่น 16:9 แนวนอน 9:16 แนวตั้ง 1:1 จัตุรัส
- **Letterbox** แถบสีดำที่เติมรอบภาพเมื่อสัดส่วนคลิปไม่ตรงกับเฟรม
- **พื้นหลังเบลอ** ใช้ภาพจากคลิปเดียวกันขยายและเบลอเป็นฉากหลังแทนแถบสีดำ
- **เฟด (Fade)** ภาพค่อย ๆ มืดลงตอนจบคลิปและสว่างขึ้นตอนเริ่มคลิปถัดไป ทำให้การเปลี่ยนคลิปนุ่มนวล
- **FPS (Frames Per Second)** จำนวนเฟรมต่อวินาที 24 ให้ลุคภาพยนตร์ 30 ใช้ทั่วไป 60 ลื่นเหมาะกับภาพเคลื่อนไหวเร็ว
- **Bitrate** ปริมาณข้อมูลต่อวินาทีของวิดีโอ ยิ่งสูงยิ่งคมและไฟล์ใหญ่ เครื่องมือเลือกให้อัตโนมัติตามความละเอียด
- **เข้ารหัสใหม่ (Re-encode)** การบันทึกวิดีโอใหม่เป็นไฟล์เดียว เครื่องมือนี้เข้ารหัสใหม่เสมอ จึงปรับขนาด เฟด และผสมเสียงได้
- **MP4 / WebM** รูปแบบไฟล์วิดีโอ MP4 เปิดได้เกือบทุกอุปกรณ์ WebM เป็นรูปแบบเปิดสำหรับเว็บ เครื่องมือเลือกให้อัตโนมัติตามที่เบราว์เซอร์รองรับ
- **MOV** รูปแบบไฟล์วิดีโอที่กล้องและ iPhone ใช้บ่อย

## คำถามที่พบบ่อย

**วิดีโอของฉันถูกอัปโหลดไหม?**
ไม่ ทุกอย่างประมวลผลในเบราว์เซอร์ของคุณ ไฟล์ไม่ออกจากอุปกรณ์

**ไฟล์ใหญ่ได้แค่ไหน?**
ขึ้นกับหน่วยความจำของอุปกรณ์ ถ้าไฟล์ใหญ่มากหรือรวมหลายคลิป แนะนำเลือกความละเอียด 720p หรือต่ำกว่า

**คุณภาพวิดีโอจะลดลงไหม?**
เนื่องจากมีการเข้ารหัสใหม่ คุณภาพอาจต่างจากต้นฉบับเล็กน้อย เลือก 1080p เพื่อคงความคมชัดสูงสุด

**ทำไมใช้เวลานาน?**
การรวมทำงานตามความเร็วเล่นจริงของวิดีโอ ความยาวรวม 5 นาทีจึงใช้เวลาประมาณ 5 นาที เปิดแท็บค้างไว้จนเสร็จ

**ใช้บนมือถือได้ไหม?**
ได้ ใช้ได้บน Android และ iPhone ที่เบราว์เซอร์รุ่นใหม่ แต่ควรเปิดหน้าจอและแท็บนี้ไว้ระหว่างรวม