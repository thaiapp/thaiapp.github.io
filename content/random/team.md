---
title: สร้างทีมสุ่ม ออนไลน์ ฟรี
h1: สร้างทีมสุ่ม
description: สร้างทีมสุ่มออนไลน์ฟรี ใส่รายชื่อ เลือกจำนวนทีม แล้วกดสุ่มได้ แบ่งกลุ่มอย่างยุติธรรม เหมาะกับเล่นเกม กีฬา งานกลุ่ม และกิจกรรมในห้องเรียน ไม่ต้องติดตั้งใดๆ
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-30T09:00:00+07:00'
weight: 31
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สร้างทีมสุ่ม
- สร้างทีมสุ่ม ออนไลน์
- สุ่มและคำนวณ
---

<style>
.rt-app{max-width:900px;margin:0 auto}
.rt-card{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:16px;margin:0 0 16px}
.rt-card h2{margin:0 0 10px;font-size:1.15rem}
.rt-app textarea{width:100%;box-sizing:border-box;min-height:150px;padding:10px;border:1px solid rgba(128,128,128,.5);border-radius:8px;font:inherit;color:inherit;background:transparent;resize:vertical}
.rt-app input[type=number],.rt-app select{padding:6px 8px;border:1px solid rgba(128,128,128,.5);border-radius:8px;font:inherit;color:inherit;background:transparent}
.rt-app input[type=number]{width:70px}
.rt-row{display:flex;flex-wrap:wrap;gap:12px;align-items:center;justify-content:space-between;margin:10px 0}
.rt-actions{display:flex;flex-wrap:wrap;gap:8px;align-items:center}
.rt-app button{padding:8px 16px;border:1px solid rgba(128,128,128,.55);border-radius:8px;font:inherit;color:inherit;background:transparent;cursor:pointer}
.rt-app button.rt-primary{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
.rt-app button:hover{opacity:.85}
.rt-msg{min-height:1.4em;margin:8px 0 0;font-size:.95rem;color:#dc2626}
.rt-msg.rt-ok{color:#16a34a}
.rt-list{display:grid;gap:12px;grid-template-columns:1fr}
.rt-team{border:1px solid rgba(128,128,128,.35);border-radius:10px;padding:12px}
.rt-team h3{margin:0 0 8px;font-size:1rem}
.rt-team ul{margin:0;padding-left:20px}
.rt-team input.rt-title{width:100%;box-sizing:border-box;padding:4px 8px;border:1px solid rgba(128,128,128,.5);border-radius:6px;font:inherit;font-weight:600;color:inherit;background:transparent}
.rt-inline p{margin:0 0 10px;line-height:1.7}
.rt-inline input.rt-title{width:140px;display:inline-block;box-sizing:border-box;padding:2px 6px;border:1px solid rgba(128,128,128,.5);border-radius:6px;font:inherit;font-weight:600;color:inherit;background:transparent}
@media (min-width:700px){.rt-list.rt-cols{grid-template-columns:repeat(var(--k),1fr)}}
</style>

<div id="rt-app" class="rt-app">
<div class="rt-card">
<h2>รายชื่อ</h2>
<textarea id="rt-names" placeholder="พิมพ์ชื่อผู้เล่น หนึ่งชื่อต่อบรรทัด"></textarea>
<div class="rt-row">
<span><b id="rt-count">0</b> ชื่อ</span>
<label>จำนวนทีม: <input type="number" id="rt-teams" min="2" max="50" value="2"></label>
</div>
<div class="rt-actions">
<button type="button" id="rt-go" class="rt-primary">สุ่มทีม</button>
<button type="button" id="rt-sample">ใช้ตัวอย่างชื่อ</button>
<button type="button" id="rt-clear">ล้างทั้งหมด</button>
</div>
<p id="rt-msg" class="rt-msg" role="status"></p>
</div>
<div class="rt-card" id="rt-result-card" hidden>
<h2>สุ่มกลุ่ม <b id="rt-gcount">0</b> กลุ่ม</h2>
<div class="rt-actions">
<button type="button" id="rt-again" class="rt-primary">สุ่มทีม</button>
<button type="button" id="rt-edit">แก้ไขชื่อ</button>
<button type="button" id="rt-copy">คัดลอกทั้งหมด</button>
<select id="rt-view" aria-label="รูปแบบการแสดงผล">
<option value="list">รายการ</option>
<option value="inline">อินไลน์</option>
</select>
</div>
<div id="rt-result" style="margin-top:14px"></div>
</div>
</div>

<script>
(function () {
  var KEY = 'rt-team-v1';
  var SAMPLE = ['สมชาย', 'สมหญิง', 'วิชัย', 'มานี', 'ปิติ', 'ชูใจ', 'สุดา', 'ประเสริฐ', 'นิภา', 'อนันต์', 'กมล', 'ศิริพร'];
  var state = { groups: [], titles: [], edit: false };

  function $(id) { return document.getElementById(id); }

  function parseNames() {
    return $('rt-names').value.split(/[\r\n\t]+/).map(function (s) { return s.trim(); }).filter(Boolean);
  }

  function rnd(n) {
    if (window.crypto && window.crypto.getRandomValues) {
      var a = new Uint32Array(1);
      var lim = Math.floor(4294967296 / n) * n;
      do { window.crypto.getRandomValues(a); } while (a[0] >= lim);
      return a[0] % n;
    }
    return Math.floor(Math.random() * n);
  }

  function shuffle(arr) {
    var a = arr.slice();
    for (var i = a.length - 1; i > 0; i--) {
      var j = rnd(i + 1);
      var t = a[i]; a[i] = a[j]; a[j] = t;
    }
    return a;
  }

  function msg(text, ok) {
    var el = $('rt-msg');
    el.textContent = text || '';
    el.className = 'rt-msg' + (ok ? ' rt-ok' : '');
  }

  function save() {
    try {
      localStorage.setItem(KEY, JSON.stringify({
        names: $('rt-names').value,
        teams: $('rt-teams').value,
        view: $('rt-view').value
      }));
    } catch (e) {}
  }

  function load() {
    try {
      var raw = localStorage.getItem(KEY);
      if (!raw) return;
      var d = JSON.parse(raw);
      if (typeof d.names === 'string') $('rt-names').value = d.names;
      if (d.teams) $('rt-teams').value = d.teams;
      if (d.view === 'inline' || d.view === 'list') $('rt-view').value = d.view;
    } catch (e) {}
  }

  function updateCount() { $('rt-count').textContent = parseNames().length; }

  function titleOf(i) { return state.titles[i] || ('ทีม ' + (i + 1)); }

  function titleNode(i, tag) {
    if (state.edit) {
      var inp = document.createElement('input');
      inp.type = 'text';
      inp.className = 'rt-title';
      inp.value = titleOf(i);
      inp.addEventListener('input', function () { state.titles[i] = inp.value; });
      return inp;
    }
    var el = document.createElement(tag);
    el.textContent = titleOf(i);
    if (tag === 'strong') el.style.marginRight = '6px';
    return el;
  }

  function render() {
    var box = $('rt-result');
    box.textContent = '';
    var k = state.groups.length;
    $('rt-result-card').hidden = k === 0;
    $('rt-gcount').textContent = k;
    if (!k) return;
    var inline = $('rt-view').value === 'inline';
    var wrap = document.createElement('div');
    wrap.className = inline ? 'rt-inline' : ('rt-list' + (k < 5 ? ' rt-cols' : ''));
    wrap.style.setProperty('--k', k);
    state.groups.forEach(function (members, i) {
      if (inline) {
        var p = document.createElement('p');
        p.appendChild(titleNode(i, 'strong'));
        p.appendChild(document.createTextNode(': ' + members.join(', ')));
        wrap.appendChild(p);
      } else {
        var card = document.createElement('div');
        card.className = 'rt-team';
        var h = state.edit ? titleNode(i, 'h3') : titleNode(i, 'h3');
        card.appendChild(h);
        var ul = document.createElement('ul');
        members.forEach(function (m) {
          var li = document.createElement('li');
          li.textContent = m;
          ul.appendChild(li);
        });
        card.appendChild(ul);
        wrap.appendChild(card);
      }
    });
    box.appendChild(wrap);
    $('rt-edit').textContent = state.edit ? 'เสร็จสิ้น' : 'แก้ไขชื่อ';
  }

  function makeTeams() {
    var names = parseNames();
    var k = parseInt($('rt-teams').value, 10);
    if (names.length < 2) { msg('กรุณาใส่ชื่ออย่างน้อย 2 ชื่อ'); return; }
    if (!k || k < 2) { k = 2; $('rt-teams').value = 2; }
    if (k > names.length) {
      k = names.length;
      $('rt-teams').value = k;
      msg('จำนวนทีมมากกว่าจำนวนชื่อ ปรับเป็น ' + k + ' ทีมให้แล้ว');
    } else {
      msg('');
    }
    var mixed = shuffle(names);
    var groups = [];
    for (var i = 0; i < k; i++) groups.push([]);
    mixed.forEach(function (n, idx) { groups[idx % k].push(n); });
    if (state.titles.length !== k) state.titles = [];
    state.groups = groups;
    state.edit = false;
    render();
    save();
  }

  function copyAll() {
    var text = state.groups.map(function (g, i) { return titleOf(i) + ': ' + g.join(', '); }).join('\n');
    function done() { msg('คัดลอกแล้ว', true); }
    function fallback() {
      var ta = document.createElement('textarea');
      ta.value = text;
      ta.style.position = 'fixed';
      ta.style.opacity = '0';
      document.body.appendChild(ta);
      ta.select();
      try { document.execCommand('copy'); done(); } catch (e) { msg('คัดลอกไม่สำเร็จ'); }
      document.body.removeChild(ta);
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(done, fallback);
    } else {
      fallback();
    }
  }

  function init() {
    if (!$('rt-app')) return;
    load();
    updateCount();
    $('rt-names').addEventListener('input', function () { updateCount(); save(); });
    $('rt-teams').addEventListener('change', save);
    $('rt-go').addEventListener('click', makeTeams);
    $('rt-again').addEventListener('click', makeTeams);
    $('rt-sample').addEventListener('click', function () {
      $('rt-names').value = SAMPLE.join('\n');
      updateCount();
      save();
      msg('');
    });
    $('rt-clear').addEventListener('click', function () {
      $('rt-names').value = '';
      $('rt-teams').value = 2;
      state.groups = [];
      state.titles = [];
      state.edit = false;
      updateCount();
      render();
      msg('');
      try { localStorage.removeItem(KEY); } catch (e) {}
    });
    $('rt-edit').addEventListener('click', function () { state.edit = !state.edit; render(); });
    $('rt-copy').addEventListener('click', copyAll);
    $('rt-view').addEventListener('change', function () { render(); save(); });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
</script>

## วิธีใช้งานสร้างทีมสุ่ม

1. **ใส่รายชื่อ** พิมพ์ชื่อผู้เล่นในช่องรายชื่อ หนึ่งชื่อต่อบรรทัด หรือวางข้อมูลที่คัดลอกมาจากตาราง (แยกชื่อด้วยแท็บก็ได้) หากอยากลองก่อน กด "ใช้ตัวอย่างชื่อ"
2. **กำหนดจำนวนทีม** ใส่ตัวเลขในช่อง "จำนวนทีม" อย่างน้อย 2 ทีม ถ้าใส่มากกว่าจำนวนชื่อ ระบบจะปรับให้อัตโนมัติ
3. **กด "สุ่มทีม"** ระบบจะสับรายชื่อแล้วแบ่งให้แต่ละทีมมีจำนวนคนเท่ากันหรือต่างกันไม่เกิน 1 คน
4. **ปรับผลลัพธ์** กด "สุ่มทีม" ซ้ำเพื่อสุ่มใหม่ กด "แก้ไขชื่อ" เพื่อตั้งชื่อทีมเอง และเลือกรูปแบบแสดงผลได้ตามสะดวก
5. **นำไปใช้งานต่อ** กด "คัดลอกทั้งหมด" เพื่อคัดลอกผลลัพธ์ไปวางในแชตหรือเอกสาร

รายชื่อ จำนวนทีม และรูปแบบแสดงผลจะถูกบันทึกไว้ในเบราว์เซอร์ของคุณเท่านั้น ไม่มีการส่งข้อมูลออกไปที่อื่น

## คำอธิบายศัพท์ในเครื่องมือ

- **รายชื่อ** ชื่อผู้เล่นหรือผู้เข้าร่วมทั้งหมดที่ต้องการแบ่งทีม พิมพ์หนึ่งชื่อต่อบรรทัด
- **จำนวนชื่อ** ตัวเลขที่แสดงว่าตอนนี้มีรายชื่อกี่ชื่อ นับให้อัตโนมัติขณะพิมพ์
- **จำนวนทีม** จำนวนกลุ่มที่ต้องการแบ่ง เช่น 12 คน แบ่ง 3 ทีม ได้ทีมละ 4 คน
- **ใช้ตัวอย่างชื่อ** ใส่รายชื่อตัวอย่างให้ทันที เหมาะสำหรับทดลองใช้งาน
- **สุ่มทีม** สับลำดับรายชื่ออย่างสุ่มแล้วจัดเข้าแต่ละทีม กดซ้ำเพื่อสุ่มใหม่ได้
- **สุ่มกลุ่ม** ส่วนแสดงผลลัพธ์ พร้อมบอกจำนวนกลุ่มที่สร้างได้
- **แก้ไขชื่อ** เปลี่ยนชื่อทีมจาก "ทีม 1, ทีม 2" เป็นชื่ออื่นตามต้องการ
- **คัดลอกทั้งหมด** คัดลอกผลลัพธ์ทุกทีมเป็นข้อความ เพื่อนำไปวางที่อื่น
- **ล้างทั้งหมด** ลบรายชื่อ ผลลัพธ์ และข้อมูลที่บันทึกไว้ เพื่อเริ่มใหม่
- **รายการ** รูปแบบแสดงผลเป็นการ์ดทีละทีม ถ้ามีไม่ถึง 5 ทีมบนหน้าจอกว้าง จะเรียงเป็นคอลัมน์อัตโนมัติ
- **อินไลน์** รูปแบบแสดงผลทีละบรรทัด ชื่อทีมตามด้วยรายชื่อสมาชิก คั่นด้วยเครื่องหมายจุลภาค