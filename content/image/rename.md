---
title: เปลี่ยนชื่อรูปภาพเป็นชุดออนไลน์ ฟรี
h1: เปลี่ยนชื่อรูปภาพเป็นชุดออนไลน์
description: เปลี่ยนชื่อรูปภาพเป็นชุดออนไลน์ เพิ่มคำนำหน้า คำต่อท้าย ใส่เลขลำดับ ค้นหาและแทนที่ชื่อไฟล์ รองรับ JPG, PNG, HEIC ดาวน์โหลดเป็น Zip ฟรี ใช้ได้ในเบราว์เซอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-12T09:00:00+07:00'
weight: 107
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- เปลี่ยนชื่อรูปภาพเป็นชุดออนไลน์
- รูปภาพ
---

เปลี่ยนชื่อรูปภาพหลายไฟล์พร้อมกันในเบราว์เซอร์ **ไม่ต้องอัปโหลด** ไม่ต้องติดตั้งโปรแกรม

<style>
.rn{margin:1rem 0;font-size:15px;line-height:1.5}
.rn *{box-sizing:border-box}
.rn [hidden]{display:none!important}
.rn-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:10px;margin-bottom:12px}
.rn-f{display:flex;flex-direction:column;gap:4px;font-size:13px;opacity:.95}
.rn-f input[type=text],.rn-f select,.rn-code{width:100%;padding:8px 10px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;color:inherit;font:inherit}
.rn-chk{flex-direction:row;align-items:center;gap:8px;padding-top:20px}
.rn-chk input{width:18px;height:18px}
.rn-drop{display:flex;flex-direction:column;align-items:center;justify-content:center;gap:4px;padding:22px 12px;border:2px dashed rgba(128,128,128,.6);border-radius:12px;text-align:center;cursor:pointer}
.rn-drop.rn-over{border-color:#2f7de1;background:rgba(47,125,225,.08)}
.rn-drop small{opacity:.75}
.rn-ico{font-size:30px}
.rn-bar{display:flex;flex-wrap:wrap;align-items:center;gap:8px;margin:12px 0}
.rn-btn{display:inline-block;padding:8px 14px;border:1px solid rgba(128,128,128,.55);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.rn-btn:hover{background:rgba(128,128,128,.15)}
.rn-btn[disabled]{opacity:.4;cursor:not-allowed}
.rn-pri{background:#2f7de1;border-color:#2f7de1;color:#fff}
.rn-pri:hover{background:#2468c0}
.rn-count{margin-left:auto;font-size:13px;opacity:.8}
.rn-list{display:flex;flex-direction:column;gap:6px}
.rn-row{display:flex;align-items:center;gap:10px;padding:6px 10px;border:1px solid rgba(128,128,128,.35);border-radius:8px}
.rn-row.rn-bad{border-color:#e5484d;background:rgba(229,72,77,.08)}
.rn-row.rn-drag{opacity:.45}
.rn-h{cursor:grab;opacity:.6;user-select:none}
.rn-th{width:40px;height:40px;flex:none;object-fit:cover;border-radius:6px;display:flex;align-items:center;justify-content:center;background:rgba(128,128,128,.15)}
.rn-t{flex:1;min-width:0;word-break:break-all;font-size:14px}
.rn-o{opacity:.7}
.rn-w{color:#e5484d;font-weight:bold}
.rn-x{border:0;background:transparent;color:inherit;font-size:20px;line-height:1;cursor:pointer;opacity:.6}
.rn-x:hover{opacity:1}
.rn-msg{min-height:22px;font-size:14px}
.rn-msg.rn-err{color:#e5484d}
.rn-safe{font-size:13px;opacity:.8;margin-top:6px}
.rn-tabs{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:8px}
.rn-tabs .rn-on{background:rgba(47,125,225,.2);border-color:#2f7de1}
.rn-code{font-family:ui-monospace,Menlo,Consolas,monospace;font-size:13px;resize:vertical;white-space:pre}
</style>

<div class="rn" id="rn-app">
<div class="rn-grid">
<label class="rn-f">คำนำหน้า<input type="text" id="rn-prefix" placeholder="vacation-" autocomplete="off"></label>
<label class="rn-f rn-chk"><input type="checkbox" id="rn-keep" checked> ชื่อ (คงชื่อไฟล์เดิม)</label>
<label class="rn-f">คำต่อท้าย<input type="text" id="rn-suffix" placeholder="-edit" autocomplete="off"></label>
<label class="rn-f">หมายเลข<input type="text" id="rn-num" placeholder="001" inputmode="numeric" autocomplete="off"></label>
<label class="rn-f">ค้นหา<input type="text" id="rn-find" placeholder="Screenshot_" autocomplete="off"></label>
<label class="rn-f">แทนที่ด้วย<input type="text" id="rn-repl" placeholder="(เว้นว่างเพื่อลบ)" autocomplete="off"></label>
<label class="rn-f">เรียงลำดับ<select id="rn-sort"><option value="orig">ต้นฉบับ</option><option value="name">ชื่อ A→Z</option><option value="type">ชนิด</option><option value="dateasc">วันที่ ↑</option><option value="datedesc">วันที่ ↓</option><option value="custom">กำหนดเอง</option></select></label>
<label class="rn-f">นามสกุลใหม่ (ไม่บังคับ)<input type="text" id="rn-ext" placeholder="jpg" autocomplete="off"></label>
<label class="rn-f rn-chk"><input type="checkbox" id="rn-lower"> นามสกุลตัวพิมพ์เล็ก</label>
</div>
<label class="rn-drop" id="rn-drop" for="rn-file">
<span class="rn-ico">📁</span>
<strong>เลือก…</strong>
<span>วางรูปภาพที่นี่ หรือกด Ctrl+V เพื่อวาง</span>
<small>รับไฟล์ทุกประเภท กด Ctrl ค้างไว้เพื่อเลือกหลายไฟล์ ไฟล์ไม่ถูกส่งออกจากอุปกรณ์ของคุณ</small>
</label>
<input type="file" id="rn-file" multiple hidden>
<div class="rn-bar">
<label class="rn-btn" for="rn-file">เพิ่มไฟล์</label>
<button type="button" class="rn-btn" id="rn-dir" disabled>ส่งออกไปยังโฟลเดอร์</button>
<button type="button" class="rn-btn rn-pri" id="rn-zip" disabled>ดาวน์โหลด Zip</button>
<button type="button" class="rn-btn" id="rn-cmd" disabled>บรรทัดคำสั่ง</button>
<button type="button" class="rn-btn" id="rn-clear" disabled>ล้าง</button>
<span class="rn-count" id="rn-count">0 ไฟล์</span>
</div>
<div class="rn-msg" id="rn-msg" aria-live="polite"></div>
<div class="rn-list" id="rn-list"></div>
<div class="rn-term" id="rn-term" hidden>
<div class="rn-tabs">
<button type="button" class="rn-btn rn-on" id="rn-tb">Bash</button>
<button type="button" class="rn-btn" id="rn-tp">PowerShell</button>
<button type="button" class="rn-btn" id="rn-cp">คัดลอก</button>
</div>
<textarea class="rn-code" id="rn-code" rows="8" readonly spellcheck="false"></textarea>
</div>
<div class="rn-safe">🛡️ ประมวลผลในเบราว์เซอร์ของคุณทั้งหมด ไม่มีการอัปโหลดไฟล์ไปยังเซิร์ฟเวอร์</div>
</div>

<script>
(function () {
  var files = [], seq = 0, dragFrom = -1, term = 'bash';
  var $ = function (id) { return document.getElementById(id); };
  var BAD = /[\\\/:*?"\u003c>|\u0000-\u001f]/g;
  var crcT = (function () {
    var t = [];
    for (var n = 0; n !== 256; n++) {
      var c = n;
      for (var k = 0; k !== 8; k++) { c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1); }
      t.push(c >>> 0);
    }
    return t;
  })();
  function crc32(u8) {
    var c = 0xFFFFFFFF;
    for (var i = 0; i !== u8.length; i++) { c = crcT[(c ^ u8[i]) & 255] ^ (c >>> 8); }
    return (c ^ 0xFFFFFFFF) >>> 0;
  }
  function dos(ts) {
    var d = new Date(ts), y = Math.min(2107, Math.max(1980, d.getFullYear()));
    return {
      t: d.getHours() * 2048 + d.getMinutes() * 32 + (d.getSeconds() >> 1),
      d: (y - 1980) * 512 + (d.getMonth() + 1) * 32 + d.getDate()
    };
  }
  function splitName(n) {
    var i = n.lastIndexOf('.');
    if (i > 0) { return { base: n.slice(0, i), ext: n.slice(i) }; }
    return { base: n, ext: '' };
  }
  function setMsg(text, isErr) {
    var m = $('rn-msg');
    m.textContent = text || '';
    m.className = 'rn-msg' + (isErr ? ' rn-err' : '');
  }
  function calc() {
    var pre = $('rn-prefix').value, suf = $('rn-suffix').value, keep = $('rn-keep').checked;
    var fd = $('rn-find').value, rp = $('rn-repl').value, lc = $('rn-lower').checked;
    var ex = $('rn-ext').value.trim();
    if (ex && ex.charAt(0) !== '.') { ex = '.' + ex; }
    var ns = $('rn-num').value.trim(), hasNum = /^\d+$/.test(ns);
    var start = hasNum ? parseInt(ns, 10) : 0, pad = hasNum ? ns.length : 0;
    var counts = {};
    files.forEach(function (f, idx) {
      var p = splitName(f.file.name), base = p.base, e = p.ext;
      if (fd) { base = base.split(fd).join(rp); }
      if (!keep) { base = ''; }
      if (ex) { e = ex; }
      if (lc) { e = e.toLowerCase(); }
      var num = '';
      if (hasNum) {
        num = String(start + idx);
        if (pad > num.length) { num = new Array(pad - num.length + 1).join('0') + num; }
      }
      var stem = (pre + base + suf + num).replace(BAD, '_');
      f.empty = stem.trim() === '';
      f.newName = stem + e.replace(BAD, '_');
      var key = f.newName.toLowerCase();
      counts[key] = (counts[key] || 0) + 1;
    });
    files.forEach(function (f) { f.warn = f.empty || counts[f.newName.toLowerCase()] > 1; });
  }
  function sortFiles() {
    var m = $('rn-sort').value;
    if (m === 'custom') { return; }
    var cmpName = function (a, b) {
      return a.file.name.localeCompare(b.file.name, undefined, { numeric: true, sensitivity: 'base' });
    };
    var extOf = function (x) { return splitName(x.file.name).ext.toLowerCase(); };
    files.sort(function (a, b) {
      if (m === 'name') { return cmpName(a, b); }
      if (m === 'type') {
        var ea = extOf(a), eb = extOf(b);
        return ea === eb ? cmpName(a, b) : (ea > eb ? 1 : -1);
      }
      if (m === 'dateasc') { return (a.file.lastModified - b.file.lastModified) || cmpName(a, b); }
      if (m === 'datedesc') { return (b.file.lastModified - a.file.lastModified) || cmpName(a, b); }
      return a.seq - b.seq;
    });
  }
  function shq(s) {
    if (term === 'bash') { return "'" + s.replace(/'/g, "'\\''") + "'"; }
    return "'" + s.replace(/['\u2018\u2019\u201a\u201b]/g, function (m) { return m + m; }) + "'";
  }
  function script() {
    var out = [];
    if (term === 'bash') { out.push('#!/bin/bash'); }
    out.push('# cd ไปยังโฟลเดอร์ที่มีรูปภาพก่อนรันคำสั่ง');
    files.forEach(function (f) {
      if (f.file.name === f.newName) { return; }
      if (term === 'bash') { out.push('mv -n -- ' + shq(f.file.name) + ' ' + shq(f.newName)); }
      else { out.push('Rename-Item -LiteralPath ' + shq(f.file.name) + ' -NewName ' + shq(f.newName)); }
    });
    return out.join('\n');
  }
  function removeAt(i) {
    var f = files.splice(i, 1)[0];
    if (f && f.url) { URL.revokeObjectURL(f.url); }
    render();
  }
  function render() {
    calc();
    var list = $('rn-list');
    while (list.firstChild) { list.removeChild(list.firstChild); }
    files.forEach(function (f, i) {
      var row = document.createElement('div');
      row.className = 'rn-row' + (f.warn ? ' rn-bad' : '');
      row.draggable = true;
      row.addEventListener('dragstart', function (e) {
        dragFrom = i;
        row.classList.add('rn-drag');
        try { e.dataTransfer.setData('text/plain', String(i)); e.dataTransfer.effectAllowed = 'move'; } catch (x) {}
      });
      row.addEventListener('dragend', function () { dragFrom = -1; row.classList.remove('rn-drag'); });
      row.addEventListener('dragover', function (e) { if (dragFrom > -1) { e.preventDefault(); } });
      row.addEventListener('drop', function (e) {
        if (dragFrom === -1) { return; }
        e.preventDefault();
        e.stopPropagation();
        var it = files.splice(dragFrom, 1)[0];
        files.splice(i, 0, it);
        dragFrom = -1;
        $('rn-sort').value = 'custom';
        render();
      });
      var h = document.createElement('span');
      h.className = 'rn-h';
      h.textContent = '⠿';
      h.title = 'ลากเพื่อเรียงลำดับ';
      var th;
      if (f.url) {
        th = document.createElement('img');
        th.className = 'rn-th';
        th.alt = '';
        th.loading = 'lazy';
        th.src = f.url;
        th.onerror = function () {
          var sp = document.createElement('span');
          sp.className = 'rn-th';
          sp.textContent = '📄';
          if (th.parentNode) { th.parentNode.replaceChild(sp, th); }
        };
      } else {
        th = document.createElement('span');
        th.className = 'rn-th';
        th.textContent = '📄';
      }
      var t = document.createElement('div');
      t.className = 'rn-t';
      var o = document.createElement('span');
      o.className = 'rn-o';
      o.textContent = f.file.name;
      var ar = document.createElement('span');
      ar.textContent = ' → ';
      var nn = document.createElement('strong');
      nn.textContent = f.newName;
      t.appendChild(o);
      t.appendChild(ar);
      t.appendChild(nn);
      row.appendChild(h);
      row.appendChild(th);
      row.appendChild(t);
      if (f.warn) {
        var w = document.createElement('span');
        w.className = 'rn-w';
        w.textContent = '⚠';
        w.title = 'ชื่อซ้ำกันหรือว่างเปล่า';
        row.appendChild(w);
      }
      var x = document.createElement('button');
      x.type = 'button';
      x.className = 'rn-x';
      x.textContent = '×';
      x.title = 'ลบออก';
      x.addEventListener('click', function () { removeAt(i); });
      row.appendChild(x);
      list.appendChild(row);
    });
    var has = files.length !== 0;
    ['rn-dir', 'rn-zip', 'rn-cmd', 'rn-clear'].forEach(function (id) { $(id).disabled = !has; });
    $('rn-count').textContent = files.length + ' ไฟล์';
    if (!has) { $('rn-term').hidden = true; }
    $('rn-code').value = has ? script() : '';
  }
  function addFiles(list) {
    var arr = Array.prototype.slice.call(list || []);
    if (arr.length === 0) { return; }
    arr.forEach(function (f) {
      seq += 1;
      files.push({
        seq: seq, file: f, newName: '', warn: false, empty: false,
        url: (f.type && f.type.indexOf('image/') === 0) ? URL.createObjectURL(f) : ''
      });
    });
    setMsg('', false);
    sortFiles();
    render();
  }
  function check() {
    if (files.length === 0) { return false; }
    calc();
    var bad = files.some(function (f) { return f.warn; });
    if (bad) {
      render();
      setMsg('มีชื่อไฟล์ซ้ำหรือว่างเปล่า (⚠) กรุณาแก้ไขรูปแบบก่อนส่งออก', true);
      return false;
    }
    return true;
  }
  async function buildZip() {
    var total = 0;
    files.forEach(function (f) { total += f.file.size; });
    if (total > 4000000000 || files.length > 65535) {
      throw new Error('ไฟล์ใหญ่หรือมากเกินกว่าที่ Zip รองรับ (4 GB / 65,535 ไฟล์)');
    }
    var enc = new TextEncoder(), parts = [], cen = [], off = 0;
    for (var i = 0; i !== files.length; i++) {
      var f = files[i];
      var data = new Uint8Array(await f.file.arrayBuffer());
      var nm = enc.encode(f.newName), crc = crc32(data), dt = dos(f.file.lastModified);
      var lh = new DataView(new ArrayBuffer(30));
      lh.setUint32(0, 0x04034b50, true);
      lh.setUint16(4, 20, true);
      lh.setUint16(6, 0x0800, true);
      lh.setUint16(8, 0, true);
      lh.setUint16(10, dt.t, true);
      lh.setUint16(12, dt.d, true);
      lh.setUint32(14, crc, true);
      lh.setUint32(18, data.length, true);
      lh.setUint32(22, data.length, true);
      lh.setUint16(26, nm.length, true);
      lh.setUint16(28, 0, true);
      parts.push(lh.buffer, nm, data);
      var ch = new DataView(new ArrayBuffer(46));
      ch.setUint32(0, 0x02014b50, true);
      ch.setUint16(4, 20, true);
      ch.setUint16(6, 20, true);
      ch.setUint16(8, 0x0800, true);
      ch.setUint16(10, 0, true);
      ch.setUint16(12, dt.t, true);
      ch.setUint16(14, dt.d, true);
      ch.setUint32(16, crc, true);
      ch.setUint32(20, data.length, true);
      ch.setUint32(24, data.length, true);
      ch.setUint16(28, nm.length, true);
      ch.setUint16(30, 0, true);
      ch.setUint16(32, 0, true);
      ch.setUint16(34, 0, true);
      ch.setUint16(36, 0, true);
      ch.setUint32(38, 0, true);
      ch.setUint32(42, off, true);
      cen.push(ch.buffer, nm);
      off += 30 + nm.length + data.length;
    }
    var cs = 0;
    cen.forEach(function (b) { cs += b.byteLength; });
    var end = new DataView(new ArrayBuffer(22));
    end.setUint32(0, 0x06054b50, true);
    end.setUint16(4, 0, true);
    end.setUint16(6, 0, true);
    end.setUint16(8, files.length, true);
    end.setUint16(10, files.length, true);
    end.setUint32(12, cs, true);
    end.setUint32(16, off, true);
    end.setUint16(20, 0, true);
    return new Blob(parts.concat(cen, [end.buffer]), { type: 'application/zip' });
  }
  ['rn-prefix', 'rn-suffix', 'rn-num', 'rn-find', 'rn-repl', 'rn-ext'].forEach(function (id) {
    $(id).addEventListener('input', function () { setMsg('', false); render(); });
  });
  ['rn-keep', 'rn-lower'].forEach(function (id) {
    $(id).addEventListener('change', function () { setMsg('', false); render(); });
  });
  $('rn-sort').addEventListener('change', function () { sortFiles(); render(); });
  $('rn-file').addEventListener('change', function () { addFiles(this.files); this.value = ''; });
  $('rn-clear').addEventListener('click', function () {
    files.forEach(function (f) { if (f.url) { URL.revokeObjectURL(f.url); } });
    files = [];
    setMsg('', false);
    render();
  });
  $('rn-zip').addEventListener('click', async function () {
    if (!check()) { return; }
    setMsg('กำลังสร้างไฟล์ Zip…', false);
    try {
      var blob = await buildZip();
      var a = document.createElement('a');
      a.href = URL.createObjectURL(blob);
      a.download = 'renamed-images.zip';
      document.body.appendChild(a);
      a.click();
      setTimeout(function () { URL.revokeObjectURL(a.href); a.remove(); }, 4000);
      setMsg('ดาวน์โหลดแล้ว ' + files.length + ' ไฟล์', false);
    } catch (err) {
      setMsg('สร้าง Zip ไม่สำเร็จ: ' + (err && err.message ? err.message : err), true);
    }
  });
  $('rn-dir').addEventListener('click', async function () {
    if (!check()) { return; }
    try {
      var dir = await window.showDirectoryPicker({ mode: 'readwrite' });
      for (var i = 0; i !== files.length; i++) {
        var fh = await dir.getFileHandle(files[i].newName, { create: true });
        var w = await fh.createWritable();
        await w.write(files[i].file);
        await w.close();
      }
      setMsg('บันทึกแล้ว ' + files.length + ' ไฟล์ลงในโฟลเดอร์ที่เลือก', false);
    } catch (err) {
      if (err && err.name === 'AbortError') { return; }
      setMsg('ส่งออกไม่สำเร็จ: ' + (err && err.message ? err.message : err), true);
    }
  });
  if (!window.showDirectoryPicker) { $('rn-dir').style.display = 'none'; }
  $('rn-cmd').addEventListener('click', function () { $('rn-term').hidden = !$('rn-term').hidden; });
  function setTerm(t) {
    term = t;
    $('rn-tb').className = 'rn-btn' + (t === 'bash' ? ' rn-on' : '');
    $('rn-tp').className = 'rn-btn' + (t === 'ps' ? ' rn-on' : '');
    $('rn-code').value = files.length !== 0 ? script() : '';
  }
  $('rn-tb').addEventListener('click', function () { setTerm('bash'); });
  $('rn-tp').addEventListener('click', function () { setTerm('ps'); });
  $('rn-cp').addEventListener('click', function () {
    var ta = $('rn-code');
    ta.select();
    var done = function () { setMsg('คัดลอกคำสั่งแล้ว', false); };
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(ta.value).then(done, function () { document.execCommand('copy'); done(); });
    } else {
      document.execCommand('copy');
      done();
    }
  });
  var hasFiles = function (e) {
    return !!(e.dataTransfer && Array.prototype.indexOf.call(e.dataTransfer.types || [], 'Files') > -1);
  };
  document.addEventListener('dragover', function (e) {
    if (hasFiles(e)) { e.preventDefault(); $('rn-drop').classList.add('rn-over'); }
  });
  document.addEventListener('dragleave', function (e) {
    if (!e.relatedTarget) { $('rn-drop').classList.remove('rn-over'); }
  });
  document.addEventListener('drop', function (e) {
    $('rn-drop').classList.remove('rn-over');
    if (hasFiles(e)) { e.preventDefault(); addFiles(e.dataTransfer.files); }
  });
  document.addEventListener('paste', function (e) {
    var tg = e.target;
    if (tg && (tg.tagName === 'INPUT' || tg.tagName === 'TEXTAREA')) { return; }
    var fl = e.clipboardData && e.clipboardData.files;
    if (fl && fl.length > 0) { e.preventDefault(); addFiles(fl); }
  });
  render();
})();
</script>

ไฟล์ภาพจากกล้องและมือถือมักมีชื่ออ่านยาก เช่น IMG_3952.jpg หรือ DSC_0886.png เครื่องมือนี้ช่วยตั้งชื่อรูปภาพจำนวนมากใหม่ให้เป็นระเบียบในไม่กี่คลิก เพิ่มคำนำหน้า คำต่อท้าย ใส่เลขลำดับ หรือค้นหาและแทนที่ข้อความในชื่อไฟล์ จากนั้นดาวน์โหลดเป็นไฟล์ Zip หรือคัดลอกคำสั่ง Bash/PowerShell ไปใช้เปลี่ยนชื่อไฟล์ในเครื่องของคุณเอง

## วิธีใช้งาน

1. **เพิ่มรูปภาพ** ลากไฟล์มาวางในกรอบ กด "เลือก…" หรือวางจากคลิปบอร์ดด้วย `Ctrl`+`V` (บน Mac ใช้ `Cmd`+`V`) เพิ่มทีหลังได้ด้วยปุ่ม "เพิ่มไฟล์"
2. **ตั้งรูปแบบชื่อ** กรอก **คำนำหน้า** และ **คำต่อท้าย** ตามต้องการ ติ๊กหรือเอาเครื่องหมายออกที่ **ชื่อ** เพื่อเก็บหรือลบชื่อเดิม แล้วใส่ **หมายเลข** เช่น `001` หากต้องการเลขลำดับ
3. **ค้นหาและแทนที่ (ไม่บังคับ)** กรอกข้อความที่ต้องการหาในช่อง "ค้นหา" และข้อความใหม่ในช่อง "แทนที่ด้วย" เว้นว่างไว้หากต้องการลบข้อความนั้นออก
4. **เลือกการเรียงลำดับ** เลือกเรียงตามชื่อ ชนิด หรือวันที่ หรือลากแถวที่มีไอคอน ⠿ เพื่อจัดลำดับเองก็ได้ เลขลำดับจะเรียงตามลำดับในรายการ
5. **ตรวจตัวอย่าง** แต่ละแถวจะแสดง "ชื่อเดิม → ชื่อใหม่" ทันที หากเห็นไอคอน ⚠ แสดงว่าชื่อซ้ำหรือว่างเปล่า ให้ปรับรูปแบบก่อน
6. **บันทึกผลลัพธ์** กด "ดาวน์โหลด Zip" เพื่อรับไฟล์ที่เปลี่ยนชื่อแล้วทั้งหมด หรือ "ส่งออกไปยังโฟลเดอร์" เพื่อบันทึกลงโฟลเดอร์โดยตรง (เบราว์เซอร์ที่รองรับ) หรือ "บรรทัดคำสั่ง" เพื่อคัดลอกสคริปต์ไปรันในเครื่อง

ชื่อไฟล์ใหม่จะเรียงเป็น **คำนำหน้า + ชื่อ + คำต่อท้าย + หมายเลข + นามสกุล** เสมอ และไฟล์ต้นฉบับของคุณจะไม่ถูกแก้ไข

## คำอธิบายศัพท์

| คำศัพท์ | ความหมายโดยสรุป |
| --- | --- |
| คำนำหน้า (Prefix) | ข้อความที่เติมไว้หน้าชื่อไฟล์ เช่น `vacation-` |
| ชื่อ | ชื่อไฟล์เดิมโดยไม่รวมนามสกุล ติ๊กไว้เพื่อเก็บชื่อเดิม เอาออกเพื่อลบชื่อเดิม |
| คำต่อท้าย (Suffix) | ข้อความที่เติมไว้หลังชื่อไฟล์ และอยู่ก่อนหมายเลขกับนามสกุล เช่น `-edit` |
| หมายเลข | เลขลำดับที่เติมต่อท้ายชื่อ พิมพ์ `002` เพื่อเริ่มนับที่ 2 |
| เลขศูนย์นำหน้า (Padding) | จำนวนหลักของหมายเลขกำหนดจากที่คุณพิมพ์ เช่น `001` ได้ 001, 002, 003 ส่วน `1` ได้ 1, 2, 3 |
| ค้นหาและแทนที่ | หาข้อความในชื่อไฟล์ทุกไฟล์แล้วเปลี่ยนเป็นข้อความใหม่พร้อมกัน แยกตัวพิมพ์เล็กใหญ่ |
| เรียงลำดับ | กำหนดลำดับไฟล์ที่ใช้รันหมายเลข มีต้นฉบับ (ตามที่เพิ่ม) ชื่อ A→Z ชนิด วันที่ ↑ (เก่าไปใหม่) วันที่ ↓ (ใหม่ไปเก่า) และกำหนดเอง |
| กำหนดเอง | ลากแถวเพื่อจัดลำดับด้วยตัวเอง ระบบจะสลับมาใช้โหมดนี้ให้อัตโนมัติเมื่อมีการลาก |
| นามสกุล (Extension) | ส่วนท้ายชื่อไฟล์หลังจุด เช่น `.jpg` `.png` ใช้ระบุชนิดไฟล์ |
| นามสกุลใหม่ | ช่องไม่บังคับสำหรับบังคับเปลี่ยนนามสกุลของทุกไฟล์ เป็นการเปลี่ยนชื่อเท่านั้น ไม่ได้แปลงชนิดไฟล์จริง |
| นามสกุลตัวพิมพ์เล็ก | แปลงนามสกุลเป็นตัวพิมพ์เล็ก เช่น `.HEIC` เป็น `.heic` |
| ⚠ (คำเตือน) | แจ้งว่าชื่อใหม่ซ้ำกับไฟล์อื่นหรือว่างเปล่า ต้องแก้ไขก่อนส่งออก |
| ⠿ (ที่จับลาก) | ไอคอนสำหรับลากแถวเพื่อสลับลำดับไฟล์ |
| ดาวน์โหลด Zip | รวมไฟล์ที่เปลี่ยนชื่อแล้วเป็นไฟล์บีบอัดเดียว สร้างในเบราว์เซอร์ รองรับรวมไม่เกิน 4 GB |
| ส่งออกไปยังโฟลเดอร์ | บันทึกไฟล์ชื่อใหม่ลงโฟลเดอร์ที่คุณเลือกโดยตรง ใช้ได้ในเบราว์เซอร์ตระกูล Chrome และ Edge |
| บรรทัดคำสั่ง | สร้างสคริปต์เปลี่ยนชื่อไฟล์เดิมในเครื่องของคุณ เลือก Bash (macOS/Linux) หรือ PowerShell (Windows) |
| Bash / PowerShell | โปรแกรมพิมพ์คำสั่งของระบบปฏิบัติการ ใช้รันสคริปต์ที่คัดลอกไปในโฟลเดอร์รูปภาพ |

## ตัวอย่างการตั้งค่า

| ก่อน | หลัง | รูปแบบที่ใช้ |
| --- | --- | --- |
| `IMG_3952.jpg` | `vacation-001.jpg` | คำนำหน้า `vacation-`, เอาเครื่องหมายที่ ชื่อ ออก, หมายเลข `001` |
| `DSC_0886.png` | `wedding-DSC_0886.png` | คำนำหน้า `wedding-`, ติ๊ก ชื่อ |
| `Screenshot_001.png` | `001.png` | ติ๊ก ชื่อ, ค้นหา `Screenshot_` แทนที่ด้วยค่าว่าง |
| `photo.HEIC` | `photo.heic` | ติ๊ก ชื่อ, นามสกุลตัวพิมพ์เล็ก |