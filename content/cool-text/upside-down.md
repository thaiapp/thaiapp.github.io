---
title: ตัวสร้างข้อความกลับหัว ออนไลน์ ฟรี
h1: ตัวสร้างข้อความกลับหัว
description: ตัวสร้างข้อความกลับหัวออนไลน์ แปลงข้อความภาษาอังกฤษเป็นตัวอักษรกลับหัวได้หลายสไตล์ เห็นผลทันทีขณะพิมพ์ คัดลอกได้ในคลิกเดียว ใช้งานฟรี ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-31T09:00:00+07:00'
weight: 43
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- ตัวสร้างข้อความกลับหัว
- ตัวสร้างข้อความกลับหัว ออนไลน์
- ข้อความและตัวอักษร
---

<div class="ud-tool" id="ud-tool">
<label class="ud-label" for="ud-input">พิมพ์ข้อความภาษาอังกฤษของคุณ</label>
<textarea id="ud-input" class="ud-input" rows="3" placeholder="พิมพ์ข้อความที่นี่ เช่น hello world" spellcheck="false">hello world</textarea>
<div class="ud-actions">
<button type="button" id="ud-sample" class="ud-btn">สุ่มตัวอย่าง</button>
<button type="button" id="ud-clear" class="ud-btn">ล้างข้อความ</button>
</div>
<div id="ud-results" class="ud-results" aria-live="polite"></div>
</div>

<style>
.ud-tool{margin:1rem 0 1.5rem}
.ud-label{display:block;font-weight:600;margin-bottom:.5rem}
.ud-input{box-sizing:border-box;width:100%;padding:.75rem 1rem;font:inherit;font-size:1.05rem;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:10px;resize:vertical}
.ud-input:focus{outline:2px solid rgba(80,130,255,.6);outline-offset:1px}
.ud-actions{display:flex;flex-wrap:wrap;gap:.5rem;margin:.6rem 0 1rem}
.ud-btn{padding:.45rem .9rem;font:inherit;font-size:.9rem;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:8px;cursor:pointer}
.ud-btn:hover{background:rgba(128,128,128,.15)}
.ud-results{display:flex;flex-direction:column;gap:.75rem}
.ud-row{padding:.75rem 1rem;border:1px solid rgba(128,128,128,.35);border-radius:10px}
.ud-head{display:flex;align-items:center;justify-content:space-between;gap:.75rem;margin-bottom:.4rem}
.ud-name{font-size:.85rem;opacity:.75}
.ud-out{min-height:1.5em;font-size:1.15rem;line-height:1.6;white-space:pre-wrap;word-break:break-word;user-select:all}
.ud-note{font-size:.85rem;opacity:.75}
</style>

<script>
(function () {
  var input = document.getElementById('ud-input');
  var results = document.getElementById('ud-results');
  var clearBtn = document.getElementById('ud-clear');
  var sampleBtn = document.getElementById('ud-sample');
  if (!input || !results) { return; }

  var map = {};
  function addPairs(from, to) {
    var a = Array.from(from);
    for (var i = 0; i !== a.length; i++) { map[a[i]] = to[i]; }
  }
  addPairs('abcdefghijklmnopqrstuvwxyz',
    ['ɐ','q','ɔ','p','ǝ','ɟ','ƃ','ɥ','ᴉ','ɾ','ʞ','l','ɯ','u','o','d','b','ɹ','s','ʇ','n','ʌ','ʍ','x','ʎ','z']);
  addPairs('ABCDEFGHIJKLMNOPQRSTUVWXYZ',
    ['Ɐ','ꓭ','Ɔ','ꓷ','Ǝ','Ⅎ','⅁','H','I','ſ','ꓘ','ꓶ','W','N','O','Ԁ','Ό','ꓤ','S','ꓕ','∩','Ʌ','M','X','⅄','Z']);
  addPairs('0123456789', ['0','Ɩ','ᄅ','Ɛ','ㄣ','ϛ','9','ㄥ','8','6']);
  addPairs('.,\'"?!()[]{}&_;`', ['˙',"'",',','„','¿','¡',')','(',']','[','}','{','⅋','‾','؛',',']);

  function flipChars(s) {
    return Array.from(s).map(function (c) { return map[c] || c; }).join('');
  }
  function reverseChars(s) {
    return Array.from(s).reverse().join('');
  }
  function classic(s) { return reverseChars(flipChars(s)); }
  function mapWords(s, fn) {
    return s.split(/(\s+)/).map(function (p) { return /^\s+$/.test(p) ? p : fn(p); }).join('');
  }
  function mapLines(s, fn) {
    return s.split('\n').map(fn).join('\n');
  }

  var styles = [
    { label: 'กลับหัวมาตรฐาน (พลิก + กลับด้าน)', fn: classic },
    { label: 'พลิกตัวอักษรอย่างเดียว (เรียงซ้ายไปขวา)', fn: flipChars },
    { label: 'กลับด้านซ้ายขวา (ตัวอักษรไม่พลิก)', fn: reverseChars },
    { label: 'กลับหัว + ตัวพิมพ์เล็กทั้งหมด', fn: function (s) { return classic(s.toLowerCase()); } },
    { label: 'กลับหัว + ตัวพิมพ์ใหญ่ทั้งหมด', fn: function (s) { return classic(s.toUpperCase()); } },
    { label: 'กลับหัวทีละคำ (ลำดับคำเดิม)', fn: function (s) { return mapWords(s, classic); } },
    { label: 'กลับลำดับคำ (ตัวอักษรไม่พลิก)', fn: function (s) { return s.split(/(\s+)/).reverse().join(''); } },
    { label: 'กลับหัวทีละบรรทัด (ลำดับบรรทัดเดิม)', fn: function (s) { return mapLines(s, classic); } }
  ];

  var samples = ['hello world', 'Upside Down Text', 'I love Thailand 2026!', 'How are you today?', 'Good morning everyone'];
  var sampleIndex = 0;
  var rows = [];

  function copyText(text, btn) {
    if (!text) { return; }
    function done() {
      btn.textContent = 'คัดลอกแล้ว ✓';
      setTimeout(function () { btn.textContent = 'คัดลอก'; }, 1500);
    }
    function fallback() {
      var ta = document.createElement('textarea');
      ta.value = text;
      ta.style.position = 'fixed';
      ta.style.opacity = '0';
      document.body.appendChild(ta);
      ta.select();
      try { if (document.execCommand('copy')) { done(); } } catch (e) {}
      document.body.removeChild(ta);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else {
      fallback();
    }
  }

  function build() {
    styles.forEach(function (style) {
      var row = document.createElement('div');
      row.className = 'ud-row';
      var head = document.createElement('div');
      head.className = 'ud-head';
      var name = document.createElement('span');
      name.className = 'ud-name';
      name.textContent = style.label;
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'ud-btn';
      btn.textContent = 'คัดลอก';
      var out = document.createElement('div');
      out.className = 'ud-out';
      btn.addEventListener('click', function () { copyText(out.textContent, btn); });
      head.appendChild(name);
      head.appendChild(btn);
      row.appendChild(head);
      row.appendChild(out);
      results.appendChild(row);
      rows.push({ style: style, out: out });
    });
  }

  function render() {
    var value = input.value;
    rows.forEach(function (r) { r.out.textContent = r.style.fn(value); });
  }

  build();
  render();
  input.addEventListener('input', render);
  if (clearBtn) {
    clearBtn.addEventListener('click', function () { input.value = ''; render(); input.focus(); });
  }
  if (sampleBtn) {
    sampleBtn.addEventListener('click', function () {
      input.value = samples[sampleIndex % samples.length];
      sampleIndex += 1;
      render();
    });
  }
})();
</script>

## ข้อความกลับหัวคืออะไร

ข้อความกลับหัว (Upside Down Text) คือข้อความที่ถูกแปลงให้ดูเหมือนหมุนหน้ากระดาษ 180 องศา โดยใช้ตัวอักษรหน้าตาคล้ายกันจากชุดอักขระ Unicode จึงนำไปวางในโพสต์ แชต หรือชื่อโปรไฟล์ได้ทันที ไม่ต้องติดตั้งฟอนต์เพิ่ม

## วิธีการใช้งาน

1. พิมพ์หรือวางข้อความภาษาอังกฤษลงในช่องด้านบน หรือกดปุ่ม "สุ่มตัวอย่าง" เพื่อลองใช้งาน
2. ดูผลลัพธ์ของแต่ละสไตล์ที่ปรากฏทันทีขณะพิมพ์ ไม่ต้องกดปุ่มแปลง
3. กดปุ่ม "คัดลอก" ของสไตล์ที่ต้องการ
4. นำไปวางได้ทุกที่ เช่น Facebook, Instagram, X (Twitter), LINE และ TikTok
5. กด "ล้างข้อความ" เพื่อเริ่มใหม่

หมายเหตุ: เครื่องมือรองรับตัวอักษรภาษาอังกฤษ ตัวเลข และเครื่องหมายวรรคตอนพื้นฐาน ส่วนตัวอักษรภาษาไทยจะแสดงตามเดิมโดยไม่ถูกพลิก

## คำอธิบายแต่ละสไตล์และคำศัพท์

- **กลับหัวมาตรฐาน:** พลิกตัวอักษรแต่ละตัวและกลับลำดับทั้งข้อความ ผลลัพธ์จึงอ่านได้เมื่อหมุนหน้าจอ 180 องศา เป็นสไตล์ที่คนนิยมใช้มากที่สุด
- **พลิกตัวอักษรอย่างเดียว:** พลิกรูปตัวอักษรแต่ยังเรียงจากซ้ายไปขวาเหมือนเดิม เหมาะกับงานออกแบบที่ต้องการรูปทรงแปลกตาโดยไม่กลับลำดับ
- **กลับด้านซ้ายขวา:** สลับลำดับตัวอักษรจากหลังไปหน้า แต่ไม่พลิกรูปตัวอักษร (Reverse Text)
- **กลับหัว + ตัวพิมพ์เล็กทั้งหมด:** แปลงข้อความเป็นตัวพิมพ์เล็กก่อนพลิก ให้รูปตัวอักษรสม่ำเสมอและอ่านง่าย
- **กลับหัว + ตัวพิมพ์ใหญ่ทั้งหมด:** แปลงข้อความเป็นตัวพิมพ์ใหญ่ก่อนพลิก ให้ผลลัพธ์ดูหนักแน่นและเด่นขึ้น
- **กลับหัวทีละคำ:** พลิกเฉพาะตัวอักษรภายในแต่ละคำ แต่ลำดับคำยังเหมือนเดิม เหมาะกับประโยคสั้น ๆ ที่ต้องการให้ยังพอเดาความหมายได้
- **กลับลำดับคำ:** สลับตำแหน่งคำจากท้ายไปหน้า โดยตัวอักษรในแต่ละคำไม่ถูกพลิก
- **กลับหัวทีละบรรทัด:** พลิกแต่ละบรรทัดแยกกัน และคงลำดับบรรทัดไว้ตามที่พิมพ์ เหมาะกับบทกลอนหรือข้อความหลายบรรทัด
- **Unicode:** มาตรฐานรหัสอักขระที่รวมตัวอักษรและสัญลักษณ์จากหลายภาษา ทำให้ข้อความกลับหัวแสดงผลได้บนเกือบทุกแพลตฟอร์ม
- **การพลิก (Flip):** การแทนที่ตัวอักษรด้วยอักขระที่มีรูปทรงเหมือนตัวอักษรนั้นเมื่อหมุน 180 องศา เช่น a กลายเป็น ɐ
- **การกลับด้าน (Reverse):** การเรียงลำดับตัวอักษรจากหลังมาหน้า เช่น abc กลายเป็น cba

## ข้อควรรู้

- ข้อความกลับหัวเป็นตัวอักษร Unicode ไม่ใช่รูปภาพ จึงคัดลอกและวางได้ทันที
- บางแพลตฟอร์มหรือฟอนต์อาจแสดงอักขระพิเศษบางตัวไม่ครบ หากเห็นเป็นช่องสี่เหลี่ยม ให้ลองสไตล์อื่นหรือเปลี่ยนแอปที่ใช้โพสต์
- ไม่ควรใช้กับข้อมูลสำคัญที่ผู้อ่านต้องเข้าใจทันที เช่น ที่อยู่หรือเบอร์โทรศัพท์ เพราะผู้อ่านและโปรแกรมอ่านหน้าจออาจอ่านไม่ออก