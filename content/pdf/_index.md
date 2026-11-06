---
title: เครื่องมือ PDF ออนไลน์ ฟรี | Prasslina
h1: เครื่องมือ PDF ออนไลน์
description: เครื่องมือ PDF ออนไลน์ฟรี รวมไฟล์ แยกหน้า บีบอัด แปลงเป็น JPG หมุน ปลดล็อก ใส่ลายน้ำ เลขหน้า ประมวลผลในเครื่อง 100% ไม่ต้องอัปโหลดหรือสมัครสมาชิก ใช้ทันที
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-06T09:00:00+07:00'
weight: 77
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- เครื่องมือ PDF ออนไลน์
- PDF และไฟล์
---

เลือกเครื่องมือด้านล่าง เลือกไฟล์ ปรับตัวเลือก แล้วกดประมวลผล ไฟล์ทั้งหมดทำงานในเบราว์เซอร์ของคุณ ไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์

<style>
#pdft{margin:1.5rem 0}
#tabs{display:flex;flex-wrap:wrap;gap:.4rem;margin-bottom:1rem}
#tabs button,#go{padding:.45rem .8rem;border:1px solid rgba(128,128,128,.5);border-radius:.5rem;background:transparent;color:inherit;font:inherit;cursor:pointer}
#tabs button[aria-pressed=true],#go{background:#2563eb;color:#fff;border-color:#2563eb}
#go:disabled{opacity:.6;cursor:wait}
#opts label{display:block;margin:.5rem 0}
#opts input,#opts select{font:inherit;padding:.25rem;margin-left:.3rem;max-width:100%}
#list{padding-left:1.2rem}
#list button{margin-left:.4rem;font:inherit;cursor:pointer}
#out a{display:block;margin:.3rem 0}
</style>
<div id="pdft">
<div id="tabs"></div>
<p id="tdesc"></p>
<input type="file" id="f">
<ul id="list"></ul>
<div id="opts"></div>
<button type="button" id="go">ประมวลผล</button>
<p id="msg" role="status"></p>
<div id="out"></div>
</div>

## วิธีใช้งาน

1. เลือกเครื่องมือจากแท็บด้านบน เช่น รวมไฟล์ PDF หรือ บีบอัดไฟล์ PDF
2. กดเลือกไฟล์ (เครื่องมือที่รองรับหลายไฟล์จะเลือกได้พร้อมกัน และใช้ปุ่ม ↑ จัดลำดับได้)
3. ปรับตัวเลือก เช่น ช่วงหน้า ระดับการบีบอัด หรือมุมหมุน
4. กดปุ่ม "ประมวลผล" แล้วรอสักครู่
5. กดลิงก์ดาวน์โหลดเพื่อบันทึกไฟล์ผลลัพธ์

เคล็ดลับ: ช่วงหน้าพิมพ์ได้เช่น `1-3,5,8` เครื่องมือบีบอัด โทนสีเทา แก้เอียง และปลดล็อก จะแปลงหน้าเป็นภาพ ทำให้เลือกคัดลอกข้อความในไฟล์ผลลัพธ์ไม่ได้

## คำอธิบายเครื่องมือ

<dl id="gl">
<dt data-t="merge">รวมไฟล์ PDF</dt><dd>รวมไฟล์ PDF หลายไฟล์เข้าเป็นไฟล์เดียวตามลำดับที่เลือก</dd>
<dt data-t="split">แยกไฟล์ PDF</dt><dd>ดึงหน้าที่ต้องการออกมา หรือแยกทุกหน้าเป็นไฟล์ละหน้า</dd>
<dt data-t="compress">บีบอัดไฟล์ PDF</dt><dd>ลดขนาดไฟล์ให้เล็กลงด้วยการลดคุณภาพของหน้า เหมาะกับการส่งอีเมลหรืออัปโหลด</dd>
<dt data-t="from-jpg">แปลง JPG เป็น PDF</dt><dd>นำรูปภาพ JPG หรือ PNG มาจัดเป็นหน้าในไฟล์ PDF</dd>
<dt data-t="to-jpg">แปลง PDF เป็น JPG</dt><dd>แปลงแต่ละหน้าของ PDF เป็นรูปภาพ JPG</dd>
<dt data-t="organize">จัดระเบียบไฟล์ PDF</dt><dd>จัดลำดับหน้าใหม่ ลบหน้าที่ไม่ต้องการ หรือสลับลำดับหน้า</dd>
<dt data-t="rotate">หมุน PDF</dt><dd>หมุนหน้า PDF 90°, 180° หรือ 270° ทั้งไฟล์หรือเฉพาะหน้าที่เลือก</dd>
<dt data-t="unlock">ปลดล็อก PDF</dt><dd>ลบรหัสผ่านและข้อจำกัดการใช้งาน เช่น ห้ามคัดลอกหรือพิมพ์ (ต้องรู้รหัสผ่านถ้าไฟล์ตั้งรหัสเปิดไฟล์)</dd>
<dt data-t="page-numbers">ใส่เลขหน้า PDF</dt><dd>เพิ่มเลขหน้าในตำแหน่งที่เลือก และกำหนดเลขเริ่มต้นได้</dd>
<dt data-t="watermark">ลายน้ำ PDF</dt><dd>ใส่ข้อความลายน้ำเอียงกลางหน้า เช่น CONFIDENTIAL หรือ DRAFT ในทุกหน้า</dd>
<dt data-t="deskew">แก้ PDF เอียง</dt><dd>ตรวจจับและปรับหน้าสแกนที่เอียงให้ตรง</dd>
<dt data-t="grayscale">PDF โทนสีเทา</dt><dd>แปลงเป็นสีเทา หรือขาวดำแท้ เหมาะกับการพิมพ์ประหยัดหมึก</dd>
<dt data-t="pages-per-sheet">หน้าต่อแผ่น</dt><dd>จัด 2, 4, 6, 9 หรือ 16 หน้าไว้ในกระดาษ 1 แผ่น เพื่อประหยัดกระดาษ</dd>
<dt data-t="page-size">ขนาดหน้า PDF</dt><dd>เปลี่ยนขนาดกระดาษเป็น A4, A3, A5, Letter หรือ Legal พร้อมปรับระยะขอบ</dd>
<dt data-t="id-card">สำเนาบัตรประชาชน</dt><dd>นำรูปด้านหน้าและด้านหลังมาพิมพ์ในหน้าเดียว ขนาดจริง 85.6 × 54 มม.</dd>
</dl>

<script>
(function(){
var $=function(i){return document.getElementById(i)};
if(!$('pdft')){return}
var U='https://cdnjs.cloudflare.com/ajax/libs/',L={},files=[],cur='',T={},O={},PDF='application/pdf';
function lib(k){
if(!L[k]){
L[k]=new Promise(function(ok,no){
var s=document.createElement('script');
s.src=k==='pl'?U+'pdf-lib/1.17.1/pdf-lib.min.js':U+'pdf.js/3.11.174/pdf.min.js';
s.onload=function(){if(k==='js'){pdfjsLib.GlobalWorkerOptions.workerSrc=U+'pdf.js/3.11.174/pdf.worker.min.js'}ok()};
s.onerror=function(){delete L[k];no(new Error('โหลดไลบรารีไม่สำเร็จ กรุณาตรวจสอบอินเทอร์เน็ตแล้วลองใหม่'))};
document.head.appendChild(s)});
}
return L[k];
}
function ms(t){$('msg').textContent=t}
function ab(f){return f.arrayBuffer()}
async function ld(f){await lib('pl');return PDFLib.PDFDocument.load(await ab(f),{ignoreEncryption:true})}
async function nw(){await lib('pl');return PDFLib.PDFDocument.create()}
function dl(b,n,t){var a=document.createElement('a');a.href=URL.createObjectURL(new Blob([b],{type:t}));a.download=n;a.textContent='⬇ '+n;$('out').appendChild(a)}
function rg(s,n){
var r=[];
(s||'').split(',').forEach(function(p){
var m=p.split('-').map(function(x){return parseInt(x,10)}),a=m[0],b=Math.min(m.length>1?m[1]:a,n);
if(a>0&&b>0){for(var i=a;i<=b;i++){r.push(i-1)}}
});
return r;
}
async function pick(f,ix){var s=await ld(f),o=await nw(),p=await o.copyPages(s,ix);p.forEach(function(x){o.addPage(x)});return o.save()}
async function ras(f,sc,pw){
await lib('js');
var d=await pdfjsLib.getDocument({data:new Uint8Array(await ab(f)),password:pw||undefined}).promise,r=[];
for(var i=1;i<=d.numPages;i++){
ms('กำลังประมวลผลหน้า '+i+' จาก '+d.numPages);
var p=await d.getPage(i),v=p.getViewport({scale:sc}),c=document.createElement('canvas');
c.width=v.width;c.height=v.height;
await p.render({canvasContext:c.getContext('2d'),viewport:v}).promise;
r.push(c);
}
return r;
}
function jb(c,q){return new Promise(function(r){c.toBlob(r,'image/jpeg',q)})}
async function ipdf(cs,q,sc){
var o=await nw();
for(var c of cs){
var im=await o.embedJpg(await (await jb(c,q)).arrayBuffer()),w=c.width/sc,h=c.height/sc;
o.addPage([w,h]).drawImage(im,{x:0,y:0,width:w,height:h});
}
return o.save();
}
async function ic(f){
var b=await createImageBitmap(f),c=document.createElement('canvas');
c.width=b.width;c.height=b.height;
var x=c.getContext('2d');x.fillStyle='#fff';x.fillRect(0,0,c.width,c.height);x.drawImage(b,0,0);
return c;
}
function ang(c){
var s=Math.min(1,600/c.width),w=Math.round(c.width*s),h=Math.round(c.height*s),t=document.createElement('canvas');
t.width=w;t.height=h;
var x=t.getContext('2d');x.drawImage(c,0,0,w,h);
var d=x.getImageData(0,0,w,h).data,pts=[];
for(var i=0;i<d.length;i+=4){if(d[i]+d[i+1]+d[i+2]<300){var k=i/4;pts.push(k%w,Math.floor(k/w))}}
if(!pts.length){return 0}
var best=0,bs=-1;
for(var a=-5;a<=5;a+=0.5){
var sn=Math.sin(a*Math.PI/180),cs=Math.cos(a*Math.PI/180),hs=new Int32Array(h+2*w+4),sc=0;
for(var j=0;j<pts.length;j+=2){hs[Math.round(pts[j+1]*cs-pts[j]*sn)+w]++}
hs.forEach(function(q){sc+=q*q});
if(sc>bs){bs=sc;best=a}
}
return best;
}
function rot(c,a){
var o=document.createElement('canvas');o.width=c.width;o.height=c.height;
var x=o.getContext('2d');x.fillStyle='#fff';x.fillRect(0,0,o.width,o.height);
x.translate(o.width/2,o.height/2);x.rotate(-a*Math.PI/180);x.drawImage(c,-c.width/2,-c.height/2);
return o;
}
T['merge']={m:1,o:[],r:async function(fs){
var o=await nw();
for(var f of fs){var s=await ld(f),p=await o.copyPages(s,s.getPageIndices());p.forEach(function(x){o.addPage(x)})}
dl(await o.save(),'merged.pdf',PDF);
}};
T['split']={o:[['mode','รูปแบบ','s','one',[['one','รวมหน้าที่เลือกเป็นไฟล์เดียว'],['each','แยกทุกหน้าเป็นไฟล์ละหน้า']]],['pg','ช่วงหน้า เช่น 1-3,5','t','1']],r:async function(fs,v){
var n=(await ld(fs[0])).getPageCount();
if(v.mode==='each'){for(var i=0;i<n;i++){dl(await pick(fs[0],[i]),'page-'+(i+1)+'.pdf',PDF)}}
else{var ix=rg(v.pg,n);if(!ix.length){throw new Error('ช่วงหน้าไม่ถูกต้อง')}dl(await pick(fs[0],ix),'split.pdf',PDF)}
}};
T['compress']={o:[['q','ระดับการบีบอัด','s','0.6',[['0.8','เบา (คุณภาพสูง)'],['0.6','กลาง'],['0.4','แรง (ไฟล์เล็กสุด)']]]],r:async function(fs,v){
var b=await ipdf(await ras(fs[0],1.5),+v.q,1.5);
dl(b,'compressed.pdf',PDF);
ms('เสร็จแล้ว: '+Math.round(fs[0].size/1024)+' KB → '+Math.round(b.length/1024)+' KB');
}};
T['from-jpg']={a:'image/*',m:1,o:[['sz','ขนาดหน้า','s','a4',[['a4','A4'],['img','ตามขนาดรูป']]]],r:async function(fs,v){
var o=await nw();
for(var f of fs){
var c=await ic(f),im=await o.embedJpg(await (await jb(c,0.92)).arrayBuffer());
if(v.sz==='a4'){
var k=Math.min(555/c.width,802/c.height),w=c.width*k,h=c.height*k;
o.addPage([595,842]).drawImage(im,{x:(595-w)/2,y:(842-h)/2,width:w,height:h});
}else{o.addPage([c.width,c.height]).drawImage(im,{x:0,y:0,width:c.width,height:c.height})}
}
dl(await o.save(),'images.pdf',PDF);
}};
T['to-jpg']={o:[['q','คุณภาพ JPG','s','0.9',[['0.95','สูงมาก'],['0.9','สูง'],['0.7','กลาง']]]],r:async function(fs,v){
var cs=await ras(fs[0],2);
for(var i=0;i!==cs.length;i++){dl(await (await jb(cs[i],+v.q)).arrayBuffer(),'page-'+(i+1)+'.jpg','image/jpeg')}
}};
T['organize']={o:[['pg','ลำดับหน้าใหม่ เช่น 3,1,2 (หน้าที่ไม่ระบุจะถูกลบ เว้นว่าง = ทุกหน้า)','t',''],['rv','สลับลำดับจากหลังไปหน้า','c',false]],r:async function(fs,v){
var n=(await ld(fs[0])).getPageCount(),ix=v.pg.trim()?rg(v.pg,n):Array.from({length:n},function(_,i){return i});
if(!ix.length){throw new Error('ลำดับหน้าไม่ถูกต้อง')}
if(v.rv){ix.reverse()}
dl(await pick(fs[0],ix),'organized.pdf',PDF);
}};
T['rotate']={o:[['an','มุมหมุน','s','90',[['90','90° ตามเข็ม'],['180','180°'],['270','270° (90° ทวนเข็ม)']]],['pg','หน้าที่ต้องการหมุน (เว้นว่าง = ทุกหน้า)','t','']],r:async function(fs,v){
var d=await ld(fs[0]),ps=d.getPages(),ix=v.pg.trim()?rg(v.pg,ps.length):ps.map(function(_,i){return i});
ix.forEach(function(i){var p=ps[i];p.setRotation(PDFLib.degrees((p.getRotation().angle+parseInt(v.an,10))%360))});
dl(await d.save(),'rotated.pdf',PDF);
}};
T['unlock']={o:[['pw','รหัสผ่าน (ถ้ามี)','t','']],r:async function(fs,v){
dl(await ipdf(await ras(fs[0],2,v.pw),0.9,2),'unlocked.pdf',PDF);
}};
T['page-numbers']={o:[['ps','ตำแหน่ง','s','br',[['br','ขวาล่าง'],['bc','กลางล่าง'],['bl','ซ้ายล่าง'],['tr','ขวาบน'],['tc','กลางบน'],['tl','ซ้ายบน']]],['st','เริ่มนับจากเลข','n','1']],r:async function(fs,v){
var d=await ld(fs[0]),f=await d.embedFont(PDFLib.StandardFonts.Helvetica);
d.getPages().forEach(function(p,i){
var t=String((parseInt(v.st,10)||1)+i),w=f.widthOfTextAtSize(t,12),W=p.getWidth(),H=p.getHeight();
var x=v.ps[1]==='l'?30:(v.ps[1]==='c'?(W-w)/2:W-30-w),y=v.ps[0]==='b'?25:H-35;
p.drawText(t,{x:x,y:y,size:12,font:f});
});
dl(await d.save(),'numbered.pdf',PDF);
}};
T['watermark']={o:[['tx','ข้อความลายน้ำ','t','CONFIDENTIAL'],['sz','ขนาดตัวอักษร','n','60'],['op','ความโปร่งใส (0.1-1)','n','0.3'],['an','มุมเอียง (องศา)','n','45']],r:async function(fs,v){
var d=await ld(fs[0]),sz=parseInt(v.sz,10)||60,c=document.createElement('canvas'),x=c.getContext('2d'),fn='bold '+sz+'px sans-serif';
x.font=fn;
c.width=Math.ceil(x.measureText(v.tx).width)+20;c.height=Math.ceil(sz*1.5);
x.font=fn;x.fillStyle='#888';x.textBaseline='middle';x.fillText(v.tx,10,c.height/2);
var im=await d.embedPng(await (await new Promise(function(r){c.toBlob(r,'image/png')})).arrayBuffer());
var a=parseFloat(v.an)||0,th=a*Math.PI/180,w=c.width,h=c.height;
d.getPages().forEach(function(p){
var cx=p.getWidth()/2,cy=p.getHeight()/2;
p.drawImage(im,{x:cx-(w/2)*Math.cos(th)+(h/2)*Math.sin(th),y:cy-(w/2)*Math.sin(th)-(h/2)*Math.cos(th),width:w,height:h,rotate:PDFLib.degrees(a),opacity:parseFloat(v.op)||0.3});
});
dl(await d.save(),'watermarked.pdf',PDF);
}};
T['deskew']={o:[],r:async function(fs){
var cs=(await ras(fs[0],1.5)).map(function(c){return rot(c,ang(c))});
dl(await ipdf(cs,0.85,1.5),'deskewed.pdf',PDF);
}};
T['grayscale']={o:[['md','โหมดสี','s','g',[['g','โทนสีเทา'],['b','ขาวดำแท้']]]],r:async function(fs,v){
var cs=await ras(fs[0],2);
cs.forEach(function(c){
var x=c.getContext('2d'),im=x.getImageData(0,0,c.width,c.height),d=im.data;
for(var i=0;i<d.length;i+=4){
var l=0.299*d[i]+0.587*d[i+1]+0.114*d[i+2];
if(v.md==='b'){l=l>150?255:0}
d[i]=l;d[i+1]=l;d[i+2]=l;
}
x.putImageData(im,0,0);
});
dl(await ipdf(cs,0.85,2),'grayscale.pdf',PDF);
}};
T['pages-per-sheet']={o:[['n','จำนวนหน้าต่อแผ่น','s','4',[['2','2'],['4','4'],['6','6'],['9','9'],['16','16']]]],r:async function(fs,v){
var g={'2':[2,1],'4':[2,2],'6':[3,2],'9':[3,3],'16':[4,4]}[v.n],cl=g[0],rw=g[1],ls=cl>rw,W=ls?842:595,H=ls?595:842;
var s=await ld(fs[0]),o=await nw(),eps=await o.embedPages(s.getPages()),cw=(W-20)/cl,ch=(H-20)/rw,per=cl*rw;
for(var i=0;i<eps.length;i+=per){
var p=o.addPage([W,H]);
eps.slice(i,i+per).forEach(function(e,j){
var k=Math.min((cw-8)/e.width,(ch-8)/e.height),w=e.width*k,h=e.height*k,col=j%cl,row=Math.floor(j/cl);
p.drawPage(e,{x:10+col*cw+(cw-w)/2,y:H-10-(row+1)*ch+(ch-h)/2,width:w,height:h});
});
}
dl(await o.save(),'pages-per-sheet.pdf',PDF);
}};
T['page-size']={o:[['sz','ขนาดกระดาษ','s','a4',[['a4','A4'],['a3','A3'],['a5','A5'],['lt','Letter'],['lg','Legal']]],['mg','ระยะขอบ (มม.)','n','10']],r:async function(fs,v){
var S={a4:[595.28,841.89],a3:[841.89,1190.55],a5:[419.53,595.28],lt:[612,792],lg:[612,1008]}[v.sz],m=(parseFloat(v.mg)||0)*2.835;
var s=await ld(fs[0]),o=await nw(),eps=await o.embedPages(s.getPages());
eps.forEach(function(e){
var ls=e.width>e.height,W=ls?S[1]:S[0],H=ls?S[0]:S[1],k=Math.min((W-2*m)/e.width,(H-2*m)/e.height),w=e.width*k,h=e.height*k;
o.addPage([W,H]).drawPage(e,{x:(W-w)/2,y:(H-h)/2,width:w,height:h});
});
dl(await o.save(),'resized.pdf',PDF);
}};
T['id-card']={a:'image/*',m:1,o:[],r:async function(fs){
var o=await nw(),p=o.addPage([595,842]),w=242.6,h=153.1;
for(var i=0;i!==Math.min(2,fs.length);i++){
var im=await o.embedJpg(await (await jb(await ic(fs[i]),0.95)).arrayBuffer());
p.drawImage(im,{x:(595-w)/2,y:842-120-h-i*(h+30),width:w,height:h});
}
dl(await o.save(),'id-card.pdf',PDF);
}};
function rl(){
var u=$('list');u.textContent='';
files.forEach(function(f,i){
var li=document.createElement('li');
li.textContent=f.name+' ('+Math.round(f.size/1024)+' KB)';
if(i>0&&T[cur].m){
var b=document.createElement('button');b.type='button';b.textContent='↑';
b.onclick=function(){var t=files[i-1];files[i-1]=files[i];files[i]=t;rl()};
li.appendChild(b);
}
u.appendChild(li);
});
}
function show(k){
cur=k;files=[];rl();ms('');$('out').textContent='';$('f').value='';
$('f').accept=T[k].a||PDF;$('f').multiple=!!T[k].m;
document.querySelectorAll('#tabs button').forEach(function(b){b.setAttribute('aria-pressed',b.getAttribute('data-t')===k?'true':'false')});
var dt=document.querySelector('#gl dt[data-t="'+k+'"]');
$('tdesc').textContent=dt?dt.nextElementSibling.textContent:'';
var op=$('opts');op.textContent='';O={};
T[k].o.forEach(function(d){
var lb=document.createElement('label'),el;
lb.textContent=d[1];
if(d[2]==='s'){
el=document.createElement('select');
d[4].forEach(function(c){var o=document.createElement('option');o.value=c[0];o.textContent=c[1];el.appendChild(o)});
el.value=d[3];
}else{
el=document.createElement('input');
el.type=d[2]==='c'?'checkbox':(d[2]==='n'?'number':'text');
if(d[2]==='c'){el.checked=d[3]}else{el.value=d[3]}
}
O[d[0]]=el;lb.appendChild(el);op.appendChild(lb);
});
}
var first='';
document.querySelectorAll('#gl dt').forEach(function(dt){
var k=dt.getAttribute('data-t');
if(!T[k]){return}
if(!first){first=k}
var b=document.createElement('button');
b.type='button';b.textContent=dt.textContent;b.setAttribute('data-t',k);
b.onclick=function(){show(k)};
$('tabs').appendChild(b);
});
$('f').onchange=function(){files=Array.from(this.files);rl()};
$('go').onclick=async function(){
if(!files.length){ms('กรุณาเลือกไฟล์ก่อน');return}
var go=$('go'),v={};
for(var k in O){v[k]=O[k].type==='checkbox'?O[k].checked:O[k].value}
go.disabled=true;$('out').textContent='';ms('กำลังประมวลผล...');
try{
await T[cur].r(files,v);
if($('msg').textContent.indexOf('เสร็จแล้ว')!==0){ms('เสร็จแล้ว กดลิงก์ด้านล่างเพื่อดาวน์โหลด')}
}catch(e){
ms(e&&e.name==='PasswordException'?'ต้องใช้รหัสผ่านที่ถูกต้อง':'เกิดข้อผิดพลาด: '+((e&&e.message)||e));
}
go.disabled=false;
};
if(first){show(first)}
})();
</script>