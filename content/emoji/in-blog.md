---
title: อีโมจิสำหรับบล็อก ออนไลน์ ฟรี
h1: อีโมจิสำหรับบล็อก
description: 'รวมอีโมจิสำหรับบล็อกให้คัดลอกไปวางทันที เลือกสไตล์ Twemoji หรือ Noto ปรับขนาดไอคอน คัดลอกเป็นโค้ด HTML ใช้กับ WordPress และ Blogger ฟรี ไม่ต้องสมัครสมาชิก'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-01T09:00:00+07:00'
weight: 47
tool: true
topic: emoji
appCategory: UtilitiesApplication
keywords:
- อีโมจิสำหรับบล็อก
- อีโมจิสำหรับบล็อก ออนไลน์
- อิโมจิและสัญลักษณ์
---

เครื่องมือออนไลน์สำหรับแทรกอีโมจิลงในบทความบล็อก เช่น WordPress และ Google Blogger เพียงคลิกที่อีโมจิเพื่อคัดลอก แล้วนำไปวางในบทความได้ทันที ไม่ต้องอัปโหลดรูปภาพเอง

<style>
.emjb{margin:1rem 0;font-family:inherit}
.emjb-bar{display:flex;flex-wrap:wrap;gap:12px;margin-bottom:10px}
.emjb-bar label{display:flex;align-items:center;gap:6px;font-size:14px}
.emjb select{padding:4px 8px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit}
.emjb-tabs{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:10px}
.emjb-tabs button{padding:5px 10px;border:1px solid rgba(128,128,128,.5);border-radius:16px;background:transparent;color:inherit;cursor:pointer;font-size:13px}
.emjb-tabs button[aria-pressed="true"]{background:rgba(128,128,128,.25);font-weight:600}
.emjb-grid{display:flex;flex-wrap:wrap;gap:2px;max-height:360px;overflow-y:auto;padding:6px;border:1px solid rgba(128,128,128,.35);border-radius:8px}
.emjb-e{border:0;background:transparent;cursor:pointer;border-radius:6px;padding:2px;line-height:1.3;font-family:"Apple Color Emoji","Segoe UI Emoji","Noto Color Emoji",sans-serif}
.emjb-e:hover,.emjb-e:focus{background:rgba(128,128,128,.25);outline:none}
.emjb-empty{padding:12px;font-size:14px;opacity:.75}
.emjb-lab{margin:10px 0 4px;font-size:13px;opacity:.8}
.emjb textarea{width:100%;box-sizing:border-box;padding:6px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font-family:monospace;font-size:12px}
.emjb-toast{min-height:20px;margin-top:6px;font-size:14px;font-weight:600}
</style>
<div id="emjb" class="emjb">
<div class="emjb-bar">
<label>รูปแบบ <select id="emjb-style"><option value="unicode">ตัวอักษร Unicode</option><option value="twemoji">Twemoji (โค้ด HTML)</option><option value="noto">Noto Color Emoji (โค้ด HTML)</option></select></label>
<label>ขนาดไอคอน <select id="emjb-size"><option>16</option><option>20</option><option selected>24</option><option>28</option><option>32</option><option>36</option><option>48</option></select></label>
</div>
<div class="emjb-tabs" id="emjb-tabs"></div>
<div class="emjb-grid" id="emjb-grid"></div>
<div class="emjb-lab">ตัวอย่างสิ่งที่คัดลอกล่าสุด</div>
<textarea id="emjb-out" readonly rows="3"></textarea>
<div class="emjb-toast" id="emjb-toast" role="status" aria-live="polite"></div>
</div>
<script>
(function(){
try{
var LT=String.fromCharCode(60),GT=String.fromCharCode(62);
var $=function(i){return document.getElementById(i)};
var grid=$('emjb-grid'),tabs=$('emjb-tabs'),styleSel=$('emjb-style'),sizeSel=$('emjb-size'),out=$('emjb-out'),toast=$('emjb-toast');
if(!grid||!tabs)return;
var PRES=null;
try{PRES=new RegExp('\\p{Emoji_Presentation}','u')}catch(e){PRES=null}
function split(s){
if(window.Intl&&Intl.Segmenter){return Array.from(new Intl.Segmenter(undefined,{granularity:'grapheme'}).segment(s),function(x){return x.segment})}
var a=[];
Array.from(s).forEach(function(ch){var l=a.length-1;if(l>=0&&(ch==='\uFE0F'||ch==='\u200D'||ch==='\u20E3'||a[l].slice(-1)==='\u200D')){a[l]+=ch}else{a.push(ch)}});
return a}
function rng(list){var r=[];list.forEach(function(p){for(var c=p[0];c<=p[1];c++){var ch=String.fromCodePoint(c);if(!PRES||PRES.test(ch)){r.push(ch)}}});return r}
function ext(s){return split(s).map(function(g){if(PRES&&Array.from(g).length===1&&!PRES.test(g)){return g+'\uFE0F'}return g})}
function tag(s){return String.fromCodePoint(0x1F3F4)+Array.from(s).map(function(c){return String.fromCodePoint(0xE0000+c.charCodeAt(0))}).join('')+String.fromCodePoint(0xE007F)}
var CC='AC AD AE AF AG AI AL AM AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BL BM BN BO BQ BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CP CQ CR CU CV CW CX CY CZ DE DG DJ DK DM DO DZ EA EC EE EG EH ER ES ET EU FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU IC ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR SS ST SV SX SY SZ TA TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM UN US UY UZ VA VC VE VG VI VN VU WF WS XK YE YT ZA ZM ZW'.split(' ');
var DEFS=[
['smileys','หน้ายิ้มและผู้คน',function(){return rng([[0x1F600,0x1F64F],[0x1F910,0x1F93A],[0x1F970,0x1F97A],[0x1FAE0,0x1FAF8],[0x1F440,0x1F450],[0x1F466,0x1F480],[0x1F48B,0x1F48C],[0x1F493,0x1F49F],[0x1F4A2,0x1F4A2],[0x1F4A4,0x1F4AB],[0x1F9D0,0x1F9DF]]).concat(ext('✊✋✌☝✍☺☹☠❣❤🖐🕳'))}],
['animals','สัตว์และธรรมชาติ',function(){return rng([[0x1F400,0x1F43F],[0x1F980,0x1F9AE],[0x1F330,0x1F344],[0x1F490,0x1F490],[0x1FAB0,0x1FABF],[0x1FACE,0x1FACF]]).concat(ext('🐿🕊🕷🕸☘🏵'))}],
['food','อาหารและเครื่องดื่ม',function(){return rng([[0x1F32D,0x1F32F],[0x1F345,0x1F37F],[0x1F950,0x1F96F],[0x1F9C0,0x1F9CB],[0x1FAD0,0x1FADB]]).concat(ext('☕🌶🍽'))}],
['activities','กิจกรรม',function(){return rng([[0x1F380,0x1F3CA],[0x1F3CF,0x1F3D3],[0x1F93C,0x1F94F],[0x1F9E9,0x1F9E9],[0x1F9F8,0x1F9F8],[0x1FA80,0x1FA86]]).concat(ext('⚽⚾⛳✨♠♥♦♣♟⛸🎗🎟🎖🕹'))}],
['travel','การเดินทางและสถานที่',function(){return rng([[0x1F300,0x1F320],[0x1F3E0,0x1F3F0],[0x1F680,0x1F6A9],[0x1F6B2,0x1F6B2],[0x1F6B4,0x1F6B5],[0x1F6D1,0x1F6D1],[0x1F6D5,0x1F6D7],[0x1F6DC,0x1F6DF],[0x1F550,0x1F567],[0x231A,0x231B],[0x23F0,0x23F0],[0x23F3,0x23F3],[0x1F9F3,0x1F9F3]]).concat(ext('⛵⛺⛲⛪⚓⛽⛅⛄⚡❄☔⭐✈☀☁☂⛈🌤🌥🌦🌧🌨🌩🌪🌫🌬🌡⛰🏔🏕🏖🏜🏝🏞🏟🏛🏗🏘🏙🛣🛤🛢🛳⛴🛥🛩🛰🛎🕰⏱⏲'))}],
['objects','สิ่งของ',function(){return rng([[0x1F451,0x1F465],[0x1F484,0x1F48A],[0x1F4A1,0x1F4A1],[0x1F4A3,0x1F4A3],[0x1F4B0,0x1F4FC],[0x1F50B,0x1F51A],[0x1F525,0x1F52E],[0x1F6AA,0x1F6AA],[0x1F6BD,0x1F6BF],[0x1F6C0,0x1F6C1],[0x1F6D2,0x1F6D2],[0x1F9AF,0x1F9AF],[0x1F9E3,0x1F9E8],[0x1F9EA,0x1F9F7],[0x1F9F9,0x1F9FF],[0x1FA70,0x1FAAF]]).concat(ext('☎⌨🖥🖨🖱✏✒✂⚙⚖⚔⚒🛠🗡⛏⚗🕯🗞🗒🗓🖋🖊🖌🖍📽🎞🎙🎚🎛🛍🛏🛋⛑🕶'))}],
['symbols','สัญลักษณ์',function(){
var k=['#','*','0','1','2','3','4','5','6','7','8','9'].map(function(c){return c+'\uFE0F\u20E3'});
return rng([[0x1F4A0,0x1F4A0],[0x1F4AC,0x1F4AF],[0x1F500,0x1F50A],[0x1F51B,0x1F524],[0x1F52F,0x1F53D],[0x1F7E0,0x1F7EB],[0x1F6AB,0x1F6B1],[0x1F6B3,0x1F6B3],[0x1F6B7,0x1F6BC],[0x1F6BE,0x1F6BE],[0x1F6C2,0x1F6C5],[0x1F6D0,0x1F6D0],[0x23E9,0x23EC],[0x2705,0x2705],[0x274C,0x274C],[0x274E,0x274E],[0x2753,0x2755],[0x2757,0x2757],[0x2795,0x2797],[0x27B0,0x27B0],[0x27BF,0x27BF],[0x2B1B,0x2B1C],[0x2B55,0x2B55],[0x267F,0x267F],[0x2648,0x2653],[0x26CE,0x26CE],[0x26D4,0x26D4],[0x26AA,0x26AB],[0x1F18E,0x1F18E],[0x1F191,0x1F19A],[0x1F201,0x1F201],[0x1F21A,0x1F21A],[0x1F22F,0x1F22F],[0x1F232,0x1F236],[0x1F238,0x1F23A],[0x1F250,0x1F251]]).concat(ext('🅰🅱🅾🅿ℹⓂ⚠☢☣⬆↗➡↘⬇↙⬅↖↕↔↩↪⤴⤵⚛🕉✡☸☯✝☦☪☮▶◀⏏♀♂⚧✖♾‼⁉〰⚕♻⚜☑✔✳✴❇©®™◼◻▪▫㊗㊙🈂🈷'),k)}],
['flags','ธง',function(){
var f=CC.map(function(c){return String.fromCodePoint(c.charCodeAt(0)+0x1F1A5,c.charCodeAt(1)+0x1F1A5)});
return ext('🏁🚩🎌🏴🏳').concat(['🏳\uFE0F\u200D🌈','🏳\uFE0F\u200D\u26A7\uFE0F','🏴\u200D\u2620\uFE0F'],f,[tag('gbeng'),tag('gbsct'),tag('gbwls')])}]
];
var seen={},cache={};
function getCat(i){if(!cache[i]){var list=DEFS[i][2]().filter(function(g){if(seen[g]){return false}seen[g]=1;return true});cache[i]=list}return cache[i]}
var recent=[];
try{recent=JSON.parse(localStorage.getItem('emjb-recent')||'[]')}catch(e){recent=[]}
if(!Array.isArray(recent)){recent=[]}
function saveRecent(ch){recent=[ch].concat(recent.filter(function(x){return x!==ch})).slice(0,40);try{localStorage.setItem('emjb-recent',JSON.stringify(recent))}catch(e){}}
function codes(ch,strip){var a=Array.from(ch).map(function(c){return c.codePointAt(0).toString(16)});if(strip){a=a.filter(function(x){return x!=='fe0f'})}return a}
function mk(ch){
var st=styleSel.value,sz=sizeSel.value;
if(st==='unicode'){return ch}
var cp=codes(ch,ch.indexOf('\u200D')<0);
var src=st==='noto'?'https://cdn.jsdelivr.net/gh/googlefonts/noto-emoji@main/png/72/emoji_u'+cp.join('_')+'.png':'https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/72x72/'+cp.join('-')+'.png';
return LT+'img draggable="false" alt="'+ch+'" src="'+src+'" width="'+sz+'" height="'+sz+'" style="vertical-align:middle"'+GT}
function copyText(t){
if(navigator.clipboard&&navigator.clipboard.writeText){return navigator.clipboard.writeText(t)}
return new Promise(function(ok,no){var ta=document.createElement('textarea');ta.value=t;ta.style.position='fixed';ta.style.opacity='0';document.body.appendChild(ta);ta.select();try{document.execCommand('copy')?ok():no()}catch(e){no(e)}document.body.removeChild(ta)})}
var tm=null;
function say(m){toast.textContent=m;clearTimeout(tm);tm=setTimeout(function(){toast.textContent=''},2000)}
function pick(ch){
var t=mk(ch);out.value=t;saveRecent(ch);
copyText(t).then(function(){say('คัดลอกแล้ว '+ch)},function(){say('คัดลอกไม่สำเร็จ กรุณาคัดลอกจากช่องด้านบน')})}
var cur=-1;
function render(){
grid.textContent='';
var list=cur<0?recent:getCat(cur);
if(!list.length){var d=document.createElement('div');d.className='emjb-empty';d.textContent='ยังไม่มีรายการที่ใช้ล่าสุด คลิกอีโมจิเพื่อเริ่มสะสม';grid.appendChild(d);return}
var sz=parseInt(sizeSel.value,10)||24;
var frag=document.createDocumentFragment();
list.forEach(function(ch){var b=document.createElement('button');b.type='button';b.className='emjb-e';b.textContent=ch;b.style.fontSize=sz+'px';b.style.minWidth=Math.round(sz*1.5)+'px';b.setAttribute('aria-label','คัดลอก '+ch);b.addEventListener('click',function(){pick(ch)});frag.appendChild(b)});
grid.appendChild(frag)}
function tabs_(){
tabs.textContent='';
var names=['ที่ใช้ล่าสุด'].concat(DEFS.map(function(d){return d[1]}));
names.forEach(function(n,i){var b=document.createElement('button');b.type='button';b.textContent=n;b.setAttribute('aria-pressed',String(i-1===cur));b.addEventListener('click',function(){cur=i-1;tabs_();render()});tabs.appendChild(b)})}
styleSel.addEventListener('change',function(){say('เปลี่ยนรูปแบบแล้ว')});
sizeSel.addEventListener('change',render);
cur=recent.length?-1:0;
tabs_();render();
}catch(err){if(window.console){console.error('emoji tool',err)}}
})();
</script>

## วิธีใช้งานเครื่องมือ

1. **เลือกรูปแบบการคัดลอก** จากช่อง "รูปแบบ" หากต้องการอีโมจิแบบข้อความธรรมดา เลือก "ตัวอักษร Unicode" หากต้องการให้แสดงเหมือนกันทุกอุปกรณ์ เลือก Twemoji หรือ Noto เพื่อคัดลอกเป็นโค้ด HTML
2. **ปรับขนาดไอคอน** ที่ช่อง "ขนาดไอคอน" (16 ถึง 48 พิกเซล) ขนาดนี้ใช้กับรูปที่แสดงในตารางและค่า width/height ในโค้ด HTML ที่คัดลอก
3. **เลือกหมวดหมู่** เช่น หน้ายิ้มและผู้คน สัตว์และธรรมชาติ อาหารและเครื่องดื่ม หรือธง แล้วค้นหาอีโมจิที่ต้องการ
4. **คลิกที่อีโมจิ** ระบบจะคัดลอกไปยังคลิปบอร์ดทันที และแสดงตัวอย่างสิ่งที่คัดลอกในช่องด้านล่าง
5. **นำไปวางในบล็อก** เปิดหน้าแก้ไขบทความ ถ้าเลือก Unicode ให้วางในโหมดแก้ไขปกติ ถ้าเลือก Twemoji หรือ Noto ให้วางในโหมด HTML (Code Editor) ของ WordPress หรือ Blogger
6. **ใช้ซ้ำได้ง่าย** อีโมจิที่คลิกบ่อยจะถูกเก็บไว้ในแท็บ "ที่ใช้ล่าสุด" ของเบราว์เซอร์คุณ

## คำอธิบายศัพท์

- **อีโมจิ (Emoji):** ภาพสัญลักษณ์เล็ก ๆ ที่ใช้แสดงอารมณ์ สิ่งของ หรือไอเดียแทนตัวอักษร เช่น 😀 ❤️ 🌸
- **Unicode:** มาตรฐานรหัสตัวอักษรสากล อีโมจิแบบ Unicode คือตัวอักษรที่เบราว์เซอร์และระบบปฏิบัติการวาดให้ รูปร่างจึงต่างกันไปตามอุปกรณ์
- **Twemoji:** ชุดภาพอีโมจิโอเพนซอร์สที่พัฒนาโดย Twitter ใช้กันแพร่หลายในเว็บไซต์
- **Noto Color Emoji:** ชุดภาพอีโมจิโอเพนซอร์สของ Google ใช้เป็นอีโมจิมาตรฐานบน Android
- **โค้ด HTML:** แท็ก img ที่อ้างอิงภาพอีโมจิ ทำให้อีโมจิหน้าตาเหมือนกันในทุกอุปกรณ์ และกำหนดขนาดได้
- **ขนาดไอคอน:** ความกว้างและความสูงของภาพอีโมจิ หน่วยเป็นพิกเซล
- **ที่ใช้ล่าสุด:** รายการอีโมจิที่คุณคลิกล่าสุด เก็บไว้ในเบราว์เซอร์ของคุณเท่านั้น
- **คลิปบอร์ด (Clipboard):** พื้นที่พักข้อมูลชั่วคราวของอุปกรณ์ สำหรับคัดลอกแล้วนำไปวาง
- **CDN:** เครือข่ายเซิร์ฟเวอร์ที่ช่วยโหลดภาพอีโมจิได้รวดเร็ว จึงไม่ต้องอัปโหลดรูปไปเก็บไว้ในบล็อกเอง
- **WordPress / Blogger:** แพลตฟอร์มสร้างบล็อกยอดนิยม ซึ่งรองรับการวางอีโมจิและโค้ด HTML ในบทความ
- **โหมด HTML (Code Editor):** หน้าแก้ไขบทความที่แสดงโค้ดต้นฉบับ ใช้สำหรับวางแท็ก img ของอีโมจิ