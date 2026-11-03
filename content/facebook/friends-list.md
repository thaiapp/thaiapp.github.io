---
title: รายชื่อเพื่อนสนิท Facebook ออนไลน์ ฟรี
h1: รายชื่อเพื่อนสนิท Facebook
description: 'ดูรายชื่อเพื่อนสนิท Facebook ออนไลน์ ที่ถูกจัดอันดับตามความใกล้ชิด เพียงวางซอร์สโค้ดหน้าเว็บ ใช้ได้ทั้งมือถือและคอมพิวเตอร์ ไม่ต้องลงทะเบียน ใช้ได้ทันที'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T09:11:00+07:00'
weight: 58
tool: true
topic: social
appCategory: SocialNetworkingApplication
keywords:
- รายชื่อเพื่อนสนิท Facebook
- รายชื่อเพื่อนสนิท Facebook ออนไลน์
- โซเชียลมีเดีย
---

เครื่องมือนี้ช่วยดูรายชื่อเพื่อนสนิทบน Facebook ตามลำดับที่ระบบของ Facebook จัดไว้ให้ โดยอ่านจากซอร์สโค้ดหน้าเว็บที่คุณคัดลอกมาเอง ทุกอย่างประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการส่งข้อมูลออกไปที่ใด

<div class="fb-friends-tool">
<style>
.fb-friends-tool{margin:1.5em 0;font-family:inherit}
.fb-friends-tool textarea{width:100%;min-height:150px;padding:10px;box-sizing:border-box;border:1px solid #bbb;border-radius:8px;font-family:monospace;font-size:13px}
.fb-friends-tool .fbf-row{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:10px 0}
.fb-friends-tool button,.fb-friends-tool select{padding:8px 16px;border:1px solid #1877f2;border-radius:8px;font-size:15px;cursor:pointer}
.fb-friends-tool button.fbf-main{background:#1877f2;color:#fff}
.fb-friends-tool button.fbf-sub{background:#fff;color:#1877f2}
.fb-friends-tool select{background:#fff;color:#1877f2}
.fb-friends-tool #fbf-status{margin:8px 0;font-size:14px;min-height:1.4em}
.fb-friends-tool #fbf-status.fbf-error{color:#c62828}
.fb-friends-tool #fbf-status.fbf-ok{color:#2e7d32}
.fb-friends-tool #fbf-result{padding-left:1.6em}
.fb-friends-tool #fbf-result li{margin:4px 0}
</style>
<h3>วางซอร์สโค้ดที่นี่</h3>
<textarea id="fbf-input" placeholder="วางซอร์สโค้ดหน้า Facebook ที่คัดลอกมาลงในช่องนี้ (Ctrl + V)"></textarea>
<div class="fbf-row">
<button type="button" class="fbf-main" id="fbf-run">แสดงรายชื่อ</button>
<button type="button" class="fbf-sub" id="fbf-clear">ล้างข้อมูล</button>
<label for="fbf-limit">แสดง:</label>
<select id="fbf-limit">
<option value="10">10 อันดับแรก</option>
<option value="25">25 อันดับแรก</option>
<option value="50">50 อันดับแรก</option>
<option value="0" selected>ทั้งหมด</option>
</select>
</div>
<div id="fbf-status" role="status"></div>
<h3>ผลลัพธ์</h3>
<ol id="fbf-result"></ol>
<div class="fbf-row">
<button type="button" class="fbf-sub" id="fbf-copy">คัดลอกรายชื่อ</button>
</div>
<script>
(function () {
  var input = document.getElementById("fbf-input");
  var statusEl = document.getElementById("fbf-status");
  var resultEl = document.getElementById("fbf-result");
  var limitEl = document.getElementById("fbf-limit");
  var current = [];
  function setStatus(text, type) {
    statusEl.textContent = text;
    statusEl.className = type ? "fbf-" + type : "";
  }
  function decodeName(raw) {
    try {
      return JSON.parse('"' + raw + '"');
    } catch (e) {
      return raw;
    }
  }
  function findIds(src) {
    var keys = ["InitialChatFriendsList", "OrderedFriendsList"];
    var i, pos, chunk, m, ids, seen, found;
    for (i = 0; i !== keys.length; i++) {
      pos = src.indexOf(keys[i]);
      if (pos === -1) {
        continue;
      }
      chunk = src.slice(pos, pos + 60000);
      m = chunk.match(/"list":\s*\[([^\]]*)\]/);
      if (!m) {
        continue;
      }
      ids = [];
      seen = {};
      found = m[1].match(/\d{5,}/g) || [];
      found.forEach(function (id) {
        if (!seen[id]) {
          seen[id] = true;
          ids.push(id);
        }
      });
      if (ids.length !== 0) {
        return ids;
      }
    }
    return [];
  }
  function findNames(src) {
    var names = {};
    var re1 = /"id":"(\d{5,})","name":"((?:[^"\\]|\\.)*)"/g;
    var re2 = /"name":"((?:[^"\\]|\\.)*)","id":"(\d{5,})"/g;
    var m;
    while ((m = re1.exec(src)) !== null) {
      if (!names[m[1]]) {
        names[m[1]] = decodeName(m[2]);
      }
    }
    while ((m = re2.exec(src)) !== null) {
      if (!names[m[2]]) {
        names[m[2]] = decodeName(m[1]);
      }
    }
    return names;
  }
  function render() {
    var limit = parseInt(limitEl.value, 10);
    var list = limit === 0 ? current : current.slice(0, limit);
    resultEl.textContent = "";
    list.forEach(function (item) {
      var li = document.createElement("li");
      var a = document.createElement("a");
      a.href = "https://www.facebook.com/" + item.id;
      a.target = "_blank";
      a.rel = "noopener noreferrer";
      a.textContent = item.name || "ID: " + item.id;
      li.appendChild(a);
      resultEl.appendChild(li);
    });
  }
  function run() {
    var src = input.value;
    if (src.replace(/\s/g, "") === "") {
      current = [];
      render();
      setStatus("กรุณาวางซอร์สโค้ดหน้า Facebook ลงในช่องด้านบนก่อน", "error");
      return;
    }
    var ids = findIds(src);
    if (ids.length === 0) {
      current = [];
      render();
      setStatus("ไม่พบข้อมูลรายชื่อเพื่อนในซอร์สโค้ดนี้ กรุณาตรวจสอบว่าคัดลอกครบทั้งหมด (Ctrl + A แล้ว Ctrl + C) จากหน้า Facebook ที่ล็อกอินอยู่", "error");
      return;
    }
    var names = findNames(src);
    current = ids.map(function (id, index) {
      return { rank: index + 1, id: id, name: names[id] || "" };
    });
    render();
    setStatus("พบเพื่อนทั้งหมด " + current.length + " รายการ", "ok");
  }
  function copyText(text) {
    if (navigator.clipboard && navigator.clipboard.writeText) {
      return navigator.clipboard.writeText(text);
    }
    return new Promise(function (resolve, reject) {
      var ta = document.createElement("textarea");
      ta.value = text;
      document.body.appendChild(ta);
      ta.select();
      try {
        document.execCommand("copy");
        resolve();
      } catch (e) {
        reject(e);
      } finally {
        document.body.removeChild(ta);
      }
    });
  }
  document.getElementById("fbf-run").addEventListener("click", run);
  limitEl.addEventListener("change", render);
  document.getElementById("fbf-clear").addEventListener("click", function () {
    input.value = "";
    current = [];
    render();
    setStatus("", "");
  });
  document.getElementById("fbf-copy").addEventListener("click", function () {
    var limit = parseInt(limitEl.value, 10);
    var list = limit === 0 ? current : current.slice(0, limit);
    if (list.length === 0) {
      setStatus("ยังไม่มีรายชื่อให้คัดลอก", "error");
      return;
    }
    var text = list.map(function (item) {
      return item.rank + ". " + (item.name || "ID: " + item.id);
    }).join("\n");
    copyText(text).then(function () {
      setStatus("คัดลอกรายชื่อเรียบร้อยแล้ว", "ok");
    }, function () {
      setStatus("คัดลอกไม่สำเร็จ กรุณาเลือกข้อความและคัดลอกด้วยตัวเอง", "error");
    });
  });
})();
</script>
</div>

## วิธีใช้งานเครื่องมือ

1. เปิด [Facebook](https://www.facebook.com/) บนคอมพิวเตอร์และล็อกอินบัญชีของคุณให้เรียบร้อย
2. เปิดซอร์สโค้ดของหน้า โดยคลิกขวาที่พื้นที่ว่างแล้วเลือก "มุมมองที่มาของหน้า" (View page source) หรือกด Ctrl + U (บน Mac กด ⌘ + U หรือ option + ⌘ + U)
3. เลือกทั้งหมดด้วย Ctrl + A (Mac: ⌘ + A) แล้วคัดลอกด้วย Ctrl + C (Mac: ⌘ + C)
4. กลับมาที่หน้านี้ วางข้อความลงในช่อง "วางซอร์สโค้ดที่นี่" ด้วย Ctrl + V (Mac: ⌘ + V)
5. กดปุ่ม "แสดงรายชื่อ" เพื่อดูเพื่อนที่ถูกจัดอันดับ เลือกจำนวนที่ต้องการแสดงได้จากเมนู และกด "คัดลอกรายชื่อ" หากต้องการนำไปใช้ต่อ

หมายเหตุ: วิธีนี้ใช้ได้ดีที่สุดกับคอมพิวเตอร์ หากใช้มือถือ ให้เปิด Facebook ในเบราว์เซอร์แบบเดสก์ท็อปก่อน เนื่องจากโครงสร้างหน้าเว็บของ Facebook เปลี่ยนแปลงได้เสมอ บางครั้งอาจไม่พบข้อมูลในซอร์สโค้ด

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **รายชื่อเพื่อนสนิท**: รายชื่อเพื่อนที่ Facebook จัดลำดับให้ตามความสัมพันธ์บนแพลตฟอร์ม เช่น การพูดคุยหรือการโต้ตอบบ่อย ไม่ใช่รายชื่อที่ Facebook ประกาศเป็นทางการ
- **ซอร์สโค้ดหน้าเว็บ (Page Source)**: โค้ดต้นฉบับ HTML ของหน้าเว็บที่เบราว์เซอร์ใช้แสดงผล ซึ่งมีข้อมูลที่ใช้สร้างหน้านั้นรวมอยู่ด้วย
- **มุมมองที่มาของหน้า (View Page Source)**: คำสั่งในเบราว์เซอร์สำหรับเปิดดูซอร์สโค้ด ใช้ทางลัด Ctrl + U
- **เลือกทั้งหมด (Select All)**: คำสั่งเลือกข้อความทั้งหน้า ทางลัดคือ Ctrl + A
- **คัดลอก (Copy)**: คำสั่งเก็บข้อความที่เลือกไว้ในคลิปบอร์ด ทางลัดคือ Ctrl + C
- **วาง (Paste)**: คำสั่งนำข้อความจากคลิปบอร์ดมาใส่ในช่องที่ต้องการ ทางลัดคือ Ctrl + V
- **ID ของเพื่อน (Friend ID)**: รหัสตัวเลขประจำบัญชี Facebook ของแต่ละคน หากเครื่องมือหาชื่อไม่พบ จะแสดงเป็น ID แทน และคลิกเพื่อเปิดโปรไฟล์ได้
- **อันดับ (Rank)**: ลำดับของเพื่อนในรายชื่อ โดยลำดับที่ 1 คือคนที่ Facebook จัดว่าสนิทที่สุด
- **แสดงรายชื่อ**: ปุ่มสำหรับอ่านซอร์สโค้ดที่วางไว้และสร้างรายชื่อเพื่อนตามลำดับ
- **ล้างข้อมูล**: ปุ่มลบข้อความและผลลัพธ์ทั้งหมดออกจากหน้านี้
- **คัดลอกรายชื่อ**: ปุ่มคัดลอกผลลัพธ์เป็นข้อความเรียงตามอันดับ เพื่อนำไปวางที่อื่น

## ข้อควรรู้

- ข้อมูลทั้งหมดถูกประมวลผลในเบราว์เซอร์ของคุณเท่านั้น ไม่มีการอัปโหลดหรือเก็บซอร์สโค้ดไว้
- ซอร์สโค้ดของ Facebook อาจมีข้อมูลส่วนตัว จึงไม่ควรส่งต่อหรือแชร์ให้ผู้อื่น
- ผลลัพธ์เป็นเพียงการประมาณจากระบบของ Facebook และอาจเปลี่ยนไปตามเวลา
- เครื่องมือนี้ไม่เกี่ยวข้องกับ Facebook โดยตรง Facebook เป็นเครื่องหมายการค้าจดทะเบียนของ Meta Platforms, Inc.