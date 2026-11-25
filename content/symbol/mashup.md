---
title: สัญลักษณ์มาชัพ ออนไลน์ ฟรี
h1: สัญลักษณ์มาชัพ
description: 'รวมสัญลักษณ์มาชัพให้คัดลอกไปวางได้ทันที พิมพ์ข้อความเองแล้วดูตัวอย่างก่อนใช้ มีหมวดหัวข้อ ขอบ ดาว หัวใจ ตัวคั่น รองรับมือถือ แท็บเล็ต และคอมพิวเตอร์ ใช้ฟรี'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-25T09:00:00+07:00'
weight: 161
tool: true
topic: emoji
appCategory: UtilitiesApplication
keywords:
- สัญลักษณ์มาชัพ
- สัญลักษณ์มาชัพ ออนไลน์
- อิโมจิและสัญลักษณ์
---

<div class="sm" id="sm-app">
<div class="sm-top">
<div>
<label class="sm-lab" for="sm-title">ข้อความของคุณ (แทนคำว่า title)</label>
<input id="sm-title" class="sm-in" type="text" maxlength="60" placeholder="พิมพ์ชื่อหรือแคปชั่น แล้วดูผลทันที" autocomplete="off">
</div>
<div>
<label class="sm-lab" for="sm-q">ค้นหาหมวด</label>
<input id="sm-q" class="sm-in" type="search" placeholder="เช่น หัวใจ ดาว border heart" autocomplete="off">
</div>
</div>
<div class="sm-tabs" id="sm-tabs"></div>
<div class="sm-grid" id="sm-grid"></div>
<div class="sm-box">
<label class="sm-lab" for="sm-out">กล่องมาชัพ (รวมสัญลักษณ์ที่เลือก)</label>
<textarea id="sm-out" class="sm-in" rows="4" placeholder="กด ＋ เพิ่ม ที่การ์ดเพื่อรวมสัญลักษณ์ หรือพิมพ์แก้ไขในกล่องนี้ได้เลย"></textarea>
<div class="sm-row">
<label><input type="checkbox" id="sm-join"> ต่อท้ายในบรรทัดเดียวกัน</label>
<select id="sm-plat" aria-label="เลือกแพลตฟอร์มเพื่อเช็กจำนวนตัวอักษร"></select>
</div>
<div class="sm-row">
<button type="button" id="sm-copy">คัดลอกทั้งหมด</button>
<button type="button" id="sm-png">บันทึกเป็นภาพ PNG</button>
<button type="button" id="sm-clear">ล้างกล่อง</button>
</div>
<p class="sm-meta" id="sm-meta"></p>
<p class="sm-warn" id="sm-warn" hidden>มีสัญลักษณ์ที่บางเครื่องอาจแสดงเป็นช่องสี่เหลี่ยม ควรลองวางในแอปปลายทางก่อนใช้จริง</p>
<p class="sm-code" id="sm-code"></p>
</div>
<div class="sm-toast" id="sm-toast" role="status" aria-live="polite"></div>
<style>
.sm{max-width:880px;margin:0 auto;font:inherit}
.sm *{box-sizing:border-box}
.sm-top{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.sm-lab{display:block;font-weight:600;margin:0 0 4px}
.sm-in{width:100%;padding:10px 12px;font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:8px}
.sm-tabs{display:flex;gap:6px;overflow-x:auto;padding:12px 0}
.sm button,.sm select{font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:8px;padding:6px 12px;cursor:pointer;min-height:36px}
.sm-tabs button{white-space:nowrap}
.sm button.on{background:#2456d6;border-color:#2456d6;color:#fff}
.sm button:focus-visible,.sm select:focus-visible,.sm-in:focus-visible,.sm pre:focus-visible{outline:2px solid #2456d6;outline-offset:2px}
.sm-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(230px,1fr));gap:10px;min-height:80px}
.sm-card{display:flex;flex-direction:column;gap:8px;padding:10px;border:1px solid rgba(128,128,128,.35);border-radius:10px;background:rgba(128,128,128,.07)}
.sm-card pre{flex:1;margin:0;padding:6px;border:0;background:transparent;font:inherit;font-size:1.05rem;line-height:1.5;text-align:center;white-space:pre-wrap;word-break:break-all;cursor:pointer}
.sm-act{display:flex;gap:6px}
.sm-act button{min-height:32px;padding:4px 10px;font-size:.85rem}
.sm-flag,.sm-warn{font-size:.82rem;color:#b45309}
.sm-box{margin-top:18px}
.sm-row{display:flex;flex-wrap:wrap;gap:8px;margin-top:8px;align-items:center}
.sm-meta,.sm-code{margin:8px 0 0;font-size:.88rem;opacity:.85;word-break:break-all}
.sm-over{color:#c62828;opacity:1;font-weight:600}
.sm-warn[hidden]{display:none}
.sm-toast{position:fixed;left:50%;bottom:24px;transform:translateX(-50%);padding:8px 16px;border-radius:8px;background:#1d2433;color:#fff;opacity:0;pointer-events:none;transition:opacity .2s}
.sm-toast.show{opacity:1}
@media (max-width:600px){.sm-top{grid-template-columns:1fr}}
@media (prefers-reduced-motion:reduce){.sm-toast{transition:none}}
</style>
<script>
(function () {
  var C = [
    {id: 'title', n: 'หัวข้อ', k: 'title heading หัวข้อ แคปชั่น', d: [
      '▁ ▂ ▄ ▅ ▆ ▇ █ title █ ▇ ▆ ▅ ▄ ▂ ▁', '░▒▓█ title █▓▒░', '▀▄▀▄▀▄ title ▄▀▄▀▄▀', '𓊆𓊆𓊆𓊆 title 𓊇𓊇𓊇𓊇',
      '𓊈𒆜 title 𒆜𓊉࿐', '୨⎯ title ⎯୧', '╰┈➤ title', '༄༄༄༄༄༄ title ༄༄༄༄༄', '▂▂▂▂▂ title ▂▂▂▂▂',
      '❰❰❰❰ title ❱❱❱❱', '𓁆 𓀤 𓀣 title 𓀢 𓀥 𓁌']},
    {id: 'border', n: 'ขอบ', k: 'border frame box ขอบ กรอบ', d: [
      '╔══════╗\ntitle\n╚══════╝', '┌──────┐\ntitle\n└──────┘', '┏━━━━━━┓\ntitle\n┗━━━━━━┛',
      '╒══════╕\ntitle\n╘══════╛', '╭───────╮\ntitle\n╰───────╯', '╭┄┄┄┄┄┄╮\ntitle\n╰┄┄┄┄┄┄╯',
      '◤￣￣￣￣￣￣￣￣◥\ntitle\n◣＿＿＿＿＿＿＿＿◢', '┏━•❃°•°❀°•°❃•━┓\ntitle\n┗━•❃°•°❀°•°❃•━┛',
      '┃ title', '║ title', '│ title']},
    {id: 'star', n: 'ดาว', k: 'star ดาว', d: [
      '˗ˏˋ ★ ˎˊ˗', '༺☆༻', '✩࿐', '╚»★«╝', '★☆★☆★', '✦ ✧ ✦', '⋆｡°✩', '✮⋆˙']},
    {id: 'sparkle', n: 'ประกาย', k: 'sparkle glitter ประกาย ระยิบระยับ', d: [
      '*¨¨*:·. ✮⋆｡°✩⋆˙', '⋆⁺₊⋆ ☀︎ ⋆⁺₊⋆', '⋆⁺₊⋆ ☾⋆⁺₊⋆', '*:･ﾟ✧*:･ﾟ ✧･ﾟ: *✧･ﾟ:*',
      '*:･ﾟ✧*:･ﾟ✧', '·͙*̩̩͙˚̩̥̩̥*̩̩̥͙', '.・゜゜・・゜゜・．', '｡･ﾟﾟ･ ･ﾟﾟ･｡', '✧･ﾟ:✧☁︎･ﾟ::･ﾟ✦:･ﾟ✧']},
    {id: 'heart', n: 'หัวใจ', k: 'heart love หัวใจ รัก', d: [
      'ﮩ٨ـﮩﮩ٨ـ♡ﮩ٨ـﮩﮩ٨ـ', 'ᰔᩚ', '𓆩ꨄ︎𓆪', '︶꒦꒷♡꒷꒦︶', 'ʚ♡ɞ', '♡', '🖤🩶🤍',
      '/) /)\n( • ༝•) /)/)\n( . .)\n( づ♡']},
    {id: 'divider', n: 'ตัวคั่น', k: 'divider line separator ตัวคั่น เส้นคั่น', d: [
      '▼△▼△▼△▼△▼△', '°。°。°。°。°。', '●～○～●～○～●～○～', '■━■━■━■━', 'তততততততততততত',
      '❉⊱•═•⊰❉⊱•═•⊰❉⊱•═•⊰❉', '╧╤╧╤╧╤╧╤╧╤╧╤╧╤╧╤', '✎﹏﹏﹏﹏﹏﹏', '✄┈┈┈┈┈┈┈┈┈┈', '▄▄▄▄▄▄▄▄▄▄▄▄▄',
      '◢◤◢◤◢◤◢◤◢◤◢', '▰▰▰▰▰▰▰▰▰▰▰▰', '჻჻჻჻჻჻჻჻჻჻჻჻჻', '◇─◇─◇─◇─◇─◇─', '➴➵➶➴➵➶➴➵➶', '◠◡◠◡◠◡◠◡◠◡◠◡',
      '𓂃𓂃𓂃𓄹𓄺𓂃𓂃𓂃𓂃𓂃𓂃', '⬛⬜⬛⬜⬛⬜', '⚫⚪⚫⚪⚫⚪', '◾◽◾◽◾◽', '▪️▫️▪️▫️▪️▫️']},
    {id: 'progress', n: 'ความคืบหน้า', k: 'progress bar loading ความคืบหน้า แถบ', d: [
      '▮▮▮▮▮▮▯▯▯▯▯', '■■■■■□□□', '█████▒▒▒', '▰▰▰▰▱▱▱▱', '▶ ılıılılılılılıılılı 00:38', '▶ 🔘────── 00:38']},
    {id: 'music', n: 'ดนตรี', k: 'music note ดนตรี เพลง', d: [
      '♪✷｡♫', '˚⊕♭ ﾟ. ♫*｡♪', '+♯*･ ﾟ. ♩⋆･♫', '+°♮ ﾟ･.']},
    {id: 'nature', n: 'ธรรมชาติและสัตว์', k: 'nature animal cat bear ธรรมชาติ สัตว์ แมว หมี', d: [
      '𓍊𓋼𓍊𓋼𓍊⚘', '𓆝 ̃˷ 𓆝 𓆟 𓆞', 'ʚїɞ', 'ʕ •ᴥ•ʔ', 'ʕʘ̅͜ʘ̅ʔ', '/ᐠ｡‸｡ᐟ\\', '▼(´ᴥ`)▼', '૮ ・ﻌ・ა', '(▽•̀(oo)•́ ▽)']},
    {id: 'emoticon', n: 'อีโมติคอน', k: 'emoticon kaomoji face อีโมติคอน หน้า', d: [
      '( ͡° ͜ʖ ͡°)', '¯\\_(ツ)_/¯', 'ヽ༼ຈل͜ຈ༽ﾉ', 'ಠ_ಠ', '¯\\(°_o)/¯', 'ᕕ( ᐛ )ᕗ', '(๑˃ᴗ˂)ﻭ', '(╥﹏╥)']}
  ];
  var PL = [['Instagram (ไบโอ)', 150], ['TikTok (ไบโอ)', 80], ['Discord (ชื่อเล่น)', 32], ['X / Twitter (ชื่อ)', 50], ['LINE (ชื่อ)', 20], ['ไม่จำกัด', 0]];
  var $ = function (i) { return document.getElementById(i); };
  var store = {
    get: function (k) { try { var v = JSON.parse(localStorage.getItem(k) || '[]'); return Array.isArray(v) ? v : []; } catch (e) { return []; } },
    set: function (k, v) { try { localStorage.setItem(k, JSON.stringify(v)); } catch (e) {} }
  };
  var fav = store.get('sm_fav'), rec = store.get('sm_rec'), tab = 'title', timer = 0;
  function inr(c, a, b) { return c >= a && !(c > b); }
  function risk(s) {
    for (var ch of s) {
      var c = ch.codePointAt(0);
      if (inr(c, 0x0300, 0x036F) || inr(c, 0x0980, 0x09FF) || inr(c, 0x0F00, 0x0FFF) || inr(c, 0x10000, 0x1CFFF) || inr(c, 0x1E000, 0x1EFFF)) { return true; }
    }
    return false;
  }
  function toast(m) {
    var t = $('sm-toast'); t.textContent = m; t.className = 'sm-toast show';
    clearTimeout(timer); timer = setTimeout(function () { t.className = 'sm-toast'; }, 1600);
  }
  function btn(label, fn, aria) {
    var b = document.createElement('button'); b.type = 'button'; b.textContent = label;
    if (aria) { b.setAttribute('aria-label', aria); }
    b.onclick = fn; return b;
  }
  function ttl() { return $('sm-title').value.trim() || 'title'; }
  function fill(s) { return s.split('title').join(ttl()); }
  function addRec(raw) {
    if (!raw) { return; }
    rec = [raw].concat(rec.filter(function (x) { return x !== raw; })).slice(0, 12);
    store.set('sm_rec', rec);
  }
  function fallbackCopy(t, done) {
    var a = document.createElement('textarea'); a.value = t; a.style.position = 'fixed'; a.style.opacity = '0';
    document.body.appendChild(a); a.select();
    try { document.execCommand('copy'); done(); } catch (e) { toast('คัดลอกไม่สำเร็จ ลองเลือกข้อความแล้วคัดลอกเอง'); }
    document.body.removeChild(a);
  }
  function copy(t, raw) {
    var done = function () { toast('คัดลอกแล้ว'); addRec(raw); };
    if (navigator.clipboard && window.isSecureContext) {
      navigator.clipboard.writeText(t).then(done, function () { fallbackCopy(t, done); });
    } else { fallbackCopy(t, done); }
  }
  function add(t) {
    var o = $('sm-out'), v = o.value, sep = '';
    if (v) { sep = $('sm-join').checked ? ' ' : '\n'; }
    o.value = v + sep + t; meta(); toast('เพิ่มในกล่องแล้ว');
  }
  function tog(raw) {
    var i = fav.indexOf(raw);
    if (i >= 0) { fav.splice(i, 1); } else { fav.push(raw); }
    store.set('sm_fav', fav); draw();
  }
  function card(raw) {
    var t = fill(raw), d = document.createElement('div'), pre = document.createElement('pre');
    d.className = 'sm-card';
    pre.textContent = t; pre.tabIndex = 0; pre.title = 'คลิกเพื่อคัดลอก';
    pre.onclick = function () { copy(t, raw); };
    pre.onkeydown = function (e) { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); copy(t, raw); } };
    d.appendChild(pre);
    if (risk(t)) { var w = document.createElement('span'); w.className = 'sm-flag'; w.textContent = 'อาจแสดงผลไม่ครบ'; d.appendChild(w); }
    var r = document.createElement('div'); r.className = 'sm-act';
    r.appendChild(btn('คัดลอก', function () { copy(t, raw); }));
    r.appendChild(btn('＋ เพิ่ม', function () { add(t); }));
    r.appendChild(btn(fav.indexOf(raw) >= 0 ? '★' : '☆', function () { tog(raw); }, 'บันทึกเป็นรายการโปรด'));
    d.appendChild(r); return d;
  }
  function draw() {
    var q = $('sm-q').value.trim().toLowerCase(), g = $('sm-grid'), items = [];
    g.textContent = '';
    if (q) {
      C.forEach(function (c) { if ((c.n + ' ' + c.k).toLowerCase().indexOf(q) >= 0) { items = items.concat(c.d); } });
    } else if (tab === 'fav') { items = fav; }
    else if (tab === 'rec') { items = rec; }
    else { items = C.filter(function (c) { return c.id === tab; })[0].d; }
    if (!items.length) {
      g.textContent = q ? 'ไม่พบหมวดที่ตรงกัน ลองค้นหาคำว่า หัวใจ ดาว หรือ border' : 'ยังไม่มีรายการ กด ☆ หรือคัดลอกสัญลักษณ์เพื่อเริ่มใช้งาน';
      return;
    }
    items.forEach(function (r) { g.appendChild(card(r)); });
  }
  function tabs() {
    var t = $('sm-tabs'), q = $('sm-q').value.trim(); t.textContent = '';
    C.concat([{id: 'fav', n: '★ โปรด'}, {id: 'rec', n: 'ล่าสุด'}]).forEach(function (c) {
      var b = btn(c.n, function () { tab = c.id; $('sm-q').value = ''; tabs(); draw(); });
      b.className = (c.id === tab && !q) ? 'on' : ''; t.appendChild(b);
    });
  }
  function meta() {
    var v = $('sm-out').value, n = Array.from(v).length, lim = PL[$('sm-plat').value][1], m = $('sm-meta');
    m.textContent = 'จำนวนตัวอักษร ' + n + (lim ? ' / ' + lim + ' (โดยประมาณ)' : '') + (lim && n > lim ? ' เกินขีดจำกัด' : '');
    m.className = 'sm-meta' + (lim && n > lim ? ' sm-over' : '');
    $('sm-warn').hidden = !risk(v);
    var cps = Array.from(v).filter(function (c) { return c.trim() !== ''; });
    $('sm-code').textContent = cps.length ? 'รหัส Unicode: ' + cps.slice(0, 40).map(function (c) { return 'U+' + c.codePointAt(0).toString(16).toUpperCase().padStart(4, '0'); }).join(' ') + (cps.length > 40 ? ' …' : '') : '';
  }
  function png() {
    var v = $('sm-out').value;
    if (!v.trim()) { toast('กล่องยังว่างอยู่'); return; }
    try {
      var L = v.split('\n'), f = 32, pad = 40, cv = document.createElement('canvas'), x = cv.getContext('2d'), w = 0;
      x.font = f + 'px sans-serif';
      L.forEach(function (l) { w = Math.max(w, x.measureText(l).width); });
      cv.width = Math.ceil(w) + pad * 2; cv.height = Math.ceil(L.length * f * 1.5) + pad * 2;
      x.fillStyle = '#ffffff'; x.fillRect(0, 0, cv.width, cv.height);
      x.fillStyle = '#111111'; x.font = f + 'px sans-serif'; x.textBaseline = 'top';
      L.forEach(function (l, i) { x.fillText(l, pad, pad + i * f * 1.5); });
      var a = document.createElement('a'); a.download = 'symbol-mashup.png'; a.href = cv.toDataURL('image/png');
      document.body.appendChild(a); a.click(); document.body.removeChild(a);
    } catch (e) { toast('บันทึกภาพไม่สำเร็จ'); }
  }
  PL.forEach(function (p, i) { var o = document.createElement('option'); o.value = i; o.textContent = p[0]; $('sm-plat').appendChild(o); });
  $('sm-title').oninput = draw;
  $('sm-q').oninput = function () { tabs(); draw(); };
  $('sm-out').oninput = meta;
  $('sm-plat').onchange = meta;
  $('sm-copy').onclick = function () { var v = $('sm-out').value; if (v) { copy(v); } else { toast('กล่องยังว่างอยู่'); } };
  $('sm-clear').onclick = function () { $('sm-out').value = ''; meta(); };
  $('sm-png').onclick = png;
  tabs(); draw(); meta();
})();
</script>
</div>

## วิธีใช้งานสัญลักษณ์มาชัพ

1. **พิมพ์ข้อความของคุณ** ในช่องแรก ระบบจะแทนที่คำว่า title ในทุกลวดลายให้ทันที เช่น พิมพ์ชื่อร้านแล้วดูผลกับขอบหรือหัวข้อได้เลย
2. **เลือกหมวด** จากแท็บด้านบน หรือพิมพ์ในช่องค้นหา เช่น หัวใจ ดาว หรือ border
3. **คัดลอก** โดยคลิกที่สัญลักษณ์ หรือกดปุ่มคัดลอกในการ์ด จากนั้นนำไปวางในแคปชั่น ไบโอ ข้อความแชต สไลด์ หรือรายงาน
4. **รวมหลายสัญลักษณ์ (มาชัพ)** โดยกด ＋ เพิ่ม ที่แต่ละการ์ด สัญลักษณ์จะเข้าไปอยู่ในกล่องมาชัพ จะเลือกต่อท้ายในบรรทัดเดียวกันหรือขึ้นบรรทัดใหม่ก็ได้ และแก้ไขข้อความในกล่องได้โดยตรง
5. **เช็กจำนวนตัวอักษร** โดยเลือกแพลตฟอร์ม ระบบจะแสดงจำนวนตัวอักษรเทียบกับขีดจำกัดโดยประมาณ และเตือนเมื่อเกิน
6. **ดูป้ายเตือนความเข้ากันได้** หากการ์ดขึ้นว่าอาจแสดงผลไม่ครบ ควรลองวางในแอปปลายทางก่อน เพราะบางเครื่องอาจแสดงเป็นช่องสี่เหลี่ยม
7. **บันทึกที่ใช้บ่อย** ด้วยปุ่ม ☆ รายการโปรดและรายการล่าสุดจะเก็บไว้ในเบราว์เซอร์ของคุณเท่านั้น
8. **บันทึกเป็นภาพ** ด้วยปุ่มบันทึกเป็นภาพ PNG หากต้องการนำผลลัพธ์ไปใช้เป็นรูปภาพ

## คำอธิบายศัพท์

- **สัญลักษณ์มาชัพ**: การนำตัวอักษรพิเศษและสัญลักษณ์หลายตัวมาประกอบกันเป็นลวดลายสำหรับตกแต่งข้อความ
- **สัญลักษณ์ข้อความ**: อักขระที่เป็นข้อความธรรมดา ต่างจากอิโมจิที่เป็นภาพ จึงคัดลอกและวางได้ง่าย และสีกับขนาดจะเปลี่ยนตามตัวอักษรรอบข้าง
- **ยูนิโค้ด (Unicode)**: มาตรฐานที่กำหนดรหัสให้ตัวอักษรและสัญลักษณ์ ทำให้ข้อความเดียวกันแสดงได้ในหลายอุปกรณ์
- **รหัส U+**: เลขประจำสัญลักษณ์แต่ละตัวในยูนิโค้ด เช่น U+2605 คือดาวทึบ ใช้ค้นหาหรือตรวจสอบสัญลักษณ์ได้แม่นยำ
- **หัวข้อ**: ลวดลายที่คั่นหน้าและหลังข้อความ ใช้เป็นหัวข้อโพสต์หรือชื่อหัวเรื่อง
- **ขอบ**: เส้นกรอบที่ล้อมข้อความ ใช้เน้นข้อความสำคัญหรือทำเป็นการ์ดข้อความ
- **ดาว**: สัญลักษณ์รูปดาวและลวดลายดาวสำหรับตกแต่งหรือให้คะแนน
- **ประกาย**: ลวดลายระยิบระยับ ให้ความรู้สึกนุ่มนวลหรือน่ารัก เหมาะกับแคปชั่นและไบโอ
- **หัวใจ**: สัญลักษณ์และลวดลายหัวใจสำหรับข้อความแสดงความรักหรือความขอบคุณ
- **ตัวคั่น**: เส้นหรือลวดลายแบ่งส่วนในข้อความยาว ช่วยให้อ่านง่ายขึ้น
- **ความคืบหน้า**: แถบที่ใช้บล็อกเต็มและบล็อกว่างแทนเปอร์เซ็นต์ เช่น แสดงความก้าวหน้าของงานหรือเป้าหมาย
- **ดนตรี**: โน้ตและเครื่องหมายดนตรี เหมาะกับข้อความเกี่ยวกับเพลงหรือคลิปเสียง
- **ธรรมชาติและสัตว์**: สัญลักษณ์รูปดอกไม้ สัตว์ และหน้าสัตว์ที่สร้างจากตัวอักษร
- **อีโมติคอน (คาโอโมจิ)**: ใบหน้าและท่าทางที่สร้างจากตัวอักษร ใช้แสดงอารมณ์ในข้อความ
- **กล่องมาชัพ**: พื้นที่รวมสัญลักษณ์ที่คุณเลือก แก้ไขได้ก่อนคัดลอกทั้งหมดหรือบันทึกเป็นภาพ
- **ความเข้ากันได้**: ระดับที่อุปกรณ์หรือแอปสามารถแสดงสัญลักษณ์นั้นได้ถูกต้อง สัญลักษณ์ที่พบน้อยอาจแสดงเป็นช่องสี่เหลี่ยม
- **ขีดจำกัดตัวอักษร**: จำนวนตัวอักษรสูงสุดที่แพลตฟอร์มอนุญาต เช่น ไบโอ Instagram หรือชื่อเล่น Discord ซึ่งอาจเปลี่ยนแปลงได้
- **รายการโปรดและล่าสุด**: ที่เก็บสัญลักษณ์ที่คุณกด ☆ และที่คัดลอกล่าสุด บันทึกไว้ในเบราว์เซอร์ของคุณ