---
title: ทดสอบเมาส์ ออนไลน์ ฟรี
h1: ทดสอบเมาส์
description: ทดสอบเมาส์ออนไลน์ฟรี เช็กปุ่มซ้าย ขวา กลาง ล้อเลื่อน อาการคลิกซ้ำ Polling Rate, CPS และความแม่นยำ ดูผลทันทีบนเบราว์เซอร์ ไม่ต้องติดตั้งหรือสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-18T09:00:00+07:00'
weight: 126
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ทดสอบเมาส์
- ทดสอบเมาส์ ออนไลน์
- ทดสอบและวัดค่า
- ทดสอบคลิกซ้ำ
- ทดสอบ polling rate
- ทดสอบ CPS
---

ตรวจสอบเมาส์ได้ครบในหน้าเดียว ตั้งแต่ปุ่มกด ล้อเลื่อน อาการคลิกซ้ำ ความเร็วในการส่งสัญญาณ (Polling Rate) ไปจนถึงความแม่นยำและ DPI ทำงานในเบราว์เซอร์ทั้งหมด ไม่ต้องติดตั้งโปรแกรม

<style>
.mt{--a:#2f7df6;--ok:#16a34a;--bad:#dc2626;--b:rgba(127,127,127,.4);--bg:rgba(127,127,127,.1);max-width:860px;margin:1rem auto;font-family:inherit}
.mt *{box-sizing:border-box}
.mt-tabs{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:12px}
.mt-tab,.mt-d,.mt-btn{padding:8px 14px;border:1px solid var(--b);border-radius:999px;background:transparent;color:inherit;cursor:pointer;font:inherit;font-size:.9rem}
.mt-tab[aria-selected=true],.mt-d.on{background:var(--a);border-color:var(--a);color:#fff}
.mt-btn{border-radius:8px}
.mt-p{display:none}
.mt-p.on{display:block}
.mt-pad{height:230px;border:2px dashed var(--b);border-radius:12px;background:var(--bg);display:flex;align-items:center;justify-content:center;text-align:center;padding:12px;user-select:none;-webkit-user-select:none;touch-action:none;cursor:crosshair;font-size:.95rem}
.mt-row{display:flex;flex-wrap:wrap;gap:8px;margin:10px 0}
.mt-chip{flex:1 1 110px;border:1px solid var(--b);border-radius:10px;padding:8px;text-align:center;font-size:.85rem}
.mt-chip b{display:block;font-size:1.3rem}
.mt-chip small{display:block;opacity:.8}
.mt-chip.hit{border-color:var(--ok);background:rgba(22,163,74,.15)}
.mt-chip.bad{border-color:var(--bad);background:rgba(220,38,38,.18)}
.mt-g{display:grid;grid-template-columns:repeat(auto-fit,minmax(130px,1fr));gap:8px;margin:10px 0}
.mt-st{border:1px solid var(--b);border-radius:10px;padding:8px;font-size:.8rem}
.mt-st b{display:block;font-size:1.05rem;word-break:break-word}
.mt-v{padding:10px 12px;border-radius:10px;border:1px solid var(--b);background:var(--bg);font-size:.9rem;margin:10px 0}
.mt-v.ok{border-color:var(--ok);background:rgba(22,163,74,.15)}
.mt-v.bad{border-color:var(--bad);background:rgba(220,38,38,.15)}
.mt-h{display:flex;align-items:flex-end;gap:6px;min-height:100px;margin:10px 0}
.mt-bc{flex:1;display:flex;flex-direction:column;justify-content:flex-end;align-items:center;text-align:center;font-size:.7rem}
.mt-bc i{display:block;width:100%;min-height:2px;background:var(--a);border-radius:3px 3px 0 0}
.mt-bc i.r{background:var(--bad)}
.mt-log{white-space:pre-line;font-size:.8rem;max-height:120px;overflow:auto;border:1px solid var(--b);border-radius:10px;padding:8px;min-height:36px}
.mt-in{width:100%;padding:8px;border:1px solid var(--b);border-radius:8px;background:transparent;color:inherit;font:inherit}
.mt-cv{display:block;width:100%;max-width:320px;margin:0 auto;border:1px solid var(--b);border-radius:12px;background:var(--bg);touch-action:none;cursor:crosshair}
.mt-note{font-size:.8rem;opacity:.8;margin:6px 0}
.mt-foot{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin-top:16px}
</style>

<div class="mt" id="mt-app">
<div class="mt-tabs" role="tablist">
<button class="mt-tab" role="tab" aria-selected="true" data-p="mt-p1">ปุ่ม &amp; ล้อเลื่อน</button>
<button class="mt-tab" role="tab" aria-selected="false" data-p="mt-p2">Polling Rate</button>
<button class="mt-tab" role="tab" aria-selected="false" data-p="mt-p3">CPS</button>
<button class="mt-tab" role="tab" aria-selected="false" data-p="mt-p4">ความแม่นยำ</button>
<button class="mt-tab" role="tab" aria-selected="false" data-p="mt-p5">DPI</button>
</div>
<div class="mt-p on" id="mt-p1">
<div class="mt-pad" id="mt-pad">คลิกทุกปุ่ม หมุนล้อเลื่อน และลองดับเบิลคลิกเร็ว ๆ ในกรอบนี้<br>(เมนูคลิกขวาและการเลื่อนด้วยปุ่มกลางถูกปิดไว้ชั่วคราวเพื่อให้ทดสอบได้)</div>
<div class="mt-row" id="mt-chips"></div>
<div class="mt-v" id="mt-v1"></div>
<div class="mt-g">
<div class="mt-st">ตำแหน่งเคอร์เซอร์<b id="mt-xy">—</b></div>
<div class="mt-st">ช่วงเวลาคลิกล่าสุด<b id="mt-iv">—</b></div>
<div class="mt-st">ค่าการเลื่อนล้อ<b id="mt-wd">—</b></div>
<div class="mt-st">ทิศทางล้อ<b id="mt-wa">—</b></div>
<div class="mt-st">คุณภาพล้อเลื่อน<b id="mt-wq">—</b></div>
</div>
<div class="mt-note">กราฟช่วงเวลาระหว่างคลิกซ้ำปุ่มเดิม (แท่งสีแดง = ต่ำกว่า 60 ms เสี่ยงคลิกซ้ำ)</div>
<div class="mt-h" id="mt-h"></div>
<div class="mt-log" id="mt-log"></div>
</div>
<div class="mt-p" id="mt-p2">
<div class="mt-pad" id="mt-pad2">ขยับเมาส์เป็นวงกลมเร็ว ๆ ต่อเนื่องในกรอบนี้ประมาณ 3-5 วินาที</div>
<div class="mt-g">
<div class="mt-st">ปัจจุบัน<b id="mt-hz">—</b></div>
<div class="mt-st">เฉลี่ย<b id="mt-hza">—</b></div>
<div class="mt-st">สูงสุด<b id="mt-hzx">—</b></div>
<div class="mt-st">ต่ำสุด<b id="mt-hzn">—</b></div>
<div class="mt-st">ค่ามาตรฐานใกล้เคียง<b id="mt-hzs">—</b></div>
</div>
<div class="mt-note" id="mt-mode"></div>
</div>
<div class="mt-p" id="mt-p3">
<div class="mt-row" id="mt-ds">
<button class="mt-d" data-s="1">1 วินาที</button>
<button class="mt-d on" data-s="5">5 วินาที</button>
<button class="mt-d" data-s="10">10 วินาที</button>
<button class="mt-d" data-s="30">30 วินาที</button>
</div>
<div class="mt-pad" id="mt-pad3">คลิกซ้ายที่นี่เพื่อเริ่มจับเวลา แล้วคลิกให้เร็วที่สุด</div>
<div class="mt-g">
<div class="mt-st">เวลาที่เหลือ<b id="mt-cl">—</b></div>
<div class="mt-st">จำนวนคลิก<b id="mt-cn">0</b></div>
<div class="mt-st">CPS (ครั้ง/วินาที)<b id="mt-cp">—</b></div>
</div>
</div>
<div class="mt-p" id="mt-p4">
<canvas class="mt-cv" id="mt-cv" width="320" height="320"></canvas>
<div class="mt-note" style="text-align:center">กดเมาส์ซ้ายค้างแล้วลากตามวงกลมเส้นประให้ครบรอบ จากนั้นปล่อยเพื่อดูผล</div>
<div class="mt-g">
<div class="mt-st">เบี่ยงเบนเฉลี่ย<b id="mt-ad">—</b></div>
<div class="mt-st">เบี่ยงเบนสูงสุด<b id="mt-am">—</b></div>
<div class="mt-st">จุดหักมุมกะทันหัน<b id="mt-at">—</b></div>
<div class="mt-st">คะแนนความนิ่ง<b id="mt-as">—</b></div>
</div>
<div class="mt-note">ผลนี้ขึ้นกับฝีมือมือด้วย ควรลองหลายครั้งและเทียบกับเมาส์ตัวอื่น</div>
</div>
<div class="mt-p" id="mt-p5">
<div class="mt-g">
<label class="mt-st">DPI ของเมาส์<input class="mt-in" id="mt-dpi" type="number" min="100" step="50" value="800"></label>
<label class="mt-st">ความไวในเกม<input class="mt-in" id="mt-sens" type="number" min="0.01" step="0.01" value="1"></label>
<label class="mt-st">เกม<select class="mt-in" id="mt-game"><option value="0.022">CS2 / CS:GO</option><option value="0.07">Valorant</option><option value="0.0066">Overwatch 2</option><option value="0.022">Apex Legends</option></select></label>
</div>
<div class="mt-g">
<div class="mt-st">eDPI<b id="mt-ed">—</b></div>
<div class="mt-st">ระยะหมุน 360 องศา<b id="mt-cm">—</b></div>
</div>
<div class="mt-pad" id="mt-pad5" style="height:130px">วัด DPI โดยประมาณ: กดเมาส์ซ้ายค้างในกรอบนี้ ลากเมาส์ตรง ๆ ไปทางซ้ายหรือขวาให้ได้ 10 ซม. แล้วปล่อย</div>
<div class="mt-g"><div class="mt-st">DPI ที่วัดได้ (โดยประมาณ)<b id="mt-dm">—</b></div></div>
<div class="mt-note">ผลวัดจะคลาดเคลื่อนได้หากเปิด Enhance pointer precision, ปรับความเร็วเมาส์ใน OS ไม่ใช่ค่ากลาง หรือซูมหน้าเว็บ</div>
</div>
<div class="mt-foot">
<button class="mt-btn" id="mt-copy">คัดลอกผลทั้งหมด</button>
<button class="mt-btn" id="mt-reset">รีเซ็ตทั้งหมด</button>
<span class="mt-note" id="mt-msg"></span>
</div>
</div>

<script>
(function(){
var d=document,$=function(i){return d.getElementById(i)};
function T(i,v){var e=$(i);if(e)e.textContent=v}
function mine(e){return !e.pointerType||e.pointerType==='mouse'}
var R={};
var tabs=d.querySelectorAll('#mt-app .mt-tab'),panels=d.querySelectorAll('#mt-app .mt-p');
tabs.forEach(function(t){t.addEventListener('click',function(){
tabs.forEach(function(x){x.setAttribute('aria-selected',x===t?'true':'false')});
panels.forEach(function(p){p.classList.toggle('on',p.id===t.getAttribute('data-p'))});
});});
var N=['ซ้าย','กลาง','ขวา','ย้อนกลับ','ไปข้างหน้า'],cnt,chat,last,bins,logs,wl,wRev,wS,wT;
var pad=$('mt-pad');
function draw1(){
var h='',i,ok=[],bad=[];
for(i=0;i<5;i++){
var c=chat[i]>0?' bad':cnt[i]>0?' hit':'';
var s=chat[i]>0?'คลิกซ้ำ '+chat[i]+' ครั้ง':cnt[i]>=10?'ผ่าน':cnt[i]>0?'กดอีก '+(10-cnt[i])+' ครั้ง':'ยังไม่ทดสอบ';
h+='<div class="mt-chip'+c+'">'+N[i]+'<b>'+cnt[i]+'</b><small>'+s+'</small></div>';
if(chat[i]>0)bad.push(N[i]);else if(cnt[i]>=10)ok.push(N[i]);
}
$('mt-chips').innerHTML=h;
var v=$('mt-v1');
if(bad.length){v.className='mt-v bad';v.textContent='⚠ พบอาการคลิกซ้ำที่ปุ่ม: '+bad.join(', ')+' (ช่วงเวลาระหว่างคลิกต่ำกว่า 60 ms) สวิตช์อาจสึกหรอ';}
else if(ok.length){v.className='mt-v ok';v.textContent='✓ ปุ่มที่ผ่าน: '+ok.join(', ')+' ไม่พบอาการคลิกซ้ำ';}
else{v.className='mt-v';v.textContent='กดแต่ละปุ่มอย่างน้อย 10 ครั้ง (ลองดับเบิลคลิกเร็ว ๆ ด้วย) เพื่อให้ผลน่าเชื่อถือ';}
R.btn=(bad.length||ok.length)?v.textContent:'';
var mx=Math.max.apply(null,bins.concat([1])),L=['&lt;60','60–100','100–200','200–400','&gt;400'],b='';
for(i=0;i<5;i++)b+='<div class="mt-bc"><i class="'+(i?'':'r')+'" style="height:'+Math.round(bins[i]/mx*56)+'px"></i><span>'+L[i]+' ms<br>'+bins[i]+'</span></div>';
$('mt-h').innerHTML=b;
$('mt-log').textContent=logs.join('\n');
}
function reset1(){
cnt=[0,0,0,0,0];chat=[0,0,0,0,0];last=[0,0,0,0,0];bins=[0,0,0,0,0];logs=[];wl=[];wRev=0;wS=0;wT=0;
['mt-xy','mt-iv','mt-wd','mt-wa','mt-wq'].forEach(function(i){T(i,'—')});
draw1();
}
function stop(e){e.preventDefault()}
['contextmenu','auxclick','mouseup','dblclick'].forEach(function(n){pad.addEventListener(n,stop)});
pad.addEventListener('mousedown',function(e){
e.preventDefault();
var b=e.button;if(b<0||b>4)return;
var t=performance.now(),iv=last[b]?t-last[b]:null;
last[b]=t;cnt[b]++;
if(iv!==null){
if(iv<60)chat[b]++;
bins[iv<60?0:iv<100?1:iv<200?2:iv<400?3:4]++;
T('mt-iv',Math.round(iv)+' ms');
}
logs.unshift(N[b]+' · '+(iv===null?'ครั้งแรก':Math.round(iv)+' ms')+(iv!==null&&iv<60?' ⚠ คลิกซ้ำ':''));
if(logs.length>8)logs.length=8;
draw1();
});
pad.addEventListener('mousemove',function(e){
var r=pad.getBoundingClientRect();
T('mt-xy',Math.round(e.clientX-r.left)+', '+Math.round(e.clientY-r.top));
});
pad.addEventListener('wheel',function(e){
e.preventDefault();
var dy=e.deltaY,dx=e.deltaX,t=performance.now(),s=dy>0?1:dy<0?-1:0;
T('mt-wd','Y '+Math.round(dy)+' / X '+Math.round(dx));
T('mt-wa',dy<0?'▲ ขึ้น':dy>0?'▼ ลง':dx<0?'◀ ซ้าย':dx>0?'▶ ขวา':'—');
if(s){
if(wS&&s!==wS&&t-wT<150)wRev++;
wS=s;wT=t;wl.push(Math.abs(dy));if(wl.length>30)wl.shift();
}
var q='ย้อนทิศ '+wRev+' ครั้ง';
if(wl.length>=6){var mn=Math.min.apply(null,wl),mxv=Math.max.apply(null,wl);q+=' · ค่า'+(mxv/mn<=2.5?'สม่ำเสมอ':'ผันผวน');}
T('mt-wq',q);
},{passive:false});
var p2=$('mt-pad2'),raw='onpointerrawupdate' in window,pr,ps,pt;
function reset2(){pr=[];ps=[];pt=0;['mt-hz','mt-hza','mt-hzx','mt-hzn','mt-hzs'].forEach(function(i){T(i,'—')});delete R.hz;}
T('mt-mode',raw?'โหมดข้อมูลดิบ (pointerrawupdate): วัดความถี่ได้ใกล้เคียงของจริง':'เบราว์เซอร์นี้ไม่รองรับ pointerrawupdate ค่าที่ได้อาจต่ำกว่าจริง แนะนำให้ใช้ Chrome หรือ Edge');
p2.addEventListener(raw?'pointerrawupdate':'pointermove',function(e){
if(!mine(e))return;
var ev=(!raw&&e.getCoalescedEvents&&e.getCoalescedEvents())||[],i;
if(!ev.length)ev=[e];
for(i=0;i<ev.length;i++)pr.push(ev[i].timeStamp);
pt=performance.now();
});
setInterval(function(){
var n=performance.now();
while(pr.length&&n-pr[0]>1000)pr.shift();
if(n-pt>400){pr=[];return;}
if(pr.length<4)return;
var sp=pr[pr.length-1]-pr[0];if(sp<150)return;
var hz=(pr.length-1)/sp*1000,sum=0,i;
ps.push(hz);if(ps.length>240)ps.shift();
for(i=0;i<ps.length;i++)sum+=ps[i];
var av=sum/ps.length,S=[125,250,500,1000,2000,4000,8000],best=S[0];
S.forEach(function(x){if(Math.abs(x-av)<Math.abs(best-av))best=x});
T('mt-hz',Math.round(hz)+' Hz');T('mt-hza',Math.round(av)+' Hz');
T('mt-hzx',Math.round(Math.max.apply(null,ps))+' Hz');T('mt-hzn',Math.round(Math.min.apply(null,ps))+' Hz');
T('mt-hzs','≈ '+best+' Hz');
R.hz='Polling rate เฉลี่ย '+Math.round(av)+' Hz (ใกล้เคียง '+best+' Hz)';
},250);
var dur=5,cc,run,cend,ctm,cbest={};
function reset3(){clearInterval(ctm);run=false;cc=0;T('mt-cl',dur+' วินาที');T('mt-cn','0');T('mt-cp','—');delete R.cps;}
var ds=d.querySelectorAll('#mt-app .mt-d');
ds.forEach(function(b){b.addEventListener('click',function(){
if(run)return;
dur=+b.getAttribute('data-s');
ds.forEach(function(x){x.classList.toggle('on',x===b)});
reset3();
});});
var p3=$('mt-pad3');
p3.addEventListener('contextmenu',stop);
function tick(){
var l=cend-performance.now();
if(l>0){T('mt-cl',(l/1000).toFixed(1)+' วินาที');return;}
clearInterval(ctm);run=false;
var c=cc/dur;
if(!cbest[dur]||c>cbest[dur])cbest[dur]=c;
T('mt-cl','หมดเวลา');
T('mt-cp',c.toFixed(2)+' (ดีที่สุด '+cbest[dur].toFixed(2)+')');
R.cps='CPS ('+dur+' วินาที): '+c.toFixed(2)+' ครั้ง/วินาที';
}
p3.addEventListener('mousedown',function(e){
if(e.button!==0)return;
e.preventDefault();
var n=performance.now();
if(!run){run=true;cc=0;cend=n+dur*1000;ctm=setInterval(tick,50);}
if(n<=cend){cc++;T('mt-cn',cc);}
});
var cv=$('mt-cv'),cx=cv.getContext('2d'),W=320,Rd=110,dn=false,pts=[];
function guide(){
cx.clearRect(0,0,W,W);cx.strokeStyle='rgba(127,127,127,.7)';cx.lineWidth=2;cx.setLineDash([6,6]);
cx.beginPath();cx.arc(W/2,W/2,Rd,0,6.2832);cx.stroke();cx.setLineDash([]);
}
function reset4(){pts=[];dn=false;guide();['mt-ad','mt-am','mt-at','mt-as'].forEach(function(i){T(i,'—')});delete R.acc;}
function pos(e){var r=cv.getBoundingClientRect();return{x:(e.clientX-r.left)*W/r.width,y:(e.clientY-r.top)*W/r.height};}
function done4(){
if(pts.length<30){T('mt-as','วาดสั้นเกินไป ลองใหม่');return;}
var s=0,m=0,sh=0,i,c=W/2;
for(i=0;i<pts.length;i++){
var dv=Math.abs(Math.sqrt(Math.pow(pts[i].x-c,2)+Math.pow(pts[i].y-c,2))-Rd);
s+=dv;if(dv>m)m=dv;
}
for(i=2;i<pts.length;i++){
var a=pts[i-1].x-pts[i-2].x,b=pts[i-1].y-pts[i-2].y,x=pts[i].x-pts[i-1].x,y=pts[i].y-pts[i-1].y;
var l=Math.sqrt(a*a+b*b)*Math.sqrt(x*x+y*y);
if(l>8&&(a*x+b*y)/l<0)sh++;
}
var av=s/pts.length,sc=Math.max(0,Math.round(100-av*3-sh*2));
var lb=sc>=80?'นิ่งดี':sc>=60?'พอใช้':'สั่นหรือแกว่งมาก';
T('mt-ad',av.toFixed(1)+' px');T('mt-am',m.toFixed(1)+' px');T('mt-at',sh+' จุด');T('mt-as',sc+'/100 · '+lb);
R.acc='ความนิ่งของเคอร์เซอร์: '+sc+'/100 (เบี่ยงเบนเฉลี่ย '+av.toFixed(1)+' px, หักมุมกะทันหัน '+sh+' จุด)';
}
cv.addEventListener('pointerdown',function(e){
if(!mine(e)||e.button!==0)return;
dn=true;pts=[pos(e)];guide();
try{cv.setPointerCapture(e.pointerId)}catch(x){}
});
cv.addEventListener('pointermove',function(e){
if(!dn)return;
var p=pos(e),q=pts[pts.length-1];
pts.push(p);
cx.strokeStyle='#2f7df6';cx.lineWidth=2;cx.beginPath();cx.moveTo(q.x,q.y);cx.lineTo(p.x,p.y);cx.stroke();
});
cv.addEventListener('pointerup',function(){if(!dn)return;dn=false;done4();});
function calc(){
var a=+$('mt-dpi').value,s=+$('mt-sens').value,y=+$('mt-game').value;
if(a>0&&s>0&&y>0){
var ed=Math.round(a*s*100)/100,cm=(360/(a*s*y)*2.54).toFixed(1);
T('mt-ed',ed);T('mt-cm',cm+' ซม.');
R.dpi='eDPI '+ed+' · หมุน 360° = '+cm+' ซม. (DPI '+a+', ความไว '+s+')';
}else{T('mt-ed','—');T('mt-cm','—');delete R.dpi;}
}
['mt-dpi','mt-sens','mt-game'].forEach(function(i){$(i).addEventListener('input',calc);$(i).addEventListener('change',calc);});
var meas=false,mv=0,p5=$('mt-pad5');
p5.addEventListener('contextmenu',stop);
p5.addEventListener('mousedown',function(e){
if(e.button!==0)return;
e.preventDefault();meas=true;mv=0;T('mt-dm','กำลังวัด...');
});
d.addEventListener('mousemove',function(e){if(meas)mv+=Math.abs(e.movementX||0);});
d.addEventListener('mouseup',function(){
if(!meas)return;
meas=false;
if(mv<20){T('mt-dm','ระยะสั้นเกินไป ลองใหม่');return;}
var est=Math.round(mv/(10/2.54));
T('mt-dm','≈ '+est+' DPI (ลาก '+Math.round(mv)+' px)');
R.est='DPI ที่วัดได้โดยประมาณ: '+est;
});
function copy(t){
if(navigator.clipboard&&navigator.clipboard.writeText)return navigator.clipboard.writeText(t);
return new Promise(function(res,rej){
var a=d.createElement('textarea');a.value=t;d.body.appendChild(a);a.select();
try{d.execCommand('copy')?res():rej();}catch(x){rej();}
d.body.removeChild(a);
});
}
$('mt-copy').addEventListener('click',function(){
var lines=['ผลทดสอบเมาส์ ('+new Date().toLocaleString('th-TH')+')',R.btn,R.hz,R.cps,R.acc,R.dpi,R.est].filter(Boolean);
if(lines.length<2){T('mt-msg','ยังไม่มีผลให้คัดลอก ลองทดสอบก่อน');return;}
copy(lines.join('\n')).then(function(){T('mt-msg','คัดลอกแล้ว');},function(){T('mt-msg','คัดลอกไม่สำเร็จ');});
});
$('mt-reset').addEventListener('click',function(){
R={};reset1();reset2();reset3();reset4();T('mt-dm','—');calc();T('mt-msg','รีเซ็ตแล้ว');
});
reset1();reset2();reset3();reset4();calc();
})();
</script>

## วิธีใช้งานเครื่องมือทดสอบเมาส์

1. **ปุ่ม & ล้อเลื่อน**: เลื่อนเคอร์เซอร์เข้าไปในกรอบ แล้วกดปุ่มซ้าย กลาง ขวา และปุ่มด้านข้างอย่างน้อยปุ่มละ 10 ครั้ง ลองดับเบิลคลิกเร็ว ๆ ด้วย หากช่วงเวลาระหว่างคลิกต่ำกว่า 60 ms ปุ่มนั้นจะขึ้นสีแดงและแจ้งว่าพบอาการคลิกซ้ำ จากนั้นหมุนล้อเลื่อนทีละรอยหยักทั้งขึ้นและลงเพื่อดูค่าและทิศทาง
2. **Polling Rate**: ขยับเมาส์เป็นวงกลมเร็ว ๆ ต่อเนื่อง 3-5 วินาที ดูค่าเฉลี่ยและค่าใกล้เคียงมาตรฐาน (125, 500, 1000 Hz ฯลฯ) ควรใช้ Chrome หรือ Edge เพื่อให้ได้ค่าที่ใกล้ความจริงที่สุด
3. **CPS**: เลือกระยะเวลา แล้วคลิกซ้ายในกรอบ ระบบจะเริ่มจับเวลาตั้งแต่คลิกแรกและแสดงค่า CPS พร้อมสถิติดีที่สุดของแต่ละระยะเวลา
4. **ความแม่นยำ**: กดเมาส์ซ้ายค้างและลากตามวงกลมเส้นประให้ครบรอบ แล้วปล่อย ระบบจะแสดงค่าเบี่ยงเบนและคะแนนความนิ่งของเคอร์เซอร์
5. **DPI**: กรอก DPI ความไว และเลือกเกมเพื่อคำนวณ eDPI กับระยะหมุน 360 องศา หรือกดเมาส์ค้างในกรอบแล้วลากตรง 10 ซม. เพื่อประมาณ DPI จริง
6. **คัดลอกผล**: กดคัดลอกผลทั้งหมดเพื่อนำไปแนบกับการเคลมประกัน หรือใช้ยืนยันสภาพเมาส์มือสอง และกดรีเซ็ตเพื่อเริ่มทดสอบใหม่

### เมื่อพบปัญหา ควรทำอย่างไร

- **คลิกซ้ำหรือดับเบิลคลิกเอง**: ลองเป่าฝุ่นหรือทำความสะอาดรอบปุ่ม อัปเดตไดรเวอร์ และตรวจสอบการตั้งค่าความเร็วดับเบิลคลิกใน OS หากยังเป็นอยู่ แสดงว่าไมโครสวิตช์น่าจะสึกหรอ ควรเปลี่ยนสวิตช์หรือเคลมประกัน
- **ล้อเลื่อนข้ามหรือย้อนทิศ**: มักเกิดจากฝุ่นหรือตัวเข้ารหัสล้อ (encoder) สึกหรอ ลองทำความสะอาดก่อนตัดสินใจเปลี่ยน
- **Polling Rate ต่ำผิดปกติ**: ลองเปลี่ยนพอร์ต USB ปิดโหมดประหยัดพลังงาน หรือตั้งค่าในซอฟต์แวร์ของผู้ผลิต

## อธิบายคำศัพท์ที่ควรรู้

- **คลิกซ้ำ (Click Chatter)**: อาการที่กดครั้งเดียวแต่เมาส์ส่งสัญญาณคลิกสองครั้ง มักมาจากสวิตช์สึกหรอ
- **Switch Bounce**: การที่หน้าสัมผัสในสวิตช์เด้งไปมาชั่วขณะ ทำให้เกิดสัญญาณซ้ำในเวลาสั้นมาก
- **ดับเบิลคลิก (Double Click)**: การคลิกสองครั้งติดกัน คนทั่วไปมักเว้นช่วงราว 100-400 ms
- **Polling Rate (Hz)**: จำนวนครั้งต่อวินาทีที่เมาส์รายงานตำแหน่งให้คอมพิวเตอร์ ยิ่งสูงยิ่งลื่น เช่น 1000 Hz = ทุก 1 ms
- **pointerrawupdate**: เหตุการณ์ในเบราว์เซอร์ที่ส่งข้อมูลเมาส์แบบดิบ ไม่ถูกหน่วงตามอัตราเฟรมของจอ จึงวัด Polling Rate ได้แม่นกว่า
- **CPS (Clicks Per Second)**: จำนวนคลิกต่อวินาที ใช้วัดความเร็วในการคลิก นิยมในเกมและการแข่งขัน
- **DPI / CPI**: ความละเอียดของเซนเซอร์ คือจำนวนหน่วยที่เคอร์เซอร์ขยับต่อการเลื่อนเมาส์ 1 นิ้ว
- **eDPI**: DPI คูณความไวในเกม ใช้เทียบความไวที่แท้จริงระหว่างผู้เล่น
- **cm/360**: ระยะที่ต้องเลื่อนเมาส์เพื่อให้ตัวละครหมุนครบ 360 องศา ยิ่งน้อยยิ่งไว
- **Jitter**: อาการเคอร์เซอร์สั่นหรือกระตุกขณะเคลื่อนที่ อาจมาจากเซนเซอร์ พื้นผิว หรือสัญญาณรบกวน
- **ล้อเลื่อนแบบเอียง (Tilt Wheel)**: ล้อที่กดเอียงซ้าย-ขวาเพื่อเลื่อนแนวนอนได้ ถ้าเมาส์ไม่มีฟีเจอร์นี้จะไม่เห็นค่าแนวนอน
- **Enhance Pointer Precision**: ฟีเจอร์เร่งความเร็วเคอร์เซอร์ของ Windows ทำให้ระยะเคลื่อนที่ไม่คงที่ ควรปิดเมื่อวัด DPI หรือเล่นเกม
- **Debounce**: เทคนิคของเฟิร์มแวร์ที่ตัดสัญญาณซ้ำในช่วงสั้น ๆ เพื่อลดอาการคลิกซ้ำ