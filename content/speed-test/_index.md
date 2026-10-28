---
title: การทดสอบความเร็วของอินเทอร์เน็ต ออนไลน์ ฟรี
h1: การทดสอบความเร็วของอินเทอร์เน็ต
description: 'ทดสอบความเร็วอินเทอร์เน็ตออนไลน์ฟรี วัดดาวน์โหลด อัปโหลด และค่า ping ในคลิกเดียว รองรับ Wi-Fi 4G 5G ใช้ได้ทั้งมือถือ แท็บเล็ต คอมพิวเตอร์ ไม่ต้องลงทะเบียน'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-28T09:00:00+07:00'
weight: 16
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- การทดสอบความเร็วของอินเทอร์เน็ต
- การทดสอบความเร็วของอินเทอร์เน็ต ออนไลน์
- ทดสอบและวัดค่า
---

<style>
.st-app{--st-line:rgba(128,128,128,.35);--st-soft:rgba(128,128,128,.12);--st-accent:#2563eb;max-width:760px;margin:0 auto 24px;font-family:inherit;color:inherit;box-sizing:border-box}
.st-app *{box-sizing:border-box}
.st-grid{display:grid;grid-template-columns:repeat(2,1fr);gap:12px;margin-bottom:12px}
.st-card{border:1px solid var(--st-line);background:var(--st-soft);border-radius:12px;padding:14px 16px;min-width:0}
.st-card small{display:block;opacity:.75;font-size:.85rem}
.st-card b{display:block;font-size:2rem;line-height:1.2;font-variant-numeric:tabular-nums}
.st-card em{font-style:normal;font-size:.9rem;opacity:.75}
.st-info{display:grid;grid-template-columns:repeat(2,1fr);gap:8px 16px;border:1px solid var(--st-line);border-radius:12px;padding:12px 16px;margin-bottom:12px;font-size:.92rem}
.st-info span{display:block;overflow-wrap:anywhere}
.st-bar{height:8px;border-radius:99px;background:var(--st-soft);overflow:hidden;margin-bottom:8px}
.st-bar i{display:block;height:100%;width:0;background:var(--st-accent);transition:width .2s linear}
.st-status{min-height:1.6em;text-align:center;font-size:.95rem;margin-bottom:10px;opacity:.85}
.st-btn{display:block;width:100%;padding:14px;border:0;border-radius:12px;background:var(--st-accent);color:#fff;font-size:1.1rem;font-weight:600;cursor:pointer;font-family:inherit}
.st-btn:disabled{opacity:.6;cursor:wait}
.st-tabs{display:flex;gap:8px;margin:18px 0 10px}
.st-tab{flex:1;padding:9px;border:1px solid var(--st-line);border-radius:10px;background:transparent;color:inherit;cursor:pointer;font-family:inherit;font-size:.95rem}
.st-tab.on{background:var(--st-accent);border-color:var(--st-accent);color:#fff}
.st-wrap{overflow-x:auto}
.st-table{width:100%;border-collapse:collapse;font-size:.88rem;white-space:nowrap}
.st-table th,.st-table td{padding:7px 8px;border-bottom:1px solid var(--st-line);text-align:left}
.st-clear{margin-top:10px;padding:8px 14px;border:1px solid var(--st-line);border-radius:10px;background:transparent;color:inherit;cursor:pointer;font-family:inherit}
.st-hide{display:none}
@media (max-width:480px){.st-card b{font-size:1.6rem}.st-info{grid-template-columns:1fr}}
</style>

<div class="st-app" id="st-app">
<div class="st-grid">
<div class="st-card"><small>ดาวน์โหลด</small><b id="st-dl">--</b><em>Mbps</em></div>
<div class="st-card"><small>อัปโหลด</small><b id="st-ul">--</b><em>Mbps</em></div>
<div class="st-card"><small>Ping</small><b id="st-ping">--</b><em>ms</em></div>
<div class="st-card"><small>Jitter</small><b id="st-jit">--</b><em>ms</em></div>
</div>
<div class="st-info">
<span>ผู้ให้บริการ (ISP): <strong id="st-isp">--</strong></span>
<span>เซิร์ฟเวอร์: <strong id="st-srv">--</strong></span>
<span>ดาวน์โหลด (MB/s): <strong id="st-dlmb">--</strong></span>
<span>อัปโหลด (MB/s): <strong id="st-ulmb">--</strong></span>
</div>
<div class="st-bar"><i id="st-prog"></i></div>
<div class="st-status" id="st-status" aria-live="polite">กดปุ่มด้านล่าง หรือกด Enter / Space เพื่อเริ่มทดสอบ</div>
<button type="button" class="st-btn" id="st-start">เริ่มทดสอบ</button>
<div class="st-tabs">
<button type="button" class="st-tab on" id="st-tab-r">ผลการทดสอบ</button>
<button type="button" class="st-tab" id="st-tab-h">ประวัติ</button>
</div>
<div id="st-pane-r"><div class="st-wrap"><table class="st-table"><thead><tr><th>ดาวน์โหลด</th><th>อัปโหลด</th><th>Ping</th><th>Jitter</th><th>เวลา</th></tr></thead><tbody id="st-last"><tr><td colspan="5">ยังไม่มีผลการทดสอบ</td></tr></tbody></table></div></div>
<div id="st-pane-h" class="st-hide"><div class="st-wrap"><table class="st-table"><thead><tr><th>ดาวน์โหลด</th><th>อัปโหลด</th><th>Ping</th><th>ISP</th><th>เซิร์ฟเวอร์</th><th>เวลา</th></tr></thead><tbody id="st-hist"></tbody></table></div><button type="button" class="st-clear" id="st-clear">ล้างประวัติ</button></div>
</div>

<script>
(function () {
  var BASE = 'https://speed.cloudflare.com';
  var KEY = 'st_history_v1';
  var MAX_HISTORY = 50;
  var DURATION = 8000;
  var running = false;
  var $ = function (id) { return document.getElementById(id); };
  var el = {
    dl: $('st-dl'), ul: $('st-ul'), ping: $('st-ping'), jit: $('st-jit'),
    isp: $('st-isp'), srv: $('st-srv'), dlmb: $('st-dlmb'), ulmb: $('st-ulmb'),
    prog: $('st-prog'), status: $('st-status'), start: $('st-start'),
    tabR: $('st-tab-r'), tabH: $('st-tab-h'), paneR: $('st-pane-r'), paneH: $('st-pane-h'),
    last: $('st-last'), hist: $('st-hist'), clear: $('st-clear')
  };
  if (!el.start) { return; }
  function setStatus(t) { el.status.textContent = t; }
  function setProg(p) { el.prog.style.width = Math.max(0, Math.min(100, p)) + '%'; }
  function fmt(n) { return n >= 100 ? n.toFixed(0) : n.toFixed(1); }
  function showSpeed(mbps, elMbps, elMb) {
    elMbps.textContent = fmt(mbps);
    elMb.textContent = (mbps / 8).toFixed(2);
  }
  function bust() { return Date.now() + '' + Math.floor(Math.random() * 1e6); }
  function sleep(ms) { return new Promise(function (r) { setTimeout(r, ms); }); }
  function loadMeta() {
    return fetch(BASE + '/meta', { cache: 'no-store' }).then(function (r) { return r.json(); }).then(function (m) {
      var colo = m.colo;
      var place = '';
      if (colo && typeof colo === 'object') { place = (colo.city || '') + (colo.iata ? ' (' + colo.iata + ')' : ''); }
      else if (colo) { place = String(colo); }
      if (!place && m.city) { place = m.city; }
      return { isp: m.asOrganization || '--', server: place || '--' };
    }).catch(function () { return { isp: '--', server: '--' }; });
  }
  function measurePing() {
    var times = [];
    var i = 0;
    function one() {
      var t0 = performance.now();
      return fetch(BASE + '/__down?bytes=0&r=' + bust(), { cache: 'no-store' }).then(function (r) { return r.arrayBuffer(); }).then(function () {
        var d = performance.now() - t0;
        if (i > 0) { times.push(d); }
        i++;
        setProg(i * 2);
        if (11 > i) { return one(); }
      });
    }
    return one().then(function () {
      var sorted = times.slice().sort(function (a, b) { return a - b; });
      var median = sorted[Math.floor(sorted.length / 2)];
      var diff = 0;
      for (var k = 1; times.length > k; k++) { diff += Math.abs(times[k] - times[k - 1]); }
      return { ping: median, jitter: times.length > 1 ? diff / (times.length - 1) : 0 };
    });
  }
  function measureDownload() {
    var STREAMS = 4;
    var total = 0;
    var start = performance.now();
    var stop = false;
    var ctrl = new AbortController();
    var size = 5 * 1024 * 1024;
    var timer = setInterval(function () {
      var s = (performance.now() - start) / 1000;
      if (s > 0.3) { showSpeed(total * 8 / s / 1e6, el.dl, el.dlmb); }
      setProg(20 + Math.min(40, (performance.now() - start) / DURATION * 40));
    }, 200);
    function worker() {
      if (stop) { return Promise.resolve(); }
      var t0 = performance.now();
      return fetch(BASE + '/__down?bytes=' + size + '&r=' + bust(), { cache: 'no-store', signal: ctrl.signal }).then(function (res) {
        var reader = res.body.getReader();
        function pump() {
          return reader.read().then(function (x) {
            if (x.done) { return; }
            total += x.value.length;
            return pump();
          });
        }
        return pump();
      }).then(function () {
        if (2000 > performance.now() - t0 && 50 * 1024 * 1024 > size) { size = Math.min(size * 2, 50 * 1024 * 1024); }
        return worker();
      });
    }
    var ws = [];
    for (var i = 0; STREAMS > i; i++) { ws.push(worker().catch(function () {})); }
    return sleep(DURATION).then(function () {
      stop = true;
      var s = (performance.now() - start) / 1000;
      var mbps = total * 8 / s / 1e6;
      ctrl.abort();
      clearInterval(timer);
      if (!total) { throw new Error('download'); }
      return mbps;
    });
  }
  var blobSrc = null;
  function makeData() {
    if (blobSrc) { return blobSrc; }
    var n = 10 * 1024 * 1024;
    var buf = new Uint8Array(n);
    for (var o = 0; n > o; o += 65536) { crypto.getRandomValues(buf.subarray(o, Math.min(o + 65536, n))); }
    blobSrc = buf;
    return blobSrc;
  }
  function measureUpload() {
    var STREAMS = 3;
    var done = 0;
    var cur = [];
    var start = performance.now();
    var stop = false;
    var xhrs = [];
    var size = 2 * 1024 * 1024;
    var data = makeData();
    function bytes() {
      var t = done;
      for (var i = 0; cur.length > i; i++) { t += cur[i] || 0; }
      return t;
    }
    var timer = setInterval(function () {
      var s = (performance.now() - start) / 1000;
      if (s > 0.3) { showSpeed(bytes() * 8 / s / 1e6, el.ul, el.ulmb); }
      setProg(60 + Math.min(40, (performance.now() - start) / DURATION * 40));
    }, 200);
    function worker(idx) {
      if (stop) { return Promise.resolve(); }
      return new Promise(function (resolve) {
        var t0 = performance.now();
        var xhr = new XMLHttpRequest();
        xhrs.push(xhr);
        cur[idx] = 0;
        xhr.open('POST', BASE + '/__up?r=' + bust());
        xhr.upload.onprogress = function (e) { cur[idx] = e.loaded; };
        xhr.onload = function () {
          done += size;
          cur[idx] = 0;
          if (2000 > performance.now() - t0 && 10 * 1024 * 1024 > size) { size = Math.min(size * 2, 10 * 1024 * 1024); }
          resolve(worker(idx));
        };
        xhr.onerror = function () { resolve(); };
        xhr.onabort = function () { resolve(); };
        xhr.send(new Blob([data.subarray(0, size)]));
      });
    }
    for (var i = 0; STREAMS > i; i++) { worker(i); }
    return sleep(DURATION).then(function () {
      stop = true;
      var s = (performance.now() - start) / 1000;
      var total = bytes();
      clearInterval(timer);
      xhrs.forEach(function (x) { try { x.abort(); } catch (e) {} });
      if (!total) { throw new Error('upload'); }
      return total * 8 / s / 1e6;
    });
  }
  function readHistory() {
    try {
      var v = JSON.parse(localStorage.getItem(KEY) || '[]');
      return Array.isArray(v) ? v : [];
    } catch (e) { return []; }
  }
  function writeHistory(list) {
    try { localStorage.setItem(KEY, JSON.stringify(list.slice(0, MAX_HISTORY))); } catch (e) {}
  }
  function cell(tr, text) {
    var td = document.createElement('td');
    td.textContent = text;
    tr.appendChild(td);
  }
  function renderHistory(list) {
    el.hist.textContent = '';
    if (!list.length) {
      var tr0 = document.createElement('tr');
      var td0 = document.createElement('td');
      td0.colSpan = 6;
      td0.textContent = 'ยังไม่มีประวัติ';
      tr0.appendChild(td0);
      el.hist.appendChild(tr0);
      return;
    }
    list.forEach(function (h) {
      var tr = document.createElement('tr');
      cell(tr, fmt(h.dl) + ' Mbps');
      cell(tr, fmt(h.ul) + ' Mbps');
      cell(tr, Math.round(h.ping) + ' ms');
      cell(tr, h.isp);
      cell(tr, h.srv);
      cell(tr, new Date(h.t).toLocaleString('th-TH'));
      el.hist.appendChild(tr);
    });
  }
  function renderLast(h) {
    el.last.textContent = '';
    var tr = document.createElement('tr');
    cell(tr, fmt(h.dl) + ' Mbps');
    cell(tr, fmt(h.ul) + ' Mbps');
    cell(tr, Math.round(h.ping) + ' ms');
    cell(tr, h.jitter.toFixed(1) + ' ms');
    cell(tr, new Date(h.t).toLocaleTimeString('th-TH'));
    el.last.appendChild(tr);
  }
  function run() {
    if (running) { return; }
    running = true;
    el.start.disabled = true;
    el.start.textContent = 'กำลังทดสอบ...';
    el.dl.textContent = el.ul.textContent = el.ping.textContent = el.jit.textContent = '--';
    el.dlmb.textContent = el.ulmb.textContent = '--';
    setProg(0);
    var result = {};
    setStatus('กำลังตรวจสอบเซิร์ฟเวอร์...');
    loadMeta().then(function (m) {
      result.isp = m.isp;
      result.srv = m.server;
      el.isp.textContent = m.isp;
      el.srv.textContent = m.server;
      setStatus('กำลังวัดค่า Ping...');
      return measurePing();
    }).then(function (p) {
      result.ping = p.ping;
      result.jitter = p.jitter;
      el.ping.textContent = Math.round(p.ping);
      el.jit.textContent = p.jitter.toFixed(1);
      setProg(20);
      setStatus('กำลังทดสอบความเร็วดาวน์โหลด...');
      return measureDownload();
    }).then(function (d) {
      result.dl = d;
      showSpeed(d, el.dl, el.dlmb);
      setProg(60);
      setStatus('กำลังทดสอบความเร็วอัปโหลด...');
      return measureUpload();
    }).then(function (u) {
      result.ul = u;
      showSpeed(u, el.ul, el.ulmb);
      setProg(100);
      result.t = Date.now();
      var list = readHistory();
      list.unshift(result);
      writeHistory(list);
      renderHistory(list.slice(0, MAX_HISTORY));
      renderLast(result);
      setStatus('ทดสอบเสร็จสิ้น');
    }).catch(function () {
      setStatus('ทดสอบไม่สำเร็จ กรุณาตรวจสอบการเชื่อมต่อ ปิด VPN หรือตัวบล็อกโฆษณา แล้วลองใหม่');
    }).then(function () {
      running = false;
      el.start.disabled = false;
      el.start.textContent = 'เริ่มทดสอบอีกครั้ง';
    });
  }
  function tab(which) {
    var r = which === 'r';
    el.paneR.classList.toggle('st-hide', !r);
    el.paneH.classList.toggle('st-hide', r);
    el.tabR.classList.toggle('on', r);
    el.tabH.classList.toggle('on', !r);
  }
  el.start.addEventListener('click', run);
  el.tabR.addEventListener('click', function () { tab('r'); });
  el.tabH.addEventListener('click', function () { tab('h'); });
  el.clear.addEventListener('click', function () { writeHistory([]); renderHistory([]); });
  document.addEventListener('keydown', function (e) {
    var t = e.target && e.target.tagName;
    if (t === 'INPUT' || t === 'TEXTAREA' || t === 'BUTTON' || t === 'A') { return; }
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); run(); }
  });
  renderHistory(readHistory());
})();
</script>

## วิธีใช้งานเครื่องมือทดสอบความเร็วอินเทอร์เน็ต

1. **เตรียมอุปกรณ์** ปิดแอปหรือแท็บที่กำลังดาวน์โหลด สตรีมวิดีโอ หรืออัปเดตซอฟต์แวร์ เพื่อให้ผลลัพธ์ใกล้เคียงความเร็วจริงมากที่สุด
2. **เริ่มทดสอบ** กดปุ่ม "เริ่มทดสอบ" หรือกดปุ่ม Enter / Space บนคอมพิวเตอร์ ไม่ต้องติดตั้งแอปและไม่ต้องตั้งค่าใด ๆ
3. **รอผลลัพธ์** ระบบจะวัดค่า Ping และ Jitter ก่อน จากนั้นทดสอบดาวน์โหลดและอัปโหลดตามลำดับ ใช้เวลาประมาณ 20-30 วินาที
4. **อ่านผลการทดสอบ** ดูตัวเลขดาวน์โหลด อัปโหลด และ Ping ที่แสดงด้านบน พร้อมข้อมูลผู้ให้บริการและเซิร์ฟเวอร์ที่ใช้ทดสอบ
5. **ดูประวัติ** เปิดแท็บ "ประวัติ" เพื่อเปรียบเทียบผลย้อนหลังได้สูงสุด 50 รายการ ข้อมูลถูกเก็บไว้ในเบราว์เซอร์ของคุณเท่านั้น และกด "ล้างประวัติ" ได้ทุกเมื่อ
6. **ทดสอบซ้ำ** ลองทดสอบหลายครั้งในช่วงเวลาต่างกัน เช่น กลางวันและกลางคืน เพื่อดูว่าความเร็วเปลี่ยนไปหรือไม่

**เคล็ดลับ:** ระบบปรับขนาดข้อมูลที่ใช้ทดสอบอัตโนมัติตามความเร็วเครือข่ายของคุณ หากอินเทอร์เน็ตช้าจะใช้ไฟล์ขนาดเล็ก เพื่อประหยัดเวลาและปริมาณข้อมูล

## คำอธิบายศัพท์ที่เกี่ยวข้อง

| คำศัพท์ | ความหมายโดยย่อ |
|---|---|
| **ดาวน์โหลด (Download)** | ความเร็วในการรับข้อมูลจากอินเทอร์เน็ตมายังอุปกรณ์ของคุณ เช่น เปิดเว็บ ดูวิดีโอ โหลดไฟล์ |
| **อัปโหลด (Upload)** | ความเร็วในการส่งข้อมูลจากอุปกรณ์ของคุณขึ้นอินเทอร์เน็ต เช่น ส่งไฟล์ อัปโหลดวิดีโอ วิดีโอคอล |
| **Ping (ระยะเวลาการวัด)** | เวลาที่ข้อมูลใช้เดินทางไปและกลับระหว่างอุปกรณ์กับเซิร์ฟเวอร์ หน่วยเป็นมิลลิวินาที (ms) ยิ่งต่ำยิ่งตอบสนองเร็ว สำคัญกับเกมออนไลน์และวิดีโอคอล |
| **Jitter** | ความผันผวนของค่า Ping ระหว่างการวัดแต่ละครั้ง ค่าสูงทำให้ภาพหรือเสียงสะดุดและเกมกระตุก |
| **Mbps (เมกะบิตต่อวินาที)** | หน่วยวัดความเร็วอินเทอร์เน็ตที่ผู้ให้บริการใช้โฆษณา |
| **MB/s (เมกะไบต์ต่อวินาที)** | หน่วยที่แอปดาวน์โหลดไฟล์มักแสดง 1 MB/s เท่ากับ 8 Mbps |
| **ISP (ผู้ให้บริการอินเทอร์เน็ต)** | บริษัทที่ให้บริการอินเทอร์เน็ตแก่คุณ เช่น AIS, True, NT |
| **เซิร์ฟเวอร์** | เครื่องปลายทางที่ใช้ทดสอบความเร็ว ระยะห่างจากคุณส่งผลต่อค่า Ping |
| **Wi-Fi** | เครือข่ายไร้สายภายในบ้านหรือออฟฟิศ ความเร็วขึ้นกับเราเตอร์ ระยะทาง และสิ่งกีดขวาง |
| **4G / 5G** | เครือข่ายข้อมูลมือถือ 5G เร็วกว่าและหน่วงน้อยกว่า 4G ความเร็วจริงขึ้นกับสัญญาณและจำนวนผู้ใช้ในพื้นที่ |

## การแปลงหน่วยความเร็ว

- 1 Mbps = 0.125 MB/s
- 8 Mbps = 1 MB/s
- 100 Mbps = 12.5 MB/s
- 1 Gbps = 1,000 Mbps

## ความเร็วสูงสุดตามทฤษฎีของแต่ละเครือข่าย

| เครือข่าย | ความเร็วสูงสุดตามทฤษฎี |
|---|---|
| Wi-Fi 802.11n | ประมาณ 250 Mbps |
| Wi-Fi 802.11ac | ประมาณ 200 Mbps (ต่อสตรีม) |
| 3.5G | 52 Mbps |
| 4G LTE | 100 Mbps |
| 4.5G LTE-A | 800 Mbps |
| 5G | 10 Gbps (10,000 Mbps) |

ความเร็วจริงมักต่ำกว่าค่าทางทฤษฎี เพราะขึ้นกับสัญญาณ อุปกรณ์ และจำนวนผู้ใช้งานพร้อมกัน

## ความเร็วที่แนะนำสำหรับการสตรีมวิดีโอ

| บริการ | ความละเอียด / ความเร็วขั้นต่ำที่แนะนำ |
|---|---|
| Apple TV | SD 2.5 Mbps / 720p 6 Mbps / 1080p 8 Mbps / 4K 25 Mbps |
| YouTube | 480p 1.1 Mbps / 720p 1.5 Mbps / 1080p 5 Mbps / 4K 20 Mbps |
| Netflix | SD 3 Mbps / HD 5 Mbps / Ultra HD 26 Mbps |

## หากผลการทดสอบช้ากว่าที่คาด

- รีสตาร์ตเราเตอร์และอุปกรณ์ แล้วทดสอบใหม่
- ย้ายเข้าใกล้เราเตอร์ หรือเชื่อมต่อด้วยสาย LAN เพื่อเทียบผล
- ปิด VPN และตัวบล็อกโฆษณาชั่วคราว เพราะอาจรบกวนการทดสอบ
- หากความเร็วต่ำกว่าแพ็กเกจที่สมัครอย่างต่อเนื่อง โปรดติดต่อผู้ให้บริการอินเทอร์เน็ต (ISP)

*เครื่องมือนี้ให้บริการ "ตามสภาพ" โดยไม่มีการรับประกันใด ๆ ผลลัพธ์อาจแตกต่างกันตามอุปกรณ์ เบราว์เซอร์ และช่วงเวลา โปรดใช้งานตามกฎหมายท้องถิ่น*