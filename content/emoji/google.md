---
title: Google Emoji ออนไลน์ ฟรี
h1: Google Emoji
description: คัดลอก Google Emoji ออนไลน์ฟรี คลิกเดียววางในแคปชั่นหรือข้อความได้ทันที มีครบทุกหมวด ทั้งหน้ายิ้ม สัตว์ อาหาร ธง ใช้ง่าย ใช้ได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-01T09:00:00+07:00'
weight: 48
tool: true
topic: emoji
appCategory: UtilitiesApplication
keywords:
- Google Emoji
- Google Emoji ออนไลน์
- อิโมจิและสัญลักษณ์
---
<style>
#gem{font-family:system-ui,-apple-system,"Segoe UI",sans-serif;max-width:100%}
#gem textarea{width:100%;box-sizing:border-box;min-height:70px;padding:10px;font-size:1.3rem;border:1px solid #bbb;border-radius:8px}
#gem .bar,#gem .tabs{display:flex;flex-wrap:wrap;gap:6px;margin:8px 0}
#gem button{cursor:pointer;border:1px solid #bbb;background:#f5f5f5;border-radius:6px;padding:6px 12px;font-size:.9rem;color:#222}
#gem button.on{background:#1a73e8;border-color:#1a73e8;color:#fff}
#gem .grid{display:flex;flex-wrap:wrap;gap:2px;max-height:420px;overflow-y:auto;border:1px solid #ddd;border-radius:8px;padding:6px}
#gem .grid span{font-size:1.7rem;width:2.4rem;height:2.4rem;display:flex;align-items:center;justify-content:center;cursor:pointer;border-radius:6px;user-select:none}
#gem .grid span:hover{background:#e8f0fe}
#gem .msg{min-height:1.4em;font-size:.9rem;color:#188038}
</style>
<div id="gem">
<textarea id="gem-box" placeholder="คลิกอีโมจิด้านล่างเพื่อเพิ่มที่นี่ / Click an emoji below"></textarea>
<div class="bar"><button id="gem-copy" type="button">คัดลอกทั้งหมด</button><button id="gem-del" type="button">ลบตัวสุดท้าย</button><button id="gem-clear" type="button">ล้างข้อความ</button><span class="msg" id="gem-msg"></span></div>
<div class="tabs" id="gem-tabs"></div>
<div class="grid" id="gem-grid"></div>
</div>
<script>
(function(){
var C=[
["หน้ายิ้มและผู้คน",[[0x1F600,0x1F64F],[0x1F910,0x1F93A],[0x1F970,0x1F97A],[0x1FAE0,0x1FAE8],[0x1F440,0x1F478],[0x1F47B,0x1F47D],[0x1F480,0x1F480],[0x1F485,0x1F487],[0x1F493,0x1F49F],[0x1F4A2,0x1F4A9],[0x1F90C,0x1F90F],[0x1F9D0,0x1F9DF],[0x2764,0x2764],[0x1F5A4,0x1F5A4],[0x1FA75,0x1FA77]]],
["สัตว์และธรรมชาติ",[[0x1F330,0x1F344],[0x1F400,0x1F43F],[0x1F490,0x1F490],[0x1F4AE,0x1F4AE],[0x1F980,0x1F9AE],[0x1FAB0,0x1FABD],[0x1FACE,0x1FACF]]],
["อาหารและเครื่องดื่ม",[[0x1F345,0x1F37F],[0x1F950,0x1F96F],[0x1F9C0,0x1F9CB],[0x1FAD0,0x1FADB]]],
["กิจกรรม",[[0x1F383,0x1F393],[0x1F3A0,0x1F3CA],[0x1F3CF,0x1F3D3],[0x1F945,0x1F94F],[0x1F9E7,0x1F9FF],[0x1FA80,0x1FA8A]]],
["การเดินทางและสถานที่",[[0x1F30D,0x1F32C],[0x1F311,0x1F31F],[0x1F3D4,0x1F3DF],[0x1F3E0,0x1F3F0],[0x1F550,0x1F567],[0x1F680,0x1F6C5],[0x1F6E0,0x1F6EC],[0x1F6F0,0x1F6FC],[0x231A,0x231B],[0x23F0,0x23F3],[0x2600,0x2604],[0x26A1,0x26A1],[0x2744,0x2744],[0x2B50,0x2B50]]],
["สิ่งของ",[[0x1F451,0x1F4FC],[0x1F4FF,0x1F4FF],[0x1F50A,0x1F52E],[0x1F5FF,0x1F5FF],[0x1F6AA,0x1F6AA],[0x1F6BD,0x1F6BF],[0x1F6C0,0x1F6CC],[0x1FA90,0x1FAAF]]],
["สัญลักษณ์",[[0x1F500,0x1F53D],[0x1F7E0,0x1F7EB],[0x1F170,0x1F19A],[0x1F6AB,0x1F6AB],[0x1F6B0,0x1F6BC],[0x2640,0x2642],[0x2705,0x2705],[0x2714,0x2714],[0x2716,0x2716],[0x274C,0x274C],[0x2753,0x2757],[0x2795,0x2797],[0x27B0,0x27B0],[0x27BF,0x27BF],[0x2B05,0x2B07],[0x2B1B,0x2B1C],[0x2B55,0x2B55]]],
["ธง",[]]
];
var CC="AC AD AE AF AG AI AL AM AO AQ AR AS AT AU AW AX AZ BA BB BD BE BF BG BH BI BJ BL BM BN BO BQ BR BS BT BV BW BY BZ CA CC CD CF CG CH CI CK CL CM CN CO CP CQ CR CU CV CW CX CY CZ DE DG DJ DK DM DO DZ EA EC EE EG EH ER ES ET EU FI FJ FK FM FO FR GA GB GD GE GF GG GH GI GL GM GN GP GQ GR GS GT GU GW GY HK HM HN HR HT HU IC ID IE IL IM IN IO IQ IR IS IT JE JM JO JP KE KG KH KI KM KN KP KR KW KY KZ LA LB LC LI LK LR LS LT LU LV LY MA MC MD ME MF MG MH MK ML MM MN MO MP MQ MR MS MT MU MV MW MX MY MZ NA NC NE NF NG NI NL NO NP NR NU NZ OM PA PE PF PG PH PK PL PM PN PR PS PT PW PY QA RE RO RS RU RW SA SB SC SD SE SG SH SI SJ SK SL SM SN SO SR SS ST SV SX SY SZ TA TC TD TF TG TH TJ TK TL TM TN TO TR TT TV TW TZ UA UG UM UN US UY UZ VA VC VE VG VI VN VU WF WS XK YE YT ZA ZM ZW".split(" ");
var box=document.getElementById("gem-box"),grid=document.getElementById("gem-grid"),tabs=document.getElementById("gem-tabs"),msg=document.getElementById("gem-msg");
var seen={},data=[];
var reP,reE;
try{reP=new RegExp("^\\p{Emoji_Presentation}$","u");reE=new RegExp("^\\p{Extended_Pictographic}$","u");}catch(e){reP=null;reE=null;}
function build(){
for(var i=0;i<C.length;i++){
var list=[];
if(i===C.length-1){
[0x1F3C1,0x1F6A9,0x1F38C,0x1F3F4,0x1F3F3].forEach(function(cp){list.push(String.fromCodePoint(cp)+(cp===0x1F3F3?"\uFE0F":""));});
CC.forEach(function(c){list.push(String.fromCodePoint(0x1F1E6+c.charCodeAt(0)-65,0x1F1E6+c.charCodeAt(1)-65));});
}else{
C[i][1].forEach(function(r){
for(var cp=r[0];cp<=r[1];cp++){
var ch=String.fromCodePoint(cp),out=null;
if(reP){if(reP.test(ch)){out=ch;}else if(reE.test(ch)){out=ch+"\uFE0F";}}
else{out=ch;}
if(out&&!seen[out]){seen[out]=1;list.push(out);}
}
});
}
data.push(list);
}
}
function show(i){
grid.innerHTML="";
var kids=tabs.children;
for(var k=0;k<kids.length;k++){kids[k].className=(k===i)?"on":"";}
data[i].forEach(function(e){
var s=document.createElement("span");
s.textContent=e;
s.onclick=function(){box.value+=e;copy(e);};
grid.appendChild(s);
});
}
function note(t){msg.textContent=t;setTimeout(function(){msg.textContent="";},1500);}
function copy(t){
if(navigator.clipboard&&navigator.clipboard.writeText){
navigator.clipboard.writeText(t).then(function(){note("คัดลอกแล้ว ✓");},function(){fallback(t);});
}else{fallback(t);}
}
function fallback(t){
var old=box.value;box.value=t;box.select();
try{document.execCommand("copy");note("คัดลอกแล้ว ✓");}catch(e){note("คัดลอกไม่สำเร็จ");}
box.value=old;
}
function last(s){
if(window.Intl&&Intl.Segmenter){var a=Array.from(new Intl.Segmenter(undefined,{granularity:"grapheme"}).segment(s));a.pop();return a.map(function(x){return x.segment;}).join("");}
var b=Array.from(s);b.pop();return b.join("");
}
build();
C.forEach(function(c,i){
var b=document.createElement("button");
b.type="button";b.textContent=c[0];
b.onclick=function(){show(i);};
tabs.appendChild(b);
});
document.getElementById("gem-copy").onclick=function(){if(box.value){fallbackOrCopy();}else{note("ยังไม่มีข้อความ");}};
function fallbackOrCopy(){
if(navigator.clipboard&&navigator.clipboard.writeText){navigator.clipboard.writeText(box.value).then(function(){note("คัดลอกทั้งหมดแล้ว ✓");},function(){box.select();document.execCommand("copy");note("คัดลอกทั้งหมดแล้ว ✓");});}
else{box.select();document.execCommand("copy");note("คัดลอกทั้งหมดแล้ว ✓");}
}
document.getElementById("gem-del").onclick=function(){box.value=last(box.value);};
document.getElementById("gem-clear").onclick=function(){box.value="";};
show(0);
})();
</script>

## วิธีใช้งาน Google Emoji

1. เลือกหมวดหมู่ที่ต้องการจากแท็บด้านบน เช่น หน้ายิ้มและผู้คน สัตว์และธรรมชาติ หรือธง
2. คลิกที่อีโมจิที่ชอบ ระบบจะคัดลอกให้อัตโนมัติและเพิ่มลงในช่องข้อความ
3. คลิกอีโมจิหลายตัวต่อกันเพื่อสร้างชุดอีโมจิของคุณเอง
4. กดปุ่ม "คัดลอกทั้งหมด" เพื่อคัดลอกทุกตัวในช่องข้อความ แล้วนำไปวางในแคปชั่น แชต หรือโพสต์
5. หากพิมพ์ผิด ใช้ปุ่ม "ลบตัวสุดท้าย" หรือ "ล้างข้อความ" เพื่อเริ่มใหม่

## คำอธิบายศัพท์ที่เกี่ยวข้อง

- **Google Emoji (Noto Emoji)**: ชุดอีโมจิโอเพนซอร์สของ Google ที่ใช้ใน Android และผลิตภัณฑ์ของ Google
- **Emoji (อีโมจิ)**: ภาพสัญลักษณ์เล็ก ๆ ที่ใช้แสดงอารมณ์ วัตถุ หรือความหมายในข้อความ
- **หน้ายิ้มและผู้คน**: อีโมจิใบหน้า อารมณ์ ท่ามือ และบุคคลประเภทต่าง ๆ
- **สัตว์และธรรมชาติ**: อีโมจิสัตว์ พืช ดอกไม้ และสภาพธรรมชาติ
- **อาหารและเครื่องดื่ม**: อีโมจิผลไม้ อาหาร และเครื่องดื่ม
- **กิจกรรม**: อีโมจิกีฬา งานเฉลิมฉลอง เกม และอาชีพ
- **การเดินทางและสถานที่**: อีโมจิยานพาหนะ อาคาร สถานที่ เวลา และสภาพอากาศ
- **สิ่งของ**: อีโมจิเครื่องแต่งกาย เครื่องมือ อุปกรณ์อิเล็กทรอนิกส์ และของใช้ทั่วไป
- **สัญลักษณ์**: อีโมจิลูกศร เครื่องหมาย ป้ายสัญญาณ และรูปทรงสี
- **ธง**: อีโมจิธงชาติ ธงภูมิภาค และธงธีมต่าง ๆ
- **คัดลอกทั้งหมด**: คัดลอกอีโมจิทั้งหมดในช่องข้อความไปยังคลิปบอร์ด
- **ลบตัวสุดท้าย / ล้างข้อความ**: ลบอีโมจิตัวท้ายสุด หรือเคลียร์ช่องข้อความทั้งหมด