---
title: เครื่องคิดเลขเปอร์เซ็นต์ ออนไลน์ ฟรี
h1: เครื่องคิดเลขเปอร์เซ็นต์
description: เครื่องคิดเลขเปอร์เซ็นต์ออนไลน์ฟรี คำนวณส่วนลด เงินเดือนขึ้น และเปอร์เซ็นต์การเปลี่ยนแปลงทันที ใช้ง่าย ไม่ต้องติดตั้ง รองรับมือถือ แท็บเล็ต และคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-28T09:00:00+07:00'
weight: 10
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- เครื่องคิดเลขเปอร์เซ็นต์
- เครื่องคิดเลขเปอร์เซ็นต์ ออนไลน์
- สุ่มและคำนวณ
---

<div id="pc-app" class="pc-app"></div>
<style>
.pc-app{max-width:760px;margin:0 auto;font-size:1rem;line-height:1.6}
.pc-tabs{display:flex;gap:8px;margin-bottom:14px;flex-wrap:wrap}
.pc-tab{flex:1;min-width:140px;padding:10px 14px;border:1px solid rgba(128,128,128,.45);border-radius:10px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.pc-tab[aria-selected="true"]{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
.pc-card{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:14px 16px;margin-bottom:12px}
.pc-q{display:flex;flex-wrap:wrap;align-items:center;gap:6px 8px}
.pc-in{width:7.5em;max-width:100%;padding:6px 8px;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:transparent;color:inherit;font:inherit;text-align:right}
.pc-in:focus{outline:2px solid #2563eb;outline-offset:1px}
.pc-ans{margin-top:10px;padding-top:10px;border-top:1px dashed rgba(128,128,128,.45)}
.pc-ans b,.pc-v{color:#2563eb;font-weight:700}
.pc-f{margin-top:8px;word-break:break-word}
.pc-clear{display:block;margin:6px 0 0 auto;padding:8px 16px;border:1px solid rgba(128,128,128,.55);border-radius:10px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.pc-clear:hover{border-color:#dc2626;color:#dc2626}
.pc-pane[hidden]{display:none}
</style>
<script>
(function () {
  var root = document.getElementById('pc-app');
  if (!root) { return; }
  var nf = new Intl.NumberFormat('en-US', { maximumFractionDigits: 4 });
  function fmt(n) { return isFinite(n) ? nf.format(n) : '-'; }
  function num(s) {
    s = String(s).replace(/,/g, '').trim();
    return s === '' ? NaN : Number(s);
  }
  var C = [
    { id: 'c1', K: ['a', 'b'],
      L: { a: 'เปอร์เซ็นต์', b: 'จำนวนทั้งหมด' }, P: { a: '20', b: '500' },
      q: '{a} % ของ {b} คืออะไร?',
      f: '$a % × $b = ($a ÷ 100) × $b = $r',
      a: 'ตอบ: $r',
      calc: function (v) { return { r: v.a / 100 * v.b }; } },
    { id: 'c2', K: ['a', 'b'],
      L: { a: 'ตัวเลขส่วน', b: 'จำนวนทั้งหมด' }, P: { a: '50', b: '200' },
      q: '{a} คิดเป็นกี่เปอร์เซ็นต์ของ {b}',
      f: '$a ÷ $b = $d = $r %',
      a: 'ตอบ: $r %',
      calc: function (v) { var d = v.a / v.b; return { d: d, r: d * 100 }; } },
    { id: 'c3', K: ['a', 'p'],
      L: { a: 'ตัวเลขส่วน', p: 'เปอร์เซ็นต์' }, P: { a: '50', p: '25' },
      q: '{a} คือ {p} % ของอะไร?',
      f: '$a ÷ ($p %) = $a ÷ $d = $r',
      a: 'ตอบ: $r',
      calc: function (v) { var d = v.p / 100; return { d: d, r: v.a / d }; } },
    { id: 'c4', K: ['a', 'b'],
      L: { a: 'ค่าเริ่มต้น', b: 'ค่าใหม่' }, P: { a: '80', b: '100' },
      q: 'เปอร์เซ็นต์การเปลี่ยนแปลงจาก {a} เป็น {b} คืออะไร?',
      f: '$b ÷ $a − 1 = $d = $r %',
      a: 'ตอบ: $r %',
      calc: function (v) { var d = v.b / v.a - 1; return { d: d, r: d * 100 }; } },
    { id: 'c5', K: ['s', 'p'],
      L: { s: 'เงินเดือนเดิม (บาท)', p: 'เปอร์เซ็นต์ที่เพิ่มขึ้น' }, P: { s: '20000', p: '5' },
      q: 'วิธีคิดเปอร์เซ็นต์เงินเดือน: เดิมได้เงินเดือน {s} บาท หากเงินเดือนเพิ่มขึ้น {p} %',
      f: '$s × (1 + $p %) = $s × (1 + $d) = $r',
      a: 'ตอบ: เงินเดือนใหม่ $r บาท (เพิ่มขึ้น $m บาท)',
      calc: function (v) {
        var d = v.p / 100, r = v.s * (1 + d);
        return { d: d, r: r, m: r - v.s };
      } },
    { id: 'c6', K: ['s', 'p'],
      L: { s: 'ราคาสินค้า (บาท)', p: 'ส่วนลด (เปอร์เซ็นต์)' }, P: { s: '1000', p: '15' },
      q: 'คิดเปอร์เซ็นต์ลดราคา: สินค้าราคา {s} บาท ให้ส่วนลด {p} % ราคาที่คุณต้องจ่าย',
      f: '$s × (1 − $p %) = $s × (1 − $d) = $r',
      a: 'ตอบ: $r บาท (ประหยัด $m บาท)',
      calc: function (v) {
        var d = v.p / 100, r = v.s * (1 - d);
        return { d: d, r: r, m: v.s - r };
      } }
  ];
  function span(c, k, cls) {
    return '<b class="' + cls + '" data-c="' + c.id + '" data-v="' + k + '">-</b>';
  }
  function fill(tpl, fn) {
    return tpl.replace(/[{$](\w)\}?/g, function (m, k) { return fn(k); });
  }
  function inputHtml(c, k) {
    return '<input class="pc-in" type="text" inputmode="decimal" autocomplete="off"' +
      ' data-c="' + c.id + '" data-k="' + k + '" placeholder="' + c.P[k] +
      '" aria-label="' + c.L[k] + '">';
  }
  function cardQ(c) {
    return '<section class="pc-card"><div class="pc-q">' +
      fill(c.q, function (k) { return inputHtml(c, k); }) +
      '</div><div class="pc-ans">' +
      fill(c.a, function (k) { return span(c, k, 'pc-r'); }) + '</div></section>';
  }
  function cardF(c) {
    return '<section class="pc-card"><div class="pc-q">' +
      c.q.replace(/\{(\w)\}/g, function (m, k) { return '<span class="pc-v" data-c="' + c.id + '" data-v="' + k + '">?</span>'; }) +
      '</div><div class="pc-f">' +
      fill(c.f, function (k) { return span(c, k, 'pc-v'); }) + '</div></section>';
  }
  root.innerHTML =
    '<div class="pc-tabs" role="tablist">' +
    '<button type="button" class="pc-tab" role="tab" aria-selected="true" data-t="q">คำถาม</button>' +
    '<button type="button" class="pc-tab" role="tab" aria-selected="false" data-t="f">สูตรทางคณิตศาสตร์</button>' +
    '</div>' +
    '<div class="pc-pane" data-p="q">' + C.map(cardQ).join('') + '</div>' +
    '<div class="pc-pane" data-p="f" hidden>' + C.map(cardF).join('') + '</div>' +
    '<button type="button" class="pc-clear">ลบข้อมูลทั้งหมด</button>';
  function update(c) {
    var v = {};
    c.K.forEach(function (k) {
      var el = root.querySelector('input[data-c="' + c.id + '"][data-k="' + k + '"]');
      v[k] = el ? num(el.value) : NaN;
    });
    var res = c.calc(v);
    var all = {};
    Object.keys(v).forEach(function (k) { all[k] = isNaN(v[k]) ? '?' : fmt(v[k]); });
    Object.keys(res).forEach(function (k) { all[k] = fmt(res[k]); });
    root.querySelectorAll('[data-c="' + c.id + '"][data-v]').forEach(function (el) {
      var k = el.getAttribute('data-v');
      el.textContent = all[k] === undefined ? '-' : all[k];
    });
  }
  root.addEventListener('input', function (e) {
    var t = e.target;
    if (!t.classList || !t.classList.contains('pc-in')) { return; }
    var clean = t.value.replace(/[^0-9.,-]/g, '');
    if (clean !== t.value) { t.value = clean; }
    C.forEach(function (c) { if (c.id === t.getAttribute('data-c')) { update(c); } });
  });
  root.addEventListener('click', function (e) {
    var t = e.target;
    if (t.classList && t.classList.contains('pc-tab')) {
      var which = t.getAttribute('data-t');
      root.querySelectorAll('.pc-tab').forEach(function (b) {
        b.setAttribute('aria-selected', b === t ? 'true' : 'false');
      });
      root.querySelectorAll('.pc-pane').forEach(function (p) {
        p.hidden = p.getAttribute('data-p') !== which;
      });
    } else if (t.classList && t.classList.contains('pc-clear')) {
      root.querySelectorAll('.pc-in').forEach(function (i) { i.value = ''; });
      C.forEach(update);
    }
  });
  C.forEach(update);
})();
</script>

## วิธีใช้เครื่องคิดเลขเปอร์เซ็นต์

1. เลือกแท็บ **คำถาม** เพื่อกรอกตัวเลขในประโยคโจทย์ หรือแท็บ **สูตรทางคณิตศาสตร์** เพื่อดูขั้นตอนการคำนวณ
2. เลือกโจทย์ที่ตรงกับงานของคุณ เช่น หาเปอร์เซ็นต์ของตัวเลข คำนวณส่วนลด หรือหาเงินเดือนหลังปรับขึ้น
3. กรอกตัวเลขลงในช่องว่างของโจทย์นั้น ผลลัพธ์จะแสดงในบรรทัด "ตอบ" ทันที ไม่ต้องกดปุ่มคำนวณ
4. สลับไปแท็บสูตรเพื่อตรวจสอบว่าตัวเลขที่กรอกถูกแทนค่าในสูตรอย่างไร
5. กด **ลบข้อมูลทั้งหมด** เพื่อล้างทุกช่องและเริ่มคำนวณใหม่

## คำอธิบายโจทย์และคำศัพท์

**% ของ ... คืออะไร?** หาค่าที่เป็นสัดส่วนเปอร์เซ็นต์ของจำนวนทั้งหมด เช่น 20% ของ 500 เท่ากับ 100 สูตร: เปอร์เซ็นต์ ÷ 100 × จำนวนทั้งหมด

**... คิดเป็นกี่เปอร์เซ็นต์ของ ...** หาว่าตัวเลขส่วนคิดเป็นสัดส่วนกี่เปอร์เซ็นต์ของจำนวนทั้งหมด สูตร: ตัวเลขส่วน ÷ จำนวนทั้งหมด × 100

**... คือ ...% ของอะไร?** หาจำนวนทั้งหมดเมื่อรู้ตัวเลขส่วนและเปอร์เซ็นต์ที่ตัวเลขนั้นเป็น สูตร: ตัวเลขส่วน ÷ (เปอร์เซ็นต์ ÷ 100)

**เปอร์เซ็นต์การเปลี่ยนแปลง** บอกว่าค่าใหม่เพิ่มขึ้นหรือลดลงจากค่าเริ่มต้นกี่เปอร์เซ็นต์ ผลบวกคือเพิ่มขึ้น ผลลบคือลดลง สูตร: (ค่าใหม่ ÷ ค่าเริ่มต้น − 1) × 100

**เงินเดือนเพิ่มขึ้น** คำนวณเงินเดือนใหม่หลังปรับขึ้นตามเปอร์เซ็นต์ที่กำหนด สูตร: เงินเดือนเดิม × (1 + เปอร์เซ็นต์ ÷ 100)

**ส่วนลด / ราคาที่ต้องจ่าย** ส่วนลดคือจำนวนเงินที่ถูกหักออกจากราคาเต็ม ส่วนราคาที่ต้องจ่ายคือราคาหลังหักส่วนลดแล้ว สูตร: ราคาสินค้า × (1 − ส่วนลด ÷ 100)

**เปอร์เซ็นต์ (%)** หน่วยที่บอกสัดส่วนเทียบกับ 100 ส่วน เช่น 25% หมายถึง 25 ใน 100 หรือ 0.25

**ค่าเริ่มต้น / ค่าใหม่** ค่าเริ่มต้นคือตัวเลขก่อนเปลี่ยนแปลง ค่าใหม่คือตัวเลขหลังเปลี่ยนแปลง ใช้เทียบหาอัตราการเพิ่มหรือลด

**ตัวเลขส่วน / จำนวนทั้งหมด** จำนวนทั้งหมดคือฐาน 100% ส่วนตัวเลขส่วนคือค่าที่เป็นส่วนหนึ่งของฐานนั้น

เครื่องคิดเลขนี้ใช้ได้กับชีวิตประจำวัน ธุรกิจ และการลงทุน เช่น คำนวณส่วนลด อัตราส่วน การเปลี่ยนแปลงราคาหุ้น หรือการปรับเงินเดือน เพียงกรอกตัวเลขลงในช่องก็ได้คำตอบทันที