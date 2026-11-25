---
title: สัญลักษณ์ Facebook ออนไลน์ ฟรี
h1: สัญลักษณ์ Facebook
description: 'สัญลักษณ์ Facebook และอีโมจิสำหรับตกแต่งโพสต์ ไบโอ และคอมเมนต์ คัดลอกได้ในคลิกเดียว มีพรีวิว กรอบสำเร็จรูป ฟอนต์พิเศษ ใช้ฟรีบนเบราว์เซอร์ ไม่ต้องติดตั้งแอป'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-25T09:00:00+07:00'
weight: 158
tool: true
topic: social
appCategory: SocialNetworkingApplication
keywords:
- สัญลักษณ์ Facebook
- สัญลักษณ์ Facebook ออนไลน์
- โซเชียลมีเดีย
---

ค้นหา คัดลอก และจัดรูปแบบสัญลักษณ์ อีโมจิ และตัวอักษรพิเศษสำหรับ Facebook ได้ในหน้าเดียว ทั้งโพสต์ ไบโอ คอมเมนต์ และแชท เพียงคลิกที่สัญลักษณ์ ระบบจะแทรกลงในช่องข้อความและคัดลอกให้ทันที พร้อมดูตัวอย่างการแสดงผลก่อนนำไปวางจริง

<div class="fbs" id="fbs-app">
<noscript>เครื่องมือนี้ต้องเปิดใช้งาน JavaScript ในเบราว์เซอร์</noscript>
<div class="fbs-card">
<label class="fbs-h" for="fbs-ed">ข้อความของคุณ</label>
<textarea id="fbs-ed" rows="4" spellcheck="false" placeholder="พิมพ์ข้อความ แล้วคลิกสัญลักษณ์ด้านล่างเพื่อแทรกตรงตำแหน่งเคอร์เซอร์"></textarea>
<div class="fbs-row">
<button type="button" class="fbs-btn pri" id="fbs-copyall">คัดลอกทั้งหมด</button>
<button type="button" class="fbs-btn" id="fbs-undo">ย้อนกลับ</button>
<button type="button" class="fbs-btn" id="fbs-clear">ล้างข้อความ</button>
<span class="fbs-count" id="fbs-count"></span>
</div>
</div>
<div class="fbs-card">
<div class="fbs-h">ตัวอย่างบน Facebook</div>
<div class="fbs-row" id="fbs-ctxs"></div>
<div class="fbs-pv" id="fbs-pv" data-ctx="post">
<div class="fbs-av" aria-hidden="true"></div>
<div class="fbs-pvbody">
<div class="fbs-pvname">ชื่อของคุณ</div>
<div class="fbs-pvtext empty" id="fbs-pvtext"></div>
</div>
</div>
<p class="fbs-note" id="fbs-note"></p>
</div>
<div class="fbs-card">
<div class="fbs-h">กรอบสำเร็จรูป <span class="fbs-sub">ครอบข้อความด้วยลวดลาย</span></div>
<div class="fbs-row" id="fbs-wraps"></div>
<div class="fbs-h fbs-gap">ฟอนต์พิเศษ <span class="fbs-sub">เปลี่ยนเฉพาะ A-Z และ 0-9 ภาษาไทยไม่เปลี่ยน</span></div>
<div class="fbs-row" id="fbs-fonts"></div>
</div>
<div class="fbs-card">
<div class="fbs-h">คลังสัญลักษณ์</div>
<input type="search" id="fbs-q" class="fbs-q" autocomplete="off" aria-label="ค้นหาสัญลักษณ์" placeholder="ค้นหา เช่น หัวใจ ดาว ลูกศร heart star">
<div class="fbs-tabs" id="fbs-tabs"></div>
<div class="fbs-row">
<button type="button" class="fbs-btn" id="fbs-favmode" aria-pressed="false">โหมดบันทึกโปรด</button>
<label class="fbs-chk"><input type="checkbox" id="fbs-hide"> ซ่อนสัญลักษณ์ที่อุปกรณ์นี้อาจแสดงไม่ได้</label>
</div>
<p class="fbs-note" id="fbs-status"></p>
<div class="fbs-grid" id="fbs-grid"></div>
<div class="fbs-row fbs-gap"><button type="button" class="fbs-btn" id="fbs-reset">ล้างข้อมูลที่บันทึกไว้</button></div>
</div>
<div class="fbs-toast" id="fbs-toast" role="status" aria-live="polite"></div>
</div>

<style>
.fbs{--fb-line:rgba(128,128,128,.38);--fb-soft:rgba(128,128,128,.09);--fb-blue:#1877f2;margin:1.25rem 0;color:inherit;line-height:1.5}
.fbs *,.fbs *::before,.fbs *::after{box-sizing:border-box}
.fbs-card{border:1px solid var(--fb-line);border-radius:10px;padding:14px;margin:0 0 14px;background:var(--fb-soft)}
.fbs-h{display:block;font-weight:700;font-size:1rem;margin:0 0 8px}
.fbs-sub{font-weight:400;font-size:.85rem;opacity:.75;margin-left:6px}
.fbs-gap{margin-top:14px}
.fbs-row{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin-top:10px}
.fbs textarea,.fbs-q{display:block;width:100%;padding:10px 12px;border:1px solid var(--fb-line);border-radius:8px;font:inherit;font-size:1.05rem;color:inherit;background:transparent}
.fbs textarea{min-height:104px;resize:vertical}
.fbs textarea:focus,.fbs-q:focus,.fbs button:focus-visible{outline:2px solid var(--fb-blue);outline-offset:2px}
.fbs-btn,.fbs-tab{font:inherit;font-size:.9rem;padding:7px 13px;border:1px solid var(--fb-line);border-radius:8px;background:transparent;color:inherit;cursor:pointer}
.fbs-btn:hover,.fbs-tab:hover,.fbs-sym:hover{border-color:var(--fb-blue)}
.fbs-btn.pri,.fbs-btn[aria-pressed="true"],.fbs-tab[aria-pressed="true"]{background:var(--fb-blue);border-color:var(--fb-blue);color:#fff}
.fbs-count{margin-left:auto;font-size:.85rem;opacity:.8}
.fbs-count.over{color:#e53935;opacity:1;font-weight:700}
.fbs-pv{display:flex;gap:10px;align-items:flex-start;margin-top:10px;padding:12px;border:1px solid var(--fb-line);border-radius:10px}
.fbs-av{flex:none;width:40px;height:40px;border-radius:50%;background:var(--fb-blue)}
.fbs-pvbody{min-width:0;flex:1}
.fbs-pvname{font-weight:700;font-size:.95rem}
.fbs-pvtext{white-space:pre-wrap;overflow-wrap:anywhere;word-break:break-word}
.fbs-pvtext.empty{opacity:.5}
.fbs-pv[data-ctx="bio"]{flex-direction:column;align-items:center;text-align:center}
.fbs-pv[data-ctx="bio"] .fbs-av{width:72px;height:72px}
.fbs-pv[data-ctx="bio"] .fbs-pvbody{width:100%}
.fbs-pv[data-ctx="comment"] .fbs-pvbody{flex:0 1 auto;max-width:100%;padding:8px 12px;border-radius:16px;background:var(--fb-soft)}
.fbs-pv[data-ctx="name"] .fbs-av{width:64px;height:64px}
.fbs-pv[data-ctx="name"] .fbs-pvname{display:none}
.fbs-pv[data-ctx="name"] .fbs-pvtext{font-size:1.4rem;font-weight:700}
.fbs-note{margin:10px 0 0;font-size:.85rem;opacity:.8}
.fbs-note:empty{display:none}
.fbs-fbtn{display:flex;flex-direction:column;align-items:center;gap:2px;min-width:92px}
.fbs-fs{font-size:1.05rem}
.fbs-fn{font-size:.7rem;opacity:.75}
.fbs-q{margin-top:2px}
.fbs-tabs{display:flex;gap:6px;overflow-x:auto;padding:10px 0 4px}
.fbs-tab{flex:none;white-space:nowrap}
.fbs-chk{display:inline-flex;align-items:center;gap:6px;font-size:.9rem;cursor:pointer}
.fbs-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(46px,1fr));gap:6px;max-height:340px;overflow-y:auto;padding:2px}
.fbs-sym{position:relative;display:flex;align-items:center;justify-content:center;min-height:46px;padding:4px;font:inherit;font-size:1.5rem;line-height:1;border:1px solid var(--fb-line);border-radius:8px;background:transparent;color:inherit;cursor:pointer}
.fbs-sym.fbs-long{grid-column:1 / -1;font-size:1.05rem;white-space:nowrap;overflow:hidden}
.fbs-sym.fbs-maybe{opacity:.4;border-style:dashed}
.fbs-sym.fbs-isfav::after{content:"\2605";position:absolute;top:1px;right:4px;font-size:.65rem;color:#f5a623}
.fbs-grid.favmode .fbs-sym{border-color:#f5a623}
.fbs-empty{grid-column:1 / -1;margin:8px 0;opacity:.75}
.fbs-toast{position:fixed;left:50%;bottom:24px;z-index:9999;max-width:90%;padding:8px 18px;border-radius:999px;background:#222;color:#fff;font-size:.9rem;opacity:0;transform:translateX(-50%);pointer-events:none;transition:opacity .2s}
.fbs-toast.show{opacity:1}
@media (prefers-reduced-motion:reduce){.fbs-toast{transition:none}}
</style>

<script>
(function () {
  'use strict';
  var RAW = [
    ['smile', 'หน้ายิ้มและมือ', 0, [
      '😀|ยิ้มกว้าง|grinning smile happy',
      '😁|ยิ้มตาหยี|beaming grin',
      '😂|หัวเราะน้ำตาไหล|joy laugh tears lol',
      '🤣|ขำกลิ้ง|rofl rolling laughing',
      '😊|ยิ้มตาปิด|blush smile happy',
      '😇|นางฟ้า|angel halo innocent',
      '🙂|ยิ้มเล็กน้อย|slight smile',
      '😉|ขยิบตา|wink',
      '😍|ตาเป็นรูปหัวใจ|heart eyes love',
      '🥰|ยิ้มพร้อมหัวใจ|smiling hearts love',
      '😘|ส่งจูบ|kiss blow',
      '😋|อร่อย|yum delicious',
      '😎|แว่นดำ|cool sunglasses',
      '🤩|ตาเป็นดาว|star struck wow',
      '🥳|ปาร์ตี้|party celebrate',
      '🤔|กำลังคิด|thinking hmm',
      '😴|หลับ|sleeping zzz',
      '😭|ร้องไห้หนัก|crying sob',
      '🥺|ตาวิงวอน|pleading puppy eyes',
      '😡|โกรธ|angry mad',
      '😱|ตกใจ|scream shock',
      '🤗|กอด|hug',
      '🙏|พนมมือ|pray please thanks',
      '👍|ถูกใจ|thumbs up like',
      '👏|ปรบมือ|clap applause',
      '🙌|ชูสองมือ|raised hands celebrate',
      '💪|กล้ามแขน|muscle strong',
      '✌️|ชูสองนิ้ว|peace victory',
      '🤝|จับมือ|handshake deal',
      '👋|โบกมือ|wave hello bye'
    ]],
    ['heart', 'หัวใจ', 0, [
      '❤️|หัวใจสีแดง|red heart love',
      '🧡|หัวใจสีส้ม|orange heart',
      '💛|หัวใจสีเหลือง|yellow heart',
      '💚|หัวใจสีเขียว|green heart',
      '💙|หัวใจสีน้ำเงิน|blue heart',
      '💜|หัวใจสีม่วง|purple heart',
      '🖤|หัวใจสีดำ|black heart',
      '🤍|หัวใจสีขาว|white heart',
      '💖|หัวใจประกายระยิบ|sparkling heart',
      '💕|หัวใจสองดวง|two hearts',
      '💞|หัวใจหมุน|revolving hearts',
      '💘|หัวใจโดนลูกศร|cupid arrow heart',
      '💝|หัวใจผูกริบบิ้น|gift ribbon heart',
      '♡|หัวใจเส้นขอบ|heart outline',
      '♥|หัวใจทึบ|heart suit solid',
      '❥|หัวใจลายเขียน|rotated heart bullet',
      '❣|ตกใจรูปหัวใจ|heart exclamation',
      'ღ|หัวใจตัวอักษรจอร์เจีย|georgian heart'
    ]],
    ['star', 'ดาวและประกาย', 0, [
      '★|ดาวทึบ|black star',
      '☆|ดาวเส้นขอบ|white star outline',
      '✦|ดาวสี่แฉกทึบ|four pointed star',
      '✧|ดาวสี่แฉกเส้นขอบ|four pointed star outline',
      '✩|ดาวห้าแฉกเส้นขอบ|stress outlined star',
      '✪|ดาวในวงกลม|circled star',
      '✯|ดาวหมุน|pinwheel star',
      '⭐|ดาวสีเหลือง|star emoji',
      '🌟|ดาวเรืองแสง|glowing star',
      '✨|ประกายระยิบ|sparkles glitter',
      '💫|ดาวหมุนวน|dizzy star',
      '⚝|ดาวห้าแฉกวงนอก|outlined star',
      '✶|ดาวหกแฉก|six pointed star',
      '⋆|ดาวเล็ก|small star asterisk'
    ]],
    ['check', 'ถูกผิดและเตือน', 0, [
      '✔|เครื่องหมายถูกหนา|check mark heavy',
      '✓|เครื่องหมายถูก|check mark tick',
      '☑|ช่องติ๊กถูก|ballot box check',
      '✅|ติ๊กถูกพื้นเขียว|white check mark green',
      '✘|กากบาทลายเขียน|ballot x cross',
      '✗|กากบาท|ballot x',
      '✖|เครื่องหมายคูณหนา|heavy multiplication x',
      '❌|กากบาทแดง|cross mark red',
      '❎|กากบาทพื้นเขียว|cross mark button',
      '⚠|เครื่องหมายเตือน|warning',
      '❗|ตกใจสีแดง|exclamation red',
      '❓|คำถามสีแดง|question red',
      '‼|ตกใจคู่|double exclamation',
      '⁉|ตกใจและคำถาม|exclamation question'
    ]],
    ['arrow', 'ลูกศรและสามเหลี่ยม', 0, [
      '→|ลูกศรขวา|right arrow',
      '←|ลูกศรซ้าย|left arrow',
      '↑|ลูกศรขึ้น|up arrow',
      '↓|ลูกศรลง|down arrow',
      '↔|ลูกศรซ้ายขวา|left right arrow',
      '➜|ลูกศรขวาหนา|heavy right arrow',
      '➔|ลูกศรขวาเรียว|arrow right',
      '➤|หัวลูกศรขวา|arrowhead right',
      '➡️|ลูกศรขวาอีโมจิ|right arrow emoji',
      '⬅️|ลูกศรซ้ายอีโมจิ|left arrow emoji',
      '⬆️|ลูกศรขึ้นอีโมจิ|up arrow emoji',
      '⬇️|ลูกศรลงอีโมจิ|down arrow emoji',
      '↪|ลูกศรเลี้ยวขวา|hook arrow reply',
      '⇒|ลูกศรคู่ขวา|double arrow implies',
      '»|เครื่องหมายคำพูดคู่ขวา|double angle right',
      '▶|สามเหลี่ยมขวาทึบ|play triangle',
      '▷|สามเหลี่ยมขวาเส้นขอบ|triangle outline',
      '◀|สามเหลี่ยมซ้ายทึบ|triangle left',
      '▲|สามเหลี่ยมขึ้นทึบ|triangle up',
      '▼|สามเหลี่ยมลงทึบ|triangle down'
    ]],
    ['nature', 'ธรรมชาติและดนตรี', 0, [
      '♪|โน้ตเขบ็ตหนึ่งชั้น|music note',
      '♫|โน้ตเขบ็ตคู่|music notes beamed',
      '♬|โน้ตเขบ็ตสองชั้น|music notes sixteenth',
      '♩|โน้ตตัวดำ|quarter note',
      '☀|ดวงอาทิตย์|sun',
      '☁|เมฆ|cloud',
      '☂|ร่ม|umbrella rain',
      '❄|เกล็ดหิมะ|snowflake',
      '☽|พระจันทร์ครึ่งซีก|moon crescent',
      '☾|พระจันทร์เสี้ยว|moon crescent',
      '✿|ดอกไม้|flower',
      '❀|ดอกไม้กลีบกลม|flower',
      '❁|ดอกไม้แปดกลีบ|flower eight petal',
      '✾|ดอกไม้หกกลีบ|flower six petal',
      '☘|ใบแชมร็อก|shamrock clover',
      '🌸|ดอกซากุระ|cherry blossom',
      '🌹|กุหลาบ|rose',
      '🌻|ทานตะวัน|sunflower',
      '🌈|สายรุ้ง|rainbow',
      '🔥|ไฟ|fire hot',
      '🌊|คลื่นทะเล|wave ocean',
      '🦋|ผีเสื้อ|butterfly',
      '🐶|หน้าสุนัข|dog',
      '🐱|หน้าแมว|cat'
    ]],
    ['object', 'สิ่งของและกิจกรรม', 0, [
      '🎉|ป๊อปเปอร์ปาร์ตี้|party popper celebrate',
      '🎁|ของขวัญ|gift present',
      '🎂|เค้กวันเกิด|birthday cake',
      '☕|กาแฟ|coffee',
      '🍕|พิซซ่า|pizza',
      '🍜|ก๋วยเตี๋ยว|noodles ramen',
      '🍻|ชนแก้วเบียร์|beers cheers',
      '⚽|ฟุตบอล|football soccer',
      '🎮|จอยเกม|game controller',
      '🎧|หูฟัง|headphones music',
      '📷|กล้องถ่ายรูป|camera photo',
      '📱|โทรศัพท์มือถือ|phone mobile',
      '💻|โน้ตบุ๊ก|laptop computer',
      '✈|เครื่องบิน|airplane travel',
      '🚗|รถยนต์|car',
      '🏠|บ้าน|house home',
      '💯|เต็มร้อย|hundred perfect',
      '💡|หลอดไฟ|light bulb idea',
      '📌|หมุดปักกระดาน|pushpin pin',
      '📍|หมุดตำแหน่ง|location pin',
      '🔔|กระดิ่ง|bell notification',
      '🎯|เป้าหมาย|target bullseye',
      '💎|เพชร|diamond gem',
      '👑|มงกุฎ|crown',
      '⏰|นาฬิกาปลุก|alarm clock',
      '💰|ถุงเงิน|money bag'
    ]],
    ['flag', 'ธง', 0, [
      '🇹🇭|ธงชาติไทย|thailand flag',
      '🇮🇩|ธงชาติอินโดนีเซีย|indonesia flag',
      '🇲🇾|ธงชาติมาเลเซีย|malaysia flag',
      '🇸🇬|ธงชาติสิงคโปร์|singapore flag',
      '🇻🇳|ธงชาติเวียดนาม|vietnam flag',
      '🇵🇭|ธงชาติฟิลิปปินส์|philippines flag',
      '🇯🇵|ธงชาติญี่ปุ่น|japan flag',
      '🇰🇷|ธงชาติเกาหลีใต้|south korea flag',
      '🇨🇳|ธงชาติจีน|china flag',
      '🇺🇸|ธงชาติสหรัฐอเมริกา|usa flag',
      '🇬🇧|ธงชาติสหราชอาณาจักร|uk flag',
      '🇦🇺|ธงชาติออสเตรเลีย|australia flag'
    ]],
    ['general', 'สัญลักษณ์ทั่วไป', 0, [
      '©|ลิขสิทธิ์|copyright',
      '®|เครื่องหมายการค้าจดทะเบียน|registered trademark',
      '™|เครื่องหมายการค้า|trademark',
      '№|เลขที่|number sign',
      '§|เครื่องหมายมาตรา|section',
      '¶|เครื่องหมายย่อหน้า|paragraph pilcrow',
      '†|เครื่องหมายกริช|dagger',
      '•|จุดนำหน้า|bullet',
      '∞|อนันต์|infinity',
      '≈|ประมาณเท่ากับ|approximately',
      '≠|ไม่เท่ากับ|not equal',
      '±|บวกลบ|plus minus',
      '×|เครื่องหมายคูณ|multiply times',
      '÷|เครื่องหมายหาร|divide',
      '°|องศา|degree',
      '℃|องศาเซลเซียส|celsius',
      '♀|เพศหญิง|female',
      '♂|เพศชาย|male',
      '☎|โทรศัพท์|telephone',
      '✉|ซองจดหมาย|envelope mail',
      '✂|กรรไกร|scissors',
      '☯|หยินหยาง|yin yang',
      '☮|สัญลักษณ์สันติภาพ|peace',
      '☠|หัวกะโหลก|skull',
      '♻|รีไซเคิล|recycle',
      '⚡|ฟ้าผ่า|lightning',
      '♠|โพดำ|spade suit',
      '♣|ดอกจิก|club suit',
      '♦|ข้าวหลามตัด|diamond suit'
    ]],
    ['frame', 'วงเล็บและกรอบ', 1, [
      '【】|วงเล็บเหลี่ยมทึบ|black lenticular bracket',
      '〖〗|วงเล็บเหลี่ยมเส้นขอบ|white lenticular bracket',
      '『』|วงเล็บมุมคู่|white corner bracket',
      '「」|วงเล็บมุม|corner bracket',
      '《》|วงเล็บมุมแหลมคู่|double angle bracket',
      '〔〕|วงเล็บกระดองเต่า|tortoise shell bracket',
      '❮❯|วงเล็บมุมแหลมหนา|heavy angle quotation',
      '⟦⟧|วงเล็บเหลี่ยมคู่|double square bracket',
      '⟪⟫|วงเล็บมุมคู่ยาว|double long angle bracket',
      '（）|วงเล็บกลมเต็มความกว้าง|fullwidth parentheses',
      '❝❞|เครื่องหมายคำพูดหนา|heavy quotes',
      '“”|เครื่องหมายคำพูดโค้ง|curly quotes',
      '«»|เครื่องหมายคำพูดแบบฝรั่งเศส|guillemets',
      '꒰꒱|วงเล็บลายน่ารัก|kawaii bracket'
    ]],
    ['divider', 'เส้นคั่น', 0, [
      '━━━━━━━━━━|เส้นหนา|heavy line',
      '──────────|เส้นบาง|thin line',
      '═══════════|เส้นคู่|double line',
      '┈┈┈┈┈┈┈┈┈┈|เส้นประ|dotted line',
      '▬▬▬▬▬▬▬▬▬▬|แถบทึบ|bar',
      '﹏﹏﹏﹏﹏﹏|เส้นหยักต่ำ|wavy low line',
      '~~~~~~~~~~|เส้นหยัก|tilde wave',
      '• • • • • • •|จุดเรียงแถว|dots',
      '✦ ── ✦ ── ✦|ดาวคั่นเส้น|stars line',
      '❖ ━━━ ✦ ━━━ ❖|ลายคั่นหรู|fancy divider',
      '⊱ ────── ⊰|เส้นคั่นปลายโค้ง|curl divider',
      '⋆｡°✩°｡⋆|ประกายดาว|sparkle divider',
      '˚ʚ♡ɞ˚|ลายหัวใจน่ารัก|cute heart divider',
      '︵‿︵‿︵‿︵|คลื่นโค้ง|curve wave'
    ]]
  ];
  var WRAPS = [
    ['★ ', ' ★'], ['♡ ', ' ♡'], ['✿ ', ' ✿'], ['✦ ', ' ✦'], ['✨ ', ' ✨'], ['🔥 ', ' 🔥'],
    ['【 ', ' 】'], ['『 ', ' 』'], ['꒰ ', ' ꒱'], ['⊱ ', ' ⊰'], ['━ ', ' ━'], ['⋆｡°✩ ', ' ✩°｡⋆']
  ];
  var FONTS = [
    ['Bold', 0x1D400, 0x1D41A, 0x1D7CE],
    ['Bold Italic', 0x1D468, 0x1D482, 0],
    ['Sans', 0x1D5A0, 0x1D5BA, 0x1D7E2],
    ['Sans Bold', 0x1D5D4, 0x1D5EE, 0x1D7EC],
    ['Sans Italic', 0x1D608, 0x1D622, 0],
    ['Sans Bold Italic', 0x1D63C, 0x1D656, 0],
    ['Script', 0x1D4D0, 0x1D4EA, 0],
    ['Fraktur', 0x1D56C, 0x1D586, 0],
    ['Mono', 0x1D670, 0x1D68A, 0x1D7F6],
    ['Circle', 0x24B6, 0x24D0, 0]
  ];
  var CTX = {
    post: { label: 'โพสต์', limit: 63206, note: 'ตัวอย่างเป็นภาพจำลอง การแสดงผลจริงอาจต่างกันตามอุปกรณ์และเวอร์ชันของแอป' },
    bio: { label: 'ไบโอ', limit: 101, note: 'ไบโอบนโปรไฟล์ยาวได้ประมาณ 101 อักขระ ควรเลือกสัญลักษณ์ที่สั้นและอ่านง่าย' },
    comment: { label: 'คอมเมนต์', limit: 8000, note: 'ตัวอย่างเป็นภาพจำลอง การแสดงผลจริงอาจต่างกันตามอุปกรณ์และเวอร์ชันของแอป' },
    name: { label: 'ชื่อ', limit: 50, note: 'Facebook อาจไม่อนุญาตสัญลักษณ์พิเศษในชื่อโปรไฟล์ส่วนตัว ควรใช้กับไบโอ โพสต์ คอมเมนต์ หรือชื่อเพจแทน' }
  };
  var K_RECENT = 'fbs_recent';
  var K_FAV = 'fbs_fav';
  function init() {
    var app = document.getElementById('fbs-app');
    if (!app) { return; }
    function $(id) { return document.getElementById(id); }
    var ed = $('fbs-ed'), grid = $('fbs-grid'), tabsEl = $('fbs-tabs'), q = $('fbs-q');
    var countEl = $('fbs-count'), pv = $('fbs-pv'), pvText = $('fbs-pvtext'), noteEl = $('fbs-note');
    var statusEl = $('fbs-status'), favBtn = $('fbs-favmode'), hideBox = $('fbs-hide');
    var ctxBox = $('fbs-ctxs'), wrapBox = $('fbs-wraps'), fontBox = $('fbs-fonts');
    if (!(ed && grid && tabsEl && q && countEl && pv && pvText && noteEl && statusEl && favBtn && hideBox && ctxBox && wrapBox && fontBox)) { return; }
    function load(key) {
      try {
        var v = JSON.parse(localStorage.getItem(key) || '[]');
        return Array.isArray(v) ? v.filter(function (x) { return typeof x === 'string'; }) : [];
      } catch (e) { return []; }
    }
    function save(key, v) {
      try { localStorage.setItem(key, JSON.stringify(v)); } catch (e) { /* storage unavailable */ }
    }
    var recent = load(K_RECENT);
    var fav = load(K_FAV);
    var CATS = RAW.map(function (c) {
      return {
        id: c[0], label: c[1], pair: c[2] === 1,
        items: c[3].map(function (s) {
          var p = s.split('|');
          return { s: p[0], n: p[1] || '', k: (p[2] || '').toLowerCase(), pair: c[2] === 1 };
        })
      };
    });
    var INDEX = {};
    var BYID = {};
    CATS.forEach(function (c) {
      BYID[c.id] = c;
      c.items.forEach(function (it) { INDEX[it.s] = it; });
    });
    var TABS = [{ id: 'recent', label: 'ล่าสุด' }, { id: 'fav', label: 'โปรด' }].concat(CATS.map(function (c) {
      return { id: c.id, label: c.label };
    }));
    var active = 'smile';
    var favMode = false;
    var hideBroken = false;
    var brokenCount = 0;
    var BROKEN = {};
    var ctx = 'post';
    var hist = [];
    var last = '';
    var toastTimer = 0;
    function toast(msg) {
      var el = $('fbs-toast');
      if (!el) { return; }
      el.textContent = msg;
      el.className = 'fbs-toast show';
      clearTimeout(toastTimer);
      toastTimer = setTimeout(function () { el.className = 'fbs-toast'; }, 1800);
    }
    function copy(text, msg) {
      function done(ok) { toast(ok ? msg : 'คัดลอกไม่สำเร็จ กรุณาเลือกข้อความแล้วกด Ctrl+C'); }
      function fallback() {
        var ok = false;
        try {
          var t = document.createElement('textarea');
          t.value = text;
          t.setAttribute('readonly', '');
          t.style.position = 'fixed';
          t.style.top = '-1000px';
          t.style.opacity = '0';
          document.body.appendChild(t);
          t.select();
          t.setSelectionRange(0, text.length);
          ok = document.execCommand('copy');
          document.body.removeChild(t);
        } catch (e) { ok = false; }
        done(ok);
      }
      if (navigator.clipboard && navigator.clipboard.writeText) {
        navigator.clipboard.writeText(text).then(function () { done(true); }, fallback);
      } else {
        fallback();
      }
    }
    function pushHist(v) {
      hist.push(v);
      if (hist.length > 100) { hist.shift(); }
    }
    function update() {
      var t = ed.value;
      var n = Array.from(t).length;
      var c = CTX[ctx];
      countEl.textContent = n + ' / ' + c.limit + ' อักขระ';
      countEl.className = n > c.limit ? 'fbs-count over' : 'fbs-count';
      var shown = ctx === 'name' ? t.replace(/\s+/g, ' ').trim() : t;
      if (shown) {
        pvText.textContent = shown;
        pvText.className = 'fbs-pvtext';
      } else {
        pvText.textContent = 'ข้อความตัวอย่างจะแสดงที่นี่';
        pvText.className = 'fbs-pvtext empty';
      }
    }
    function setValue(v, pos) {
      pushHist(ed.value);
      ed.value = v;
      last = v;
      var p = typeof pos === 'number' ? pos : v.length;
      try { ed.setSelectionRange(p, p); } catch (e) { /* ignore */ }
      update();
    }
    function insert(text, inside) {
      var v = ed.value;
      var a = typeof ed.selectionStart === 'number' ? ed.selectionStart : v.length;
      var b = typeof ed.selectionEnd === 'number' ? ed.selectionEnd : a;
      setValue(v.slice(0, a) + text + v.slice(b), inside ? a + 1 : a + text.length);
    }
    function addRecent(s) {
      recent = [s].concat(recent.filter(function (x) { return x !== s; })).slice(0, 24);
      save(K_RECENT, recent);
    }
    function toggleFav(s) {
      var i = fav.indexOf(s);
      if (i === -1) {
        fav.push(s);
        toast('เพิ่ม ' + s + ' ในรายการโปรดแล้ว');
      } else {
        fav.splice(i, 1);
        toast('ลบ ' + s + ' ออกจากรายการโปรดแล้ว');
      }
      save(K_FAV, fav);
      render();
    }
    function onPick(it) {
      if (favMode) { toggleFav(it.s); return; }
      insert(it.s, it.pair);
      addRecent(it.s);
      copy(it.s, 'คัดลอก ' + it.s + ' แล้ว');
    }
    function toItem(s) { return INDEX[s] || null; }
    function currentItems() {
      var term = q.value.trim().toLowerCase();
      var list = [];
      if (term) {
        CATS.forEach(function (c) {
          c.items.forEach(function (it) {
            if (it.s.indexOf(term) !== -1 || it.n.toLowerCase().indexOf(term) !== -1 || it.k.indexOf(term) !== -1) { list.push(it); }
          });
        });
      } else if (active === 'recent') {
        list = recent.map(toItem).filter(Boolean);
      } else if (active === 'fav') {
        list = fav.map(toItem).filter(Boolean);
      } else {
        list = BYID[active].items;
      }
      if (hideBroken) {
        list = list.filter(function (it) { return !BROKEN[it.s]; });
      }
      return list;
    }
    function emptyMessage() {
      if (q.value.trim()) { return 'ไม่พบสัญลักษณ์ที่ตรงกับคำค้นหา ลองใช้คำอื่น หรือพิมพ์เป็นภาษาอังกฤษ'; }
      if (active === 'recent') { return 'ยังไม่มีรายการล่าสุด คลิกสัญลักษณ์ใดก็ได้เพื่อเริ่มบันทึก'; }
      if (active === 'fav') { return 'ยังไม่มีรายการโปรด เปิดโหมดบันทึกโปรด แล้วคลิกสัญลักษณ์เพื่อเพิ่ม'; }
      return 'ไม่มีสัญลักษณ์ให้แสดงในหมวดนี้';
    }
    function setStatus() {
      if (favMode) {
        statusEl.textContent = 'โหมดบันทึกโปรดเปิดอยู่ คลิกสัญลักษณ์เพื่อเพิ่มหรือลบจากรายการโปรด';
      } else if (brokenCount > 0) {
        statusEl.textContent = 'อุปกรณ์นี้อาจแสดงสัญลักษณ์ ' + brokenCount + ' ตัวไม่ได้ (แสดงจางและขอบประ) ผู้อื่นอาจเห็นต่างกันตามอุปกรณ์';
      } else {
        statusEl.textContent = '';
      }
    }
    function render() {
      var list = currentItems();
      grid.textContent = '';
      grid.className = favMode ? 'fbs-grid favmode' : 'fbs-grid';
      if (!list.length) {
        var p = document.createElement('p');
        p.className = 'fbs-empty';
        p.textContent = emptyMessage();
        grid.appendChild(p);
        return;
      }
      var frag = document.createDocumentFragment();
      list.forEach(function (it) {
        var b = document.createElement('button');
        b.type = 'button';
        b.className = 'fbs-sym' + (it.s.length > 4 ? ' fbs-long' : '') + (BROKEN[it.s] ? ' fbs-maybe' : '') + (fav.indexOf(it.s) !== -1 ? ' fbs-isfav' : '');
        b.textContent = it.s;
        b.title = it.n;
        b.setAttribute('aria-label', it.n || it.s);
        b.addEventListener('click', function () { onPick(it); });
        frag.appendChild(b);
      });
      grid.appendChild(frag);
    }
    function renderTabs() {
      var searching = q.value.trim() !== '';
      tabsEl.textContent = '';
      TABS.forEach(function (t) {
        var b = document.createElement('button');
        b.type = 'button';
        b.className = 'fbs-tab';
        b.textContent = t.label;
        b.setAttribute('aria-pressed', String(!searching && t.id === active));
        b.addEventListener('click', function () {
          active = t.id;
          q.value = '';
          renderTabs();
          render();
        });
        tabsEl.appendChild(b);
      });
    }
    function setCtx(key) {
      ctx = key;
      pv.setAttribute('data-ctx', key);
      noteEl.textContent = CTX[key].note;
      Array.prototype.forEach.call(ctxBox.children, function (b) {
        b.setAttribute('aria-pressed', String(b.getAttribute('data-k') === key));
      });
      update();
    }
    Object.keys(CTX).forEach(function (key) {
      var b = document.createElement('button');
      b.type = 'button';
      b.className = 'fbs-btn';
      b.textContent = CTX[key].label;
      b.setAttribute('data-k', key);
      b.setAttribute('aria-pressed', 'false');
      b.addEventListener('click', function () { setCtx(key); });
      ctxBox.appendChild(b);
    });
    WRAPS.forEach(function (w) {
      var b = document.createElement('button');
      b.type = 'button';
      b.className = 'fbs-btn';
      b.textContent = w[0] + 'ข้อความ' + w[1];
      b.addEventListener('click', function () {
        setValue(w[0] + ed.value.trim() + w[1]);
        toast('ใส่กรอบแล้ว');
      });
      wrapBox.appendChild(b);
    });
    var REV = {};
    FONTS.forEach(function (st) {
      for (var i = 0; i !== 26; i++) {
        REV[String.fromCodePoint(st[1] + i)] = String.fromCharCode(65 + i);
        REV[String.fromCodePoint(st[2] + i)] = String.fromCharCode(97 + i);
      }
      if (st[3]) {
        for (var j = 0; j !== 10; j++) {
          REV[String.fromCodePoint(st[3] + j)] = String.fromCharCode(48 + j);
        }
      }
    });
    function toPlain(str) {
      return Array.from(str).map(function (ch) { return REV[ch] || ch; }).join('');
    }
    function styleText(str, st) {
      return Array.from(toPlain(str)).map(function (ch) {
        var c = ch.charCodeAt(0);
        if (c >= 65 && 90 >= c) { return String.fromCodePoint(st[1] + c - 65); }
        if (c >= 97 && 122 >= c) { return String.fromCodePoint(st[2] + c - 97); }
        if (c >= 48 && 57 >= c && st[3]) { return String.fromCodePoint(st[3] + c - 48); }
        return ch;
      }).join('');
    }
    function addFontButton(name, st) {
      var b = document.createElement('button');
      b.type = 'button';
      b.className = 'fbs-btn fbs-fbtn';
      var s1 = document.createElement('span');
      s1.className = 'fbs-fs';
      s1.textContent = st ? styleText('Abc 123', st) : 'Abc 123';
      var s2 = document.createElement('span');
      s2.className = 'fbs-fn';
      s2.textContent = name;
      b.appendChild(s1);
      b.appendChild(s2);
      b.addEventListener('click', function () {
        if (!ed.value.trim()) { toast('พิมพ์ข้อความภาษาอังกฤษหรือตัวเลขก่อน แล้วค่อยเลือกฟอนต์'); return; }
        setValue(st ? styleText(ed.value, st) : toPlain(ed.value));
      });
      fontBox.appendChild(b);
    }
    addFontButton('ปกติ', null);
    FONTS.forEach(function (st) { addFontButton(st[0], st); });
    ed.addEventListener('input', function () {
      pushHist(last);
      last = ed.value;
      update();
    });
    q.addEventListener('input', function () { renderTabs(); render(); });
    favBtn.addEventListener('click', function () {
      favMode = !favMode;
      favBtn.setAttribute('aria-pressed', String(favMode));
      setStatus();
      render();
    });
    hideBox.addEventListener('change', function () {
      hideBroken = hideBox.checked;
      render();
    });
    $('fbs-copyall').addEventListener('click', function () {
      if (!ed.value) { toast('ยังไม่มีข้อความให้คัดลอก'); return; }
      copy(ed.value, 'คัดลอกข้อความทั้งหมดแล้ว');
    });
    $('fbs-undo').addEventListener('click', function () {
      if (!hist.length) { toast('ไม่มีรายการให้ย้อนกลับ'); return; }
      var v = hist.pop();
      ed.value = v;
      last = v;
      update();
    });
    $('fbs-clear').addEventListener('click', function () {
      if (!ed.value) { return; }
      setValue('');
      toast('ล้างข้อความแล้ว กดย้อนกลับเพื่อกู้คืน');
    });
    $('fbs-reset').addEventListener('click', function () {
      recent = [];
      fav = [];
      save(K_RECENT, recent);
      save(K_FAV, fav);
      render();
      toast('ล้างข้อมูลที่บันทึกไว้แล้ว');
    });
    function schedule(fn) {
      if (window.requestIdleCallback) { window.requestIdleCallback(fn, { timeout: 800 }); } else { setTimeout(fn, 40); }
    }
    function detectBroken() {
      var cx, keys, pos = 0, n = 0, refs = {};
      try {
        var cv = document.createElement('canvas');
        cv.width = 28;
        cv.height = 28;
        cx = cv.getContext('2d', { willReadFrequently: true }) || cv.getContext('2d');
        if (!cx || !cx.getImageData) { return; }
        cx.font = '20px ' + (window.getComputedStyle(app).fontFamily || 'sans-serif');
        cx.textBaseline = 'middle';
        cx.fillStyle = '#000';
      } catch (e) { return; }
      function sig(ch) {
        cx.clearRect(0, 0, 28, 28);
        cx.fillText(ch, 3, 14);
        var d = cx.getImageData(0, 0, 28, 28).data;
        var s = '';
        for (var i = 3; i !== d.length + 3; i += 4) { s += d[i] > 20 ? '1' : '0'; }
        return s;
      }
      keys = Object.keys(INDEX).filter(function (k) { return 5 > INDEX[k].s.length; });
      function step() {
        var end = pos + 8;
        try {
          if (pos === 0) {
            [0x10FFFF, 0xFDD0, 0xFFFF].forEach(function (cp) { refs[sig(String.fromCodePoint(cp))] = true; });
          }
          for (; pos !== end && pos !== keys.length; pos++) {
            var it = INDEX[keys[pos]];
            var bad = it.pair ? Array.from(it.s).some(function (ch) { return refs[sig(ch)] === true; }) : refs[sig(it.s)] === true;
            if (bad) { BROKEN[it.s] = true; n++; }
          }
        } catch (e) { return; }
        if (pos !== keys.length) { schedule(step); return; }
        brokenCount = n;
        if (n > 0) { setStatus(); render(); }
      }
      step();
    }
    renderTabs();
    render();
    setCtx('post');
    setStatus();
    if (document.readyState === 'complete') {
      schedule(detectBroken);
    } else {
      window.addEventListener('load', function () { schedule(detectBroken); });
    }
  }
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
</script>

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"สัญลักษณ์ Facebook ใช้ทำอะไรได้บ้าง","acceptedAnswer":{"@type":"Answer","text":"ใช้ตกแต่งโพสต์ ไบโอ คอมเมนต์ ชื่อเพจ และข้อความแชทให้โดดเด่น เช่น ใส่หัวใจ ดาว ลูกศร หรือเส้นคั่น เพียงคลิกเลือกสัญลักษณ์แล้ววางลงบน Facebook"}},{"@type":"Question","name":"ใส่สัญลักษณ์ในชื่อโปรไฟล์ Facebook ได้หรือไม่","acceptedAnswer":{"@type":"Answer","text":"Facebook อาจไม่อนุญาตให้ใช้สัญลักษณ์พิเศษในชื่อโปรไฟล์ส่วนตัว จึงแนะนำให้ใช้กับไบโอ โพสต์ คอมเมนต์ หรือชื่อเพจแทน และควรตรวจสอบนโยบายชื่อล่าสุดของ Facebook ก่อนเปลี่ยนชื่อ"}},{"@type":"Question","name":"ทำไมสัญลักษณ์บางตัวแสดงเป็นสี่เหลี่ยมหรือเครื่องหมายคำถาม","acceptedAnswer":{"@type":"Answer","text":"เกิดจากอุปกรณ์ไม่มีฟอนต์รองรับสัญลักษณ์นั้น มักพบกับอีโมจิรุ่นใหม่บนอุปกรณ์เก่า เครื่องมือนี้จะทำเครื่องหมายสัญลักษณ์ที่อุปกรณ์ของคุณอาจแสดงไม่ได้ และมีตัวเลือกให้ซ่อน แต่ผู้ที่เห็นโพสต์บนอุปกรณ์อื่นอาจเห็นผลต่างกันได้"}},{"@type":"Question","name":"ฟอนต์พิเศษใช้กับภาษาไทยได้ไหม","acceptedAnswer":{"@type":"Answer","text":"ไม่ได้ ฟอนต์พิเศษเปลี่ยนได้เฉพาะตัวอักษรภาษาอังกฤษ A-Z และตัวเลข 0-9 ส่วนตัวอักษรไทยจะคงเดิม และโปรแกรมอ่านหน้าจออาจอ่านตัวอักษรเหล่านี้ไม่ได้ จึงไม่ควรใช้กับข้อความสำคัญ"}},{"@type":"Question","name":"ใช้บนมือถือ iPhone และ Android ได้ไหม","acceptedAnswer":{"@type":"Answer","text":"ได้ เปิดผ่านเบราว์เซอร์บนมือถือ แตะสัญลักษณ์เพื่อคัดลอก แล้วสลับไปวางในแอป Facebook ได้ทันที ไม่ต้องติดตั้งแอปเพิ่ม"}},{"@type":"Question","name":"รายการล่าสุดและรายการโปรดถูกเก็บไว้ที่ไหน","acceptedAnswer":{"@type":"Answer","text":"เก็บไว้ในเบราว์เซอร์ของคุณเท่านั้น ไม่ถูกส่งไปยังเซิร์ฟเวอร์ และล้างได้ทุกเมื่อด้วยปุ่มล้างข้อมูลที่บันทึกไว้"}}]}
</script>

## วิธีใช้งานเครื่องมือสัญลักษณ์ Facebook

1. **พิมพ์ข้อความ (ถ้ามี)** ในช่อง "ข้อความของคุณ" หรือเว้นว่างไว้หากต้องการเลือกสัญลักษณ์อย่างเดียว
2. **เลือกหมวดหมู่หรือค้นหา** เช่น หัวใจ ดาว ลูกศร หรือพิมพ์ภาษาอังกฤษอย่าง heart และ star ในช่องค้นหา
3. **คลิกสัญลักษณ์ที่ต้องการ** ระบบจะแทรกที่ตำแหน่งเคอร์เซอร์ในช่องข้อความ และคัดลอกสัญลักษณ์นั้นไปยังคลิปบอร์ดให้ทันที
4. **ตกแต่งข้อความ** ด้วย "กรอบสำเร็จรูป" เพื่อครอบข้อความด้วยลวดลาย หรือ "ฟอนต์พิเศษ" เพื่อเปลี่ยนตัวอักษรภาษาอังกฤษและตัวเลข
5. **ดูตัวอย่างก่อนโพสต์** โดยเลือกแท็บ โพสต์ ไบโอ คอมเมนต์ หรือ ชื่อ พร้อมดูจำนวนอักขระเทียบกับค่าโดยประมาณของแต่ละตำแหน่ง
6. **กด "คัดลอกทั้งหมด"** แล้วนำไปวางบน Facebook หากพลาดสามารถกด "ย้อนกลับ" เพื่อกู้ข้อความก่อนหน้าได้

**เคล็ดลับ**

- เปิด **โหมดบันทึกโปรด** แล้วคลิกสัญลักษณ์เพื่อเก็บไว้ในแท็บ "โปรด" คลิกซ้ำเพื่อลบออก
- แท็บ **ล่าสุด** รวบรวมสัญลักษณ์ที่คุณใช้บ่อยโดยอัตโนมัติ
- ติ๊ก **ซ่อนสัญลักษณ์ที่อุปกรณ์นี้อาจแสดงไม่ได้** เพื่อไม่ให้เลือกตัวที่ขึ้นเป็นกล่องว่าง
- หมวด **วงเล็บและกรอบ** จะวางเคอร์เซอร์ไว้ตรงกลางคู่วงเล็บ พิมพ์ข้อความต่อได้ทันที

## ฟีเจอร์ของเครื่องมือ

- **คลิกเดียวคัดลอกและแทรก** ใช้งานได้ทั้งคอมพิวเตอร์และมือถือ
- **พรีวิว 4 รูปแบบ** โพสต์ ไบโอ คอมเมนต์ และชื่อ พร้อมตัวนับอักขระ
- **ค้นหาได้ทั้งภาษาไทยและอังกฤษ** จากชื่อและคำสำคัญของแต่ละสัญลักษณ์
- **คลังสัญลักษณ์ 11 หมวด** ตั้งแต่อีโมจิ หัวใจ ดาว ลูกศร ธง ไปจนถึงเส้นคั่นและวงเล็บ
- **กรอบสำเร็จรูป 12 แบบ** ครอบข้อความได้ในคลิกเดียว
- **ฟอนต์พิเศษ 10 สไตล์** ตัวหนา ตัวเอียง ตัวโค้ง ตัวมีวงกลม และอื่น ๆ
- **ตรวจสอบการแสดงผลบนอุปกรณ์ของคุณ** ทำเครื่องหมายสัญลักษณ์ที่อาจขึ้นเป็นกล่องว่าง
- **รายการล่าสุด รายการโปรด และย้อนกลับ** เก็บในเบราว์เซอร์ของคุณเท่านั้น

## คำศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| อีโมจิ (Emoji) | รูปสัญลักษณ์ขนาดเล็กแบบสีสัน เช่น 😀 ❤️ 🔥 ที่แสดงตามฟอนต์ของอุปกรณ์แต่ละเครื่อง |
| สัญลักษณ์ข้อความ (Text Symbol) | อักขระพิเศษแบบเส้นหรือทึบ เช่น ★ ♡ ✔ → ที่ถือเป็นข้อความ ไม่ใช่รูปภาพ |
| Unicode | มาตรฐานสากลที่กำหนดรหัสให้ตัวอักษร สัญลักษณ์ และอีโมจิ ทำให้ข้อความเดียวกันแสดงได้บนหลายแพลตฟอร์ม |
| คลิปบอร์ด (Clipboard) | หน่วยความจำชั่วคราวของอุปกรณ์ที่เก็บข้อความซึ่งคัดลอกไว้ เพื่อนำไปวางที่อื่น |
| ไบโอ (Bio) | ข้อความแนะนำตัวสั้น ๆ บนโปรไฟล์หรือเพจ |
| เส้นคั่น (Divider) | ลายสัญลักษณ์เรียงต่อกันสำหรับแบ่งส่วนของโพสต์หรือไบโอ |
| กรอบสำเร็จรูป | ลวดลายที่ครอบหน้าและหลังข้อความ เช่น ★ ข้อความ ★ |
| ฟอนต์พิเศษ (Unicode Text Style) | ตัวอักษรละตินที่หน้าตาเปลี่ยนไป เช่น ตัวหนา ตัวเอียง ตัวโค้ง ซึ่งแท้จริงเป็นอักขระคนละตัวใน Unicode ไม่ใช่การตั้งค่าฟอนต์ |
| พรีวิว (Preview) | ภาพจำลองว่าข้อความจะแสดงอย่างไรบน Facebook ก่อนนำไปวางจริง |
| โหมดบันทึกโปรด | โหมดที่คลิกสัญลักษณ์แล้วเพิ่มหรือลบจากรายการโปรด แทนการแทรกลงช่องข้อความ |
| กล่องว่าง (Tofu) | สี่เหลี่ยมหรือเครื่องหมายคำถามที่ปรากฏเมื่ออุปกรณ์ไม่มีฟอนต์สำหรับสัญลักษณ์นั้น |
| จำนวนอักขระ | จำนวนตัวอักษรและสัญลักษณ์ในข้อความ ใช้เทียบกับข้อจำกัดโดยประมาณของแต่ละตำแหน่งบน Facebook |
| localStorage | พื้นที่เก็บข้อมูลขนาดเล็กในเบราว์เซอร์ ใช้บันทึกรายการล่าสุดและรายการโปรด โดยไม่ส่งไปยังเซิร์ฟเวอร์ |

## ข้อควรรู้ก่อนนำไปใช้บน Facebook

- **ชื่อโปรไฟล์ส่วนตัว** Facebook อาจไม่อนุญาตสัญลักษณ์พิเศษ ควรใช้กับไบโอ โพสต์ คอมเมนต์ หรือชื่อเพจแทน และตรวจสอบนโยบายชื่อล่าสุดก่อนเปลี่ยน
- **ผู้อ่านเห็นไม่เหมือนกัน** อุปกรณ์รุ่นเก่าอาจแสดงอีโมจิใหม่เป็นกล่องว่าง หากต้องการให้ทุกคนเห็นตรงกัน ให้เลือกสัญลักษณ์พื้นฐาน เช่น ★ ♡ ✔ →
- **ฟอนต์พิเศษไม่เหมาะกับข้อความสำคัญ** โปรแกรมอ่านหน้าจออาจอ่านไม่ออก และไม่ช่วยให้ค้นหาข้อความนั้นเจอ
- **ไม่ควรใช้มากเกินไป** สัญลักษณ์ 2 ถึง 3 ตัวต่อบรรทัดมักอ่านง่ายกว่า และดูเป็นมืออาชีพกว่า
- **ตัวเลขข้อจำกัดเป็นค่าโดยประมาณ** Facebook อาจปรับเปลี่ยนได้ ควรตรวจสอบหน้าตัวอย่างบน Facebook จริงเสมอ

## คำถามที่พบบ่อย

### สัญลักษณ์ Facebook ใช้ทำอะไรได้บ้าง

ใช้ตกแต่งโพสต์ ไบโอ คอมเมนต์ ชื่อเพจ และข้อความแชทให้โดดเด่น เช่น ใส่หัวใจ ดาว ลูกศร หรือเส้นคั่น เพียงคลิกเลือกสัญลักษณ์แล้ววางลงบน Facebook

### ใส่สัญลักษณ์ในชื่อโปรไฟล์ Facebook ได้หรือไม่

Facebook อาจไม่อนุญาตให้ใช้สัญลักษณ์พิเศษในชื่อโปรไฟล์ส่วนตัว จึงแนะนำให้ใช้กับไบโอ โพสต์ คอมเมนต์ หรือชื่อเพจแทน และควรตรวจสอบนโยบายชื่อล่าสุดของ Facebook ก่อนเปลี่ยนชื่อ

### ทำไมสัญลักษณ์บางตัวแสดงเป็นสี่เหลี่ยมหรือเครื่องหมายคำถาม

เกิดจากอุปกรณ์ไม่มีฟอนต์รองรับสัญลักษณ์นั้น มักพบกับอีโมจิรุ่นใหม่บนอุปกรณ์เก่า เครื่องมือนี้จะทำเครื่องหมายสัญลักษณ์ที่อุปกรณ์ของคุณอาจแสดงไม่ได้ และมีตัวเลือกให้ซ่อน แต่ผู้ที่เห็นโพสต์บนอุปกรณ์อื่นอาจเห็นผลต่างกันได้

### ฟอนต์พิเศษใช้กับภาษาไทยได้ไหม

ไม่ได้ ฟอนต์พิเศษเปลี่ยนได้เฉพาะตัวอักษรภาษาอังกฤษ A-Z และตัวเลข 0-9 ส่วนตัวอักษรไทยจะคงเดิม และโปรแกรมอ่านหน้าจออาจอ่านตัวอักษรเหล่านี้ไม่ได้ จึงไม่ควรใช้กับข้อความสำคัญ

### ใช้บนมือถือ iPhone และ Android ได้ไหม

ได้ เปิดผ่านเบราว์เซอร์บนมือถือ แตะสัญลักษณ์เพื่อคัดลอก แล้วสลับไปวางในแอป Facebook ได้ทันที ไม่ต้องติดตั้งแอปเพิ่ม

### รายการล่าสุดและรายการโปรดถูกเก็บไว้ที่ไหน

เก็บไว้ในเบราว์เซอร์ของคุณเท่านั้น ไม่ถูกส่งไปยังเซิร์ฟเวอร์ และล้างได้ทุกเมื่อด้วยปุ่มล้างข้อมูลที่บันทึกไว้

---

เครื่องมือนี้ไม่มีส่วนเกี่ยวข้องกับ Facebook ชื่อและเครื่องหมายการค้าทั้งหมดเป็นทรัพย์สินของเจ้าของที่เกี่ยวข้อง