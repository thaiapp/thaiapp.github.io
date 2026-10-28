---
title: ฟอนต์ Instagram ออนไลน์ ฟรี
h1: ฟอนต์ Instagram
description: แปลงข้อความเป็นฟอนต์ Instagram ตัวหนา ลายมือ ฟองสบู่ กลับหัว และอีกหลายสไตล์ ประมวลผลในเบราว์เซอร์ ไม่ต้องสมัคร คัดลอกไปวางในไบโอ แคปชัน และแชทได้ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-28T09:00:00+07:00'
weight: 11
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ฟอนต์ Instagram
- ฟอนต์ Instagram ออนไลน์
- ข้อความและตัวอักษร
---

เครื่องมือนี้ช่วยเปลี่ยนข้อความธรรมดาให้เป็นฟอนต์ตัวหนา ตัวเอียง ลายมือ ฟองสบู่ กลับหัว และอีกหลายสไตล์ ผลลัพธ์เป็นข้อความ Unicode ปกติ จึงคัดลอกไปวางใน Instagram, Facebook, X (Twitter), TikTok หรือแอปแชทได้ทันทีโดยไม่ต้องติดตั้งฟอนต์เพิ่ม

<style>
.igf{max-width:100%;margin:1.25rem 0}
.igf textarea{box-sizing:border-box;width:100%;padding:.75rem;font:inherit;font-size:1rem;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5);border-radius:8px;resize:vertical}
.igf-bar{display:flex;gap:.5rem;align-items:center;justify-content:space-between;margin:.5rem 0 1rem;flex-wrap:wrap}
.igf-note{font-size:.875rem;opacity:.75}
.igf button{cursor:pointer;font:inherit;font-size:.875rem;padding:.4rem .9rem;color:#fff;background:#2563eb;border:0;border-radius:6px}
.igf button.igf-ghost{color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5)}
.igf-row{display:flex;gap:.75rem;align-items:center;justify-content:space-between;padding:.7rem .85rem;margin:0 0 .5rem;border:1px solid rgba(128,128,128,.3);border-radius:8px}
.igf-body{min-width:0;flex:1}
.igf-name{display:block;margin-bottom:.15rem;font-size:.75rem;opacity:.7}
.igf-out{display:block;font-size:1.1rem;white-space:pre-wrap;word-break:break-word}
</style>
<div class="igf" id="igf-tool">
<label for="igf-input"><strong>พิมพ์ข้อความของคุณ</strong></label>
<textarea id="igf-input" rows="3" maxlength="500" placeholder="พิมพ์ข้อความภาษาอังกฤษที่นี่ เช่น Hello Instagram"></textarea>
<div class="igf-bar">
<span class="igf-note">แปลงเฉพาะตัวอักษร A-Z และตัวเลข 0-9 (ตัวอักษรไทยจะไม่เปลี่ยน)</span>
<button type="button" class="igf-ghost" id="igf-clear">ล้างข้อความ</button>
</div>
<div id="igf-list" aria-live="polite"></div>
</div>
<script>
(function () {
  var input = document.getElementById('igf-input');
  var list = document.getElementById('igf-list');
  var clearBtn = document.getElementById('igf-clear');
  if (!input || !list) { return; }
  function mk(U, L, D, ex) {
    return function (s) {
      return Array.from(s).map(function (ch) {
        if (ex && ex[ch]) { return ex[ch]; }
        var c = ch.codePointAt(0);
        if (U !== null && /[A-Z]/.test(ch)) { return String.fromCodePoint(U + c - 65); }
        if (L !== null && /[a-z]/.test(ch)) { return String.fromCodePoint(L + c - 97); }
        if (D !== null && /[0-9]/.test(ch)) { return String.fromCodePoint(D + c - 48); }
        return ch;
      }).join('');
    };
  }
  function fromMap(src, dst, lower) {
    var keys = Array.from(src);
    var vals = Array.from(dst);
    var map = {};
    keys.forEach(function (k, i) { map[k] = vals[i]; });
    return function (s) {
      return Array.from(lower ? s.toLowerCase() : s).map(function (ch) {
        return map[ch] !== undefined ? map[ch] : ch;
      }).join('');
    };
  }
  function bubble(s) {
    return Array.from(s).map(function (ch) {
      var c = ch.codePointAt(0);
      if (/[A-Z]/.test(ch)) { return String.fromCodePoint(0x24B6 + c - 65); }
      if (/[a-z]/.test(ch)) { return String.fromCodePoint(0x24D0 + c - 97); }
      if (ch === '0') { return String.fromCodePoint(0x24EA); }
      if (/[1-9]/.test(ch)) { return String.fromCodePoint(0x2460 + c - 49); }
      return ch;
    }).join('');
  }
  function blackBubble(s) {
    return Array.from(s).map(function (ch) {
      var c = ch.toUpperCase().codePointAt(0);
      if (/[A-Za-z]/.test(ch)) { return String.fromCodePoint(0x1F150 + c - 65); }
      if (ch === '0') { return String.fromCodePoint(0x24FF); }
      if (/[1-9]/.test(ch)) { return String.fromCodePoint(0x2776 + ch.charCodeAt(0) - 49); }
      return ch;
    }).join('');
  }
  function combine(mark) {
    return function (s) {
      return Array.from(s).map(function (ch) {
        return /\s/.test(ch) ? ch : ch + mark;
      }).join('');
    };
  }
  function zalgo(s) {
    return Array.from(s).map(function (ch) {
      if (/\s/.test(ch)) { return ch; }
      var out = ch;
      var n = 3 + Math.floor(Math.random() * 4);
      for (var i = 0; i !== n; i++) {
        out += String.fromCodePoint(0x0300 + Math.floor(Math.random() * 112));
      }
      return out;
    }).join('');
  }
  function invisible(s) {
    return Array.from(s).map(function (ch) {
      return /\s/.test(ch) ? ch : '\u2800';
    }).join('');
  }
  var flipFrom = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,?!';
  var flipTo = 'ɐqɔpǝɟƃɥᴉɾʞlɯuodbɹsʇnʌʍxʎz∀ᗺƆᗡƎℲ⅁HIſꓘꓶWNOԀΌꓤS⟂∩ΛMX⅄Z0ƖᄅƐㄣϛ9ㄥ86˙\'¿¡';
  var flipMap = fromMap(flipFrom, flipTo, false);
  function upsideDown(s) {
    return flipMap(Array.from(s).reverse().join(''));
  }
  var smallCaps = fromMap('abcdefghijklmnopqrstuvwxyz', 'ᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘǫʀꜱᴛᴜᴠᴡxʏᴢ', true);
  var styles = [
    { name: 'ตัวหนา (Bold)', fn: mk(0x1D400, 0x1D41A, 0x1D7CE) },
    { name: 'ตัวเอียง (Italic)', fn: mk(0x1D434, 0x1D44E, null, { h: '\u210E' }) },
    { name: 'ตัวหนาเอียง (Bold Italic)', fn: mk(0x1D468, 0x1D482, null) },
    { name: 'ลายมือ (Cursive)', fn: mk(0x1D4D0, 0x1D4EA, null) },
    { name: 'อังกฤษเก่า (Fraktur)', fn: mk(0x1D504, 0x1D51E, null, { C: '\u212D', H: '\u210C', I: '\u2111', R: '\u211C', Z: '\u2128' }) },
    { name: 'อังกฤษเก่าตัวหนา (Bold Fraktur)', fn: mk(0x1D56C, 0x1D586, null) },
    { name: 'โครงร่าง (Outline)', fn: mk(0x1D538, 0x1D552, 0x1D7D8, { C: '\u2102', H: '\u210D', N: '\u2115', P: '\u2119', Q: '\u211A', R: '\u211D', Z: '\u2124' }) },
    { name: 'ซานส์ (Sans)', fn: mk(0x1D5A0, 0x1D5BA, 0x1D7E2) },
    { name: 'ซานส์ตัวหนา (Sans Bold)', fn: mk(0x1D5D4, 0x1D5EE, 0x1D7EC) },
    { name: 'ซานส์ตัวเอียง (Sans Italic)', fn: mk(0x1D608, 0x1D622, null) },
    { name: 'ซานส์หนาเอียง (Sans Bold Italic)', fn: mk(0x1D63C, 0x1D656, null) },
    { name: 'โมโนสเปซ (Monospace)', fn: mk(0x1D670, 0x1D68A, 0x1D7F6) },
    { name: 'ตัวพิมพ์ใหญ่ขนาดเล็ก (Small Caps)', fn: smallCaps },
    { name: 'ฟองสบู่ (Bubble)', fn: bubble },
    { name: 'ฟองสบู่ทึบ (Filled Bubble)', fn: blackBubble },
    { name: 'สี่เหลี่ยม (Square)', fn: mk(0x1F130, 0x1F130, null) },
    { name: 'สี่เหลี่ยมทึบ (Filled Square)', fn: mk(0x1F170, 0x1F170, null) },
    { name: 'กลับหัว (Upside Down)', fn: upsideDown },
    { name: 'ขีดทับ (Strikethrough)', fn: combine('\u0336') },
    { name: 'ขีดเส้นใต้ (Underline)', fn: combine('\u0332') },
    { name: 'Zalgo (ตัวอักษรเพี้ยน)', fn: zalgo },
    { name: 'หมึกที่มองไม่เห็น (Invisible Ink)', fn: invisible, show: '(ข้อความถูกซ่อน กดคัดลอกเพื่อนำไปใช้)' }
  ];
  function fallbackCopy(text) {
    var ta = document.createElement('textarea');
    ta.value = text;
    ta.setAttribute('readonly', '');
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    try { document.execCommand('copy'); } catch (e) {}
    document.body.removeChild(ta);
  }
  function copyText(text, btn) {
    function done() {
      btn.textContent = 'คัดลอกแล้ว ✓';
      setTimeout(function () { btn.textContent = 'คัดลอก'; }, 1500);
    }
    if (navigator.clipboard && window.isSecureContext) {
      navigator.clipboard.writeText(text).then(done, function () { fallbackCopy(text); done(); });
    } else {
      fallbackCopy(text);
      done();
    }
  }
  function render() {
    var text = input.value || 'Instagram';
    list.textContent = '';
    styles.forEach(function (st) {
      var result = st.fn(text);
      var row = document.createElement('div');
      row.className = 'igf-row';
      var body = document.createElement('div');
      body.className = 'igf-body';
      var name = document.createElement('span');
      name.className = 'igf-name';
      name.textContent = st.name;
      var out = document.createElement('span');
      out.className = 'igf-out';
      out.textContent = st.show || result;
      body.appendChild(name);
      body.appendChild(out);
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.textContent = 'คัดลอก';
      btn.addEventListener('click', function () { copyText(result, btn); });
      row.appendChild(body);
      row.appendChild(btn);
      list.appendChild(row);
    });
  }
  input.addEventListener('input', render);
  if (clearBtn) {
    clearBtn.addEventListener('click', function () { input.value = ''; render(); input.focus(); });
  }
  render();
})();
</script>

## วิธีใช้งานเครื่องมือฟอนต์ Instagram

1. **พิมพ์ข้อความ** ลงในช่องด้านบน แนะนำให้พิมพ์เป็นภาษาอังกฤษหรือตัวเลข เช่น ชื่อ ไบโอ หรือแคปชัน
2. **ดูผลลัพธ์แบบเรียลไทม์** ระบบจะแสดงข้อความในทุกสไตล์ทันทีที่คุณพิมพ์ ไม่ต้องกดปุ่มแปลง
3. **เลือกสไตล์ที่ชอบ** แล้วกดปุ่ม **คัดลอก** ที่อยู่ด้านขวาของสไตล์นั้น
4. **นำไปวาง** ใน Instagram ได้ทุกที่ เช่น ชื่อโปรไฟล์ ไบโอ แคปชัน คอมเมนต์ สตอรี่ และข้อความแชท
5. **ปรับแต่งเพิ่มเติม** ด้วยการผสมหลายสไตล์ในประโยคเดียว หรือเพิ่มอีโมจิและสัญลักษณ์เพื่อให้ข้อความโดดเด่นยิ่งขึ้น

**ข้อควรรู้**

- ฟอนต์เหล่านี้ใช้ได้กับตัวอักษรละติน (A-Z, a-z) และตัวเลขเท่านั้น ตัวอักษรไทยจะแสดงเหมือนเดิม
- บางอุปกรณ์หรือแอปรุ่นเก่าอาจแสดงสไตล์ที่ไม่รองรับเป็นกล่องสี่เหลี่ยม (☐) ควรทดสอบก่อนใช้งานจริง
- โปรแกรมอ่านหน้าจออาจอ่านข้อความสไตล์พิเศษไม่ถูกต้อง ไม่ควรใช้กับข้อมูลสำคัญ เช่น ลิงก์ เบอร์โทร หรืออีเมล
- ข้อความที่ใส่ฟอนต์พิเศษอาจค้นหาด้วยคีย์เวิร์ดปกติไม่เจอ ควรใช้ร่วมกับข้อความธรรมดาในส่วนที่ต้องการให้ค้นหาได้

## คำอธิบายสไตล์ฟอนต์แต่ละแบบ

- **Unicode** คือมาตรฐานสากลที่กำหนดรหัสให้ตัวอักษรและสัญลักษณ์ทุกภาษา ฟอนต์ในเครื่องมือนี้ไม่ใช่ไฟล์ฟอนต์จริง แต่เป็นตัวอักษร Unicode ที่หน้าตาต่างกัน จึงคัดลอกและวางได้ทุกที่
- **ตัวหนา (Bold)** ตัวอักษรหนาเด่นชัด เช่น 𝐇𝐞𝐥𝐥𝐨 เหมาะกับหัวข้อหรือคำสำคัญ
- **ตัวเอียง (Italic)** ตัวอักษรเอียงเล็กน้อย เช่น 𝐻𝑒𝑙𝑙𝑜 ให้อารมณ์นุ่มนวล
- **ตัวหนาเอียง (Bold Italic)** รวมความหนาและความเอียงไว้ด้วยกัน เช่น 𝑯𝒆𝒍𝒍𝒐
- **ลายมือ (Cursive)** ตัวอักษรเขียนต่อเนื่องคล้ายลายมือหวัด เช่น 𝓗𝓮𝓵𝓵𝓸 นิยมใช้กับชื่อและไบโอ
- **อังกฤษเก่า (Fraktur / Old English)** ตัวอักษรโบราณแบบยุโรปที่ดูขลัง เช่น 𝔥𝔢𝔩𝔩𝔬 และมีแบบตัวหนา 𝖍𝖊𝖑𝖑𝖔
- **โครงร่าง (Outline / Double-struck)** ตัวอักษรเส้นคู่ดูโปร่ง เช่น ℍ𝕖𝕝𝕝𝕠
- **ซานส์ (Sans-serif)** ตัวอักษรไม่มีเชิง ดูเรียบและทันสมัย เช่น 𝖧𝖾𝗅𝗅𝗈 มีแบบหนาและเอียงให้เลือก
- **โมโนสเปซ (Monospace)** ตัวอักษรกว้างเท่ากันทุกตัวคล้ายโค้ดโปรแกรม เช่น 𝙷𝚎𝚕𝚕𝚘
- **ตัวพิมพ์ใหญ่ขนาดเล็ก (Small Caps)** ตัวพิมพ์ใหญ่ที่ย่อให้เท่าตัวพิมพ์เล็ก เช่น ʜᴇʟʟᴏ
- **ฟองสบู่ (Bubble)** ตัวอักษรในวงกลม เช่น Ⓗⓔⓛⓛⓞ และมีแบบวงกลมทึบ 🅗🅔🅛🅛🅞
- **สี่เหลี่ยม (Square)** ตัวอักษรในกรอบสี่เหลี่ยม เช่น 🄷🄴🄻🄻🄾 และมีแบบสี่เหลี่ยมทึบ 🅷🅴🅻🅻🅾
- **กลับหัว (Upside Down)** ตัวอักษรหมุนกลับและเรียงจากขวาไปซ้าย เช่น oןןǝH
- **ขีดทับ (Strikethrough)** ขีดเส้นตรงกลางข้อความ ใช้แสดงว่ายกเลิกหรือแก้ไขแล้ว
- **ขีดเส้นใต้ (Underline)** ขีดเส้นใต้ข้อความเพื่อเน้นคำ
- **Zalgo** ตัวอักษรที่ซ้อนเครื่องหมายหลายชั้นจนดูเพี้ยนหรือหลอน นิยมใช้สร้างบรรยากาศลึกลับ
- **หมึกที่มองไม่เห็น (Invisible Ink)** แปลงตัวอักษรเป็นช่องว่างพิเศษที่มองไม่เห็น ใช้ซ่อนข้อความหรือเว้นบรรทัดว่าง
- **อักขระผสม (Combining Character)** เครื่องหมายที่ซ้อนทับตัวอักษรก่อนหน้า เป็นหลักการเบื้องหลังสไตล์ขีดทับ ขีดเส้นใต้ และ Zalgo

เครื่องมือนี้ไม่มีส่วนเกี่ยวข้องกับ Instagram หรือ Meta ชื่อ โลโก้ และเครื่องหมายการค้าทั้งหมดเป็นของเจ้าของที่เกี่ยวข้อง