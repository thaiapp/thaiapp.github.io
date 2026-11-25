---
title: ตัวสร้างลิงก์อีเมล HTML ออนไลน์ ฟรี
h1: ตัวสร้างลิงก์อีเมล HTML
description: สร้างลิงก์อีเมล HTML และ mailto ออนไลน์ฟรี ใส่ CC BCC หัวข้อ เนื้อหาได้ พร้อมลิงก์ Gmail Outlook Yahoo ใช้ได้ทั้งมือถือและคอม ไม่ต้องสมัคร คัดลอกโค้ดทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-25T09:00:00+07:00'
weight: 159
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- ตัวสร้างลิงก์อีเมล HTML
- ตัวสร้างลิงก์อีเมล HTML ออนไลน์
- ตัวสร้างลิงก์ mailto
- สร้างลิงก์อีเมล
- mailto link generator
- ลิงก์ Gmail compose
- เครื่องมือนักพัฒนา
---

สร้างลิงก์อีเมลสำหรับเว็บไซต์ ลายเซ็นอีเมล หรือเอกสารได้ในไม่กี่วินาที กรอกผู้รับ หัวข้อ และเนื้อหา แล้วเครื่องมือจะสร้าง **ลิงก์ mailto** โค้ด **HTML** ลิงก์ **Markdown** และลิงก์เปิดผ่าน **Gmail, Outlook, Yahoo Mail** ให้ทันที พร้อมเข้ารหัสภาษาไทยและการขึ้นบรรทัดใหม่ให้อัตโนมัติ ทำงานในเบราว์เซอร์ของคุณทั้งหมด ไม่มีการส่งข้อมูลออกไปที่ใด

## สร้างลิงก์อีเมล

<style>
.eh-wrap{color-scheme:light dark;margin:1rem 0}
.eh-card{border:1px solid rgba(128,128,128,.35);border-radius:10px;padding:16px;margin:0 0 16px}
.eh-title{font-weight:700;font-size:1.1rem;margin:0 0 12px}
.eh-sub{font-weight:600;margin:14px 0 4px}
.eh-row{margin:0 0 12px}
.eh-row label{display:block;font-weight:600;margin:0 0 4px}
.eh-wrap .eh-row label.eh-inline{display:inline-block;font-weight:400;margin:0 16px 4px 0}
.eh-wrap input[type=text],.eh-wrap textarea,.eh-wrap select{width:100%;box-sizing:border-box;padding:8px 10px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font:inherit}
.eh-wrap textarea{resize:vertical}
.eh-wrap input[type=color]{width:48px;height:34px;padding:0;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;vertical-align:middle}
.eh-grid{display:grid;grid-template-columns:1fr 1fr;gap:12px}
@media (max-width:640px){.eh-grid{grid-template-columns:1fr}}
.eh-btn{display:inline-block;cursor:pointer;padding:8px 14px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:rgba(128,128,128,.12);color:inherit;font:inherit;text-decoration:none;line-height:1.3}
.eh-out{display:flex;gap:8px;align-items:flex-start;flex-wrap:wrap;margin:0 0 6px}
.eh-wrap .eh-out input[type=text],.eh-wrap .eh-out textarea{flex:1 1 260px;min-width:0;width:auto}
.eh-msg{min-height:1.4em;font-size:.92rem;margin:0 0 8px}
.eh-warn{color:#d97706}
.eh-prev{padding:14px;border:1px dashed rgba(128,128,128,.5);border-radius:8px;margin:0 0 6px;text-align:center;word-break:break-word}
.eh-small{font-size:.88rem;opacity:.8}
</style>

<div class="eh-wrap" id="eh-tool">
<div class="eh-card">
<div class="eh-title">1. ข้อมูลอีเมล</div>
<div class="eh-row"><label for="eh-tpl">เทมเพลตสำเร็จรูป (ไม่บังคับ)</label><select id="eh-tpl"><option value="">-- เลือกเทมเพลต --</option><option value="contact">ติดต่อสอบถามทั่วไป</option><option value="bug">แจ้งปัญหาการใช้งาน</option><option value="quote">ขอใบเสนอราคา</option><option value="job">สมัครงาน</option><option value="rsvp">ตอบรับเข้าร่วมงาน (RSVP)</option><option value="feedback">ส่งความคิดเห็น</option></select></div>
<div class="eh-row"><label for="eh-to">อีเมลผู้รับ (To)</label><input type="text" id="eh-to" class="eh-in" placeholder="name@example.com (ใส่หลายอีเมลได้ คั่นด้วย ,)" autocomplete="off" spellcheck="false"></div>
<div class="eh-grid">
<div class="eh-row"><label for="eh-cc">สำเนา (CC)</label><input type="text" id="eh-cc" class="eh-in" placeholder="cc@example.com" autocomplete="off" spellcheck="false"></div>
<div class="eh-row"><label for="eh-bcc">สำเนาลับ (BCC)</label><input type="text" id="eh-bcc" class="eh-in" placeholder="bcc@example.com" autocomplete="off" spellcheck="false"></div>
</div>
<div class="eh-row"><label for="eh-subject">หัวข้ออีเมล (Subject)</label><input type="text" id="eh-subject" class="eh-in" placeholder="เช่น สอบถามข้อมูลสินค้า" autocomplete="off"></div>
<div class="eh-row"><label for="eh-body">เนื้อหาอีเมล (Body)</label><textarea id="eh-body" class="eh-in" rows="4" placeholder="ข้อความที่ต้องการให้ใส่ไว้ในอีเมลล่วงหน้า"></textarea></div>
</div>
<div class="eh-card">
<div class="eh-title">2. รูปแบบลิงก์</div>
<div class="eh-row"><label for="eh-text">ข้อความบนลิงก์</label><input type="text" id="eh-text" class="eh-in" value="ส่งอีเมลถึงเรา" autocomplete="off"></div>
<div class="eh-row"><label>รูปแบบการแสดงผล</label><label class="eh-inline"><input type="radio" name="eh-style" value="link" class="eh-in" checked> ลิงก์ข้อความ</label><label class="eh-inline"><input type="radio" name="eh-style" value="button" class="eh-in"> ปุ่ม</label></div>
<div class="eh-row"><label class="eh-inline" for="eh-bg">สีปุ่ม <input type="color" id="eh-bg" class="eh-in" value="#2563eb"></label><label class="eh-inline" for="eh-fg">สีตัวอักษรบนปุ่ม <input type="color" id="eh-fg" class="eh-in" value="#ffffff"></label></div>
<div class="eh-row"><label class="eh-inline"><input type="checkbox" id="eh-spam" class="eh-in"> ป้องกันสแปม (แปลงอีเมลในโค้ด HTML เป็น HTML entities)</label></div>
<div class="eh-row"><label class="eh-inline"><input type="checkbox" id="eh-copy" class="eh-in"> คัดลอกอีเมลผู้รับอัตโนมัติเมื่อคลิก (สำรองกรณีไม่มีแอปอีเมล)</label></div>
<button type="button" class="eh-btn" id="eh-reset">ล้างค่าทั้งหมด</button>
</div>
<div class="eh-card">
<div class="eh-title">3. นำเข้าลิงก์ mailto เดิม (ไม่บังคับ)</div>
<div class="eh-row"><label for="eh-import">วางลิงก์ mailto หรือโค้ด HTML เดิมเพื่อแยกเป็นช่องกรอก</label><textarea id="eh-import" rows="2" placeholder="mailto:name@example.com?subject=..."></textarea></div>
<button type="button" class="eh-btn" id="eh-import-btn">แยกค่า</button>
</div>
<div class="eh-card">
<div class="eh-title">4. ผลลัพธ์</div>
<div class="eh-msg" id="eh-msg" role="status" aria-live="polite"></div>
<div class="eh-sub">ลิงก์ mailto</div>
<div class="eh-out"><input type="text" id="eh-o-mailto" readonly><button type="button" class="eh-btn" id="eh-c-mailto">คัดลอก</button></div>
<div class="eh-small" id="eh-count"></div>
<div class="eh-sub">โค้ด HTML</div>
<div class="eh-out"><textarea id="eh-o-html" rows="4" readonly></textarea><button type="button" class="eh-btn" id="eh-c-html">คัดลอก</button></div>
<div class="eh-sub">ลิงก์ Markdown</div>
<div class="eh-out"><input type="text" id="eh-o-md" readonly><button type="button" class="eh-btn" id="eh-c-md">คัดลอก</button></div>
<div class="eh-sub">ตัวอย่าง (คลิกเพื่อทดสอบ)</div>
<div class="eh-prev" id="eh-preview"></div>
<div class="eh-sub">ลิงก์เปิดผ่านเว็บเมล (ใช้ได้แม้ไม่มีแอปอีเมลในเครื่อง)</div>
<div id="eh-web"></div>
<div class="eh-small">รูปแบบ URL ของเว็บเมลอาจเปลี่ยนแปลงโดยผู้ให้บริการ ควรทดสอบลิงก์ก่อนนำไปใช้จริง</div>
</div>
</div>

<script>
(function () {
  var LT = String.fromCharCode(60);
  var GT = String.fromCharCode(62);
  var $ = function (id) { return document.getElementById(id); };
  if (!$('eh-to') || !$('eh-msg')) { return; }
  var EMAIL_RE = /^[^\s@,;]+@[^\s@,;]+\.[^\s@,;]+$/;
  var SAFE_RE = /^[A-Za-z0-9._%+\-]+@[A-Za-z0-9.\-]+$/;
  var MAX_LEN = 1900;
  var K_STD = { cc: 'cc', bcc: 'bcc', subject: 'subject', body: 'body' };
  var K_GMAIL = { cc: 'cc', bcc: 'bcc', subject: 'su', body: 'body' };
  var TPL = {
    contact: { text: 'ติดต่อเรา', subject: 'สอบถามข้อมูลเพิ่มเติม', body: 'สวัสดีครับ/ค่ะ\n\nต้องการสอบถามเกี่ยวกับ...\n\nขอบคุณครับ/ค่ะ' },
    bug: { text: 'แจ้งปัญหา', subject: 'แจ้งปัญหาการใช้งาน', body: 'รายละเอียดปัญหา:\n\nขั้นตอนที่ทำให้เกิดปัญหา:\n\nอุปกรณ์/เบราว์เซอร์ที่ใช้:\n' },
    quote: { text: 'ขอใบเสนอราคา', subject: 'ขอใบเสนอราคา', body: 'สวัสดีครับ/ค่ะ\n\nต้องการขอใบเสนอราคาสำหรับ...\nจำนวน:\nกำหนดส่งมอบ:\n\nขอบคุณครับ/ค่ะ' },
    job: { text: 'สมัครงาน', subject: 'สมัครงานตำแหน่ง ...', body: 'เรียน ฝ่ายบุคคล\n\nข้าพเจ้าสนใจสมัครตำแหน่ง ... จึงขอส่งประวัติและผลงานมาเพื่อพิจารณา\n\nขอแสดงความนับถือ' },
    rsvp: { text: 'ตอบรับเข้าร่วมงาน', subject: 'ตอบรับเข้าร่วมงาน', body: 'ชื่อ-นามสกุล:\nจำนวนผู้เข้าร่วม:\nหมายเหตุ:\n' },
    feedback: { text: 'ส่งความคิดเห็น', subject: 'ความคิดเห็นเกี่ยวกับเว็บไซต์', body: 'ความคิดเห็นของฉัน:\n' }
  };
  var webRows = [];
  function val(id) { return $(id).value; }
  function splitList(s) { return s.split(/[,;\s]+/).filter(function (x) { return x.length > 0; }); }
  function escHtml(s) {
    return s.split('').map(function (ch) {
      var c = ch.charCodeAt(0);
      if (c === 38) { return '&amp;'; }
      if (c === 60) { return '&lt;'; }
      if (c === 62) { return '&gt;'; }
      if (c === 34) { return '&quot;'; }
      if (c === 39) { return '&#39;'; }
      return ch;
    }).join('');
  }
  function entities(s) {
    return s.split('').map(function (ch) { return '&#' + ch.charCodeAt(0) + ';'; }).join('');
  }
  function encAddr(a) { return encodeURIComponent(a).replace(/%40/g, '@'); }
  function encText(s) { return encodeURIComponent(s.replace(/\r?\n/g, '\r\n')); }
  function safeDecode(s) { try { return decodeURIComponent(s); } catch (e) { return s; } }
  function readState() {
    var bad = [];
    function pick(id) {
      var out = [];
      splitList(val(id)).forEach(function (a) {
        if (EMAIL_RE.test(a)) { out.push(a); } else { bad.push(a); }
      });
      return out;
    }
    var styleEl = document.querySelector('input[name="eh-style"]:checked');
    return {
      to: pick('eh-to'), cc: pick('eh-cc'), bcc: pick('eh-bcc'),
      subject: val('eh-subject'), body: val('eh-body'),
      text: val('eh-text') || 'ส่งอีเมล',
      style: styleEl ? styleEl.value : 'link',
      bg: val('eh-bg'), fg: val('eh-fg'),
      spam: $('eh-spam').checked, copy: $('eh-copy').checked,
      bad: bad
    };
  }
  function hasData(st) {
    return st.to.length > 0 || st.cc.length > 0 || st.bcc.length > 0 || st.subject !== '' || st.body !== '';
  }
  function canAutoCopy(st) {
    return st.to.length > 0 && st.to.every(function (a) { return SAFE_RE.test(a); });
  }
  function pairsFor(st, keys) {
    var p = [];
    if (st.cc.length) { p.push(keys.cc + '=' + st.cc.map(encAddr).join(',')); }
    if (st.bcc.length) { p.push(keys.bcc + '=' + st.bcc.map(encAddr).join(',')); }
    if (st.subject) { p.push(keys.subject + '=' + encText(st.subject)); }
    if (st.body) { p.push(keys.body + '=' + encText(st.body)); }
    return p;
  }
  function mailtoPlain(st) {
    var p = pairsFor(st, K_STD);
    return 'mailto:' + st.to.map(encAddr).join(',') + (p.length ? '?' + p.join('&') : '');
  }
  function mailtoHtmlHref(st) {
    var p = pairsFor(st, K_STD);
    var addr = st.to.map(encAddr).join(',');
    if (st.spam) { addr = entities(addr); }
    return 'mailto:' + addr + (p.length ? '?' + p.join('&amp;') : '');
  }
  function buttonCss(st) {
    return 'display:inline-block;padding:10px 18px;background-color:' + st.bg + ';color:' + st.fg + ';text-decoration:none;border-radius:6px;font-family:Arial,Helvetica,sans-serif;font-size:16px;line-height:1.4';
  }
  function htmlCode(st) {
    var attrs = ' href="' + mailtoHtmlHref(st) + '"';
    if (st.style === 'button') { attrs += ' style="' + buttonCss(st) + '"'; }
    if (st.copy && canAutoCopy(st)) {
      attrs += ' onclick="try{navigator.clipboard.writeText(' + "'" + st.to.join(', ') + "'" + ')}catch(e){}"';
    }
    var text = escHtml(st.text);
    if (st.spam) { text = text.replace(/@/g, '&#64;'); }
    return LT + 'a' + attrs + GT + text + LT + '/a' + GT;
  }
  function mdCode(st) {
    var text = st.text.replace(/([\[\]\\])/g, '\\$1');
    var url = mailtoPlain(st).replace(/\(/g, '%28').replace(/\)/g, '%29');
    return '[' + text + '](' + url + ')';
  }
  function webUrl(st, base, keys, joiner, pre) {
    var p = pre.slice();
    if (st.to.length) { p.push('to=' + st.to.map(encAddr).join(joiner)); }
    return base + p.concat(pairsFor(st, keys)).join('&');
  }
  var WEB = [
    { name: 'Gmail', build: function (st) { return webUrl(st, 'https://mail.google.com/mail/?', K_GMAIL, ',', ['view=cm', 'fs=1']); } },
    { name: 'Outlook.com (Hotmail)', build: function (st) { return webUrl(st, 'https://outlook.live.com/mail/0/deeplink/compose?', K_STD, '%3B', []); } },
    { name: 'Microsoft 365 (Outlook งาน/โรงเรียน)', build: function (st) { return webUrl(st, 'https://outlook.office.com/mail/deeplink/compose?', K_STD, '%3B', []); } },
    { name: 'Yahoo Mail', build: function (st) { return webUrl(st, 'https://compose.mail.yahoo.com/?', K_STD, ',', []); } }
  ];
  function fallbackCopy(text, done) {
    var ta = document.createElement('textarea');
    ta.value = text;
    ta.setAttribute('readonly', '');
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    try { document.execCommand('copy'); done(); } catch (e) {}
    document.body.removeChild(ta);
  }
  function copyText(text, done) {
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, function () { fallbackCopy(text, done); });
    } else {
      fallbackCopy(text, done);
    }
  }
  function bindCopy(btn, getText) {
    var label = btn.textContent;
    btn.addEventListener('click', function () {
      var t = getText();
      if (!t) { return; }
      copyText(t, function () {
        btn.textContent = 'คัดลอกแล้ว ✓';
        setTimeout(function () { btn.textContent = label; }, 1500);
      });
    });
  }
  function buildWebRows() {
    var box = $('eh-web');
    WEB.forEach(function (w) {
      var name = document.createElement('div');
      name.className = 'eh-small';
      name.textContent = w.name;
      var row = document.createElement('div');
      row.className = 'eh-out';
      var input = document.createElement('input');
      input.type = 'text';
      input.readOnly = true;
      var copyBtn = document.createElement('button');
      copyBtn.type = 'button';
      copyBtn.className = 'eh-btn';
      copyBtn.textContent = 'คัดลอก';
      var open = document.createElement('a');
      open.className = 'eh-btn';
      open.target = '_blank';
      open.rel = 'noopener noreferrer';
      open.textContent = 'เปิดทดสอบ';
      row.appendChild(input);
      row.appendChild(copyBtn);
      row.appendChild(open);
      box.appendChild(name);
      box.appendChild(row);
      bindCopy(copyBtn, function () { return input.value; });
      w.input = input;
      w.open = open;
      webRows.push(w);
    });
  }
  function clearOutputs() {
    ['eh-o-mailto', 'eh-o-html', 'eh-o-md'].forEach(function (id) { $(id).value = ''; });
    $('eh-count').textContent = '';
    $('eh-count').className = 'eh-small';
    $('eh-preview').textContent = '';
    webRows.forEach(function (w) { w.input.value = ''; w.open.removeAttribute('href'); });
  }
  function renderPreview(st, url) {
    var box = $('eh-preview');
    box.textContent = '';
    var a = document.createElement('a');
    a.href = url;
    a.textContent = st.text;
    if (st.style === 'button') { a.style.cssText = buttonCss(st); }
    if (st.copy && canAutoCopy(st)) {
      a.addEventListener('click', function () { copyText(st.to.join(', '), function () {}); });
    }
    box.appendChild(a);
  }
  function render() {
    var st = readState();
    var notes = [];
    if (st.bad.length) { notes.push('ข้ามอีเมลที่รูปแบบไม่ถูกต้อง: ' + st.bad.join(', ')); }
    if (!hasData(st)) {
      clearOutputs();
      notes.unshift('กรอกอีเมลผู้รับหรือหัวข้อเพื่อเริ่มสร้างลิงก์');
      $('eh-msg').textContent = notes.join(' | ');
      return;
    }
    if (!st.to.length) { notes.push('ยังไม่ได้ใส่อีเมลผู้รับ (To) ลิงก์จะเปิดอีเมลใหม่โดยให้ผู้ใช้เลือกผู้รับเอง'); }
    if (st.copy && !canAutoCopy(st)) { notes.push('ข้ามการคัดลอกอัตโนมัติ: ต้องมีอีเมลผู้รับที่เป็นตัวอักษรอังกฤษ ตัวเลข และสัญลักษณ์ . _ % + - เท่านั้น'); }
    var url = mailtoPlain(st);
    $('eh-o-mailto').value = url;
    $('eh-o-html').value = htmlCode(st);
    $('eh-o-md').value = mdCode(st);
    var n = url.length;
    var cnt = $('eh-count');
    if (n > MAX_LEN) {
      cnt.textContent = 'ความยาวลิงก์ ' + n + ' ตัวอักษร: ยาวเกิน ' + MAX_LEN + ' ตัวอักษร บางโปรแกรมอีเมลอาจเปิดลิงก์ไม่ได้ ควรลดความยาวเนื้อหา';
      cnt.className = 'eh-small eh-warn';
    } else {
      cnt.textContent = 'ความยาวลิงก์ ' + n + ' ตัวอักษร';
      cnt.className = 'eh-small';
    }
    renderPreview(st, url);
    webRows.forEach(function (w) {
      var u = w.build(st);
      w.input.value = u;
      w.open.href = u;
    });
    $('eh-msg').textContent = notes.join(' | ');
  }
  function parseMailto(raw) {
    var s = raw.trim();
    var m = s.match(/mailto:[^"'\s]*/i);
    if (m) { s = m[0]; }
    s = s.replace(/&amp;/g, '&');
    if (s.toLowerCase().indexOf('mailto:') === 0) { s = s.slice(7); }
    var q = s.indexOf('?');
    var addr = q === -1 ? s : s.slice(0, q);
    var query = q === -1 ? '' : s.slice(q + 1);
    var found = { to: safeDecode(addr), cc: '', bcc: '', subject: '', body: '' };
    query.split('&').forEach(function (pair) {
      var i = pair.indexOf('=');
      if (i === -1) { return; }
      var k = pair.slice(0, i).toLowerCase();
      var v = safeDecode(pair.slice(i + 1));
      if (k === 'cc' || k === 'bcc' || k === 'subject' || k === 'body') { found[k] = v; }
    });
    return found;
  }
  buildWebRows();
  bindCopy($('eh-c-mailto'), function () { return val('eh-o-mailto'); });
  bindCopy($('eh-c-html'), function () { return val('eh-o-html'); });
  bindCopy($('eh-c-md'), function () { return val('eh-o-md'); });
  Array.prototype.forEach.call(document.querySelectorAll('.eh-in'), function (el) {
    el.addEventListener('input', render);
    el.addEventListener('change', render);
  });
  $('eh-tpl').addEventListener('change', function () {
    var t = TPL[this.value];
    if (!t) { return; }
    $('eh-text').value = t.text;
    $('eh-subject').value = t.subject;
    $('eh-body').value = t.body;
    render();
  });
  $('eh-import-btn').addEventListener('click', function () {
    var raw = val('eh-import');
    if (!raw.trim()) { return; }
    var f = parseMailto(raw);
    $('eh-to').value = f.to.split(',').map(function (x) { return x.trim(); }).filter(Boolean).join(', ');
    $('eh-cc').value = f.cc;
    $('eh-bcc').value = f.bcc;
    $('eh-subject').value = f.subject;
    $('eh-body').value = f.body;
    render();
  });
  $('eh-reset').addEventListener('click', function () {
    ['eh-to', 'eh-cc', 'eh-bcc', 'eh-subject', 'eh-body', 'eh-import'].forEach(function (id) { $(id).value = ''; });
    $('eh-text').value = 'ส่งอีเมลถึงเรา';
    $('eh-tpl').value = '';
    $('eh-bg').value = '#2563eb';
    $('eh-fg').value = '#ffffff';
    $('eh-spam').checked = false;
    $('eh-copy').checked = false;
    document.querySelector('input[name="eh-style"][value="link"]').checked = true;
    render();
  });
  render();
})();
</script>

## วิธีใช้งานตัวสร้างลิงก์อีเมล HTML

1. **เลือกเทมเพลต (ถ้าต้องการ)** เช่น ติดต่อทั่วไป แจ้งปัญหา ขอใบเสนอราคา หรือสมัครงาน ระบบจะเติมข้อความบนลิงก์ หัวข้อ และเนื้อหาให้ ซึ่งแก้ไขต่อได้ หรือจะข้ามไปกรอกเองก็ได้
2. **กรอกอีเมลผู้รับ (To)** ใส่ได้หลายอีเมลโดยคั่นด้วยเครื่องหมายจุลภาค (,) ระบบจะข้ามอีเมลที่รูปแบบไม่ถูกต้องและแจ้งให้ทราบ
3. **เพิ่ม CC, BCC, หัวข้อ และเนื้อหา** ตามต้องการ ภาษาไทยและการขึ้นบรรทัดใหม่จะถูกเข้ารหัสให้อัตโนมัติ
4. **ตั้งข้อความบนลิงก์และเลือกรูปแบบ** เป็นลิงก์ข้อความหรือปุ่ม หากเลือกปุ่มสามารถปรับสีพื้นและสีตัวอักษรได้
5. **เลือกตัวเลือกเสริม (ไม่บังคับ)** ได้แก่ ป้องกันสแปม และคัดลอกอีเมลผู้รับอัตโนมัติเมื่อคลิก
6. **ตรวจสอบผลลัพธ์** ดูตัวอย่าง คลิกทดสอบ และสังเกตตัวนับความยาวลิงก์ แล้วกด **คัดลอก** ในรูปแบบที่ต้องการ คือ ลิงก์ mailto โค้ด HTML ลิงก์ Markdown หรือลิงก์เว็บเมล (Gmail, Outlook, Yahoo)
7. **นำไปใช้งาน** วางโค้ดลงในเว็บไซต์ ลายเซ็นอีเมล หรือเอกสาร แล้วทดสอบอีกครั้งในอุปกรณ์จริง

หากมีลิงก์ mailto หรือโค้ด HTML เดิมอยู่แล้ว ให้วางในส่วน **นำเข้าลิงก์ mailto เดิม** แล้วกด **แยกค่า** ระบบจะแยกเป็นผู้รับ CC BCC หัวข้อ และเนื้อหาให้แก้ไขต่อได้

## คำอธิบายศัพท์ที่ควรรู้

- **mailto** คือรูปแบบลิงก์ที่เมื่อคลิกแล้วเปิดแอปอีเมลเริ่มต้นของอุปกรณ์ พร้อมใส่ผู้รับ หัวข้อ และเนื้อหาให้ล่วงหน้า
- **To (ผู้รับ)** คืออีเมลปลายทางหลัก ใส่ได้หลายรายการโดยคั่นด้วยเครื่องหมายจุลภาค
- **CC (Carbon Copy)** คือผู้รับสำเนาที่ทุกคนในอีเมลมองเห็นรายชื่อ
- **BCC (Blind Carbon Copy)** คือผู้รับสำเนาลับ ผู้รับคนอื่นจะมองไม่เห็นรายชื่อนี้
- **Subject (หัวข้อ)** คือบรรทัดหัวเรื่องของอีเมล
- **Body (เนื้อหา)** คือข้อความที่เติมไว้ในตัวอีเมลล่วงหน้า
- **URL Encoding** คือการแปลงช่องว่าง ภาษาไทย และอักขระพิเศษให้อยู่ในรูปที่ใช้ใน URL ได้ เช่น ช่องว่างเป็น `%20` และขึ้นบรรทัดใหม่เป็น `%0D%0A`
- **แท็ก `<a>` (Anchor)** คือแท็ก HTML สำหรับสร้างลิงก์ โดยกำหนดปลายทางในแอตทริบิวต์ `href`
- **ลิงก์ Markdown** คือลิงก์ในรูปแบบ `[ข้อความ](URL)` ใช้ในเอกสาร README และเว็บที่รองรับ Markdown
- **HTML Entities** คือการเขียนตัวอักษรเป็นรหัสตัวเลข เช่น `&#64;` แทน `@` เพื่อให้บอทแบบง่ายเก็บอีเมลจากซอร์สโค้ดได้ยากขึ้น แต่ไม่ได้ป้องกันได้ทั้งหมด
- **ลิงก์ Webmail (Compose URL)** คือลิงก์ที่เปิดหน้าเขียนอีเมลของ Gmail, Outlook หรือ Yahoo Mail บนเว็บโดยตรง ไม่ต้องมีแอปอีเมลติดตั้งในเครื่อง
- **คัดลอกอัตโนมัติ** คือการคัดลอกอีเมลผู้รับไปที่คลิปบอร์ดเมื่อคลิกลิงก์ เพื่อให้ผู้ใช้วางเองได้ในกรณีที่ไม่มีแอปอีเมลเปิดขึ้นมา

## พารามิเตอร์ของลิงก์ mailto

| ส่วนของลิงก์ | หน้าที่ | ตัวอย่าง |
| --- | --- | --- |
| `mailto:` | ระบุผู้รับ (To) | `mailto:hello@example.com` |
| `?` | เริ่มต้นพารามิเตอร์แรก | `?subject=Hello` |
| `&` | คั่นพารามิเตอร์ถัดไป | `&cc=team@example.com` |
| `subject` | หัวข้ออีเมล | `subject=สอบถามสินค้า` |
| `body` | เนื้อหาอีเมล | `body=สวัสดีครับ` |
| `cc` / `bcc` | สำเนา / สำเนาลับ | `bcc=boss@example.com` |

ตัวอย่างโค้ด HTML ที่ได้จากเครื่องมือ:

```html
<a href="mailto:hello@example.com?subject=Hello&amp;body=Hi%20there">ส่งอีเมลถึงเรา</a>
```

## เปรียบเทียบวิธีให้ผู้ใช้ส่งอีเมล

| วิธี | ข้อดี | ข้อจำกัด |
| --- | --- | --- |
| ลิงก์ mailto | ทำง่าย ไม่ต้องมีเซิร์ฟเวอร์ | ต้องมีแอปอีเมลเริ่มต้นในเครื่อง และไม่รู้ว่าผู้ใช้ส่งจริงหรือไม่ |
| ลิงก์ Webmail | ใช้ได้โดยไม่ต้องมีแอปอีเมล | ผูกกับผู้ให้บริการรายเดียว ผู้ใช้ต้องล็อกอินเว็บเมลนั้น |
| แบบฟอร์มติดต่อ | ซ่อนอีเมลได้ เก็บข้อมูลเป็นระบบ | ต้องมีระบบหลังบ้านหรือบริการภายนอก |

## ข้อควรระวัง

- ลิงก์ mailto เปิดแอปอีเมลเริ่มต้นของผู้ใช้ ซึ่งบางเครื่องอาจไม่มี จึงควรมีทางเลือก เช่น ลิงก์เว็บเมล หรือแสดงอีเมลเป็นข้อความให้คัดลอกได้
- อีเมลในซอร์สโค้ดของหน้าเว็บอาจถูกบอทเก็บไปส่งสแปม ตัวเลือกป้องกันสแปมช่วยลดความเสี่ยงได้บางส่วน
- ไม่มีขีดจำกัดความยาวลิงก์ที่ตายตัวสำหรับทุกโปรแกรม เครื่องมือนี้จึงเตือนเมื่อยาวเกิน 1,900 ตัวอักษรเพื่อความระมัดระวัง
- ควรทดสอบลิงก์กับแอปอีเมลที่กลุ่มเป้าหมายใช้จริง โดยเฉพาะเมื่อมีภาษาไทยในหัวข้อหรือเนื้อหา

## คำถามที่พบบ่อย

### ลิงก์ mailto คืออะไร และต่างจากลิงก์ทั่วไปอย่างไร

ลิงก์ทั่วไปพาไปยังหน้าเว็บ ส่วนลิงก์ mailto จะเปิดแอปอีเมลเพื่อสร้างอีเมลฉบับใหม่ โดยใส่ผู้รับ หัวข้อ และเนื้อหาไว้ให้ล่วงหน้า

### ทำไมกดลิงก์ mailto แล้วไม่มีอะไรเกิดขึ้น

มักเกิดจากอุปกรณ์ยังไม่ได้ตั้งแอปอีเมลเริ่มต้น แนะนำให้ใช้ลิงก์เว็บเมล (Gmail, Outlook, Yahoo) หรือเปิดตัวเลือก **คัดลอกอีเมลผู้รับอัตโนมัติ** เพื่อให้ผู้ใช้มีทางเลือกสำรอง

### ใส่ผู้รับหลายคนได้หรือไม่

ได้ ใส่อีเมลหลายรายการในช่อง To, CC หรือ BCC โดยคั่นด้วยเครื่องหมายจุลภาค (,) เครื่องมือจะจัดรูปแบบให้เหมาะกับลิงก์แต่ละประเภท

### เนื้อหาภาษาไทยในอีเมลจะแสดงผลถูกต้องหรือไม่

เครื่องมือเข้ารหัสภาษาไทยเป็น UTF-8 ให้ตามมาตรฐาน URL ซึ่งแอปอีเมลส่วนใหญ่รองรับ แต่ควรทดสอบกับแอปที่ใช้งานจริงอีกครั้ง

### ตัวเลือกป้องกันสแปมได้ผลแค่ไหน

การแปลงอีเมลเป็น HTML entities ช่วยลดโอกาสที่บอทแบบง่ายจะอ่านอีเมลจากซอร์สโค้ด แต่ไม่ใช่การป้องกันที่สมบูรณ์ หากต้องการความปลอดภัยสูงควรใช้แบบฟอร์มติดต่อแทน

### ข้อมูลที่กรอกถูกเก็บหรือส่งไปที่เซิร์ฟเวอร์หรือไม่

ไม่ เครื่องมือประมวลผลทั้งหมดในเบราว์เซอร์ของคุณ ไม่มีการส่งหรือจัดเก็บอีเมลและข้อความที่กรอก

### ใช้ฟรีหรือไม่ ต้องสมัครสมาชิกหรือเปล่า

ใช้ฟรีและไม่ต้องสมัครสมาชิก เปิดใช้งานได้ทันทีทั้งบนมือถือและคอมพิวเตอร์