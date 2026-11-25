---
title: แผนที่ระบบขนส่งสาธารณะ รถไฟฟ้า BTS MRT ARL ออนไลน์ ฟรี
h1: แผนที่ระบบขนส่งสาธารณะ
description: 'ดูแผนที่ระบบขนส่งสาธารณะ รถไฟฟ้ากรุงเทพครบทุกสาย BTS MRT ARL สายสีแดง ค้นหาสาย กรองผู้ให้บริการ ดูค่าโดยสารและมาตรการล่าสุดปี 2569 ใช้ฟรี ไม่ต้องโหลดแอป'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-25T09:42:45+07:00'
weight: 163
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- แผนที่ระบบขนส่งสาธารณะ
- แผนที่ระบบขนส่งสาธารณะ ออนไลน์
- ทดสอบและวัดค่า
- แผนที่รถไฟฟ้ากรุงเทพ
- ค่าโดยสารรถไฟฟ้า
- BTS MRT ARL สายสีแดง
---

<style>
.tm{max-width:760px;margin:0 auto}
.tm-bar{display:flex;gap:8px;flex-wrap:wrap;margin-bottom:10px}
.tm-bar input{flex:1;min-width:200px;padding:10px;border:1px solid #8886;border-radius:8px;font:inherit}
.tm-bar select{padding:10px;border:1px solid #8886;border-radius:8px;font:inherit}
.tm-chips{display:flex;gap:6px;flex-wrap:wrap;margin-bottom:12px}
.tm-chip{padding:6px 14px;border:1px solid #8886;border-radius:999px;background:none;color:inherit;font:inherit;cursor:pointer}
.tm-chip.on{background:#2563eb;border-color:#2563eb;color:#fff}
.tm-card{border:1px solid #8884;border-left:8px solid #888;border-radius:8px;padding:10px 14px;margin-bottom:8px}
.tm-card summary{cursor:pointer;font-weight:600}
.tm-card p{margin:6px 0}
.tm-copy{padding:4px 12px;border:1px solid #8886;border-radius:6px;background:none;color:inherit;font:inherit;cursor:pointer}
.tm-note{font-size:.9em;opacity:.85;border:1px dashed #8886;border-radius:8px;padding:10px}
</style>

<div class="tm" id="tm">
<div class="tm-bar"><input id="tmq" type="search" placeholder="ค้นหา เช่น สายสีเหลือง, BTS, ลาดพร้าว" aria-label="ค้นหาสายรถไฟฟ้า"><select id="tms" aria-label="เรียงลำดับ"><option value="sys">เรียงตามระบบ</option><option value="n">สถานีมากที่สุดก่อน</option></select></div>
<div class="tm-chips" id="tmc"></div>
<div id="tml"></div>
<p class="tm-note" id="tmn"></p>
</div>

<script>
(function () {
  var L = [
    {name: "BTS สายสุขุมวิท", sys: "BTS", op: "BTSC", color: "#8dc63f", route: "เคหะฯ – คูคต", n: 47, fare: "BTS 15–62 บาท ตามระยะทาง", pay: "ตรวจสอบประเภทบัตรกับผู้ให้บริการ"},
    {name: "BTS สายสีลม", sys: "BTS", op: "BTSC", color: "#00754a", route: "บางหว้า – สนามกีฬาแห่งชาติ", n: 14, fare: "BTS 15–62 บาท ตามระยะทาง", pay: "ตรวจสอบประเภทบัตรกับผู้ให้บริการ"},
    {name: "BTS สายสีทอง", sys: "BTS", op: "BTSC", color: "#c9a227", route: "กรุงธนบุรี – คลองสาน", n: 3, fare: "ตรวจสอบอัตราปัจจุบันกับผู้ให้บริการ", pay: "ตรวจสอบประเภทบัตรกับผู้ให้บริการ"},
    {name: "MRT สายสีน้ำเงิน", sys: "MRT", op: "BEM", color: "#1e4ba0", route: "หลักสอง – ท่าพระ (วงกลม)", n: 38, fare: "MRT 17–43 บาท ตามระยะทาง", pay: "บัตร EMV Contactless (ตั้งแต่ ม.ค. 2565)"},
    {name: "MRT สายสีม่วง", sys: "MRT", op: "BEM", color: "#6a3a8c", route: "คลองบางไผ่ – เตาปูน", n: 16, fare: "14–42 บาท (ลดนักเรียน 10% ผู้สูงอายุและเด็ก 50%)", pay: "บัตร EMV Contactless (ตั้งแต่ ม.ค. 2565)"},
    {name: "MRT สายสีเหลือง", sys: "MRT", op: "บริษัทในเครือ BTSC", color: "#f5c400", route: "ลาดพร้าว – สำโรง", n: 23, fare: "คิดตามระยะทาง", pay: "เงินสด, EMV Contactless, บัตรแรบบิท"},
    {name: "MRT สายสีชมพู", sys: "MRT", op: "บริษัทในเครือ BTSC", color: "#ee6aa7", route: "แคราย – มีนบุรี", n: 30, fare: "คิดตามระยะทาง", pay: "เงินสด, EMV Contactless, บัตรแรบบิท"},
    {name: "แอร์พอร์ตลิงก์ (ARL)", sys: "ARL", op: "เอเชีย เอรา วัน (สัมปทาน รฟท.)", color: "#c5282f", route: "พญาไท – สุวรรณภูมิ", n: 8, fare: "ตรวจสอบอัตราปัจจุบันกับผู้ให้บริการ", pay: "ตรวจสอบประเภทบัตรกับผู้ให้บริการ"},
    {name: "สายสีแดงเข้ม (SRT)", sys: "SRT", op: "การรถไฟแห่งประเทศไทย", color: "#a30f1f", route: "บางซื่อ – รังสิต", n: 10, fare: "12–42 บาท ตามระยะทาง", pay: "บัตร EMV Contactless"},
    {name: "สายสีแดงอ่อน (SRT)", sys: "SRT", op: "การรถไฟแห่งประเทศไทย", color: "#e8505b", route: "บางซื่อ – ตลิ่งชัน", n: 4, fare: "12–42 บาท ตามระยะทาง", pay: "บัตร EMV Contactless"}
  ];
  var sysFilter = "ทั้งหมด";
  var q = document.getElementById("tmq");
  var s = document.getElementById("tms");
  var chips = document.getElementById("tmc");
  var list = document.getElementById("tml");
  document.getElementById("tmn").textContent = "ข้อมูลอัปเดต 25 พฤศจิกายน 2569 • มาตรการตั๋วรายวัน 40 บาท (สายสีแดงและสีม่วง) กำหนดสิ้นสุด 30 พ.ย. 2569 และมติ ครม. 23 มิ.ย. 2569 ให้เดินหน้าค่าโดยสารร่วมสูงสุด 45 บาทต่อเที่ยว คาดใช้จริงต้นปี 2570 • ควรตรวจสอบกับผู้ให้บริการก่อนเดินทาง";
  function el(tag, cls, text) {
    var e = document.createElement(tag);
    if (cls) { e.className = cls; }
    if (text) { e.textContent = text; }
    return e;
  }
  function copyText(t, btn) {
    try {
      navigator.clipboard.writeText(t);
      btn.textContent = "คัดลอกแล้ว";
    } catch (err) {
      btn.textContent = "คัดลอกไม่ได้";
    }
  }
  function render() {
    var kw = q.value.trim().toLowerCase();
    var rows = L.filter(function (x) {
      var okSys = sysFilter === "ทั้งหมด" || x.sys === sysFilter;
      var hay = (x.name + " " + x.route + " " + x.sys + " " + x.op).toLowerCase();
      return okSys && hay.indexOf(kw) !== -1;
    });
    if (s.value === "n") {
      rows.sort(function (a, b) { return b.n - a.n; });
    }
    list.textContent = "";
    if (rows.length === 0) {
      list.appendChild(el("p", "", "ไม่พบสายที่ตรงกับคำค้นหา"));
      return;
    }
    rows.forEach(function (x) {
      var d = el("details", "tm-card");
      d.style.borderLeftColor = x.color;
      d.appendChild(el("summary", "", x.name + " • " + x.n + " สถานี"));
      d.appendChild(el("p", "", "เส้นทาง: " + x.route));
      d.appendChild(el("p", "", "ผู้ให้บริการ: " + x.op));
      d.appendChild(el("p", "", "ค่าโดยสาร: " + x.fare));
      d.appendChild(el("p", "", "การชำระเงิน: " + x.pay));
      var b = el("button", "tm-copy", "คัดลอกสรุป");
      b.type = "button";
      b.addEventListener("click", function () {
        copyText(x.name + " | " + x.route + " | " + x.n + " สถานี | " + x.fare, b);
      });
      d.appendChild(b);
      list.appendChild(d);
    });
  }
  ["ทั้งหมด", "BTS", "MRT", "SRT", "ARL"].forEach(function (name) {
    var c = el("button", "tm-chip" + (name === sysFilter ? " on" : ""), name);
    c.type = "button";
    c.addEventListener("click", function () {
      sysFilter = name;
      Array.prototype.forEach.call(chips.children, function (k) { k.className = "tm-chip" + (k === c ? " on" : ""); });
      render();
    });
    chips.appendChild(c);
  });
  q.addEventListener("input", render);
  s.addEventListener("change", render);
  render();
})();
</script>

## วิธีใช้งาน

1. พิมพ์ชื่อสาย ชื่อสถานีปลายทาง หรือชื่อระบบ (เช่น BTS, สายสีชมพู) ในช่องค้นหา
2. กดปุ่ม BTS, MRT, SRT หรือ ARL เพื่อกรองตามระบบ กด "ทั้งหมด" เพื่อแสดงทุกสาย
3. เลือกเรียงตามระบบ หรือเรียงตามจำนวนสถานี
4. กดที่ชื่อสายเพื่อดูเส้นทาง ผู้ให้บริการ ค่าโดยสาร และวิธีชำระเงิน แล้วกด "คัดลอกสรุป" เพื่อนำไปแชร์

## คำศัพท์ที่ควรรู้

- **BTS:** รถไฟฟ้าบีทีเอส วิ่งบนทางยกระดับ ให้บริการโดย BTSC มีสายสุขุมวิท สายสีลม และสายสีทอง
- **MRT:** รถไฟฟ้ามหานคร ได้แก่ สายสีน้ำเงิน สีม่วง สีเหลือง และสีชมพู
- **ARL (แอร์พอร์ตลิงก์):** รถไฟฟ้าเชื่อมใจกลางเมืองกับท่าอากาศยานสุวรรณภูมิ
- **SRT / สายสีแดง:** รถไฟฟ้าชานเมืองของการรถไฟแห่งประเทศไทย แบ่งเป็นสายสีแดงเข้มและสีแดงอ่อน
- **BTSC และ BEM:** ผู้ให้บริการเดินรถ โดย BEM เดินรถสายสีน้ำเงินและสีม่วง
- **EMV Contactless:** บัตรเครดิตหรือเดบิตที่แตะจ่ายค่าโดยสารได้โดยตรง
- **บัตรแรบบิท:** บัตรเติมเงินที่ใช้กับบางสาย เช่น สายสีเหลืองและสีชมพู
- **ตั๋วร่วม / ค่าโดยสารร่วม:** แนวทางให้ใช้บัตรหรือตั๋วใบเดียวข้ามหลายสาย และคิดค่าโดยสารสูงสุดต่อเที่ยวรวมกัน
- **ค่าโดยสารตามระยะทาง:** ราคาเพิ่มตามจำนวนสถานีที่เดินทาง
- **ตั๋วรายวัน:** ตั๋วเหมาจ่ายรายวันแบบไม่จำกัดเที่ยว
- **สถานีเปลี่ยนสาย:** สถานีที่เปลี่ยนไปใช้อีกสายหรืออีกระบบได้

## คำถามที่พบบ่อย

**รถไฟฟ้ากรุงเทพมีกี่สาย?** ปัจจุบันมี 10 สายใน 4 ระบบ ได้แก่ BTS, MRT, ARL และสายสีแดง (SRT)

**ค่าโดยสาร 20 บาทตลอดสายยังใช้ได้ไหม?** มาตรการ 20 บาททุกสายไม่ได้เริ่มใช้ตามแผนเดิม ปัจจุบันมีตั๋วรายวัน 40 บาทเฉพาะสายสีแดงและสีม่วง และรัฐบาลเตรียมค่าโดยสารร่วมสูงสุด 45 บาทต่อเที่ยว ควรตรวจสอบกับผู้ให้บริการก่อนเดินทาง

**ข้อมูลในหน้านี้เชื่อถือได้แค่ไหน?** รวบรวมจากแหล่งข่าวและข้อมูลสาธารณะ ณ วันที่ระบุ ค่าโดยสารและเวลาเดินรถอาจเปลี่ยนแปลง ควรยืนยันกับผู้ให้บริการอีกครั้ง