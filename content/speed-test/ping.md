---
title: ทดสอบ ping ออนไลน์ ฟรี
h1: ทดสอบ ping
description: 'ใช้ทดสอบ ping ตรวจสอบและวัดค่า latency ได้ง่าย แสดงผลเป็นกราฟและเทอร์มินัล อ่านได้ทุกขนาดหน้าจอ เริ่มใช้งานได้ในไม่กี่วินาที ฟรี รวดเร็ว ไม่ต้องสมัครสมาชิก'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-29T09:00:00+07:00'
weight: 17
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ทดสอบ ping
- ทดสอบ ping ออนไลน์
- ทดสอบและวัดค่า
---

<div class="pg-wrap" id="pg-app">
<div class="pg-controls">
<select id="pg-target" aria-label="เซิร์ฟเวอร์ปลายทาง">
<option value="https://1.1.1.1/cdn-cgi/trace">Cloudflare (1.1.1.1)</option>
<option value="https://www.google.com/generate_204">Google</option>
<option value="https://www.apple.com/library/test/success.html">Apple</option>
<option value="https://www.microsoft.com/favicon.ico">Microsoft</option>
<option value="custom">กำหนดเอง (URL)</option>
</select>
<input type="text" id="pg-custom" placeholder="https://example.com" aria-label="URL ที่กำหนดเอง" hidden>
<select id="pg-duration" aria-label="ระยะเวลาทดสอบ">
<option value="0">ไม่จำกัดเวลา</option>
<option value="5000">5 วินาที</option>
<option value="10000">10 วินาที</option>
<option value="60000">1 นาที</option>
<option value="600000">10 นาที</option>
</select>
<button type="button" id="pg-toggle" class="pg-btn">เริ่ม</button>
</div>
<div class="pg-hint"><kbd>Enter</kbd> เริ่ม / <kbd>Ctrl</kbd>+<kbd>C</kbd> หยุด</div>
<div class="pg-tabs" role="tablist">
<button type="button" class="pg-tab pg-on" id="pg-tab-chart" role="tab">แผนภูมิ</button>
<button type="button" class="pg-tab" id="pg-tab-term" role="tab">เทอร์มินัล</button>
</div>
<div class="pg-stats">
<div class="pg-stat pg-big"><span class="pg-lbl">ค่ามัธยฐาน</span><span class="pg-val" id="pg-median">--</span><span class="pg-unit">ms</span></div>
<div class="pg-stat"><span class="pg-lbl">ต่ำสุด / สูงสุด</span><span class="pg-val" id="pg-minmax">-- / --</span></div>
<div class="pg-stat"><span class="pg-lbl">ค่าเฉลี่ย</span><span class="pg-val" id="pg-avg">--</span></div>
<div class="pg-stat"><span class="pg-lbl">ส่วนเบี่ยงเบนมาตรฐาน</span><span class="pg-val" id="pg-sd">--</span></div>
<div class="pg-stat"><span class="pg-lbl">จำนวน</span><span class="pg-val" id="pg-count">--</span></div>
<div class="pg-stat"><span class="pg-lbl">โอกาสสำเร็จ</span><span class="pg-val" id="pg-rate">--</span></div>
</div>
<div class="pg-ip">IP ของฉัน ↔ <span id="pg-ip">-- --</span></div>
<div class="pg-legend">
<span><i class="pg-dot pg-c1"></i>&lt;50 <b id="pg-n1">0</b></span>
<span><i class="pg-dot pg-c2"></i>&lt;100 <b id="pg-n2">0</b></span>
<span><i class="pg-dot pg-c3"></i>&lt;300 <b id="pg-n3">0</b></span>
<span><i class="pg-dot pg-c4"></i>≥300 <b id="pg-n4">0</b></span>
<span><i class="pg-dot pg-c5"></i>หมดเวลา <b id="pg-n5">0</b></span>
</div>
<div id="pg-panel-chart" class="pg-panel"><canvas id="pg-canvas" aria-label="แผนภูมิผลทดสอบ ping"></canvas></div>
<div id="pg-panel-term" class="pg-panel" hidden>
<div class="pg-termbar"><span>PING</span><button type="button" class="pg-btn pg-small" id="pg-copy">คัดลอก</button></div>
<pre id="pg-term" class="pg-term"></pre>
</div>
<p class="pg-note" id="pg-status">เปิดแท็บนี้ไว้ขณะประมวลผล — การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</p>
</div>

<style>
.pg-wrap{--pg-c1:#22c55e;--pg-c2:#a3e635;--pg-c3:#f59e0b;--pg-c4:#ef4444;--pg-c5:#9ca3af;--pg-line:rgba(127,127,127,.35);--pg-soft:rgba(127,127,127,.1);max-width:100%;margin:1rem 0;padding:1rem;border:1px solid var(--pg-line);border-radius:12px;box-sizing:border-box}
.pg-wrap *{box-sizing:border-box}
.pg-controls{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center}
.pg-controls select,.pg-controls input{padding:.5rem .6rem;border:1px solid var(--pg-line);border-radius:8px;background:transparent;color:inherit;font:inherit;max-width:100%}
.pg-controls input[hidden]{display:none}
.pg-btn{padding:.5rem 1.2rem;border:0;border-radius:8px;background:#2563eb;color:#fff;font:inherit;font-weight:600;cursor:pointer}
.pg-btn.pg-stop{background:#dc2626}
.pg-btn.pg-small{padding:.2rem .7rem;font-size:.85rem;background:transparent;color:inherit;border:1px solid var(--pg-line)}
.pg-hint{margin:.5rem 0;font-size:.8rem;opacity:.7}
.pg-hint kbd{padding:0 .35rem;border:1px solid var(--pg-line);border-radius:4px;font-size:.75rem}
.pg-tabs{display:flex;gap:.25rem;margin:.5rem 0}
.pg-tab{padding:.35rem .9rem;border:1px solid var(--pg-line);border-radius:999px;background:transparent;color:inherit;font:inherit;font-size:.9rem;cursor:pointer}
.pg-tab.pg-on{background:var(--pg-soft);font-weight:600}
.pg-stats{display:grid;grid-template-columns:repeat(auto-fit,minmax(130px,1fr));gap:.5rem;margin:.5rem 0}
.pg-stat{display:flex;flex-direction:column;padding:.5rem .7rem;background:var(--pg-soft);border-radius:8px;min-width:0}
.pg-lbl{font-size:.75rem;opacity:.7}
.pg-val{font-size:1.2rem;font-weight:700;word-break:break-word}
.pg-big .pg-val{font-size:1.8rem}
.pg-unit{font-size:.75rem;opacity:.7}
.pg-ip{margin:.5rem 0;font-size:.85rem;word-break:break-all}
.pg-legend{display:flex;flex-wrap:wrap;gap:.75rem;margin:.5rem 0;font-size:.8rem}
.pg-dot{display:inline-block;width:.7rem;height:.7rem;margin-right:.3rem;border-radius:50%}
.pg-c1{background:var(--pg-c1)}.pg-c2{background:var(--pg-c2)}.pg-c3{background:var(--pg-c3)}.pg-c4{background:var(--pg-c4)}.pg-c5{background:var(--pg-c5)}
.pg-panel{margin-top:.5rem}
.pg-panel[hidden]{display:none}
#pg-canvas{display:block;width:100%;height:220px;border:1px solid var(--pg-line);border-radius:8px}
.pg-termbar{display:flex;justify-content:space-between;align-items:center;margin-bottom:.35rem;font-size:.8rem;opacity:.85}
.pg-term{height:220px;margin:0;padding:.6rem;overflow:auto;border:1px solid var(--pg-line);border-radius:8px;background:#0b1220;color:#d1fae5;font:12px/1.5 ui-monospace,Menlo,Consolas,monospace;white-space:pre-wrap}
.pg-note{margin:.6rem 0 0;font-size:.8rem;opacity:.75}
</style>

<script>
(function () {
  'use strict';
  var TIMEOUT = 3000, INTERVAL = 1000, MAXBARS = 60;
  var $ = function (id) { return document.getElementById(id); };
  var el = {
    target: $('pg-target'), custom: $('pg-custom'), duration: $('pg-duration'), toggle: $('pg-toggle'),
    tabChart: $('pg-tab-chart'), tabTerm: $('pg-tab-term'), panelChart: $('pg-panel-chart'), panelTerm: $('pg-panel-term'),
    canvas: $('pg-canvas'), term: $('pg-term'), copy: $('pg-copy'), status: $('pg-status'), ip: $('pg-ip'),
    median: $('pg-median'), minmax: $('pg-minmax'), avg: $('pg-avg'), sd: $('pg-sd'), count: $('pg-count'), rate: $('pg-rate')
  };
  var COLORS = ['#22c55e', '#a3e635', '#f59e0b', '#ef4444', '#9ca3af'];
  var IDLE_NOTE = el.status.textContent;
  var samples = [], running = false, runId = 0, startTs = 0, timer = null, ipLoaded = false, activeHost = '';
  function bucket(ms) {
    if (ms === null) { return 4; }
    if (ms < 50) { return 0; }
    if (ms < 100) { return 1; }
    if (ms < 300) { return 2; }
    return 3;
  }
  function fmt(n) { return (Math.round(n * 10) / 10).toString(); }
  function resolveUrl() {
    var v = el.target.value;
    if (v === 'custom') {
      v = (el.custom.value || '').trim();
      if (!v) { return null; }
      if (!/^https?:\/\//i.test(v)) { v = 'https://' + v; }
      if (location.protocol === 'https:') { v = v.replace(/^http:\/\//i, 'https://'); }
      try { new URL(v); } catch (e) { return null; }
    }
    return v;
  }
  function pingOnce(url) {
    return new Promise(function (resolve) {
      var done = false;
      var ctrl = (typeof AbortController !== 'undefined') ? new AbortController() : null;
      var t0 = performance.now();
      var sep = url.indexOf('?') !== -1 ? '&' : '?';
      var finish = function (val) {
        if (done) { return; }
        done = true;
        clearTimeout(to);
        resolve(val);
      };
      var to = setTimeout(function () {
        if (ctrl) { try { ctrl.abort(); } catch (e) {} }
        finish(null);
      }, TIMEOUT);
      var opts = { mode: 'no-cors', cache: 'no-store', credentials: 'omit', referrerPolicy: 'no-referrer' };
      if (ctrl) { opts.signal = ctrl.signal; }
      try {
        fetch(url + sep + '_=' + Date.now() + Math.random().toString(36).slice(2), opts)
          .then(function () { finish(performance.now() - t0); })
          .catch(function () { finish(null); });
      } catch (e) { finish(null); }
    });
  }
  function loadIp() {
    if (ipLoaded) { return; }
    try {
      fetch('https://1.1.1.1/cdn-cgi/trace', { cache: 'no-store' })
        .then(function (r) { return r.text(); })
        .then(function (t) {
          var ip = (t.match(/^ip=(.+)$/m) || [])[1];
          var loc = (t.match(/^loc=(.+)$/m) || [])[1];
          if (ip) { el.ip.textContent = ip + (loc ? ' (' + loc + ')' : ''); ipLoaded = true; }
        })
        .catch(function () {});
    } catch (e) {}
  }
  function median(arr) {
    var s = arr.slice().sort(function (a, b) { return a - b; });
    var m = Math.floor(s.length / 2);
    return s.length % 2 ? s[m] : (s[m - 1] + s[m]) / 2;
  }
  function updateStats() {
    var ok = samples.filter(function (v) { return v !== null; });
    var counts = [0, 0, 0, 0, 0];
    samples.forEach(function (v) { counts[bucket(v)]++; });
    for (var i = 0; i < 5; i++) { $('pg-n' + (i + 1)).textContent = counts[i]; }
    el.count.textContent = samples.length ? samples.length : '--';
    if (!samples.length) { el.rate.textContent = '--'; } else { el.rate.textContent = fmt(ok.length / samples.length * 100) + '%'; }
    if (!ok.length) {
      el.median.textContent = '--'; el.minmax.textContent = '-- / --'; el.avg.textContent = '--'; el.sd.textContent = '--';
      return;
    }
    var sum = ok.reduce(function (a, b) { return a + b; }, 0);
    var mean = sum / ok.length;
    var variance = ok.reduce(function (a, b) { return a + (b - mean) * (b - mean); }, 0) / ok.length;
    el.median.textContent = fmt(median(ok));
    el.minmax.textContent = fmt(Math.min.apply(null, ok)) + ' / ' + fmt(Math.max.apply(null, ok));
    el.avg.textContent = fmt(mean);
    el.sd.textContent = fmt(Math.sqrt(variance));
  }
  function draw() {
    var c = el.canvas, w = c.clientWidth, h = c.clientHeight;
    if (!w || !h) { return; }
    var dpr = window.devicePixelRatio || 1;
    c.width = Math.round(w * dpr); c.height = Math.round(h * dpr);
    var g = c.getContext('2d');
    g.setTransform(dpr, 0, 0, dpr, 0, 0);
    g.clearRect(0, 0, w, h);
    var data = samples.slice(-MAXBARS);
    var max = 100;
    data.forEach(function (v) { if (v !== null && v > max) { max = v; } });
    max = Math.min(Math.ceil(max / 50) * 50, TIMEOUT);
    var L = 40, R = 6, T = 8, B = 8, pw = w - L - R, ph = h - T - B;
    var txt = getComputedStyle(c).color || '#888';
    g.font = '11px sans-serif'; g.textAlign = 'right'; g.textBaseline = 'middle';
    for (var i = 0; i <= 4; i++) {
      var y = T + ph - (ph * i / 4);
      g.strokeStyle = 'rgba(127,127,127,.25)'; g.beginPath(); g.moveTo(L, y); g.lineTo(w - R, y); g.stroke();
      g.fillStyle = txt; g.globalAlpha = 0.7; g.fillText(Math.round(max * i / 4) + '', L - 4, y); g.globalAlpha = 1;
    }
    var bw = pw / MAXBARS;
    data.forEach(function (v, idx) {
      var x = L + idx * bw + 1;
      if (v === null) {
        g.fillStyle = COLORS[4]; g.globalAlpha = 0.45; g.fillRect(x, T, Math.max(bw - 2, 1), ph); g.globalAlpha = 1;
      } else {
        var bh = Math.max(Math.min(v / max, 1) * ph, 2);
        g.fillStyle = COLORS[bucket(v)]; g.fillRect(x, T + ph - bh, Math.max(bw - 2, 1), bh);
      }
    });
  }
  function addLine(text) {
    el.term.textContent += text + '\n';
    el.term.scrollTop = el.term.scrollHeight;
  }
  function record(ms) {
    samples.push(ms);
    var n = samples.length;
    if (ms === null) { addLine('#' + n + '  ' + activeHost + '  request timeout'); }
    else { addLine('#' + n + '  ' + activeHost + '  time=' + fmt(ms) + ' ms'); }
    updateStats();
    draw();
  }
  function setRunningUi(on) {
    el.toggle.textContent = on ? 'หยุด' : 'เริ่ม';
    el.toggle.className = on ? 'pg-btn pg-stop' : 'pg-btn';
  }
  function stop(msg) {
    running = false;
    runId++;
    clearTimeout(timer);
    setRunningUi(false);
    el.status.textContent = msg || IDLE_NOTE;
  }
  function tick(id, dur, url) {
    if (!running || id !== runId) { return; }
    pingOnce(url).then(function (ms) {
      if (!running || id !== runId) { return; }
      record(ms);
      if (dur > 0 && Date.now() - startTs >= dur) { stop('ทดสอบเสร็จสิ้น (' + samples.length + ' ครั้ง)'); return; }
      timer = setTimeout(function () { tick(id, dur, url); }, INTERVAL);
    });
  }
  function start() {
    var url = resolveUrl();
    if (!url) { el.status.textContent = 'กรุณากรอก URL ที่ถูกต้อง เช่น https://example.com'; el.custom.focus(); return; }
    var dur = parseInt(el.duration.value, 10) || 0;
    try { activeHost = new URL(url).hostname; } catch (e) { activeHost = url; }
    samples = []; el.term.textContent = '';
    updateStats(); draw();
    running = true; runId++;
    var id = runId;
    setRunningUi(true);
    el.status.textContent = 'กำลังทดสอบ... เปิดแท็บนี้ไว้จนกว่าจะเสร็จ';
    addLine('PING ' + activeHost);
    loadIp();
    pingOnce(url).then(function () {
      if (!running || id !== runId) { return; }
      startTs = Date.now();
      tick(id, dur, url);
    });
  }
  function showTab(name) {
    var chart = name === 'chart';
    el.panelChart.hidden = !chart;
    el.panelTerm.hidden = chart;
    el.tabChart.className = chart ? 'pg-tab pg-on' : 'pg-tab';
    el.tabTerm.className = chart ? 'pg-tab' : 'pg-tab pg-on';
    if (chart) { draw(); }
  }
  function copyText() {
    var t = el.term.textContent;
    var ok = function () { el.copy.textContent = 'คัดลอกแล้ว'; setTimeout(function () { el.copy.textContent = 'คัดลอก'; }, 1500); };
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(t).then(ok).catch(function () {});
      return;
    }
    var ta = document.createElement('textarea');
    ta.value = t; document.body.appendChild(ta); ta.select();
    try { document.execCommand('copy'); ok(); } catch (e) {}
    document.body.removeChild(ta);
  }
  el.toggle.addEventListener('click', function () { if (running) { stop(); } else { start(); } });
  el.target.addEventListener('change', function () {
    el.custom.hidden = el.target.value !== 'custom';
    if (running) { stop(); }
  });
  el.duration.addEventListener('change', function () { if (running) { stop(); } });
  el.tabChart.addEventListener('click', function () { showTab('chart'); });
  el.tabTerm.addEventListener('click', function () { showTab('term'); });
  el.copy.addEventListener('click', copyText);
  document.addEventListener('keydown', function (e) {
    var tag = (e.target && e.target.tagName) || '';
    if (e.key === 'Enter' && !running && (tag === 'BODY' || tag === 'DIV')) { start(); }
    if ((e.ctrlKey || e.metaKey) && (e.key === 'c' || e.key === 'C') && running) {
      var sel = window.getSelection ? window.getSelection().toString() : '';
      if (!sel) { stop(); }
    }
  });
  window.addEventListener('resize', draw);
  updateStats();
  draw();
})();
</script>

## วิธีใช้งานเครื่องมือทดสอบ ping

1. **เลือกเซิร์ฟเวอร์ปลายทาง** จากรายการ เช่น Cloudflare, Google, Apple หรือ Microsoft หากต้องการทดสอบเว็บไซต์อื่น ให้เลือก "กำหนดเอง (URL)" แล้วกรอกที่อยู่เว็บที่ขึ้นต้นด้วย https://
2. **เลือกระยะเวลา** ที่ต้องการทดสอบ ตั้งแต่ 5 วินาที, 10 วินาที, 1 นาที, 10 นาที หรือ "ไม่จำกัดเวลา" เพื่อทดสอบต่อเนื่องจนกว่าคุณจะกดหยุดเอง
3. **กดปุ่ม "เริ่ม"** (หรือกด `Enter`) เครื่องมือจะส่งคำขอไปยังเซิร์ฟเวอร์ปลายทางทุก 1 วินาทีและวัดเวลาตอบกลับ โดยจะไม่นับครั้งแรกที่ใช้อุ่นการเชื่อมต่อ
4. **ดูผลลัพธ์แบบเรียลไทม์** ในแท็บ "แผนภูมิ" เพื่อดูแท่งสีของแต่ละครั้ง หรือแท็บ "เทอร์มินัล" เพื่อดูบันทึกผลทีละบรรทัด และกด "คัดลอก" เพื่อนำผลไปใช้งานต่อ
5. **กดปุ่ม "หยุด"** (หรือกด `Ctrl`+`C`) เมื่อต้องการจบการทดสอบ แล้วอ่านค่ามัธยฐาน ค่าเฉลี่ย และโอกาสสำเร็จเพื่อประเมินคุณภาพเครือข่าย
6. **เปิดแท็บนี้ค้างไว้ขณะทดสอบ** เพราะการสลับแอปหรือล็อกหน้าจออาจทำให้เบราว์เซอร์หยุดการทำงานชั่วคราว

> หมายเหตุ: เครื่องมือนี้ทำงานบนเบราว์เซอร์ จึงวัดเวลาตอบกลับของคำขอ HTTPS ไม่ใช่แพ็กเก็ต ICMP แบบคำสั่ง `ping` ในเทอร์มินัล ค่าที่ได้จะสูงกว่าเล็กน้อย แต่ใช้เปรียบเทียบความเสถียรของเครือข่ายได้ดี

### เกณฑ์การอ่านค่า ping

| สี | ช่วงเวลา | ความหมาย |
| --- | --- | --- |
| เขียว | น้อยกว่า 50 ms | ดีมาก เหมาะกับเกมออนไลน์และการประชุมวิดีโอ |
| เขียวอ่อน | 50 – 99 ms | ดี ใช้งานทั่วไปได้ลื่นไหล |
| ส้ม | 100 – 299 ms | พอใช้ อาจรู้สึกหน่วงเมื่อเล่นเกมหรือคุยสด |
| แดง | 300 ms ขึ้นไป | แย่ ควรตรวจสอบเครือข่ายหรือผู้ให้บริการ |
| เทา | หมดเวลา | ไม่ได้รับการตอบกลับภายใน 3 วินาที |

## ความหมายของคำศัพท์

- **Ping** คือการส่งสัญญาณไปยังเซิร์ฟเวอร์ปลายทางแล้วรอการตอบกลับ เพื่อตรวจว่าเชื่อมต่อได้หรือไม่ และใช้เวลานานเท่าไร
- **Latency (ความหน่วง)** คือเวลาที่ข้อมูลใช้เดินทางไปและกลับระหว่างอุปกรณ์ของคุณกับเซิร์ฟเวอร์ ยิ่งต่ำยิ่งดี
- **Jitter** คือความแปรปรวนของ latency ในแต่ละครั้ง หากค่าแกว่งมาก การเล่นเกมหรือวิดีโอคอลจะกระตุก
- **ms (มิลลิวินาที)** คือหน่วยของเวลา โดย 1,000 ms เท่ากับ 1 วินาที
- **ค่ามัธยฐาน (Median)** คือค่ากลางของผลทดสอบทั้งหมดเมื่อเรียงจากน้อยไปมาก ไม่ถูกค่าที่สูงผิดปกติเพียงครั้งเดียวดึงให้เพี้ยน จึงสะท้อนความเร็วปกติได้ดี
- **ต่ำสุด / สูงสุด (Min / Max)** คือค่าที่เร็วที่สุดและช้าที่สุดที่วัดได้ ช่วยดูว่าเครือข่ายแกว่งมากแค่ไหน
- **ค่าเฉลี่ย (Average)** คือผลรวมของค่าที่ตอบกลับทั้งหมดหารด้วยจำนวนครั้ง หากสูงกว่ามัธยฐานมาก แสดงว่ามีบางครั้งที่ช้าผิดปกติ
- **ส่วนเบี่ยงเบนมาตรฐาน (Standard Deviation)** คือตัวชี้วัดว่าผลแต่ละครั้งกระจายห่างจากค่าเฉลี่ยเท่าไร ค่ายิ่งต่ำแปลว่าเครือข่ายยิ่งเสถียร
- **จำนวน (Count)** คือจำนวนครั้งที่ทดสอบไปแล้ว ยิ่งมากผลยิ่งน่าเชื่อถือ
- **โอกาสสำเร็จ (Success Rate)** คือเปอร์เซ็นต์ของคำขอที่ได้รับการตอบกลับ หากต่ำกว่า 100% แสดงว่ามีแพ็กเก็ตสูญหายหรือหมดเวลา
- **หมดเวลา (Timeout)** คือกรณีที่ไม่ได้รับการตอบกลับภายในเวลาที่กำหนด (3 วินาที) มักเกิดจากสัญญาณขาดหาย เครือข่ายหนาแน่น หรือเซิร์ฟเวอร์ไม่ตอบสนอง
- **IP ของฉัน** คือหมายเลขไอพีสาธารณะที่เว็บไซต์ภายนอกมองเห็นจากการเชื่อมต่อของคุณ พร้อมรหัสประเทศในวงเล็บ
- **แผนภูมิ** คือกราฟแท่งแสดงผลล่าสุดสูงสุด 60 ครั้ง สีของแท่งบอกคุณภาพตามเกณฑ์ด้านบน
- **เทอร์มินัล** คือหน้าแสดงบันทึกผลทีละบรรทัดแบบคำสั่งบรรทัดคำสั่ง คัดลอกไปแปะในรายงานปัญหาหรือส่งให้ผู้ให้บริการอินเทอร์เน็ตได้