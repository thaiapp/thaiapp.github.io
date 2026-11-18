---
title: ทดสอบอุปกรณ์ออนไลน์ ฟรี
h1: ทดสอบอุปกรณ์ออนไลน์
description: ทดสอบอุปกรณ์ออนไลน์ฟรี เช็กคีย์บอร์ด เมาส์ ไมโครโฟน เว็บแคม ลำโพง และหน้าจอ Dead Pixel ในเบราว์เซอร์ รองรับมือถือและคอมพิวเตอร์ ไม่ต้องติดตั้ง ไม่ต้องสมัคร
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-18T09:00:00+07:00'
weight: 124
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ทดสอบอุปกรณ์ออนไลน์
- ทดสอบและวัดค่า
---
เครื่องมือนี้ช่วยตรวจสอบคีย์บอร์ด เมาส์ ไมโครโฟน เว็บแคม ลำโพง และหน้าจอได้ในที่เดียว ทำงานในเบราว์เซอร์ทั้งหมด ไม่มีการอัปโหลดเสียง ภาพ หรือข้อมูลใด ๆ ไปยังเซิร์ฟเวอร์
<div class="dt" id="dt">
<div class="dt-tabs">
<button type="button" class="on" data-t="kb">⌨️ คีย์บอร์ด</button>
<button type="button" data-t="ms">🖱️ เมาส์</button>
<button type="button" data-t="mc">🎤 ไมโครโฟน</button>
<button type="button" data-t="wc">📷 เว็บแคม</button>
<button type="button" data-t="sp">🔊 ลำโพง</button>
<button type="button" data-t="sc">🖥️ หน้าจอ</button>
</div>
<section id="p-kb" class="dt-p on">
<div class="dt-stats"><div>ปุ่มล่าสุด<b id="kb-last">-</b></div><div>รหัสปุ่ม<b id="kb-code">-</b></div><div>กดพร้อมกันสูงสุด<b id="kb-max">0</b></div><div>ปุ่มที่ทดสอบแล้ว<b id="kb-n">0</b></div><div>กดซ้ำเร็วผิดปกติ<b id="kb-chat">0</b></div><div>เวลากดค้างล่าสุด (ms)<b id="kb-hold">-</b></div></div>
<p>กดปุ่มบนคีย์บอร์ดจริง ปุ่มที่กดอยู่จะเป็นสีส้ม ปุ่มที่ทดสอบแล้วจะเป็นสีเขียว</p>
<div id="kb-board" class="kb"></div>
<div class="dt-row"><button type="button" id="kb-reset">รีเซ็ต</button></div>
</section>
<section id="p-ms" class="dt-p">
<div class="dt-stats"><div>คลิกทั้งหมด<b id="ms-n">0</b></div><div>CPS ปัจจุบัน / สูงสุด<b id="ms-cps">0 / 0</b></div><div>ดับเบิลคลิกผิดปกติ<b id="ms-g">0</b></div><div>เลื่อนล้อ ขึ้น / ลง<b id="ms-w">0 / 0</b></div><div>Polling rate โดยประมาณ<b id="ms-hz">-</b></div><div>ตำแหน่ง (x, y)<b id="ms-xy">-</b></div></div>
<div class="dt-btns"><span id="ms-b0">ซ้าย</span><span id="ms-b1">กลาง</span><span id="ms-b2">ขวา</span><span id="ms-b3">ย้อนกลับ</span><span id="ms-b4">ไปข้างหน้า</span></div>
<div id="ms-pad" class="dt-pad">คลิก เลื่อนล้อ และขยับเมาส์เร็ว ๆ ในกรอบนี้</div>
<div class="dt-row"><button type="button" id="ms-reset">รีเซ็ต</button></div>
</section>
<section id="p-mc" class="dt-p">
<div class="dt-row"><select id="mc-sel"><option value="">ไมโครโฟนเริ่มต้น</option></select><button type="button" id="mc-go">เริ่มทดสอบ</button><button type="button" id="mc-stop">หยุด</button><button type="button" id="mc-rec">อัดเสียง 5 วินาที</button></div>
<p id="mc-st">กด “เริ่มทดสอบ” แล้วอนุญาตการใช้ไมโครโฟน</p>
<div class="dt-meter"><i id="mc-m"></i></div>
<div class="dt-stats"><div>ระดับปัจจุบัน (dB)<b id="mc-db">-</b></div><div>ค่าสูงสุด (dB)<b id="mc-pk">-</b></div><div>เสียงรบกวนต่ำสุด (dB)<b id="mc-fl">-</b></div></div>
<canvas id="mc-cv" width="600" height="120"></canvas>
<audio id="mc-au" controls style="display:none;width:100%"></audio>
</section>
<section id="p-wc" class="dt-p">
<div class="dt-row"><select id="wc-sel"><option value="">กล้องเริ่มต้น</option></select><select id="wc-res"><option value="640x480">640 x 480</option><option value="1280x720" selected>1280 x 720 (HD)</option><option value="1920x1080">1920 x 1080 (Full HD)</option></select><button type="button" id="wc-go">เริ่มทดสอบ</button><button type="button" id="wc-stop">หยุด</button></div>
<p id="wc-st">กด “เริ่มทดสอบ” แล้วอนุญาตการใช้กล้อง</p>
<label><input type="checkbox" id="wc-mir" checked> กลับด้านภาพ (Mirror)</label>
<video id="wc-v" autoplay playsinline muted style="transform:scaleX(-1)"></video>
<p>ความละเอียดและ FPS จริง: <b id="wc-info">-</b></p>
</section>
<section id="p-sp" class="dt-p">
<p class="dt-w">ลดระดับเสียงก่อนเริ่มทดสอบ เพื่อป้องกันหูและลำโพง</p>
<div class="dt-row"><button type="button" id="sp-l">ซ้าย</button><button type="button" id="sp-r">ขวา</button><button type="button" id="sp-b">ทั้งสองข้าง</button><button type="button" id="sp-sw">Sweep 20 Hz – 20 kHz</button><button type="button" id="sp-x">หยุด</button></div>
<p><label>ความถี่ <input type="range" id="sp-f" min="40" max="12000" value="440"></label> <b id="sp-fv">440 Hz</b></p>
<p><label>ระดับเสียง <input type="range" id="sp-v" min="1" max="100" value="20"></label></p>
<p id="sp-st"></p>
</section>
<section id="p-sc" class="dt-p">
<div class="dt-stats"><div>ความละเอียดหน้าจอ<b id="sc-res">-</b></div><div>Pixel ratio<b id="sc-dpr">-</b></div><div>Refresh rate<b id="sc-hz">-</b></div></div>
<div class="dt-row" id="sc-cols"></div>
<div class="dt-row"><button type="button" id="sc-hzb">วัด Refresh rate</button><button type="button" id="sc-fl">โหมดกะพริบ (แก้ Stuck Pixel)</button></div>
<p class="dt-w">คลิกเพื่อเปลี่ยนสี กด Esc เพื่อออก โหมดกะพริบมีภาพสว่างวาบเร็ว ผู้ที่ไวต่อแสงกะพริบไม่ควรใช้</p>
<div id="sc-ov" class="dt-ov"></div>
</section>
<div class="dt-row" style="margin-top:12px"><button type="button" id="rp-dl">ดาวน์โหลดรายงาน (.txt)</button><button type="button" id="rp-cp">คัดลอกรายงาน</button><span id="rp-st"></span></div>
</div>
<style>
.dt{--b:rgba(128,128,128,.4);--a:#2563eb;margin:1rem 0}
.dt *{box-sizing:border-box}
.dt-tabs,.dt-row{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:12px;align-items:center}
.dt button,.dt select{font:inherit;padding:8px 12px;border:1px solid var(--b);border-radius:8px;background:transparent;color:inherit;cursor:pointer}
.dt button.on{background:var(--a);border-color:var(--a);color:#fff}
.dt-p{display:none;border:1px solid var(--b);border-radius:12px;padding:14px;margin-bottom:8px}
.dt-p.on{display:block}
.dt-stats{display:grid;grid-template-columns:repeat(auto-fit,minmax(140px,1fr));gap:8px;margin-bottom:12px}
.dt-stats div{border:1px solid var(--b);border-radius:8px;padding:8px;font-size:.85em}
.dt-stats b{display:block;font-size:1.15em;word-break:break-all}
.kb{overflow-x:auto}
.kr{display:flex;gap:4px;margin-bottom:4px;min-width:640px}
.kr.s{min-width:0;max-width:300px}
.k{flex:1 1 0;min-width:0;height:38px;border:1px solid var(--b);border-radius:6px;display:flex;align-items:center;justify-content:center;font-size:11px;user-select:none}
.k.u{background:#16a34a;color:#fff}
.k.d{background:#f59e0b;color:#000}
.dt-btns{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:10px}
.dt-btns span{border:1px solid var(--b);border-radius:20px;padding:4px 12px;font-size:.85em}
.dt-btns span.d{background:#f59e0b;color:#000}
.dt-pad{height:220px;border:2px dashed var(--b);border-radius:12px;display:flex;align-items:center;justify-content:center;text-align:center;padding:10px;touch-action:none;user-select:none;margin-bottom:10px}
.dt-meter{height:14px;border:1px solid var(--b);border-radius:7px;overflow:hidden;margin-bottom:10px}
.dt-meter i{display:block;height:100%;width:0;background:#16a34a}
.dt canvas,.dt video{width:100%;max-width:100%;border:1px solid var(--b);border-radius:8px;background:#000;margin-top:6px}
.dt-w{color:#b45309;font-size:.9em}
.sw{width:44px;height:36px;padding:0!important}
.dt-ov{position:fixed;top:0;left:0;right:0;bottom:0;z-index:99999;display:none;cursor:pointer}
</style>
<script>
(function(){
var $=function(i){return document.getElementById(i)};
var R={},cur='kb';
function each(l,f){Array.prototype.forEach.call(l,f)}
function setR(k,v){R[k]=v}
function fill(sel,kind){
if(!(navigator.mediaDevices&&navigator.mediaDevices.enumerateDevices))return;
navigator.mediaDevices.enumerateDevices().then(function(l){
var v=sel.value,n=0;
while(sel.firstChild)sel.removeChild(sel.firstChild);
l.forEach(function(d){
if(d.kind!==kind)return;
n++;
var o=document.createElement('option');
o.value=d.deviceId;
o.textContent=d.label||('อุปกรณ์ '+n);
sel.appendChild(o);
});
if(v)sel.value=v;
}).catch(function(){});
}
function stopAll(){micStop();camStop();spStop();scClose()}
function show(t){
stopAll();cur=t;
each(document.querySelectorAll('#dt .dt-tabs button'),function(b){b.classList.toggle('on',b.getAttribute('data-t')===t)});
each(document.querySelectorAll('#dt .dt-p'),function(p){p.classList.toggle('on',p.id==='p-'+t)});
}
each(document.querySelectorAll('#dt .dt-tabs button'),function(b){b.addEventListener('click',function(){show(b.getAttribute('data-t'))})});
var rows=[
'Escape F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 PrintScreen ScrollLock Pause',
'Backquote Digit1 Digit2 Digit3 Digit4 Digit5 Digit6 Digit7 Digit8 Digit9 Digit0 Minus Equal Backspace',
'Tab KeyQ KeyW KeyE KeyR KeyT KeyY KeyU KeyI KeyO KeyP BracketLeft BracketRight Backslash',
'CapsLock KeyA KeyS KeyD KeyF KeyG KeyH KeyJ KeyK KeyL Semicolon Quote Enter',
'ShiftLeft KeyZ KeyX KeyC KeyV KeyB KeyN KeyM Comma Period Slash ShiftRight',
'ControlLeft MetaLeft AltLeft Space AltRight MetaRight ContextMenu ControlRight',
'Insert Home PageUp Delete End PageDown',
'ArrowLeft ArrowUp ArrowDown ArrowRight',
'NumLock NumpadDivide NumpadMultiply NumpadSubtract',
'Numpad7 Numpad8 Numpad9 NumpadAdd',
'Numpad4 Numpad5 Numpad6 NumpadEnter',
'Numpad1 Numpad2 Numpad3 Numpad0 NumpadDecimal'
];
var W={Backspace:2,Tab:1.5,Backslash:1.5,CapsLock:1.8,Enter:2.2,ShiftLeft:2.3,ShiftRight:2.7,Space:6,ControlLeft:1.3,MetaLeft:1.3,AltLeft:1.3,AltRight:1.3,MetaRight:1.3,ContextMenu:1.3,ControlRight:1.3};
var L={Escape:'Esc',Backquote:'`',Minus:'-',Equal:'=',Backspace:'Bksp',BracketLeft:'[',BracketRight:']',Backslash:'\\',Semicolon:';',Quote:"'",Comma:',',Period:'.',Slash:'/',ShiftLeft:'Shift',ShiftRight:'Shift',ControlLeft:'Ctrl',ControlRight:'Ctrl',AltLeft:'Alt',AltRight:'Alt',MetaLeft:'Win',MetaRight:'Win',ContextMenu:'Menu',CapsLock:'Caps',ArrowUp:'↑',ArrowDown:'↓',ArrowLeft:'←',ArrowRight:'→',PrintScreen:'PrtSc',ScrollLock:'ScrLk',PageUp:'PgUp',PageDown:'PgDn',Insert:'Ins',Delete:'Del',NumLock:'Num',NumpadDivide:'/',NumpadMultiply:'*',NumpadSubtract:'-',NumpadAdd:'+',NumpadEnter:'Ent',NumpadDecimal:'.'};
function lbl(c){
if(L[c])return L[c];
if(c.indexOf('Key')===0)return c.slice(3);
if(c.indexOf('Digit')===0)return c.slice(5);
if(c.indexOf('Numpad')===0)return c.slice(6);
return c;
}
var keyEl={},down={},hold={},used={},lastUp={},nUsed=0,chat=0,maxK=0;
var board=$('kb-board');
rows.forEach(function(r,i){
var row=document.createElement('div');
row.className=i>5?'kr s':'kr';
r.split(' ').forEach(function(c){
var k=document.createElement('div');
k.className='k';
k.style.flexGrow=W[c]||1;
k.textContent=lbl(c);
keyEl[c]=k;
row.appendChild(k);
});
board.appendChild(row);
});
function kbUpd(){
$('kb-max').textContent=maxK;
$('kb-n').textContent=nUsed;
$('kb-chat').textContent=chat;
setR('คีย์บอร์ด','ทดสอบ '+nUsed+' ปุ่ม, กดพร้อมกันสูงสุด '+maxK+', กดซ้ำเร็วผิดปกติ '+chat+' ครั้ง');
}
window.addEventListener('keydown',function(e){
if(cur!=='kb')return;
var t=e.target&&e.target.tagName;
if(t==='SELECT'||t==='INPUT')return;
e.preventDefault();
if(e.repeat)return;
var c=e.code||e.key,now=performance.now();
if(lastUp[c]&&now-lastUp[c]<40)chat++;
down[c]=1;hold[c]=now;
if(!used[c]){used[c]=1;nUsed++}
var n=Object.keys(down).length;
if(n>maxK)maxK=n;
if(keyEl[c]){keyEl[c].classList.add('u');keyEl[c].classList.add('d')}
$('kb-last').textContent=e.key===' '?'Space':e.key;
$('kb-code').textContent=c;
kbUpd();
});
window.addEventListener('keyup',function(e){
if(cur!=='kb')return;
var c=e.code||e.key,now=performance.now();
if(hold[c])$('kb-hold').textContent=Math.round(now-hold[c]);
delete down[c];lastUp[c]=now;
if(keyEl[c])keyEl[c].classList.remove('d');
});
window.addEventListener('blur',function(){
down={};
each(board.querySelectorAll('.d'),function(k){k.classList.remove('d')});
});
$('kb-reset').addEventListener('click',function(){
down={};hold={};used={};lastUp={};nUsed=0;chat=0;maxK=0;
each(board.querySelectorAll('.k'),function(k){k.classList.remove('u');k.classList.remove('d')});
$('kb-last').textContent='-';$('kb-code').textContent='-';$('kb-hold').textContent='-';
kbUpd();
});
var pad=$('ms-pad');
var clicks=[],mv=[],lastDown={},nClick=0,maxCps=0,ghost=0,wUp=0,wDn=0,maxHz=0;
function msUpd(){
var now=performance.now(),i;
clicks=clicks.filter(function(t){return now-t<1000});
mv=mv.filter(function(t){return now-t<1000});
if(clicks.length>maxCps)maxCps=clicks.length;
if(mv.length>maxHz)maxHz=mv.length;
$('ms-n').textContent=nClick;
$('ms-cps').textContent=clicks.length+' / '+maxCps;
$('ms-g').textContent=ghost;
$('ms-w').textContent=wUp+' / '+wDn;
$('ms-hz').textContent=maxHz?maxHz+' Hz':'-';
setR('เมาส์','คลิก '+nClick+', CPS สูงสุด '+maxCps+', ดับเบิลคลิกผิดปกติ '+ghost+', polling rate ประมาณ '+maxHz+' Hz');
}
setInterval(function(){if(cur==='ms')msUpd()},400);
pad.addEventListener('contextmenu',function(e){e.preventDefault()});
pad.addEventListener('mousedown',function(e){
e.preventDefault();
var b=e.button,n=performance.now();
if(lastDown[b]&&n-lastDown[b]<50)ghost++;
lastDown[b]=n;nClick++;clicks.push(n);
var el=$('ms-b'+b);
if(el)el.classList.add('d');
msUpd();
});
document.addEventListener('mouseup',function(e){
var el=$('ms-b'+e.button);
if(el)el.classList.remove('d');
});
pad.addEventListener('wheel',function(e){
e.preventDefault();
if(e.deltaY<0)wUp++;else if(e.deltaY>0)wDn++;
msUpd();
},{passive:false});
pad.addEventListener('pointermove',function(e){
var c=e.getCoalescedEvents?e.getCoalescedEvents().length:1,n=performance.now(),i;
for(i=0;i<Math.max(c,1);i++)mv.push(n);
var r=pad.getBoundingClientRect();
$('ms-xy').textContent=Math.round(e.clientX-r.left)+', '+Math.round(e.clientY-r.top);
});
$('ms-reset').addEventListener('click',function(){
clicks=[];mv=[];lastDown={};nClick=0;maxCps=0;ghost=0;wUp=0;wDn=0;maxHz=0;msUpd();
});
var mic={s:null,c:null,raf:0};
function micStop(){
cancelAnimationFrame(mic.raf);
if(mic.s)mic.s.getTracks().forEach(function(t){t.stop()});
if(mic.c&&mic.c.close)mic.c.close();
if(mic.s)$('mc-st').textContent='หยุดทดสอบแล้ว';
mic.s=null;mic.c=null;
}
function micStart(){
micStop();
if(!(navigator.mediaDevices&&navigator.mediaDevices.getUserMedia)){
$('mc-st').textContent='เบราว์เซอร์ไม่รองรับ หรือหน้านี้ไม่ได้เปิดผ่าน HTTPS';
return;
}
var id=$('mc-sel').value;
navigator.mediaDevices.getUserMedia({audio:id?{deviceId:{exact:id}}:true}).then(function(s){
var AC=window.AudioContext||window.webkitAudioContext;
mic.s=s;mic.c=new AC();
if(mic.c.resume)mic.c.resume();
var an=mic.c.createAnalyser();
an.fftSize=1024;
mic.c.createMediaStreamSource(s).connect(an);
var buf=new Uint8Array(an.fftSize),cv=$('mc-cv'),x=cv.getContext('2d');
var peak=-100,floor=0,t0=performance.now();
fill($('mc-sel'),'audioinput');
$('mc-st').textContent='กำลังฟัง... ลองพูดหรือเคาะที่ไมโครโฟน';
function loop(){
if(!mic.s)return;
an.getByteTimeDomainData(buf);
var sum=0,i;
for(i=0;i<buf.length;i++){var v=(buf[i]-128)/128;sum+=v*v}
var db=Math.max(-100,20*Math.log10(Math.sqrt(sum/buf.length)||0.00001));
if(db>peak)peak=db;
if(performance.now()-t0>1000&&db<floor)floor=db;
$('mc-m').style.width=Math.max(0,Math.min(100,(db+60)/60*100))+'%';
$('mc-db').textContent=db.toFixed(1);
$('mc-pk').textContent=peak.toFixed(1);
$('mc-fl').textContent=floor.toFixed(1);
setR('ไมโครโฟน','ระดับสูงสุด '+peak.toFixed(1)+' dB, เสียงรบกวนต่ำสุด '+floor.toFixed(1)+' dB');
x.clearRect(0,0,cv.width,cv.height);
x.strokeStyle='#22c55e';x.lineWidth=2;x.beginPath();
for(i=0;i<buf.length;i++){
var px=i/buf.length*cv.width,py=buf[i]/255*cv.height;
if(i===0)x.moveTo(px,py);else x.lineTo(px,py);
}
x.stroke();
mic.raf=requestAnimationFrame(loop);
}
loop();
}).catch(function(e){
$('mc-st').textContent=e&&e.name==='NotAllowedError'?'ถูกปฏิเสธสิทธิ์ไมโครโฟน ให้อนุญาตในการตั้งค่าเบราว์เซอร์':'ใช้ไมโครโฟนไม่ได้ ('+(e&&e.name)+')';
});
}
$('mc-go').addEventListener('click',micStart);
$('mc-stop').addEventListener('click',micStop);
$('mc-rec').addEventListener('click',function(){
if(!mic.s||!window.MediaRecorder){$('mc-st').textContent='กดเริ่มทดสอบก่อน หรือเบราว์เซอร์ไม่รองรับการอัดเสียง';return}
var ch=[],r=new MediaRecorder(mic.s);
r.ondataavailable=function(e){ch.push(e.data)};
r.onstop=function(){
var a=$('mc-au');
a.src=URL.createObjectURL(new Blob(ch,{type:r.mimeType}));
a.style.display='block';
if(mic.s)$('mc-st').textContent='อัดเสร็จแล้ว กดเล่นเพื่อฟังเสียงที่บันทึก';
};
r.start();
$('mc-st').textContent='กำลังอัดเสียง 5 วินาที...';
setTimeout(function(){if(r.state!=='inactive')r.stop()},5000);
});
var cam={s:null};
function camStop(){
if(cam.s)cam.s.getTracks().forEach(function(t){t.stop()});
if(cam.s)$('wc-st').textContent='หยุดทดสอบแล้ว';
cam.s=null;
$('wc-v').srcObject=null;
}
function camStart(){
camStop();
if(!(navigator.mediaDevices&&navigator.mediaDevices.getUserMedia)){
$('wc-st').textContent='เบราว์เซอร์ไม่รองรับ หรือหน้านี้ไม่ได้เปิดผ่าน HTTPS';
return;
}
var id=$('wc-sel').value,wh=$('wc-res').value.split('x'),v={width:{ideal:+wh[0]},height:{ideal:+wh[1]}};
if(id)v.deviceId={exact:id};
navigator.mediaDevices.getUserMedia({video:v}).then(function(s){
cam.s=s;
var el=$('wc-v');
el.srcObject=s;
if(el.play)el.play().catch(function(){});
var st=s.getVideoTracks()[0].getSettings();
var info=(st.width||'?')+' x '+(st.height||'?')+' @ '+Math.round(st.frameRate||0)+' fps';
$('wc-info').textContent=info;
$('wc-st').textContent='กล้องทำงานปกติ';
setR('เว็บแคม',info);
fill($('wc-sel'),'videoinput');
}).catch(function(e){
$('wc-st').textContent=e&&e.name==='NotAllowedError'?'ถูกปฏิเสธสิทธิ์กล้อง ให้อนุญาตในการตั้งค่าเบราว์เซอร์':'ใช้กล้องไม่ได้ ('+(e&&e.name)+')';
});
}
$('wc-go').addEventListener('click',camStart);
$('wc-stop').addEventListener('click',camStop);
$('wc-mir').addEventListener('change',function(){$('wc-v').style.transform=this.checked?'scaleX(-1)':'none'});
var sc=null,osc=null,gn=null,fq=0,sweeping=false;
function spStop(){
clearInterval(fq);
if(osc){try{osc.stop()}catch(e){}try{osc.disconnect()}catch(e){}osc=null}
sweeping=false;
}
function spPlay(pan,sweep){
spStop();
var AC=window.AudioContext||window.webkitAudioContext;
if(!AC){$('sp-st').textContent='เบราว์เซอร์ไม่รองรับ Web Audio';return}
sc=sc||new AC();
if(sc.resume)sc.resume();
osc=sc.createOscillator();
gn=sc.createGain();
gn.gain.value=$('sp-v').value/200;
var t=sc.currentTime;
osc.type='sine';
sweeping=sweep;
if(sweep){
osc.frequency.setValueAtTime(20,t);
osc.frequency.exponentialRampToValueAtTime(20000,t+12);
osc.stop(t+12);
fq=setInterval(function(){if(osc)$('sp-fv').textContent=Math.round(osc.frequency.value)+' Hz'},100);
}else{
osc.frequency.value=+$('sp-f').value;
}
osc.connect(gn);
if(sc.createStereoPanner){
var p=sc.createStereoPanner();
p.pan.value=pan;
gn.connect(p);p.connect(sc.destination);
$('sp-st').textContent='';
}else{
gn.connect(sc.destination);
$('sp-st').textContent='เบราว์เซอร์นี้เลือกช่องซ้าย/ขวาไม่ได้ เสียงจะออกทั้งสองข้าง';
}
osc.start(t);
setR('ลำโพง','ทดสอบแล้ว ('+(sweep?'sweep':pan<0?'ซ้าย':pan>0?'ขวา':'ทั้งสองข้าง')+')');
}
$('sp-l').addEventListener('click',function(){spPlay(-1,false)});
$('sp-r').addEventListener('click',function(){spPlay(1,false)});
$('sp-b').addEventListener('click',function(){spPlay(0,false)});
$('sp-sw').addEventListener('click',function(){spPlay(0,true)});
$('sp-x').addEventListener('click',spStop);
$('sp-f').addEventListener('input',function(){
$('sp-fv').textContent=this.value+' Hz';
if(osc&&!sweeping)osc.frequency.value=+this.value;
});
$('sp-v').addEventListener('input',function(){if(gn)gn.gain.value=this.value/200});
var cols=['#000000','#ffffff','#ff0000','#00ff00','#0000ff','#ffff00','#00ffff','#ff00ff','linear-gradient(90deg,#000,#fff)'];
var ov=$('sc-ov'),ci=0,fl=0;
var cbox=$('sc-cols');
cols.forEach(function(c,i){
var b=document.createElement('button');
b.type='button';b.className='sw';b.style.background=c;
b.setAttribute('aria-label','สีที่ '+(i+1));
b.addEventListener('click',function(){scShow(i)});
cbox.appendChild(b);
});
function scShow(i){
ci=i;
ov.style.background=cols[i];
ov.style.display='block';
var f=ov.requestFullscreen||ov.webkitRequestFullscreen;
if(f){try{var p=f.call(ov);if(p&&p.catch)p.catch(function(){})}catch(e){}}
}
function scClose(){
clearInterval(fl);fl=0;
ov.style.display='none';
if(document.fullscreenElement&&document.exitFullscreen){try{document.exitFullscreen().catch(function(){})}catch(e){}}
}
ov.addEventListener('click',function(){
if(fl){scClose();return}
ci++;
if(ci>=cols.length){scClose();return}
ov.style.background=cols[ci];
});
document.addEventListener('keydown',function(e){if(e.key==='Escape')scClose()});
document.addEventListener('fullscreenchange',function(){if(!document.fullscreenElement&&ov.style.display==='block')scClose()});
$('sc-fl').addEventListener('click',function(){
scShow(0);
fl=setInterval(function(){ci=(ci+1)%5;ov.style.background=cols[ci]},80);
});
var dpr=window.devicePixelRatio||1;
$('sc-res').textContent=screen.width+' x '+screen.height+' (จริง '+Math.round(screen.width*dpr)+' x '+Math.round(screen.height*dpr)+')';
$('sc-dpr').textContent=dpr;
setR('หน้าจอ',$('sc-res').textContent);
$('sc-hzb').addEventListener('click',function(){
var a=[],last=0,n=0;
$('sc-hz').textContent='กำลังวัด...';
function f(t){
if(last)a.push(t-last);
last=t;n++;
if(n<90){requestAnimationFrame(f);return}
a.sort(function(x,y){return x-y});
var h=Math.round(1000/a[a.length>>1]);
$('sc-hz').textContent=h+' Hz';
setR('Refresh rate',h+' Hz');
}
requestAnimationFrame(f);
});
function report(){
var out=['รายงานทดสอบอุปกรณ์ออนไลน์','วันที่: '+new Date().toLocaleString(),'เบราว์เซอร์: '+navigator.userAgent,'ระบบ: '+(navigator.platform||'-'),'ภาษา: '+navigator.language,''],k;
for(k in R)out.push(k+': '+R[k]);
return out.join('\n');
}
$('rp-dl').addEventListener('click',function(){
var a=document.createElement('a');
a.href=URL.createObjectURL(new Blob([report()],{type:'text/plain;charset=utf-8'}));
a.download='device-test-report.txt';
document.body.appendChild(a);a.click();document.body.removeChild(a);
$('rp-st').textContent='ดาวน์โหลดแล้ว';
});
$('rp-cp').addEventListener('click',function(){
if(navigator.clipboard&&navigator.clipboard.writeText){
navigator.clipboard.writeText(report()).then(function(){$('rp-st').textContent='คัดลอกแล้ว'},function(){$('rp-st').textContent='คัดลอกไม่สำเร็จ'});
}else{$('rp-st').textContent='เบราว์เซอร์ไม่รองรับการคัดลอก'}
});
})();
</script>

## วิธีใช้งานเครื่องมือทดสอบอุปกรณ์

1. เลือกแท็บอุปกรณ์ที่ต้องการตรวจสอบ ได้แก่ คีย์บอร์ด เมาส์ ไมโครโฟน เว็บแคม ลำโพง หรือหน้าจอ
2. **คีย์บอร์ด:** กดทีละปุ่มให้ครบ ปุ่มที่ไม่เปลี่ยนเป็นสีเขียวคือปุ่มที่อาจเสีย ลองกดหลายปุ่มพร้อมกันเพื่อดูค่ากดพร้อมกันสูงสุด และดูตัวเลข "กดซ้ำเร็วผิดปกติ" หากพิมพ์ซ้ำสองตัว
3. **เมาส์:** คลิกทุกปุ่มและเลื่อนล้อในกรอบ ดูว่าปุ่มที่กดสว่างขึ้นถูกต้อง หากคลิกครั้งเดียวแต่นับเป็นสองครั้ง ตัวนับดับเบิลคลิกผิดปกติจะเพิ่มขึ้น ขยับเมาส์เร็ว ๆ ต่อเนื่องสักครู่เพื่อดูค่า Polling rate โดยประมาณ
4. **ไมโครโฟน:** กดเริ่มทดสอบแล้วอนุญาตสิทธิ์ พูดตามปกติและดูแถบระดับเสียงกับคลื่นเสียง ลองกดอัดเสียง 5 วินาทีแล้วฟังกลับเพื่อเช็กคุณภาพเสียงจริง หากมีหลายไมค์ให้เลือกจากรายการ
5. **เว็บแคม:** เลือกกล้องและความละเอียด กดเริ่มทดสอบ ดูภาพสดและค่าความละเอียดกับ FPS ที่กล้องให้ได้จริง ติ๊กกลับด้านภาพหากต้องการให้เหมือนส่องกระจก
6. **ลำโพง:** ลดระดับเสียงไว้ก่อน กดซ้าย ขวา หรือทั้งสองข้างเพื่อเช็กช่องสัญญาณ ปรับความถี่เพื่อฟังเสียงทุ้มแหลม หรือกด Sweep เพื่อไล่ความถี่ต่ำถึงสูงและฟังว่ามีเสียงแตกหรือขาดหายหรือไม่
7. **หน้าจอ:** กดสีเพื่อเปิดเต็มจอ มองหาจุดดำ จุดสว่าง หรือสีผิดเพี้ยน คลิกเพื่อเปลี่ยนสี และกด Esc เพื่อออก ใช้ปุ่มวัด Refresh rate เพื่อดูอัตรารีเฟรชของจอ
8. เมื่อทดสอบเสร็จ กด "ดาวน์โหลดรายงาน" หรือ "คัดลอกรายงาน" เพื่อเก็บผลไว้แนบตอนเคลมประกันหรือตรวจเครื่องมือสอง

## คำอธิบายศัพท์ที่เกี่ยวข้อง

- **Ghosting:** ปัญหาที่คีย์บอร์ดไม่รับรู้ปุ่มบางปุ่มเมื่อกดหลายปุ่มพร้อมกัน พบบ่อยในคีย์บอร์ดราคาประหยัด
- **Rollover / NKRO:** ความสามารถของคีย์บอร์ดในการรับรู้การกดหลายปุ่มพร้อมกัน NKRO คือรับได้ทุกปุ่มพร้อมกัน
- **Chatter (กดซ้ำ):** สวิตช์คีย์บอร์ดหรือเมาส์ส่งสัญญาณซ้ำเองในเวลาสั้นมาก ทำให้พิมพ์ตัวอักษรซ้ำหรือคลิกซ้อน
- **Hold time (เวลากดค้าง):** ระยะเวลาตั้งแต่กดปุ่มลงจนปล่อย หน่วยมิลลิวินาที (ms)
- **Double-click ผิดปกติ:** การคลิกซ้ำเร็วเกินกว่าที่มือคนทำได้ มักเกิดจากสวิตช์เมาส์สึกหรอ
- **CPS (Clicks Per Second):** จำนวนคลิกต่อวินาที ใช้วัดความเร็วในการคลิก
- **Polling rate:** จำนวนครั้งต่อวินาทีที่เมาส์รายงานตำแหน่งให้คอมพิวเตอร์ เช่น 125, 500 หรือ 1000 Hz ยิ่งสูงยิ่งลื่น ค่าในเครื่องมือนี้เป็นการประมาณจากเบราว์เซอร์
- **DPI:** ความไวของเซนเซอร์เมาส์ ยิ่งสูงเคอร์เซอร์ยิ่งเคลื่อนไกลเมื่อขยับเมาส์นิดเดียว
- **dB (เดซิเบล):** หน่วยวัดความดังของเสียง ในเครื่องมือนี้ 0 dB คือดังสุด ค่ายิ่งติดลบยิ่งเบา
- **Noise floor (เสียงรบกวน):** ระดับเสียงพื้นหลังที่ไมโครโฟนจับได้ตอนเงียบ ยิ่งต่ำยิ่งดี
- **FPS (Frames Per Second):** จำนวนเฟรมภาพต่อวินาที ยิ่งสูงภาพยิ่งลื่น
- **Resolution (ความละเอียด):** จำนวนพิกเซลของภาพ เช่น 1280 x 720 (HD) หรือ 1920 x 1080 (Full HD)
- **Mirror (กลับด้านภาพ):** แสดงภาพเหมือนส่องกระจก ไม่ได้เปลี่ยนภาพที่ถูกส่งออกไปจริง
- **Stereo (ซ้าย/ขวา):** การแยกเสียงเป็นสองช่อง ใช้เช็กว่าลำโพงหรือหูฟังแต่ละข้างทำงานครบ
- **Frequency sweep:** เสียงที่ไล่ความถี่จากต่ำไปสูง ใช้ฟังหาช่วงที่ลำโพงเสียงแตกหรือไม่ออกเสียง
- **Dead pixel:** พิกเซลที่ดับสนิท มักเห็นเป็นจุดดำบนพื้นสีอื่น และมักซ่อมไม่ได้
- **Stuck pixel:** พิกเซลที่ค้างเป็นสีใดสีหนึ่ง เช่น แดง เขียว น้ำเงิน บางครั้งแก้ได้ด้วยการกะพริบสี
- **Refresh rate:** จำนวนครั้งที่หน้าจอรีเฟรชภาพต่อวินาที เช่น 60, 120 หรือ 144 Hz
- **Pixel ratio (DPR):** อัตราส่วนพิกเซลจริงของจอต่อพิกเซลที่เบราว์เซอร์รายงาน พบมากในจอความละเอียดสูง

## คำถามที่พบบ่อย

**ข้อมูลของฉันถูกส่งไปที่ไหนหรือไม่?**
ไม่ การทดสอบทั้งหมดทำในเบราว์เซอร์ของคุณ เสียงและภาพจากไมโครโฟนกับกล้องไม่ถูกอัปโหลด

**ทำไมเบราว์เซอร์ไม่ถามสิทธิ์ใช้ไมโครโฟนหรือกล้อง?**
ต้องเปิดหน้านี้ผ่าน HTTPS และอาจเคยกดบล็อกไว้ ให้กดไอคอนแม่กุญแจข้างช่องที่อยู่เว็บ แล้วเปลี่ยนสิทธิ์เป็นอนุญาต

**ทดสอบคีย์บอร์ดบนมือถือได้ไหม?**
ได้เมื่อต่อคีย์บอร์ดบลูทูธหรือ USB หน้าจอสัมผัสอย่างเดียวไม่มีข้อมูลปุ่มให้อ่าน แต่ทดสอบกล้อง ไมโครโฟน ลำโพง และหน้าจอได้

**พบ Dead pixel แล้วควรทำอย่างไร?**
ลองโหมดกะพริบเพื่อแก้ Stuck pixel หากจุดยังอยู่ ให้บันทึกรายงานและติดต่อศูนย์บริการ โดยเฉพาะเมื่อยังอยู่ในระยะประกัน