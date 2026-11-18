---
title: ทดสอบคีย์บอร์ด ออนไลน์ ฟรี
h1: ทดสอบคีย์บอร์ด
description: ทดสอบคีย์บอร์ดออนไลน์ฟรี เช็คปุ่มเสีย ปุ่มค้าง ปุ่มกดซ้ำ และการกดหลายปุ่มพร้อมกัน (Ghosting/NKRO) พร้อมสรุปผลและวัด WPM ใช้ได้ทันที ไม่ต้องติดตั้งโปรแกรม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-18T09:00:00+07:00'
weight: 125
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ทดสอบคีย์บอร์ด
- ทดสอบคีย์บอร์ด ออนไลน์
- ทดสอบและวัดค่า
---

<div id="kbt" aria-label="เครื่องมือทดสอบคีย์บอร์ด"></div>

<style>
#kbt{--bg:#fff;--fg:#1f2937;--mut:#6b7280;--bd:#d1d5db;--key:#f3f4f6;--ok:#16a34a;--on:#2563eb;--bad:#dc2626;--card:#f9fafb;color:var(--fg);font-size:15px;line-height:1.5}
@media (prefers-color-scheme: dark){#kbt{--bg:#111827;--fg:#e5e7eb;--mut:#9ca3af;--bd:#374151;--key:#1f2937;--card:#1f2937;--ok:#22c55e;--on:#60a5fa;--bad:#f87171}}
#kbt *{box-sizing:border-box}
#kbt .bar{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:0 0 10px}
#kbt button,#kbt select{font:inherit;padding:6px 12px;border:1px solid var(--bd);border-radius:8px;background:var(--card);color:var(--fg);cursor:pointer}
#kbt button.act{background:var(--on);color:#fff;border-color:var(--on)}
#kbt .st{padding:8px 12px;border-radius:8px;border:1px dashed var(--bd);color:var(--mut);margin:0 0 10px;font-size:14px}
#kbt .st.cap{border-color:var(--ok);color:var(--ok)}
#kbt .kb{display:flex;gap:14px;overflow-x:auto;padding:10px;border:1px solid var(--bd);border-radius:12px;background:var(--card)}
#kbt .blk{display:grid;grid-template-rows:38px 8px repeat(5,38px)}
#kbt .key{margin:2px;border:1px solid var(--bd);border-radius:6px;background:var(--key);display:flex;align-items:center;justify-content:center;font-size:11px;overflow:hidden;user-select:none}
#kbt .key.ok{background:var(--ok);color:#fff;border-color:var(--ok)}
#kbt .key.bad{background:var(--bad);color:#fff;border-color:var(--bad)}
#kbt .key.on{background:var(--on);color:#fff;border-color:var(--on);transform:translateY(1px)}
#kbt .grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:8px;margin:12px 0}
#kbt .card{border:1px solid var(--bd);border-radius:10px;padding:8px 12px;background:var(--card)}
#kbt .lb{font-size:12px;color:var(--mut)}
#kbt .vl{font-size:18px;font-weight:600;word-break:break-all}
#kbt .pg{height:8px;border-radius:4px;background:var(--key);overflow:hidden;margin-top:6px}
#kbt .pg i{display:block;height:100%;width:0;background:var(--ok)}
#kbt h3{font-size:16px;margin:16px 0 6px}
#kbt .row{display:flex;justify-content:space-between;gap:8px;padding:6px 0;border-bottom:1px solid var(--bd);font-size:14px}
#kbt .pass{color:var(--ok);font-weight:600}
#kbt .note{color:var(--mut);font-size:13px;margin:4px 0}
#kbt textarea{width:100%;min-height:80px;padding:8px;border:1px solid var(--bd);border-radius:8px;background:var(--card);color:var(--fg);font:inherit}
#kbt ul.log{list-style:none;margin:0;padding:0;font-family:monospace;font-size:12px;color:var(--mut)}
</style>

<script>
(function () {
  var root = document.getElementById("kbt");
  if (!root) { return; }
  function mk(tag, cls, txt) {
    var n = document.createElement(tag);
    if (cls) { n.className = cls; }
    if (txt !== undefined) { n.textContent = txt; }
    return n;
  }
  function ks(p, s) { return s.split("").map(function (c) { return p + c + "|" + c; }); }
  function fk(a, b) { var o = [], i = a; while (b >= i) { o.push("F" + i + "|F" + i); i++; } return o; }
  function L(a) {
    return a.map(function (s) {
      var p = s.split("|");
      return { c: p[0], l: p[1] === undefined ? p[0] : p[1], w: p[2] ? parseFloat(p[2]) : 1, r: p[3] ? parseInt(p[3], 10) : 1 };
    });
  }
  var MAIN = [
    ["Escape|Esc", "_||1"].concat(fk(1, 4), ["_||0.5"], fk(5, 8), ["_||0.5"], fk(9, 12)),
    ["Backquote|`"].concat(ks("Digit", "1234567890"), ["Minus|-", "Equal|=", "Backspace|Backspace|2"]),
    ["Tab|Tab|1.5"].concat(ks("Key", "QWERTYUIOP"), ["BracketLeft|[", "BracketRight|]", "Backslash|\\|1.5"]),
    ["CapsLock|Caps|1.75"].concat(ks("Key", "ASDFGHJKL"), ["Semicolon|;", "Quote|'", "Enter|Enter|2.25"]),
    ["ShiftLeft|Shift|2.25"].concat(ks("Key", "ZXCVBNM"), ["Comma|,", "Period|.", "Slash|/", "ShiftRight|Shift|2.75"]),
    ["ControlLeft|Ctrl|1.25", "MetaLeft|Win|1.25", "AltLeft|Alt|1.25", "Space|Space|6.25", "AltRight|Alt|1.25", "MetaRight|Win|1.25", "ContextMenu|Menu|1.25", "ControlRight|Ctrl|1.25"]
  ];
  var NAV = [
    ["PrintScreen|PrtSc", "ScrollLock|ScrLk", "Pause|Pause"],
    ["Insert|Ins", "Home|Home", "PageUp|PgUp"],
    ["Delete|Del", "End|End", "PageDown|PgDn"],
    [],
    ["_||1", "ArrowUp|\u2191"],
    ["ArrowLeft|\u2190", "ArrowDown|\u2193", "ArrowRight|\u2192"]
  ];
  var NUM = [
    [],
    ["NumLock|Num", "NumpadDivide|/", "NumpadMultiply|*", "NumpadSubtract|-"],
    ["Numpad7|7", "Numpad8|8", "Numpad9|9", "NumpadAdd|+|1|2"],
    ["Numpad4|4", "Numpad5|5", "Numpad6|6"],
    ["Numpad1|1", "Numpad2|2", "Numpad3|3", "NumpadEnter|Ent|1|2"],
    ["Numpad0|0|2", "NumpadDecimal|."]
  ];
  var MACL = { MetaLeft: "\u2318", MetaRight: "\u2318", AltLeft: "\u2325", AltRight: "\u2325", ControlLeft: "\u2303", ControlRight: "\u2303" };
  var COMBOS = [
    { n: "FPS: W + D + Space + Shift", k: ["KeyW", "KeyD", "Space", "ShiftLeft"] },
    { n: "Platformer: \u2191 + \u2192 + Z + X", k: ["ArrowUp", "ArrowRight", "KeyZ", "KeyX"] },
    { n: "Shortcut: Ctrl + Shift + Alt + T", k: ["ControlLeft", "ShiftLeft", "AltLeft", "KeyT"] }
  ];
  var KEYS = {}, V = {}, thr = 50, size = "full", plat = /Mac/.test(navigator.userAgent) ? "mac" : "win", cap = false;
  var S;
  function fresh() {
    S = { tested: {}, down: {}, downAt: {}, lastUp: {}, max: 0, chat: {}, log: [], extra: {}, combo: {}, lastDown: 0, rep: { t0: 0, prev: 0, delay: 0, sum: 0, n: 0 }, total: 0 };
  }
  fresh();
  function block(rows, units) {
    var b = mk("div", "blk");
    b.style.gridTemplateColumns = "repeat(" + units * 4 + ",1fr)";
    b.style.flex = units + " 1 " + units * 44 + "px";
    rows.forEach(function (row, ri) {
      var col = 0, gr = ri === 0 ? 1 : ri + 2;
      L(row).forEach(function (k) {
        var span = Math.round(k.w * 4);
        if (k.c !== "_") {
          var n = mk("div", "key", k.l);
          n.style.gridColumn = col + 1 + " / span " + span;
          n.style.gridRow = gr + " / span " + k.r;
          b.appendChild(n);
          KEYS[k.c] = { n: n, l: k.l };
        }
        col += span;
      });
    });
    return b;
  }
  var bar = mk("div", "bar"), status = mk("div", "st"), board = mk("div", "kb"), grid = mk("div", "grid");
  function btn(txt, fn) { var b = mk("button", "", txt); b.type = "button"; b.addEventListener("click", function () { fn(b); b.blur(); }); return b; }
  function group(opts, cur, fn) {
    var bs = opts.map(function (o) {
      var b = btn(o[1], function () { fn(o[0]); bs.forEach(function (x, i) { x.className = opts[i][0] === o[0] ? "act" : ""; }); });
      b.className = o[0] === cur ? "act" : "";
      return b;
    });
    bs.forEach(function (b) { bar.appendChild(b); });
  }
  group([["win", "Windows"], ["mac", "Mac"]], plat, function (v) { plat = v; apply(); });
  group([["full", "ขนาดเต็ม"], ["tkl", "ไม่มีปุ่มตัวเลข"]], size, function (v) { size = v; draw(); });
  var sel = mk("select");
  [30, 50, 80].forEach(function (v) { var o = mk("option", "", "ตรวจกดซ้ำ: เร็วกว่า " + v + " ms"); o.value = v; if (v === thr) { o.selected = true; } sel.appendChild(o); });
  sel.addEventListener("change", function () { thr = parseInt(sel.value, 10); });
  bar.appendChild(sel);
  bar.appendChild(btn("รีเซ็ต", function () { fresh(); resetInfo(); apply(); }));
  root.appendChild(bar);
  root.appendChild(status);
  root.appendChild(board);
  function card(id, label) {
    var c = mk("div", "card");
    c.appendChild(mk("div", "lb", label));
    V[id] = mk("div", "vl", "\u2014");
    c.appendChild(V[id]);
    grid.appendChild(c);
    return c;
  }
  card("code", "event.code"); card("key", "event.key"); card("kc", "keyCode"); card("loc", "ตำแหน่งปุ่ม (location)");
  var tc = card("tested", "ปุ่มที่ทดสอบแล้ว");
  var pgw = mk("div", "pg"), pgi = mk("i"); pgw.appendChild(pgi); tc.appendChild(pgw);
  card("down", "กำลังกดอยู่"); card("max", "กดพร้อมกันสูงสุด"); card("hold", "ระยะเวลากดค้างล่าสุด");
  card("gap", "ช่วงห่างจากปุ่มก่อนหน้า"); card("delay", "Delay ก่อนกดซ้ำ"); card("rate", "ความเร็ว Key Repeat"); card("lock", "สถานะ Lock");
  root.appendChild(grid);
  function section(t, note) {
    root.appendChild(mk("h3", "", t));
    if (note) { root.appendChild(mk("p", "note", note)); }
    var d = mk("div"); root.appendChild(d); return d;
  }
  var comboBox = section("ทดสอบกดหลายปุ่มพร้อมกัน (Rollover / Ghosting)", "กดทุกปุ่มในชุดค้างไว้พร้อมกัน ถ้าบางปุ่มไม่ติดสว่าง แสดงว่าคีย์บอร์ดอาจจำกัดจำนวนปุ่มที่ส่งสัญญาณพร้อมกัน");
  COMBOS.forEach(function (c) {
    var r = mk("div", "row"); r.appendChild(mk("span", "", c.n));
    c.st = mk("span", "", "ยังไม่ผ่าน"); r.appendChild(c.st); comboBox.appendChild(r);
  });
  var chatBox = section("ตรวจปุ่มกดซ้ำเอง (Chatter / Double Typing)", "ปุ่มที่ถูกนับเป็นกดซ้ำในเวลาสั้นผิดปกติหลังปล่อย จะเป็นสีแดงบนแป้น");
  var chatOut = mk("div", "vl", "ยังไม่พบ"); chatBox.appendChild(chatOut);
  var unBox = section("ปุ่มที่ยังไม่ได้ทดสอบ");
  var unOut = mk("div", "note"); unBox.appendChild(unOut);
  var exOut = mk("div", "note"); unBox.appendChild(exOut);
  var logBox = section("ประวัติการกดล่าสุด");
  var logOut = mk("ul", "log"); logBox.appendChild(logOut);
  var repBox = section("สรุปผลและรายงาน");
  var repBar = mk("div", "bar");
  repBar.appendChild(btn("คัดลอกผลทดสอบ", function (b) { copy(report()); b.textContent = "คัดลอกแล้ว"; setTimeout(function () { b.textContent = "คัดลอกผลทดสอบ"; }, 1500); }));
  repBar.appendChild(btn("ดาวน์โหลด .txt", function () {
    var a = mk("a"); a.href = URL.createObjectURL(new Blob([report()], { type: "text/plain" })); a.download = "keyboard-test.txt"; a.click();
  }));
  repBox.appendChild(repBar);
  var wBox = section("ทดสอบความเร็วพิมพ์ (WPM)", "พิมพ์อะไรก็ได้ในช่องนี้ ระบบคำนวณจาก 5 ตัวอักษร = 1 คำ");
  var ta = mk("textarea"); ta.placeholder = "เริ่มพิมพ์ที่นี่..."; wBox.appendChild(ta);
  var wOut = mk("div", "vl", "0 WPM"); wBox.appendChild(wOut);
  var w0 = 0;
  ta.addEventListener("input", function () {
    var now = Date.now(); if (!w0) { w0 = now; }
    var m = (now - w0) / 60000;
    wOut.textContent = (m > 0.03 ? Math.round(ta.value.length / 5 / m) : 0) + " WPM \u00B7 " + ta.value.length + " ตัวอักษร";
    if (ta.value.length === 0) { w0 = 0; }
  });
  function draw() {
    while (board.firstChild) { board.removeChild(board.firstChild); }
    KEYS = {};
    board.appendChild(block(MAIN, 15));
    board.appendChild(block(NAV, 3));
    if (size === "full") { board.appendChild(block(NUM, 4)); }
    apply();
  }
  function lbl(c) {
    var k = KEYS[c];
    return k ? (plat === "mac" && MACL[c] ? MACL[c] : (plat === "mac" && c.indexOf("Meta") === 0 ? "\u2318" : k.l)) : c;
  }
  function apply() {
    var ok = 0, un = [], c;
    for (c in KEYS) {
      var k = KEYS[c];
      k.n.textContent = lbl(c);
      var t = !!S.tested[c];
      k.n.classList.toggle("ok", t);
      k.n.classList.toggle("on", !!S.down[c]);
      k.n.classList.toggle("bad", !!S.chat[c]);
      if (t) { ok++; } else { un.push(k.n.textContent); }
    }
    var tot = Object.keys(KEYS).length;
    V.tested.textContent = ok + " / " + tot;
    pgi.style.width = (tot ? ok * 100 / tot : 0) + "%";
    V.down.textContent = Object.keys(S.down).length;
    V.max.textContent = S.max + " ปุ่ม";
    unOut.textContent = un.length ? un.join(", ") : "ทดสอบครบทุกปุ่มแล้ว";
    var ex = Object.keys(S.extra);
    exOut.textContent = ex.length ? "ปุ่มอื่นที่ตรวจพบ (ไม่อยู่บนแผนผัง): " + ex.join(", ") : "";
    var ch = Object.keys(S.chat);
    chatOut.textContent = ch.length ? ch.map(function (x) { return x + " (" + S.chat[x].n + " ครั้ง, ห่างต่ำสุด " + Math.round(S.chat[x].g) + " ms)"; }).join(", ") : "ยังไม่พบ";
    COMBOS.forEach(function (cb) {
      var all = cb.k.every(function (x) { return S.down[x]; });
      if (all) { S.combo[cb.n] = true; }
      cb.st.textContent = S.combo[cb.n] ? "ผ่าน" : "ยังไม่ผ่าน";
      cb.st.className = S.combo[cb.n] ? "pass" : "";
    });
    status.className = "st" + (cap ? " cap" : "");
    status.textContent = cap ? "กำลังดักปุ่ม: ปุ่มทั้งหมดถูกบันทึกและไม่ทำงานตามปกติ (คลิกนอกกรอบเครื่องมือเพื่อปิด)" : "คลิกในกรอบเครื่องมือนี้เพื่อบล็อกการทำงานปกติของปุ่ม (Tab, Space, F1-F12) แล้วเริ่มกดทดสอบ";
    logOut.textContent = "";
    S.log.forEach(function (x) { logOut.appendChild(mk("li", "", x)); });
  }
  function resetInfo() { ["code", "key", "kc", "loc", "hold", "gap", "delay", "rate", "lock"].forEach(function (i) { V[i].textContent = "\u2014"; }); }
  function copy(t) {
    if (navigator.clipboard && navigator.clipboard.writeText) { navigator.clipboard.writeText(t).catch(function () {}); return; }
    var x = mk("textarea"); x.value = t; document.body.appendChild(x); x.select();
    try { document.execCommand("copy"); } catch (err) {}
    document.body.removeChild(x);
  }
  function report() {
    var ch = Object.keys(S.chat).map(function (x) { return x + " x" + S.chat[x].n; }).join(", ") || "ไม่พบ";
    var rate = S.rep.n ? (1000 / (S.rep.sum / S.rep.n)).toFixed(1) + " ครั้ง/วินาที" : "ไม่มีข้อมูล";
    return ["ผลทดสอบคีย์บอร์ด " + new Date().toLocaleString("th-TH"),
      "ระบบที่เลือก: " + (plat === "mac" ? "Mac" : "Windows") + " / แผนผัง: " + (size === "full" ? "ขนาดเต็ม" : "ไม่มีปุ่มตัวเลข"),
      "ทดสอบแล้ว: " + V.tested.textContent,
      "ยังไม่ได้ทดสอบ: " + unOut.textContent,
      "กดพร้อมกันสูงสุด: " + S.max + " ปุ่ม",
      "ปุ่มที่สงสัยกดซ้ำเอง: " + ch,
      "Delay ก่อนกดซ้ำ: " + (S.rep.delay ? Math.round(S.rep.delay) + " ms" : "ไม่มีข้อมูล"),
      "Key Repeat: " + rate].join("\n");
  }
  function typing(e) {
    var t = e.target && e.target.tagName;
    return t === "TEXTAREA" || t === "INPUT" || t === "SELECT" || e.isComposing;
  }
  function info(e, c) {
    V.code.textContent = c; V.key.textContent = e.key === " " ? "(Space)" : e.key; V.kc.textContent = e.keyCode;
    V.loc.textContent = ["มาตรฐาน", "ซ้าย", "ขวา", "Numpad"][e.location] || e.location;
    if (e.getModifierState) {
      V.lock.textContent = ["CapsLock", "NumLock", "ScrollLock"].map(function (n) { return n.replace("Lock", "") + (e.getModifierState(n) ? " ON" : " off"); }).join(" \u00B7 ");
    }
  }
  function stamp(t) { return (t / 1000).toFixed(3) + "s"; }
  function onDown(e) {
    if (typing(e)) { return; }
    if (cap) { e.preventDefault(); }
    var c = e.code || "Unknown" + e.keyCode, t = e.timeStamp;
    info(e, c);
    if (e.repeat) {
      var r = S.rep;
      if (!r.prev) { r.delay = t - r.t0; } else { r.sum += t - r.prev; r.n++; }
      r.prev = t;
      V.delay.textContent = Math.round(r.delay) + " ms";
      if (r.n) { V.rate.textContent = (1000 / (r.sum / r.n)).toFixed(1) + " /วินาที"; }
      return;
    }
    S.rep.t0 = t; S.rep.prev = 0;
    if (S.lastDown) { V.gap.textContent = Math.round(t - S.lastDown) + " ms"; }
    S.lastDown = t;
    if (S.lastUp[c] !== undefined) {
      var g = t - S.lastUp[c];
      if (thr > g) {
        var o = S.chat[c] || { n: 0, g: g };
        o.n++; if (o.g > g) { o.g = g; }
        S.chat[c] = o;
      }
    }
    S.down[c] = true; S.downAt[c] = t; S.tested[c] = true; S.total++;
    if (!KEYS[c]) { S.extra[c] = true; }
    var n = Object.keys(S.down).length;
    if (n > S.max) { S.max = n; }
    apply();
  }
  function onUp(e) {
    if (typing(e)) { return; }
    if (cap) { e.preventDefault(); }
    var c = e.code || "Unknown" + e.keyCode, t = e.timeStamp;
    if (S.downAt[c] !== undefined) {
      var h = Math.round(t - S.downAt[c]);
      V.hold.textContent = h + " ms";
      S.log.unshift(stamp(t) + "  " + c + "  (" + e.key + ")  กด " + h + " ms");
      if (S.log.length > 10) { S.log.pop(); }
    }
    delete S.down[c]; S.lastUp[c] = t;
    info(e, c);
    apply();
  }
  document.addEventListener("keydown", onDown, true);
  document.addEventListener("keyup", onUp, true);
  window.addEventListener("blur", function () { S.down = {}; apply(); });
  document.addEventListener("pointerdown", function (e) {
    cap = root.contains(e.target) && !typing(e) && e.target.tagName !== "BUTTON";
    apply();
  });
  draw();
})();
</script>

## วิธีใช้งานเครื่องมือทดสอบคีย์บอร์ด

1. **คลิกในกรอบเครื่องมือ** เพื่อเปิดโหมดดักปุ่ม ระบบจะบล็อกการทำงานปกติของปุ่มอย่าง Tab, Space หรือ F1-F12 ขณะทดสอบ
2. **กดทุกปุ่มทีละปุ่ม** ปุ่มบนแผนผังจะติดสีฟ้าตอนกดและเปลี่ยนเป็นสีเขียวเมื่อทดสอบแล้ว ปุ่มที่ไม่เปลี่ยนสีคือปุ่มที่อาจเสีย
3. **ดูรายการปุ่มที่ยังไม่ได้ทดสอบ** ด้านล่างแผนผัง และดูแถบความคืบหน้าเพื่อให้ครบทุกปุ่ม
4. **ทดสอบกดหลายปุ่มพร้อมกัน** โดยกดค้างตามชุดปุ่มที่กำหนด หรือกดให้ได้มากที่สุดเพื่อดูค่ากดพร้อมกันสูงสุด
5. **ตรวจปุ่มกดซ้ำเอง** กดปุ่มที่สงสัยหลายครั้ง ถ้าปุ่มเป็นสีแดงแสดงว่าสวิตช์อาจเริ่มเสื่อม ปรับความไวได้จากเมนู "ตรวจกดซ้ำ"
6. **เลือกแผนผังให้ตรงกับคีย์บอร์ด** สลับ Windows/Mac และขนาดเต็ม/ไม่มีปุ่มตัวเลขได้ การสลับเปลี่ยนเฉพาะภาพ ไม่กระทบการอ่านค่าปุ่ม
7. **คัดลอกหรือดาวน์โหลดผล** เพื่อใช้อ้างอิงตอนซื้อขายคีย์บอร์ดมือสองหรือเคลมประกัน

> ปุ่มบางปุ่ม เช่น `Fn` บน Mac, `Win/⌘` หรือปุ่มลัดของระบบ อาจไม่ส่งสัญญาณถึงเบราว์เซอร์ จึงไม่ติดสว่างโดยไม่ได้แปลว่าเสีย หน้าจอสัมผัสไม่สามารถใช้ทดสอบได้ ต้องต่อคีย์บอร์ดจริง

## คำอธิบายศัพท์ในเครื่องมือ

| ศัพท์ | ความหมายโดยย่อ |
|---|---|
| `event.code` | ตำแหน่งจริงของปุ่มบนคีย์บอร์ด ไม่เปลี่ยนตามภาษาที่ตั้งไว้ เช่น `KeyQ` |
| `event.key` | ตัวอักษรหรือค่าที่ระบบแปลงจากการกดปุ่ม เปลี่ยนตามภาษาและ Shift/Caps |
| `keyCode` | รหัสตัวเลขรุ่นเก่า ใช้เทียบกับเอกสารหรือโค้ดเก่า |
| location | ตำแหน่งกลุ่มของปุ่ม เช่น ซ้าย ขวา หรือ Numpad ใช้แยกปุ่ม Shift/Ctrl/Alt ฝั่งซ้ายและขวา |
| Rollover | จำนวนปุ่มที่คีย์บอร์ดรายงานได้พร้อมกัน |
| 6KRO / NKRO | รองรับ 6 ปุ่มพร้อมกัน / รองรับทุกปุ่มพร้อมกัน (N-Key Rollover) |
| Ghosting | กดหลายปุ่มแล้วมีปุ่มหายหรือขึ้นปุ่มที่ไม่ได้กด เพราะวงจรไม่สามารถแยกสัญญาณได้ |
| Anti-ghosting | วงจรหรือไดโอดที่ช่วยลด Ghosting ในคีย์บอร์ดเกมมิ่ง |
| Chatter / Double Typing | ปุ่มถูกอ่านซ้ำทั้งที่กดครั้งเดียว มักเกิดจากสวิตช์เสื่อมหรือสกปรก |
| Debounce | การหน่วงเวลาในเฟิร์มแวร์เพื่อกรองสัญญาณสั่นของสวิตช์ |
| Key Repeat | การที่ปุ่มส่งค่าซ้ำเมื่อกดค้าง ตั้งค่าได้จากระบบปฏิบัติการ |
| Delay ก่อนกดซ้ำ | เวลาที่ต้องกดค้างก่อนเริ่มส่งค่าซ้ำ |
| ระยะเวลากดค้าง | เวลาตั้งแต่กดลงจนปล่อยปุ่ม |
| Modifier | ปุ่มที่ใช้ร่วมกับปุ่มอื่น เช่น Ctrl, Shift, Alt, Win/⌘ |
| Lock | ปุ่มสลับโหมด ได้แก่ Caps Lock, Num Lock, Scroll Lock |
| WPM | จำนวนคำต่อนาที (Words Per Minute) โดยนับ 5 ตัวอักษรเป็น 1 คำ |
| คีย์บอร์ดเมมเบรน / เมคานิคอล | แบบแรกใช้แผ่นยางและวงจรร่วมกัน (เสี่ยง Ghosting) แบบหลังใช้สวิตช์แยกรายปุ่ม |

## ปุ่มคีย์บอร์ดไม่ทำงาน แก้ได้อย่างไร

- **ปุ่มเดียวไม่ติด**: ใช้ลมเป่าหรือแปรงทำความสะอาดรอบปุ่ม ถ้าเป็นเมคานิคอลลองถอดคีย์แคปและเป่าสวิตช์
- **ปุ่มกดซ้ำเอง**: ทำความสะอาดสวิตช์ ตรวจว่าเป็นปุ่มเดิมซ้ำหรือไม่ ถ้าเป็นแล้วยังเกิดอีกอาจต้องเปลี่ยนสวิตช์
- **หลายปุ่มไม่ติดพร้อมกัน**: อาจเป็นข้อจำกัดของคีย์บอร์ดเมมเบรน ลองสลับพอร์ต USB หรือใช้คีย์บอร์ดที่รองรับ NKRO
- **ปุ่มทำงานผิดตัวอักษร**: ตรวจภาษาและ Layout ของระบบ ถ้า `event.code` ถูกแต่ `event.key` ต่างจากที่ป้ายปุ่ม แสดงว่าเป็นเรื่องการตั้งค่า
- **ทั้งแผงไม่ตอบสนอง**: ลองถอดปลั๊กแล้วเสียบใหม่ เปลี่ยนพอร์ต อัปเดตไดรเวอร์ หรือทดสอบกับเครื่องอื่น

## คำถามที่พบบ่อย

**เครื่องมือนี้เก็บข้อมูลที่ฉันพิมพ์หรือไม่?**
ไม่ ทุกอย่างประมวลผลบนเบราว์เซอร์ของคุณ ไม่มีการส่งปุ่มที่กดไปยังเซิร์ฟเวอร์

**ทำไมปุ่มติดสว่างผิดตัวอักษร?**
แผนผังอิงตำแหน่งจริงของปุ่ม (`event.code`) ไม่ใช่ตัวอักษรบนปุ่ม จึงไม่ต่างกันแม้ใช้ภาษาไทยหรือเลย์เอาต์อื่น

**จะรู้ได้อย่างไรว่าคีย์บอร์ดรองรับ NKRO?**
กดปุ่มพร้อมกันให้ได้มากที่สุดแล้วดูค่า "กดพร้อมกันสูงสุด" ถ้ากดได้เกิน 6 ปุ่มและทุกปุ่มติดสว่าง แสดงว่าน่าจะรองรับ NKRO ค่านี้ขึ้นกับจำนวนนิ้วที่กดได้จริงด้วย

**ปุ่ม Fn หรือ Windows ไม่ติด แปลว่าเสียไหม?**
ไม่จำเป็น ปุ่มเหล่านี้มักถูกระบบหรือเบราว์เซอร์จัดการเอง จึงไม่ส่งสัญญาณมาถึงหน้าเว็บ

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[
{"@type":"Question","name":"เครื่องมือนี้เก็บข้อมูลที่ฉันพิมพ์หรือไม่?","acceptedAnswer":{"@type":"Answer","text":"ไม่ ทุกอย่างประมวลผลบนเบราว์เซอร์ของคุณ ไม่มีการส่งปุ่มที่กดไปยังเซิร์ฟเวอร์"}},
{"@type":"Question","name":"ทำไมปุ่มติดสว่างผิดตัวอักษร?","acceptedAnswer":{"@type":"Answer","text":"แผนผังอิงตำแหน่งจริงของปุ่ม (event.code) ไม่ใช่ตัวอักษรบนปุ่ม จึงไม่ต่างกันแม้ใช้ภาษาไทยหรือเลย์เอาต์อื่น"}},
{"@type":"Question","name":"จะรู้ได้อย่างไรว่าคีย์บอร์ดรองรับ NKRO?","acceptedAnswer":{"@type":"Answer","text":"กดปุ่มพร้อมกันให้ได้มากที่สุดแล้วดูค่ากดพร้อมกันสูงสุด ถ้ากดได้เกิน 6 ปุ่มและทุกปุ่มติดสว่าง แสดงว่าน่าจะรองรับ NKRO"}},
{"@type":"Question","name":"ปุ่ม Fn หรือ Windows ไม่ติด แปลว่าเสียไหม?","acceptedAnswer":{"@type":"Answer","text":"ไม่จำเป็น ปุ่มเหล่านี้มักถูกระบบหรือเบราว์เซอร์จัดการเอง จึงไม่ส่งสัญญาณมาถึงหน้าเว็บ"}}
]}
</script>