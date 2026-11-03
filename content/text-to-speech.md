---
title: แปลงข้อความเป็นเสียงพูด ออนไลน์ ฟรี
h1: แปลงข้อความเป็นเสียงพูด
description: 'แปลงข้อความเป็นเสียงพูดออนไลน์ฟรี เลือกภาษาและเสียงได้ ปรับความเร็ว ระดับเสียง ความดังได้ ใช้งานง่าย รวดเร็ว ไม่ต้องติดตั้ง ใช้ได้ทั้งมือถือและคอมพิวเตอร์'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T08:50:00+07:00'
weight: 55
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- แปลงข้อความเป็นเสียงพูด
- แปลงข้อความเป็นเสียงพูด ออนไลน์
- เสียงและวิดีโอ
---

<style>
#tts-app{max-width:720px;margin:0 auto 24px;font-family:inherit}
#tts-app *{box-sizing:border-box}
#tts-app textarea{width:100%;min-height:150px;padding:12px;font-size:1rem;font-family:inherit;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;color:inherit;resize:vertical}
#tts-app select,#tts-app button{font-family:inherit;font-size:.95rem;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5);border-radius:8px;padding:8px 12px;cursor:pointer}
#tts-app select{width:100%;cursor:default}
#tts-app button:hover{background:rgba(128,128,128,.15)}
#tts-app .tts-primary{background:#2563eb;border-color:#2563eb;color:#fff}
#tts-app .tts-primary:hover{background:#1d4ed8}
#tts-app .tts-row{display:flex;flex-wrap:wrap;gap:8px;margin:12px 0}
#tts-app .tts-field{margin:12px 0}
#tts-app .tts-field label{display:block;font-size:.9rem;margin-bottom:4px}
#tts-app .tts-sliders{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:12px;margin:12px 0}
#tts-app input[type=range]{width:100%}
#tts-app .tts-meta{display:flex;justify-content:space-between;font-size:.85rem;opacity:.75;margin-top:4px}
#tts-app .tts-tabs{display:flex;gap:8px;margin:20px 0 8px;flex-wrap:wrap}
#tts-app .tts-tabs button.tts-active{border-color:#2563eb;color:#2563eb;font-weight:600}
#tts-app .tts-list{list-style:none;margin:0;padding:0}
#tts-app .tts-list li{display:flex;gap:6px;align-items:center;padding:6px 0;border-bottom:1px solid rgba(128,128,128,.25)}
#tts-app .tts-list li .tts-text{flex:1;text-align:left;border:0;padding:6px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
#tts-app .tts-list li button{padding:4px 8px}
#tts-app .tts-empty{opacity:.7;font-size:.9rem;padding:8px 0}
#tts-unsupported{display:none;padding:12px;border:1px solid #dc2626;border-radius:8px;color:#dc2626}
</style>
<div id="tts-app">
<div id="tts-unsupported">เบราว์เซอร์นี้ไม่รองรับฟังก์ชันอ่านออกเสียง กรุณาลองใช้ Google Chrome, Microsoft Edge หรือ Safari</div>
<div id="tts-main">
<div class="tts-field"><label for="tts-voice">เสียง / ภาษา</label><select id="tts-voice"><option>กำลังโหลดเสียง…</option></select></div>
<textarea id="tts-text" placeholder="พิมพ์ข้อความที่ต้องการให้อ่านออกเสียง แล้วกด Enter" maxlength="5000"></textarea>
<div class="tts-meta"><span id="tts-status">พร้อมใช้งาน</span><span><span id="tts-count">0</span> / 5000</span></div>
<div class="tts-sliders">
<div><label for="tts-rate">ความเร็ว: <span id="tts-rate-v">1.0</span></label><input type="range" id="tts-rate" min="0.5" max="2" step="0.1" value="1"></div>
<div><label for="tts-pitch">ระดับเสียง: <span id="tts-pitch-v">1.0</span></label><input type="range" id="tts-pitch" min="0" max="2" step="0.1" value="1"></div>
<div><label for="tts-volume">ความดัง: <span id="tts-volume-v">100</span>%</label><input type="range" id="tts-volume" min="0" max="1" step="0.1" value="1"></div>
</div>
<div class="tts-row">
<button type="button" id="tts-speak" class="tts-primary">▶ พูด</button>
<button type="button" id="tts-pause">⏸ หยุดชั่วคราว</button>
<button type="button" id="tts-resume">⏯ เล่นต่อ</button>
<button type="button" id="tts-stop">⏹ หยุด</button>
<button type="button" id="tts-star">☆ ติดดาว</button>
<button type="button" id="tts-clear-text">ล้างข้อความ</button>
</div>
<div class="tts-tabs">
<button type="button" class="tts-active" data-tab="history">ประวัติ</button>
<button type="button" data-tab="starred">ข้อความติดดาว</button>
</div>
<div id="tts-panel-history"><ul class="tts-list" id="tts-history-list"></ul><div class="tts-row"><button type="button" id="tts-history-clear">ลบประวัติทั้งหมด</button></div></div>
<div id="tts-panel-starred" style="display:none"><ul class="tts-list" id="tts-starred-list"></ul></div>
</div>
</div>
<script>
(function () {
  var synth = window.speechSynthesis;
  var main = document.getElementById('tts-main');
  var unsupported = document.getElementById('tts-unsupported');
  if (!synth || typeof window.SpeechSynthesisUtterance === 'undefined') {
    unsupported.style.display = 'block';
    main.style.display = 'none';
    return;
  }
  var $ = function (id) { return document.getElementById(id); };
  var els = {
    voice: $('tts-voice'), text: $('tts-text'), count: $('tts-count'), status: $('tts-status'),
    rate: $('tts-rate'), pitch: $('tts-pitch'), volume: $('tts-volume'),
    rateV: $('tts-rate-v'), pitchV: $('tts-pitch-v'), volumeV: $('tts-volume-v'),
    histList: $('tts-history-list'), starList: $('tts-starred-list')
  };
  var MAX_HISTORY = 50;
  var voices = [];
  var history = load('tts-history');
  var starred = load('tts-starred');
  function load(key) {
    try {
      var raw = window.localStorage.getItem(key);
      var arr = raw ? JSON.parse(raw) : [];
      return Array.isArray(arr) ? arr : [];
    } catch (e) { return []; }
  }
  function save(key, arr) {
    try { window.localStorage.setItem(key, JSON.stringify(arr)); } catch (e) { /* ignore */ }
  }
  function setStatus(msg) { els.status.textContent = msg; }
  function loadVoices() {
    voices = synth.getVoices();
    if (voices.length === 0) { return; }
    var prev = els.voice.value;
    var pageLang = (navigator.language || 'th').toLowerCase();
    var indexed = voices.map(function (v, i) { return { v: v, i: i }; });
    indexed.sort(function (a, b) {
      var at = a.v.lang.toLowerCase().indexOf('th') === 0 ? 0 : 1;
      var bt = b.v.lang.toLowerCase().indexOf('th') === 0 ? 0 : 1;
      if (at !== bt) { return at - bt; }
      return a.v.lang.localeCompare(b.v.lang) || a.v.name.localeCompare(b.v.name);
    });
    els.voice.innerHTML = '';
    var chosen = -1;
    indexed.forEach(function (o, n) {
      var opt = document.createElement('option');
      opt.value = String(o.i);
      opt.textContent = o.v.name + ' (' + o.v.lang + ')';
      els.voice.appendChild(opt);
      if (chosen === -1 && o.v.lang.toLowerCase().indexOf('th') === 0) { chosen = n; }
      if (chosen === -1 && o.v.lang.toLowerCase() === pageLang) { chosen = n; }
    });
    if (prev && els.voice.querySelector('option[value="' + prev + '"]')) {
      els.voice.value = prev;
    } else if (chosen !== -1) {
      els.voice.selectedIndex = chosen;
    }
  }
  loadVoices();
  if (typeof synth.onvoiceschanged !== 'undefined') { synth.onvoiceschanged = loadVoices; }
  setTimeout(loadVoices, 500);
  function splitText(text) {
    var out = [];
    text.split(/\r?\n/).forEach(function (line) {
      var s = line.trim();
      while (s.length > 180) {
        var cut = -1;
        var seg = s.slice(0, 180);
        var m = seg.match(/[\s.!?,;:。！？、，]+(?=[^\s.!?,;:。！？、，]*$)/);
        if (m && m.index > 40) { cut = m.index + m[0].length; }
        if (cut === -1) { cut = 180; }
        out.push(s.slice(0, cut).trim());
        s = s.slice(cut).trim();
      }
      if (s.length > 0) { out.push(s); }
    });
    return out;
  }
  function addHistory(text) {
    history = history.filter(function (t) { return t !== text; });
    history.unshift(text);
    if (history.length > MAX_HISTORY) { history.length = MAX_HISTORY; }
    save('tts-history', history);
    renderLists();
  }
  function speak(text) {
    var value = (typeof text === 'string' ? text : els.text.value).trim();
    if (value.length === 0) { setStatus('กรุณาพิมพ์ข้อความก่อน'); return; }
    synth.cancel();
    var chunks = splitText(value);
    var voice = voices[parseInt(els.voice.value, 10)];
    var done = 0;
    chunks.forEach(function (chunk) {
      var u = new window.SpeechSynthesisUtterance(chunk);
      if (voice) { u.voice = voice; u.lang = voice.lang; }
      u.rate = parseFloat(els.rate.value);
      u.pitch = parseFloat(els.pitch.value);
      u.volume = parseFloat(els.volume.value);
      u.onstart = function () { setStatus('กำลังพูด…'); };
      u.onend = function () { done += 1; if (done === chunks.length) { setStatus('พูดเสร็จแล้ว'); } };
      u.onerror = function (ev) { if (ev.error !== 'canceled' && ev.error !== 'interrupted') { setStatus('เกิดข้อผิดพลาด: ' + ev.error); } };
      synth.speak(u);
    });
    addHistory(value);
  }
  function makeItem(text, isStarList) {
    var li = document.createElement('li');
    var t = document.createElement('button');
    t.type = 'button'; t.className = 'tts-text'; t.textContent = text; t.title = text;
    t.addEventListener('click', function () { els.text.value = text; updateCount(); speak(text); });
    var s = document.createElement('button');
    s.type = 'button';
    s.textContent = starred.indexOf(text) !== -1 ? '★' : '☆';
    s.title = 'ติดดาว / เอาดาวออก';
    s.addEventListener('click', function () { toggleStar(text); });
    li.appendChild(t); li.appendChild(s);
    if (!isStarList) {
      var d = document.createElement('button');
      d.type = 'button'; d.textContent = '✕'; d.title = 'ลบรายการนี้';
      d.addEventListener('click', function () {
        history = history.filter(function (x) { return x !== text; });
        save('tts-history', history); renderLists();
      });
      li.appendChild(d);
    }
    return li;
  }
  function fillList(ul, arr, isStarList, emptyMsg) {
    ul.innerHTML = '';
    if (arr.length === 0) {
      var e = document.createElement('li');
      e.className = 'tts-empty'; e.textContent = emptyMsg;
      ul.appendChild(e);
      return;
    }
    arr.forEach(function (text) { ul.appendChild(makeItem(text, isStarList)); });
  }
  function renderLists() {
    fillList(els.histList, history, false, 'ยังไม่มีประวัติ (เก็บสูงสุด ' + MAX_HISTORY + ' รายการ)');
    fillList(els.starList, starred, true, 'ยังไม่มีข้อความติดดาว');
    updateStarButton();
  }
  function toggleStar(text) {
    var i = starred.indexOf(text);
    if (i === -1) { starred.unshift(text); } else { starred.splice(i, 1); }
    save('tts-starred', starred);
    renderLists();
  }
  function updateStarButton() {
    var v = els.text.value.trim();
    $('tts-star').textContent = (v && starred.indexOf(v) !== -1) ? '★ เอาดาวออก' : '☆ ติดดาว';
  }
  function updateCount() { els.count.textContent = String(els.text.value.length); updateStarButton(); }
  els.text.addEventListener('input', updateCount);
  els.text.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' && !e.shiftKey && !e.isComposing) { e.preventDefault(); speak(); }
  });
  els.rate.addEventListener('input', function () { els.rateV.textContent = parseFloat(els.rate.value).toFixed(1); });
  els.pitch.addEventListener('input', function () { els.pitchV.textContent = parseFloat(els.pitch.value).toFixed(1); });
  els.volume.addEventListener('input', function () { els.volumeV.textContent = String(Math.round(parseFloat(els.volume.value) * 100)); });
  $('tts-speak').addEventListener('click', function () { speak(); });
  $('tts-pause').addEventListener('click', function () { synth.pause(); setStatus('หยุดชั่วคราว'); });
  $('tts-resume').addEventListener('click', function () { synth.resume(); setStatus('กำลังพูด…'); });
  $('tts-stop').addEventListener('click', function () { synth.cancel(); setStatus('หยุดแล้ว'); });
  $('tts-star').addEventListener('click', function () {
    var v = els.text.value.trim();
    if (v) { toggleStar(v); } else { setStatus('กรุณาพิมพ์ข้อความก่อน'); }
  });
  $('tts-clear-text').addEventListener('click', function () { els.text.value = ''; updateCount(); els.text.focus(); });
  $('tts-history-clear').addEventListener('click', function () { history = []; save('tts-history', history); renderLists(); });
  var tabBtns = document.querySelectorAll('#tts-app .tts-tabs button');
  Array.prototype.forEach.call(tabBtns, function (btn) {
    btn.addEventListener('click', function () {
      var tab = btn.getAttribute('data-tab');
      Array.prototype.forEach.call(tabBtns, function (b) { b.classList.remove('tts-active'); });
      btn.classList.add('tts-active');
      $('tts-panel-history').style.display = tab === 'history' ? 'block' : 'none';
      $('tts-panel-starred').style.display = tab === 'starred' ? 'block' : 'none';
    });
  });
  window.addEventListener('beforeunload', function () { synth.cancel(); });
  renderLists();
  updateCount();
})();
</script>

## วิธีใช้งานเครื่องมือแปลงข้อความเป็นเสียงพูด

1. **พิมพ์หรือวางข้อความ** ลงในช่องข้อความด้านบน (สูงสุด 5,000 ตัวอักษร)
2. **เลือกเสียง/ภาษา** จากรายการ เสียงภาษาไทยจะอยู่ด้านบนสุดเพื่อให้เลือกง่าย
3. **ปรับค่าเสียง** ได้ตามต้องการ ได้แก่ ความเร็ว ระดับเสียง และความดัง
4. **กด Enter หรือปุ่ม "พูด"** เพื่อเริ่มอ่านออกเสียง (กด Shift + Enter หากต้องการขึ้นบรรทัดใหม่)
5. **ควบคุมการเล่น** ด้วยปุ่ม "หยุดชั่วคราว", "เล่นต่อ" หรือ "หยุด" ได้ตลอดเวลา
6. **ติดดาวข้อความ** ที่ใช้บ่อยเพื่อเรียกกลับมาใช้ภายหลัง และดูข้อความที่เคยใช้ได้ในแท็บ "ประวัติ"

### เคล็ดลับการใช้งาน

- ข้อความยาวมากอาจถูกตัดกลางคันในบางเบราว์เซอร์ ระบบจึงแบ่งข้อความเป็นช่วงสั้น ๆ ให้อัตโนมัติ คุณยังแบ่งเป็นหลายบรรทัดเองได้เช่นกัน
- หากไม่มีเสียงภาษาไทยในรายการ ให้ติดตั้งแพ็กเกจเสียงภาษาไทยในระบบปฏิบัติการของอุปกรณ์ แล้วรีเฟรชหน้านี้
- เครื่องมือนี้ทำงานในเบราว์เซอร์ของคุณเอง ข้อความไม่ถูกส่งไปเก็บบนเซิร์ฟเวอร์ ประวัติและข้อความติดดาวถูกเก็บในอุปกรณ์ของคุณเท่านั้น
- แนะนำให้ใช้ Google Chrome, Microsoft Edge หรือ Safari เพื่อให้รองรับครบถ้วนที่สุด

### อธิบายศัพท์ที่ควรรู้

- **Text to Speech (TTS)**: เทคโนโลยีแปลงข้อความตัวอักษรให้เป็นเสียงพูดสังเคราะห์
- **Speech Synthesis API**: ฟีเจอร์มาตรฐานของเบราว์เซอร์ที่ใช้สร้างเสียงพูดจากข้อความ โดยใช้เสียงที่มีอยู่ในอุปกรณ์ของคุณ
- **เสียง (Voice)**: ชุดเสียงพูดที่ใช้อ่าน ซึ่งแต่ละเสียงผูกกับภาษาและสำเนียงเฉพาะ เช่น th-TH สำหรับภาษาไทย
- **แพ็กเกจเสียง (Voice Pack)**: ไฟล์เสียงเพิ่มเติมที่ติดตั้งในระบบปฏิบัติการ เพื่อให้มีเสียงภาษาอื่นหรือเสียงคุณภาพสูงขึ้น
- **ความเร็ว (Rate)**: อัตราความเร็วในการพูด ค่า 1.0 คือความเร็วปกติ ต่ำกว่าช้าลง สูงกว่าเร็วขึ้น
- **ระดับเสียง (Pitch)**: ความสูงต่ำของเสียง ค่าต่ำให้เสียงทุ้ม ค่าสูงให้เสียงแหลม
- **ความดัง (Volume)**: ระดับความดังของเสียงที่เล่น ตั้งแต่ 0% (เงียบ) ถึง 100% (ดังสุด)
- **Enter / Shift + Enter**: Enter ใช้สั่งให้พูดทันที ส่วน Shift + Enter ใช้ขึ้นบรรทัดใหม่โดยไม่สั่งพูด
- **ประวัติ**: รายการข้อความที่เคยสั่งพูด เก็บไว้สูงสุด 50 รายการ
- **ข้อความติดดาว**: ข้อความที่คุณบันทึกไว้เป็นรายการโปรดเพื่อเรียกใช้ซ้ำได้ง่าย
- **หยุดชั่วคราว / เล่นต่อ / หยุด**: หยุดพักเสียงไว้ก่อน เล่นต่อจากจุดเดิม หรือยกเลิกการอ่านทั้งหมด
- **localStorage**: พื้นที่เก็บข้อมูลขนาดเล็กในเบราว์เซอร์ ใช้บันทึกประวัติและข้อความติดดาวโดยไม่ต้องสมัครสมาชิก

### ใช้เมื่อไหร่ได้บ้าง

- ฟังข้อความหรือบทความแทนการอ่านเอง
- ช่วยตรวจทานงานเขียนโดยฟังว่าอ่านลื่นไหลหรือไม่
- ทำเสียงบรรยายสำหรับสไลด์ วิดีโอ หรือโปรเจกต์ต่าง ๆ
- ฝึกฟังการออกเสียงภาษาต่าง ๆ
- ช่วยผู้ที่มีปัญหาด้านการมองเห็นหรือการอ่าน