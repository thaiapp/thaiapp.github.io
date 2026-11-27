---
title: เปรียบเทียบข้อความออนไลน์ ฟรี
h1: เปรียบเทียบข้อความออนไลน์
description: เปรียบเทียบข้อความออนไลน์ฟรี วางข้อความสองชุดแล้วเห็นคำที่เพิ่ม ลบ หรือแก้ไขทันที รองรับภาษาไทย ดูเปอร์เซ็นต์ความเหมือน คัดลอกหรือดาวน์โหลดไฟล์ .diff ได้
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-27T09:00:00+07:00'
weight: 168
tool: true
topic: text
appCategory: UtilitiesApplication
keywords:
- เปรียบเทียบข้อความออนไลน์
- ข้อความและตัวอักษร
- เปรียบเทียบข้อความ
- เช็คความต่างของข้อความ
- text diff
- เปรียบเทียบโค้ด
---

วางข้อความต้นฉบับทางซ้ายและฉบับแก้ไขทางขวา ระบบจะไฮไลต์คำหรือตัวอักษรที่เพิ่ม ลบ หรือเปลี่ยนแปลงทันทีที่พิมพ์ พร้อมสถิติและเปอร์เซ็นต์ความเหมือน การเปรียบเทียบทำงานในเบราว์เซอร์ของคุณทั้งหมด ไม่มีการอัปโหลดข้อมูล

<div class="tdf" id="tdf">
<style>
.tdf{--add:#e6ffec;--del:#ffebe9;--adds:#abf2bc;--dels:#ffaba8;--bd:rgba(128,128,128,.35);margin:1rem 0}
@media (prefers-color-scheme:dark){.tdf{--add:#12361f;--del:#4a1d1d;--adds:#1f7a3a;--dels:#a3322f}}
.tdf *{box-sizing:border-box}
.tdf-in{display:grid;grid-template-columns:1fr 1fr;gap:12px}
.tdf-box{min-width:0}
.tdf-head{display:flex;flex-wrap:wrap;gap:6px;align-items:center;margin-bottom:6px;font-weight:600}
.tdf-sp{flex:1;min-width:0;font-weight:400;font-size:12px;opacity:.7;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.tdf textarea{width:100%;min-height:200px;padding:8px;border:1px solid var(--bd);border-radius:8px;background:transparent;color:inherit;font:14px/1.5 monospace;resize:vertical}
.tdf button,.tdf select{padding:5px 10px;border:1px solid var(--bd);border-radius:6px;background:transparent;color:inherit;font:inherit;font-size:13px;cursor:pointer}
.tdf-opt{display:flex;flex-wrap:wrap;gap:8px 16px;align-items:center;margin:12px 0}
.tdf-opt label{display:flex;gap:4px;align-items:center;font-size:14px;cursor:pointer}
.tdf-bar{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:8px 0;font-size:14px}
.tdf-msg{margin:8px 0;opacity:.85}
.tdf-msg:empty{display:none}
.tdf-out{border:1px solid var(--bd);border-radius:8px;overflow:hidden;font:14px/1.5 monospace}
.tdf-out:empty{display:none}
.tdf-r{display:grid;grid-template-columns:1fr 1fr}
.tdf-one{grid-template-columns:1fr}
.tdf-c{display:flex;gap:8px;padding:1px 8px;min-width:0;min-height:21px;white-space:pre-wrap;overflow-wrap:anywhere}
.tdf-r .tdf-c + .tdf-c{border-left:1px solid var(--bd)}
.tdf-n{flex:none;width:2.6em;text-align:right;opacity:.5;user-select:none}
.tdf-t{flex:1;min-width:0}
.tdf-a{background:var(--add)}
.tdf-d{background:var(--del)}
.tdf-e{background:rgba(128,128,128,.1)}
.tdf-a .tdf-m{background:var(--adds)}
.tdf-d .tdf-m{background:var(--dels)}
.tdf-f{padding:3px 8px;text-align:center;font-size:13px;opacity:.75;cursor:pointer;background:rgba(128,128,128,.12)}
.tdf-cur{outline:2px solid #bf8700;outline-offset:-2px}
@media (max-width:640px){.tdf-in{grid-template-columns:1fr}}
</style>
<div class="tdf-in">
<div class="tdf-box">
<div class="tdf-head">ต้นฉบับ <span class="tdf-sp" id="tdf-na"></span> <button type="button" id="tdf-fa">เปิดไฟล์</button> <button type="button" id="tdf-ca">ล้าง</button></div>
<textarea id="tdf-ta" spellcheck="false" placeholder="วางข้อความต้นฉบับที่นี่ หรือลากไฟล์ข้อความมาวาง"></textarea>
</div>
<div class="tdf-box">
<div class="tdf-head">ฉบับแก้ไข <span class="tdf-sp" id="tdf-nb"></span> <button type="button" id="tdf-fb">เปิดไฟล์</button> <button type="button" id="tdf-cb">ล้าง</button></div>
<textarea id="tdf-tb" spellcheck="false" placeholder="วางข้อความฉบับแก้ไขที่นี่ หรือลากไฟล์ข้อความมาวาง"></textarea>
</div>
</div>
<input type="file" id="tdf-ia" hidden>
<input type="file" id="tdf-ib" hidden>
<div class="tdf-opt">
<label><input type="checkbox" id="tdf-ic"> ไม่สนใจตัวพิมพ์เล็ก-ใหญ่</label>
<label><input type="checkbox" id="tdf-iw"> ไม่สนใจช่องว่าง</label>
<label><input type="checkbox" id="tdf-ip"> ไม่สนใจเครื่องหมายวรรคตอน</label>
<label><input type="checkbox" id="tdf-hu"> ซ่อนบรรทัดที่ไม่เปลี่ยน</label>
<label>ไฮไลต์ <select id="tdf-md"><option value="w">คำ</option><option value="c">ตัวอักษร</option></select></label>
<label>มุมมอง <select id="tdf-vw"><option value="s">เทียบข้าง</option><option value="i">ต่อเนื่อง</option></select></label>
<button type="button" id="tdf-sw">สลับซ้าย-ขวา</button>
<button type="button" id="tdf-ex">ลองตัวอย่าง</button>
</div>
<div class="tdf-bar">
<span id="tdf-st"></span>
<button type="button" id="tdf-pv" title="ความต่างก่อนหน้า (P)">▲</button>
<button type="button" id="tdf-nx" title="ความต่างถัดไป (N)">▼</button>
<span id="tdf-nv"></span>
<button type="button" id="tdf-cp">คัดลอก diff</button>
<button type="button" id="tdf-dl">ดาวน์โหลด .diff</button>
</div>
<div class="tdf-msg" id="tdf-msg" role="status"></div>
<div class="tdf-out" id="tdf-out"></div>
<script>
(function () {
  var $ = function (id) { return document.getElementById(id); };
  var A = $('tdf-ta'), B = $('tdf-tb'), out = $('tdf-out');
  if (!A) return;
  var fn = ['original.txt', 'revised.txt'], open = {}, cur = -1, marks = [], timer = 0, seg = null;
  try { if (window.Intl) seg = new Intl.Segmenter('th', { granularity: 'word' }); } catch (e) { seg = null; }
  function msg(t) { $('tdf-msg').textContent = t; }
  function strip(x) { return x.replace(/\r$/, ''); }
  function split(t) { var l = t.split('\n'); if (l[l.length - 1] === '') l.pop(); return l; }
  function lines(t) { return split(t).map(strip); }
  function norm(s, o) {
    s = s.normalize('NFC').replace(/[\u200B-\u200D\uFEFF]/g, '');
    if (o.c) s = s.toLowerCase();
    if (o.p) s = s.replace(/[\p{P}\p{S}]/gu, '');
    if (o.w) s = s.replace(/\s+/g, '');
    return s;
  }
  function diff(a, b) {
    var mn = Math.min(a.length, b.length), s = 0, e = 0, ops = [], k, i, j;
    while (mn > s) { if (a[s] !== b[s]) break; s++; }
    while (mn - s > e) { if (a[a.length - 1 - e] !== b[b.length - 1 - e]) break; e++; }
    for (k = 0; s > k; k++) ops.push(['=', k, k]);
    var n = a.length - s - e, m = b.length - s - e;
    if (n * m > 4000000) {
      for (i = 0; n > i; i++) ops.push(['-', s + i, -1]);
      for (j = 0; m > j; j++) ops.push(['+', -1, s + j]);
    } else {
      var w = m + 1, dp = new Uint32Array((n + 1) * w);
      for (i = n - 1; i >= 0; i--) {
        for (j = m - 1; j >= 0; j--) {
          dp[i * w + j] = a[s + i] === b[s + j] ? dp[(i + 1) * w + j + 1] + 1 : Math.max(dp[(i + 1) * w + j], dp[i * w + j + 1]);
        }
      }
      i = 0; j = 0;
      while (n > i) {
        if (j >= m) break;
        if (a[s + i] === b[s + j]) { ops.push(['=', s + i, s + j]); i++; j++; }
        else if (dp[(i + 1) * w + j] >= dp[i * w + j + 1]) { ops.push(['-', s + i, -1]); i++; }
        else { ops.push(['+', -1, s + j]); j++; }
      }
      while (n > i) { ops.push(['-', s + i, -1]); i++; }
      while (m > j) { ops.push(['+', -1, s + j]); j++; }
    }
    for (k = 0; e > k; k++) ops.push(['=', a.length - e + k, b.length - e + k]);
    return ops;
  }
  function toks(s, mode) {
    if (mode === 'c') return Array.from(s);
    if (seg) return Array.from(seg.segment(s), function (x) { return x.segment; });
    return s.match(/\s+|[\p{L}\p{N}]+|[^\s\p{L}\p{N}]/gu) || [];
  }
  function push(arr, t, f) {
    var n = arr.length;
    if (n) { if (arr[n - 1][1] === f) { arr[n - 1][0] += t; return; } }
    arr.push([t, f]);
  }
  function inner(a, b, o, mode) {
    var ta = toks(a, mode), tb = toks(b, mode);
    var ka = ta.map(function (x) { return norm(x, o); }), kb = tb.map(function (x) { return norm(x, o); });
    var L = [], R = [], same = 0;
    diff(ka, kb).forEach(function (p) {
      if (p[0] === '=') { push(L, ta[p[1]], 0); push(R, tb[p[2]], 0); same += ka[p[1]].length; }
      else if (p[0] === '-') push(L, ta[p[1]], 1);
      else push(R, tb[p[2]], 1);
    });
    return { l: L, r: R, same: same };
  }
  function compute() {
    var o = { c: $('tdf-ic').checked, w: $('tdf-iw').checked, p: $('tdf-ip').checked };
    var mode = $('tdf-md').value, la = lines(A.value), lb = lines(B.value);
    var ka = la.map(function (x) { return norm(x, o); }), kb = lb.map(function (x) { return norm(x, o); });
    var ops = diff(ka, kb), rows = [], st = { add: 0, del: 0, chg: 0, same: 0, total: 0 }, i = 0;
    ka.forEach(function (x) { st.total += x.length; });
    kb.forEach(function (x) { st.total += x.length; });
    while (ops.length > i) {
      var p = ops[i];
      if (p[0] === '=') {
        rows.push({ t: 'eq', l: la[p[1]], r: lb[p[2]], ln: p[1] + 1, rn: p[2] + 1 });
        st.same += ka[p[1]].length; i++; continue;
      }
      var dels = [], adds = [];
      while (ops.length > i) {
        if (ops[i][0] === '=') break;
        if (ops[i][0] === '-') dels.push(ops[i]); else adds.push(ops[i]);
        i++;
      }
      var n = Math.max(dels.length, adds.length);
      for (var q = 0; n > q; q++) {
        var d = dels[q], a = adds[q];
        if (d) {
          if (a) {
            var r = inner(la[d[1]], lb[a[2]], o, mode);
            rows.push({ t: 'chg', sl: r.l, sr: r.r, ln: d[1] + 1, rn: a[2] + 1 });
            st.chg++; st.same += r.same;
          } else { rows.push({ t: 'del', l: la[d[1]], ln: d[1] + 1 }); st.del++; }
        } else { rows.push({ t: 'add', r: lb[a[2]], rn: a[2] + 1 }); st.add++; }
      }
    }
    return { rows: rows, st: st };
  }
  function cell(cls, n, segs, text) {
    var c = document.createElement('div'), nn = document.createElement('span'), t = document.createElement('span');
    c.className = 'tdf-c' + (cls ? ' tdf-' + cls : '');
    nn.className = 'tdf-n'; nn.textContent = n ? n : '';
    t.className = 'tdf-t';
    if (segs) {
      segs.forEach(function (s) {
        var e = document.createElement('span');
        if (s[1]) e.className = 'tdf-m';
        e.textContent = s[0]; t.appendChild(e);
      });
    } else t.textContent = text ? text : '';
    c.appendChild(nn); c.appendChild(t);
    return c;
  }
  function row(kids, one) {
    var r = document.createElement('div');
    r.className = 'tdf-r' + (one ? ' tdf-one' : '');
    kids.forEach(function (k) { r.appendChild(k); });
    out.appendChild(r);
    return r;
  }
  function render(rows) {
    var side = $('tdf-vw').value === 's', hide = $('tdf-hu').checked, inChg = false, k, d;
    var vis = rows.map(function (r) { return !hide || r.t !== 'eq'; });
    if (hide) {
      rows.forEach(function (r, x) {
        if (r.t !== 'eq') for (d = -3; 3 >= d; d++) if (rows[x + d]) vis[x + d] = true;
      });
    }
    for (k = 0; rows.length > k; k++) {
      var r = rows[k], el;
      if (!vis[k]) {
        if (!open[k]) {
          var e = k; while (rows.length > e) { if (vis[e]) break; e++; }
          var f = document.createElement('div');
          f.className = 'tdf-f';
          f.textContent = '⋯ ' + (e - k) + ' บรรทัดที่ไม่เปลี่ยนแปลง (คลิกเพื่อแสดง)';
          f.onclick = (function (s) { return function () { open[s] = true; out.textContent = ''; marks = []; cur = -1; render(rows); }; })(k);
          out.appendChild(f); k = e - 1; inChg = false; continue;
        }
      }
      if (r.t === 'eq') {
        if (side) row([cell('', r.ln, null, r.l), cell('', r.rn, null, r.r)]); else row([cell('', r.rn, null, r.r)], true);
        inChg = false; continue;
      }
      if (r.t === 'chg') {
        if (side) el = row([cell('d', r.ln, r.sl), cell('a', r.rn, r.sr)]);
        else { el = row([cell('d', r.ln, r.sl)], true); row([cell('a', r.rn, r.sr)], true); }
      } else if (r.t === 'del') {
        el = side ? row([cell('d', r.ln, null, r.l), cell('e')]) : row([cell('d', r.ln, null, r.l)], true);
      } else {
        el = side ? row([cell('e'), cell('a', r.rn, null, r.r)]) : row([cell('a', r.rn, null, r.r)], true);
      }
      if (!inChg) marks.push(el);
      inChg = true;
    }
  }
  function run() {
    open = {}; cur = -1; marks = []; out.textContent = '';
    $('tdf-nv').textContent = '';
    if (A.value === '') {
      if (B.value === '') { $('tdf-st').textContent = ''; msg('วางหรือพิมพ์ข้อความทั้งสองฝั่ง ความแตกต่างจะปรากฏที่นี่ หรือกด “ลองตัวอย่าง”'); return; }
    }
    var c = compute(), s = c.st, pct = s.total ? Math.round(200 * s.same / s.total) : 100;
    if (pct > 100) pct = 100;
    $('tdf-st').textContent = '+' + s.add + ' บรรทัด  −' + s.del + ' บรรทัด  เปลี่ยน ' + s.chg + ' บรรทัด  ความเหมือน ' + pct + '%';
    if (s.add + s.del + s.chg === 0) {
      msg(A.value === B.value ? 'ข้อความทั้งสองเหมือนกันทุกประการ' : 'ข้อความเหมือนกัน ยกเว้นส่วนที่ตั้งให้ไม่สนใจ (ตัวพิมพ์ ช่องว่าง หรือวรรคตอน)');
      return;
    }
    msg('');
    render(c.rows);
    $('tdf-nv').textContent = '–/' + marks.length;
  }
  function schedule() { clearTimeout(timer); timer = setTimeout(run, 120); }
  function go(dir) {
    if (!marks.length) return;
    cur = (cur + dir + marks.length) % marks.length;
    marks.forEach(function (m) { m.classList.remove('tdf-cur'); });
    marks[cur].classList.add('tdf-cur');
    marks[cur].scrollIntoView({ block: 'center', behavior: 'smooth' });
    $('tdf-nv').textContent = (cur + 1) + '/' + marks.length;
  }
  function unified() {
    var a = split(A.value), b = split(B.value), ops = diff(a, b), idx = [], op = [], np = [], x = 0, y = 0, res = [], k = 0;
    ops.forEach(function (p, q) {
      op.push(x); np.push(y);
      if (p[0] !== '+') x++;
      if (p[0] !== '-') y++;
      if (p[0] !== '=') idx.push(q);
    });
    if (!idx.length) return '';
    res.push('--- ' + fn[0], '+++ ' + fn[1]);
    while (idx.length > k) {
      var first = idx[k], last = first;
      while (idx.length > k + 1) { if (idx[k + 1] - last > 7) break; k++; last = idx[k]; }
      var s = Math.max(0, first - 3), e = Math.min(ops.length - 1, last + 3), oc = 0, nc = 0, body = [];
      for (var q = s; e >= q; q++) {
        var p = ops[q];
        if (p[0] === '=') { body.push(' ' + a[p[1]]); oc++; nc++; }
        else if (p[0] === '-') { body.push('-' + a[p[1]]); oc++; }
        else { body.push('+' + b[p[2]]); nc++; }
      }
      res.push('@@ -' + (oc ? op[s] + 1 : op[s]) + ',' + oc + ' +' + (nc ? np[s] + 1 : np[s]) + ',' + nc + ' @@');
      res = res.concat(body);
      k++;
    }
    return res.join('\n') + '\n';
  }
  function readFile(f, side) {
    if (f.size > 20971520) { msg('ไฟล์ใหญ่เกิน 20 MB กรุณาแยกเป็นไฟล์เล็กลง'); return; }
    var fr = new FileReader();
    fr.onload = function () {
      var buf = fr.result, u = new Uint8Array(buf), txt, enc = 'utf-8';
      if (u[0] === 255) { if (u[1] === 254) enc = 'utf-16le'; }
      if (u[0] === 254) { if (u[1] === 255) enc = 'utf-16be'; }
      if (enc !== 'utf-8') txt = new TextDecoder(enc).decode(buf);
      else {
        try { txt = new TextDecoder('utf-8', { fatal: true }).decode(buf); }
        catch (e) { try { txt = new TextDecoder('windows-874').decode(buf); } catch (e2) { txt = new TextDecoder().decode(buf); } }
      }
      if (txt.indexOf('\u0000') !== -1) { msg('ไฟล์นี้ไม่ใช่ข้อความล้วน (เช่น Word หรือ PDF) กรุณาคัดลอกข้อความมาวางแทน'); return; }
      if (txt.charCodeAt(0) === 65279) txt = txt.slice(1);
      (side ? B : A).value = txt;
      fn[side] = f.name; $(side ? 'tdf-nb' : 'tdf-na').textContent = f.name;
      schedule();
    };
    fr.readAsArrayBuffer(f);
  }
  [A, B].forEach(function (t, side) {
    t.addEventListener('input', schedule);
    t.addEventListener('dragover', function (e) { e.preventDefault(); });
    t.addEventListener('drop', function (e) {
      var f = e.dataTransfer.files[0];
      if (f) { e.preventDefault(); readFile(f, side); }
    });
  });
  ['tdf-ic', 'tdf-iw', 'tdf-ip', 'tdf-hu', 'tdf-md', 'tdf-vw'].forEach(function (id) { $(id).addEventListener('change', schedule); });
  $('tdf-fa').onclick = function () { $('tdf-ia').click(); };
  $('tdf-fb').onclick = function () { $('tdf-ib').click(); };
  $('tdf-ia').onchange = function () { if (this.files[0]) readFile(this.files[0], 0); this.value = ''; };
  $('tdf-ib').onchange = function () { if (this.files[0]) readFile(this.files[0], 1); this.value = ''; };
  $('tdf-ca').onclick = function () { A.value = ''; fn[0] = 'original.txt'; $('tdf-na').textContent = ''; schedule(); };
  $('tdf-cb').onclick = function () { B.value = ''; fn[1] = 'revised.txt'; $('tdf-nb').textContent = ''; schedule(); };
  $('tdf-sw').onclick = function () {
    var t = A.value; A.value = B.value; B.value = t;
    t = fn[0]; fn[0] = fn[1]; fn[1] = t;
    t = $('tdf-na').textContent; $('tdf-na').textContent = $('tdf-nb').textContent; $('tdf-nb').textContent = t;
    schedule();
  };
  $('tdf-ex').onclick = function () {
    A.value = 'สวัสดีครับ ผมชื่อสมชาย\nวันนี้อากาศดีมาก\nราคาสินค้า 1,200 บาท\nขอบคุณที่ใช้บริการ';
    B.value = 'สวัสดีค่ะ ผมชื่อสมชาย\nวันนี้อากาศดีมาก\nราคาสินค้า 1,500 บาท\nโปรโมชันถึงสิ้นเดือนนี้\nขอบคุณที่ใช้บริการ';
    schedule();
  };
  $('tdf-pv').onclick = function () { go(-1); };
  $('tdf-nx').onclick = function () { go(1); };
  $('tdf-cp').onclick = function () {
    var u = unified();
    if (!u) { msg('ไม่มีความแตกต่างให้คัดลอก'); return; }
    try { navigator.clipboard.writeText(u).then(function () { msg('คัดลอก diff แล้ว'); }, function () { msg('คัดลอกไม่สำเร็จ'); }); }
    catch (e) { msg('คัดลอกไม่สำเร็จ'); }
  };
  $('tdf-dl').onclick = function () {
    var u = unified();
    if (!u) { msg('ไม่มีความแตกต่างให้ดาวน์โหลด'); return; }
    var url = URL.createObjectURL(new Blob([u], { type: 'text/plain;charset=utf-8' })), a = document.createElement('a');
    a.href = url; a.download = 'text.diff'; document.body.appendChild(a); a.click(); a.remove();
    setTimeout(function () { URL.revokeObjectURL(url); }, 1000);
  };
  document.addEventListener('keydown', function (e) {
    var t = e.target.tagName;
    if (t === 'TEXTAREA') return;
    if (t === 'INPUT') return;
    if (t === 'SELECT') return;
    if (e.ctrlKey) return;
    if (e.metaKey) return;
    if (e.key === 'n') go(1); else if (e.key === 'p') go(-1);
  });
  run();
})();
</script>
</div>

## วิธีใช้งานเครื่องมือเปรียบเทียบข้อความ

1. วางข้อความเวอร์ชันเก่าในกล่อง **ต้นฉบับ** (ซ้าย) และเวอร์ชันใหม่ในกล่อง **ฉบับแก้ไข** (ขวา) หรือกด “เปิดไฟล์” และลากไฟล์ข้อความ (.txt, .csv, โค้ด, log) มาวางในกล่องได้เลย
2. ผลลัพธ์จะปรากฏด้านล่างทันที สีเขียวคือส่วนที่เพิ่ม สีแดงคือส่วนที่ลบ และสีเข้มในบรรทัดคือคำหรือตัวอักษรที่เปลี่ยนจริง
3. เลือกโหมด **ไฮไลต์** เป็น “คำ” สำหรับข้อความทั่วไป หรือ “ตัวอักษร” สำหรับโค้ด รหัส URL และการหาคำพิมพ์ผิด
4. ติ๊กตัวเลือก “ไม่สนใจ” ตามต้องการ เช่น ตัวพิมพ์เล็ก-ใหญ่ ช่องว่าง หรือเครื่องหมายวรรคตอน เพื่อไม่ให้ความต่างเล็กน้อยรบกวนผล
5. หากเอกสารยาว ให้ติ๊ก “ซ่อนบรรทัดที่ไม่เปลี่ยน” แล้วใช้ปุ่ม ▲ ▼ หรือกด N และ P บนคีย์บอร์ดเพื่อไล่ดูทีละจุด บนมือถือให้เลือกมุมมอง “ต่อเนื่อง”
6. กด “คัดลอก diff” หรือ “ดาวน์โหลด .diff” เพื่อนำผลไปใช้ต่อ และกด “สลับซ้าย-ขวา” หากวางผิดฝั่ง
7. ไฟล์ Word และ PDF ไม่ใช่ข้อความล้วน ให้คัดลอกเนื้อหาออกมาวางในกล่องแทน

## คำอธิบายศัพท์

- **Diff (ผลต่าง):** รายการส่วนที่เพิ่ม ลบ หรือเปลี่ยนแปลงระหว่างข้อความสองชุด
- **ต้นฉบับ / ฉบับแก้ไข:** ต้นฉบับคือเวอร์ชันเก่าที่ใช้เป็นฐาน ฉบับแก้ไขคือเวอร์ชันใหม่ที่นำมาเทียบ
- **โหมดคำ:** ทำเครื่องหมายเป็นคำหรือวลี ภาษาไทยที่ไม่เว้นวรรคก็แบ่งคำให้โดยอัตโนมัติ
- **โหมดตัวอักษร:** ทำเครื่องหมายทีละตัวอักษร เหมาะกับโค้ด ID และ URL
- **ไม่สนใจตัวพิมพ์เล็ก-ใหญ่:** ถือว่า “Apple” กับ “apple” เหมือนกัน
- **ไม่สนใจช่องว่าง:** ข้ามช่องว่าง แท็บ และการเยื้องบรรทัดทั้งหมดเมื่อเปรียบเทียบ
- **ไม่สนใจเครื่องหมายวรรคตอน:** ข้ามเครื่องหมาย เช่น , . ! ? และสัญลักษณ์ เหลือเทียบเฉพาะตัวอักษรและตัวเลข
- **ซ่อนบรรทัดที่ไม่เปลี่ยน:** แสดงเฉพาะบรรทัดที่ต่างพร้อมบรรทัดรอบข้าง 3 บรรทัด ส่วนที่เหลือจะพับไว้และคลิกเพื่อเปิดได้
- **เทียบข้าง / ต่อเนื่อง:** เทียบข้างแสดงสองคอลัมน์ ส่วนต่อเนื่องวางบรรทัดที่ลบไว้เหนือบรรทัดที่มาแทนที่ เหมาะกับหน้าจอแคบ
- **ความเหมือน (%):** สัดส่วนของข้อความที่ตรงกันเมื่อเทียบกับข้อความทั้งหมดของสองฝั่ง 100% คือเหมือนกันทั้งหมด
- **Unified diff (.diff):** รูปแบบมาตรฐานเดียวกับคำสั่ง `diff -u` นำไปใช้กับ `patch` หรือ `git apply` ได้ และจะบันทึกความต่างจริงเสมอ ไม่ขึ้นกับตัวเลือก “ไม่สนใจ”
- **Encoding:** รหัสที่ใช้เก็บตัวอักษรในไฟล์ เครื่องมือนี้อ่าน UTF-8, UTF-16 และ Windows-874 (TIS-620) ได้
- **ประมวลผลในเบราว์เซอร์:** ข้อความอยู่ในแท็บนี้เท่านั้น ไม่ถูกส่งไปเซิร์ฟเวอร์และไม่ถูกบันทึก

## คำถามที่พบบ่อย

**ข้อความของฉันถูกอัปโหลดหรือเก็บไว้ไหม?**
ไม่ การเปรียบเทียบทำงานในเบราว์เซอร์ของคุณทั้งหมด

**ภาษาไทยไม่มีช่องว่างระหว่างคำ แบ่งคำได้อย่างไร?**
เครื่องมือใช้ตัวแบ่งคำของเบราว์เซอร์ (Intl.Segmenter) หากเบราว์เซอร์รุ่นเก่าไม่รองรับ ให้เปลี่ยนเป็นโหมดตัวอักษรเพื่อให้ผลแม่นยำขึ้น

**เปรียบเทียบบรรทัดที่ต่างกันมากได้ไหม?**
ได้ แต่หากข้อความสองฝั่งต่างกันมากและยาวมาก ระบบจะแสดงส่วนที่เปลี่ยนเป็นบล็อกเดียวเพื่อไม่ให้หน้าเว็บค้าง