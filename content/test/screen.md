---
title: ทดสอบหน้าจอ Dead Pixel ออนไลน์ ฟรี
h1: ทดสอบหน้าจอ Dead Pixel
description: 'ทดสอบหน้าจอ Dead Pixel ออนไลน์ฟรี ไล่สีเต็มจอหาจุดเสีย จุดค้าง Backlight Bleed และ Mura พร้อมบันทึกตำแหน่งจุดเสียไว้เคลมประกัน ไม่ต้องติดตั้ง ใช้ได้ทันที'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-19T09:00:00+07:00'
weight: 130
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ทดสอบหน้าจอ Dead Pixel
- ทดสอบหน้าจอ Dead Pixel ออนไลน์
- ทดสอบและวัดค่า
---

<style>
.sp{margin:1.25rem 0;line-height:1.55}
.sp,.sp *{box-sizing:border-box}
.sp-card{border:1px solid rgba(128,128,128,.4);border-radius:14px;padding:16px;margin:0 0 16px}
.sp-title{font-weight:700;font-size:1.1rem;margin:0 0 8px}
.sp-sub{font-weight:600;font-size:.95rem;margin:14px 0 6px;opacity:.85}
.sp-note{margin:0 0 10px;font-size:.92rem;opacity:.8}
.sp-row{display:flex;flex-wrap:wrap;gap:8px;align-items:center}
.sp-btn{appearance:none;border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;border-radius:10px;padding:9px 14px;font:inherit;font-size:.95rem;cursor:pointer}
.sp-btn:hover{background:rgba(128,128,128,.15)}
.sp-btn:focus-visible,.sp-chip:focus-visible,.sp select:focus-visible,.sp input:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
.sp-primary{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600;padding:12px 20px;font-size:1.02rem}
.sp-primary:hover{background:#1d4ed8}
.sp-warn{background:#b45309;border-color:#b45309;color:#fff;font-weight:600}
.sp-warn:hover{background:#92400e}
.sp-chip{appearance:none;border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;border-radius:999px;padding:6px 12px;font:inherit;font-size:.9rem;cursor:pointer}
.sp-chip:hover{background:rgba(128,128,128,.18)}
.sp-sw{display:inline-block;width:14px;height:14px;border-radius:50%;border:1px solid rgba(128,128,128,.7);vertical-align:-2px;margin-right:6px}
.sp select,.sp input[type=text],.sp input[type=number]{font:inherit;font-size:.95rem;padding:6px 8px;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:Canvas;color:CanvasText;max-width:100%}
.sp input[type=number]{width:96px}
.sp input[type=text]{width:100px}
.sp input[type=color]{width:44px;height:36px;padding:2px;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:Canvas}
.sp-inline{display:inline-flex;gap:6px;align-items:center;flex-wrap:wrap}
.sp-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(190px,1fr));gap:8px;margin:0}
.sp-grid div{border:1px solid rgba(128,128,128,.3);border-radius:10px;padding:8px 10px}
.sp-grid dt{font-size:.8rem;opacity:.7;margin:0}
.sp-grid dd{margin:2px 0 0;font-weight:600;word-break:break-word}
.sp-tw{overflow-x:auto;margin:10px 0}
.sp-table{border-collapse:collapse;width:100%;font-size:.92rem}
.sp-table th,.sp-table td{border:1px solid rgba(128,128,128,.35);padding:6px 8px;text-align:left;vertical-align:top}
.sp-out{margin-top:10px;padding:12px;border-radius:10px;background:rgba(37,99,235,.1);border:1px solid rgba(37,99,235,.35)}
.sp-out:empty{display:none}
.sp-out p{margin:0 0 6px}
.sp-msg{min-height:1.4em;margin-top:8px;font-size:.92rem}
.sp-del{appearance:none;border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;border-radius:8px;padding:2px 8px;cursor:pointer;font:inherit;font-size:.85rem}
.spx-stage{position:fixed;left:0;top:0;right:0;bottom:0;width:100%;height:100%;z-index:2147483000;display:none;background:#000;cursor:none;overflow:hidden;-webkit-user-select:none;user-select:none;touch-action:manipulation;font-family:system-ui,-apple-system,"Segoe UI",Roboto,sans-serif}
.spx-stage.on{display:block}
.spx-stage.hud{cursor:default}
.spx-stage.mark,.spx-stage.mark.hud{cursor:crosshair}
.spx-cv{position:absolute;left:0;top:0;width:100%;height:100%;display:none}
.spx-layer{position:absolute;left:0;top:0;right:0;bottom:0;pointer-events:none;display:none}
.spx-stage.mark .spx-layer{display:block}
.spx-ring{position:absolute;width:36px;height:36px;margin:-18px 0 0 -18px;border:2px solid #fff;border-radius:50%;box-shadow:0 0 0 2px #000,inset 0 0 0 1px #000}
.spx-ring span{position:absolute;left:100%;top:-6px;margin-left:6px;font:700 13px/1 system-ui,sans-serif;color:#fff;background:#000;border:1px solid #fff;border-radius:6px;padding:2px 5px}
.spx-fix{position:absolute;display:none;left:40%;top:40%;width:160px;height:160px;touch-action:none;cursor:move;outline:1px dashed rgba(255,255,255,.55);outline-offset:3px}
.spx-stage.fix .spx-fix{display:block}
.spx-hud{position:absolute;top:calc(10px + env(safe-area-inset-top,0px));left:50%;transform:translateX(-50%);display:flex;flex-wrap:wrap;gap:6px;align-items:center;justify-content:center;max-width:calc(100% - 16px);padding:8px 10px;border-radius:12px;background:rgba(20,20,20,.9);color:#fff;border:1px solid rgba(255,255,255,.4);box-shadow:0 0 0 1px rgba(0,0,0,.6);font-size:14px;line-height:1.3;opacity:0;pointer-events:none;transition:opacity .2s}
.spx-stage.hud .spx-hud{opacity:1;pointer-events:auto}
.spx-stage.bot .spx-hud{top:auto;bottom:calc(10px + env(safe-area-inset-bottom,0px))}
.spx-lab{padding:4px 6px;white-space:nowrap}
.spx-b{appearance:none;background:rgba(255,255,255,.12);color:#fff;border:1px solid rgba(255,255,255,.45);border-radius:8px;padding:6px 10px;font:inherit;cursor:pointer}
.spx-b:hover{background:rgba(255,255,255,.25)}
.spx-b.act{background:#2563eb;border-color:#93c5fd}
.spx-sel{font:inherit;padding:5px 6px;border-radius:8px;border:1px solid rgba(255,255,255,.45);background:#222;color:#fff}
.spx-stage.fix .spx-t{display:none}
.spx-tc{display:none}
.spx-stage.touchm .spx-tc{display:inline-block}
.spx-toast{position:absolute;left:50%;bottom:calc(24px + env(safe-area-inset-bottom,0px));transform:translateX(-50%);max-width:90%;text-align:center;padding:8px 14px;border-radius:10px;background:rgba(0,0,0,.88);color:#fff;border:1px solid rgba(255,255,255,.5);font-size:14px;opacity:0;pointer-events:none;transition:opacity .2s}
.spx-toast.show{opacity:1}
.spx-stage.bot .spx-toast{bottom:auto;top:calc(24px + env(safe-area-inset-top,0px))}
</style>
<div class="sp" id="sp-app">
<div class="sp-card">
<div class="sp-title">เริ่มทดสอบหน้าจอ</div>
<p class="sp-note">การทดสอบจะเติมเต็มทั้งหน้าจอ คลิก แตะ หรือกด → เพื่อไปโหมดถัดไป กด ← เพื่อย้อนกลับ ออกได้ด้วยปุ่ม "ออก" หรือ Esc (แตะค้างหรือขยับเมาส์เพื่อเรียกแถบเครื่องมือ)</p>
<div class="sp-row">
<button type="button" class="sp-btn sp-primary" id="sp-start">เริ่มทดสอบแบบเต็มหน้าจอ</button>
<label class="sp-inline"><input type="checkbox" id="sp-auto"> เปลี่ยนโหมดอัตโนมัติทุก
<select id="sp-int" aria-label="ช่วงเวลาเปลี่ยนโหมดอัตโนมัติ"><option value="1">1</option><option value="2" selected>2</option><option value="3">3</option><option value="5">5</option><option value="10">10</option></select> วินาที</label>
</div>
<div class="sp-sub">สีทึบ (หาจุดเสีย จุดค้าง ฝุ่น)</div>
<div class="sp-row" id="sp-chips-solid"></div>
<div class="sp-row" style="margin-top:8px">
<label class="sp-inline">สีที่กำหนดเอง
<input type="color" id="sp-color" value="#ff8800" aria-label="เลือกสีที่กำหนดเอง">
<input type="text" id="sp-hex" value="#ff8800" maxlength="7" aria-label="รหัสสี HEX" spellcheck="false"></label>
</div>
<div class="sp-sub">แพทเทิร์น (Banding, ความคมชัด, ความสม่ำเสมอ)</div>
<div class="sp-row" id="sp-chips-pattern"></div>
<div class="sp-sub">เคลื่อนไหวและสัมผัส</div>
<div class="sp-row" id="sp-chips-special"></div>
<div class="sp-row" style="margin-top:8px">
<label class="sp-inline">ความเร็วทดสอบ Ghosting
<select id="sp-speed"><option value="480">ช้า (480 px/วินาที)</option><option value="960" selected>ปานกลาง (960 px/วินาที)</option><option value="1920">เร็ว (1920 px/วินาที)</option></select></label>
</div>
</div>
<div class="sp-card">
<div class="sp-title">ข้อมูลหน้าจอของคุณ</div>
<dl class="sp-grid" id="sp-info"></dl>
<div class="sp-row" style="margin-top:10px"><button type="button" class="sp-btn" id="sp-hzbtn">วัดอัตรารีเฟรชใหม่</button></div>
<p class="sp-note" style="margin-top:8px">อัตรารีเฟรชวัดผ่านเบราว์เซอร์ จึงอาจต่ำกว่าที่จอทำได้จริง และความละเอียดจริงเป็นค่าประมาณจาก ขนาดหน้าจอ × อัตราส่วนพิกเซล (ควรตั้ง Zoom เบราว์เซอร์ที่ 100%)</p>
</div>
<div class="sp-card">
<div class="sp-title">บันทึกจุดเสีย (Pixel Logger)</div>
<p class="sp-note">ระหว่างทดสอบ กดปุ่ม "มาร์กจุด" (หรือกด M) แล้วคลิกที่จุดผิดปกติเพื่อบันทึกตำแหน่ง คลิกซ้ำที่จุดเดิมเพื่อลบ ผลจะแสดงที่นี่หลังออกจากโหมดทดสอบ และใช้เป็นหลักฐานประกอบการเคลมประกันได้</p>
<div class="sp-row">
<label class="sp-inline">ความละเอียดจริงของจอ
<input type="number" id="sp-w" min="1" max="20000" aria-label="ความกว้างเป็นพิกเซล"> ×
<input type="number" id="sp-h" min="1" max="20000" aria-label="ความสูงเป็นพิกเซล"> พิกเซล</label>
</div>
<div id="sp-sum" class="sp-msg"></div>
<div id="sp-iso" class="sp-out"></div>
<div class="sp-tw"><table class="sp-table"><thead><tr><th>#</th><th>ชนิด</th><th>พื้นหลังที่เห็น</th><th>ตำแหน่ง</th><th></th></tr></thead><tbody id="sp-list"></tbody></table></div>
<div class="sp-row">
<button type="button" class="sp-btn" id="sp-copy">คัดลอกรายงาน</button>
<button type="button" class="sp-btn" id="sp-png">ดาวน์โหลดแผนที่จุด (PNG)</button>
<button type="button" class="sp-btn" id="sp-clear">ล้างทั้งหมด</button>
</div>
<div class="sp-msg" id="sp-logmsg" role="status" aria-live="polite"></div>
</div>
<div class="sp-card">
<div class="sp-title">วินิจฉัยอาการที่เห็น</div>
<p class="sp-note">เลือกสิ่งที่คุณเห็นบนหน้าจอ แล้วระบบจะบอกสาเหตุที่เป็นไปได้และแนวทางต่อไป</p>
<div class="sp-row"><select id="sp-diag" aria-label="เลือกอาการที่เห็น"></select></div>
<div id="sp-diag-out" class="sp-out" aria-live="polite"></div>
</div>
<div class="sp-card">
<div class="sp-title">ลองแก้จุดค้าง (Stuck Pixel Fixer)</div>
<p class="sp-note"><strong>คำเตือน:</strong> โหมดนี้แสดงสีกะพริบเร็วในกรอบเล็ก ๆ ห้ามใช้หากคุณหรือคนใกล้ตัวมีประวัติโรคลมชักจากแสงกะพริบ ผลไม่รับประกันและใช้ไม่ได้กับจุดเสียสีดำ ไม่แนะนำให้ใช้กับจอ OLED เป็นเวลานาน ลากกรอบไปวางทับจุดค้าง แล้วปล่อยไว้ 5–10 นาที</p>
<div class="sp-row">
<label class="sp-inline"><input type="checkbox" id="sp-fixok"> ฉันอ่านคำเตือนและยอมรับความเสี่ยง</label>
</div>
<div class="sp-row" style="margin-top:8px">
<label class="sp-inline">ขนาดกรอบ
<select id="sp-fixsize"><option value="100">เล็ก (100 px)</option><option value="160" selected>กลาง (160 px)</option><option value="240">ใหญ่ (240 px)</option></select></label>
<label class="sp-inline">ระยะเวลา
<select id="sp-fixmin"><option value="3">3 นาที</option><option value="5">5 นาที</option><option value="10" selected>10 นาที</option><option value="20">20 นาที</option></select></label>
<button type="button" class="sp-btn sp-warn" id="sp-fixgo">เริ่มแก้จุดค้าง</button>
</div>
<div class="sp-msg" id="sp-fixmsg" role="status" aria-live="polite"></div>
</div>
</div>

<script>
(function () {
'use strict';
var root = document.getElementById('sp-app');
if (!root) { return; }
function $(id) { return document.getElementById(id); }
function el(tag, cls, txt, parent) {
  var e = document.createElement(tag);
  if (cls) { e.className = cls; }
  if (txt !== null && txt !== undefined && txt !== '') { e.textContent = txt; }
  if (parent) { parent.appendChild(e); }
  return e;
}
function clear(node) { while (node.firstChild) { node.removeChild(node.firstChild); } }
var MODES = [
  { id: 'black', name: 'ดำ', group: 'solid', kind: 'solid', color: '#000000', mark: 'bright' },
  { id: 'white', name: 'ขาว', group: 'solid', kind: 'solid', color: '#ffffff', mark: 'dead' },
  { id: 'red', name: 'แดง', group: 'solid', kind: 'solid', color: '#ff0000', mark: 'subpixel' },
  { id: 'green', name: 'เขียว', group: 'solid', kind: 'solid', color: '#00ff00', mark: 'subpixel' },
  { id: 'blue', name: 'น้ำเงิน', group: 'solid', kind: 'solid', color: '#0000ff', mark: 'subpixel' },
  { id: 'gray', name: 'เทา 50%', group: 'solid', kind: 'solid', color: '#808080', mark: 'dead' },
  { id: 'yellow', name: 'เหลือง', group: 'solid', kind: 'solid', color: '#ffff00', mark: 'subpixel' },
  { id: 'cyan', name: 'ฟ้าไซแอน', group: 'solid', kind: 'solid', color: '#00ffff', mark: 'subpixel' },
  { id: 'magenta', name: 'ม่วงแมเจนตา', group: 'solid', kind: 'solid', color: '#ff00ff', mark: 'subpixel' },
  { id: 'dgray', name: 'เทาเข้ม 15%', group: 'solid', kind: 'solid', color: '#262626', mark: 'bright' },
  { id: 'lgray', name: 'เทาอ่อน 85%', group: 'solid', kind: 'solid', color: '#d9d9d9', mark: 'dead' },
  { id: 'custom', name: 'สีที่กำหนดเอง', group: 'solid', kind: 'solid', color: null, mark: null },
  { id: 'grad', name: 'ไล่ระดับเทา', group: 'pattern', kind: 'pattern', mark: null },
  { id: 'gradrgb', name: 'ไล่ระดับ RGB', group: 'pattern', kind: 'pattern', mark: null },
  { id: 'steps', name: 'ขั้นสีเทา 64 ระดับ', group: 'pattern', kind: 'pattern', mark: null },
  { id: 'checker', name: 'ตาหมากรุก 1 พิกเซล', group: 'pattern', kind: 'pattern', mark: null },
  { id: 'vlines', name: 'เส้นแนวตั้ง 1 พิกเซล', group: 'pattern', kind: 'pattern', mark: null },
  { id: 'hlines', name: 'เส้นแนวนอน 1 พิกเซล', group: 'pattern', kind: 'pattern', mark: null },
  { id: 'motion', name: 'ทดสอบ Ghosting (เคลื่อนไหว)', group: 'special', kind: 'pattern', mark: null },
  { id: 'touch', name: 'ทดสอบทัชสกรีน', group: 'special', kind: 'pattern', mark: null }
];
var TYPES = {
  dead: { name: 'จุดเสียสีดำ (Type 2)', short: 'จุดเสีย', color: '#ef4444' },
  bright: { name: 'จุดสว่างค้าง (Type 1)', short: 'จุดสว่าง', color: '#facc15' },
  subpixel: { name: 'ซับพิกเซลผิดปกติ (Type 3)', short: 'ซับพิกเซล', color: '#38bdf8' }
};
var ISO = [
  { c: 'I', l: { bright: 0, dead: 0, subpixel: 0 } },
  { c: 'II', l: { bright: 2, dead: 2, subpixel: 5 } },
  { c: 'III', l: { bright: 5, dead: 15, subpixel: 50 } },
  { c: 'IV', l: { bright: 50, dead: 150, subpixel: 500 } }
];
var DIAG = [
  { q: 'จุดดำเล็ก ๆ ที่เห็นชัดบนพื้นขาวหรือสีอื่น', t: 'น่าจะเป็นจุดเสีย (Dead Pixel)', a: 'พิกเซลไม่ติดสว่างเลย จึงเป็นจุดดำในทุกสี มักแก้ด้วยซอฟต์แวร์ไม่ได้ ควรบันทึกจำนวนและตำแหน่งไว้ แล้วเทียบกับเงื่อนไขรับประกันของผู้ผลิต', m: 'white' },
  { q: 'จุดสว่างสีขาวบนพื้นดำ', t: 'น่าจะเป็นจุดสว่างค้าง (Stuck/Hot Pixel)', a: 'พิกเซลติดสว่างตลอดเวลา เห็นชัดที่สุดบนพื้นดำ บางครั้งแก้ได้ด้วยการกะพริบสีหรือการนวดเบา ๆ ที่ตำแหน่งนั้นขณะเปิดจอ แต่ไม่รับประกันผล', m: 'black' },
  { q: 'จุดสีแดง เขียว หรือน้ำเงินจุดเดียว ที่เด่นบนบางสีแต่หายไปบนสีอื่น', t: 'น่าจะเป็นซับพิกเซลค้างหรือเสีย', a: 'พิกเซลหนึ่งประกอบด้วยซับพิกเซล 3 สี เมื่อซับพิกเซลใดค้างหรือดับ จะเห็นเป็นจุดสีเดียว ลองทดสอบด้วยสีแดง เขียว น้ำเงินทีละสีเพื่อยืนยัน', m: 'red' },
  { q: 'จุดหรือเส้นที่หายไปเมื่อเช็ดด้วยผ้านุ่มแห้ง หรือขยับตามมุมมอง', t: 'น่าจะเป็นฝุ่นหรือคราบบนผิวจอ', a: 'ไม่ใช่ความเสียหายของแผงจอ ปิดจอแล้วเช็ดเบา ๆ ด้วยผ้าไมโครไฟเบอร์แห้ง ห้ามกดแรงและหลีกเลี่ยงน้ำยาที่มีแอลกอฮอล์หรือแอมโมเนีย', m: 'white' },
  { q: 'แสงรั่วเป็นหย่อมสว่างตามขอบหรือมุมบนพื้นดำในห้องมืด', t: 'น่าจะเป็น Backlight Bleed', a: 'แสงไฟหลังจอรั่วผ่านขอบแผง พบได้บ่อยในจอ LCD ลองลดความสว่างและมองตรงหน้าจอ หากรั่วมากผิดปกติ ให้ตรวจเงื่อนไขรับประกันของรุ่นนั้น', m: 'black' },
  { q: 'หย่อมขุ่น เป็นก้อน หรือลายด่างบนพื้นเทา', t: 'น่าจะเป็น Mura หรือ Clouding', a: 'ความสว่างไม่สม่ำเสมอของแผงจอ พบได้ในจอขนาดใหญ่เกือบทุกรุ่นในระดับหนึ่ง หากเห็นชัดในการใช้งานปกติ ให้ถ่ายวิดีโอและติดต่อผู้ขาย', m: 'gray' },
  { q: 'แถบสีเป็นขั้นหยาบในแถบไล่ระดับ', t: 'น่าจะเป็น Banding', a: 'การไล่สีไม่ละเอียดพอ อาจมาจากบิตเดปธ์ของแผง การตั้งค่าสายสัญญาณหรือ Color Range ของการ์ดจอ ลองตรวจว่าตั้งเป็น RGB Full และใช้พอร์ตที่รองรับ', m: 'grad' },
  { q: 'ภาพหรือโลโก้เก่าจาง ๆ ค้างอยู่บนจอ', t: 'น่าจะเป็น Image Retention หรือ Burn-in', a: 'Image Retention มักหายเองเมื่อแสดงภาพเคลื่อนไหวหรือพักจอ ส่วน Burn-in ถาวรและพบได้ในจอ OLED ลองรันโหมดสีทึบหลายสีสลับกันสักพัก', m: 'gray' },
  { q: 'วัตถุที่เคลื่อนไหวมีเงาลากหรือเบลอ', t: 'น่าจะเป็น Ghosting หรือ Response Time ช้า', a: 'พิกเซลเปลี่ยนสีไม่ทันเฟรมถัดไป ลองเปิดโหมด Overdrive ของจอในระดับกลาง และเลือกอัตรารีเฟรชสูงสุดที่จอรองรับในระบบปฏิบัติการ', m: 'motion' }
];
var FIXC = ['#ff0000', '#00ff00', '#0000ff', '#ffffff', '#000000', '#ffff00', '#00ffff', '#ff00ff'];
var st = {
  on: false, fix: false, i: 0, mark: false, bot: false, fsActive: false,
  hudT: 0, hudHover: false, autoT: 0, fixT: 0, fixClock: 0, fixEnd: 0, raf: 0,
  lp: false, lpT: 0, toastT: 0, resizeT: 0, markers: [], type: 'dead', touch: null,
  drag: null, prevOv: '', hz: 0
};
var stage, cv, layer, hud, toast, fixbox, hudLab, hudCnt, typeSel, btnMark, btnAuto, customSw;
function fsEl() { return document.fullscreenElement || document.webkitFullscreenElement || null; }
function customColor() {
  var v = $('sp-hex').value;
  return /^#[0-9a-fA-F]{6}$/.test(v) ? v : '#ff8800';
}
function nat() {
  var w = parseInt($('sp-w').value, 10);
  var h = parseInt($('sp-h').value, 10);
  if (!(w > 0 && h > 0)) {
    var d = window.devicePixelRatio || 1;
    w = Math.round(screen.width * d);
    h = Math.round(screen.height * d);
  }
  return { w: w, h: h };
}
function say(msg) {
  if (!toast) { return; }
  toast.textContent = msg;
  toast.classList.add('show');
  clearTimeout(st.toastT);
  st.toastT = setTimeout(function () { toast.classList.remove('show'); }, 1800);
}
function gamut() {
  try {
    if (window.matchMedia('(color-gamut: rec2020)').matches) { return 'Rec.2020'; }
    if (window.matchMedia('(color-gamut: p3)').matches) { return 'Display P3'; }
    if (window.matchMedia('(color-gamut: srgb)').matches) { return 'sRGB'; }
  } catch (e) { }
  return 'ไม่ทราบ';
}
function hdr() {
  try { return window.matchMedia('(dynamic-range: high)').matches ? 'รองรับ' : 'ไม่พบ'; } catch (e) { }
  return 'ไม่ทราบ';
}
function renderInfo() {
  var host = $('sp-info');
  clear(host);
  var d = window.devicePixelRatio || 1;
  var rows = [
    ['ขนาดหน้าจอ (CSS)', screen.width + ' × ' + screen.height],
    ['ความละเอียดจริงโดยประมาณ', Math.round(screen.width * d) + ' × ' + Math.round(screen.height * d)],
    ['พื้นที่แสดงผล (Viewport)', window.innerWidth + ' × ' + window.innerHeight],
    ['อัตราส่วนพิกเซล', String(Math.round(d * 100) / 100)],
    ['อัตรารีเฟรช', st.hz ? '≈ ' + st.hz + ' Hz' : 'กำลังวัด...'],
    ['ความลึกของสี', (screen.colorDepth || '?') + ' บิต'],
    ['ขอบเขตสี (Gamut)', gamut()],
    ['HDR', hdr()],
    ['จุดสัมผัสสูงสุด', String(navigator.maxTouchPoints || 0)],
    ['การวางหน้าจอ', window.innerWidth >= window.innerHeight ? 'แนวนอน' : 'แนวตั้ง']
  ];
  rows.forEach(function (r) {
    var box = el('div', '', '', host);
    el('dt', '', r[0], box);
    el('dd', '', r[1], box);
  });
}
function snapHz(hz) {
  var common = [24, 25, 30, 48, 50, 60, 72, 75, 90, 100, 120, 144, 165, 170, 180, 240, 360];
  for (var i = 0; i < common.length; i++) {
    if (Math.abs(hz - common[i]) / common[i] < 0.04) { return common[i]; }
  }
  return Math.round(hz);
}
function measureHz() {
  st.hz = 0;
  renderInfo();
  var ts = [];
  function f(t) {
    ts.push(t);
    if (ts.length < 70) { requestAnimationFrame(f); return; }
    var d = [];
    for (var i = 1; i < ts.length; i++) { d.push(ts[i] - ts[i - 1]); }
    d.sort(function (a, b) { return a - b; });
    var med = d[Math.floor(d.length / 2)];
    st.hz = med > 0 ? snapHz(1000 / med) : 0;
    renderInfo();
  }
  requestAnimationFrame(f);
}
function chips() {
  MODES.forEach(function (m, idx) {
    var host = $('sp-chips-' + m.group);
    var b = el('button', 'sp-chip', '', host);
    b.type = 'button';
    if (m.kind === 'solid') {
      var sw = el('span', 'sp-sw', '', b);
      sw.style.background = m.color || customColor();
      if (m.id === 'custom') { customSw = sw; }
    }
    b.appendChild(document.createTextNode(m.name));
    b.addEventListener('click', function () { openTest(idx); });
  });
}
function modeIndex(id) {
  for (var i = 0; i < MODES.length; i++) { if (MODES[i].id === id) { return i; } }
  return 0;
}
function buildStage() {
  if (stage) { return; }
  stage = el('div', 'spx-stage', '', document.body);
  stage.setAttribute('role', 'dialog');
  stage.setAttribute('aria-label', 'โหมดทดสอบหน้าจอ');
  cv = el('canvas', 'spx-cv', '', stage);
  layer = el('div', 'spx-layer', '', stage);
  fixbox = el('div', 'spx-fix', '', stage);
  hud = el('div', 'spx-hud', '', stage);
  toast = el('div', 'spx-toast', '', stage);
  hudLab = el('span', 'spx-lab', '', hud);
  sbtn('‹', 'ก่อนหน้า (←)', function () { step(-1); }, 'spx-t');
  sbtn('›', 'ถัดไป (→)', function () { step(1); }, 'spx-t');
  btnMark = sbtn('มาร์กจุด', 'โหมดมาร์กจุดเสีย (M)', toggleMark, 'spx-t');
  typeSel = el('select', 'spx-sel spx-t', '', hud);
  typeSel.title = 'ชนิดของจุดที่จะบันทึก (D/B/S)';
  Object.keys(TYPES).forEach(function (k) {
    var o = el('option', '', TYPES[k].name, typeSel);
    o.value = k;
  });
  typeSel.addEventListener('change', function () { st.type = typeSel.value; });
  typeSel.addEventListener('click', function (e) { e.stopPropagation(); });
  hudCnt = el('span', 'spx-lab spx-t', '0 จุด', hud);
  btnAuto = sbtn('อัตโนมัติ', 'เปลี่ยนโหมดอัตโนมัติ (P)', toggleAuto, 'spx-t');
  sbtn('ล้างลาย', 'ล้างลายที่วาด', clearTouch, 'spx-tc');
  sbtn('⇅', 'ย้ายแถบเครื่องมือขึ้นหรือลง (T)', togglePos, '');
  sbtn('ซ่อน', 'ซ่อนแถบเครื่องมือ (H)', hideHud, '');
  sbtn('ออก', 'ออกจากโหมดทดสอบ (Esc)', closeTest, '');
  hud.addEventListener('pointerdown', function (e) { e.stopPropagation(); });
  hud.addEventListener('click', function (e) { e.stopPropagation(); });
  hud.addEventListener('pointerenter', function () { st.hudHover = true; clearTimeout(st.hudT); });
  hud.addEventListener('pointerleave', function () { st.hudHover = false; armHud(); });
  stage.addEventListener('contextmenu', function (e) { e.preventDefault(); });
  stage.addEventListener('pointermove', function (e) {
    if (st.drag) { return; }
    var near = st.bot ? (e.clientY > window.innerHeight - 80) : (e.clientY < 80);
    if (!st.mark || near) { showHud(); }
  });
  stage.addEventListener('pointerdown', function (e) {
    st.lp = false;
    clearTimeout(st.lpT);
    if (st.fix || (MODES[st.i] && MODES[st.i].id === 'touch')) { return; }
    st.lpT = setTimeout(function () { st.lp = true; showHud(); }, 650);
  });
  ['pointerup', 'pointercancel', 'pointerleave'].forEach(function (n) {
    stage.addEventListener(n, function () { clearTimeout(st.lpT); });
  });
  stage.addEventListener('click', function (e) {
    if (st.lp) { st.lp = false; return; }
    if (st.fix || !st.on) { return; }
    var m = MODES[st.i];
    if (m.id === 'touch') { return; }
    if (st.mark) { markAt(e.clientX, e.clientY); return; }
    step(1);
  });
  cv.addEventListener('pointerdown', function (e) { touchEv(e, 'down'); });
  cv.addEventListener('pointermove', function (e) { touchEv(e, 'move'); });
  cv.addEventListener('pointerup', function (e) { touchEv(e, 'up'); });
  cv.addEventListener('pointercancel', function (e) { touchEv(e, 'up'); });
  fixbox.addEventListener('pointerdown', function (e) {
    st.drag = { dx: e.clientX - fixbox.offsetLeft, dy: e.clientY - fixbox.offsetTop };
    try { fixbox.setPointerCapture(e.pointerId); } catch (err) { }
    e.preventDefault();
    e.stopPropagation();
  });
  fixbox.addEventListener('pointermove', function (e) {
    if (st.drag) { moveFix(e.clientX - st.drag.dx, e.clientY - st.drag.dy); }
  });
  fixbox.addEventListener('pointerup', function () { st.drag = null; });
  fixbox.addEventListener('pointercancel', function () { st.drag = null; });
}
function sbtn(label, title, fn, cls) {
  var b = el('button', 'spx-b' + (cls ? ' ' + cls : ''), label, hud);
  b.type = 'button';
  b.title = title;
  b.addEventListener('click', function (e) { e.stopPropagation(); fn(); });
  return b;
}
function lockScroll(on) {
  var h = document.documentElement;
  if (on) { st.prevOv = h.style.overflow; h.style.overflow = 'hidden'; }
  else { h.style.overflow = st.prevOv || ''; }
}
function enterFs() {
  var f = stage.requestFullscreen || stage.webkitRequestFullscreen;
  if (!f) { say('เบราว์เซอร์นี้ไม่รองรับโหมดเต็มจอ จึงใช้เต็มพื้นที่หน้าเว็บแทน'); return; }
  try {
    var p = f.call(stage);
    if (p && p.catch) {
      p.catch(function () { say('ไม่สามารถเข้าโหมดเต็มจอได้ จึงใช้เต็มพื้นที่หน้าเว็บแทน'); });
    }
  } catch (e) { say('ไม่สามารถเข้าโหมดเต็มจอได้'); }
}
function exitFs() {
  var f = document.exitFullscreen || document.webkitExitFullscreen;
  if (f && fsEl()) {
    try {
      var p = f.call(document);
      if (p && p.catch) { p.catch(function () { }); }
    } catch (e) { }
  }
}
function onFs() {
  if (!st.on) { return; }
  if (fsEl() === stage) {
    st.fsActive = true;
    setTimeout(function () { if (st.on && !st.fix) { render(); } else if (st.on) { clampFix(); } }, 80);
  } else if (st.fsActive) {
    closeTest();
  }
}
function openTest(i) {
  buildStage();
  stopAuto();
  stopRaf();
  stopFix();
  st.on = true;
  st.fix = false;
  st.mark = false;
  st.i = i;
  st.touch = null;
  stage.className = 'spx-stage on' + (st.bot ? ' bot' : '');
  btnMark.classList.remove('act');
  lockScroll(true);
  enterFs();
  render();
  showHud();
  if ($('sp-auto').checked) { startAuto(); }
}
function closeTest() {
  if (!st.on) { return; }
  st.on = false;
  stopAuto();
  stopRaf();
  stopFix();
  st.touch = null;
  clearTimeout(st.hudT);
  clearTimeout(st.lpT);
  var was = st.fsActive;
  st.fsActive = false;
  stage.className = 'spx-stage';
  lockScroll(false);
  if (was || fsEl()) { exitFs(); }
  updateLogger();
}
function stopRaf() { if (st.raf) { cancelAnimationFrame(st.raf); st.raf = 0; } }
function stopFix() {
  if (st.fixT) { clearInterval(st.fixT); st.fixT = 0; }
  if (st.fixClock) { clearInterval(st.fixClock); st.fixClock = 0; }
  st.drag = null;
}
function armHud() {
  clearTimeout(st.hudT);
  if (st.hudHover) { return; }
  if (!st.fix && MODES[st.i] && MODES[st.i].id === 'touch') { return; }
  st.hudT = setTimeout(hideHud, 3000);
}
function showHud() {
  if (!stage) { return; }
  stage.classList.add('hud');
  armHud();
}
function hideHud() {
  clearTimeout(st.hudT);
  if (stage) { stage.classList.remove('hud'); }
}
function togglePos() {
  st.bot = !st.bot;
  stage.classList.toggle('bot', st.bot);
  showHud();
}
function step(dir, quiet) {
  st.i = (st.i + dir + MODES.length) % MODES.length;
  render();
  if (!quiet) { showHud(); }
}
function go(i) {
  if (i >= 0 && i < MODES.length) { st.i = i; render(); showHud(); }
}
function toggleAuto() { if (st.autoT) { stopAuto(); } else { startAuto(); } showHud(); }
function startAuto() {
  stopAuto();
  var s = parseInt($('sp-int').value, 10) || 2;
  st.autoT = setInterval(function () {
    if (MODES[st.i].id === 'touch') { return; }
    step(1, true);
  }, s * 1000);
  if (btnAuto) { btnAuto.classList.add('act'); }
}
function stopAuto() {
  if (st.autoT) { clearInterval(st.autoT); st.autoT = 0; }
  if (btnAuto) { btnAuto.classList.remove('act'); }
}
function toggleMark() {
  st.mark = !st.mark;
  stage.classList.toggle('mark', st.mark);
  btnMark.classList.toggle('act', st.mark);
  refreshMarks();
  say(st.mark ? 'โหมดมาร์กจุด: คลิกที่จุดผิดปกติ (คลิกซ้ำเพื่อลบ)' : 'ปิดโหมดมาร์กจุด');
  showHud();
}
function fit() {
  var d = window.devicePixelRatio || 1;
  var w = stage.clientWidth || window.innerWidth;
  var h = stage.clientHeight || window.innerHeight;
  cv.width = Math.max(1, Math.round(w * d));
  cv.height = Math.max(1, Math.round(h * d));
  return { ctx: cv.getContext('2d'), W: cv.width, H: cv.height, d: d };
}
function render() {
  if (!st.on || st.fix) { return; }
  stopRaf();
  st.touch = null;
  var m = MODES[st.i];
  stage.classList.toggle('touchm', m.id === 'touch');
  hudLab.textContent = (st.i + 1) + '/' + MODES.length + ' · ' + m.name;
  if (m.mark) { st.type = m.mark; typeSel.value = m.mark; }
  if (m.kind === 'solid') {
    cv.style.display = 'none';
    stage.style.backgroundColor = m.id === 'custom' ? customColor() : m.color;
  } else {
    stage.style.backgroundColor = '#000';
    cv.style.display = 'block';
    cv.style.touchAction = m.id === 'touch' ? 'none' : '';
    draw(m.id);
  }
  refreshMarks();
  if (m.id === 'touch') { showHud(); }
}
function tile(w, h, dots) {
  var c = document.createElement('canvas');
  c.width = w;
  c.height = h;
  var x = c.getContext('2d');
  x.fillStyle = '#000';
  x.fillRect(0, 0, w, h);
  x.fillStyle = '#fff';
  dots.forEach(function (p) { x.fillRect(p[0], p[1], 1, 1); });
  return c;
}
function draw(id) {
  if (id === 'motion') { startMotion(); return; }
  if (id === 'touch') { startTouch(); return; }
  var f = fit(), c = f.ctx, W = f.W, H = f.H, g, i, v, x0, x1;
  if (id === 'grad') {
    g = c.createLinearGradient(0, 0, W, 0);
    g.addColorStop(0, '#000');
    g.addColorStop(1, '#fff');
    c.fillStyle = g;
    c.fillRect(0, 0, W, H);
  } else if (id === 'gradrgb') {
    var cols = ['#ffffff', '#ff0000', '#00ff00', '#0000ff'];
    for (i = 0; i < 4; i++) {
      g = c.createLinearGradient(0, 0, W, 0);
      g.addColorStop(0, '#000');
      g.addColorStop(1, cols[i]);
      c.fillStyle = g;
      c.fillRect(0, Math.floor(i * H / 4), W, Math.ceil(H / 4));
    }
  } else if (id === 'steps') {
    var n = 64;
    for (i = 0; i < n; i++) {
      v = Math.round(i * 255 / (n - 1));
      c.fillStyle = 'rgb(' + v + ',' + v + ',' + v + ')';
      x0 = Math.floor(i * W / n);
      x1 = Math.floor((i + 1) * W / n);
      c.fillRect(x0, 0, x1 - x0, H);
    }
  } else if (id === 'checker' || id === 'vlines' || id === 'hlines') {
    var t = id === 'checker' ? tile(2, 2, [[0, 0], [1, 1]]) : (id === 'vlines' ? tile(2, 1, [[0, 0]]) : tile(1, 2, [[0, 0]]));
    c.fillStyle = c.createPattern(t, 'repeat');
    c.fillRect(0, 0, W, H);
  }
}
function startMotion() {
  var f = fit(), c = f.ctx, W = f.W, H = f.H, d = f.d;
  var speed = parseInt($('sp-speed').value, 10) || 960;
  var cols = ['#ffffff', '#ff3b30', '#34c759', '#0a84ff', '#ffd60a'];
  var bw = 90 * d, bh = Math.max(36 * d, H / 12);
  var last = 0, x = 0, ds = [], fps = 0;
  function loop(t) {
    if (!st.on || st.fix || MODES[st.i].id !== 'motion') { return; }
    if (last) {
      var dt = t - last;
      if (dt > 0) {
        x = (x + speed * d * dt / 1000) % (W + bw);
        ds.push(dt);
        if (ds.length > 40) { ds.shift(); }
      }
    }
    last = t;
    c.fillStyle = '#555';
    c.fillRect(0, 0, W, H);
    for (var k = 0; k < cols.length; k++) {
      c.fillStyle = cols[k];
      c.fillRect(x - bw, H * 0.18 + k * (H * 0.14), bw, bh);
    }
    if (ds.length) {
      var s = 0;
      for (var j = 0; j < ds.length; j++) { s += ds[j]; }
      fps = Math.round(1000 / (s / ds.length));
    }
    c.fillStyle = '#fff';
    c.textAlign = 'left';
    c.font = (16 * d) + 'px sans-serif';
    c.fillText('เฟรมเรตที่เบราว์เซอร์วาดได้: ' + fps + ' fps · ความเร็ว ' + speed + ' px/วินาที', 16 * d, H - 44 * d);
    c.fillText('มองเงาที่ลากตามหลังกล่อง ยิ่งยาวยิ่งแสดงว่าจอตอบสนองช้า', 16 * d, H - 20 * d);
    st.raf = requestAnimationFrame(loop);
  }
  st.raf = requestAnimationFrame(loop);
}
function startTouch() {
  var f = fit();
  st.touch = { f: f, pts: {}, lines: [], max: 0, total: 0 };
  drawTouch();
}
function clearTouch() {
  if (st.touch) { st.touch.lines = []; st.touch.max = 0; st.touch.total = 0; drawTouch(); }
}
function touchEv(e, kind) {
  var t = st.touch;
  if (!t) { return; }
  e.preventDefault();
  var r = cv.getBoundingClientRect();
  var x = (e.clientX - r.left) * t.f.d;
  var y = (e.clientY - r.top) * t.f.d;
  var id = e.pointerId;
  if (kind === 'down') {
    var tr = [[x, y]];
    t.total++;
    t.lines.push(tr);
    if (t.lines.length > 300) { t.lines.shift(); }
    t.pts[id] = { x: x, y: y, n: t.total, tr: tr };
    try { cv.setPointerCapture(id); } catch (err) { }
    var cnt = Object.keys(t.pts).length;
    if (cnt > t.max) { t.max = cnt; }
  } else if (kind === 'move') {
    var p = t.pts[id];
    if (!p) { return; }
    p.x = x;
    p.y = y;
    p.tr.push([x, y]);
    if (p.tr.length > 500) { p.tr.shift(); }
  } else {
    delete t.pts[id];
  }
  drawTouch();
}
function drawTouch() {
  var t = st.touch;
  if (!t) { return; }
  var f = t.f, c = f.ctx, d = f.d, W = f.W, H = f.H, x, y;
  c.fillStyle = '#111';
  c.fillRect(0, 0, W, H);
  c.strokeStyle = 'rgba(255,255,255,0.08)';
  c.lineWidth = d;
  for (x = 0; x < W; x += 100 * d) { c.beginPath(); c.moveTo(x, 0); c.lineTo(x, H); c.stroke(); }
  for (y = 0; y < H; y += 100 * d) { c.beginPath(); c.moveTo(0, y); c.lineTo(W, y); c.stroke(); }
  var n = Object.keys(t.pts).length;
  c.fillStyle = 'rgba(255,255,255,0.7)';
  c.textAlign = 'center';
  c.font = (18 * d) + 'px sans-serif';
  c.fillText('วางหลายนิ้วพร้อมกันแล้วลากไปทั่วหน้าจอ เพื่อดูว่ามีจุดที่ไม่ตอบสนองหรือไม่', W / 2, H / 2 - 12 * d);
  c.fillText('จุดสัมผัสพร้อมกัน: ' + n + ' · สูงสุด: ' + t.max, W / 2, H / 2 + 20 * d);
  t.lines.forEach(function (tr, k) {
    c.strokeStyle = 'hsl(' + ((k * 47) % 360) + ',80%,60%)';
    c.lineWidth = 3 * d;
    c.lineJoin = 'round';
    c.beginPath();
    tr.forEach(function (p, j) { if (j === 0) { c.moveTo(p[0], p[1]); } else { c.lineTo(p[0], p[1]); } });
    c.stroke();
  });
  Object.keys(t.pts).forEach(function (id) {
    var p = t.pts[id];
    c.fillStyle = 'rgba(255,255,255,0.25)';
    c.strokeStyle = '#fff';
    c.lineWidth = 3 * d;
    c.beginPath();
    c.arc(p.x, p.y, 34 * d, 0, Math.PI * 2);
    c.fill();
    c.stroke();
    c.fillStyle = '#fff';
    c.font = 'bold ' + (18 * d) + 'px sans-serif';
    c.fillText(String(p.n), p.x, p.y - 44 * d);
  });
}
function markAt(px, py) {
  var W = stage.clientWidth, H = stage.clientHeight;
  if (!W || !H) { return; }
  for (var k = 0; k < st.markers.length; k++) {
    var m = st.markers[k];
    if (Math.abs(m.nx * W - px) < 14 && Math.abs(m.ny * H - py) < 14) {
      st.markers.splice(k, 1);
      refreshMarks();
      say('ลบจุดแล้ว');
      return;
    }
  }
  st.markers.push({ nx: px / W, ny: py / H, type: st.type, bg: MODES[st.i].name, full: !!st.fsActive });
  refreshMarks();
  say('บันทึกจุด #' + st.markers.length + ' (' + TYPES[st.type].short + ')');
}
function undoMark() {
  if (st.markers.length) { st.markers.pop(); refreshMarks(); say('ยกเลิกจุดล่าสุด'); }
}
function refreshMarks() {
  if (layer && st.on) {
    clear(layer);
    var W = stage.clientWidth, H = stage.clientHeight;
    st.markers.forEach(function (m, k) {
      var r = el('div', 'spx-ring', '', layer);
      r.style.left = (m.nx * W) + 'px';
      r.style.top = (m.ny * H) + 'px';
      el('span', '', String(k + 1), r);
    });
  }
  if (hudCnt) { hudCnt.textContent = st.markers.length + ' จุด'; }
  updateLogger();
}
function limits(l, mpx) {
  return { bright: Math.round(l.bright * mpx), dead: Math.round(l.dead * mpx), subpixel: Math.round(l.subpixel * mpx) };
}
function isoClass(c, mpx) {
  for (var i = 0; i < ISO.length; i++) {
    var L = limits(ISO[i].l, mpx);
    if (c.bright <= L.bright && c.dead <= L.dead && c.subpixel <= L.subpixel) { return ISO[i].c; }
  }
  return null;
}
function posText(m, n) {
  if (m.full) { return 'x ≈ ' + Math.round(m.nx * n.w) + ', y ≈ ' + Math.round(m.ny * n.h) + ' px'; }
  return '≈ ' + Math.round(m.nx * 100) + '%, ' + Math.round(m.ny * 100) + '% ของพื้นที่ที่ทดสอบ';
}
function counts() {
  var c = { bright: 0, dead: 0, subpixel: 0 };
  st.markers.forEach(function (m) { c[m.type]++; });
  return c;
}
function updateLogger() {
  var n = nat(), mpx = n.w * n.h / 1000000, c = counts();
  var sum = $('sp-sum');
  sum.textContent = st.markers.length
    ? 'ทั้งหมด ' + st.markers.length + ' จุด · จุดเสียดำ ' + c.dead + ' · จุดสว่างค้าง ' + c.bright + ' · ซับพิกเซล ' + c.subpixel
    : 'ยังไม่มีจุดที่บันทึก';
  var iso = $('sp-iso');
  clear(iso);
  if (st.markers.length) {
    var cls = isoClass(c, mpx);
    el('p', '', cls
      ? 'ประมาณการตามมาตรฐาน ISO 9241-307: จำนวนจุดที่บันทึกอยู่ในเกณฑ์ Class ' + cls
      : 'ประมาณการตามมาตรฐาน ISO 9241-307: จำนวนจุดเกินเกณฑ์ Class IV ที่ความละเอียดนี้', iso);
    var parts = ISO.map(function (q) {
      var L = limits(q.l, mpx);
      return 'Class ' + q.c + ' = ' + L.bright + '/' + L.dead + '/' + L.subpixel;
    });
    el('p', '', 'เกณฑ์ที่ ' + n.w + ' × ' + n.h + ' (จุดสว่าง/จุดเสีย/ซับพิกเซล): ' + parts.join(' · '), iso);
    el('p', '', 'เป็นเพียงค่าประมาณ นโยบายรับประกันของแต่ละแบรนด์อาจไม่เหมือนมาตรฐาน ISO ควรตรวจเงื่อนไขของรุ่นที่ใช้', iso);
  }
  var body = $('sp-list');
  clear(body);
  st.markers.forEach(function (m, k) {
    var tr = el('tr', '', '', body);
    el('td', '', String(k + 1), tr);
    el('td', '', TYPES[m.type].name, tr);
    el('td', '', m.bg, tr);
    el('td', '', posText(m, n), tr);
    var td = el('td', '', '', tr);
    var del = el('button', 'sp-del', 'ลบ', td);
    del.type = 'button';
    del.addEventListener('click', function () { st.markers.splice(k, 1); refreshMarks(); });
  });
}
function report() {
  var n = nat(), c = counts(), mpx = n.w * n.h / 1000000;
  var L = ['รายงานการทดสอบหน้าจอ', 'วันที่: ' + new Date().toLocaleString(), 'ความละเอียด: ' + n.w + ' × ' + n.h];
  if (st.hz) { L.push('อัตรารีเฟรชโดยประมาณ: ' + st.hz + ' Hz'); }
  L.push('จุดเสียสีดำ: ' + c.dead + ' · จุดสว่างค้าง: ' + c.bright + ' · ซับพิกเซลผิดปกติ: ' + c.subpixel);
  var cls = isoClass(c, mpx);
  L.push('ISO 9241-307 (ประมาณการ): ' + (cls ? 'Class ' + cls : 'เกิน Class IV'));
  st.markers.forEach(function (m, k) {
    L.push('#' + (k + 1) + ' ' + TYPES[m.type].name + ' | พื้นหลัง: ' + m.bg + ' | ' + posText(m, n));
  });
  return L.join('\n');
}
function legacyCopy(text) {
  return new Promise(function (res, rej) {
    var ta = el('textarea', '', text, document.body);
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    ta.select();
    var ok = false;
    try { ok = document.execCommand('copy'); } catch (e) { ok = false; }
    document.body.removeChild(ta);
    if (ok) { res(); } else { rej(new Error('copy failed')); }
  });
}
function copyText(text) {
  if (navigator.clipboard && navigator.clipboard.writeText) {
    return navigator.clipboard.writeText(text).catch(function () { return legacyCopy(text); });
  }
  return legacyCopy(text);
}
function logMsg(t) { $('sp-logmsg').textContent = t; }
function savePng() {
  if (!st.markers.length) { logMsg('ยังไม่มีจุดที่บันทึก'); return; }
  var n = nat();
  var sc = Math.min(960 / n.w, 1400 / n.h);
  var mw = Math.max(40, Math.round(n.w * sc)), mh = Math.max(40, Math.round(n.h * sc));
  var pad = 20, head = 84;
  var cw = Math.max(560, mw + pad * 2), ch = head + mh + pad * 2 + 30;
  var c = document.createElement('canvas');
  c.width = cw;
  c.height = ch;
  var x = c.getContext('2d');
  x.fillStyle = '#111';
  x.fillRect(0, 0, cw, ch);
  x.fillStyle = '#fff';
  x.font = 'bold 20px sans-serif';
  x.fillText('แผนที่จุดเสียบนหน้าจอ', pad, 32);
  x.font = '15px sans-serif';
  var cnt = counts();
  x.fillText('ความละเอียด ' + n.w + ' × ' + n.h + ' · วันที่ ' + new Date().toLocaleDateString(), pad, 56);
  x.fillText('จุดเสีย ' + cnt.dead + ' · จุดสว่าง ' + cnt.bright + ' · ซับพิกเซล ' + cnt.subpixel, pad, 76);
  var ox = Math.round((cw - mw) / 2), oy = head + pad;
  x.fillStyle = '#222';
  x.fillRect(ox, oy, mw, mh);
  x.strokeStyle = 'rgba(255,255,255,0.15)';
  x.lineWidth = 1;
  for (var g = 1; g < 10; g++) {
    x.beginPath(); x.moveTo(ox + mw * g / 10, oy); x.lineTo(ox + mw * g / 10, oy + mh); x.stroke();
    x.beginPath(); x.moveTo(ox, oy + mh * g / 10); x.lineTo(ox + mw, oy + mh * g / 10); x.stroke();
  }
  x.strokeStyle = '#fff';
  x.strokeRect(ox + 0.5, oy + 0.5, mw, mh);
  st.markers.forEach(function (m, k) {
    var px = ox + m.nx * mw, py = oy + m.ny * mh;
    x.fillStyle = TYPES[m.type].color;
    x.strokeStyle = '#000';
    x.lineWidth = 2;
    x.beginPath();
    x.arc(px, py, 8, 0, Math.PI * 2);
    x.fill();
    x.stroke();
    x.fillStyle = '#fff';
    x.font = 'bold 14px sans-serif';
    x.fillText(String(k + 1), px + 12, py - 8);
  });
  x.font = '13px sans-serif';
  var lx = pad, ly = ch - 12;
  Object.keys(TYPES).forEach(function (k) {
    x.fillStyle = TYPES[k].color;
    x.beginPath(); x.arc(lx + 6, ly - 4, 6, 0, Math.PI * 2); x.fill();
    x.fillStyle = '#fff';
    x.fillText(TYPES[k].name, lx + 18, ly);
    lx += 200;
  });
  c.toBlob(function (b) {
    if (!b) { logMsg('สร้างภาพไม่สำเร็จ'); return; }
    var url = URL.createObjectURL(b);
    var a = document.createElement('a');
    a.href = url;
    a.download = 'screen-test-map.png';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 3000);
    logMsg('ดาวน์โหลดแผนที่จุดแล้ว');
  }, 'image/png');
}
function moveFix(x, y) {
  var W = stage.clientWidth, H = stage.clientHeight;
  var s = fixbox.offsetWidth;
  fixbox.style.left = Math.max(0, Math.min(W - s, x)) + 'px';
  fixbox.style.top = Math.max(0, Math.min(H - s, y)) + 'px';
}
function clampFix() { moveFix(fixbox.offsetLeft, fixbox.offsetTop); }
function fixTick() {
  var left = st.fixEnd - Date.now();
  if (left <= 0) { closeTest(); $('sp-fixmsg').textContent = 'ครบเวลาแล้ว หากจุดยังไม่หาย อาจต้องลองซ้ำหรือถือเป็นจุดเสียถาวร'; return; }
  var s = Math.ceil(left / 1000);
  var mm = Math.floor(s / 60), ss = s % 60;
  hudLab.textContent = 'แก้จุดค้าง · ลากกรอบไปทับจุด · เหลือ ' + mm + ':' + (ss < 10 ? '0' : '') + ss;
}
function openFix() {
  var msg = $('sp-fixmsg');
  if (!$('sp-fixok').checked) { msg.textContent = 'โปรดติ๊กยืนยันว่าอ่านคำเตือนแสงกะพริบก่อนเริ่ม'; return; }
  msg.textContent = '';
  buildStage();
  stopAuto();
  stopRaf();
  stopFix();
  st.on = true;
  st.fix = true;
  st.mark = false;
  st.touch = null;
  var size = parseInt($('sp-fixsize').value, 10) || 160;
  var mins = parseInt($('sp-fixmin').value, 10) || 10;
  stage.className = 'spx-stage on fix' + (st.bot ? ' bot' : '');
  stage.style.backgroundColor = '#000';
  cv.style.display = 'none';
  lockScroll(true);
  enterFs();
  fixbox.style.width = size + 'px';
  fixbox.style.height = size + 'px';
  fixbox.style.left = Math.round((window.innerWidth - size) / 2) + 'px';
  fixbox.style.top = Math.round((window.innerHeight - size) / 2) + 'px';
  st.fixEnd = Date.now() + mins * 60000;
  st.fixT = setInterval(function () {
    fixbox.style.backgroundColor = FIXC[Math.floor(Math.random() * FIXC.length)];
  }, 80);
  st.fixClock = setInterval(fixTick, 500);
  fixTick();
  showHud();
}
function initDiag() {
  var sel = $('sp-diag');
  var o0 = el('option', '', 'เลือกอาการที่เห็น...', sel);
  o0.value = '';
  DIAG.forEach(function (d, k) {
    var o = el('option', '', d.q, sel);
    o.value = String(k);
  });
  sel.addEventListener('change', function () {
    var out = $('sp-diag-out');
    clear(out);
    if (sel.value === '') { return; }
    var d = DIAG[parseInt(sel.value, 10)];
    var h = el('p', '', d.t, out);
    h.style.fontWeight = '700';
    el('p', '', d.a, out);
    var b = el('button', 'sp-btn', 'เริ่มทดสอบด้วยโหมดที่แนะนำ', out);
    b.type = 'button';
    b.addEventListener('click', function () { openTest(modeIndex(d.m)); });
  });
}
document.addEventListener('keydown', function (e) {
  if (!st.on) { return; }
  var k = e.key;
  if (k === 'Escape') { e.preventDefault(); closeTest(); return; }
  var tg = e.target && e.target.tagName;
  if (tg === 'SELECT') { return; }
  if (k === 'h' || k === 'H') { if (stage.classList.contains('hud')) { hideHud(); } else { showHud(); } return; }
  if (k === 't' || k === 'T') { togglePos(); return; }
  if (st.fix) { return; }
  if ((k === ' ' || k === 'Enter') && tg === 'BUTTON') { return; }
  if (k === 'ArrowRight' || k === ' ' || k === 'Enter' || k === 'PageDown') { e.preventDefault(); step(1); }
  else if (k === 'ArrowLeft' || k === 'PageUp') { e.preventDefault(); step(-1); }
  else if (/^[1-9]$/.test(k)) { go(parseInt(k, 10) - 1); }
  else if (k === 'm' || k === 'M') { toggleMark(); }
  else if (k === 'p' || k === 'P') { toggleAuto(); }
  else if (k === 'z' || k === 'Z') { undoMark(); }
  else if (k === 'd' || k === 'D') { st.type = 'dead'; typeSel.value = 'dead'; say('ชนิดที่จะบันทึก: จุดเสียสีดำ'); }
  else if (k === 'b' || k === 'B') { st.type = 'bright'; typeSel.value = 'bright'; say('ชนิดที่จะบันทึก: จุดสว่างค้าง'); }
  else if (k === 's' || k === 'S') { st.type = 'subpixel'; typeSel.value = 'subpixel'; say('ชนิดที่จะบันทึก: ซับพิกเซลผิดปกติ'); }
});
document.addEventListener('fullscreenchange', onFs);
document.addEventListener('webkitfullscreenchange', onFs);
window.addEventListener('resize', function () {
  renderInfo();
  clearTimeout(st.resizeT);
  st.resizeT = setTimeout(function () {
    if (!st.on) { return; }
    if (st.fix) { clampFix(); } else { render(); }
  }, 150);
});
function init() {
  chips();
  initDiag();
  var d = window.devicePixelRatio || 1;
  $('sp-w').value = Math.round(screen.width * d);
  $('sp-h').value = Math.round(screen.height * d);
  $('sp-w').addEventListener('input', updateLogger);
  $('sp-h').addEventListener('input', updateLogger);
  $('sp-start').addEventListener('click', function () { openTest(0); });
  $('sp-hzbtn').addEventListener('click', measureHz);
  $('sp-fixgo').addEventListener('click', openFix);
  $('sp-color').addEventListener('input', function () {
    $('sp-hex').value = $('sp-color').value;
    if (customSw) { customSw.style.background = customColor(); }
  });
  $('sp-hex').addEventListener('input', function () {
    if (/^#[0-9a-fA-F]{6}$/.test($('sp-hex').value)) {
      $('sp-color').value = $('sp-hex').value;
      if (customSw) { customSw.style.background = $('sp-hex').value; }
    }
  });
  $('sp-copy').addEventListener('click', function () {
    copyText(report()).then(function () { logMsg('คัดลอกรายงานแล้ว'); }, function () { logMsg('คัดลอกไม่สำเร็จ ลองเลือกข้อความด้วยตนเอง'); });
  });
  $('sp-png').addEventListener('click', savePng);
  $('sp-clear').addEventListener('click', function () { st.markers = []; refreshMarks(); logMsg('ล้างจุดทั้งหมดแล้ว'); });
  renderInfo();
  updateLogger();
  measureHz();
}
init();
})();
</script>

## วิธีใช้งานเครื่องมือทดสอบหน้าจอ

1. **เตรียมหน้าจอ** เช็ดหน้าจอเบา ๆ ด้วยผ้าไมโครไฟเบอร์แห้งขณะปิดจอ ตั้งความสว่างราว 80–100% ปิดโหมดกลางคืน (Night Light, True Tone) และฟิลเตอร์แสงสีฟ้า จากนั้นตั้ง Zoom เบราว์เซอร์ที่ 100% และใช้ความละเอียดเดิมของจอ
2. **กดเริ่มทดสอบ** กดปุ่ม "เริ่มทดสอบแบบเต็มหน้าจอ" หรือเลือกโหมดที่ต้องการจากรายการด้านบน บนมือถือบางรุ่นจะใช้โหมดเต็มพื้นที่หน้าเว็บแทนเต็มจอจริง
3. **ไล่ดูทีละสี** เริ่มจากดำ ขาว แดง เขียว น้ำเงิน และเทา คลิก แตะ หรือกด → เพื่อไปสีถัดไป กด ← เพื่อย้อนกลับ และกดเลข 1–9 เพื่อข้ามไปโหมดนั้น สังเกตให้ครบทั้งกลางจอ ขอบ และมุมทั้งสี่
4. **มาร์กจุดที่ผิดปกติ** กดปุ่ม "มาร์กจุด" หรือกด M แล้วคลิกที่จุดนั้น เลือกชนิดจากเมนูหรือกด D (จุดเสียสีดำ) B (จุดสว่างค้าง) S (ซับพิกเซลผิดปกติ) คลิกซ้ำที่จุดเดิมเพื่อลบ หรือกด Z เพื่อยกเลิกจุดล่าสุด
5. **ทดสอบเพิ่มเติม** ใช้พื้นสีดำในห้องมืดเพื่อดู Backlight Bleed ใช้พื้นเทาเพื่อดู Mura และใช้โหมดไล่ระดับเพื่อดู Banding ใช้โหมด Ghosting เพื่อดูเงาลากของภาพเคลื่อนไหว และใช้โหมดทัชสกรีนเพื่อตรวจจุดที่ไม่ตอบสนอง
6. **ออกและดูสรุป** กด Esc หรือปุ่ม "ออก" แล้วดูสรุปในส่วนบันทึกจุดเสีย คัดลอกรายงานหรือดาวน์โหลดแผนที่จุดเป็นภาพ PNG เพื่อแนบเวลาติดต่อร้านค้าหรือศูนย์บริการ
7. **วินิจฉัยและแก้ไข** เลือกอาการที่เห็นในส่วนวินิจฉัยเพื่อดูสาเหตุที่เป็นไปได้ หากเป็นจุดสว่างค้าง ลองใช้เครื่องมือแก้จุดค้างได้ แต่ไม่รับประกันผล

ข้อมูลจุดที่บันทึกจะอยู่ในเบราว์เซอร์ของคุณเท่านั้นและหายเมื่อรีเฟรชหน้า ควรคัดลอกรายงานหรือดาวน์โหลดภาพไว้ก่อนปิดหน้านี้

### คีย์ลัดระหว่างทดสอบ

| คีย์ | การทำงาน |
| --- | --- |
| → หรือ Space หรือ Enter | โหมดถัดไป |
| ← | ย้อนกลับ |
| 1–9 | ข้ามไปโหมดที่ 1–9 |
| M | เปิดหรือปิดโหมดมาร์กจุด |
| D / B / S | เลือกชนิดจุด: จุดเสีย / จุดสว่าง / ซับพิกเซล |
| Z | ยกเลิกจุดที่มาร์กล่าสุด |
| P | เปิดหรือปิดการเปลี่ยนโหมดอัตโนมัติ |
| H | ซ่อนหรือแสดงแถบเครื่องมือ |
| T | ย้ายแถบเครื่องมือไปด้านบนหรือล่าง |
| Esc | ออกจากโหมดทดสอบ |

บนจอสัมผัส แตะที่หน้าจอเพื่อไปโหมดถัดไป และแตะค้างประมาณครึ่งวินาทีเพื่อเรียกแถบเครื่องมือ

## ความหมายของคำศัพท์ที่เกี่ยวกับจอภาพ

- **Dead Pixel (จุดเสีย)** คือพิกเซลที่ไม่ติดสว่างเลย เห็นเป็นจุดดำในทุกสี และเห็นชัดที่สุดบนพื้นขาว
- **Stuck Pixel (จุดค้าง)** คือพิกเซลที่ติดสว่างตลอดเวลา มักเป็นสีแดง เขียว หรือน้ำเงิน และเห็นชัดบนพื้นดำ
- **Hot Pixel (จุดสว่างค้าง)** คือพิกเซลที่สว่างเป็นสีขาวตลอดเวลา เห็นชัดบนพื้นดำ ตรงกับ Type 1 ในมาตรฐาน ISO
- **Sub-pixel (ซับพิกเซล)** คือจุดสีย่อยแดง เขียว น้ำเงิน ที่ประกอบกันเป็นหนึ่งพิกเซล หากซับพิกเซลใดค้างหรือดับ จะเห็นเป็นจุดสีเดียว
- **Mura** คือความไม่สม่ำเสมอของความสว่างหรือสี เห็นเป็นหย่อมขุ่นหรือลายด่างบนพื้นเทา
- **Backlight Bleed** คือแสงไฟหลังจอรั่วออกมาตามขอบหรือมุม เห็นชัดบนพื้นดำในห้องมืด
- **IPS Glow** คือแสงเรืองบริเวณมุมจอแบบ IPS เมื่อมองในมุมเฉียง ต่างจาก Backlight Bleed ตรงที่เปลี่ยนไปตามมุมมองและหายเมื่อมองตรง
- **Banding** คือแถบสีเป็นขั้นหยาบแทนที่จะไล่ระดับเนียน มักเห็นในโหมดไล่ระดับเทาหรือภาพท้องฟ้า
- **Ghosting** คือเงาลากตามหลังวัตถุที่เคลื่อนไหวเร็ว เกิดเมื่อพิกเซลเปลี่ยนสีไม่ทัน
- **Response Time (เวลาตอบสนอง)** คือเวลาที่พิกเซลใช้เปลี่ยนสี วัดเป็นมิลลิวินาที ยิ่งน้อยยิ่งเกิด Ghosting น้อย
- **Image Retention (ภาพค้างชั่วคราว)** คือภาพเก่าที่ยังจางอยู่หลังเปลี่ยนภาพ มักหายได้เองเมื่อพักจอ
- **Burn-in (ภาพไหม้)** คือภาพค้างถาวรจากการแสดงภาพนิ่งนาน ๆ พบได้บ่อยในจอ OLED
- **Refresh Rate (อัตรารีเฟรช)** คือจำนวนครั้งต่อวินาทีที่จอวาดภาพใหม่ วัดเป็นเฮิร์ตซ์ (Hz) เช่น 60, 120 หรือ 144 Hz
- **Color Depth (ความลึกของสี)** คือจำนวนบิตที่ใช้เก็บข้อมูลสี ค่า 24 บิตแสดงได้ราว 16.7 ล้านสี
- **Color Gamut (ขอบเขตสี)** คือช่วงสีที่จอแสดงได้ เช่น sRGB, Display P3 และ Rec.2020 ยิ่งกว้างยิ่งแสดงสีสดได้มาก
- **HDR** คือเทคโนโลยีที่ขยายช่วงความสว่างและความมืดของภาพให้กว้างขึ้น ต้องใช้จอที่รองรับ
- **Native Resolution (ความละเอียดจริง)** คือจำนวนพิกเซลจริงของแผงจอ เช่น 1920 × 1080 ซึ่งคุณภาพจะคมที่สุดเมื่อใช้ความละเอียดนี้
- **Device Pixel Ratio (อัตราส่วนพิกเซล)** คืออัตราส่วนของพิกเซลจริงต่อหน่วยพิกเซลในเว็บ เช่น จอ Retina มักมีค่า 2
- **Multi-touch (สัมผัสหลายจุด)** คือความสามารถของจอสัมผัสในการรับนิ้วหลายนิ้วพร้อมกัน
- **ISO 9241-307** คือมาตรฐานสากลที่แบ่งระดับความบกพร่องของพิกเซลเป็น Class I ถึง IV ตามจำนวนจุดต่อหนึ่งล้านพิกเซล

## เกณฑ์ ISO 9241-307 สำหรับจุดเสีย

ตัวเลขด้านล่างคือจำนวนสูงสุดที่ยอมรับได้ต่อหนึ่งล้านพิกเซล เครื่องมือนี้จะคำนวณตามความละเอียดจอของคุณให้อัตโนมัติ

| Class | Type 1: จุดสว่างค้าง | Type 2: จุดเสียสีดำ | Type 3: ซับพิกเซลผิดปกติ |
| --- | --- | --- | --- |
| I | 0 | 0 | 0 |
| II | 2 | 2 | 5 |
| III | 5 | 15 | 50 |
| IV | 50 | 150 | 500 |

มาตรฐานนี้ยังมีเกณฑ์เพิ่มเติมสำหรับจุดที่อยู่รวมกันเป็นกลุ่ม (Cluster) ซึ่งเครื่องมือนี้ไม่ได้คำนวณให้ ผู้ผลิตแต่ละรายอาจใช้เงื่อนไขรับประกันต่างจากมาตรฐานนี้ จึงควรตรวจเงื่อนไขของรุ่นที่คุณใช้ก่อนเสมอ

## คำถามที่พบบ่อย

### Dead pixel กับ stuck pixel ต่างกันอย่างไร

Dead pixel คือพิกเซลที่ไม่ติดสว่างเลย เห็นเป็นจุดดำในทุกสีและชัดที่สุดบนพื้นขาว ส่วน stuck pixel คือพิกเซลที่ติดสว่างตลอดเวลา มักเป็นสีแดง เขียว หรือน้ำเงิน และเห็นชัดบนพื้นดำ

### เครื่องมือนี้ต้องติดตั้งโปรแกรมหรือสมัครสมาชิกไหม

ไม่ต้อง เครื่องมือทำงานในเบราว์เซอร์ เปิดหน้านี้แล้วกดเริ่มทดสอบได้ทันที ข้อมูลจุดที่คุณบันทึกอยู่ในเบราว์เซอร์ของคุณเท่านั้นและจะหายเมื่อรีเฟรชหน้า ควรคัดลอกรายงานหรือดาวน์โหลดภาพแผนที่จุดไว้ก่อน

### จุดเสียหรือจุดค้างแก้ไขได้ไหม

จุดค้างบางจุดอาจหายได้ด้วยการกะพริบสีทับตำแหน่งนั้น แต่ไม่รับประกันผล ส่วนจุดเสียสีดำมักแก้ด้วยซอฟต์แวร์ไม่ได้ ควรบันทึกจำนวนและตำแหน่งไว้ แล้วตรวจเงื่อนไขรับประกันของผู้ผลิต

### มีจุดเสียกี่จุดจึงเคลมประกันได้

ขึ้นอยู่กับแบรนด์และรุ่น บางแบรนด์อ้างอิงมาตรฐาน ISO 9241-307 และบางแบรนด์กำหนดเกณฑ์เอง ควรบันทึกจำนวนและตำแหน่งของจุดด้วยเครื่องมือนี้ แล้วตรวจเงื่อนไขการรับประกันของรุ่นที่ใช้ก่อนติดต่อศูนย์บริการ

### ทดสอบ Backlight Bleed ทำอย่างไร

ทดสอบในห้องมืด ตั้งความสว่างตามที่ใช้งานจริง เลือกโหมดสีดำแล้วมองตรงหน้าจอ หากเห็นหย่อมแสงสว่างตามขอบหรือมุมที่ไม่หายไปเมื่อมองตรง แสดงว่าอาจเป็น Backlight Bleed แต่ถ้าแสงหายหรือเปลี่ยนไปเมื่อขยับมุมมอง อาจเป็น IPS Glow

### ทำไมอัตรารีเฟรชที่วัดได้จึงต่ำกว่าที่จอระบุ

เครื่องมือวัดผ่านเบราว์เซอร์ ซึ่งอาจจำกัดอัตราเฟรมจากโหมดประหยัดพลังงาน การตั้งค่าระบบปฏิบัติการ หรือการที่หน้าต่างไม่ได้อยู่ด้านหน้า ควรตรวจการตั้งค่าอัตรารีเฟรชในระบบปฏิบัติการเพิ่มเติม

### ใช้ทดสอบหน้าจอมือถือหรือแท็บเล็ตได้ไหม

ได้ เปิดหน้านี้ในเบราว์เซอร์ของเครื่อง แตะเพื่อเปลี่ยนสี และใช้โหมดทดสอบทัชสกรีนเพื่อตรวจจุดสัมผัสหลายนิ้ว บางเบราว์เซอร์ เช่น iPhone ไม่รองรับโหมดเต็มจอ ระบบจะใช้เต็มพื้นที่หน้าเว็บแทน

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Dead pixel กับ stuck pixel ต่างกันอย่างไร",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Dead pixel คือพิกเซลที่ไม่ติดสว่างเลย เห็นเป็นจุดดำในทุกสีและชัดที่สุดบนพื้นขาว ส่วน stuck pixel คือพิกเซลที่ติดสว่างตลอดเวลา มักเป็นสีแดง เขียว หรือน้ำเงิน และเห็นชัดบนพื้นดำ"
      }
    },
    {
      "@type": "Question",
      "name": "เครื่องมือนี้ต้องติดตั้งโปรแกรมหรือสมัครสมาชิกไหม",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "ไม่ต้อง เครื่องมือทำงานในเบราว์เซอร์ เปิดหน้านี้แล้วกดเริ่มทดสอบได้ทันที ข้อมูลจุดที่คุณบันทึกอยู่ในเบราว์เซอร์ของคุณเท่านั้นและจะหายเมื่อรีเฟรชหน้า ควรคัดลอกรายงานหรือดาวน์โหลดภาพแผนที่จุดไว้ก่อน"
      }
    },
    {
      "@type": "Question",
      "name": "จุดเสียหรือจุดค้างแก้ไขได้ไหม",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "จุดค้างบางจุดอาจหายได้ด้วยการกะพริบสีทับตำแหน่งนั้น แต่ไม่รับประกันผล ส่วนจุดเสียสีดำมักแก้ด้วยซอฟต์แวร์ไม่ได้ ควรบันทึกจำนวนและตำแหน่งไว้ แล้วตรวจเงื่อนไขรับประกันของผู้ผลิต"
      }
    },
    {
      "@type": "Question",
      "name": "มีจุดเสียกี่จุดจึงเคลมประกันได้",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "ขึ้นอยู่กับแบรนด์และรุ่น บางแบรนด์อ้างอิงมาตรฐาน ISO 9241-307 และบางแบรนด์กำหนดเกณฑ์เอง ควรบันทึกจำนวนและตำแหน่งของจุดด้วยเครื่องมือนี้ แล้วตรวจเงื่อนไขการรับประกันของรุ่นที่ใช้ก่อนติดต่อศูนย์บริการ"
      }
    },
    {
      "@type": "Question",
      "name": "ทดสอบ Backlight Bleed ทำอย่างไร",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "ทดสอบในห้องมืด ตั้งความสว่างตามที่ใช้งานจริง เลือกโหมดสีดำแล้วมองตรงหน้าจอ หากเห็นหย่อมแสงสว่างตามขอบหรือมุมที่ไม่หายไปเมื่อมองตรง แสดงว่าอาจเป็น Backlight Bleed แต่ถ้าแสงหายหรือเปลี่ยนไปเมื่อขยับมุมมอง อาจเป็น IPS Glow"
      }
    },
    {
      "@type": "Question",
      "name": "ทำไมอัตรารีเฟรชที่วัดได้จึงต่ำกว่าที่จอระบุ",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "เครื่องมือวัดผ่านเบราว์เซอร์ ซึ่งอาจจำกัดอัตราเฟรมจากโหมดประหยัดพลังงาน การตั้งค่าระบบปฏิบัติการ หรือการที่หน้าต่างไม่ได้อยู่ด้านหน้า ควรตรวจการตั้งค่าอัตรารีเฟรชในระบบปฏิบัติการเพิ่มเติม"
      }
    },
    {
      "@type": "Question",
      "name": "ใช้ทดสอบหน้าจอมือถือหรือแท็บเล็ตได้ไหม",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "ได้ เปิดหน้านี้ในเบราว์เซอร์ของเครื่อง แตะเพื่อเปลี่ยนสี และใช้โหมดทดสอบทัชสกรีนเพื่อตรวจจุดสัมผัสหลายนิ้ว บางเบราว์เซอร์ เช่น iPhone ไม่รองรับโหมดเต็มจอ ระบบจะใช้เต็มพื้นที่หน้าเว็บแทน"
      }
    }
  ]
}
</script>