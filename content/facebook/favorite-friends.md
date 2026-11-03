---
title: เพื่อน Facebook คนโปรดของฉัน ออนไลน์ ฟรี
h1: เพื่อน Facebook คนโปรดของฉัน
description: 'ดูเพื่อน Facebook คนโปรดของฉันตามลำดับที่ Facebook จัดอันดับไว้ วางซอร์สโค้ดหน้าเว็บแล้วดูรายชื่อได้ทันที ใช้ผ่านเบราว์เซอร์ ฟรี ไม่ต้องติดตั้งแอปเสริม'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T09:14:00+07:00'
weight: 59
tool: true
topic: social
appCategory: SocialNetworkingApplication
keywords:
- เพื่อน Facebook คนโปรดของฉัน
- เพื่อน Facebook คนโปรดของฉัน ออนไลน์
- โซเชียลมีเดีย
---

เมื่อคุณค้นหาเพื่อนใน Facebook รายชื่อที่คุณคุยหรือโต้ตอบด้วยบ่อยมักจะขึ้นมาอยู่ด้านบนสุดเสมอ เพราะ Facebook เก็บลำดับความสนิทของเพื่อนแต่ละคนไว้ในซอร์สโค้ดของหน้าเว็บ เครื่องมือนี้ช่วยอ่านลำดับนั้นและแสดงเป็นรายชื่อเพื่อนคนโปรดของคุณ โดยประมวลผลในเบราว์เซอร์ของคุณเองทั้งหมด ไม่มีการอัปโหลดข้อมูลไปที่ใด

※ กรุณาใช้เครื่องมือนี้กับบัญชี Facebook ของคุณเองเท่านั้น ห้ามใช้ตรวจสอบข้อมูลของผู้อื่นโดยไม่ได้รับอนุญาต เพื่อหลีกเลี่ยงปัญหาทางกฎหมาย ※

## วิธีใช้งาน

1. เปิด [Facebook](https://www.facebook.com/) แล้วเข้าสู่ระบบด้วยบัญชีของคุณ จากนั้นเปิดซอร์สโค้ดหน้าเว็บ: คลิกขวาที่พื้นที่ว่างแล้วเลือก "ดูซอร์สของหน้า" หรือกด Ctrl + U (บน Mac กด ⌘ + Option + U)
2. คลิกที่หน้าซอร์สโค้ด กด Ctrl + A เพื่อเลือกทั้งหมด แล้วกด Ctrl + C เพื่อคัดลอก
3. วางลงในช่อง "ขั้นตอนที่ 1" ด้านล่าง แล้วกดปุ่ม "ตรวจสอบซอร์สโค้ด"
4. เครื่องมือจะสร้างลิงก์ Facebook AJAX API ให้ คลิกลิงก์นั้น (เปิดในแท็บใหม่ขณะที่ล็อกอินอยู่) กด Ctrl + A แล้ว Ctrl + C เพื่อคัดลอกข้อความทั้งหมดที่แสดง
5. วางลงในช่อง "ขั้นตอนที่ 2" แล้วกดปุ่ม "แสดงรายชื่อเพื่อน" ระบบจะแสดงเพื่อนเรียงจากคนที่สนิทที่สุดลงไป
6. กด "คัดลอกรายชื่อ" หากต้องการนำรายชื่อไปใช้ต่อ หรือกด "ล้างข้อมูล" เพื่อเริ่มใหม่

<style>
.ff-tool{border:1px solid rgba(128,128,128,.4);border-radius:10px;padding:16px;margin:16px 0}
.ff-tool label{display:block;font-weight:bold;margin:12px 0 6px}
.ff-tool textarea{width:100%;min-height:110px;box-sizing:border-box;padding:8px;font-family:monospace;font-size:13px}
.ff-tool button{margin:8px 8px 0 0;padding:8px 16px;border-radius:6px;border:1px solid rgba(128,128,128,.6);cursor:pointer;font-size:15px}
.ff-msg{margin:10px 0;font-size:14px;word-break:break-all}
.ff-err{color:#c0392b}
.ff-ok{color:#1e8449}
.ff-result li{margin:4px 0}
</style>
<div class="ff-tool" id="ffTool">
<label for="ffSource">ขั้นตอนที่ 1: วางซอร์สโค้ดหน้า Facebook</label>
<textarea id="ffSource" placeholder="วางซอร์สโค้ดที่คัดลอกมาที่นี่"></textarea>
<button type="button" id="ffCheck">ตรวจสอบซอร์สโค้ด</button>
<div class="ff-msg" id="ffMsg1"></div>
<label for="ffApi">ขั้นตอนที่ 2: วางข้อมูลจาก Facebook AJAX API</label>
<textarea id="ffApi" placeholder="วางข้อมูลที่คัดลอกจากลิงก์ AJAX API ที่นี่"></textarea>
<button type="button" id="ffShow">แสดงรายชื่อเพื่อน</button>
<button type="button" id="ffCopy">คัดลอกรายชื่อ</button>
<button type="button" id="ffReset">ล้างข้อมูล</button>
<div class="ff-msg" id="ffMsg2"></div>
<h3>ผลลัพธ์</h3>
<ol class="ff-result" id="ffResult"></ol>
</div>
<script>
(function () {
var state = { uid: "", ids: [], lines: [] };
function el(id) { return document.getElementById(id); }
function say(id, text, cls) {
var box = el(id);
box.className = "ff-msg " + (cls || "");
box.textContent = text;
}
function parseSource(text) {
var uidMatch = text.match(/"(?:USER_ID|ACCOUNT_ID|actorID|viewerID)":"(\d+)"/);
var listMatch = text.match(/InitialChatFriendsList[\s\S]*?"list":\[([^\]]*)\]/);
var ids = [];
if (listMatch) {
var re = /"(\d+)(?:-\d+)?"/g;
var m;
while ((m = re.exec(listMatch[1])) !== null) {
if (ids.indexOf(m[1]) === -1) { ids.push(m[1]); }
}
}
return { uid: uidMatch ? uidMatch[1] : "", ids: ids };
}
function parseNames(text) {
var map = {};
var clean = text.trim().replace(/^for\s*\(;;\);/, "");
try {
var data = JSON.parse(clean);
var entries = (data && data.payload && data.payload.entries) || [];
entries.forEach(function (e) {
if (e && e.uid) { map[String(e.uid)] = e.text || e.name || String(e.uid); }
});
} catch (err) {
return null;
}
return map;
}
function onCheck() {
var text = el("ffSource").value;
if (!text.trim()) { say("ffMsg1", "กรุณาวางซอร์สโค้ดก่อน", "ff-err"); return; }
var info = parseSource(text);
state.uid = info.uid;
state.ids = info.ids;
if (!info.ids.length) {
say("ffMsg1", "ไม่พบรายชื่อเพื่อนในซอร์สโค้ด กรุณาตรวจสอบว่าคัดลอกหน้า Facebook ที่ล็อกอินแล้วครบทั้งหมด", "ff-err");
return;
}
if (!info.uid) {
say("ffMsg1", "พบเพื่อน " + info.ids.length + " รายการ แต่ไม่พบรหัสผู้ใช้ของคุณ", "ff-err");
return;
}
var url = "https://www.facebook.com/ajax/typeahead/first_degree.php?__a=1&viewer=" + info.uid + "&filter[0]=user&options[0]=friends_only&__user=" + info.uid;
var box = el("ffMsg1");
box.className = "ff-msg ff-ok";
box.textContent = "พบเพื่อน " + info.ids.length + " รายการ ต่อไปให้คลิกลิงก์นี้: ";
var a = document.createElement("a");
a.href = url;
a.target = "_blank";
a.rel = "noopener noreferrer";
a.textContent = "Facebook AJAX API";
box.appendChild(a);
}
function onShow() {
var ul = el("ffResult");
ul.textContent = "";
state.lines = [];
if (!state.ids.length) { say("ffMsg2", "กรุณาทำขั้นตอนที่ 1 ก่อน", "ff-err"); return; }
var raw = el("ffApi").value;
if (!raw.trim()) { say("ffMsg2", "กรุณาวางข้อมูลจาก AJAX API ก่อน", "ff-err"); return; }
var map = parseNames(raw);
if (map === null) {
say("ffMsg2", "รูปแบบข้อมูลไม่ถูกต้อง ต้องเป็นข้อมูล JSON จากลิงก์ AJAX API ไม่ใช่หน้าเว็บ HTML กรุณาเข้าสู่ระบบ Facebook แล้วคัดลอกใหม่", "ff-err");
return;
}
var count = 0;
state.ids.forEach(function (id) {
if (!Object.prototype.hasOwnProperty.call(map, id)) { return; }
count += 1;
var link = "https://www.facebook.com/" + id;
var li = document.createElement("li");
var a = document.createElement("a");
a.href = link;
a.target = "_blank";
a.rel = "noopener noreferrer";
a.textContent = map[id];
li.appendChild(a);
ul.appendChild(li);
state.lines.push(count + ". " + map[id] + " - " + link);
});
if (!count) { say("ffMsg2", "ไม่พบชื่อเพื่อนที่ตรงกับรายชื่อในซอร์สโค้ด", "ff-err"); return; }
say("ffMsg2", "แสดงเพื่อน " + count + " คน เรียงจากสนิทที่สุด", "ff-ok");
}
function onCopy() {
if (!state.lines.length) { say("ffMsg2", "ยังไม่มีรายชื่อให้คัดลอก", "ff-err"); return; }
var text = state.lines.join("\n");
try {
navigator.clipboard.writeText(text).then(function () {
say("ffMsg2", "คัดลอกรายชื่อแล้ว", "ff-ok");
}, function () {
say("ffMsg2", "คัดลอกไม่สำเร็จ กรุณาคัดลอกด้วยตนเอง", "ff-err");
});
} catch (err) {
say("ffMsg2", "เบราว์เซอร์นี้ไม่รองรับการคัดลอกอัตโนมัติ", "ff-err");
}
}
function onReset() {
state = { uid: "", ids: [], lines: [] };
el("ffSource").value = "";
el("ffApi").value = "";
el("ffResult").textContent = "";
say("ffMsg1", "");
say("ffMsg2", "");
}
el("ffCheck").addEventListener("click", onCheck);
el("ffShow").addEventListener("click", onShow);
el("ffCopy").addEventListener("click", onCopy);
el("ffReset").addEventListener("click", onReset);
})();
</script>

## คำอธิบายศัพท์

- **เพื่อน Facebook คนโปรด**: เพื่อนที่ Facebook จัดให้อยู่ลำดับต้น ๆ จากการโต้ตอบ เช่น แชต กดไลก์ หรือเข้าดูโปรไฟล์บ่อย
- **ซอร์สโค้ดหน้าเว็บ (Page Source)**: โค้ด HTML ดิบของหน้าเว็บที่เบราว์เซอร์ใช้แสดงผล เปิดดูได้ด้วย Ctrl + U
- **InitialChatFriendsList**: ชื่อข้อมูลในซอร์สโค้ดที่เก็บรายการรหัสเพื่อนตามลำดับความสนิท ซึ่งเครื่องมือใช้อ่านลำดับ
- **รหัสผู้ใช้ (User ID / UID)**: ตัวเลขประจำบัญชี Facebook แต่ละบัญชี ใช้แทนชื่อในระบบหลังบ้าน
- **Facebook AJAX API**: ลิงก์ที่ Facebook ใช้ส่งข้อมูลเบื้องหลัง ในที่นี้ใช้ดึงรายชื่อเพื่อนพร้อมชื่อ-นามสกุลของบัญชีที่ล็อกอินอยู่
- **JSON**: รูปแบบข้อมูลข้อความที่มีโครงสร้าง เป็นรูปแบบที่ AJAX API ส่งกลับมา และเครื่องมือจะแปลงเป็นรายชื่อให้อ่านง่าย
- **การจัดอันดับเพื่อน**: ลำดับที่เรียงจากคนที่สนิทที่สุดลงไป ตามที่ Facebook คำนวณเอง

## คำถามที่พบบ่อย

**ข้อมูลของฉันถูกส่งไปเก็บไว้ที่ไหนหรือไม่?**
ไม่ การประมวลผลทั้งหมดทำในเบราว์เซอร์ของคุณ ข้อมูลที่วางไว้จะไม่ถูกอัปโหลด

**ทำไมไม่พบรายชื่อเพื่อน?**
ตรวจสอบว่าล็อกอิน Facebook อยู่ และคัดลอกซอร์สโค้ดมาครบทั้งหมดด้วย Ctrl + A หน้าซอร์สของ Facebook เปลี่ยนโครงสร้างได้เสมอ จึงอาจมีบางช่วงที่เครื่องมือหาข้อมูลไม่เจอ

**ใช้บนมือถือได้หรือไม่?**
การดูซอร์สโค้ดทำได้ง่ายที่สุดบนคอมพิวเตอร์ แนะนำให้ใช้บน Chrome, Edge หรือ Firefox

หน้านี้ไม่มีส่วนเกี่ยวข้องกับ Facebook และ Facebook เป็นเครื่องหมายการค้าจดทะเบียนของ Facebook, Inc.