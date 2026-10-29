---
title: ปลั๊กอินเพจ Facebook แบบลอย ออนไลน์ ฟรี
h1: ปลั๊กอินเพจ Facebook แบบลอย
description: 'สร้างปลั๊กอินเพจ Facebook แบบลอยติดขอบเว็บไซต์หรือบล็อก แค่วางลิงก์เพจแล้วคัดลอกโค้ดไปใช้ ปรับขนาด สี และข้อความแท็บได้ ใช้งานง่าย ฟรี ไม่ต้องสมัครสมาชิก'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-26T09:00:00+07:00'
weight: 24
tool: true
topic: social
appCategory: SocialNetworkingApplication
keywords:
- ปลั๊กอินเพจ Facebook แบบลอย
- ปลั๊กอินเพจ Facebook แบบลอย ออนไลน์
- โซเชียลมีเดีย
---

ติดแท็บ Facebook ไว้ที่ขอบหน้าเว็บ เมื่อผู้เข้าชมคลิกหรือแตะที่แท็บ การ์ดของเพจคุณจะเปิดขึ้นทันที เพียงวางที่อยู่เพจ Facebook แล้วคัดลอกโค้ดไปวางในเว็บไซต์หรือบล็อกของคุณ

<div class="ffb-tool" id="ffb-tool">
<label for="ffb-url">ที่อยู่เพจ Facebook ของคุณ</label>
<input id="ffb-url" type="text" inputmode="url" autocomplete="off" spellcheck="false" placeholder="https://www.facebook.com/yourpage">
<p id="ffb-msg" class="ffb-msg" role="status" aria-live="polite"></p>
<div class="ffb-row">
<div class="ffb-field"><label for="ffb-size">ขนาด</label><select id="ffb-size"><option value="std">มาตรฐาน</option><option value="compact">กะทัดรัด</option></select></div>
<div class="ffb-field"><label for="ffb-color">แท็บ</label><select id="ffb-color"><option value="blue">น้ำเงิน</option><option value="dark">เข้ม</option></select></div>
<div class="ffb-field"><label for="ffb-label">ข้อความแท็บ</label><input id="ffb-label" type="text" maxlength="12" value="Facebook" autocomplete="off"></div>
</div>
<label for="ffb-code">โค้ดสำหรับเว็บไซต์ของคุณ</label>
<textarea id="ffb-code" rows="7" readonly spellcheck="false" placeholder="วางที่อยู่เพจ Facebook ด้านบน แล้วโค้ดจะแสดงที่นี่"></textarea>
<button id="ffb-copy" type="button" disabled>คัดลอก</button>
</div>

<style>
.ffb-tool{max-width:720px;margin:1.5rem 0}
.ffb-tool label{display:block;margin:0 0 .35rem;font-weight:600}
.ffb-tool input,.ffb-tool select,.ffb-tool textarea{box-sizing:border-box;width:100%;padding:.6rem .7rem;font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.55);border-radius:6px}
.ffb-tool textarea{font-family:ui-monospace,Menlo,Consolas,monospace;font-size:.85rem;line-height:1.4;resize:vertical}
.ffb-tool input:focus-visible,.ffb-tool select:focus-visible,.ffb-tool textarea:focus-visible,.ffb-tool button:focus-visible{outline:3px solid #1877f2;outline-offset:2px}
.ffb-msg{min-height:1.5em;margin:.5rem 0 1rem;font-size:.95rem}
.ffb-msg.ffb-ok{color:#1a7f37}
.ffb-msg.ffb-err{color:#c62828}
.ffb-row{display:flex;flex-wrap:wrap;gap:1rem;margin-bottom:1rem}
.ffb-field{flex:1 1 150px;min-width:0}
.ffb-tool button{margin-top:.6rem;padding:.6rem 1.4rem;font:inherit;font-weight:600;color:#fff;background:#1877f2;border:0;border-radius:6px;cursor:pointer}
.ffb-tool button:disabled{opacity:.45;cursor:not-allowed}
</style>

<script>
(function () {
  function fbFloatInit(c) {
    if (document.getElementById('ffb-float')) { return; }
    if (typeof c.href !== 'string' || c.href.indexOf('https://www.facebook.com/') !== 0) { return; }
    var pal = { blue: '#1877f2', dark: '#1c1e21' };
    var bg = pal[c.color] || pal.blue;
    var w = c.size === 'compact' ? 280 : 340;
    var h = c.size === 'compact' ? 360 : 500;
    var hov = !!(window.matchMedia && window.matchMedia('(hover: hover)').matches);
    function go() {
      var st = document.createElement('style');
      st.id = 'ffb-float-css';
      st.textContent = '#ffb-float{position:fixed;top:50%;right:0;z-index:2147483000;display:flex;align-items:center;transform:translateY(-50%);font-family:system-ui,sans-serif}'
        + '#ffb-float .ffb-panel{display:none;flex-direction:column;width:' + w + 'px;max-width:calc(100vw - 52px);height:' + h + 'px;max-height:80vh;background:#fff;border-radius:8px 0 0 8px;box-shadow:0 4px 20px rgba(0,0,0,.3);overflow:hidden}'
        + '#ffb-float.ffb-open .ffb-panel{display:flex}'
        + '#ffb-float .ffb-panel iframe{flex:1;width:100%;border:0}'
        + '#ffb-float .ffb-panel a{display:block;padding:8px;text-align:center;font-size:13px;color:#1877f2;text-decoration:none;border-top:1px solid #ddd}'
        + '#ffb-float .ffb-tab{writing-mode:vertical-rl;padding:14px 9px;border:0;border-radius:8px 0 0 8px;background:' + bg + ';color:#fff;font:600 15px system-ui,sans-serif;letter-spacing:1px;cursor:pointer;box-shadow:0 2px 10px rgba(0,0,0,.3)}'
        + '#ffb-float .ffb-tab:focus-visible{outline:3px solid #ffbf47;outline-offset:2px}';
      document.head.appendChild(st);
      var box = document.createElement('div');
      box.id = 'ffb-float';
      var panel = document.createElement('div');
      panel.className = 'ffb-panel';
      var link = document.createElement('a');
      link.href = c.href;
      link.target = '_blank';
      link.rel = 'noopener';
      link.textContent = 'เปิดใน Facebook';
      panel.appendChild(link);
      var tab = document.createElement('button');
      tab.type = 'button';
      tab.className = 'ffb-tab';
      tab.textContent = c.label || 'Facebook';
      tab.setAttribute('aria-expanded', 'false');
      var frame = null;
      function setOpen(on) {
        if (on) { box.classList.add('ffb-open'); } else { box.classList.remove('ffb-open'); }
        tab.setAttribute('aria-expanded', on ? 'true' : 'false');
        if (on && !frame) {
          frame = document.createElement('iframe');
          frame.title = 'Facebook';
          frame.src = 'https://www.facebook.com/plugins/page.php?href=' + encodeURIComponent(c.href) + '&tabs=timeline&width=' + w + '&height=' + h + '&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true';
          panel.insertBefore(frame, link);
        }
      }
      tab.onclick = function () { setOpen(hov ? true : !box.classList.contains('ffb-open')); };
      if (hov) {
        box.onmouseenter = function () { setOpen(true); };
        box.onmouseleave = function () { setOpen(false); };
      }
      document.addEventListener('keydown', function (e) { if (e.key === 'Escape') { setOpen(false); } });
      document.addEventListener('click', function (e) { if (!box.contains(e.target)) { setOpen(false); } });
      box.appendChild(panel);
      box.appendChild(tab);
      document.body.appendChild(box);
    }
    if (document.body) { go(); } else { document.addEventListener('DOMContentLoaded', go); }
  }

  var $ = function (id) { return document.getElementById(id); };
  var urlEl = $('ffb-url');
  var msgEl = $('ffb-msg');
  var codeEl = $('ffb-code');
  var copyEl = $('ffb-copy');
  if (!urlEl || !msgEl || !codeEl || !copyEl) { return; }

  function parse(raw) {
    var s = String(raw || '').trim();
    if (!s) { return { ok: false, text: '' }; }
    if (!/^https?:\/\//i.test(s)) { s = 'https://' + s; }
    var u;
    try { u = new URL(s); } catch (e) { return { ok: false, text: 'ที่อยู่ไม่ถูกต้อง ตัวอย่าง: https://www.facebook.com/yourpage' }; }
    var host = u.hostname.toLowerCase();
    if (host !== 'facebook.com' && host.slice(-13) !== '.facebook.com') {
      return { ok: false, text: 'นี่ไม่ใช่ที่อยู่ของ Facebook เพิ่มชื่อเพจต่อท้าย facebook.com/' };
    }
    var seg = u.pathname.split('/').filter(function (x) { return x; });
    if (!seg.length) { return { ok: false, text: 'ยังไม่พบชื่อเพจ เพิ่มชื่อเพจต่อท้าย facebook.com/' }; }
    var first = seg[0].toLowerCase();
    if (first === 'groups') { return { ok: false, text: 'นี่คือกลุ่ม แสดงได้เฉพาะเพจเท่านั้น' }; }
    if (first === 'share' || first === 'sharer' || first === 'sharer.php' || first === 'l.php') {
      return { ok: false, text: 'นี่คือลิงก์แชร์ ให้เปิดลิงก์ก่อน แล้วคัดลอกที่อยู่ของเพจ' };
    }
    var postWords = ['posts', 'photos', 'videos', 'reel', 'reels', 'permalink.php', 'story.php', 'watch'];
    var isPost = postWords.indexOf(first) !== -1 || seg.some(function (x) { return postWords.indexOf(x.toLowerCase()) !== -1; });
    if (isPost) { return { ok: false, text: 'นี่คือลิงก์โพสต์ ให้เปิดตัวเพจเอง แล้วคัดลอกที่อยู่ของเพจ' }; }
    var reserved = ['events', 'marketplace', 'gaming', 'login', 'login.php', 'dialog', 'plugins', 'hashtag', 'search', 'help', 'policies', 'settings', 'friends', 'messages', 'notifications'];
    if (reserved.indexOf(first) !== -1) { return { ok: false, text: 'ลิงก์นี้ไม่ใช่ที่อยู่ของเพจ Facebook' }; }
    var path;
    if (first === 'profile.php') {
      var id = u.searchParams.get('id') || '';
      if (!/^\d+$/.test(id)) { return { ok: false, text: 'ไม่พบรหัสเพจในที่อยู่นี้' }; }
      path = 'profile.php?id=' + id;
    } else if (first === 'pages' && seg.length >= 3) {
      path = seg.slice(0, 3).join('/');
    } else {
      path = seg[0];
    }
    return { ok: true, href: 'https://www.facebook.com/' + path, text: 'เรียบร้อย: ตอนนี้แท็บที่ขอบหน้าจะเปิดเพจของคุณแล้ว' };
  }

  function makeCode(cfg) {
    var fn = fbFloatInit.toString().replace(/\s*\n\s*/g, ' ');
    var json = JSON.stringify(cfg).replace(/</g, '\\u003c');
    return '<' + 'script>(' + fn + ')(' + json + ');<' + '/script>';
  }

  function removePreview() {
    var a = document.getElementById('ffb-float');
    var b = document.getElementById('ffb-float-css');
    if (a && a.parentNode) { a.parentNode.removeChild(a); }
    if (b && b.parentNode) { b.parentNode.removeChild(b); }
  }

  function setMsg(text, kind) {
    msgEl.textContent = text;
    msgEl.className = 'ffb-msg' + (kind ? ' ffb-' + kind : '');
  }

  function update() {
    removePreview();
    var r = parse(urlEl.value);
    if (!r.ok) {
      setMsg(r.text, r.text ? 'err' : '');
      codeEl.value = '';
      copyEl.disabled = true;
      return;
    }
    var cfg = {
      href: r.href,
      size: $('ffb-size').value,
      color: $('ffb-color').value,
      label: ($('ffb-label').value || '').trim() || 'Facebook'
    };
    setMsg(r.text, 'ok');
    codeEl.value = makeCode(cfg);
    copyEl.disabled = false;
    fbFloatInit(cfg);
  }

  ['ffb-url', 'ffb-size', 'ffb-color', 'ffb-label'].forEach(function (id) {
    var el = $(id);
    el.addEventListener('input', update);
    el.addEventListener('change', update);
  });

  copyEl.addEventListener('click', function () {
    var done = function () {
      copyEl.textContent = 'คัดลอกแล้ว';
      setTimeout(function () { copyEl.textContent = 'คัดลอก'; }, 2000);
    };
    var fallback = function () {
      codeEl.focus();
      codeEl.select();
      try { document.execCommand('copy'); } catch (e) {}
      done();
    };
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(codeEl.value).then(done, fallback);
    } else {
      fallback();
    }
  });
})();
</script>

## วิธีใช้งาน

1. เปิดเพจ Facebook ของคุณ แล้วคัดลอกที่อยู่ (URL) จากแถบที่อยู่ของเบราว์เซอร์ เช่น `https://www.facebook.com/yourpage`
2. วางลงในช่อง **ที่อยู่เพจ Facebook ของคุณ** ถ้าที่อยู่ถูกต้อง จะขึ้นข้อความ "เรียบร้อย" และแท็บจะปรากฏที่ขอบขวาของหน้านี้
3. เลือก **ขนาด** และสีของ **แท็บ** แล้วพิมพ์ **ข้อความแท็บ** ตามต้องการ (สูงสุด 12 ตัวอักษร)
4. ลองคลิกหรือแตะแท็บที่ขอบหน้านี้เพื่อดูตัวอย่าง ถ้าใช้เมาส์ แค่เลื่อนเมาส์ไปชี้ที่แท็บก็เปิดได้เช่นกัน
5. กดปุ่ม **คัดลอก** ที่ช่องโค้ด
6. นำโค้ดไปวางในเว็บไซต์หรือบล็อกของคุณตามวิธีด้านล่าง แล้วบันทึกและรีเฟรชหน้าเว็บเพื่อตรวจสอบ

## คำอธิบายศัพท์

- **ปลั๊กอินเพจ (Page Plugin)** คือส่วนเสริมที่ Facebook จัดไว้ให้ฝังบนเว็บไซต์อื่น เพื่อแสดงการ์ดของเพจและพาผู้เข้าชมไปที่เพจของคุณ
- **แบบลอย** คือแท็บที่ติดอยู่กับขอบหน้าจอ แม้เลื่อนหน้าเว็บขึ้นลงแท็บก็ยังอยู่ที่เดิม
- **ที่อยู่เพจ Facebook (URL)** คือลิงก์ของเพจที่ขึ้นต้นด้วย `facebook.com/` ตามด้วยชื่อเพจ ใช้ได้เฉพาะเพจ ไม่รองรับกลุ่ม โปรไฟล์ส่วนตัว ลิงก์แชร์ หรือลิงก์โพสต์
- **ขนาด** คือขนาดของการ์ดที่เปิดออกมา **มาตรฐาน** กว้าง 340 พิกเซล สูง 500 พิกเซล เหมาะกับหน้าจอคอมพิวเตอร์ ส่วน **กะทัดรัด** กว้าง 280 พิกเซล สูง 360 พิกเซล เหมาะกับหน้าเว็บที่มีพื้นที่น้อยหรือหน้าจอมือถือ
- **แท็บ** คือปุ่มที่ติดขอบหน้าจอ ให้เลือกสี **น้ำเงิน** (สีของ Facebook) หรือสี **เข้ม** (เกือบดำ) ให้เข้ากับธีมของเว็บไซต์
- **ข้อความแท็บ** คือข้อความสั้น ๆ บนแท็บ เช่น "Facebook" หรือ "ติดตามเรา"
- **การ์ดเพจ** คือกรอบที่เปิดขึ้นเมื่อคลิกหรือแตะแท็บ แสดงข้อมูลของเพจโดย Facebook และมีลิงก์ "เปิดใน Facebook" อยู่ด้านล่าง
- **โค้ดสำหรับเว็บไซต์ (โค้ดฝัง)** คือชุดโค้ด HTML และ JavaScript ที่คัดลอกไปวางในเว็บไซต์ เพื่อให้แท็บแสดงในหน้าเว็บของคุณ โค้ดนี้ทำงานได้เอง ไม่ต้องโหลดไฟล์สคริปต์จากเว็บอื่นเพิ่ม
- **HTML/JavaScript และ Custom HTML** คือชื่อแกดเจ็ตหรือบล็อกของ Blogger และ WordPress ที่รับโค้ดแบบนี้ได้
- **ตัวบล็อกโฆษณา (Ad blocker)** คือส่วนขยายของเบราว์เซอร์ที่ผู้เข้าชมบางคนใช้ ซึ่งอาจบล็อกการ์ด Facebook ทำให้การ์ดว่างเปล่า

## วางโค้ดที่ไหน

### Blogger

1. เปิด [Blogger](https://www.blogger.com/) แล้วเลือกบล็อกของคุณ
2. คลิก **เค้าโครง**
3. ที่แถบด้านข้างหรือส่วนท้าย คลิก **เพิ่มแกดเจ็ต** แล้วเลือก **HTML/JavaScript**
4. วางโค้ดลงในช่อง **เนื้อหา** เว้นช่อง **ชื่อ** ไว้ว่าง แล้วคลิก **บันทึก**

### WordPress

1. ในแดชบอร์ด เปิด **ลักษณะที่ปรากฏ → วิดเจ็ต** ถ้าไม่มีวิดเจ็ต ให้เปิด **ลักษณะที่ปรากฏ → Editor → Patterns → Template Parts → Footer**
2. เพิ่มบล็อก **Custom HTML** แล้ววางโค้ดลงไป
3. คลิก **อัปเดต** หรือ **บันทึก** (บน WordPress.com ต้องใช้แพ็กเกจที่อนุญาตให้ใส่โค้ดเอง ถ้าไม่อนุญาต โค้ดจะถูกลบออก)

### เว็บไซต์อื่น

1. วางโค้ดลงใน HTML ของเว็บไซต์ ตรงไหนก็ได้ภายใน `<body>`
2. วางไว้ในส่วนที่ทุกหน้ามี เช่น ส่วนท้ายเว็บ แท็บจะแสดงในทุกหน้า

## ข้อควรรู้

- แท็บจะอยู่ที่ขอบขวาของหน้า คลิกหรือแตะแล้วการ์ดของเพจจะเปิดขึ้น กดปุ่ม Esc หรือคลิกที่ว่างนอกการ์ดเพื่อปิด
- จะไม่มีอะไรโหลดจาก Facebook จนกว่าผู้เข้าชมจะเปิดแท็บ และบนมือถือ การ์ดจะย่อให้พอดีกับหน้าจอ
- ถ้าผู้เข้าชมใช้ตัวบล็อกโฆษณา การ์ดอาจว่างเปล่า แต่ยังกดลิงก์ "เปิดใน Facebook" ด้านล่างการ์ดได้
- เว็บบล็อกที่ไม่อนุญาตให้วางโค้ดเอง เช่น Pixnet จะแสดงแท็บไม่ได้

หน้านี้ไม่มีส่วนเกี่ยวข้องกับ Facebook Facebook เป็นเครื่องหมายการค้าจดทะเบียนของ Meta Platforms, Inc.