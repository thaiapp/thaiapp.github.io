---
title: เครื่องมือรูปภาพออนไลน์ ฟรี | Prasslina
h1: เครื่องมือรูปภาพออนไลน์
description: เครื่องมือรูปภาพออนไลน์ฟรี ครอป หมุน ปรับขนาด บีบอัด ใส่ลายน้ำ แปลง JPG PNG WebP ในไม่กี่คลิก ประมวลผลในเครื่อง ไม่อัปโหลด ใช้ได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-10T09:00:00+07:00'
weight: 98
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- เครื่องมือรูปภาพออนไลน์
- รูปภาพ
---

<style>
.pi{max-width:860px;margin:0 auto;font-size:16px;line-height:1.5}
.pi [hidden]{display:none!important}
.pi *{box-sizing:border-box}
.pi-drop{display:block;padding:32px 16px;text-align:center;border:2px dashed rgba(128,128,128,.5);border-radius:10px;cursor:pointer}
.pi-drop.on{border-color:#0f766e;background:rgba(15,118,110,.08)}
.pi-drop small{opacity:.7}
.pi-bar{display:flex;flex-wrap:wrap;gap:8px;justify-content:space-between;align-items:center;margin:16px 0 8px}
.pi-stagewrap{text-align:center;background:rgba(128,128,128,.12);border-radius:8px;padding:8px}
.pi-stage{position:relative;display:inline-block;max-width:100%;line-height:0}
.pi-stage canvas{max-width:100%;max-height:60vh;touch-action:none;cursor:crosshair;display:block}
#pi-sel{position:absolute;border:2px dashed #fff;outline:1px solid #0f766e;background:rgba(15,118,110,.2);pointer-events:none}
.pi-hint{font-size:14px;opacity:.7;margin:6px 0 12px}
.pi-tabs{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:10px}
.pi button,.pi select,.pi input[type=text],.pi input[type=number]{font:inherit;padding:7px 12px;border-radius:6px;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit}
.pi button{cursor:pointer}
.pi button:disabled{opacity:.4;cursor:default}
.pi button:focus-visible,.pi select:focus-visible,.pi input:focus-visible{outline:2px solid #0f766e;outline-offset:2px}
.pi-tabs button[aria-selected=true]{background:#0f766e;border-color:#0f766e;color:#fff}
.pi .pi-go{background:#0f766e;border-color:#0f766e;color:#fff}
.pi-panel{display:flex;flex-wrap:wrap;gap:8px;align-items:center;padding:12px;border:1px solid rgba(128,128,128,.35);border-radius:8px}
.pi-panel label{display:inline-flex;gap:6px;align-items:center}
.pi input[type=number]{width:100px}
.pi-out{margin-top:16px}
</style>
<div class="pi" id="pi">
<label class="pi-drop" id="pi-drop" for="pi-file"><strong>เลือกรูปภาพ</strong> หรือลากไฟล์มาวางที่นี่<br><small>รองรับ JPG, PNG, WebP และไฟล์ที่เบราว์เซอร์เปิดได้ · ประมวลผลในเครื่อง 100% ไม่อัปโหลด</small></label>
<input type="file" id="pi-file" accept="image/*" hidden>
<div id="pi-work" hidden>
<div class="pi-bar"><span id="pi-info"></span><span><button type="button" id="pi-undo" data-act="undo">ย้อนกลับ</button> <button type="button" data-act="reset">คืนค่าต้นฉบับ</button></span></div>
<div class="pi-stagewrap"><div class="pi-stage"><canvas id="pi-view"></canvas><div id="pi-sel" hidden></div></div></div>
<p class="pi-hint">ลากบนรูปเพื่อเลือกพื้นที่ (ใช้กับครอปและโมเสก)</p>
<div class="pi-tabs">
<button type="button" data-tab="crop" aria-selected="true">ครอป</button>
<button type="button" data-tab="rotate" aria-selected="false">หมุน / กลับด้าน</button>
<button type="button" data-tab="resize" aria-selected="false">ปรับขนาด</button>
<button type="button" data-tab="blur" aria-selected="false">โมเสก / เบลอ</button>
<button type="button" data-tab="wm" aria-selected="false">ลายน้ำ</button>
</div>
<div class="pi-panel" data-panel="crop">
<button type="button" data-act="clr">ล้างการเลือก</button>
<button type="button" data-ar="1:1">1:1</button>
<button type="button" data-ar="4:3">4:3</button>
<button type="button" data-ar="3:4">3:4</button>
<button type="button" data-ar="16:9">16:9</button>
<button type="button" data-ar="9:16">9:16</button>
<label><input type="checkbox" id="pi-circ"> ครอปวงกลม (PNG)</label>
<button type="button" class="pi-go" data-act="crop">ครอป</button>
</div>
<div class="pi-panel" data-panel="rotate" hidden>
<button type="button" data-act="r270">หมุนซ้าย 90°</button>
<button type="button" data-act="r90">หมุนขวา 90°</button>
<button type="button" data-act="r180">หมุน 180°</button>
<button type="button" data-act="fh">กลับด้านซ้าย-ขวา</button>
<button type="button" data-act="fv">กลับด้านบน-ล่าง</button>
</div>
<div class="pi-panel" data-panel="resize" hidden>
<label>กว้าง <input type="number" id="pi-w" min="1" max="10000"> px</label>
<label>สูง <input type="number" id="pi-h" min="1" max="10000"> px</label>
<label><input type="checkbox" id="pi-lock" checked> ล็อกอัตราส่วน</label>
<button type="button" data-act="half">50%</button>
<button type="button" data-act="quarter">25%</button>
<button type="button" class="pi-go" data-act="resize">ปรับขนาด</button>
</div>
<div class="pi-panel" data-panel="blur" hidden>
<label>รูปแบบ <select id="pi-mode"><option value="mosaic">โมเสก</option><option value="blur">เบลอ</option></select></label>
<label>ความแรง <input type="range" id="pi-str" min="4" max="60" value="16"></label>
<button type="button" class="pi-go" data-act="blur">ใช้กับพื้นที่ที่เลือก</button>
</div>
<div class="pi-panel" data-panel="wm" hidden>
<label>ข้อความ <input type="text" id="pi-wt" value="© Prasslina"></label>
<label>ขนาด <input type="range" id="pi-ws" min="2" max="20" value="6"></label>
<label>ความโปร่งใส <input type="range" id="pi-wo" min="10" max="100" value="60"></label>
<label>ตำแหน่ง <select id="pi-wp"><option value="br">ขวาล่าง</option><option value="bl">ซ้ายล่าง</option><option value="tr">ขวาบน</option><option value="tl">ซ้ายบน</option><option value="c">กึ่งกลาง</option><option value="tile">เรียงเต็มภาพ</option></select></label>
<button type="button" class="pi-go" data-act="wm">ใส่ลายน้ำ</button>
</div>
<div class="pi-panel pi-out">
<label>ไฟล์ผลลัพธ์ <select id="pi-fmt"><option value="image/jpeg">JPG</option><option value="image/png">PNG</option><option value="image/webp">WebP</option></select></label>
<label>คุณภาพ <input type="range" id="pi-q" min="10" max="100" value="85"> <span id="pi-qv">85%</span></label>
<span id="pi-size"></span>
<button type="button" class="pi-go" data-act="dl">ดาวน์โหลด</button>
</div>
</div>
</div>
<script>
(function(){
var $=function(i){return document.getElementById(i)};
var hist=[],cur=null,orig=null,sel=null,drag=null,name='image',origSize=0,timer=0;
var view=$('pi-view'),box=$('pi-sel');
function mk(w,h){var c=document.createElement('canvas');c.width=Math.max(1,Math.round(w));c.height=Math.max(1,Math.round(h));return c}
function fmt(n){return n>1048576?(n/1048576).toFixed(2)+' MB':Math.max(1,Math.round(n/1024))+' KB'}
function drawSel(){
if(!sel||!cur){box.hidden=true;return}
box.hidden=false;
box.style.left=(sel.x/cur.width*100)+'%';box.style.top=(sel.y/cur.height*100)+'%';
box.style.width=(sel.w/cur.width*100)+'%';box.style.height=(sel.h/cur.height*100)+'%';
}
function out(cb){
var t=$('pi-fmt').value,c=cur;
if(t==='image/jpeg'){c=mk(cur.width,cur.height);var x=c.getContext('2d');x.fillStyle='#fff';x.fillRect(0,0,c.width,c.height);x.drawImage(cur,0,0)}
c.toBlob(cb,t,(+$('pi-q').value)/100);
}
function est(){
clearTimeout(timer);
timer=setTimeout(function(){
if(!cur)return;
out(function(b){if(!b)return;$('pi-size').textContent='ขนาดไฟล์ประมาณ '+fmt(b.size)+(origSize?' (ต้นฉบับ '+fmt(origSize)+')':'')});
},250);
}
function syncQ(){$('pi-q').disabled=($('pi-fmt').value==='image/png');$('pi-qv').textContent=$('pi-q').value+'%'}
function show(){
view.width=cur.width;view.height=cur.height;
view.getContext('2d').drawImage(cur,0,0);
$('pi-info').textContent=cur.width+' × '+cur.height+' px';
$('pi-w').value=cur.width;$('pi-h').value=cur.height;
$('pi-undo').disabled=!hist.length;
drawSel();est();
}
function push(c){if(cur){hist.push(cur);if(hist.length>15){hist.shift()}}cur=c;sel=null;show()}
function load(f){
if(!f)return;
var u=URL.createObjectURL(f),im=new Image();
im.onload=function(){
var c=mk(im.naturalWidth,im.naturalHeight);
c.getContext('2d').drawImage(im,0,0);
URL.revokeObjectURL(u);
name=f.name.replace(/\.[^.]+$/,'')||'image';origSize=f.size;
orig=c;hist=[];cur=null;
$('pi-work').hidden=false;
$('pi-fmt').value={'image/png':'image/png','image/webp':'image/webp'}[f.type]||'image/jpeg';
syncQ();push(c);
};
im.onerror=function(){URL.revokeObjectURL(u);alert('ไม่สามารถเปิดไฟล์นี้ได้ ลองใช้ไฟล์ JPG, PNG หรือ WebP')};
im.src=u;
}
function pt(e){
var r=view.getBoundingClientRect();
return{x:Math.min(cur.width,Math.max(0,(e.clientX-r.left)*cur.width/r.width)),y:Math.min(cur.height,Math.max(0,(e.clientY-r.top)*cur.height/r.height))};
}
view.addEventListener('pointerdown',function(e){
if(!cur)return;
drag=pt(e);sel=null;
try{view.setPointerCapture(e.pointerId)}catch(x){}
drawSel();
});
view.addEventListener('pointermove',function(e){
if(!drag)return;
var p=pt(e);
sel={x:Math.min(drag.x,p.x),y:Math.min(drag.y,p.y),w:Math.abs(p.x-drag.x),h:Math.abs(p.y-drag.y)};
drawSel();
});
function endDrag(){drag=null;if(sel&&!(sel.w>4&&sel.h>4)){sel=null;drawSel()}}
view.addEventListener('pointerup',endDrag);
view.addEventListener('pointercancel',endDrag);
function needSel(){if(sel)return true;alert('ลากบนรูปเพื่อเลือกพื้นที่ก่อน');return false}
function setAspect(a,b){
var w=cur.width,h=w*b/a;
if(h>cur.height){h=cur.height;w=h*a/b}
sel={x:(cur.width-w)/2,y:(cur.height-h)/2,w:w,h:h};drawSel();
}
function rot(d){
var sw=(d!==180),c=mk(sw?cur.height:cur.width,sw?cur.width:cur.height),x=c.getContext('2d');
x.translate(c.width/2,c.height/2);x.rotate(d*Math.PI/180);
x.drawImage(cur,-cur.width/2,-cur.height/2);push(c);
}
function flip(a,b){
var c=mk(cur.width,cur.height),x=c.getContext('2d');
x.translate(a===-1?c.width:0,b===-1?c.height:0);x.scale(a,b);
x.drawImage(cur,0,0);push(c);
}
function setSize(w,h){
var c=mk(w,h),x=c.getContext('2d');
x.imageSmoothingQuality='high';x.drawImage(cur,0,0,c.width,c.height);push(c);
}
function wmark(){
var t=$('pi-wt').value.trim();
if(!t){alert('พิมพ์ข้อความลายน้ำก่อน');return}
var c=mk(cur.width,cur.height),x=c.getContext('2d'),fs=Math.max(10,cur.width*(+$('pi-ws').value)/100),pos=$('pi-wp').value,pad=fs*0.6;
x.drawImage(cur,0,0);
x.globalAlpha=(+$('pi-wo').value)/100;
x.font='bold '+fs+'px sans-serif';x.fillStyle='#fff';x.strokeStyle='rgba(0,0,0,.55)';
x.lineWidth=Math.max(1,fs/14);x.lineJoin='round';x.textBaseline='middle';
function put(px,py){x.strokeText(t,px,py);x.fillText(t,px,py)}
if(pos==='tile'){
x.save();x.translate(c.width/2,c.height/2);x.rotate(-Math.PI/6);x.textAlign='center';
var d=Math.hypot(c.width,c.height),sx=x.measureText(t).width+fs*2,sy=fs*3,i,j;
for(j=-d;d>j;j+=sy){for(i=-d;d>i;i+=sx){put(i,j)}}
x.restore();
}else{
var v=(pos==='c')?'m':pos.charAt(0),h=(pos==='c')?'c':pos.charAt(1);
x.textAlign=(h==='l')?'left':(h==='r')?'right':'center';
put(h==='l'?pad:h==='r'?c.width-pad:c.width/2,v==='t'?pad+fs/2:v==='b'?c.height-pad-fs/2:c.height/2);
}
push(c);
}
var acts={
undo:function(){if(hist.length){cur=hist.pop();sel=null;show()}},
reset:function(){var c=mk(orig.width,orig.height);c.getContext('2d').drawImage(orig,0,0);push(c)},
clr:function(){sel=null;drawSel()},
r90:function(){rot(90)},r270:function(){rot(270)},r180:function(){rot(180)},
fh:function(){flip(-1,1)},fv:function(){flip(1,-1)},
half:function(){setSize(cur.width/2,cur.height/2)},
quarter:function(){setSize(cur.width/4,cur.height/4)},
resize:function(){
var w=+$('pi-w').value,h=+$('pi-h').value;
if(!(w>0&&h>0)){alert('กรอกความกว้างและความสูงเป็นตัวเลข');return}
if(w>10000||h>10000){alert('ขนาดสูงสุด 10,000 px');return}
setSize(w,h);
},
crop:function(){
if(!needSel())return;
var c=mk(sel.w,sel.h),x=c.getContext('2d');
if($('pi-circ').checked){
x.beginPath();x.ellipse(c.width/2,c.height/2,c.width/2,c.height/2,0,0,Math.PI*2);x.clip();
$('pi-fmt').value='image/png';syncQ();
}
x.drawImage(cur,sel.x,sel.y,sel.w,sel.h,0,0,c.width,c.height);push(c);
},
blur:function(){
if(!needSel())return;
var m=$('pi-mode').value,k=Math.max(2,+$('pi-str').value||16),c=mk(cur.width,cur.height),x=c.getContext('2d');
var rx=Math.round(sel.x),ry=Math.round(sel.y),rw=Math.max(1,Math.round(sel.w)),rh=Math.max(1,Math.round(sel.h));
x.drawImage(cur,0,0);
var t=mk(rw/k,rh/k);
t.getContext('2d').drawImage(cur,rx,ry,rw,rh,0,0,t.width,t.height);
x.imageSmoothingEnabled=(m==='blur');x.imageSmoothingQuality='high';
x.drawImage(t,0,0,t.width,t.height,rx,ry,rw,rh);push(c);
},
wm:wmark,
dl:function(){
out(function(b){
if(!b)return;
var ext={'image/jpeg':'jpg','image/png':'png','image/webp':'webp'}[b.type]||'png',a=document.createElement('a');
a.href=URL.createObjectURL(b);a.download=name+'-edited.'+ext;
document.body.appendChild(a);a.click();a.remove();
setTimeout(function(){URL.revokeObjectURL(a.href)},2000);
});
}
};
function tab(n){
document.querySelectorAll('#pi [data-tab]').forEach(function(b){b.setAttribute('aria-selected',String(b.dataset.tab===n))});
document.querySelectorAll('#pi [data-panel]').forEach(function(p){p.hidden=(p.dataset.panel!==n)});
}
$('pi').addEventListener('click',function(e){
var b=e.target.closest('button');
if(!b)return;
if(b.dataset.tab){tab(b.dataset.tab);return}
if(!cur)return;
if(b.dataset.ar){var p=b.dataset.ar.split(':');setAspect(+p[0],+p[1]);return}
var f=acts[b.dataset.act];
if(f)f();
});
$('pi-file').addEventListener('change',function(e){load(e.target.files[0]);e.target.value=''});
var dz=$('pi-drop');
dz.addEventListener('dragover',function(e){e.preventDefault();dz.classList.add('on')});
dz.addEventListener('dragleave',function(){dz.classList.remove('on')});
dz.addEventListener('drop',function(e){e.preventDefault();dz.classList.remove('on');load(e.dataTransfer.files[0])});
$('pi-w').addEventListener('input',function(){if($('pi-lock').checked&&cur){$('pi-h').value=Math.round((+$('pi-w').value)*cur.height/cur.width)}});
$('pi-h').addEventListener('input',function(){if($('pi-lock').checked&&cur){$('pi-w').value=Math.round((+$('pi-h').value)*cur.width/cur.height)}});
$('pi-fmt').addEventListener('change',function(){syncQ();est()});
$('pi-q').addEventListener('input',function(){syncQ();est()});
syncQ();
})();
</script>

## วิธีใช้เครื่องมือรูปภาพออนไลน์

1. กดเลือกรูปภาพ หรือลากไฟล์มาวางในกรอบด้านบน รูปจะถูกประมวลผลในเบราว์เซอร์ของคุณ ไม่ถูกอัปโหลดไปที่ใด
2. เลือกแท็บเครื่องมือที่ต้องการ แล้วกดปุ่มของแท็บนั้นเพื่อใช้งาน ทุกครั้งที่ใช้ รูปในพื้นที่แสดงผลจะอัปเดตทันที
3. สำหรับ **ครอป** และ **โมเสก / เบลอ** ให้ลากบนรูปเพื่อเลือกพื้นที่ หรือกดสัดส่วนสำเร็จรูป เช่น 1:1 หรือ 16:9 แล้วกดปุ่มใช้งาน
4. สำหรับ **ปรับขนาด** ใส่ความกว้างหรือความสูง ถ้าเปิด "ล็อกอัตราส่วน" ค่าอีกด้านจะคำนวณให้อัตโนมัติ
5. ถ้าแก้ผิด กด **ย้อนกลับ** ได้ถึง 15 ขั้นตอน หรือกด **คืนค่าต้นฉบับ** เพื่อเริ่มใหม่
6. เลือกชนิดไฟล์และคุณภาพในกล่องผลลัพธ์ ดูขนาดไฟล์โดยประมาณ แล้วกด **ดาวน์โหลด**

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **ครอป (Crop)**: ตัดรูปให้เหลือเฉพาะส่วนที่ต้องการ ใช้ตัดขอบหรือจัดองค์ประกอบภาพ
- **ครอปวงกลม**: ตัดรูปเป็นรูปวงกลมหรือวงรี เหมาะกับรูปโปรไฟล์ ไฟล์ที่ได้เป็น PNG เพื่อให้พื้นหลังโปร่งใส
- **อัตราส่วน (Aspect ratio)**: สัดส่วนความกว้างต่อความสูงของรูป เช่น 1:1 เป็นสี่เหลี่ยมจัตุรัส 16:9 เป็นภาพแนวนอนแบบจอกว้าง
- **หมุน (Rotate)**: เปลี่ยนทิศทางของรูปทีละ 90 หรือ 180 องศา ใช้แก้ภาพที่ถ่ายมาแล้วตะแคง
- **กลับด้าน (Flip)**: สลับภาพเป็นด้านตรงข้าม แบบซ้าย-ขวาหรือบน-ล่าง เหมือนภาพสะท้อนในกระจก
- **ปรับขนาด (Resize)**: เปลี่ยนจำนวนพิกเซลของรูป ย่อรูปเพื่อส่งง่ายหรืออัปโหลดเร็วขึ้น
- **พิกเซล (px)**: จุดสีเล็กๆ ที่ประกอบกันเป็นรูป ยิ่งมีมากรูปยิ่งละเอียดและไฟล์ยิ่งใหญ่
- **ล็อกอัตราส่วน**: ปรับด้านหนึ่ง แล้วอีกด้านเปลี่ยนตามเพื่อไม่ให้รูปบิดเบี้ยว
- **โมเสก (Mosaic)**: ทำให้พื้นที่ที่เลือกเป็นบล็อกสี่เหลี่ยมใหญ่ๆ ใช้ปิดใบหน้า ป้ายทะเบียน หรือข้อมูลส่วนตัว
- **เบลอ (Blur)**: ทำให้พื้นที่ที่เลือกพร่ามัว ใช้ปกปิดรายละเอียดแบบนุ่มนวลกว่าโมเสก
- **ลายน้ำ (Watermark)**: ข้อความที่ซ้อนทับบนรูป ใช้ระบุเจ้าของภาพหรือป้องกันการนำไปใช้ซ้ำ
- **ความโปร่งใส (Opacity)**: ระดับความเข้มของลายน้ำ ค่าน้อยจะจางและไม่บังรูปมาก
- **คุณภาพ (Quality)**: ระดับการบีบอัดของ JPG และ WebP ค่าต่ำลงไฟล์เล็กลง แต่รูปอาจแตกเป็นเม็ดมากขึ้น
- **บีบอัด (Compress)**: ลดขนาดไฟล์ด้วยการลดคุณภาพหรือขนาดภาพ ทำได้โดยลดค่าคุณภาพหรือปรับขนาดก่อนดาวน์โหลด
- **JPG**: ไฟล์ภาพยอดนิยม เหมาะกับรูปถ่าย ไฟล์เล็ก แต่ไม่รองรับพื้นหลังโปร่งใส
- **PNG**: ไฟล์ภาพที่คมชัด รองรับพื้นหลังโปร่งใส เหมาะกับโลโก้และกราฟิก แต่ไฟล์มักใหญ่กว่า JPG
- **WebP**: ไฟล์ภาพรุ่นใหม่ที่เล็กกว่า JPG และ PNG ที่คุณภาพใกล้เคียง เหมาะกับเว็บไซต์
- **EXIF**: ข้อมูลที่ฝังมากับรูป เช่น วันที่ถ่าย รุ่นกล้อง และตำแหน่ง GPS รูปที่ดาวน์โหลดจากเครื่องมือนี้ไม่มีข้อมูล EXIF ติดไปด้วย
- **ย้อนกลับ (Undo)**: ยกเลิกการแก้ไขล่าสุดทีละขั้น