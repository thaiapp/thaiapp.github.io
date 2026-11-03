---
title: ID Facebook ของฉันคืออะไร? User ID / Page ID ฟรี
h1: ID Facebook ของฉันคืออะไร? User ID / Page ID
description: ID Facebook ของฉันคืออะไร? ค้นหา User ID, Page ID และ Group ID ได้ง่ายๆ พร้อมสร้างเมตาแท็ก fb:admins ใช้ได้ทั้งมือถือและคอมพิวเตอร์ ฟรี ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T09:18:00+07:00'
weight: 60
tool: true
topic: social
appCategory: SocialNetworkingApplication
keywords:
- ID Facebook ของฉันคืออะไร? User ID / Page ID
- ID Facebook ของฉันคืออะไร? User ID / Page ID ออนไลน์
- โซเชียลมีเดีย
---

รองรับทั้งโปรไฟล์ส่วนตัว เพจ และกลุ่ม Facebook

<style>
.fbid-box{max-width:720px;margin:16px 0;padding:16px;border:1px solid rgba(128,128,128,.35);border-radius:10px;box-sizing:border-box}
.fbid-box *{box-sizing:border-box}
.fbid-box [hidden]{display:none !important}
.fbid-label{display:block;margin:0 0 6px;font-weight:600}
.fbid-field{display:block;width:100%;padding:10px 12px;font-size:16px;font-family:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5);border-radius:8px}
.fbid-field:focus{outline:2px solid #1877f2;outline-offset:1px}
.fbid-row{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:10px 0}
.fbid-row .fbid-field{flex:1 1 220px;width:auto}
.fbid-btn{padding:10px 16px;font-size:16px;font-family:inherit;color:#fff;background:#1877f2;border:0;border-radius:8px;cursor:pointer}
.fbid-btn:hover{background:#0f63d0}
.fbid-btn.fbid-ghost{color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5)}
.fbid-btn.fbid-ghost:hover{background:rgba(128,128,128,.15)}
.fbid-link{font-size:15px}
.fbid-step{margin:16px 0 0}
.fbid-note{margin:6px 0 0;font-size:14px;opacity:.8}
.fbid-msg{min-height:1.4em;margin:10px 0 0;font-size:15px}
.fbid-msg.fbid-err{color:#d93025}
.fbid-msg.fbid-ok{color:#188038}
.fbid-table{width:100%;margin:12px 0 0;border-collapse:collapse}
.fbid-table th,.fbid-table td{padding:10px;text-align:left;vertical-align:middle;border:1px solid rgba(128,128,128,.35)}
.fbid-table th{width:32%;font-weight:600}
.fbid-val{word-break:break-all;font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:15px}
.fbid-val-row{display:flex;flex-wrap:wrap;gap:8px;align-items:center}
.fbid-val-row .fbid-val{flex:1 1 200px}
.fbid-val-row .fbid-btn{padding:6px 12px;font-size:14px}
</style>
<div class="fbid-box" id="fbid-app">
<label class="fbid-label" for="fbid-url">ใส่ URL โปรไฟล์ เพจ หรือกลุ่ม Facebook</label>
<input class="fbid-field" type="text" id="fbid-url" placeholder="https://www.facebook.com/username" autocomplete="off" autocapitalize="off" spellcheck="false">
<div class="fbid-row">
<button type="button" class="fbid-btn" id="fbid-make">ค้นหา ID</button>
<button type="button" class="fbid-btn fbid-ghost" id="fbid-reset">รีเซ็ต</button>
<a class="fbid-link" href="https://www.facebook.com/me" target="_blank" rel="noopener noreferrer">เปิด facebook.com/me เพื่อรับ URL โปรไฟล์ของคุณ</a>
</div>
<div class="fbid-step" id="fbid-step2" hidden>
<div class="fbid-label">คัดลอกลิงก์ซอร์สโค้ด แล้ววางในแท็บใหม่</div>
<div class="fbid-row">
<input class="fbid-field" type="text" id="fbid-vs" readonly>
<button type="button" class="fbid-btn fbid-ghost" id="fbid-copy-vs">คัดลอก</button>
</div>
<p class="fbid-note">เปิดแท็บใหม่ วางลิงก์ในแถบที่อยู่แล้วกด Enter จากนั้นกด Ctrl+A และ Ctrl+C (Mac: Cmd+A และ Cmd+C) เพื่อคัดลอกซอร์สโค้ดทั้งหน้า</p>
</div>
<div class="fbid-step">
<label class="fbid-label" for="fbid-src">วางซอร์สโค้ด HTML ที่นี่</label>
<textarea class="fbid-field" id="fbid-src" rows="5" placeholder="วางซอร์สโค้ดของหน้า Facebook ที่คัดลอกมา ระบบจะค้นหา ID ให้อัตโนมัติ" spellcheck="false"></textarea>
</div>
<div class="fbid-msg" id="fbid-msg" role="status" aria-live="polite"></div>
<table class="fbid-table" id="fbid-result" hidden>
<tbody>
<tr><th scope="row">Facebook ID</th><td><div class="fbid-val-row"><span class="fbid-val" id="fbid-id"></span><button type="button" class="fbid-btn fbid-ghost" id="fbid-copy-id">คัดลอก</button></div></td></tr>
<tr><th scope="row">ประเภท</th><td id="fbid-type"></td></tr>
<tr><th scope="row">Meta Tag</th><td><div class="fbid-val-row"><span class="fbid-val" id="fbid-meta"></span><button type="button" class="fbid-btn fbid-ghost" id="fbid-copy-meta">คัดลอก</button></div></td></tr>
<tr id="fbid-alt-row" hidden><th scope="row">ID อื่นที่พบ</th><td class="fbid-val" id="fbid-alt"></td></tr>
</tbody>
</table>
</div>

<script>
(function () {
  'use strict';
  var LT = String.fromCharCode(60);
  var GT = String.fromCharCode(62);
  function $(id) { return document.getElementById(id); }
  var urlIn = $('fbid-url');
  var srcIn = $('fbid-src');
  var vsIn = $('fbid-vs');
  var msgEl = $('fbid-msg');
  var step2 = $('fbid-step2');
  var resultEl = $('fbid-result');
  var idEl = $('fbid-id');
  var typeEl = $('fbid-type');
  var metaEl = $('fbid-meta');
  var altRow = $('fbid-alt-row');
  var altEl = $('fbid-alt');
  if (!urlIn || !srcIn || !resultEl) { return; }
  var TYPE_LABEL = {
    user: 'User ID (โปรไฟล์ส่วนตัว)',
    page: 'Page ID (เพจ)',
    group: 'Group ID (กลุ่ม)',
    unknown: 'Facebook ID'
  };
  function keyPattern(key) {
    return key + '\\\\?"\\s*:\\s*\\\\?"?(\\d+)';
  }
  var PATTERNS = [
    { re: 'fb:\\/\\/profile\\/(\\d+)', type: 'user' },
    { re: 'fb:\\/\\/page\\/\\?id=(\\d+)', type: 'page' },
    { re: 'fb:\\/\\/page\\/(\\d+)', type: 'page' },
    { re: 'fb:\\/\\/group\\/(\\d+)', type: 'group' },
    { re: keyPattern('pageID'), type: 'page' },
    { re: keyPattern('page_id'), type: 'page' },
    { re: keyPattern('groupID'), type: 'group' },
    { re: keyPattern('group_id'), type: 'group' },
    { re: keyPattern('entity_id'), type: 'unknown' },
    { re: keyPattern('profile_id'), type: 'unknown' },
    { re: keyPattern('userID'), type: 'user', weak: true }
  ];
  function setMsg(text, kind) {
    msgEl.textContent = text || '';
    msgEl.className = 'fbid-msg' + (kind === 'err' ? ' fbid-err' : (kind === 'ok' ? ' fbid-ok' : ''));
  }
  function hideResult() {
    resultEl.hidden = true;
    altRow.hidden = true;
  }
  function parseUrl(value) {
    var v = (value || '').trim();
    if (!v) { return null; }
    if (!/^https?:\/\//i.test(v)) { v = 'https://' + v.replace(/^\/+/, ''); }
    var u = null;
    try { u = new URL(v); } catch (e) { return null; }
    if (!/(^|\.)(facebook\.com|fb\.com)$/i.test(u.hostname)) { return null; }
    return u;
  }
  function desktopHref(u) {
    var copy = new URL(u.href);
    copy.hostname = 'www.facebook.com';
    copy.hash = '';
    return copy.href;
  }
  function idFromUrl(u) {
    var m = null;
    var idParam = u.searchParams.get('id');
    if (/profile\.php\/?$/i.test(u.pathname) && idParam && /^\d+$/.test(idParam)) {
      return { id: idParam, type: 'user' };
    }
    m = u.pathname.match(/\/groups\/(\d+)/i);
    if (m) { return { id: m[1], type: 'group' }; }
    m = u.pathname.match(/\/(?:people|pages)\/[^\/]+\/(\d+)/i);
    if (m) { return { id: m[1], type: 'unknown' }; }
    return null;
  }
  function showResult(id, type, others) {
    idEl.textContent = id;
    typeEl.textContent = TYPE_LABEL[type] || TYPE_LABEL.unknown;
    metaEl.textContent = LT + 'meta property="fb:admins" content="' + id + '" /' + GT;
    if (others && others.length) {
      altEl.textContent = others.join(', ');
      altRow.hidden = false;
    } else {
      altEl.textContent = '';
      altRow.hidden = true;
    }
    resultEl.hidden = false;
  }
  function extractFromSource(src) {
    var found = null;
    var others = [];
    PATTERNS.forEach(function (p) {
      var re = new RegExp(p.re, 'g');
      var counts = {};
      var m = null;
      var guard = 0;
      while ((m = re.exec(src)) !== null && guard !== 5000) {
        counts[m[1]] = (counts[m[1]] || 0) + 1;
        guard += 1;
      }
      var best = null;
      var bestCount = 0;
      Object.keys(counts).forEach(function (k) {
        if (counts[k] > bestCount) { best = k; bestCount = counts[k]; }
        if (found && k !== found.id && others.indexOf(k) === -1 && others.length !== 5) { others.push(k); }
      });
      if (!found && best) { found = { id: best, type: p.type, weak: !!p.weak }; }
    });
    if (found) {
      others = others.filter(function (k) { return k !== found.id; });
    }
    return found ? { found: found, others: others } : null;
  }
  function runExtract() {
    var src = srcIn.value;
    if (!src.trim()) { hideResult(); setMsg(''); return; }
    var r = extractFromSource(src);
    if (!r) {
      hideResult();
      setMsg('ไม่พบ ID ในซอร์สโค้ดนี้ กรุณาตรวจสอบว่าคัดลอกซอร์สโค้ดมาครบทั้งหน้า และ URL ถูกต้อง', 'err');
      return;
    }
    showResult(r.found.id, r.found.type, r.others);
    if (r.found.weak) {
      setMsg('พบ ID แล้ว แต่ควรตรวจสอบอีกครั้งว่าเป็น ID ของโปรไฟล์ที่ต้องการ ไม่ใช่บัญชีที่ล็อกอินอยู่', 'ok');
    } else {
      setMsg('พบ ID เรียบร้อยแล้ว', 'ok');
    }
  }
  function onSearch() {
    var u = parseUrl(urlIn.value);
    if (!u) {
      step2.hidden = true;
      hideResult();
      setMsg('กรุณาใส่ URL ของ Facebook ให้ถูกต้อง เช่น https://www.facebook.com/username', 'err');
      return;
    }
    var direct = idFromUrl(u);
    if (direct) {
      step2.hidden = true;
      showResult(direct.id, direct.type, []);
      setMsg('อ่าน ID จาก URL ได้โดยตรง ไม่ต้องคัดลอกซอร์สโค้ด', 'ok');
      return;
    }
    vsIn.value = 'view-source:' + desktopHref(u);
    step2.hidden = false;
    hideResult();
    setMsg('คัดลอกลิงก์ด้านล่างไปเปิดในแท็บใหม่ แล้วนำซอร์สโค้ดมาวางในช่องด้านล่าง');
    if (srcIn.value.trim()) { runExtract(); }
  }
  function fallbackCopy(text) {
    var t = document.createElement('textarea');
    t.value = text;
    t.setAttribute('readonly', '');
    t.style.position = 'fixed';
    t.style.opacity = '0';
    document.body.appendChild(t);
    t.select();
    try { document.execCommand('copy'); } catch (e) { /* ignore */ }
    document.body.removeChild(t);
  }
  function copyText(text, btn) {
    if (!text) { return; }
    var label = btn.getAttribute('data-label') || btn.textContent;
    btn.setAttribute('data-label', label);
    var done = function () {
      btn.textContent = 'คัดลอกแล้ว';
      setTimeout(function () { btn.textContent = label; }, 1500);
    };
    if (navigator.clipboard && window.isSecureContext) {
      navigator.clipboard.writeText(text).then(done, function () { fallbackCopy(text); done(); });
    } else {
      fallbackCopy(text);
      done();
    }
  }
  $('fbid-make').addEventListener('click', onSearch);
  urlIn.addEventListener('keydown', function (e) { if (e.key === 'Enter') { onSearch(); } });
  $('fbid-reset').addEventListener('click', function () {
    urlIn.value = '';
    srcIn.value = '';
    vsIn.value = '';
    step2.hidden = true;
    hideResult();
    setMsg('');
  });
  var timer = null;
  srcIn.addEventListener('input', function () {
    clearTimeout(timer);
    timer = setTimeout(runExtract, 250);
  });
  $('fbid-copy-vs').addEventListener('click', function () { copyText(vsIn.value, this); });
  $('fbid-copy-id').addEventListener('click', function () { copyText(idEl.textContent, this); });
  $('fbid-copy-meta').addEventListener('click', function () { copyText(metaEl.textContent, this); });
})();
</script>

## วิธีใช้งานเครื่องมือหา ID Facebook

1. **รับ URL ของโปรไฟล์ เพจ หรือกลุ่ม** เปิดหน้าที่ต้องการใน Facebook แล้วคัดลอก URL จากแถบที่อยู่ หากต้องการ ID ของตัวเอง ให้เปิด [https://www.facebook.com/me](https://www.facebook.com/me) ระบบจะพาไปยังโปรไฟล์ของคุณ จากนั้นคัดลอก URL
2. **วาง URL ในช่องด้านบน** แล้วกดปุ่ม "ค้นหา ID" หาก URL เป็นแบบ `profile.php?id=...` หรือ `/groups/ตัวเลข` เครื่องมือจะแสดง ID ให้ทันที
3. **คัดลอกลิงก์ซอร์สโค้ด** หาก URL เป็นชื่อผู้ใช้ เครื่องมือจะสร้างลิงก์ที่ขึ้นต้นด้วย `view-source:` ให้ กดปุ่ม "คัดลอก"
4. **เปิดแท็บใหม่** วางลิงก์ในแถบที่อยู่ของเบราว์เซอร์แล้วกด Enter จะเห็นซอร์สโค้ด HTML ของหน้านั้น
5. **คัดลอกซอร์สโค้ดทั้งหมด** กด Ctrl+A แล้ว Ctrl+C (Mac ใช้ Cmd+A และ Cmd+C)
6. **กลับมาวางในช่อง "วางซอร์สโค้ด HTML ที่นี่"** เครื่องมือจะค้นหา ID ให้อัตโนมัติ และสร้างเมตาแท็กพร้อมให้คัดลอก

**หมายเหตุ**

- การประมวลผลทั้งหมดทำในเบราว์เซอร์ของคุณ ไม่มีการส่ง URL หรือซอร์สโค้ดไปยังเซิร์ฟเวอร์
- ควรใช้คอมพิวเตอร์หรือ Chrome บน Android เนื่องจาก Safari บน iPhone และ iPad ไม่รองรับการเปิดลิงก์ `view-source:`
- Facebook ไม่อนุญาตให้เว็บอื่นดึงข้อมูลหน้าโปรไฟล์โดยตรง จึงต้องคัดลอกซอร์สโค้ดมาวางด้วยตัวเอง
- หน้าที่ตั้งค่าความเป็นส่วนตัวเข้มงวดอาจไม่แสดงข้อมูลที่จำเป็นในซอร์สโค้ด

## ความหมายของคำศัพท์ที่เกี่ยวข้อง

| คำศัพท์ | คำอธิบายสั้นๆ |
|---|---|
| Facebook ID | รหัสตัวเลขเฉพาะที่ Facebook ใช้ระบุโปรไฟล์ เพจ หรือกลุ่ม ต่างจากชื่อผู้ใช้ที่เปลี่ยนได้ |
| User ID | รหัสตัวเลขของบัญชีส่วนตัว ใช้ในการตั้งค่าผู้ดูแลและการเชื่อมต่อกับแอปหรือปลั๊กอิน |
| Page ID | รหัสตัวเลขของเพจ Facebook ใช้ในโฆษณา การเชื่อมต่อแอป และการตั้งค่าต่างๆ |
| Group ID | รหัสตัวเลขของกลุ่ม Facebook ใช้อ้างอิงกลุ่มเมื่อต้องเชื่อมต่อกับเครื่องมือภายนอก |
| URL โปรไฟล์ | ที่อยู่เว็บของโปรไฟล์ เพจ หรือกลุ่ม อาจเป็นชื่อผู้ใช้ (เช่น `facebook.com/username`) หรือรหัสตัวเลข (เช่น `profile.php?id=...`) |
| ซอร์สโค้ด HTML | โค้ดต้นฉบับของหน้าเว็บที่เบราว์เซอร์ใช้แสดงผล มักมี ID ซ่อนอยู่ภายใน |
| `view-source:` | คำนำหน้า URL ที่สั่งให้เบราว์เซอร์แสดงซอร์สโค้ดของหน้านั้นแทนการแสดงผลปกติ |
| Meta Tag | แท็ก HTML ที่ฝังในส่วน `head` ของหน้าเว็บ เพื่อบอกข้อมูลเพิ่มเติมแก่เบราว์เซอร์และ Facebook |
| `fb:admins` | เมตาแท็กที่ระบุ User ID ของผู้ดูแล เพื่อให้จัดการปลั๊กอินความคิดเห็นของ Facebook บนเว็บไซต์ได้ |
| ปลั๊กอินความคิดเห็น (Comments Plugin) | เครื่องมือของ Facebook ที่ให้ฝังช่องแสดงความคิดเห็นไว้ในหน้าเว็บไซต์ |

## การตั้งค่า fb:admins ในเมตาแท็ก

เพื่อให้สิทธิ์ผู้ดูแลระบบจัดการปลั๊กอินความคิดเห็นของ Facebook ให้เพิ่มเมตาแท็กต่อไปนี้ในส่วน `head` ของหน้าเว็บ

```html
<meta property="fb:admins" content="{FACEBOOK_USER_ID}" />
```

แทนที่ `{FACEBOOK_USER_ID}` ด้วยรหัสตัวเลขที่ได้จากเครื่องมือด้านบน

หน้านี้ไม่มีส่วนเกี่ยวข้องกับ Facebook Facebook เป็นเครื่องหมายการค้าจดทะเบียนของ Meta Platforms, Inc.