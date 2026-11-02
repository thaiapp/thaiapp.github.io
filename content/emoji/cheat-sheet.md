---
title: Emoji Cheat Sheet ออนไลน์ ฟรี
h1: Emoji Cheat Sheet
description: คัดลอก Emoji Cheat Sheet พร้อมรหัสสั้นและคำอธิบายทุกตัวได้ในคลิกเดียว ค้นหาง่าย นำไปวางในแคปชั่น แชต หรือ GitHub ได้ทันที ไม่ต้องลงทะเบียน เปิดใช้ฟรีทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-02T09:00:00+07:00'
weight: 50
tool: true
topic: emoji
appCategory: UtilitiesApplication
keywords:
- Emoji Cheat Sheet
- Emoji Cheat Sheet ออนไลน์
- อิโมจิและสัญลักษณ์
---

Emoji Cheat Sheet คือโพยรายการ Emoji พร้อม **รหัสสั้น (shortcode)** เช่น `:heart_eyes:` ที่เว็บไซต์และแอปอย่าง GitHub, Slack, Trello, Basecamp และ Zendesk จะแปลงเป็นรูป Emoji ให้อัตโนมัติ คลิกที่ช่องใดก็ได้เพื่อคัดลอก

<style>
.ecs{margin:1.25rem 0}
.ecs-bar{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin-bottom:.75rem}
.ecs-bar input{flex:1 1 220px;min-width:0;padding:.6rem .8rem;font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:8px}
.ecs-mode{display:flex;border:1px solid rgba(128,128,128,.45);border-radius:8px;overflow:hidden}
.ecs button{font:inherit;color:inherit;cursor:pointer}
.ecs-mode button{padding:.55rem .8rem;background:transparent;border:0}
.ecs-mode button[aria-pressed="true"],.ecs-tabs button[aria-pressed="true"]{background:rgba(37,99,235,.18);font-weight:600}
.ecs-tabs{display:flex;flex-wrap:wrap;gap:.4rem;margin-bottom:.9rem}
.ecs-tabs button{padding:.4rem .8rem;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:999px}
.ecs-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:.6rem}
.ecs-i{display:flex;flex-direction:column;gap:.15rem;text-align:left;padding:.65rem .7rem;background:transparent;border:1px solid rgba(128,128,128,.35);border-radius:10px}
.ecs-i:hover{background:rgba(37,99,235,.1);border-color:rgba(37,99,235,.7)}
.ecs button:focus-visible,.ecs input:focus-visible{outline:2px solid #2563eb;outline-offset:2px}
.ecs-e{font-size:1.9rem;line-height:1.2}
.ecs-c{font-size:.82rem;font-family:ui-monospace,Menlo,Consolas,monospace;word-break:break-all}
.ecs-d{font-size:.82rem;opacity:.75}
.ecs-empty{grid-column:1/-1;opacity:.75;padding:.5rem 0}
.ecs-toast{min-height:1.5rem;margin:.75rem 0 0;font-size:.9rem}
</style>
<div class="ecs" id="ecs-app">
<div class="ecs-bar">
<input id="ecs-q" type="search" placeholder="ค้นหา เช่น heart, fire, หัวใจ" aria-label="ค้นหา Emoji">
<div class="ecs-mode" role="group" aria-label="เลือกสิ่งที่จะคัดลอก">
<button type="button" data-mode="code" aria-pressed="true">คัดลอกรหัสสั้น</button>
<button type="button" data-mode="emoji" aria-pressed="false">คัดลอก Emoji</button>
</div>
</div>
<div class="ecs-tabs" id="ecs-tabs" role="group" aria-label="หมวดหมู่ Emoji"></div>
<div class="ecs-grid" id="ecs-grid"></div>
<p class="ecs-toast" id="ecs-toast" role="status" aria-live="polite"></p>
</div>

<script>
(function () {
  var root = document.getElementById('ecs-app');
  if (!root) { return; }
  var DATA = [
    ['people', 'ผู้คนและท่าทาง', [
      '😄|smile|ยิ้มกว้าง ดีใจ',
      '😀|grinning|ยิ้มเห็นฟัน',
      '😁|grin|ยิ้มกว้างตาหยี',
      '😂|joy|หัวเราะจนน้ำตาไหล',
      '🤣|rofl|ขำกลิ้ง',
      '😊|blush|ยิ้มเขิน หน้าแดง',
      '😍|heart_eyes|ตาเป็นรูปหัวใจ หลงรัก',
      '😘|kissing_heart|ส่งจูบ',
      '😉|wink|ขยิบตา',
      '😎|sunglasses|เท่ ใส่แว่นกันแดด',
      '😜|stuck_out_tongue_winking_eye|แลบลิ้นขยิบตา ขี้เล่น',
      '😅|sweat_smile|ยิ้มเหงื่อแตก โล่งอก',
      '😭|sob|ร้องไห้โฮ',
      '😢|cry|น้ำตาไหล เศร้า',
      '😡|rage|โกรธจัด',
      '😠|angry|โกรธ หงุดหงิด',
      '😱|scream|ตกใจกรีดร้อง',
      '😴|sleeping|หลับ ง่วง',
      '🤔|thinking|กำลังคิด สงสัย',
      '🙄|roll_eyes|กลอกตา เอือมระอา',
      '😷|mask|ใส่หน้ากากอนามัย',
      '🤗|hugs|กอด',
      '😇|innocent|ยิ้มมีวงแหวนเหนือหัว ใสซื่อ',
      '😈|smiling_imp|ยิ้มเจ้าเล่ห์ ปีศาจน้อย',
      '💀|skull|กะโหลก ใช้แทนขำจนตาย',
      '👻|ghost|ผี',
      '💩|poop|กองอุจจาระ',
      '👍|+1|ยกนิ้วโป้ง เห็นด้วย',
      '👎|-1|นิ้วโป้งลง ไม่เห็นด้วย',
      '👌|ok_hand|โอเค ตกลง',
      '✌️|v|ชูสองนิ้ว สันติภาพ ชัยชนะ',
      '🙏|pray|พนมมือ ขอบคุณ ขอพร',
      '👏|clap|ปรบมือ',
      '🙌|raised_hands|ชูสองมือ ฉลอง',
      '👋|wave|โบกมือ ทักทาย',
      '✊|fist|กำหมัด',
      '💪|muscle|กล้ามเนื้อ แข็งแรง สู้ ๆ',
      '🤝|handshake|จับมือ ตกลงร่วมกัน',
      '👀|eyes|ดวงตา มองดู',
      '👑|crown|มงกุฎ ราชา ราชินี',
      '❤️|heart|หัวใจสีแดง ความรัก',
      '💔|broken_heart|อกหัก',
      '💕|two_hearts|หัวใจสองดวง',
      '💖|sparkling_heart|หัวใจระยิบระยับ',
      '💙|blue_heart|หัวใจสีฟ้า',
      '💚|green_heart|หัวใจสีเขียว',
      '💜|purple_heart|หัวใจสีม่วง',
      '🖤|black_heart|หัวใจสีดำ',
      '💯|100|เต็มร้อย ยอดเยี่ยม',
      '💥|boom|ระเบิด ชนกัน',
      '🔥|fire|ไฟ ร้อนแรง เจ๋งมาก',
      '✨|sparkles|ประกายระยิบระยับ',
      '⭐|star|ดาวสีเหลือง',
      '💤|zzz|หลับ ง่วงนอน',
      '💦|sweat_drops|หยดน้ำ เหงื่อ'
    ]],
    ['nature', 'ธรรมชาติและสัตว์', [
      '🐶|dog|หน้าสุนัข',
      '🐱|cat|หน้าแมว',
      '🐭|mouse|หน้าหนู',
      '🐰|rabbit|หน้ากระต่าย',
      '🦊|fox_face|หน้าจิ้งจอก',
      '🐻|bear|หน้าหมี',
      '🐼|panda_face|หน้าแพนด้า',
      '🐯|tiger|หน้าเสือ',
      '🐷|pig|หน้าหมู',
      '🐸|frog|หน้ากบ',
      '🐵|monkey_face|หน้าลิง',
      '🙈|see_no_evil|ลิงปิดตา ไม่ขอมอง',
      '🙉|hear_no_evil|ลิงปิดหู ไม่ขอฟัง',
      '🙊|speak_no_evil|ลิงปิดปาก ไม่ขอพูด',
      '🐔|chicken|ไก่',
      '🐧|penguin|เพนกวิน',
      '🐢|turtle|เต่า',
      '🐍|snake|งู',
      '🐝|bee|ผึ้ง',
      '🐙|octopus|ปลาหมึกยักษ์',
      '🐠|tropical_fish|ปลาเขตร้อน',
      '🐬|dolphin|โลมา',
      '🐳|whale|วาฬพ่นน้ำ',
      '🐘|elephant|ช้าง',
      '🌸|cherry_blossom|ดอกซากุระ',
      '🌹|rose|ดอกกุหลาบ',
      '🌻|sunflower|ดอกทานตะวัน',
      '🌷|tulip|ดอกทิวลิป',
      '🍀|four_leaf_clover|โคลเวอร์สี่แฉก โชคดี',
      '🌴|palm_tree|ต้นปาล์ม',
      '🌵|cactus|กระบองเพชร',
      '🍄|mushroom|เห็ด',
      '🌍|earth_africa|โลก ฝั่งยุโรปและแอฟริกา',
      '🌕|full_moon|พระจันทร์เต็มดวง',
      '🌙|crescent_moon|พระจันทร์เสี้ยว',
      '☀️|sunny|ดวงอาทิตย์ อากาศแจ่มใส',
      '⛅|partly_sunny|แดดมีเมฆบางส่วน',
      '☁️|cloud|เมฆ',
      '☔|umbrella|ร่มกับสายฝน',
      '⚡|zap|สายฟ้า ไฟฟ้า',
      '❄️|snowflake|เกล็ดหิมะ',
      '🌈|rainbow|สายรุ้ง',
      '🌊|ocean|คลื่นทะเล'
    ]],
    ['objects', 'ของใช้ อาหาร และกิจกรรม', [
      '🎉|tada|ป๊อปเปอร์ ฉลอง ยินดีด้วย',
      '🎂|birthday|เค้กวันเกิด',
      '🎁|gift|กล่องของขวัญ',
      '🎈|balloon|ลูกโป่ง',
      '🎄|christmas_tree|ต้นคริสต์มาส',
      '🎃|jack_o_lantern|ฟักทองฮาโลวีน',
      '📷|camera|กล้องถ่ายรูป',
      '💻|computer|แล็ปท็อป',
      '📱|iphone|โทรศัพท์มือถือ',
      '☎️|phone|โทรศัพท์บ้าน',
      '📺|tv|โทรทัศน์',
      '🔒|lock|แม่กุญแจล็อก',
      '🔑|key|กุญแจ',
      '🔔|bell|กระดิ่งแจ้งเตือน',
      '🔍|mag|แว่นขยาย ค้นหา',
      '💡|bulb|หลอดไฟ ไอเดีย',
      '🔋|battery|แบตเตอรี่',
      '🔧|wrench|ประแจ ซ่อมแซม',
      '🔨|hammer|ค้อน',
      '💣|bomb|ระเบิด',
      '💊|pill|ยาเม็ด',
      '💰|moneybag|ถุงเงิน',
      '💵|dollar|ธนบัตรดอลลาร์',
      '💳|credit_card|บัตรเครดิต',
      '📧|email|อีเมล',
      '📦|package|กล่องพัสดุ',
      '📝|memo|จดบันทึก',
      '📅|date|ปฏิทิน วันที่',
      '📌|pushpin|หมุดปักกระดาษ',
      '📎|paperclip|คลิปหนีบกระดาษ แนบไฟล์',
      '📚|books|กองหนังสือ',
      '🎵|musical_note|โน้ตดนตรี',
      '🎤|microphone|ไมโครโฟน',
      '🎧|headphones|หูฟัง',
      '🎸|guitar|กีตาร์',
      '🎮|video_game|จอยเกม วิดีโอเกม',
      '⚽|soccer|ลูกฟุตบอล',
      '🏀|basketball|ลูกบาสเกตบอล',
      '🏆|trophy|ถ้วยรางวัล',
      '☕|coffee|กาแฟร้อน',
      '🍺|beer|เบียร์',
      '🍕|pizza|พิซซ่า',
      '🍔|hamburger|แฮมเบอร์เกอร์',
      '🍟|fries|เฟรนช์ฟรายส์',
      '🍜|ramen|ราเมน ก๋วยเตี๋ยว',
      '🍣|sushi|ซูชิ',
      '🍰|cake|เค้กชิ้น',
      '🍦|icecream|ไอศกรีมซอฟต์',
      '🍎|apple|แอปเปิลแดง',
      '🍌|banana|กล้วย',
      '🍓|strawberry|สตรอว์เบอร์รี',
      '🍉|watermelon|แตงโม'
    ]],
    ['places', 'สถานที่และการเดินทาง', [
      '🏠|house|บ้าน',
      '🏢|office|ตึกสำนักงาน',
      '🏫|school|โรงเรียน',
      '🏥|hospital|โรงพยาบาล',
      '🏦|bank|ธนาคาร',
      '🏨|hotel|โรงแรม',
      '⛪|church|โบสถ์',
      '🏰|european_castle|ปราสาทยุโรป',
      '🗽|statue_of_liberty|เทพีเสรีภาพ',
      '🗼|tokyo_tower|โตเกียวทาวเวอร์',
      '🗻|mount_fuji|ภูเขาไฟฟูจิ',
      '🚗|car|รถยนต์',
      '🚕|taxi|แท็กซี่',
      '🚌|bus|รถบัส',
      '🚓|police_car|รถตำรวจ',
      '🚑|ambulance|รถพยาบาล',
      '🚒|fire_engine|รถดับเพลิง',
      '🚲|bike|จักรยาน',
      '🚄|bullettrain_front|รถไฟความเร็วสูง',
      '✈️|airplane|เครื่องบิน',
      '🚀|rocket|จรวด เริ่มต้นสู่ความสำเร็จ',
      '🚁|helicopter|เฮลิคอปเตอร์',
      '⛵|sailboat|เรือใบ',
      '🚢|ship|เรือเดินสมุทร',
      '⚓|anchor|สมอเรือ',
      '⛽|fuelpump|ปั๊มน้ำมัน',
      '🚦|vertical_traffic_light|สัญญาณไฟจราจร',
      '🚧|construction|ป้ายกำลังก่อสร้าง',
      '🎡|ferris_wheel|ชิงช้าสวรรค์',
      '🎢|roller_coaster|รถไฟเหาะ'
    ]],
    ['symbols', 'สัญลักษณ์', [
      '✅|white_check_mark|เครื่องหมายถูกในกรอบเขียว เสร็จแล้ว',
      '✔️|heavy_check_mark|เครื่องหมายถูก',
      '❌|x|กากบาทสีแดง ไม่ถูกต้อง',
      '❎|negative_squared_cross_mark|กากบาทในกรอบเขียว',
      '⚠️|warning|เตือน ระวัง',
      '🚫|no_entry_sign|ห้าม ต้องห้าม',
      '⛔|no_entry|ห้ามเข้า',
      '❓|question|เครื่องหมายคำถาม',
      '❗|exclamation|เครื่องหมายอัศเจรีย์',
      '‼️|bangbang|อัศเจรีย์คู่ เน้นย้ำ',
      '➕|heavy_plus_sign|เครื่องหมายบวก',
      '➖|heavy_minus_sign|เครื่องหมายลบ',
      '➡️|arrow_right|ลูกศรชี้ขวา',
      '⬅️|arrow_left|ลูกศรชี้ซ้าย',
      '⬆️|arrow_up|ลูกศรชี้ขึ้น',
      '⬇️|arrow_down|ลูกศรชี้ลง',
      '🔄|arrows_counterclockwise|ลูกศรวนซ้าย รีเฟรช',
      '🔙|back|ปุ่มย้อนกลับ',
      '🔝|top|ปุ่มบนสุด',
      '🆗|ok|ปุ่ม OK',
      '🆕|new|ปุ่ม NEW ของใหม่',
      '🆓|free|ปุ่ม FREE ฟรี',
      '🆘|sos|ขอความช่วยเหลือ SOS',
      '♻️|recycle|สัญลักษณ์รีไซเคิล',
      '©️|copyright|เครื่องหมายลิขสิทธิ์',
      '®️|registered|เครื่องหมายจดทะเบียน',
      '™️|tm|เครื่องหมายการค้า',
      '1️⃣|one|ปุ่มเลข 1',
      '2️⃣|two|ปุ่มเลข 2',
      '3️⃣|three|ปุ่มเลข 3',
      '#️⃣|hash|ปุ่มสัญลักษณ์ #',
      '🔴|red_circle|วงกลมสีแดง',
      '🔵|large_blue_circle|วงกลมสีน้ำเงิน',
      '⚫|black_circle|วงกลมสีดำ',
      '⚪|white_circle|วงกลมสีขาว',
      '💲|heavy_dollar_sign|เครื่องหมายดอลลาร์',
      '📶|signal_strength|ความแรงสัญญาณ',
      '🔞|underage|ห้ามผู้ที่อายุต่ำกว่า 18 ปี'
    ]]
  ];
  var CATS = [['recent', 'ที่ใช้ล่าสุด']];
  var ALL = [];
  var MAP = {};
  var BYCAT = {};
  DATA.forEach(function (c) {
    CATS.push([c[0], c[1]]);
    BYCAT[c[0]] = [];
    c[2].forEach(function (row) {
      var p = row.split('|');
      var it = { e: p[0], c: p[1], d: p[2], k: (p[1] + ' ' + p[2]).toLowerCase() };
      ALL.push(it);
      MAP[it.c] = it;
      BYCAT[c[0]].push(it);
    });
  });
  var KEY = 'ecs-recent';
  var recent = [];
  try {
    var saved = JSON.parse(localStorage.getItem(KEY) || '[]');
    if (Array.isArray(saved)) { recent = saved; }
  } catch (err) { recent = []; }
  var cur = recent.length > 0 ? 'recent' : 'people';
  var mode = 'code';
  var q = document.getElementById('ecs-q');
  var tabs = document.getElementById('ecs-tabs');
  var grid = document.getElementById('ecs-grid');
  var toast = document.getElementById('ecs-toast');
  var timer = null;
  function say(msg) {
    toast.textContent = msg;
    clearTimeout(timer);
    timer = setTimeout(function () { toast.textContent = ''; }, 2500);
  }
  function fallbackCopy(text) {
    var ta = document.createElement('textarea');
    ta.value = text;
    ta.setAttribute('readonly', '');
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.select();
    var ok = false;
    try { ok = document.execCommand('copy'); } catch (err) { ok = false; }
    document.body.removeChild(ta);
    return ok;
  }
  function copyText(text) {
    if (navigator.clipboard && window.isSecureContext) {
      return navigator.clipboard.writeText(text).then(function () { return true; }, function () { return fallbackCopy(text); });
    }
    return Promise.resolve(fallbackCopy(text));
  }
  function remember(code) {
    recent = [code].concat(recent.filter(function (x) { return x !== code; })).slice(0, 24);
    try { localStorage.setItem(KEY, JSON.stringify(recent)); } catch (err) { /* ignore */ }
  }
  function onCopy(it) {
    var text = mode === 'code' ? ':' + it.c + ':' : it.e;
    copyText(text).then(function (ok) {
      if (ok) {
        remember(it.c);
        say('คัดลอกแล้ว ' + text);
        if (cur === 'recent' && !q.value) { drawTabs(); }
      } else {
        say('คัดลอกไม่สำเร็จ กรุณาลองอีกครั้ง');
      }
    });
  }
  function items() {
    var s = q.value.trim().toLowerCase().replace(/^:+|:+$/g, '');
    if (s) { return ALL.filter(function (it) { return it.k.indexOf(s) !== -1; }); }
    if (cur === 'recent') { return recent.map(function (c) { return MAP[c]; }).filter(Boolean); }
    return BYCAT[cur] || [];
  }
  function drawGrid() {
    grid.textContent = '';
    var list = items();
    if (list.length === 0) {
      var p = document.createElement('p');
      p.className = 'ecs-empty';
      p.textContent = q.value.trim() ? 'ไม่พบ Emoji ที่ตรงกับคำค้นหา ลองใช้คำภาษาอังกฤษของรหัสสั้น เช่น smile' : 'ยังไม่มีรายการที่ใช้ล่าสุด คลิก Emoji ที่ต้องการเพื่อคัดลอก ระบบจะเก็บไว้ที่นี่ให้อัตโนมัติ';
      grid.appendChild(p);
      return;
    }
    list.forEach(function (it) {
      var b = document.createElement('button');
      b.type = 'button';
      b.className = 'ecs-i';
      b.title = it.d;
      b.setAttribute('aria-label', it.e + ' ' + it.c + ' ' + it.d);
      var e = document.createElement('span');
      e.className = 'ecs-e';
      e.textContent = it.e;
      var c = document.createElement('span');
      c.className = 'ecs-c';
      c.textContent = ':' + it.c + ':';
      var d = document.createElement('span');
      d.className = 'ecs-d';
      d.textContent = it.d;
      b.appendChild(e);
      b.appendChild(c);
      b.appendChild(d);
      b.addEventListener('click', function () { onCopy(it); });
      grid.appendChild(b);
    });
  }
  function drawTabs() {
    tabs.textContent = '';
    CATS.forEach(function (c) {
      var b = document.createElement('button');
      b.type = 'button';
      b.textContent = c[1];
      b.setAttribute('aria-pressed', String(c[0] === cur && !q.value));
      b.addEventListener('click', function () {
        cur = c[0];
        q.value = '';
        drawTabs();
        drawGrid();
      });
      tabs.appendChild(b);
    });
  }
  q.addEventListener('input', function () { drawTabs(); drawGrid(); });
  var modeBtns = root.querySelectorAll('[data-mode]');
  Array.prototype.forEach.call(modeBtns, function (b) {
    b.addEventListener('click', function () {
      mode = b.getAttribute('data-mode');
      Array.prototype.forEach.call(modeBtns, function (x) {
        x.setAttribute('aria-pressed', String(x === b));
      });
    });
  });
  drawTabs();
  drawGrid();
})();
</script>

## วิธีใช้งาน Emoji Cheat Sheet

1. **เลือกสิ่งที่ต้องการคัดลอก** ด้านบนของเครื่องมือ มี 2 โหมด คือ "คัดลอกรหัสสั้น" (เช่น `:fire:`) และ "คัดลอก Emoji" (เช่น 🔥)
2. **เลือกหมวดหมู่** ได้แก่ ผู้คนและท่าทาง ธรรมชาติและสัตว์ ของใช้ อาหาร และกิจกรรม สถานที่และการเดินทาง และสัญลักษณ์ หรือพิมพ์คำค้นหาในช่องค้นหา เช่น `heart` หรือ `หัวใจ`
3. **อ่านคำอธิบายสั้น ๆ** ใต้รหัสสั้นของแต่ละ Emoji เพื่อดูว่าใช้สื่อความหมายอะไร
4. **คลิกที่ Emoji** เพื่อคัดลอกไปยังคลิปบอร์ด จะมีข้อความยืนยัน "คัดลอกแล้ว" ปรากฏใต้รายการ
5. **นำไปวาง** ในแคปชั่น แชต คอมเมนต์ หรือเอกสารที่ต้องการด้วยการกดวาง (Ctrl+V หรือ Cmd+V) ถ้าใช้รหัสสั้น แพลตฟอร์มที่รองรับ เช่น GitHub และ Slack จะแปลงเป็นรูป Emoji ให้เอง
6. **ใช้ซ้ำได้เร็วขึ้น** ที่แท็บ "ที่ใช้ล่าสุด" ระบบจะจดจำ Emoji ที่คุณคัดลอกล่าสุดไว้ในเบราว์เซอร์ของคุณเอง

## คำถามที่พบบ่อย

**รหัสสั้น (shortcode) คืออะไร**
คือชื่อเรียกของ Emoji ที่เขียนอยู่ระหว่างเครื่องหมายทวิภาค เช่น `:smile:` ช่วยให้พิมพ์ Emoji ได้โดยไม่ต้องใช้คีย์บอร์ด Emoji

**ทุกเว็บไซต์รองรับรหัสสั้นหรือไม่**
ไม่ทั้งหมด หากวางรหัสสั้นแล้วไม่กลายเป็นรูป ให้ใช้โหมด "คัดลอก Emoji" แทน

**ข้อมูลที่ใช้ล่าสุดถูกเก็บไว้ที่ไหน**
เก็บในเบราว์เซอร์ของคุณเท่านั้น ไม่มีการส่งขึ้นเซิร์ฟเวอร์