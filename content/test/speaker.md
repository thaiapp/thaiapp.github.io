---
title: ทดสอบลำโพง ออนไลน์ ฟรี
h1: ทดสอบลำโพง
description: ทดสอบลำโพงและหูฟังออนไลน์ฟรี เช็กเสียงซ้าย ขวา เบส เสียงแหลม และเฟสได้ทันทีในเบราว์เซอร์ ไม่ต้องติดตั้งโปรแกรม ใช้ได้ทั้งบนมือถือ แท็บเล็ต และคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-19T08:28:00+07:00'
weight: 129
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ทดสอบลำโพง
- ทดสอบลำโพง ออนไลน์
- ทดสอบและวัดค่า
---

ทดสอบลำโพงและหูฟังได้ทันทีในเบราว์เซอร์ ไม่ต้องติดตั้งโปรแกรม และไม่มีการบันทึกหรืออัปโหลดเสียงใด ๆ กดปุ่มซ้าย ขวา หรือทั้งสองข้าง แล้วฟังว่าเสียงออกถูกด้านหรือไม่ นอกจากนี้ยังตรวจเบส เสียงแหลม และเฟสได้ในหน้าเดียว

<style>
.spk{max-width:780px;margin:1rem auto;padding:16px;border:1px solid rgba(127,127,127,.4);border-radius:12px;outline:none}
.spk p{margin:.4rem 0}
.spk-status{font-weight:600;padding:8px 12px;border-radius:8px;background:rgba(127,127,127,.12)}
.spk-sec{margin-top:16px;padding-top:12px;border-top:1px solid rgba(127,127,127,.25)}
.spk-h{font-weight:700;margin:0 0 8px}
.spk-row{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:8px 0}
.spk-row[hidden]{display:none}
.spk button{font:inherit;color:inherit;background:transparent;border:1px solid rgba(127,127,127,.55);border-radius:8px;padding:10px 14px;cursor:pointer;min-height:44px}
.spk button:hover{background:rgba(127,127,127,.15)}
.spk button[aria-pressed="true"]{background:#2563eb;border-color:#2563eb;color:#fff}
.spk-chan button{flex:1 1 120px;font-size:1.05em}
.spk select,.spk input[type=range]{font:inherit;max-width:100%}
.spk-meter{flex:1 1 120px;height:10px;border-radius:5px;background:rgba(127,127,127,.25);overflow:hidden}
.spk-meter i{display:block;height:100%;width:0;background:#22c55e}
.spk-warn{color:#b45309;font-size:.9em}
.spk-info{display:grid;grid-template-columns:auto 1fr;gap:4px 12px;margin:0}
.spk-info dt{opacity:.7}
.spk-info dd{margin:0}
.spk-diag-out{margin-top:8px;padding:10px 12px;border-left:4px solid #2563eb;background:rgba(37,99,235,.08)}
.spk-note{font-size:.9em;opacity:.75}
</style>
<div class="spk" id="spk-app" tabindex="-1">
<p class="spk-status" id="spk-status" role="status" aria-live="polite">พร้อมทดสอบ กดปุ่มซ้าย ขวา หรือทั้งสองข้างเพื่อเริ่ม</p>
<div class="spk-row spk-chan">
<button type="button" data-chan="L" aria-pressed="false">◀ ซ้าย (L)</button>
<button type="button" data-chan="B" aria-pressed="false">ทั้งสองข้าง</button>
<button type="button" data-chan="R" aria-pressed="false">ขวา (R) ▶</button>
<button type="button" data-act="stop">หยุด</button>
</div>
<div class="spk-row"><span aria-hidden="true">L</span><div class="spk-meter"><i id="spk-mL"></i></div><span aria-hidden="true">R</span><div class="spk-meter"><i id="spk-mR"></i></div></div>
<div class="spk-sec">
<p class="spk-h">ตั้งค่าเสียงทดสอบ</p>
<div class="spk-row"><label for="spk-sound">เสียงทดสอบ</label><select id="spk-sound"><option value="bell">เสียงระฆัง (Bell)</option><option value="tone">โทนเดี่ยว (Sine)</option><option value="pink">Pink Noise</option><option value="white">White Noise</option><option value="brown">Brown Noise</option></select></div>
<div class="spk-row"><label for="spk-vol">ระดับเสียง</label><input type="range" id="spk-vol" min="0" max="100" value="40"><output id="spk-volv" for="spk-vol">40%</output></div>
<p class="spk-warn" id="spk-volw" hidden>ระดับเสียงสูง ควรลดลงหากรู้สึกไม่สบายหู โดยเฉพาะเมื่อใช้หูฟัง</p>
<div class="spk-row"><label for="spk-freq">ความถี่ (ใช้กับโทนเดี่ยว)</label><input type="range" id="spk-freq" min="0" max="1000" value="448"><output id="spk-freqv" for="spk-freq">440 Hz</output></div>
<div class="spk-row"><button type="button" data-f="60">60 Hz</button><button type="button" data-f="120">120 Hz</button><button type="button" data-f="440">440 Hz</button><button type="button" data-f="1000">1 kHz</button><button type="button" data-f="8000">8 kHz</button><button type="button" data-f="15000">15 kHz</button></div>
<div class="spk-row"><label><input type="checkbox" id="spk-pulse" checked> เล่นเป็นจังหวะสั้น ๆ (แยกทิศทางได้ง่ายกว่าเสียงต่อเนื่อง)</label></div>
<div class="spk-row"><label><input type="checkbox" id="spk-distinct"> ใช้โทนต่างกันซ้าย–ขวา (ซ้ายต่ำ ขวาสูง) ใช้ได้กับเสียงระฆังและโทนเดี่ยว</label></div>
</div>
<div class="spk-sec">
<p class="spk-h">สลับซ้าย–ขวาอัตโนมัติ</p>
<div class="spk-row"><button type="button" data-act="alt" aria-pressed="false">เริ่มสลับซ้าย–ขวา</button><label for="spk-speed">ความเร็ว</label><select id="spk-speed"><option value="1500">ช้า</option><option value="900" selected>ปกติ</option><option value="500">เร็ว</option></select></div>
</div>
<div class="spk-sec">
<p class="spk-h">กวาดความถี่ (Frequency Sweep)</p>
<div class="spk-row"><label for="spk-range">ช่วงความถี่</label><select id="spk-range"><option value="full">เต็มช่วง 20 Hz – 20 kHz</option><option value="bass">เบส 20 – 200 Hz</option><option value="treble">เสียงแหลม 4 – 20 kHz</option></select><button type="button" data-act="sweep" aria-pressed="false">เริ่มกวาดความถี่</button></div>
<div class="spk-row"><span>ความถี่ตอนนี้:</span><output id="spk-live">—</output><button type="button" data-act="lo">เริ่มได้ยินแล้ว</button><button type="button" data-act="hi">เสียงหายไปแล้ว</button></div>
<p class="spk-note" id="spk-sweepres">ยังไม่มีการบันทึก ระหว่างกวาดความถี่ให้กดปุ่มเมื่อเริ่มได้ยินหรือเมื่อเสียงหายไป</p>
</div>
<div class="spk-sec">
<p class="spk-h">ตรวจเฟส (Phase)</p>
<div class="spk-row"><button type="button" data-act="ph0" aria-pressed="false">เฟสตรงกัน</button><button type="button" data-act="ph1" aria-pressed="false">เฟสกลับด้าน</button></div>
<p class="spk-note">เล่น Pink Noise ทั้งสองข้าง เฟสตรงกันควรฟังแน่นและอยู่กึ่งกลาง เฟสกลับด้านควรฟังบางและกระจาย หากกลับกันแสดงว่าขั้วสายลำโพงข้างใดข้างหนึ่งอาจต่อสลับ</p>
</div>
<div class="spk-sec">
<p class="spk-h">ข้อมูลอุปกรณ์เสียง</p>
<div class="spk-row" id="spk-devrow" hidden><label for="spk-dev">อุปกรณ์เอาต์พุต</label><select id="spk-dev"></select></div>
<dl class="spk-info"><dt>เอาต์พุต</dt><dd id="spk-i-dev">—</dd><dt>Sample rate</dt><dd id="spk-i-rate">—</dd><dt>Base latency</dt><dd id="spk-i-base">—</dd><dt>Output latency</dt><dd id="spk-i-out">—</dd><dt>จำนวนช่องเสียงสูงสุด</dt><dd id="spk-i-ch">—</dd><dt>สถานะ</dt><dd id="spk-i-state">—</dd></dl>
<p class="spk-note">ข้อมูลจะแสดงหลังกดเล่นเสียงครั้งแรก</p>
</div>
<div class="spk-sec">
<p class="spk-h">วิเคราะห์ผล: คุณได้ยินอะไร</p>
<div class="spk-row"><button type="button" data-d="ok" aria-pressed="false">ถูกต้อง ซ้าย–ขวาตรงข้าง</button><button type="button" data-d="swap" aria-pressed="false">ซ้าย–ขวาสลับกัน</button><button type="button" data-d="one" aria-pressed="false">เงียบไปข้างเดียว</button><button type="button" data-d="mono" aria-pressed="false">กดข้างเดียวแต่ได้ยินสองข้าง</button><button type="button" data-d="dist" aria-pressed="false">เสียงแตก ซ่า หรือมีเสียงรบกวน</button><button type="button" data-d="none" aria-pressed="false">ไม่ได้ยินเสียงเลย</button></div>
<div class="spk-diag-out" id="spk-diagout" aria-live="polite">เลือกอาการที่ได้ยินเพื่อดูวิธีแก้ไข</div>
</div>
<p class="spk-note">คีย์ลัด (คลิกที่เครื่องมือก่อน): ← ทดสอบซ้าย, → ทดสอบขวา, ↓ ทั้งสองข้าง, Esc หยุด</p>
</div>
<script>
(function(){
'use strict';
var root=document.getElementById('spk-app');
if(!root){return;}
var AC=window.AudioContext||window.webkitAudioContext;
function $(id){return document.getElementById(id);}
var el={status:$('spk-status'),sound:$('spk-sound'),vol:$('spk-vol'),volv:$('spk-volv'),volw:$('spk-volw'),freq:$('spk-freq'),freqv:$('spk-freqv'),pulse:$('spk-pulse'),distinct:$('spk-distinct'),speed:$('spk-speed'),range:$('spk-range'),live:$('spk-live'),sweepRes:$('spk-sweepres'),devRow:$('spk-devrow'),dev:$('spk-dev'),mL:$('spk-mL'),mR:$('spk-mR'),iDev:$('spk-i-dev'),iRate:$('spk-i-rate'),iBase:$('spk-i-base'),iOut:$('spk-i-out'),iCh:$('spk-i-ch'),iState:$('spk-i-state'),diagOut:$('spk-diagout')};
var RANGES={full:[20,20000,24],bass:[20,200,12],treble:[4000,20000,12]};
var NAMES={L:'ช่องซ้าย (L)',R:'ช่องขวา (R)',B:'ทั้งสองข้าง'};
var DIAG={
ok:'ปกติ: ช่องสัญญาณซ้ายและขวาทำงานถูกต้อง หากต้องการตรวจละเอียดขึ้น ให้ลองกวาดความถี่เพื่อหาช่วงที่ได้ยิน และตรวจเฟสต่อ',
swap:'ซ้าย–ขวาสลับกัน: 1) ตรวจว่าสวมหูฟังหรือวางลำโพงถูกข้างหรือไม่ (L คือซ้าย R คือขวา) 2) สลับสายลำโพงซ้าย–ขวาที่เครื่องขยายเสียง 3) ตรวจการตั้งค่า Balance ในระบบและในแอปเล่นเพลง 4) ลองต่อกับอุปกรณ์อื่นเพื่อแยกว่าปัญหาอยู่ที่ลำโพงหรือแหล่งเสียง',
one:'เงียบไปข้างเดียว: 1) ถอดแล้วเสียบแจ็คหรือสายใหม่ให้แน่น 2) เปิดการตั้งค่าเสียงของระบบ แล้วดูว่าสไลเดอร์ Balance อยู่กึ่งกลาง 3) ลองใช้ลำโพงหรือหูฟังกับอุปกรณ์อื่น หากปัญหาตามไป แสดงว่าตัวลำโพงหรือหูฟังชำรุด 4) หากเป็นบลูทูธ ให้ลบการจับคู่แล้วจับคู่ใหม่ 5) ทำความสะอาดช่องแจ็คหรือรูหูฟัง',
mono:'กดข้างเดียวแต่ได้ยินสองข้าง: 1) ตรวจว่าเปิด Mono Audio ในการตั้งค่าการช่วยเหลือพิเศษของระบบหรือไม่ แล้วปิดเสียก่อน 2) ตรวจว่าสายหรือแจ็คเป็นแบบสเตอริโอ 3) หูฟังบลูทูธบางรุ่นสลับเป็นโหมดโทรศัพท์ซึ่งเป็นเสียงโมโน ให้เลือกโหมดเสียงคุณภาพสูง 4) ปิดแอปที่ใช้ไมโครโฟนอยู่ เช่น แอปประชุม',
dist:'เสียงแตก ซ่า หรือมีเสียงรบกวน: 1) ลดระดับเสียงทั้งในเครื่องมือและในระบบ 2) ลองกวาดความถี่ เพื่อดูว่าเสียงแตกที่ช่วงความถี่ใด 3) ลองสายหรืออุปกรณ์อื่น 4) หากแตกเฉพาะช่วงเบส อาจเป็นลำโพงขนาดเล็กที่รับความถี่ต่ำไม่ไหว หรือกรวยลำโพงชำรุด',
none:'ไม่ได้ยินเสียงเลย: 1) เพิ่มระดับเสียงทีละน้อย และตรวจว่าไม่ได้ปิดเสียงเครื่องหรือแท็บนี้ 2) บน iPhone ให้ตรวจสวิตช์ปิดเสียงด้านข้างเครื่อง 3) เลือกอุปกรณ์เอาต์พุตให้ถูกต้องในระบบ หรือจากรายการอุปกรณ์ด้านบน 4) ตรวจสายและการเชื่อมต่อบลูทูธ 5) ลองใช้เบราว์เซอร์อื่น'
};
var ctx=null,master,env,merger,gL,gR,splitter,anL,anR,timer=null,raf=0;
var mode='idle',chan='B',phaseInv=false,curA=null,curB=null,sweepInfo=null,curSweepF=0,toneF=440,devLabel='ค่าเริ่มต้นของระบบ';
var lastSweep={lo:0,hi:0},noiseCache={},buf=new Uint8Array(256);
function fmtHz(f){if(f>=1000){return (Math.round(f/10)/100)+' kHz';}return Math.round(f)+' Hz';}
function volGain(){return Math.pow(Number(el.vol.value)/100,1.5);}
function fToSlider(f){return Math.round(1000*Math.log(f/20)/Math.log(1000));}
function sliderToF(v){return Math.round(20*Math.pow(1000,v/1000));}
function noiseBuf(type){
if(noiseCache[type]){return noiseCache[type];}
var n=Math.floor(ctx.sampleRate*2),b=ctx.createBuffer(1,n,ctx.sampleRate),d=b.getChannelData(0),i,w,mx=0;
var b0=0,b1=0,b2=0,b3=0,b4=0,b5=0,b6=0,last=0;
for(i=0;i!==n;i++){
w=Math.random()*2-1;
if(type==='pink'){
b0=0.99886*b0+w*0.0555179;b1=0.99332*b1+w*0.0750759;b2=0.969*b2+w*0.153852;b3=0.8665*b3+w*0.3104856;b4=0.55*b4+w*0.5329522;b5=-0.7616*b5-w*0.016898;
d[i]=b0+b1+b2+b3+b4+b5+b6+w*0.5362;b6=w*0.115926;
}else if(type==='brown'){
last=(last+0.02*w)/1.02;d[i]=last*3.5;
}else{d[i]=w;}
if(Math.abs(d[i])>mx){mx=Math.abs(d[i]);}
}
for(i=0;i!==n;i++){d[i]=d[i]/mx*0.8;}
noiseCache[type]=b;
return b;
}
function makeSource(kind,f){
var out=ctx.createGain(),nodes=[],t=ctx.currentTime;
out.gain.value=0;out.gain.setTargetAtTime(1,t,0.01);
function osc(freq,gain){var o=ctx.createOscillator(),g=ctx.createGain();o.type='sine';o.frequency.value=freq;g.gain.value=gain;o.connect(g);g.connect(out);o.start();nodes.push(o);return o;}
if(kind==='bell'){osc(f,0.6);osc(f*2.76,0.25);osc(f*5.4,0.1);}
else if(kind==='tone'){osc(f,0.8);}
else if(kind==='sweep'){var o=osc(f.from,0.8);o.frequency.setValueAtTime(f.from,t);o.frequency.exponentialRampToValueAtTime(f.to,t+f.dur);}
else{var bs=ctx.createBufferSource();bs.buffer=noiseBuf(kind);bs.loop=true;bs.connect(out);bs.start();nodes.push(bs);}
return {out:out,nodes:nodes,stop:function(){var n=ctx.currentTime;out.gain.cancelScheduledValues(n);out.gain.setTargetAtTime(0,n,0.01);nodes.forEach(function(x){try{x.stop(n+0.1);}catch(e){}});setTimeout(function(){try{out.disconnect();}catch(e){}},300);}};
}
function ensure(){
if(!AC){el.status.textContent='เบราว์เซอร์นี้ไม่รองรับ Web Audio API กรุณาใช้ Chrome, Edge, Firefox หรือ Safari เวอร์ชันล่าสุด';return false;}
if(!ctx){
try{ctx=new AC();}catch(e){ctx=null;el.status.textContent='เปิดระบบเสียงไม่สำเร็จ กรุณารีเฟรชหน้าแล้วลองใหม่';return false;}
master=ctx.createGain();master.gain.value=volGain();
env=ctx.createGain();env.gain.value=1;
merger=ctx.createChannelMerger(2);
gL=ctx.createGain();gR=ctx.createGain();
gL.connect(merger,0,0);gR.connect(merger,0,1);
merger.connect(env);env.connect(master);master.connect(ctx.destination);
splitter=ctx.createChannelSplitter(2);env.connect(splitter);
anL=ctx.createAnalyser();anR=ctx.createAnalyser();anL.fftSize=256;anR.fftSize=256;
splitter.connect(anL,0);splitter.connect(anR,1);
listDevices();
}
if(ctx.state==='suspended'){var p=ctx.resume();if(p&&p.catch){p.catch(function(){});}}
return true;
}
function applyGains(){
var t=ctx.currentTime,l=1,r=1;
if(mode==='phase'){r=phaseInv?-1:1;}
else{l=(chan==='R')?0:1;r=(chan==='L')?0:1;}
gL.gain.setTargetAtTime(l,t,0.01);gR.gain.setTargetAtTime(r,t,0.01);
}
function pulse(){
var t=ctx.currentTime;
env.gain.cancelScheduledValues(t);env.gain.setValueAtTime(0.0001,t);env.gain.linearRampToValueAtTime(1,t+0.015);env.gain.setTargetAtTime(0.0001,t+0.05,0.12);
}
function clearTimers(){
if(timer){clearInterval(timer);timer=null;}
if(ctx&&env){var t=ctx.currentTime;env.gain.cancelScheduledValues(t);env.gain.setValueAtTime(1,t);}
}
function stopSource(){
if(curA){curA.stop();curA=null;}
if(curB){curB.stop();curB=null;}
}
function setupPulse(){
var usePulse=el.pulse.checked&&mode!=='sweep'&&mode!=='phase';
var alt=(mode==='alt');
if(!usePulse&&!alt){return;}
var period=alt?Number(el.speed.value):900;
var n=0;
var tick=function(){
if(alt&&n!==0){chan=(chan==='L')?'R':'L';applyGains();updateUI();}
n=n+1;
if(usePulse){pulse();}
};
tick();
timer=setInterval(tick,period);
}
function startMode(m){
if(!ensure()){return;}
stopSource();clearTimers();
mode=m;
var kind=el.sound.value,a,b=null;
if(m==='phase'){kind='pink';}
if(m==='sweep'){
var r=RANGES[el.range.value];
a=makeSource('sweep',{from:r[0],to:r[1],dur:r[2]});
sweepInfo={t0:ctx.currentTime,from:r[0],to:r[1],dur:r[2]};
curSweepF=r[0];
}else{
var base=(kind==='bell')?880:toneF;
var tonal=(kind==='bell'||kind==='tone');
a=makeSource(kind,base);
if(el.distinct.checked&&tonal&&m!=='phase'){b=makeSource(kind,base*1.5);}
}
a.out.connect(gL);
if(b){b.out.connect(gR);}else{a.out.connect(gR);}
curA=a;curB=b;
if(m==='alt'){chan='L';}
applyGains();
setupPulse();
updateUI();
updateInfo();
setTimeout(updateInfo,600);
if(!raf){raf=requestAnimationFrame(frame);}
}
function stopAll(msg){
stopSource();clearTimers();
mode='idle';
el.mL.style.width='0%';el.mR.style.width='0%';
updateUI();
if(msg){el.status.textContent=msg;}
}
function meter(an,bar){
if(!an){return;}
an.getByteTimeDomainData(buf);
var i,m=0,v;
for(i=0;i!==256;i++){v=Math.abs(buf[i]-128);if(v>m){m=v;}}
bar.style.width=Math.min(100,Math.round(m/128*100))+'%';
}
function frame(){
raf=0;
if(mode==='idle'||!ctx){return;}
meter(anL,el.mL);meter(anR,el.mR);
if(mode==='sweep'&&sweepInfo){
var p=(ctx.currentTime-sweepInfo.t0)/sweepInfo.dur;
if(p>=1){stopAll('กวาดความถี่เสร็จแล้ว กดปุ่มเพื่อเริ่มใหม่ได้');return;}
curSweepF=sweepInfo.from*Math.pow(sweepInfo.to/sweepInfo.from,Math.max(0,p));
el.live.textContent=fmtHz(curSweepF);
}
raf=requestAnimationFrame(frame);
}
function setPressed(act,on){var b=root.querySelector('button[data-act="'+act+'"]');if(b){b.setAttribute('aria-pressed',String(on));}}
function updateUI(){
var btns=root.querySelectorAll('button[data-chan]'),i,b,c;
for(i=0;i!==btns.length;i++){b=btns[i];c=b.getAttribute('data-chan');b.setAttribute('aria-pressed',String((mode==='channel'||mode==='sweep')&&c===chan));}
setPressed('alt',mode==='alt');setPressed('sweep',mode==='sweep');setPressed('ph0',mode==='phase'&&!phaseInv);setPressed('ph1',mode==='phase'&&phaseInv);
var sn=el.sound.options[el.sound.selectedIndex].text;
if(mode==='channel'){el.status.textContent='กำลังเล่น: '+NAMES[chan]+' • '+sn;}
else if(mode==='alt'){el.status.textContent='กำลังสลับซ้าย–ขวาอัตโนมัติ • ตอนนี้: '+NAMES[chan];}
else if(mode==='sweep'){el.status.textContent='กำลังกวาดความถี่ • '+NAMES[chan];}
else if(mode==='phase'){el.status.textContent='กำลังเล่น Pink Noise ทั้งสองข้าง • เฟส'+(phaseInv?'กลับด้าน':'ตรงกัน');}
else{el.status.textContent='หยุดอยู่ เลือกปุ่มเพื่อเริ่มทดสอบ';}
}
function updateInfo(){
if(!ctx){return;}
el.iDev.textContent=devLabel;
el.iRate.textContent=ctx.sampleRate+' Hz';
el.iBase.textContent=(typeof ctx.baseLatency==='number')?Math.round(ctx.baseLatency*1000)+' ms':'เบราว์เซอร์ไม่รายงาน';
el.iOut.textContent=(typeof ctx.outputLatency==='number'&&ctx.outputLatency>0)?Math.round(ctx.outputLatency*1000)+' ms':'เบราว์เซอร์ไม่รายงาน';
el.iCh.textContent=ctx.destination.maxChannelCount+' ช่อง';
el.iState.textContent=ctx.state;
}
function listDevices(){
if(!ctx||typeof ctx.setSinkId!=='function'||!navigator.mediaDevices||!navigator.mediaDevices.enumerateDevices){return;}
navigator.mediaDevices.enumerateDevices().then(function(list){
var outs=list.filter(function(d){return d.kind==='audiooutput';});
if(outs.length===0){return;}
el.dev.innerHTML='';
outs.forEach(function(d,i){var o=document.createElement('option');o.value=d.deviceId;o.textContent=d.label||('อุปกรณ์เสียง '+(i+1));el.dev.appendChild(o);});
el.devRow.hidden=false;
}).catch(function(){});
}
function pickChan(c){
chan=c;
if(mode==='channel'||mode==='sweep'){applyGains();updateUI();return;}
startMode('channel');
}
function restartIfPlaying(){if(mode==='channel'||mode==='alt'){startMode(mode);}}
function showSweep(){
var s=[];
if(lastSweep.lo){s.push('เริ่มได้ยินที่ประมาณ '+fmtHz(lastSweep.lo));}
if(lastSweep.hi){s.push('เสียงหายไปที่ประมาณ '+fmtHz(lastSweep.hi));}
el.sweepRes.textContent=s.length?s.join(' • ')+' (ผลขึ้นกับทั้งลำโพง หูของคุณ และห้องที่ฟัง)':'ยังไม่มีการบันทึก ระหว่างกวาดความถี่ให้กดปุ่มเมื่อเริ่มได้ยินหรือเมื่อเสียงหายไป';
}
root.addEventListener('click',function(e){
var b=(e.target&&e.target.closest)?e.target.closest('button'):null;
if(!b||!root.contains(b)){return;}
var c=b.getAttribute('data-chan'),a=b.getAttribute('data-act'),f=b.getAttribute('data-f'),d=b.getAttribute('data-d');
if(c){pickChan(c);}
else if(f){
toneF=Number(f);el.sound.value='tone';el.freq.value=String(fToSlider(toneF));el.freqv.textContent=fmtHz(toneF);
startMode((mode==='alt')?'alt':'channel');
}
else if(d){
var ds=root.querySelectorAll('button[data-d]'),i;
for(i=0;i!==ds.length;i++){ds[i].setAttribute('aria-pressed',String(ds[i]===b));}
el.diagOut.textContent=DIAG[d]||'';
}
else if(a==='stop'){stopAll('หยุดแล้ว เลือกปุ่มเพื่อเริ่มทดสอบอีกครั้ง');}
else if(a==='alt'){if(mode==='alt'){stopAll('หยุดแล้ว');}else{startMode('alt');}}
else if(a==='sweep'){if(mode==='sweep'){stopAll('หยุดแล้ว');}else{lastSweep={lo:0,hi:0};showSweep();el.live.textContent='—';startMode('sweep');}}
else if(a==='ph0'||a==='ph1'){phaseInv=(a==='ph1');if(mode==='phase'){applyGains();updateUI();}else{startMode('phase');}}
else if(a==='lo'||a==='hi'){
if(mode!=='sweep'){el.status.textContent='กดเริ่มกวาดความถี่ก่อน แล้วจึงบันทึกจุดที่ได้ยิน';return;}
if(a==='lo'){lastSweep.lo=curSweepF;}else{lastSweep.hi=curSweepF;}
showSweep();
}
});
el.vol.addEventListener('input',function(){
var v=Number(el.vol.value);
el.volv.textContent=v+'%';
el.volw.hidden=!(v>80);
if(ctx){master.gain.setTargetAtTime(volGain(),ctx.currentTime,0.02);}
});
el.freq.addEventListener('input',function(){
toneF=sliderToF(Number(el.freq.value));
el.freqv.textContent=fmtHz(toneF);
if(el.sound.value!=='tone'){el.sound.value='tone';restartIfPlaying();return;}
if(ctx&&curA&&(mode==='channel'||mode==='alt')){
var t=ctx.currentTime;
curA.nodes[0].frequency.setTargetAtTime(toneF,t,0.01);
if(curB){curB.nodes[0].frequency.setTargetAtTime(toneF*1.5,t,0.01);}
}
});
el.sound.addEventListener('change',restartIfPlaying);
el.pulse.addEventListener('change',restartIfPlaying);
el.distinct.addEventListener('change',restartIfPlaying);
el.speed.addEventListener('change',function(){if(mode==='alt'){startMode('alt');}});
el.range.addEventListener('change',function(){if(mode==='sweep'){lastSweep={lo:0,hi:0};showSweep();startMode('sweep');}});
el.dev.addEventListener('change',function(){
if(!ctx||typeof ctx.setSinkId!=='function'){return;}
var label=el.dev.options[el.dev.selectedIndex].text;
var p=ctx.setSinkId(el.dev.value);
if(p&&p.then){p.then(function(){devLabel=label;updateInfo();}).catch(function(){el.status.textContent='สลับอุปกรณ์เอาต์พุตไม่สำเร็จ ลองเปลี่ยนที่การตั้งค่าเสียงของระบบ';});}
});
root.addEventListener('keydown',function(e){
var tg=e.target&&e.target.tagName;
if(tg==='INPUT'||tg==='SELECT'||e.ctrlKey||e.metaKey||e.altKey){return;}
if(e.key==='ArrowLeft'){e.preventDefault();pickChan('L');}
else if(e.key==='ArrowRight'){e.preventDefault();pickChan('R');}
else if(e.key==='ArrowDown'){e.preventDefault();pickChan('B');}
else if(e.key==='Escape'){stopAll('หยุดแล้ว เลือกปุ่มเพื่อเริ่มทดสอบอีกครั้ง');}
});
window.addEventListener('pagehide',function(){stopAll();});
el.freq.value=String(fToSlider(toneF));
el.freqv.textContent=fmtHz(toneF);
})();
</script>

## วิธีใช้งานเครื่องมือทดสอบลำโพง

1. **เตรียมเครื่อง:** ใช้หูฟังเพื่อผลที่แม่นยำที่สุด หากทดสอบลำโพงให้นั่งตรงกลางระหว่างลำโพงทั้งสองตัว ตั้งระดับเสียงไว้ต่ำก่อน (ค่าเริ่มต้นของเครื่องมือคือ 40%) แล้วค่อยเพิ่ม
2. **ทดสอบซ้ายและขวา:** กดปุ่ม **ซ้าย (L)** เสียงควรออกจากลำโพงหรือหูฟังข้างซ้ายเท่านั้น จากนั้นกด **ขวา (R)** เสียงควรย้ายไปข้างขวาเท่านั้น แถบวัดระดับ L และ R ด้านบนจะแสดงว่าเครื่องมือกำลังส่งเสียงออกช่องใด
3. **ทดสอบทั้งสองข้าง:** กด **ทั้งสองข้าง** เสียงควรดังเท่ากันและรู้สึกว่ามาจากตรงกลาง
4. **เลือกเสียงทดสอบ:** เสียงระฆังหรือโทนที่เล่นเป็นจังหวะสั้น ๆ ช่วยให้แยกทิศทางได้ง่าย ส่วน Pink Noise เหมาะกับการเช็กภาพรวมของเสียงในห้อง ปรับความถี่ได้เมื่อเลือกโทนเดี่ยว หรือกดปุ่มความถี่สำเร็จรูป
5. **สลับซ้าย–ขวาอัตโนมัติ:** กด **เริ่มสลับซ้าย–ขวา** เพื่อให้เสียงเด้งไปมาโดยไม่ต้องกดซ้ำ เหมาะกับการนั่งฟังเทียบสองข้าง
6. **กวาดความถี่:** เลือกช่วง เช่น เบสหรือเสียงแหลม แล้วกด **เริ่มกวาดความถี่** กดปุ่ม **เริ่มได้ยินแล้ว** เมื่อเริ่มได้ยิน และ **เสียงหายไปแล้ว** เมื่อเสียงเงียบหาย เครื่องมือจะบันทึกความถี่ให้
7. **ตรวจเฟส:** กด **เฟสตรงกัน** แล้วกด **เฟสกลับด้าน** เทียบกัน หากเฟสตรงกันฟังบางกว่า แสดงว่าขั้วสายลำโพงอาจต่อสลับ
8. **วิเคราะห์ผล:** เลือกอาการที่ได้ยินในช่อง **วิเคราะห์ผล** เพื่อดูวิธีแก้ไขที่เหมาะสม และเปิดดูข้อมูลอุปกรณ์เสียงเพื่อตรวจ sample rate และค่าหน่วงเวลา

เคล็ดลับ: ปิดเสียงรบกวนรอบตัวระหว่างทดสอบ และถ้าทดสอบหูฟังบลูทูธ ให้เทียบกับการเชื่อมต่อแบบสายด้วยหากเป็นไปได้

## ศัพท์และปุ่มที่ควรรู้

- **ซ้าย (L) / ขวา (R):** ส่งเสียงออกเพียงช่องเดียว ใช้ตรวจว่าแต่ละข้างทำงานและไม่ถูกสลับ
- **ทั้งสองข้าง:** ส่งเสียงออกทั้งสองช่องพร้อมกัน ใช้ตรวจความสมดุล
- **สเตอริโอ (Stereo):** ระบบเสียงสองช่อง ซ้ายและขวาเล่นเสียงต่างกันได้ ทำให้เกิดมิติของเสียง
- **โมโน (Mono):** ทั้งสองช่องเล่นเสียงเดียวกัน หากกดซ้ายแล้วได้ยินสองข้าง อาจเปิดโหมดโมโนอยู่
- **ความถี่ (Hz):** จำนวนรอบการสั่นต่อวินาที ค่าต่ำคือเสียงทุ้ม ค่าสูงคือเสียงแหลม หูคนทั่วไปได้ยินประมาณ 20 Hz ถึง 20 kHz
- **เบส (Bass):** เสียงทุ้มต่ำ ประมาณต่ำกว่า 250 Hz ลำโพงขนาดเล็กมักเล่นต่ำกว่า 80 Hz ไม่ได้
- **เสียงแหลม (Treble):** เสียงสูง ประมาณ 4 kHz ขึ้นไป ใช้ตรวจความคมชัดและเสียงซ่า
- **โทนเดี่ยว (Sine):** เสียงความถี่เดียวบริสุทธิ์ ใช้หาจุดที่ลำโพงเริ่มแตกหรือสั่น
- **เสียงระฆัง (Bell):** เสียงที่มีหลายความถี่ผสม ทำให้ฟังออกว่ามาจากทิศใดได้ง่ายกว่าโทนเดี่ยว
- **Pink Noise:** เสียงซ่าที่พลังงานเท่ากันในทุกช่วงอ็อกเทฟ ใกล้เคียงกับการได้ยินของคน นิยมใช้ปรับเสียงห้อง
- **White Noise:** เสียงซ่าที่พลังงานเท่ากันทุกความถี่ ฟังแหลมกว่า Pink Noise
- **Brown Noise:** เสียงซ่าที่เน้นความถี่ต่ำ ฟังทุ้มกว่า เหมาะตรวจเบส
- **กวาดความถี่ (Sweep):** เลื่อนความถี่ขึ้นจากต่ำไปสูงอย่างต่อเนื่อง เพื่อหาช่วงที่ลำโพงเล่นได้และจุดที่เสียงแตก
- **เฟส (Phase) / ขั้ว (Polarity):** ทิศการขยับของกรวยลำโพง ถ้าลำโพงสองตัวขยับสวนทางกัน เสียงโดยเฉพาะเบสจะหักล้างกันและบางลง
- **Balance:** ตัวปรับสมดุลระดับเสียงซ้ายและขวาในระบบ ถ้าเอียงไปข้างหนึ่งจะทำให้อีกข้างเบาหรือเงียบ
- **Sample rate:** จำนวนตัวอย่างเสียงต่อวินาทีที่ระบบเสียงใช้ เช่น 44,100 หรือ 48,000 Hz
- **Latency (ค่าหน่วงเวลา):** ระยะเวลาจากส่งเสียงจนได้ยินจริง บลูทูธมักหน่วงมากกว่าแบบสาย
- **อุปกรณ์เอาต์พุต:** ลำโพงหรือหูฟังที่เบราว์เซอร์ส่งเสียงไปเล่น เลือกได้ในเบราว์เซอร์ที่รองรับ
- **ระดับวัดช่อง L/R:** แถบแสดงว่าเครื่องมือกำลังส่งสัญญาณออกช่องใด ไม่ใช่การวัดความดังจริงที่ลำโพง

## ผลทดสอบแปลว่าอะไร และแก้ไขอย่างไร

| อาการที่พบ | สาเหตุที่เป็นไปได้ | วิธีแก้เบื้องต้น |
| --- | --- | --- |
| เสียงออกข้างเดียว | แจ็คหรือสายหลวม, Balance เอียง, ลำโพงหรือหูฟังข้างหนึ่งเสีย | เสียบสายใหม่, ปรับ Balance ให้อยู่กึ่งกลาง, ลองกับอุปกรณ์อื่น |
| ซ้าย–ขวาสลับกัน | ต่อสายลำโพงสลับ, สวมหูฟังกลับข้าง, ตั้งค่าในแอปหรือระบบ | สลับสาย, ตรวจตัวอักษร L และ R, ตรวจการตั้งค่าเสียง |
| กดข้างเดียวแต่ได้ยินสองข้าง | เปิด Mono Audio, สายหรือแจ็คไม่รองรับสเตอริโอ, บลูทูธอยู่ในโหมดโทรศัพท์ | ปิด Mono Audio, ใช้สายสเตอริโอ, เลือกโหมดเสียงคุณภาพสูง |
| เสียงแตกหรือซ่า | เสียงดังเกินไป, กรวยลำโพงชำรุด, แจ็คสกปรก | ลดระดับเสียง, ทำความสะอาดแจ็ค, ทดสอบกับอุปกรณ์อื่น |
| ไม่ได้ยินเสียงเบา (ต่ำกว่าประมาณ 80 Hz) | ลำโพงขนาดเล็กไม่รองรับความถี่ต่ำ | ถือเป็นเรื่องปกติของลำโพงเล็ก หากต้องการเบสให้พิจารณาซับวูฟเฟอร์ |
| เฟสกลับด้านแล้วฟังดีกว่า | ขั้วบวกลบของสายลำโพงข้างหนึ่งต่อกลับกัน | ตรวจและสลับสายบวก (+) กับลบ (−) ของลำโพงข้างหนึ่ง |

## ข้อจำกัดของเครื่องมือ

- เครื่องมือนี้ตรวจการเล่นเสียงเท่านั้น ไม่ได้วัดความดังเป็นเดซิเบล และไม่ใช่การทดสอบการได้ยิน
- เบราว์เซอร์ส่งเสียงแบบสเตอริโอสองช่อง จึงไม่สามารถทดสอบแต่ละช่องของระบบเซอร์ราวด์ 5.1 หรือ 7.1 ได้
- เสียงจะเล่นผ่านอุปกรณ์เอาต์พุตที่ระบบหรือเบราว์เซอร์เลือก หากเบราว์เซอร์ไม่รองรับการเลือกอุปกรณ์ ให้เปลี่ยนที่การตั้งค่าเสียงของระบบ
- ช่วงความถี่ที่ได้ยินขึ้นกับหูของคุณ ห้อง และคุณภาพลำโพง ไม่ใช่ค่ามาตรฐานของอุปกรณ์
- ค่า latency บางตัวบางเบราว์เซอร์ไม่รายงาน จึงอาจแสดงว่าไม่รายงาน
- เครื่องมือไม่ใช้ไมโครโฟน ไม่บันทึกเสียง และไม่อัปโหลดข้อมูลใด ๆ ทุกอย่างประมวลผลบนเครื่องของคุณ

## คำถามที่พบบ่อย

### ทดสอบลำโพงซ้ายขวาออนไลน์ทำอย่างไร

กดปุ่ม ซ้าย (L) แล้วฟังว่าเสียงออกเฉพาะลำโพงหรือหูฟังข้างซ้ายหรือไม่ จากนั้นกดปุ่ม ขวา (R) เสียงควรย้ายไปข้างขวาเท่านั้น และกดทั้งสองข้างเพื่อตรวจว่าเสียงสมดุล

### ทำไมเสียงออกแค่ข้างเดียว

สาเหตุที่พบบ่อยคือแจ็คหรือสายหลวม สไลเดอร์ Balance ในระบบเอียงไปข้างเดียว หรือลำโพงหรือหูฟังข้างหนึ่งเสีย ลองเสียบสายใหม่ ปรับ Balance ให้อยู่กึ่งกลาง และทดสอบกับอุปกรณ์อื่นเพื่อแยกสาเหตุ

### ทดสอบลำโพงออนไลน์ทำให้ลำโพงเสียหายไหม

โดยปกติไม่เสียหายหากตั้งระดับเสียงพอเหมาะ เครื่องมือใช้ความถี่ในช่วงที่ลำโพงทั่วไปรองรับ แต่การเปิดเสียงดังมากเป็นเวลานาน โดยเฉพาะเบสหรือเสียงแหลม อาจทำให้ลำโพงร้อนหรือรบกวนการได้ยิน ควรเริ่มจากเสียงเบาก่อน

### ซ้ายขวาสลับกันแก้อย่างไร

ตรวจว่าวางลำโพงหรือสวมหูฟังถูกข้างตามตัวอักษร L และ R แล้วสลับสายลำโพงที่เครื่องขยายเสียง หากยังสลับอยู่ ให้ตรวจการตั้งค่า Balance และการตั้งค่าในแอปเล่นเพลง

### ทดสอบเบสและเสียงแหลมได้ไหม

ได้ ใช้ฟังก์ชันกวาดความถี่เลือกช่วงเบส 20 ถึง 200 Hz หรือช่วงเสียงแหลม 4 ถึง 20 kHz แล้วกดบันทึกจุดที่เริ่มได้ยินหรือเสียงหายไป ผลที่ได้ขึ้นกับทั้งลำโพงและหูของคุณ

### ใช้ทดสอบหูฟังบลูทูธหรือมือถือได้ไหม

ได้ เครื่องมือรองรับมือถือ แท็บเล็ต และคอมพิวเตอร์ หากเป็น iPhone ควรตรวจสวิตช์ปิดเสียงด้านข้างเครื่อง สำหรับหูฟังบลูทูธให้เชื่อมต่อก่อนเปิดหน้านี้ และปิดแอปที่ใช้ไมโครโฟนอยู่ เพราะอาจทำให้หูฟังสลับเป็นโหมดโทรศัพท์

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[
{"@type":"Question","name":"ทดสอบลำโพงซ้ายขวาออนไลน์ทำอย่างไร","acceptedAnswer":{"@type":"Answer","text":"กดปุ่ม ซ้าย (L) แล้วฟังว่าเสียงออกเฉพาะลำโพงหรือหูฟังข้างซ้ายหรือไม่ จากนั้นกดปุ่ม ขวา (R) เสียงควรย้ายไปข้างขวาเท่านั้น และกดทั้งสองข้างเพื่อตรวจว่าเสียงสมดุล"}},
{"@type":"Question","name":"ทำไมเสียงออกแค่ข้างเดียว","acceptedAnswer":{"@type":"Answer","text":"สาเหตุที่พบบ่อยคือแจ็คหรือสายหลวม สไลเดอร์ Balance ในระบบเอียงไปข้างเดียว หรือลำโพงหรือหูฟังข้างหนึ่งเสีย ลองเสียบสายใหม่ ปรับ Balance ให้อยู่กึ่งกลาง และทดสอบกับอุปกรณ์อื่นเพื่อแยกสาเหตุ"}},
{"@type":"Question","name":"ทดสอบลำโพงออนไลน์ทำให้ลำโพงเสียหายไหม","acceptedAnswer":{"@type":"Answer","text":"โดยปกติไม่เสียหายหากตั้งระดับเสียงพอเหมาะ เครื่องมือใช้ความถี่ในช่วงที่ลำโพงทั่วไปรองรับ แต่การเปิดเสียงดังมากเป็นเวลานาน โดยเฉพาะเบสหรือเสียงแหลม อาจทำให้ลำโพงร้อนหรือรบกวนการได้ยิน ควรเริ่มจากเสียงเบาก่อน"}},
{"@type":"Question","name":"ซ้ายขวาสลับกันแก้อย่างไร","acceptedAnswer":{"@type":"Answer","text":"ตรวจว่าวางลำโพงหรือสวมหูฟังถูกข้างตามตัวอักษร L และ R แล้วสลับสายลำโพงที่เครื่องขยายเสียง หากยังสลับอยู่ ให้ตรวจการตั้งค่า Balance และการตั้งค่าในแอปเล่นเพลง"}},
{"@type":"Question","name":"ทดสอบเบสและเสียงแหลมได้ไหม","acceptedAnswer":{"@type":"Answer","text":"ได้ ใช้ฟังก์ชันกวาดความถี่เลือกช่วงเบส 20 ถึง 200 Hz หรือช่วงเสียงแหลม 4 ถึง 20 kHz แล้วกดบันทึกจุดที่เริ่มได้ยินหรือเสียงหายไป ผลที่ได้ขึ้นกับทั้งลำโพงและหูของคุณ"}},
{"@type":"Question","name":"ใช้ทดสอบหูฟังบลูทูธหรือมือถือได้ไหม","acceptedAnswer":{"@type":"Answer","text":"ได้ เครื่องมือรองรับมือถือ แท็บเล็ต และคอมพิวเตอร์ หากเป็น iPhone ควรตรวจสวิตช์ปิดเสียงด้านข้างเครื่อง สำหรับหูฟังบลูทูธให้เชื่อมต่อก่อนเปิดหน้านี้ และปิดแอปที่ใช้ไมโครโฟนอยู่ เพราะอาจทำให้หูฟังสลับเป็นโหมดโทรศัพท์"}}
]}
</script>