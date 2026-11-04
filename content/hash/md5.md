---
title: เครื่องสร้างแฮช MD5 ออนไลน์ ฟรี
h1: เครื่องสร้างแฮช MD5
description: เครื่องสร้างแฮช MD5 ออนไลน์ ฟรี แปลงข้อความเป็นแฮช MD5 32 ตัวอักษรทันทีขณะพิมพ์ ประมวลผลในเบราว์เซอร์ ปลอดภัย คัดลอกผลลัพธ์ได้ในคลิกเดียว ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-04T09:00:00+07:00'
weight: 70
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เครื่องสร้างแฮช MD5
- เครื่องสร้างแฮช MD5 ออนไลน์
- เครื่องมือนักพัฒนา
---

สร้างแฮช MD5 จากข้อความ พิมพ์หรือวางข้อความด้านล่าง แฮชจะอัปเดตทันทีทุกครั้งที่กดแป้น

<div id="md5-tool" style="max-width:720px;margin:1rem 0;font-family:inherit;">
<textarea id="md5-input" rows="5" placeholder="พิมพ์หรือวางข้อความที่นี่..." style="width:100%;box-sizing:border-box;padding:12px;border:1px solid #bbb;border-radius:8px;font-size:1rem;font-family:inherit;resize:vertical;"></textarea>
<div style="display:flex;justify-content:space-between;align-items:center;margin:8px 0;font-size:.9rem;color:#666;">
<span><span id="md5-bytes">0</span> ไบต์ · MD5</span>
<button type="button" id="md5-clear" style="padding:6px 14px;border:1px solid #bbb;border-radius:6px;background:transparent;color:inherit;cursor:pointer;">ล้าง</button>
</div>
<div style="display:flex;gap:8px;align-items:stretch;">
<code id="md5-output" style="flex:1;padding:12px;border:1px solid #bbb;border-radius:8px;word-break:break-all;font-size:1rem;cursor:pointer;">...</code>
<button type="button" id="md5-copy" style="padding:0 16px;border:1px solid #bbb;border-radius:8px;background:transparent;color:inherit;cursor:pointer;">คัดลอก</button>
</div>
<p id="md5-hint" style="margin:8px 0 0;font-size:.9rem;color:#666;">— ป้อนข้อความด้านบนเพื่อสร้างแฮช —</p>
</div>
<script>
(function () {
  function md5(bytes) {
    var K = [], S = [7,12,17,22,7,12,17,22,7,12,17,22,7,12,17,22,5,9,14,20,5,9,14,20,5,9,14,20,5,9,14,20,4,11,16,23,4,11,16,23,4,11,16,23,4,11,16,23,6,10,15,21,6,10,15,21,6,10,15,21,6,10,15,21];
    for (var i = 0; i < 64; i++) K[i] = Math.floor(Math.abs(Math.sin(i + 1)) * 4294967296) >>> 0;
    var len = bytes.length;
    var total = (((len + 8) >>> 6) + 1) << 6;
    var buf = new Uint8Array(total);
    buf.set(bytes);
    buf[len] = 0x80;
    var dv = new DataView(buf.buffer);
    dv.setUint32(total - 8, (len << 3) >>> 0, true);
    dv.setUint32(total - 4, Math.floor(len / 536870912), true);
    var a0 = 0x67452301, b0 = 0xefcdab89, c0 = 0x98badcfe, d0 = 0x10325476;
    for (var off = 0; off < total; off += 64) {
      var M = [];
      for (var j = 0; j < 16; j++) M[j] = dv.getUint32(off + j * 4, true);
      var A = a0, B = b0, C = c0, D = d0;
      for (var k = 0; k < 64; k++) {
        var F, g;
        if (k < 16) { F = (B & C) | (~B & D); g = k; }
        else if (k < 32) { F = (D & B) | (~D & C); g = (5 * k + 1) % 16; }
        else if (k < 48) { F = B ^ C ^ D; g = (3 * k + 5) % 16; }
        else { F = C ^ (B | ~D); g = (7 * k) % 16; }
        F = (F + A + K[k] + M[g]) >>> 0;
        A = D; D = C; C = B;
        B = (B + ((F << S[k]) | (F >>> (32 - S[k])))) >>> 0;
      }
      a0 = (a0 + A) >>> 0; b0 = (b0 + B) >>> 0; c0 = (c0 + C) >>> 0; d0 = (d0 + D) >>> 0;
    }
    var out = new DataView(new ArrayBuffer(16));
    out.setUint32(0, a0, true); out.setUint32(4, b0, true); out.setUint32(8, c0, true); out.setUint32(12, d0, true);
    var hex = "";
    for (var n = 0; n < 16; n++) hex += ("0" + out.getUint8(n).toString(16)).slice(-2);
    return hex;
  }
  function utf8(str) {
    if (window.TextEncoder) return new TextEncoder().encode(str);
    var s = unescape(encodeURIComponent(str)), arr = new Uint8Array(s.length);
    for (var i = 0; i < s.length; i++) arr[i] = s.charCodeAt(i);
    return arr;
  }
  var input = document.getElementById("md5-input");
  var output = document.getElementById("md5-output");
  var bytesEl = document.getElementById("md5-bytes");
  var hint = document.getElementById("md5-hint");
  var clearBtn = document.getElementById("md5-clear");
  var copyBtn = document.getElementById("md5-copy");
  var hash = "";
  function update() {
    var data = utf8(input.value);
    bytesEl.textContent = data.length;
    if (input.value === "") {
      hash = "";
      output.textContent = "...";
      hint.textContent = "— ป้อนข้อความด้านบนเพื่อสร้างแฮช —";
    } else {
      hash = md5(data);
      output.textContent = hash;
      hint.textContent = "คลิกที่ผลลัพธ์เพื่อคัดลอก";
    }
  }
  function copy() {
    if (!hash) return;
    function done() {
      copyBtn.textContent = "คัดลอกแล้ว ✓";
      setTimeout(function () { copyBtn.textContent = "คัดลอก"; }, 1500);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(hash).then(done, function () {});
    } else {
      var t = document.createElement("textarea");
      t.value = hash;
      document.body.appendChild(t);
      t.select();
      try { document.execCommand("copy"); done(); } catch (e) {}
      document.body.removeChild(t);
    }
  }
  input.addEventListener("input", update);
  clearBtn.addEventListener("click", function () { input.value = ""; update(); input.focus(); });
  copyBtn.addEventListener("click", copy);
  output.addEventListener("click", copy);
  update();
})();
</script>

## MD5 คืออะไร

MD5 (Message-Digest Algorithm 5) คืออัลกอริทึมแฮชที่แปลงข้อความหรือข้อมูลที่มีความยาวเท่าใดก็ได้ ให้กลายเป็นค่าสรุปขนาด 128 บิต แสดงเป็นเลขฐานสิบหก 32 ตัวอักษร ข้อความเดิมเหมือนกันจะได้แฮชเหมือนเดิมเสมอ แต่เปลี่ยนเพียงตัวอักษรเดียวแฮชจะเปลี่ยนไปทั้งหมด

## วิธีใช้งาน

1. พิมพ์หรือวางข้อความที่ต้องการลงในช่องด้านบน
2. แฮช MD5 จะแสดงทันทีในช่องผลลัพธ์ และอัปเดตทุกครั้งที่แก้ไขข้อความ
3. คลิกที่ผลลัพธ์หรือกดปุ่ม **คัดลอก** เพื่อคัดลอกแฮชไปใช้งาน
4. กดปุ่ม **ล้าง** เพื่อเริ่มต้นใหม่

การประมวลผลทำงานในเบราว์เซอร์ของคุณทั้งหมด ข้อความที่ป้อนจะไม่ถูกส่งไปยังเซิร์ฟเวอร์

## คำอธิบายศัพท์

- **แฮช (Hash)**: ค่าลายนิ้วมือของข้อมูลที่ได้จากการคำนวณทางคณิตศาสตร์ ความยาวคงที่ และย้อนกลับไปเป็นข้อความเดิมไม่ได้
- **MD5**: อัลกอริทึมแฮชที่ให้ผลลัพธ์ 128 บิต ทำงานเร็วและใช้งานแพร่หลายมาก
- **ไบต์ (Byte)**: หน่วยขนาดข้อมูล ข้อความภาษาไทยหนึ่งตัวอักษรใช้ 3 ไบต์ใน UTF-8 ส่วนตัวอักษรอังกฤษใช้ 1 ไบต์
- **เลขฐานสิบหก (Hexadecimal)**: ระบบเลขที่ใช้ 0-9 และ a-f ใช้แสดงค่าแฮชให้อ่านและคัดลอกง่าย
- **128 บิต**: ขนาดค่าแฮชของ MD5 เท่ากับ 16 ไบต์ หรือ 32 ตัวอักษรฐานสิบหก
- **UTF-8**: รูปแบบการเข้ารหัสตัวอักษรมาตรฐานที่เครื่องมือนี้ใช้แปลงข้อความเป็นไบต์ก่อนคำนวณแฮช
- **การชนกัน (Collision)**: กรณีที่ข้อมูลต่างกันให้แฮชเดียวกัน MD5 มีวิธีโจมตีลักษณะนี้ที่ทราบกันมาตั้งแต่ปี 2004
- **Checksum**: ค่าตรวจสอบความถูกต้องของไฟล์หรือข้อมูล ใช้เทียบว่าข้อมูลที่ดาวน์โหลดมาไม่เสียหายหรือถูกแก้ไข
- **ETag**: ตัวระบุเวอร์ชันของไฟล์หรือหน้าเว็บ ใช้ในระบบแคชของ HTTP
- **Cache key**: คีย์สำหรับเก็บและค้นหาข้อมูลในแคช มักสร้างจากแฮชของข้อมูล

## การใช้งานที่เหมาะสม

MD5 ยังเหมาะกับงานที่ต้องการลายนิ้วมือที่รวดเร็ว เช่น คีย์แคช, ETag, การตรวจหาข้อมูลซ้ำ และค่าตรวจสอบข้างลิงก์ดาวน์โหลด

**ไม่ควร**ใช้ MD5 กับรหัสผ่านหรือลายเซ็นดิจิทัล เพราะไม่ปลอดภัยเพียงพอ สำหรับการแฮชรหัสผ่านควรใช้ bcrypt หรือ Argon2 แทน