---
title: เวลาออมแสง (DST) ออนไลน์ ฟรี
h1: เวลาออมแสง (DST)
description: ตรวจสอบวันเปลี่ยนเวลาออมแสง (DST) ครั้งถัดไปของเมืองคุณ ดูว่านาฬิกาเดินหน้าหรือถอยหลัง พร้อมเทียบความต่างเวลากับนิวยอร์กและลอนดอน ใช้ฟรี ไม่ต้องลงทะเบียน
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-26T09:00:00+07:00'
weight: 9
tool: true
topic: time
appCategory: UtilitiesApplication
keywords:
- เวลาออมแสง (DST)
- เวลาออมแสง (DST) ออนไลน์
- เวลาและนาฬิกา
---
<style>
.dst-tool{font:inherit;color:inherit;margin:1rem 0 2rem}
.dst-tool *{box-sizing:border-box}
.dst-row{display:flex;flex-wrap:wrap;gap:.6rem;align-items:center;margin-bottom:1rem}
.dst-label{font-weight:600}
.dst-select{flex:1 1 260px;max-width:100%;padding:.6rem .75rem;font:inherit;color:inherit;background:transparent;border:1px solid rgba(127,127,127,.55);border-radius:6px}
.dst-select option,.dst-select optgroup{color:#111;background:#fff}
.dst-card{border:1px solid rgba(127,127,127,.35);border-radius:8px;padding:1rem 1.1rem;margin-bottom:1rem;background:rgba(127,127,127,.06)}
.dst-card-recent{border-left:4px solid #d98e04}
.dst-card-next{border-left:4px solid #2f6fdd}
.dst-title{font-weight:700;margin-bottom:.4rem}
.dst-clock{font-size:2.6rem;font-weight:700;line-height:1.1;font-variant-numeric:tabular-nums}
.dst-muted{opacity:.78;font-size:.95rem;margin:.25rem 0}
.dst-big{font-size:1.3rem;font-weight:700;margin:.2rem 0}
.dst-badge{display:inline-block;margin:.35rem .4rem 0 0;padding:.15rem .65rem;border:1px solid currentColor;border-radius:999px;font-size:.88rem}
.dst-count{font-weight:600;font-variant-numeric:tabular-nums;margin-top:.5rem}
.dst-btn{font:inherit;color:inherit;cursor:pointer;padding:.5rem .9rem;border:1px solid currentColor;border-radius:6px;background:transparent}
.dst-btn:disabled{opacity:.5;cursor:default}
.dst-btn:focus-visible,.dst-select:focus-visible,.dst-link:focus-visible{outline:2px solid currentColor;outline-offset:2px}
.dst-replay{margin-top:.9rem;padding-top:.8rem;border-top:1px dashed rgba(127,127,127,.45)}
.dst-replay-time{display:inline-block;margin:.5rem .8rem 0 0;font-size:2rem;font-weight:700;font-variant-numeric:tabular-nums;padding:.1rem .6rem;border:2px solid rgba(127,127,127,.5);border-radius:6px}
.dst-replay-time.dst-after{border-color:#2f6fdd}
.dst-wrap{overflow-x:auto}
.dst-table{width:100%;border-collapse:collapse;font-size:.95rem}
.dst-table th,.dst-table td{text-align:left;padding:.5rem .6rem;border-bottom:1px solid rgba(127,127,127,.3);vertical-align:top}
.dst-link{font:inherit;color:inherit;text-decoration:underline;background:none;border:0;padding:0;cursor:pointer;text-align:left}
.dst-h{font-size:1.15rem;font-weight:700;margin:1.6rem 0 .6rem}
</style>

<div id="dst-tool" class="dst-tool"><noscript>ต้องเปิดใช้งาน JavaScript เพื่อใช้เครื่องมือนี้</noscript></div>

<script>
(function(){
'use strict';
var root=document.getElementById('dst-tool');
if(!root){return;}
var DAY=864e5,HORIZON=800*DAY,STEP=5*DAY;
var CITIES=[['นิวยอร์ก','America/New_York'],['ลอนดอน','Europe/London'],['เบอร์ลิน','Europe/Berlin'],['ซิดนีย์','Australia/Sydney']];
var PLACES=[
['สหรัฐอเมริกา (นิวยอร์ก)','America/New_York'],['สหรัฐอเมริกา (ลอสแอนเจลิส)','America/Los_Angeles'],['แคนาดา (โทรอนโต)','America/Toronto'],
['เม็กซิโก (เม็กซิโกซิตี)','America/Mexico_City'],['บราซิล (เซาเปาโล)','America/Sao_Paulo'],['ชิลี (ซานเตียโก)','America/Santiago'],
['สหราชอาณาจักร (ลอนดอน)','Europe/London'],['ไอร์แลนด์ (ดับลิน)','Europe/Dublin'],['โปรตุเกส (ลิสบอน)','Europe/Lisbon'],
['เยอรมนี (เบอร์ลิน)','Europe/Berlin'],['ฝรั่งเศส (ปารีส)','Europe/Paris'],['อิตาลี (โรม)','Europe/Rome'],['สเปน (มาดริด)','Europe/Madrid'],
['เนเธอร์แลนด์ (อัมสเตอร์ดัม)','Europe/Amsterdam'],['กรีซ (เอเธนส์)','Europe/Athens'],['ตุรกี (อิสตันบูล)','Europe/Istanbul'],['รัสเซีย (มอสโก)','Europe/Moscow'],
['อียิปต์ (ไคโร)','Africa/Cairo'],['อิสราเอล (เยรูซาเล็ม)','Asia/Jerusalem'],['ไทย (กรุงเทพฯ)','Asia/Bangkok'],['อินโดนีเซีย (จาการ์ตา)','Asia/Jakarta'],
['ญี่ปุ่น (โตเกียว)','Asia/Tokyo'],['อินเดีย (โกลกาตา)','Asia/Kolkata'],['ออสเตรเลีย (ซิดนีย์)','Australia/Sydney'],['ออสเตรเลีย (เพิร์ท)','Australia/Perth'],
['นิวซีแลนด์ (โอ๊คแลนด์)','Pacific/Auckland'],['สหรัฐอเมริกา (ฮาวาย)','Pacific/Honolulu']
];
var FALLBACK=['Asia/Bangkok','Asia/Jakarta','Asia/Tokyo','Asia/Kolkata','Asia/Dubai','Asia/Jerusalem','Europe/London','Europe/Berlin','Europe/Paris','Europe/Moscow','Africa/Cairo','America/New_York','America/Chicago','America/Denver','America/Los_Angeles','America/Toronto','America/Sao_Paulo','America/Santiago','Australia/Sydney','Australia/Perth','Pacific/Auckland','Pacific/Honolulu'];
var fmtCache={},ui={},replayTimer=null,tickTimer=null;
var state={tz:'',next:null,recent:null};
var local='';
try{local=Intl.DateTimeFormat().resolvedOptions().timeZone;}catch(e){local='';}
if(!local){local='Asia/Bangkok';}
function el(tag,cls,text){var e=document.createElement(tag);if(cls){e.className=cls;}if(text!==undefined){e.textContent=text;}return e;}
function pad(n){return (n>9?'':'0')+n;}
function getFmt(tz){
if(!fmtCache[tz]){fmtCache[tz]=new Intl.DateTimeFormat('en-US',{timeZone:tz,hourCycle:'h23',year:'numeric',month:'numeric',day:'numeric',hour:'numeric',minute:'numeric',second:'numeric'});}
return fmtCache[tz];
}
function offsetAt(tz,ts){
var p=getFmt(tz).formatToParts(new Date(ts)),o={},i,h;
for(i=0;p.length>i;i++){if(p[i].type!=='literal'){o[p[i].type]=parseInt(p[i].value,10);}}
h=o.hour;if(h===24){h=0;}
return Math.round((Date.UTC(o.year,o.month-1,o.day,h,o.minute,o.second)-Math.floor(ts/1000)*1000)/60000);
}
function scan(fn,from,to,limit){
var res=[],t=from,prev=fn(t),n,v,lo,hi,mid;
while(to>t){
n=Math.min(t+STEP,to);v=fn(n);
if(v!==prev){
lo=t;hi=n;
while(hi-lo>1000){mid=Math.floor((lo+hi)/2);if(fn(mid)===prev){lo=mid;}else{hi=mid;}}
res.push({ts:Math.round(hi/60000)*60000,from:prev,to:v});
if(limit&&res.length>=limit){return res;}
prev=v;
}
t=n;
}
return res;
}
function dstState(tz,ts){
var y=new Date(ts).getUTCFullYear();
var jan=offsetAt(tz,Date.UTC(y,0,1)),jul=offsetAt(tz,Date.UTC(y,6,1)),cur=offsetAt(tz,ts);
if(jan===jul){return 'none';}
return cur>Math.min(jan,jul)?'dst':'std';
}
function fmtOffset(m){var a=Math.abs(m),h=Math.floor(a/60),mm=a%60;return 'UTC'+(m>=0?'+':'-')+h+(mm?':'+pad(mm):'');}
function fmtDur(m){var a=Math.abs(m),h=Math.floor(a/60),mm=a%60,s=[];if(h){s.push(h+' ชั่วโมง');}if(mm){s.push(mm+' นาที');}return s.length?s.join(' '):'0 นาที';}
function fmtDiff(m){if(m===0){return 'เวลาเท่ากัน';}return (m>0?'เร็วกว่า ':'ช้ากว่า ')+fmtDur(m);}
function wallStr(ms){var d=new Date(ms);return pad(d.getUTCHours())+':'+pad(d.getUTCMinutes());}
function thDate(ms,withDay){
try{
var opt={timeZone:'UTC',day:'numeric',month:'long',year:'numeric'};
if(withDay){opt.weekday='long';}
return new Intl.DateTimeFormat('th-TH-u-ca-gregory',opt).format(new Date(ms));
}catch(e){return new Date(ms).toISOString().slice(0,10);}
}
function fmtCountdown(ms){
var s=Math.max(0,Math.floor(ms/1000)),d=Math.floor(s/86400),h=Math.floor(s%86400/3600),m=Math.floor(s%3600/60),c=s%60;
return 'เหลืออีก '+(d?d+' วัน ':'')+h+' ชั่วโมง '+m+' นาที '+c+' วินาที';
}
function tzLabel(tz){return tz.replace(/_/g,' ');}
function evDirection(ev){return ev.to>ev.from?'เดินหน้า':'ถอยหลัง';}
function evSummary(ev){
var wb=ev.ts+ev.from*60000,wa=ev.ts+ev.to*60000;
return 'นาฬิกา'+evDirection(ev)+' '+fmtDur(ev.to-ev.from)+' จาก '+wallStr(wb)+' เป็น '+wallStr(wa);
}
function evGapText(ev){
var wb=ev.ts+ev.from*60000,wa=ev.ts+ev.to*60000;
if(ev.to>ev.from){return 'ช่วง '+wallStr(wb)+'–'+wallStr(wa-60000)+' จะไม่เกิดขึ้นในคืนนั้น';}
return 'ช่วง '+wallStr(wa)+'–'+wallStr(wb-60000)+' จะเกิดขึ้นสองครั้งในคืนนั้น';
}
function stopReplay(){if(replayTimer){clearTimeout(replayTimer);replayTimer=null;}}
function buildReplay(ev){
var box=el('div','dst-replay');
var btn=el('button','dst-btn','▶ เล่นซ้ำช่วงเวลาที่นาฬิกาเปลี่ยน');
var disp=el('div','dst-replay-time','--:--');
var note=el('span','dst-muted','');
var start=ev.ts-3600000;
btn.type='button';
function paint(ts){
var after=ts>=ev.ts;
disp.textContent=wallStr(ts+(after?ev.to:ev.from)*60000);
disp.className=after?'dst-replay-time dst-after':'dst-replay-time';
note.textContent=after?'หลังเปลี่ยน ('+fmtOffset(ev.to)+')':'ก่อนเปลี่ยน ('+fmtOffset(ev.from)+')';
}
paint(start);
btn.addEventListener('click',function(){
var i=0;
stopReplay();
btn.disabled=true;
function step(){
var ts=start+i*60000;
paint(ts);
if(ts>=ev.ts+3600000){btn.disabled=false;replayTimer=null;return;}
i++;
replayTimer=setTimeout(step,(ts+60000===ev.ts)?700:40);
}
step();
});
box.appendChild(btn);
box.appendChild(el('br'));
box.appendChild(disp);
box.appendChild(note);
return box;
}
function buildTable(heads){
var wrap=el('div','dst-wrap'),table=el('table','dst-table'),thead=el('thead'),tr=el('tr'),i;
for(i=0;heads.length>i;i++){tr.appendChild(el('th','',heads[i]));}
thead.appendChild(tr);table.appendChild(thead);
wrap.appendChild(table);
return {wrap:wrap,body:table.appendChild(el('tbody'))};
}
function addRow(body,cells){
var tr=el('tr'),i;
for(i=0;cells.length>i;i++){
if(typeof cells[i]==='string'){tr.appendChild(el('td','',cells[i]));}
else{var td=el('td');td.appendChild(cells[i]);tr.appendChild(td);}
}
body.appendChild(tr);
}
function setZone(tz){
var sel=ui.select,i,found=false;
for(i=0;sel.options.length>i;i++){if(sel.options[i].value===tz){found=true;break;}}
if(!found){var o=el('option','',tzLabel(tz));o.value=tz;sel.appendChild(o);}
sel.value=tz;
render();
if(ui.top&&ui.top.scrollIntoView){ui.top.scrollIntoView({behavior:'smooth',block:'start'});}
}
function renderCurrent(out,tz,now){
var card=el('div','dst-card'),st=dstState(tz,now),txt;
txt=st==='dst'?'กำลังใช้เวลาออมแสง':(st==='std'?'ใช้เวลามาตรฐาน (นอกช่วงออมแสง)':'ที่นี่ไม่ใช้เวลาออมแสง');
card.appendChild(el('div','dst-title','เวลาตอนนี้ที่ '+tzLabel(tz)));
ui.clock=el('div','dst-clock','--:--:--');
ui.date=el('div','dst-muted','');
card.appendChild(ui.clock);
card.appendChild(ui.date);
card.appendChild(el('span','dst-badge',fmtOffset(offsetAt(tz,now))));
card.appendChild(el('span','dst-badge',txt));
out.appendChild(card);
}
function renderEvent(out,ev,kind){
var card=el('div','dst-card '+(kind==='next'?'dst-card-next':'dst-card-recent'));
var wb=ev.ts+ev.from*60000;
card.appendChild(el('div','dst-title',kind==='next'?'การเปลี่ยนเวลาครั้งถัดไป':'เพิ่งมีการเปลี่ยนเวลาในรอบ 7 วันที่ผ่านมา'));
card.appendChild(el('div','dst-big',thDate(wb,true)));
card.appendChild(el('div','',evSummary(ev)));
card.appendChild(el('div','dst-muted',fmtOffset(ev.from)+' → '+fmtOffset(ev.to)+' ('+evGapText(ev)+')'));
if(kind==='next'){ui.count=el('div','dst-count','');card.appendChild(ui.count);}
else{card.appendChild(el('div','dst-muted','ถ้านาฬิกาในอุปกรณ์ของคุณยังแสดงเวลาเดิม ให้ตรวจสอบการตั้งเวลาอัตโนมัติและอัปเดตระบบ'));}
card.appendChild(buildReplay(ev));
out.appendChild(card);
}
function renderDiff(out,tz,now){
var t=buildTable(['เมือง','ความต่างตอนนี้','การเปลี่ยนครั้งถัดไป']),i,c,d0,ch,cell;
out.appendChild(el('div','dst-h','ความต่างของเวลาเปลี่ยนอย่างไร'));
for(i=0;CITIES.length>i;i++){
c=CITIES[i];
if(c[1]===tz){continue;}
d0=offsetAt(tz,now)-offsetAt(c[1],now);
ch=scan(function(ts){return offsetAt(tz,ts)-offsetAt(c[1],ts);},now,now+HORIZON,1);
cell=ch.length?'เป็น '+fmtDiff(ch[0].to)+' ตั้งแต่ '+thDate(ch[0].ts+offsetAt(tz,ch[0].ts)*60000):'ไม่เปลี่ยนในช่วง 2 ปีข้างหน้า';
addRow(t.body,[c[0],fmtDiff(d0),cell]);
}
out.appendChild(t.wrap);
}
function renderPlaces(out,now){
var rows=[],still=[],i,p,r,t,btn,ev;
for(i=0;PLACES.length>i;i++){
p=PLACES[i];
try{
r=scan(function(ts){return offsetAt(p[1],ts);},now,now+HORIZON,1);
if(r.length){rows.push({name:p[0],tz:p[1],ev:r[0]});}else{still.push(p[0]);}
}catch(e){}
}
rows.sort(function(a,b){return a.ev.ts-b.ev.ts;});
out.appendChild(el('div','dst-h','การเปลี่ยนเวลาครั้งถัดไปในแต่ละประเทศ'));
t=buildTable(['วันที่เปลี่ยน','ประเทศ (เมือง)','การเปลี่ยนแปลง']);
for(i=0;rows.length>i;i++){
ev=rows[i].ev;
btn=el('button','dst-link',rows[i].name);
btn.type='button';
btn.addEventListener('click',(function(z){return function(){setZone(z);};})(rows[i].tz));
addRow(t.body,[thDate(ev.ts+ev.from*60000)+' '+wallStr(ev.ts+ev.from*60000),btn,evDirection(ev)+' '+fmtDur(ev.to-ev.from)+' ('+fmtOffset(ev.from)+' → '+fmtOffset(ev.to)+')']);
}
out.appendChild(t.wrap);
if(still.length){out.appendChild(el('p','dst-muted','ไม่พบการเปลี่ยนเวลาในช่วง 2 ปีข้างหน้า: '+still.join(', ')));}
}
function render(){
var tz=ui.select.value,now=Date.now(),list,i;
stopReplay();
state.tz=tz;state.next=null;state.recent=null;ui.count=null;
while(ui.out.firstChild){ui.out.removeChild(ui.out.firstChild);}
try{
list=scan(function(ts){return offsetAt(tz,ts);},now-7*DAY,now+HORIZON,0);
for(i=0;list.length>i;i++){
if(now>=list[i].ts){state.recent=list[i];}
else if(!state.next){state.next=list[i];}
}
renderCurrent(ui.out,tz,now);
if(state.recent){renderEvent(ui.out,state.recent,'recent');}
if(state.next){renderEvent(ui.out,state.next,'next');}
else{ui.out.appendChild(el('div','dst-card',tzLabel(tz)+' ไม่มีการเปลี่ยนเวลาออมแสงในช่วง 2 ปีข้างหน้า นาฬิกาจะใช้ค่าเวลาเดิมต่อเนื่อง'));}
renderDiff(ui.out,tz,now);
renderPlaces(ui.out,now);
tick();
}catch(e){
ui.out.appendChild(el('div','dst-card','เบราว์เซอร์นี้ไม่รองรับการคำนวณเขตเวลา กรุณาอัปเดตเบราว์เซอร์แล้วลองใหม่'));
}
}
function tick(){
var now=Date.now(),w,d;
if(!ui.clock){return;}
if(state.next&&now>=state.next.ts){render();return;}
w=now+offsetAt(state.tz,now)*60000;
d=new Date(w);
ui.clock.textContent=wallStr(w)+':'+pad(d.getUTCSeconds());
ui.date.textContent=thDate(w,true);
if(ui.count&&state.next){ui.count.textContent=fmtCountdown(state.next.ts-now);}
}
function build(){
var row=el('div','dst-row'),label=el('label','dst-label','เลือกเขตเวลา'),sel=el('select','dst-select'),zones=[],groups={},order=[],g,i,z,parts,grp,opt,mine;
label.setAttribute('for','dst-zone');
sel.id='dst-zone';
try{if(Intl.supportedValuesOf){zones=Intl.supportedValuesOf('timeZone').slice();}}catch(e){zones=[];}
if(!zones.length){zones=FALLBACK.slice();}
zones.sort();
mine=el('optgroup');mine.label='เขตเวลาของคุณ';
opt=el('option','',tzLabel(local));opt.value=local;mine.appendChild(opt);
sel.appendChild(mine);
for(i=0;zones.length>i;i++){
z=zones[i];parts=z.split('/');
grp=parts.length>1?parts[0]:'อื่น ๆ';
if(!groups[grp]){g=el('optgroup');g.label=grp.replace(/_/g,' ');groups[grp]=g;order.push(grp);}
opt=el('option','',parts.length>1?parts.slice(1).join(' / ').replace(/_/g,' '):z);
opt.value=z;groups[grp].appendChild(opt);
}
for(i=0;order.length>i;i++){sel.appendChild(groups[order[i]]);}
sel.value=local;
sel.addEventListener('change',render);
row.appendChild(label);row.appendChild(sel);
ui.select=sel;ui.top=row;
ui.out=el('div');
while(root.firstChild){root.removeChild(root.firstChild);}
root.appendChild(row);
root.appendChild(ui.out);
}
try{
build();
render();
tickTimer=setInterval(tick,1000);
}catch(e){
root.textContent='ไม่สามารถโหลดเครื่องมือได้ในเบราว์เซอร์นี้ กรุณาอัปเดตเบราว์เซอร์แล้วลองใหม่';
}
})();
</script>

## วิธีใช้เครื่องมือเวลาออมแสง (DST)

1. **เปิดหน้านี้** เครื่องมือจะตรวจจับเขตเวลาจากอุปกรณ์ของคุณโดยอัตโนมัติ และแสดงเวลาปัจจุบัน วันที่ และค่า UTC ของที่นั่น
2. **ดูป้ายสถานะ** ว่าตอนนี้ที่นั่นกำลังใช้เวลาออมแสง ใช้เวลามาตรฐาน หรือไม่ใช้เวลาออมแสงเลย
3. **ดูการเปลี่ยนเวลาครั้งถัดไป** เครื่องมือจะบอกวันที่ ทิศทางที่นาฬิกาจะเปลี่ยน (เดินหน้าหรือถอยหลัง) จำนวนเวลาที่เปลี่ยน และเวลาที่เหลือแบบนับถอยหลัง
4. **กด "เล่นซ้ำช่วงเวลาที่นาฬิกาเปลี่ยน"** เพื่อดูนาฬิกาจำลองตั้งแต่ 1 ชั่วโมงก่อนถึง 1 ชั่วโมงหลังการเปลี่ยนเวลา จะเห็นชัดว่าเวลากระโดดข้ามหรือย้อนกลับตรงไหน
5. **เลือกเขตเวลาอื่น** จากรายการด้านบน เพื่อตรวจสอบเมืองที่คุณมีเพื่อน ครอบครัว หรือลูกค้าอยู่
6. **ดูตาราง "ความต่างของเวลาเปลี่ยนอย่างไร"** เพื่อเทียบเวลาของคุณกับนิวยอร์ก ลอนดอน เบอร์ลิน และซิดนีย์ พร้อมวันที่ความต่างจะเปลี่ยนครั้งถัดไป
7. **ดูตารางแต่ละประเทศ** เรียงตามวันที่ใกล้ที่สุด คลิกชื่อประเทศเพื่อสลับไปดูรายละเอียดของเขตเวลานั้นทันที
8. **หากเพิ่งมีการเปลี่ยนเวลาในรอบ 7 วัน** จะมีกล่องแจ้งเตือนแสดงขึ้นมา ให้เปรียบเทียบกับนาฬิกาในอุปกรณ์ของคุณ หากยังไม่ตรงกัน ให้เปิดการตั้งเวลาอัตโนมัติและอัปเดตระบบ

**หมายเหตุ:** ผลลัพธ์คำนวณจากฐานข้อมูลเขตเวลาของเบราว์เซอร์และอุปกรณ์ของคุณ หากประเทศใดเพิ่งเปลี่ยนกฎหมายเวลา และอุปกรณ์ยังไม่ได้อัปเดต ผลอาจต่างจากความจริง ควรอัปเดตระบบปฏิบัติการและเบราว์เซอร์อยู่เสมอ

## ความหมายของคำศัพท์

- **เวลาออมแสง (DST, Daylight Saving Time):** การปรับนาฬิกาไปข้างหน้าในช่วงฤดูร้อน เพื่อให้ตอนเย็นมีแสงสว่างนานขึ้น แล้วปรับกลับในช่วงปลายปี
- **เวลามาตรฐาน (Standard Time):** เวลาปกติของเขตเวลานั้น ก่อนปรับเข้าสู่ช่วงเวลาออมแสง และกลับมาใช้อีกครั้งหลังสิ้นสุดช่วงออมแสง
- **เขตเวลา (Time Zone):** พื้นที่ที่ใช้เวลาท้องถิ่นเดียวกัน เช่น ประเทศไทยอยู่ในเขตเวลา UTC+7
- **ชื่อเขตเวลา IANA:** ชื่อมาตรฐานที่ใช้อ้างอิงเขตเวลาในระบบคอมพิวเตอร์ รูปแบบ ทวีป/เมือง เช่น Asia/Bangkok หรือ America/New York
- **UTC (เวลาสากลเชิงพิกัด):** มาตรฐานเวลากลางของโลก ใช้เป็นจุดอ้างอิงในการคำนวณเวลาท้องถิ่นของทุกเขตเวลา
- **ค่าต่างจาก UTC (UTC Offset):** จำนวนชั่วโมงและนาทีที่เวลาท้องถิ่นเร็วกว่าหรือช้ากว่า UTC เช่น UTC+7 หมายถึงเร็วกว่า UTC 7 ชั่วโมง
- **เดินหน้า (Spring Forward):** การปรับนาฬิกาไปข้างหน้า มักเป็น 1 ชั่วโมง ทำให้คืนนั้นสั้นลงและมีช่วงเวลาหนึ่งชั่วโมงที่ไม่เกิดขึ้นจริง
- **ถอยหลัง (Fall Back):** การปรับนาฬิกากลับหลัง มักเป็น 1 ชั่วโมง ทำให้คืนนั้นยาวขึ้นและมีช่วงเวลาหนึ่งชั่วโมงที่เกิดขึ้นสองครั้ง
- **เวลาท้องถิ่น (Local Time):** เวลาที่ใช้จริงในสถานที่นั้น ซึ่งคำนวณจาก UTC บวกค่าต่างของเขตเวลา และรวมเวลาออมแสงแล้วหากมี
- **ความต่างของเวลา (Time Difference):** ระยะห่างของเวลาท้องถิ่นระหว่างสองเมือง ซึ่งอาจเปลี่ยนไปเมื่ออีกฝ่ายเข้าหรือออกจากเวลาออมแสง แม้เมืองของคุณจะไม่เปลี่ยนเวลาเลย
- **ซีกโลกเหนือ / ซีกโลกใต้:** สองซีกโลกมีฤดูกาลตรงข้ามกัน จึงเปลี่ยนเวลาออมแสงในทิศทางตรงข้ามกัน เช่น ซีกโลกใต้มักเดินหน้านาฬิกาในช่วงเดือนกันยายนถึงตุลาคม
- **ฐานข้อมูลเขตเวลา (tz database):** ฐานข้อมูลกฎเวลาของทุกพื้นที่ที่ระบบปฏิบัติการและเบราว์เซอร์ใช้คำนวณเวลา ต้องอัปเดตเมื่อประเทศใดเปลี่ยนกฎ
- **นับถอยหลัง (Countdown):** เวลาที่เหลือก่อนถึงช่วงที่นาฬิกาจะเปลี่ยน คำนวณแบบเรียลไทม์จากเวลาปัจจุบันของอุปกรณ์