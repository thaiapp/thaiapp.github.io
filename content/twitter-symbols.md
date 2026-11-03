---
title: สัญลักษณ์ X (Twitter) ออนไลน์ ฟรี
h1: สัญลักษณ์ X (Twitter)
description: คัดลอกสัญลักษณ์ X (Twitter) อีโมจิหัวใจ ธง หน้ายิ้ม ได้ฟรี คลิกเดียวคัดลอกทันที มีตัวนับ 280 ตัวอักษร ใช้ได้ทั้งมือถือและคอมพิวเตอร์ ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T08:57:00+07:00'
weight: 56
tool: true
topic: social
appCategory: SocialNetworkingApplication
keywords:
- สัญลักษณ์ X (Twitter)
- สัญลักษณ์ X (Twitter) ออนไลน์
- โซเชียลมีเดีย
---

<div class="tsym" id="tsym">
<textarea id="tsText" class="tsym-text" rows="4" placeholder="พิมพ์ข้อความ หรือคลิกอีโมจิด้านล่างเพื่อเพิ่มลงในกล่องนี้" aria-label="ข้อความโพสต์"></textarea>
<div class="tsym-bar">
<span class="tsym-count" id="tsCount" aria-live="polite">280</span>
<button type="button" class="tsym-btn tsym-primary" id="tsCopy">คัดลอก</button>
<button type="button" class="tsym-btn" id="tsPost">Tweet</button>
<button type="button" class="tsym-btn" id="tsClear">ลบข้อมูลทั้งหมด</button>
</div>
<p class="tsym-hint">คลิกที่ไอคอนเพื่อเพิ่มลงในกล่องข้อความและคัดลอกไปยังคลิปบอร์ดอัตโนมัติ</p>
<div class="tsym-tone" id="tsTone" role="group" aria-label="เลือกโทนสีผิว"></div>
<div class="tsym-tabs" id="tsTabs" role="tablist"></div>
<div class="tsym-title" id="tsTitle"></div>
<div class="tsym-grid" id="tsGrid"></div>
</div>

<style>
.tsym{max-width:760px;margin:0 auto 24px;font-family:inherit}
.tsym *{box-sizing:border-box}
.tsym-text{width:100%;padding:12px;font-size:16px;line-height:1.5;border:1px solid rgba(128,128,128,.5);border-radius:10px;background:transparent;color:inherit;resize:vertical;font-family:inherit}
.tsym-bar{display:flex;flex-wrap:wrap;align-items:center;gap:8px;margin:10px 0 4px}
.tsym-count{min-width:52px;font-weight:700;font-size:18px;font-variant-numeric:tabular-nums}
.tsym-count.tsym-over{color:#e0245e}
.tsym-btn{padding:8px 14px;font-size:14px;border:1px solid rgba(128,128,128,.5);border-radius:999px;background:transparent;color:inherit;cursor:pointer;font-family:inherit}
.tsym-btn:hover{background:rgba(128,128,128,.15)}
.tsym-primary{background:#1d9bf0;border-color:#1d9bf0;color:#fff}
.tsym-primary:hover{background:#1a8cd8}
.tsym-hint{margin:4px 0 12px;font-size:13px;opacity:.75}
.tsym-tone{display:flex;gap:6px;margin-bottom:10px}
.tsym-tone button{width:30px;height:30px;border-radius:50%;border:2px solid transparent;cursor:pointer;padding:0;font-size:0}
.tsym-tone button.tsym-on{border-color:#1d9bf0;box-shadow:0 0 0 2px rgba(29,155,240,.35)}
.tsym-tabs{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:10px}
.tsym-tabs button{width:44px;height:44px;font-size:22px;border:1px solid rgba(128,128,128,.4);border-radius:10px;background:transparent;cursor:pointer;line-height:1}
.tsym-tabs button.tsym-on{border-color:#1d9bf0;background:rgba(29,155,240,.15)}
.tsym-title{font-weight:700;margin:6px 0}
.tsym-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(44px,1fr));gap:4px;max-height:360px;overflow-y:auto;padding:4px;border:1px solid rgba(128,128,128,.3);border-radius:10px}
.tsym-grid button{height:44px;font-size:26px;border:0;border-radius:8px;background:transparent;cursor:pointer;line-height:1}
.tsym-grid button:hover{background:rgba(128,128,128,.2)}
.tsym-empty{grid-column:1 / -1;padding:16px;font-size:14px;opacity:.75}
</style>

<script>
(function () {
  var CATS = [
    { id: "recent", icon: "🕘", name: "ที่ใช้ล่าสุด" },
    { id: "smileys", icon: "😀", name: "หน้ายิ้มและผู้คน" },
    { id: "animals", icon: "🐻", name: "สัตว์และธรรมชาติ" },
    { id: "food", icon: "🍔", name: "อาหารและเครื่องดื่ม" },
    { id: "activities", icon: "⚽", name: "กิจกรรม" },
    { id: "travel", icon: "🚗", name: "การเดินทางและสถานที่" },
    { id: "objects", icon: "💡", name: "สิ่งของ" },
    { id: "symbols", icon: "❤️", name: "สัญลักษณ์" },
    { id: "flags", icon: "🏁", name: "ธง" }
  ];
  var TONABLE_LIST = "👋 🤚 ✋ 👌 🤏 🤞 🤟 🤘 🤙 👈 👉 👆 👇 👍 👎 ✊ 👊 🤛 🤜 👏 🙌 👐 🤲 🙏 💪 👶 🧒 👦 👧 🧑 👨 👩 🧓 👴 👵 🙋 🙇 🤦 🤷 💃 🕺 🚶 🏃".split(" ");
  var TONABLE = {};
  TONABLE_LIST.forEach(function (e) { TONABLE[e] = 1; });
  var FLAG_CODES = "TH ID MY SG VN PH JP KR CN HK TW IN US GB CA AU NZ DE FR IT ES PT NL BE CH SE NO DK FI RU UA TR SA AE EG ZA NG KE BR AR MX CL CO PE IE AT PL GR IL PK BD LK NP KH LA MM".split(" ");
  var DATA = {
    smileys: "😀 😃 😄 😁 😆 😅 🤣 😂 🙂 🙃 😉 😊 😇 🥰 😍 🤩 😘 😗 😚 😙 😋 😛 😜 🤪 😝 🤑 🤗 🤭 🤫 🤔 🤐 🤨 😐 😑 😶 😏 😒 🙄 😬 🤥 😌 😔 😪 🤤 😴 😷 🤒 🤕 🤢 🤮 🤧 🥵 🥶 🥴 😵 🤯 🤠 🥳 😎 🤓 🧐 😕 😟 🙁 ☹️ 😮 😯 😲 😳 🥺 😦 😧 😨 😰 😥 😢 😭 😱 😖 😣 😞 😓 😩 😫 🥱 😤 😡 😠 🤬 😈 👿 💀 ☠️ 💩 🤡 👹 👺 👻 👽 👾 🤖 😺 😸 😹 😻 😼 😽 🙀 😿 😾 🙈 🙉 🙊 💋 💌 💘 💝 💖 💗 💓 💞 💕 💟 ❣️ 💔 ❤️ 🧡 💛 💚 💙 💜 🤎 🖤 🤍 💯 💢 💥 💫 💦 💨 💬 💭 💤 👀 👅 👄 🧠".split(" ").concat(TONABLE_LIST),
    animals: "🐶 🐱 🐭 🐹 🐰 🦊 🐻 🐼 🐨 🐯 🦁 🐮 🐷 🐸 🐵 🐔 🐧 🐦 🐤 🦆 🦅 🦉 🦇 🐺 🐗 🐴 🦄 🐝 🐛 🦋 🐌 🐞 🐜 🕷️ 🦂 🐢 🐍 🦎 🐙 🦑 🦐 🦀 🐡 🐠 🐟 🐬 🐳 🐋 🦈 🐊 🐅 🐆 🦓 🦍 🐘 🦏 🐪 🐫 🦒 🐃 🐂 🐄 🐎 🐖 🐏 🐑 🐐 🦌 🐕 🐩 🐈 🐓 🦃 🕊️ 🐇 🐁 🐀 🐿️ 🦔 🐾 🐉 🌵 🎄 🌲 🌳 🌴 🌱 🌿 ☘️ 🍀 🎍 🍃 🍂 🍁 🍄 🌾 💐 🌷 🌹 🥀 🌺 🌸 🌼 🌻 🌞 🌝 🌛 🌜 🌚 🌕 🌙 ⭐ 🌟 ✨ ⚡ 🔥 🌈 ☀️ ⛅ ☁️ ❄️ ☃️ 💧 🌊".split(" "),
    food: "🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 🍓 🍈 🍒 🍑 🥭 🍍 🥥 🥝 🍅 🍆 🥑 🥦 🥬 🥒 🌶️ 🌽 🥕 🧄 🧅 🥔 🍠 🥐 🍞 🥖 🧀 🥚 🍳 🥞 🧇 🥓 🥩 🍗 🍖 🌭 🍔 🍟 🍕 🥪 🌮 🌯 🥗 🍝 🍜 🍲 🍛 🍣 🍱 🥟 🍤 🍙 🍚 🍘 🍥 🍢 🍡 🍧 🍨 🍦 🥧 🧁 🍰 🎂 🍮 🍭 🍬 🍫 🍿 🍩 🍪 🌰 🥜 🍯 🥛 🍼 ☕ 🍵 🥤 🍶 🍺 🍻 🥂 🍷 🥃 🍸 🍹 🍾 🧊 🥄 🍴 🍽️".split(" "),
    activities: "⚽ 🏀 🏈 ⚾ 🥎 🎾 🏐 🏉 🎱 🏓 🏸 🏒 🏑 🥍 🏏 🥅 ⛳ 🏹 🎣 🥊 🥋 🎽 🛹 🛼 ⛸️ 🥌 🎿 🏂 🏋️ 🤸 🤺 🤾 🏌️ 🏇 🧘 🏄 🏊 🤽 🚣 🧗 🚴 🏆 🥇 🥈 🥉 🏅 🎖️ 🎫 🎟️ 🎪 🎭 🎨 🎬 🎤 🎧 🎼 🎹 🥁 🎷 🎺 🎸 🎻 🎲 🎯 🎳 🎮 🎰 🧩".split(" "),
    travel: "🚗 🚕 🚙 🚌 🚎 🏎️ 🚓 🚑 🚒 🚐 🚚 🚛 🚜 🛵 🏍️ 🚲 🛴 🚨 🚔 🚍 🚘 🚖 🚡 🚠 🚟 🚃 🚋 🚞 🚝 🚄 🚅 🚈 🚂 🚆 🚇 🚊 🚉 ✈️ 🛫 🛬 🚀 🛸 🚁 🛶 ⛵ 🚤 🛥️ 🛳️ ⛴️ 🚢 ⚓ ⛽ 🚧 🚦 🚥 🗺️ 🗿 🗽 🗼 🏰 🏯 🏟️ 🎡 🎢 🎠 ⛲ ⛱️ 🏖️ 🏝️ 🏜️ 🌋 ⛰️ 🏔️ 🗻 🏕️ ⛺ 🏠 🏡 🏢 🏣 🏥 🏦 🏨 🏪 🏫 🏬 🏭 ⛪ 🕌 🛕 🕍 🌃 🌆 🌇 🌉 🌌 🌠 🎆 🎇".split(" "),
    objects: "⌚ 📱 💻 ⌨️ 🖥️ 🖨️ 🖱️ 💽 💾 💿 📀 📷 📸 📹 🎥 📞 ☎️ 📺 📻 🎙️ ⏰ ⏳ 🔋 🔌 💡 🔦 🕯️ 💸 💵 💴 💶 💷 💰 💳 💎 ⚖️ 🔧 🔨 ⚒️ 🛠️ ⛏️ 🔩 ⚙️ 🧰 🧲 🔫 💣 🔪 🗡️ ⚔️ 🛡️ 🚬 ⚰️ 🔮 📿 💈 🔭 🔬 💊 💉 🌡️ 🧹 🧺 🧻 🚽 🚿 🛁 🔑 🗝️ 🚪 🛋️ 🛏️ 🎁 🎈 🎏 🎀 🎉 🎊 ✉️ 📧 📦 📜 📃 📄 📊 📈 📉 📌 📍 📎 ✂️ 📝 ✏️ 🖊️ 🖌️ 🔍 🔎 🔒 🔓 📚 📖 🔖".split(" "),
    symbols: "❤️ 🧡 💛 💚 💙 💜 🖤 🤍 🤎 💔 ❣️ 💕 💞 💓 💗 💖 💘 💝 ☮️ ✝️ ☪️ 🕉️ ☸️ ✡️ ☯️ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ 🆔 ⚛️ 🉑 ☢️ ☣️ 📴 📳 🆚 💮 🉐 🈴 🈵 🅰️ 🅱️ 🆎 🆑 🅾️ 🆘 ❌ ⭕ 🛑 ⛔ 📛 🚫 💯 💢 ♨️ 🚷 🚯 🚳 🚱 🔞 ❗ ❕ ❓ ❔ ‼️ ⁉️ 🔅 🔆 ⚠️ ♻️ ✅ ❇️ ✳️ ❎ 🌐 💠 ⓜ️ 🌀 💤 🏧 ♿ 🅿️ 🚹 🚺 🚼 ⚧️ 🔴 🟠 🟡 🟢 🔵 🟣 ⚫ ⚪ 🟤 🔶 🔷 🔸 🔹 🔺 🔻 ▶️ ⏸️ ⏹️ ⏺️ ⏭️ ⏮️ ⏩ ⏪ 🔀 🔁 🔂 🔼 🔽 ➕ ➖ ➗ ✖️ ♾️ ™️ ©️ ®️ 〰️ ➰ ➿ ✔️ ☑️ 🔘 ⬆️ ⬇️ ⬅️ ➡️ ↗️ ↘️ ↙️ ↖️ ↕️ ↔️ ↩️ ↪️ 🔙 🔚 🔛 🔜 🔝".split(" "),
    flags: FLAG_CODES.map(function (c) {
      return String.fromCodePoint(127462 + c.charCodeAt(0) - 65, 127462 + c.charCodeAt(1) - 65);
    }).concat(["🏁", "🚩", "🎌", "🏴", "🏳️", "🏳️‍🌈"])
  };
  var TONES = ["#f7c948", "#f7dece", "#e0bb95", "#bf8f68", "#9b643d", "#594539"];
  var MODS = [0, 127995, 127996, 127997, 127998, 127999];
  var KEY = "tsymRecent";
  var tone = 0;
  var cat = "smileys";
  var recent = [];
  var ta = document.getElementById("tsText");
  var countEl = document.getElementById("tsCount");
  var gridEl = document.getElementById("tsGrid");
  var tabsEl = document.getElementById("tsTabs");
  var toneEl = document.getElementById("tsTone");
  var titleEl = document.getElementById("tsTitle");
  var copyBtn = document.getElementById("tsCopy");
  var postBtn = document.getElementById("tsPost");
  var clearBtn = document.getElementById("tsClear");
  try {
    recent = JSON.parse(localStorage.getItem(KEY) || "[]");
    if (!Array.isArray(recent)) { recent = []; }
  } catch (err) { recent = []; }
  function saveRecent() {
    try { localStorage.setItem(KEY, JSON.stringify(recent)); } catch (err) { }
  }
  function withTone(e) {
    if (tone > 0 && TONABLE[e]) {
      return e + String.fromCodePoint(MODS[tone]);
    }
    return e;
  }
  function weight(s) {
    var segs = null;
    var pict = null;
    var total = 0;
    try {
      if (window.Intl && Intl.Segmenter) {
        segs = Array.from(new Intl.Segmenter().segment(s), function (x) { return x.segment; });
      }
    } catch (err) { segs = null; }
    if (!segs) { segs = Array.from(s); }
    try { pict = new RegExp("\\p{Extended_Pictographic}|\\p{Regional_Indicator}", "u"); } catch (err) { pict = null; }
    segs.forEach(function (g) {
      if (pict && pict.test(g)) {
        total += 2;
        return;
      }
      Array.from(g).forEach(function (ch) {
        var cp = ch.codePointAt(0);
        var light = (4351 >= cp) || (cp >= 8192 && 8205 >= cp) || (cp >= 8208 && 8223 >= cp) || (cp >= 8242 && 8247 >= cp);
        total += light ? 1 : 2;
      });
    });
    return total;
  }
  function updateCount() {
    var left = 280 - weight(ta.value);
    countEl.textContent = String(left);
    if (left > 0 || left === 0) {
      countEl.classList.remove("tsym-over");
    } else {
      countEl.classList.add("tsym-over");
    }
  }
  function copyText(text, done) {
    function fallback() {
      var tmp = document.createElement("textarea");
      tmp.value = text;
      tmp.setAttribute("readonly", "");
      tmp.style.position = "fixed";
      tmp.style.opacity = "0";
      document.body.appendChild(tmp);
      tmp.select();
      var ok = false;
      try { ok = document.execCommand("copy"); } catch (err) { ok = false; }
      document.body.removeChild(tmp);
      done(ok);
    }
    try {
      if (navigator.clipboard && navigator.clipboard.writeText) {
        navigator.clipboard.writeText(text).then(function () { done(true); }, fallback);
        return;
      }
    } catch (err) { }
    fallback();
  }
  function flash(btn, label) {
    var old = btn.getAttribute("data-label") || btn.textContent;
    btn.setAttribute("data-label", old);
    btn.textContent = label;
    setTimeout(function () { btn.textContent = old; }, 1200);
  }
  function addEmoji(e) {
    var v = ta.value;
    var s = typeof ta.selectionStart === "number" ? ta.selectionStart : v.length;
    var t = typeof ta.selectionEnd === "number" ? ta.selectionEnd : v.length;
    ta.value = v.slice(0, s) + e + v.slice(t);
    var pos = s + e.length;
    try { ta.setSelectionRange(pos, pos); } catch (err) { }
    recent = [e].concat(recent.filter(function (x) { return x !== e; })).slice(0, 36);
    saveRecent();
    updateCount();
    copyText(ta.value, function (ok) { flash(copyBtn, ok ? "คัดลอกแล้ว ✓" : "คัดลอก"); });
  }
  function renderGrid() {
    var list = cat === "recent" ? recent : DATA[cat];
    var info = CATS.filter(function (c) { return c.id === cat; })[0];
    titleEl.textContent = info.name;
    gridEl.textContent = "";
    if (!list || list.length === 0) {
      var empty = document.createElement("div");
      empty.className = "tsym-empty";
      empty.textContent = "ยังไม่มีไอคอนที่ใช้ล่าสุด เมื่อคุณคลิกไอคอน ระบบจะเก็บไว้ที่นี่โดยอัตโนมัติ";
      gridEl.appendChild(empty);
      return;
    }
    list.forEach(function (e) {
      var shown = cat === "recent" ? e : withTone(e);
      var b = document.createElement("button");
      b.type = "button";
      b.textContent = shown;
      b.setAttribute("aria-label", shown);
      b.addEventListener("click", function () { addEmoji(shown); });
      gridEl.appendChild(b);
    });
  }
  function renderTabs() {
    tabsEl.textContent = "";
    CATS.forEach(function (c) {
      var b = document.createElement("button");
      b.type = "button";
      b.textContent = c.icon;
      b.title = c.name;
      b.setAttribute("aria-label", c.name);
      if (c.id === cat) { b.className = "tsym-on"; }
      b.addEventListener("click", function () {
        cat = c.id;
        renderTabs();
        renderGrid();
      });
      tabsEl.appendChild(b);
    });
  }
  function renderTone() {
    toneEl.textContent = "";
    TONES.forEach(function (color, i) {
      var b = document.createElement("button");
      b.type = "button";
      b.style.background = color;
      b.title = i === 0 ? "สีเหลืองมาตรฐาน" : "โทนสีผิว " + i;
      b.setAttribute("aria-label", b.title);
      if (i === tone) { b.className = "tsym-on"; }
      b.addEventListener("click", function () {
        tone = i;
        renderTone();
        renderGrid();
      });
      toneEl.appendChild(b);
    });
  }
  ta.addEventListener("input", updateCount);
  copyBtn.addEventListener("click", function () {
    copyText(ta.value, function (ok) { flash(copyBtn, ok ? "คัดลอกแล้ว ✓" : "คัดลอกไม่สำเร็จ"); });
  });
  postBtn.addEventListener("click", function () {
    window.open("https://x.com/intent/post?text=" + encodeURIComponent(ta.value), "_blank", "noopener");
  });
  clearBtn.addEventListener("click", function () {
    ta.value = "";
    recent = [];
    saveRecent();
    updateCount();
    renderGrid();
  });
  renderTone();
  renderTabs();
  renderGrid();
  updateCount();
})();
</script>

## วิธีใช้งานเครื่องมือสัญลักษณ์ X (Twitter)

1. **พิมพ์ข้อความ (ถ้าต้องการ)** ในกล่องข้อความด้านบน หรือปล่อยว่างไว้แล้วเลือกอีโมจิอย่างเดียวก็ได้
2. **เลือกหมวดหมู่** จากแถบไอคอนใต้กล่องข้อความ เช่น หน้ายิ้มและผู้คน สัตว์และธรรมชาติ อาหาร หรือธง
3. **คลิกที่อีโมจิที่ต้องการ** ระบบจะเพิ่มอีโมจิลงในกล่องข้อความตรงตำแหน่งเคอร์เซอร์ และคัดลอกข้อความทั้งหมดไปยังคลิปบอร์ดให้อัตโนมัติ
4. **ดูตัวนับ** ที่แสดงจำนวนตัวอักษรคงเหลือจากทั้งหมด 280 ตัวอักษร หากตัวเลขเป็นสีแดงแสดงว่าข้อความยาวเกินกำหนด
5. **กดปุ่ม "คัดลอก"** เพื่อคัดลอกข้อความอีกครั้ง แล้วนำไปวางในช่องเขียนโพสต์บน X (Twitter) หรือกดปุ่ม **"Tweet"** เพื่อเปิดหน้าโพสต์พร้อมข้อความที่เตรียมไว้
6. **เลือกโทนสีผิว (ถ้าต้องการ)** ก่อนคลิก สำหรับอีโมจิท่าทางมือและรูปคน

เครื่องมือนี้ใช้งานได้ทั้งบนสมาร์ทโฟนและคอมพิวเตอร์ ไม่ต้องติดตั้งแอปหรือสมัครสมาชิก หากเห็นเป็นช่องสี่เหลี่ยมว่างในบางอุปกรณ์ ไม่ต้องกังวล เพราะเมื่อโพสต์ X จะแสดงเป็นอีโมจิสีสันสวยงามให้ผู้ติดตามเห็นตามปกติ

## คำอธิบายศัพท์และส่วนประกอบของเครื่องมือ

- **สัญลักษณ์ X (Twitter):** อักขระพิเศษและอีโมจิที่นำไปวางในโพสต์เพื่อเพิ่มอารมณ์ ตกแต่งข้อความ หรือเน้นจุดสำคัญ
- **อีโมจิ (Emoji):** ภาพสัญลักษณ์ขนาดเล็กที่ใช้แทนอารมณ์ วัตถุ หรือสิ่งต่าง ๆ รองรับมาตรฐาน Unicode จึงใช้ได้ข้ามอุปกรณ์
- **ตัวนับ 280:** จำนวนตัวอักษรที่เหลือสำหรับโพสต์แบบปกติ โดยอีโมจิ 1 ตัวนับเป็น 2 ตัวอักษร และตัวอักษรภาษาไทยแต่ละตัวนับเป็น 2 ตัวอักษรตามกติกาการนับของ X
- **คัดลอก:** คัดลอกข้อความทั้งหมดในกล่องไปยังคลิปบอร์ดเพื่อนำไปวางที่อื่น
- **Tweet:** เปิดหน้าเขียนโพสต์ของ X พร้อมข้อความที่คุณเตรียมไว้ในกล่อง
- **ลบข้อมูลทั้งหมด:** ล้างข้อความในกล่องและประวัติอีโมจิที่ใช้ล่าสุดในเบราว์เซอร์ของคุณ
- **ที่ใช้ล่าสุด:** รายการอีโมจิที่คุณคลิกล่าสุด เก็บไว้ในเบราว์เซอร์ของคุณเท่านั้น เพื่อให้เลือกซ้ำได้เร็วขึ้น
- **โทนสีผิว:** ตัวเลือก 6 สี สำหรับปรับสีผิวของอีโมจิท่าทางมือและรูปคน
- **หน้ายิ้มและผู้คน:** อีโมจิใบหน้า อารมณ์ หัวใจ และท่าทางมือ เช่น 😀 ❤️ 👍
- **สัตว์และธรรมชาติ:** สัตว์ ต้นไม้ ดอกไม้ และสภาพอากาศ เช่น 🐶 🌸 🌈
- **อาหารและเครื่องดื่ม:** ผลไม้ อาหาร ขนม และเครื่องดื่ม เช่น 🍜 🍰 ☕
- **กิจกรรม:** กีฬา เกม ดนตรี และรางวัล เช่น ⚽ 🎮 🏆
- **การเดินทางและสถานที่:** ยานพาหนะ อาคาร และสถานที่ท่องเที่ยว เช่น ✈️ 🏖️ 🏠
- **สิ่งของ:** ของใช้ในชีวิตประจำวัน อุปกรณ์อิเล็กทรอนิกส์ เงิน และเครื่องเขียน เช่น 📱 💡 🎁
- **สัญลักษณ์:** เครื่องหมาย ลูกศร หัวใจหลายสี และป้ายต่าง ๆ เช่น ✅ ⚠️ 🔝
- **ธง:** ธงชาติของประเทศต่าง ๆ และธงทั่วไป เช่น 🇹🇭 🇮🇩 🏁
- **คลิปบอร์ด:** พื้นที่เก็บข้อมูลชั่วคราวของอุปกรณ์ที่ใช้พักข้อความก่อนนำไปวาง

## คำถามที่พบบ่อย

**ทำไมอีโมจิบางตัวแสดงเป็นสี่เหลี่ยมว่าง?**
อุปกรณ์หรือระบบปฏิบัติการบางเวอร์ชันยังไม่รองรับอีโมจิใหม่ ๆ แต่เมื่อโพสต์บน X อีโมจิจะแสดงผลได้ตามปกติ

**ธงชาติแสดงเป็นตัวอักษรสองตัวบน Windows?**
Windows ไม่แสดงอีโมจิธงเป็นรูปภาพในบางโปรแกรม แต่เมื่อวางลงบน X ผู้ติดตามจะเห็นเป็นธงตามปกติ

**ใช้ฟรีหรือไม่ และต้องสมัครสมาชิกไหม?**
ใช้ฟรีทั้งหมดและไม่ต้องสมัครสมาชิก