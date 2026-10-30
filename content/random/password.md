---
title: สร้างรหัสผ่าน ออนไลน์ ฟรี
h1: สร้างรหัสผ่าน
description: สร้างรหัสผ่านออนไลน์ฟรี ปลอดภัย รวดเร็ว สุ่มในเบราว์เซอร์ของคุณ เลือกความยาว ตัวอักษร ตัวเลข และสัญลักษณ์ได้ตามต้องการ คัดลอกได้ทันที ไม่ต้องติดตั้งโปรแกรม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-30T09:00:00+07:00'
weight: 30
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สร้างรหัสผ่าน
- สร้างรหัสผ่าน ออนไลน์
- สุ่มและคำนวณ
---
<style>
#pw-tool{--pw-bd:#d0d5dd;--pw-bg:#f8fafc;--pw-ac:#2563eb;--pw-tx:inherit;max-width:640px;margin:0 auto 24px;padding:20px;border:1px solid var(--pw-bd);border-radius:12px;background:var(--pw-bg);color:#1f2937;box-sizing:border-box}
#pw-tool *{box-sizing:border-box}
#pw-tool .pw-row{margin:0 0 16px}
#pw-tool label{cursor:pointer}
#pw-tool .pw-title{display:block;font-weight:600;margin:0 0 6px}
#pw-tool .pw-len{display:flex;align-items:center;gap:12px}
#pw-tool input[type=range]{flex:1;min-width:0}
#pw-tool input[type=number]{width:72px;padding:6px 8px;border:1px solid var(--pw-bd);border-radius:6px;font-size:16px}
#pw-tool .pw-opts{display:flex;flex-wrap:wrap;gap:8px 18px}
#pw-tool .pw-opts label{display:inline-flex;align-items:center;gap:6px}
#pw-tool .pw-btn{display:inline-block;padding:10px 20px;border:0;border-radius:8px;background:var(--pw-ac);color:#fff;font-size:16px;cursor:pointer}
#pw-tool .pw-btn:hover{opacity:.9}
#pw-tool .pw-btn.pw-sec{background:#e5e7eb;color:#111827;padding:6px 12px;font-size:14px}
#pw-tool .pw-item{display:flex;align-items:center;gap:8px;margin:8px 0;padding:10px 12px;border:1px solid var(--pw-bd);border-radius:8px;background:#fff}
#pw-tool .pw-code{flex:1;min-width:0;font-family:ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;font-size:18px;word-break:break-all;color:#111827}
#pw-tool .pw-meta{margin:8px 0 0;font-size:14px;color:#4b5563;min-height:20px}
#pw-tool .pw-note{margin:12px 0 0;font-size:13px;color:#4b5563}
@media (prefers-color-scheme:dark){#pw-tool{--pw-bd:#374151;--pw-bg:#111827;color:#e5e7eb}#pw-tool .pw-item{background:#1f2937}#pw-tool .pw-code{color:#f9fafb}#pw-tool .pw-meta,#pw-tool .pw-note{color:#9ca3af}#pw-tool .pw-btn.pw-sec{background:#374151;color:#f9fafb}#pw-tool input[type=number]{background:#1f2937;color:#f9fafb}}
</style>
<div id="pw-tool">
<div class="pw-row">
<span class="pw-title">ความยาว</span>
<div class="pw-len">
<input type="range" id="pw-range" min="4" max="64" value="16" aria-label="ความยาวรหัสผ่าน">
<input type="number" id="pw-num" min="4" max="64" value="16" aria-label="ความยาวรหัสผ่าน (ตัวเลข)">
</div>
</div>
<div class="pw-row">
<span class="pw-title">ตัวอักษรที่ใช้</span>
<div class="pw-opts">
<label><input type="checkbox" id="pw-lower" checked> a - z</label>
<label><input type="checkbox" id="pw-upper" checked> A - Z</label>
<label><input type="checkbox" id="pw-digit" checked> 0 - 9</label>
<label><input type="checkbox" id="pw-symbol"> !@#$%</label>
</div>
</div>
<div class="pw-row">
<div class="pw-opts">
<label><input type="checkbox" id="pw-all" checked> ต้องมีครบทุกประเภทที่เลือก</label>
<label><input type="checkbox" id="pw-excl"> ไม่รวมตัวอักษรที่คล้ายกัน: <b>0 o O 1 i I l L</b></label>
</div>
</div>
<div class="pw-row">
<label class="pw-title" for="pw-count">จำนวนรหัสผ่าน</label>
<input type="number" id="pw-count" min="1" max="20" value="1">
</div>
<div class="pw-row">
<button type="button" class="pw-btn" id="pw-gen">สร้างรหัสผ่าน</button>
</div>
<div id="pw-out" aria-live="polite"></div>
<p class="pw-meta" id="pw-msg"></p>
<p class="pw-note">รหัสผ่านถูกสร้างในเบราว์เซอร์ของคุณเท่านั้น ไม่มีการส่งข้อมูลไปยังเซิร์ฟเวอร์ และระบบจะคัดลอกไปยังคลิปบอร์ดให้อัตโนมัติ</p>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var SETS = {
    lower: "abcdefghijklmnopqrstuvwxyz",
    upper: "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    digit: "0123456789",
    symbol: "!@#$%^\u0026*()-_=+[]{}?/~"
  };
  var SIMILAR = "0oO1iIlL";
  var timer = null;
  function rnd(n) {
    var max = Math.floor(4294967296 / n) * n;
    var buf = new Uint32Array(1);
    do { crypto.getRandomValues(buf); } while (buf[0] >= max);
    return buf[0] % n;
  }
  function clamp(v, lo, hi, def) {
    v = parseInt(v, 10);
    if (isNaN(v)) { return def; }
    return Math.min(hi, Math.max(lo, v));
  }
  function clean(str, excl) {
    if (!excl) { return str; }
    var out = "";
    for (var i = 0; i !== str.length; i++) {
      if (SIMILAR.indexOf(str.charAt(i)) === -1) { out += str.charAt(i); }
    }
    return out;
  }
  function build(len, sets, mustAll) {
    var pool = sets.join("");
    var chars = [];
    var i;
    if (mustAll) {
      for (i = 0; i !== sets.length; i++) {
        chars.push(sets[i].charAt(rnd(sets[i].length)));
      }
    }
    while (chars.length !== len) {
      chars.push(pool.charAt(rnd(pool.length)));
    }
    for (i = chars.length - 1; i > 0; i--) {
      var j = rnd(i + 1);
      var t = chars[i]; chars[i] = chars[j]; chars[j] = t;
    }
    return chars.join("");
  }
  function say(text) {
    $("pw-msg").textContent = text;
    clearTimeout(timer);
    if (text) { timer = setTimeout(function () { $("pw-msg").textContent = ""; }, 3000); }
  }
  function copy(text, done) {
    function fallback() {
      try {
        var ta = document.createElement("textarea");
        ta.value = text;
        ta.setAttribute("readonly", "");
        ta.style.position = "fixed";
        ta.style.opacity = "0";
        document.body.appendChild(ta);
        ta.select();
        var ok = document.execCommand("copy");
        document.body.removeChild(ta);
        done(ok);
      } catch (e) { done(false); }
    }
    if (navigator.clipboard) {
      navigator.clipboard.writeText(text).then(function () { done(true); }, fallback);
    } else {
      fallback();
    }
  }
  function addRow(pw) {
    var row = document.createElement("div");
    row.className = "pw-item";
    var code = document.createElement("span");
    code.className = "pw-code";
    code.textContent = pw;
    var btn = document.createElement("button");
    btn.type = "button";
    btn.className = "pw-btn pw-sec";
    btn.textContent = "คัดลอก";
    btn.addEventListener("click", function () {
      copy(pw, function (ok) { say(ok ? "คัดลอกแล้ว" : "คัดลอกไม่สำเร็จ กรุณาคัดลอกด้วยตนเอง"); });
    });
    row.appendChild(code);
    row.appendChild(btn);
    $("pw-out").appendChild(row);
  }
  function generate() {
    var len = clamp($("pw-num").value, 4, 64, 16);
    var count = clamp($("pw-count").value, 1, 20, 1);
    var excl = $("pw-excl").checked;
    var sets = [];
    var keys = ["lower", "upper", "digit", "symbol"];
    for (var i = 0; i !== keys.length; i++) {
      if ($("pw-" + keys[i]).checked) { sets.push(clean(SETS[keys[i]], excl)); }
    }
    $("pw-out").textContent = "";
    if (sets.length === 0) { say("กรุณาเลือกประเภทตัวอักษรอย่างน้อย 1 ประเภท"); return; }
    if (!window.crypto || !crypto.getRandomValues) { say("เบราว์เซอร์นี้ไม่รองรับการสุ่มแบบปลอดภัย"); return; }
    $("pw-num").value = len;
    $("pw-range").value = len;
    $("pw-count").value = count;
    var list = [];
    for (var k = 0; k !== count; k++) {
      var pw = build(len, sets, $("pw-all").checked);
      list.push(pw);
      addRow(pw);
    }
    copy(list.join("\n"), function (ok) {
      say(ok ? "สร้างและคัดลอกไปยังคลิปบอร์ดแล้ว" : "สร้างรหัสผ่านแล้ว (คัดลอกอัตโนมัติไม่สำเร็จ กดปุ่มคัดลอกได้เลย)");
    });
  }
  $("pw-range").addEventListener("input", function () { $("pw-num").value = this.value; });
  $("pw-num").addEventListener("input", function () {
    var v = parseInt(this.value, 10);
    if (!isNaN(v)) { $("pw-range").value = Math.min(64, Math.max(4, v)); }
  });
  $("pw-gen").addEventListener("click", generate);
  generate();
})();
</script>
</div>

## วิธีใช้งานเครื่องมือสร้างรหัสผ่าน

1. **กำหนดความยาว** เลื่อนแถบหรือพิมพ์ตัวเลข 4–64 ตัวอักษร แนะนำอย่างน้อย 12–16 ตัวขึ้นไป
2. **เลือกประเภทตัวอักษร** ติ๊กเลือก a-z, A-Z, 0-9 และสัญลักษณ์ ตามที่เว็บไซต์หรือแอปปลายทางอนุญาต
3. **ตั้งค่าเพิ่มเติม** เลือก "ต้องมีครบทุกประเภทที่เลือก" หรือ "ไม่รวมตัวอักษรที่คล้ายกัน" ได้ตามต้องการ
4. **ระบุจำนวน** หากต้องการหลายรหัสผ่านพร้อมกัน ใส่ตัวเลข 1–20
5. **กดปุ่ม "สร้างรหัสผ่าน"** ระบบจะสุ่มรหัสผ่านและคัดลอกไปยังคลิปบอร์ดให้อัตโนมัติ
6. **นำไปใช้** วางรหัสผ่านลงในช่องที่ต้องการ (Ctrl+V หรือกดค้างแล้วเลือกวาง) หรือกด "คัดลอก" ที่แต่ละรายการอีกครั้ง

## คำอธิบายศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยสังเขป |
|---|---|
| ความยาว | จำนวนตัวอักษรทั้งหมดในรหัสผ่าน ยิ่งยาวยิ่งเดาและเจาะได้ยากขึ้น |
| a - z | ตัวอักษรภาษาอังกฤษพิมพ์เล็ก เช่น a, b, c |
| A - Z | ตัวอักษรภาษาอังกฤษพิมพ์ใหญ่ เช่น A, B, C |
| 0 - 9 | ตัวเลขอารบิก ตั้งแต่ 0 ถึง 9 |
| สัญลักษณ์ | อักขระพิเศษ เช่น ! @ # $ % ช่วยเพิ่มความซับซ้อนของรหัสผ่าน |
| ต้องมีครบทุกประเภทที่เลือก | บังคับให้รหัสผ่านมีอย่างน้อย 1 ตัวจากทุกประเภทที่ติ๊กไว้ |
| ไม่รวมตัวอักษรที่คล้ายกัน | ตัดตัวที่หน้าตาคล้ายกัน (0 o O 1 i I l L) ออก เพื่อลดความสับสนเวลาอ่านหรือพิมพ์ตาม |
| จำนวนรหัสผ่าน | จำนวนรหัสผ่านที่ต้องการสร้างในครั้งเดียว |
| สุ่ม | การเลือกตัวอักษรแบบไม่มีรูปแบบที่คาดเดาได้ เครื่องมือนี้ใช้ตัวสุ่มที่ปลอดภัยของเบราว์เซอร์ (crypto) |
| คลิปบอร์ด | หน่วยความจำชั่วคราวของอุปกรณ์สำหรับเก็บข้อความที่คัดลอก เพื่อนำไปวางที่อื่น |

## เคล็ดลับความปลอดภัย

- ใช้รหัสผ่านที่ไม่ซ้ำกันในแต่ละบัญชี
- เก็บรหัสผ่านไว้ในโปรแกรมจัดการรหัสผ่านที่เชื่อถือได้ แทนการจดหรือส่งทางแชต
- เปิดการยืนยันตัวตนสองชั้น (2FA) ทุกครั้งที่ทำได้