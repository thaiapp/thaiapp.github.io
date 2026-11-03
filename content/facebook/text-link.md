---
title: ลิงค์ข้อความใน facebook ออนไลน์ ฟรี
h1: ลิงค์ข้อความใน facebook
description: ลิงค์ข้อความใน facebook สำหรับโซเชียลมีเดีย ใช้งานง่าย รองรับการใช้งานบนคอมพิวเตอร์ ชัดเจน ตรวจสอบแล้ว ใช้ฟรี ไม่ต้องสมัครสมาชิก คัดลอกไปวางโพสต์ได้ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T09:00:00+07:00'
weight: 57
tool: true
topic: social
appCategory: SocialNetworkingApplication
keywords:
- ลิงค์ข้อความใน facebook
- ลิงค์ข้อความใน facebook ออนไลน์
- โซเชียลมีเดีย
---

<div class="tl-app" id="tl-app">
<style>
.tl-app{--tl-bg:#fff;--tl-fg:#1c1e21;--tl-muted:#65676b;--tl-line:#d8dadf;--tl-accent:#1877f2;--tl-soft:#f0f2f5;max-width:640px;margin:16px 0;color:var(--tl-fg);font:inherit}
@media (prefers-color-scheme:dark){.tl-app{--tl-bg:#242526;--tl-fg:#e4e6eb;--tl-muted:#b0b3b8;--tl-line:#3e4042;--tl-accent:#4599ff;--tl-soft:#3a3b3c}}
.tl-app *{box-sizing:border-box}
.tl-card{background:var(--tl-bg);border:1px solid var(--tl-line);border-radius:12px;padding:16px}
.tl-row{margin-bottom:14px}
.tl-label{display:block;font-weight:600;margin-bottom:6px}
.tl-input{width:100%;padding:10px 12px;border:1px solid var(--tl-line);border-radius:8px;background:var(--tl-bg);color:var(--tl-fg);font:inherit}
.tl-input:focus{outline:2px solid var(--tl-accent);outline-offset:1px}
.tl-fmt{display:flex;gap:8px}
.tl-fbtn{width:40px;height:40px;border:1px solid var(--tl-line);border-radius:8px;background:var(--tl-soft);color:var(--tl-fg);font-size:16px;cursor:pointer}
.tl-fbtn[aria-pressed="true"]{background:var(--tl-accent);border-color:var(--tl-accent);color:#fff}
.tl-preview{min-height:44px;padding:10px 12px;border:1px dashed var(--tl-line);border-radius:8px;background:var(--tl-soft);word-break:break-word}
.tl-preview a{color:var(--tl-accent)}
.tl-muted{color:var(--tl-muted)}
.tl-actions{display:flex;flex-wrap:wrap;align-items:center;gap:10px}
.tl-btn{padding:10px 18px;border:0;border-radius:8px;background:var(--tl-accent);color:#fff;font:inherit;font-weight:600;cursor:pointer}
.tl-btn:disabled{opacity:.5;cursor:not-allowed}
.tl-btn2{padding:6px 12px;border:1px solid var(--tl-line);border-radius:8px;background:var(--tl-soft);color:var(--tl-fg);font:inherit;cursor:pointer}
.tl-status{min-height:1.4em;font-size:14px}
.tl-hist{list-style:none;margin:0;padding:0}
.tl-hitem{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;gap:8px;padding:8px 0;border-bottom:1px solid var(--tl-line)}
.tl-hitem:last-child{border-bottom:0}
.tl-htext{flex:1 1 200px;min-width:0;word-break:break-all}
.tl-hurl{display:block;font-size:13px;color:var(--tl-muted)}
.tl-hbtns{display:flex;gap:6px}
</style>
<div class="tl-card">
<div class="tl-row">
<label class="tl-label" for="tl-text">ข้อความที่จะแสดง:</label>
<input class="tl-input" id="tl-text" type="text" placeholder="เช่น คลิกที่นี่เพื่ออ่านต่อ" autocomplete="off">
</div>
<div class="tl-row">
<label class="tl-label" for="tl-url">URL:</label>
<input class="tl-input" id="tl-url" type="url" placeholder="https://example.com" autocomplete="off">
</div>
<div class="tl-row">
<span class="tl-label" id="tl-fmt-label">รูปแบบ:</span>
<div class="tl-fmt" role="group" aria-labelledby="tl-fmt-label">
<button type="button" class="tl-fbtn" data-f="b" aria-pressed="false" title="ตัวหนา"><b>B</b></button>
<button type="button" class="tl-fbtn" data-f="i" aria-pressed="false" title="ตัวเอียง"><i>I</i></button>
<button type="button" class="tl-fbtn" data-f="u" aria-pressed="false" title="ขีดเส้นใต้"><u>U</u></button>
<button type="button" class="tl-fbtn" data-f="s" aria-pressed="false" title="ขีดทับ"><s>S</s></button>
</div>
</div>
<div class="tl-row">
<span class="tl-label">แสดงตัวอย่าง:</span>
<div class="tl-preview" id="tl-preview" aria-live="polite"><span class="tl-muted">ตัวอย่างลิงก์จะแสดงที่นี่</span></div>
</div>
<div class="tl-row tl-actions">
<button type="button" class="tl-btn" id="tl-copy" disabled>คัดลอก</button>
<span class="tl-status" id="tl-status" role="status" aria-live="polite"></span>
</div>
<div>
<span class="tl-label">ประวัติ:</span>
<ul class="tl-hist" id="tl-hist"></ul>
<p class="tl-muted" id="tl-empty" style="margin:0">ยังไม่มีประวัติ</p>
</div>
</div>
<script>
(function () {
  try {
    var KEY = 'tlFbTextLinkHistory';
    var MAX = 20;
    var fmt = { b: false, i: false, u: false, s: false };
    var tEl = document.getElementById('tl-text');
    var uEl = document.getElementById('tl-url');
    var pEl = document.getElementById('tl-preview');
    var cBtn = document.getElementById('tl-copy');
    var sEl = document.getElementById('tl-status');
    var hEl = document.getElementById('tl-hist');
    var eEl = document.getElementById('tl-empty');
    var timer = null;
    function say(msg) {
      sEl.textContent = msg;
      clearTimeout(timer);
      timer = setTimeout(function () { sEl.textContent = ''; }, 3500);
    }
    function normUrl(v) {
      v = (v || '').trim();
      if (!v) return '';
      if (!/^[a-z][a-z0-9+.-]*:/i.test(v)) v = 'https://' + v;
      try {
        var u = new URL(v);
        if (u.protocol !== 'http:' && u.protocol !== 'https:') return '';
        return u.href;
      } catch (e) { return ''; }
    }
    function makeLink(text, url, f) {
      var a = document.createElement('a');
      a.href = url;
      a.target = '_blank';
      a.rel = 'noopener noreferrer';
      a.textContent = text;
      var node = a;
      var tags = [['b', 'strong'], ['i', 'em'], ['u', 'u'], ['s', 's']];
      for (var k = 0; k < tags.length; k++) {
        if (f[tags[k][0]]) {
          var w = document.createElement(tags[k][1]);
          w.appendChild(node);
          node = w;
        }
      }
      return node;
    }
    function current() {
      return { t: tEl.value.trim(), u: normUrl(uEl.value), f: { b: fmt.b, i: fmt.i, u: fmt.u, s: fmt.s } };
    }
    function renderPreview() {
      var c = current();
      pEl.textContent = '';
      if (!c.t || !c.u) {
        var m = document.createElement('span');
        m.className = 'tl-muted';
        m.textContent = 'ตัวอย่างลิงก์จะแสดงที่นี่';
        pEl.appendChild(m);
        cBtn.disabled = true;
        return;
      }
      pEl.appendChild(makeLink(c.t, c.u, c.f));
      cBtn.disabled = false;
    }
    function loadHist() {
      try {
        var raw = localStorage.getItem(KEY);
        var arr = raw ? JSON.parse(raw) : [];
        return Array.isArray(arr) ? arr : [];
      } catch (e) { return []; }
    }
    function saveHist(arr) {
      try { localStorage.setItem(KEY, JSON.stringify(arr)); } catch (e) {}
    }
    function renderHist() {
      var arr = loadHist();
      hEl.textContent = '';
      eEl.style.display = arr.length ? 'none' : 'block';
      arr.forEach(function (item, idx) {
        var li = document.createElement('li');
        li.className = 'tl-hitem';
        var box = document.createElement('div');
        box.className = 'tl-htext';
        box.appendChild(makeLink(item.t, item.u, item.f || {}));
        var sub = document.createElement('span');
        sub.className = 'tl-hurl';
        sub.textContent = item.u;
        box.appendChild(sub);
        var btns = document.createElement('div');
        btns.className = 'tl-hbtns';
        [['คัดลอก', 'copy'], ['แก้ไข', 'edit'], ['ลบ', 'del']].forEach(function (d) {
          var b = document.createElement('button');
          b.type = 'button';
          b.className = 'tl-btn2';
          b.textContent = d[0];
          b.addEventListener('click', function () { onHist(d[1], idx); });
          btns.appendChild(b);
        });
        li.appendChild(box);
        li.appendChild(btns);
        hEl.appendChild(li);
      });
    }
    function addHist(c) {
      var arr = loadHist().filter(function (x) { return !(x.t === c.t && x.u === c.u && JSON.stringify(x.f) === JSON.stringify(c.f)); });
      arr.unshift(c);
      saveHist(arr.slice(0, MAX));
      renderHist();
    }
    function fallbackCopy(node, plain) {
      var holder = document.createElement('div');
      holder.style.position = 'fixed';
      holder.style.left = '-9999px';
      holder.style.top = '0';
      holder.appendChild(node);
      document.body.appendChild(holder);
      var ok = false;
      try {
        var range = document.createRange();
        range.selectNodeContents(holder);
        var sel = window.getSelection();
        sel.removeAllRanges();
        sel.addRange(range);
        ok = document.execCommand('copy');
        sel.removeAllRanges();
      } catch (e) { ok = false; }
      document.body.removeChild(holder);
      return ok;
    }
    function doCopy(c, record) {
      if (!c.t || !c.u) { say('กรุณากรอกข้อความและ URL ให้ถูกต้อง'); return; }
      var node = makeLink(c.t, c.u, c.f);
      var html = node.outerHTML;
      var plain = c.t + ' ' + c.u;
      function done() { if (record) addHist(c); say('คัดลอกแล้ว นำไปวางในโพสต์ Facebook ได้เลย'); }
      function fail() { say('คัดลอกไม่สำเร็จ กรุณาลองอีกครั้ง'); }
      function legacy() {
        if (fallbackCopy(makeLink(c.t, c.u, c.f), plain)) done(); else fail();
      }
      try {
        if (navigator.clipboard && window.ClipboardItem) {
          var data = {};
          data['text/html'] = new Blob([html], { type: 'text/html' });
          data['text/plain'] = new Blob([plain], { type: 'text/plain' });
          navigator.clipboard.write([new ClipboardItem(data)]).then(done, legacy);
        } else {
          legacy();
        }
      } catch (e) { legacy(); }
    }
    function onHist(action, idx) {
      var arr = loadHist();
      var item = arr[idx];
      if (!item) return;
      if (action === 'copy') {
        doCopy({ t: item.t, u: item.u, f: item.f || {} }, false);
      } else if (action === 'edit') {
        tEl.value = item.t;
        uEl.value = item.u;
        ['b', 'i', 'u', 's'].forEach(function (k) {
          fmt[k] = !!(item.f && item.f[k]);
          var btn = document.querySelector('#tl-app .tl-fbtn[data-f="' + k + '"]');
          if (btn) btn.setAttribute('aria-pressed', fmt[k] ? 'true' : 'false');
        });
        renderPreview();
        tEl.focus();
      } else if (action === 'del') {
        arr.splice(idx, 1);
        saveHist(arr);
        renderHist();
      }
    }
    var fbtns = document.querySelectorAll('#tl-app .tl-fbtn');
    Array.prototype.forEach.call(fbtns, function (btn) {
      btn.addEventListener('click', function () {
        var k = btn.getAttribute('data-f');
        fmt[k] = !fmt[k];
        btn.setAttribute('aria-pressed', fmt[k] ? 'true' : 'false');
        renderPreview();
      });
    });
    tEl.addEventListener('input', renderPreview);
    uEl.addEventListener('input', renderPreview);
    cBtn.addEventListener('click', function () { doCopy(current(), true); });
    renderPreview();
    renderHist();
  } catch (err) {
    if (window.console) console.error(err);
  }
})();
</script>
</div>

## วิธีใช้งานเครื่องมือลิงค์ข้อความใน facebook

1. กรอก **ข้อความที่จะแสดง** คือคำหรือประโยคที่ต้องการให้คนอื่นเห็นและกดได้ เช่น "อ่านบทความฉบับเต็ม"
2. วาง **URL** ปลายทางที่ต้องการให้ลิงก์พาไป หากไม่ได้พิมพ์ https:// เครื่องมือจะเติมให้อัตโนมัติ
3. เลือก **รูปแบบ** ตามต้องการ ได้แก่ ตัวหนา (B) ตัวเอียง (I) ขีดเส้นใต้ (U) และขีดทับ (S) กดซ้ำเพื่อยกเลิก
4. ตรวจดูผลลัพธ์ในช่อง **แสดงตัวอย่าง** ว่าข้อความและลิงก์ถูกต้องหรือไม่
5. กดปุ่ม **คัดลอก** แล้วไปที่ Facebook จากนั้นวางลงในช่องโพสต์ด้วย Ctrl+V (Windows) หรือ Cmd+V (Mac)
6. หากวางแล้วลิงก์ไม่แสดงตามที่ต้องการ ให้ลองกดคัดลอกและวางอีกครั้ง

ข้อควรรู้

- ควรใช้งานบนเวอร์ชันคอมพิวเตอร์ เพราะเครื่องมือนี้ออกแบบมาสำหรับเดสก์ท็อป
- ลิงก์ที่ได้อาจแสดงผลเป็นลิงก์ได้เฉพาะบางตำแหน่งบน Facebook ควรทดสอบโพสต์ก่อนใช้งานจริง
- ประวัติเก็บได้สูงสุด 20 รายการ และเก็บไว้ในเบราว์เซอร์ของคุณเท่านั้น

## คำอธิบายศัพท์ในเครื่องมือ

| คำศัพท์ | คำอธิบายสั้น ๆ |
|---|---|
| ข้อความที่จะแสดง | ข้อความที่ปรากฏให้ผู้อ่านเห็นและคลิกได้ แทนการแสดง URL ยาว ๆ |
| URL | ที่อยู่เว็บไซต์ปลายทางที่จะเปิดเมื่อมีคนคลิกข้อความ |
| รูปแบบ | ตัวเลือกปรับหน้าตาของข้อความลิงก์ |
| B (ตัวหนา) | ทำให้ข้อความหนาและเด่นขึ้น |
| I (ตัวเอียง) | ทำให้ข้อความเอียงเพื่อเน้นหรือแยกจากข้อความอื่น |
| U (ขีดเส้นใต้) | เพิ่มเส้นใต้ข้อความ |
| S (ขีดทับ) | ขีดเส้นทับกลางข้อความ |
| แสดงตัวอย่าง | พื้นที่แสดงหน้าตาลิงก์ก่อนคัดลอก ใช้ตรวจความถูกต้อง |
| คัดลอก | คัดลอกลิงก์พร้อมรูปแบบไปยังคลิปบอร์ดเพื่อวางใน Facebook |
| ประวัติ | รายการลิงก์ที่เคยคัดลอก (สูงสุด 20 รายการ) |
| แก้ไข | นำลิงก์จากประวัติกลับมาแก้ในช่องกรอกข้อมูล |
| ลบ | ลบลิงก์ออกจากประวัติ |