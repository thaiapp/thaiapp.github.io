---
title: แบ่งรูปภาพออนไลน์ ฟรี
h1: แบ่งรูปภาพออนไลน์
description: แบ่งรูปภาพออนไลน์ฟรี ตัดรูปเป็นกริด 2×2 3×3 สำหรับ Instagram หรือพิมพ์โปสเตอร์ ลากเส้นแบ่งเองได้ ดาวน์โหลด ZIP หรือ PDF ไม่ต้องอัปโหลดรูป ไม่ต้องสมัครเลย
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-13T09:00:00+07:00'
weight: 112
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- แบ่งรูปภาพออนไลน์
- รูปภาพ
---

<style>
.ts{--ts-b:rgba(128,128,128,.4);margin:1rem 0;font-size:15px;line-height:1.5}
.ts *{box-sizing:border-box}
.ts [hidden]{display:none!important}
.ts-drop{border:2px dashed var(--ts-b);border-radius:12px;padding:22px 16px;text-align:center;display:flex;flex-direction:column;align-items:center;gap:8px;cursor:pointer}
.ts-drop.on{border-color:#2563eb;background:rgba(37,99,235,.08)}
.ts-drop small{opacity:.75}
.ts-btn{background:#2563eb;color:#fff;border:1px solid #2563eb;border-radius:8px;padding:9px 16px;font:inherit;cursor:pointer}
.ts-btn.alt{background:transparent;color:inherit;border-color:var(--ts-b)}
.ts-btn:disabled{opacity:.5;cursor:not-allowed}
.ts-row{display:flex;flex-wrap:wrap;gap:8px;margin:12px 0;align-items:center}
.ts-chip{background:transparent;color:inherit;border:1px solid var(--ts-b);border-radius:999px;padding:5px 12px;font:inherit;font-size:13px;cursor:pointer}
.ts-chip:hover{border-color:#2563eb}
.ts-chip.ig{border-color:#c026d3}
.ts-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:10px;margin:12px 0}
.ts-f{display:flex;flex-direction:column;gap:4px;font-size:13px}
.ts-f input[type=number],.ts-f input[type=text],.ts-f select{font:inherit;width:100%;padding:7px 8px;border:1px solid var(--ts-b);border-radius:8px;background:transparent;color:inherit}
.ts-f select option{color:#111;background:#fff}
.ts-f input[type=range]{width:100%}
.ts-chk{display:flex;gap:8px;align-items:center;font-size:14px}
.ts-view{margin:12px 0;text-align:center}
.ts-view canvas{max-width:100%;display:inline-block;border-radius:8px;touch-action:auto}
.ts-view canvas.adj{touch-action:none}
.ts-info{font-size:13px;opacity:.8;margin-top:6px}
.ts-status{min-height:1.5em;font-size:14px;margin:6px 0}
.ts-pdf{border:1px solid var(--ts-b);border-radius:10px;padding:10px 12px;margin:12px 0}
.ts-res{display:grid;gap:6px;margin-top:8px}
.ts-res a{display:block;position:relative}
.ts-res img{width:100%;display:block;border-radius:4px}
.ts-res span{position:absolute;left:4px;top:4px;background:rgba(0,0,0,.7);color:#fff;font-size:11px;padding:1px 7px;border-radius:10px}
</style>

<div class="ts" id="ts-root">
<div class="ts-drop" id="ts-drop" tabindex="0" role="button" aria-label="เลือกหรือวางรูปภาพ">
<strong>ลากรูปภาพมาวางที่นี่ หรือกด Ctrl+V เพื่อวาง</strong>
<button type="button" class="ts-btn" id="ts-pick">เลือกรูปภาพ</button>
<input type="file" id="ts-file" accept="image/*" hidden>
<small>รองรับ JPG, PNG, WebP, GIF, AVIF และ HEIC (ขึ้นกับเบราว์เซอร์) · ประมวลผลในเครื่องของคุณ ไม่อัปโหลดรูป</small>
</div>
<div id="ts-work" hidden>
<div class="ts-row" aria-label="ปุ่มลัด">
<button type="button" class="ts-chip" data-c="1" data-r="2">1×2</button>
<button type="button" class="ts-chip" data-c="2" data-r="1">2×1</button>
<button type="button" class="ts-chip" data-c="2" data-r="2">2×2</button>
<button type="button" class="ts-chip" data-c="1" data-r="3">1×3</button>
<button type="button" class="ts-chip" data-c="3" data-r="1">3×1</button>
<button type="button" class="ts-chip" data-c="3" data-r="3">3×3</button>
<button type="button" class="ts-chip" data-c="4" data-r="4">4×4</button>
<button type="button" class="ts-chip ig" data-c="3" data-r="3" data-ratio="0.8" data-ig="1">Instagram กริด 3×3 (4:5)</button>
<button type="button" class="ts-chip ig" data-c="3" data-r="3" data-ratio="1" data-ig="1">Instagram กริด 3×3 (1:1)</button>
<button type="button" class="ts-chip ig" data-c="3" data-r="1" data-ratio="0.8" data-ig="1">Instagram Carousel 3 สไลด์</button>
</div>
<div class="ts-grid">
<label class="ts-f">โหมดการแบ่ง
<select id="ts-mode">
<option value="count">ตามจำนวนแถว/คอลัมน์</option>
<option value="size">ตามขนาดชิ้น (พิกเซล)</option>
</select>
</label>
<label class="ts-f" id="ts-box-count">คอลัมน์ (ซ้าย-ขวา)
<input type="number" id="ts-cols" min="1" max="20" value="3" inputmode="numeric">
</label>
<label class="ts-f" id="ts-box-count2">แถว (บน-ล่าง)
<input type="number" id="ts-rows" min="1" max="20" value="3" inputmode="numeric">
</label>
<label class="ts-f" id="ts-box-size" hidden>กว้างต่อชิ้น (px)
<input type="number" id="ts-tw" min="16" max="20000" value="1000" inputmode="numeric">
</label>
<label class="ts-f" id="ts-box-size2" hidden>สูงต่อชิ้น (px)
<input type="number" id="ts-th" min="16" max="20000" value="1000" inputmode="numeric">
</label>
<label class="ts-f">อัตราส่วนของแต่ละชิ้น
<select id="ts-ratio">
<option value="full">ใช้ทั้งภาพ (ไม่ครอป)</option>
<option value="1">1:1 สี่เหลี่ยมจัตุรัส</option>
<option value="0.8">4:5 แนวตั้ง</option>
<option value="0.75">3:4 แนวตั้ง</option>
<option value="1.7778">16:9 แนวนอน</option>
<option value="0.5625">9:16 แนวตั้ง (Story)</option>
</select>
</label>
<label class="ts-f">ส่วนซ้อนทับ (px)
<input type="number" id="ts-overlap" min="0" max="1000" value="0" inputmode="numeric">
</label>
<label class="ts-f">ความกว้างผลลัพธ์ต่อชิ้น (px)
<input type="number" id="ts-outw" min="16" max="10000" placeholder="ขนาดต้นฉบับ" inputmode="numeric">
</label>
<label class="ts-f">รูปแบบไฟล์
<select id="ts-fmt">
<option value="orig">ตามต้นฉบับ</option>
<option value="png">PNG</option>
<option value="jpeg">JPG</option>
<option value="webp">WebP</option>
</select>
</label>
<label class="ts-f" id="ts-qbox" hidden>คุณภาพ <span id="ts-qval">92</span>%
<input type="range" id="ts-q" min="40" max="100" value="92">
</label>
<label class="ts-f">ชื่อไฟล์นำหน้า
<input type="text" id="ts-prefix" maxlength="40" placeholder="ชื่อไฟล์ต้นฉบับ">
</label>
</div>
<div class="ts-row">
<label class="ts-chk"><input type="checkbox" id="ts-ig"> เรียงเลขตามลำดับโพสต์ Instagram (โพสต์ชิ้นที่ 1 ก่อน)</label>
<label class="ts-chk"><input type="checkbox" id="ts-adj"> ลากเส้นแบ่งเอง</label>
<button type="button" class="ts-btn alt" id="ts-reset">จัดเส้นให้เท่ากัน</button>
<button type="button" class="ts-btn alt" id="ts-clear">ล้างรูป</button>
</div>
<div class="ts-view">
<canvas id="ts-cv" aria-label="ตัวอย่างการแบ่งรูปภาพ"></canvas>
<div class="ts-info" id="ts-info"></div>
</div>
<div class="ts-row">
<button type="button" class="ts-btn" id="ts-split">แบ่งรูปภาพ</button>
<button type="button" class="ts-btn" id="ts-zip">ดาวน์โหลด ZIP</button>
</div>
<div class="ts-pdf">
<strong>ส่งออก PDF สำหรับพิมพ์โปสเตอร์ติดผนัง (1 ชิ้น = 1 หน้า)</strong>
<div class="ts-grid">
<label class="ts-f">ขนาดกระดาษ
<select id="ts-paper">
<option value="a4">A4</option>
<option value="a3">A3</option>
<option value="letter">Letter</option>
</select>
</label>
<label class="ts-f">ขอบกระดาษ (มม.)
<input type="number" id="ts-margin" min="0" max="40" value="10" inputmode="numeric">
</label>
</div>
<div class="ts-row">
<label class="ts-chk"><input type="checkbox" id="ts-marks" checked> เส้นมุมสำหรับตัดและต่อ</label>
<button type="button" class="ts-btn" id="ts-pdf-btn">ส่งออก PDF</button>
</div>
</div>
<div class="ts-status" id="ts-status" role="status" aria-live="polite"></div>
<div id="ts-reswrap" hidden>
<strong>ผลลัพธ์ (คลิกที่ชิ้นเพื่อดาวน์โหลดทีละชิ้น)</strong>
<div class="ts-res" id="ts-res"></div>
</div>
</div>
</div>

<script>
(function(){
'use strict';
var $=function(id){return document.getElementById(id);};
var el={root:$('ts-root'),drop:$('ts-drop'),file:$('ts-file'),pick:$('ts-pick'),work:$('ts-work'),
mode:$('ts-mode'),cols:$('ts-cols'),rows:$('ts-rows'),tw:$('ts-tw'),th:$('ts-th'),
bc1:$('ts-box-count'),bc2:$('ts-box-count2'),bs1:$('ts-box-size'),bs2:$('ts-box-size2'),
ratio:$('ts-ratio'),overlap:$('ts-overlap'),outw:$('ts-outw'),fmt:$('ts-fmt'),q:$('ts-q'),qbox:$('ts-qbox'),qval:$('ts-qval'),
prefix:$('ts-prefix'),ig:$('ts-ig'),adj:$('ts-adj'),reset:$('ts-reset'),clear:$('ts-clear'),
cv:$('ts-cv'),info:$('ts-info'),split:$('ts-split'),zip:$('ts-zip'),pdf:$('ts-pdf-btn'),
paper:$('ts-paper'),margin:$('ts-margin'),marks:$('ts-marks'),status:$('ts-status'),resWrap:$('ts-reswrap'),res:$('ts-res')};
var ctx=el.cv.getContext('2d');
var S={img:null,w:0,h:0,name:'image',fmt:'png',url:null,cols:3,rows:3,xs:[],ys:[],tiles:[],busy:false,drag:null,view:null};
function num(inp,min,max,def){var v=parseInt(inp.value,10);if(isNaN(v)){v=def;}return Math.max(min,Math.min(max,v));}
function say(t){el.status.textContent=t||'';}
function pad(n,w){var s=String(n);while(s.length<w){s='0'+s;}return s;}
function equal(n){var a=[];for(var i=1;i<n;i++){a.push(i/n);}return a;}
function tick(){return new Promise(function(r){setTimeout(r,0);});}
function ab(b){return b.arrayBuffer?b.arrayBuffer():new Promise(function(res,rej){var fr=new FileReader();fr.onload=function(){res(fr.result);};fr.onerror=rej;fr.readAsArrayBuffer(b);});}
function toBlob(cvs,type,q){return new Promise(function(res,rej){cvs.toBlob(function(b){if(b){res(b);}else{rej(new Error('toBlob'));}},type,q);});}
function save(blob,name){var u=URL.createObjectURL(blob),a=document.createElement('a');a.href=u;a.download=name;document.body.appendChild(a);a.click();setTimeout(function(){document.body.removeChild(a);URL.revokeObjectURL(u);},4000);}
function cfg(){
var f=el.fmt.value==='orig'?S.fmt:el.fmt.value;
return {ov:num(el.overlap,0,1000,0),outw:el.outw.value===''?0:num(el.outw,16,10000,0),fmt:f,q:num(el.q,40,100,92)/100,ig:el.ig.checked,
prefix:(el.prefix.value.replace(/\s+/g,'_').replace(/[^\w\u0E00-\u0E7F.\-]+/g,'')||S.name)};
}
function region(){
var r=el.ratio.value;
if(el.mode.value==='size'||r==='full'){return {x:0,y:0,w:S.w,h:S.h};}
var tr=parseFloat(r),th=Math.floor(Math.min(S.h/S.rows,S.w/(S.cols*tr)));
if(th<1){th=1;}
var tw=Math.max(1,Math.round(th*tr)),w=tw*S.cols,h=th*S.rows;
if(w>S.w){tw=Math.max(1,Math.floor(S.w/S.cols));w=tw*S.cols;}
if(h>S.h){h=S.h;}
return {x:Math.floor((S.w-w)/2),y:Math.floor((S.h-h)/2),w:w,h:h};
}
function edges(f,start,len){var e=[start];for(var i=0;i<f.length;i++){e.push(Math.round(start+f[i]*len));}e.push(start+len);return e;}
function tileRect(r,c,ex,ey,ov){
var x0=Math.max(0,ex[c]-(c>0?ov:0)),x1=Math.min(S.w,ex[c+1]+(c<S.cols-1?ov:0));
var y0=Math.max(0,ey[r]-(r>0?ov:0)),y1=Math.min(S.h,ey[r+1]+(r<S.rows-1?ov:0));
x0=Math.min(x0,S.w-1);y0=Math.min(y0,S.h-1);
return {x:x0,y:y0,w:Math.max(1,x1-x0),h:Math.max(1,y1-y0)};
}
function numFor(r,c,ig){var i=r*S.cols+c;return ig?S.cols*S.rows-i:i+1;}
function tileCanvas(r,c,fmt,o){
var reg=region(),ex=edges(S.xs,reg.x,reg.w),ey=edges(S.ys,reg.y,reg.h),t=tileRect(r,c,ex,ey,o.ov),ow=t.w,oh=t.h;
if(o.outw>0){ow=o.outw;oh=Math.max(1,Math.round(t.h*o.outw/t.w));}
var cvs=document.createElement('canvas');cvs.width=ow;cvs.height=oh;
var g=cvs.getContext('2d');
if(fmt!=='png'){g.fillStyle='#fff';g.fillRect(0,0,ow,oh);}
g.imageSmoothingQuality='high';
g.drawImage(S.img,t.x,t.y,t.w,t.h,0,0,ow,oh);
return cvs;
}
function syncGrid(){
if(!S.img){return;}
if(el.mode.value==='size'){
var tw=Math.max(num(el.tw,16,20000,1000),Math.ceil(S.w/20)),th=Math.max(num(el.th,16,20000,1000),Math.ceil(S.h/20));
S.cols=Math.ceil(S.w/tw);S.rows=Math.ceil(S.h/th);S.xs=[];S.ys=[];
for(var i=1;i<S.cols;i++){S.xs.push(i*tw/S.w);}
for(var j=1;j<S.rows;j++){S.ys.push(j*th/S.h);}
}else{
S.cols=Math.min(num(el.cols,1,20,3),S.w);S.rows=Math.min(num(el.rows,1,20,3),S.h);
S.xs=equal(S.cols);S.ys=equal(S.rows);
}
markDirty();render();
}
function draw(){
var maxW=el.cv.parentNode.clientWidth||640;
var sc=Math.min(1,maxW/S.w,(window.innerHeight*0.72)/S.h);
var dw=Math.max(1,Math.round(S.w*sc)),dh=Math.max(1,Math.round(S.h*sc)),dpr=window.devicePixelRatio||1;
el.cv.style.width=dw+'px';el.cv.style.height=dh+'px';
el.cv.width=Math.round(dw*dpr);el.cv.height=Math.round(dh*dpr);
ctx.setTransform(dpr,0,0,dpr,0,0);
ctx.drawImage(S.img,0,0,dw,dh);
var reg=region(),ex=edges(S.xs,reg.x,reg.w),ey=edges(S.ys,reg.y,reg.h),c=cfg();
var rx=reg.x*sc,ry=reg.y*sc,rw=reg.w*sc,rh=reg.h*sc,i,k;
ctx.fillStyle='rgba(0,0,0,.55)';
ctx.fillRect(0,0,dw,ry);ctx.fillRect(0,ry+rh,dw,dh-ry-rh);ctx.fillRect(0,ry,rx,rh);ctx.fillRect(rx+rw,ry,dw-rx-rw,rh);
function seg(x1,y1,x2,y2){ctx.beginPath();ctx.moveTo(x1,y1);ctx.lineTo(x2,y2);ctx.stroke();}
function lines(){
ctx.strokeRect(rx,ry,rw,rh);
for(i=1;i<ex.length-1;i++){seg(ex[i]*sc,ry,ex[i]*sc,ry+rh);}
for(i=1;i<ey.length-1;i++){seg(rx,ey[i]*sc,rx+rw,ey[i]*sc);}
}
ctx.setLineDash([]);
ctx.lineWidth=4;ctx.strokeStyle='rgba(0,0,0,.6)';lines();
ctx.lineWidth=2;ctx.strokeStyle='#fff';lines();
if(c.ov>0){
ctx.lineWidth=1;ctx.strokeStyle='#ffd54a';ctx.setLineDash([4,4]);
for(i=1;i<ex.length-1;i++){seg((ex[i]-c.ov)*sc,ry,(ex[i]-c.ov)*sc,ry+rh);seg((ex[i]+c.ov)*sc,ry,(ex[i]+c.ov)*sc,ry+rh);}
for(i=1;i<ey.length-1;i++){seg(rx,(ey[i]-c.ov)*sc,rx+rw,(ey[i]-c.ov)*sc);seg(rx,(ey[i]+c.ov)*sc,rx+rw,(ey[i]+c.ov)*sc);}
ctx.setLineDash([]);
}
ctx.textAlign='center';ctx.textBaseline='middle';
for(i=0;i<S.rows;i++){for(k=0;k<S.cols;k++){
var fs=Math.max(11,Math.min(30,Math.min(ex[k+1]-ex[k],ey[i+1]-ey[i])*sc*0.35));
ctx.font='700 '+fs+'px sans-serif';
var tx=(ex[k]+ex[k+1])/2*sc,ty=(ey[i]+ey[i+1])/2*sc,label=String(numFor(i,k,c.ig));
ctx.lineWidth=3;ctx.strokeStyle='rgba(0,0,0,.75)';ctx.strokeText(label,tx,ty);
ctx.fillStyle='#fff';ctx.fillText(label,tx,ty);
}}
if(el.adj.checked){
ctx.lineWidth=2;ctx.strokeStyle='#fff';ctx.fillStyle='#2563eb';
for(i=1;i<ex.length-1;i++){ctx.beginPath();ctx.arc(ex[i]*sc,ry+rh/2,7,0,Math.PI*2);ctx.fill();ctx.stroke();}
for(i=1;i<ey.length-1;i++){ctx.beginPath();ctx.arc(rx+rw/2,ey[i]*sc,7,0,Math.PI*2);ctx.fill();ctx.stroke();}
}
S.view={sc:sc,dw:dw,dh:dh,reg:reg};
}
function info(){
var reg=region(),ex=edges(S.xs,reg.x,reg.w),ey=edges(S.ys,reg.y,reg.h),c=cfg(),t=tileRect(0,0,ex,ey,c.ov),tw=t.w,th=t.h;
if(c.outw>0){th=Math.round(th*c.outw/tw);tw=c.outw;}
el.info.textContent='ต้นฉบับ '+S.w+' × '+S.h+' px → '+(S.cols*S.rows)+' ชิ้น · ชิ้นแรกประมาณ '+tw+' × '+th+' px';
}
function render(){if(!S.img){return;}draw();info();}
function clearTiles(){
S.tiles.forEach(function(t){URL.revokeObjectURL(t.url);});
S.tiles=[];el.res.textContent='';el.resWrap.hidden=true;
}
function markDirty(){if(S.tiles.length){clearTiles();say('ตั้งค่าใหม่แล้ว กด "แบ่งรูปภาพ" เพื่ออัปเดตผลลัพธ์');}}
function lock(b){el.split.disabled=b;el.zip.disabled=b;el.pdf.disabled=b;}
function showResults(){
el.res.textContent='';el.res.style.gridTemplateColumns='repeat('+S.cols+',1fr)';
S.tiles.slice().sort(function(a,b){return a.r-b.r||a.c-b.c;}).forEach(function(t){
var a=document.createElement('a');a.href=t.url;a.download=t.name;a.title='ดาวน์โหลด '+t.name;
var im=document.createElement('img');im.src=t.url;im.alt='ชิ้นที่ '+t.n;
var s=document.createElement('span');s.textContent=t.n;
a.appendChild(im);a.appendChild(s);el.res.appendChild(a);
});
el.resWrap.hidden=false;
}
async function generate(){
if(!S.img||S.busy){return false;}
S.busy=true;lock(true);clearTiles();
var c=cfg(),total=S.cols*S.rows,done=0,w=Math.max(2,String(total).length);
try{
for(var r=0;r<S.rows;r++){for(var k=0;k<S.cols;k++){
var cvs=tileCanvas(r,k,c.fmt,c);
var b=await toBlob(cvs,'image/'+c.fmt,c.q);
var ext=b.type==='image/jpeg'?'jpg':(b.type==='image/webp'?'webp':'png');
var n=numFor(r,k,c.ig);
S.tiles.push({r:r,c:k,n:n,blob:b,url:URL.createObjectURL(b),name:c.prefix+'_'+pad(n,w)+'.'+ext});
done++;say('กำลังแบ่ง '+done+'/'+total+' ชิ้น…');
if(done%4===0){await tick();}
}}
showResults();say('เสร็จแล้ว ได้ '+total+' ชิ้น');
return true;
}catch(e){
clearTiles();say('แบ่งรูปไม่สำเร็จ รูปอาจใหญ่เกินที่เบราว์เซอร์รองรับ ลองลดความกว้างผลลัพธ์ต่อชิ้น');
return false;
}finally{S.busy=false;lock(false);}
}
async function doZip(){
if(!S.img||S.busy){return;}
if(!S.tiles.length){var ok=await generate();if(!ok){return;}}
S.busy=true;lock(true);
try{
say('กำลังสร้างไฟล์ ZIP…');
var files=S.tiles.slice().sort(function(a,b){return a.n-b.n;}),out=[];
for(var i=0;i<files.length;i++){out.push({name:files[i].name,data:new Uint8Array(await ab(files[i].blob))});}
save(buildZip(out),cfg().prefix+'_split.zip');
say('ดาวน์โหลด ZIP แล้ว ('+files.length+' ไฟล์)');
}catch(e){say('สร้างไฟล์ ZIP ไม่สำเร็จ');}
finally{S.busy=false;lock(false);}
}
async function doPdf(){
if(!S.img||S.busy){return;}
S.busy=true;lock(true);
try{
var c=cfg(),pages=[],total=S.cols*S.rows,done=0;
for(var r=0;r<S.rows;r++){for(var k=0;k<S.cols;k++){
var cvs=tileCanvas(r,k,'jpeg',c);
var b=await toBlob(cvs,'image/jpeg',c.q);
pages.push({w:cvs.width,h:cvs.height,jpg:new Uint8Array(await ab(b)),label:'R'+(r+1)+' C'+(k+1)+' - '+(r*S.cols+k+1)+'/'+total});
done++;say('กำลังสร้าง PDF '+done+'/'+total+' หน้า…');
if(done%4===0){await tick();}
}}
save(buildPdf(pages,{paper:el.paper.value,margin:num(el.margin,0,40,10),marks:el.marks.checked}),c.prefix+'_print.pdf');
say('ดาวน์โหลด PDF แล้ว ('+total+' หน้า)');
}catch(e){say('สร้าง PDF ไม่สำเร็จ รูปอาจใหญ่เกินที่เบราว์เซอร์รองรับ');}
finally{S.busy=false;lock(false);}
}
var crcT=(function(){var t=[],c,n,k;for(n=0;n<256;n++){c=n;for(k=0;k<8;k++){c=(c&1)?(0xEDB88320^(c>>>1)):(c>>>1);}t[n]=c>>>0;}return t;})();
function crc32(u){var c=-1;for(var i=0;i<u.length;i++){c=crcT[(c^u[i])&255]^(c>>>8);}return (c^-1)>>>0;}
function buildZip(files){
var enc=new TextEncoder(),parts=[],cd=[],off=0,d=new Date();
var dt=((d.getFullYear()-1980)<<9)|((d.getMonth()+1)<<5)|d.getDate();
var tm=(d.getHours()<<11)|(d.getMinutes()<<5)|(d.getSeconds()>>1);
files.forEach(function(f){
var nm=enc.encode(f.name),crc=crc32(f.data),sz=f.data.length;
var h=new DataView(new ArrayBuffer(30));
h.setUint32(0,0x04034b50,true);h.setUint16(4,20,true);h.setUint16(6,0x0800,true);h.setUint16(8,0,true);
h.setUint16(10,tm,true);h.setUint16(12,dt,true);h.setUint32(14,crc,true);h.setUint32(18,sz,true);h.setUint32(22,sz,true);
h.setUint16(26,nm.length,true);h.setUint16(28,0,true);
parts.push(new Uint8Array(h.buffer),nm,f.data);
var c=new DataView(new ArrayBuffer(46));
c.setUint32(0,0x02014b50,true);c.setUint16(4,20,true);c.setUint16(6,20,true);c.setUint16(8,0x0800,true);c.setUint16(10,0,true);
c.setUint16(12,tm,true);c.setUint16(14,dt,true);c.setUint32(16,crc,true);c.setUint32(20,sz,true);c.setUint32(24,sz,true);
c.setUint16(28,nm.length,true);c.setUint16(30,0,true);c.setUint16(32,0,true);c.setUint16(34,0,true);c.setUint16(36,0,true);
c.setUint32(38,0,true);c.setUint32(42,off,true);
cd.push(new Uint8Array(c.buffer),nm);
off+=30+nm.length+sz;
});
var cs=0;cd.forEach(function(u){cs+=u.length;});
var e=new DataView(new ArrayBuffer(22));
e.setUint32(0,0x06054b50,true);e.setUint16(4,0,true);e.setUint16(6,0,true);e.setUint16(8,files.length,true);e.setUint16(10,files.length,true);
e.setUint32(12,cs,true);e.setUint32(16,off,true);e.setUint16(20,0,true);
return new Blob(parts.concat(cd,[new Uint8Array(e.buffer)]),{type:'application/zip'});
}
function buildPdf(pages,o){
var P={a4:[595.28,841.89],a3:[841.89,1190.55],letter:[612,792]}[o.paper]||[595.28,841.89];
var m=o.margin*72/25.4,enc=new TextEncoder(),parts=[],off=0,offs=[],N=3+pages.length*3;
function put(x){var u=typeof x==='string'?enc.encode(x):x;parts.push(u);off+=u.length;}
function obj(n){offs[n]=off;put(n+' 0 obj\n');}
function f(n){return n.toFixed(2);}
put('%PDF-1.4\n');
obj(1);put('<< /Type /Catalog /Pages 2 0 R >>\nendobj\n');
var kids=[],k;
for(k=0;k<pages.length;k++){kids.push((4+3*k)+' 0 R');}
obj(2);put('<< /Type /Pages /Kids ['+kids.join(' ')+'] /Count '+pages.length+' >>\nendobj\n');
obj(3);put('<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>\nendobj\n');
for(k=0;k<pages.length;k++){
var pg=pages[k],land=pg.w>pg.h,W=land?P[1]:P[0],H=land?P[0]:P[1];
var s=Math.min((W-2*m)/pg.w,(H-2*m)/pg.h),dw=pg.w*s,dh=pg.h*s,x=(W-dw)/2,y=(H-dh)/2;
var st='q '+f(dw)+' 0 0 '+f(dh)+' '+f(x)+' '+f(y)+' cm /Im0 Do Q\n';
var len=Math.min(m*0.7,14),gap=2;
if(o.marks&&len>=3){
st+='0.4 w 0 G\n';
[[x,y,-1,-1],[x+dw,y,1,-1],[x,y+dh,-1,1],[x+dw,y+dh,1,1]].forEach(function(q){
st+=f(q[0]+q[2]*gap)+' '+f(q[1])+' m '+f(q[0]+q[2]*(gap+len))+' '+f(q[1])+' l S\n';
st+=f(q[0])+' '+f(q[1]+q[3]*gap)+' m '+f(q[0])+' '+f(q[1]+q[3]*(gap+len))+' l S\n';
});
}
if(m>=12){st+='BT /F1 8 Tf '+f(m)+' '+f(Math.max(3,(m-8)/2))+' Td ('+pg.label+') Tj ET\n';}
obj(4+3*k);
put('<< /Type /Page /Parent 2 0 R /MediaBox [0 0 '+f(W)+' '+f(H)+'] /Resources << /Font << /F1 3 0 R >> /XObject << /Im0 '+(6+3*k)+' 0 R >> >> /Contents '+(5+3*k)+' 0 R >>\nendobj\n');
obj(5+3*k);put('<< /Length '+st.length+' >>\nstream\n'+st+'endstream\nendobj\n');
obj(6+3*k);
put('<< /Type /XObject /Subtype /Image /Width '+pg.w+' /Height '+pg.h+' /ColorSpace /DeviceRGB /BitsPerComponent 8 /Filter /DCTDecode /Length '+pg.jpg.length+' >>\nstream\n');
put(pg.jpg);put('\nendstream\nendobj\n');
}
var xo=off,n;
put('xref\n0 '+(N+1)+'\n0000000000 65535 f \n');
for(n=1;n<=N;n++){put(pad(offs[n],10)+' 00000 n \n');}
put('trailer\n<< /Size '+(N+1)+' /Root 1 0 R >>\nstartxref\n'+xo+'\n%%EOF\n');
return new Blob(parts,{type:'application/pdf'});
}
function pt(e){var b=el.cv.getBoundingClientRect();return {x:(e.clientX-b.left)*S.view.dw/b.width,y:(e.clientY-b.top)*S.view.dh/b.height};}
function hit(p){
var v=S.view,reg=v.reg,sc=v.sc,best=null,bd=14,i,d;
for(i=0;i<S.xs.length;i++){
d=Math.abs(p.x-(reg.x+S.xs[i]*reg.w)*sc);
if(d<bd&&p.y>=reg.y*sc-14&&p.y<=(reg.y+reg.h)*sc+14){bd=d;best={t:'x',i:i};}
}
for(i=0;i<S.ys.length;i++){
d=Math.abs(p.y-(reg.y+S.ys[i]*reg.h)*sc);
if(d<bd&&p.x>=reg.x*sc-14&&p.x<=(reg.x+reg.w)*sc+14){bd=d;best={t:'y',i:i};}
}
return best;
}
function moveLine(p){
var d=S.drag,reg=S.view.reg,sc=S.view.sc,a,f;
if(d.t==='x'){a=S.xs;f=(p.x/sc-reg.x)/reg.w;}else{a=S.ys;f=(p.y/sc-reg.y)/reg.h;}
var lo=(d.i>0?a[d.i-1]:0)+0.02,hi=(d.i<a.length-1?a[d.i+1]:1)-0.02;
a[d.i]=Math.max(lo,Math.min(hi,f));
}
el.cv.addEventListener('pointerdown',function(e){
if(!el.adj.checked||!S.img||!S.view){return;}
var h=hit(pt(e));
if(h){S.drag=h;el.cv.setPointerCapture(e.pointerId);e.preventDefault();}
});
el.cv.addEventListener('pointermove',function(e){
if(!S.img||!S.view){return;}
if(S.drag){moveLine(pt(e));render();return;}
if(el.adj.checked){var h=hit(pt(e));el.cv.style.cursor=h?(h.t==='x'?'col-resize':'row-resize'):'';}else{el.cv.style.cursor='';}
});
function endDrag(){if(S.drag){S.drag=null;markDirty();}}
el.cv.addEventListener('pointerup',endDrag);
el.cv.addEventListener('pointercancel',endDrag);
function loadFile(file){
if(S.busy){say('กำลังประมวลผล รอสักครู่แล้วลองใหม่');return;}
if(!file||(file.type&&file.type.indexOf('image/')!==0)){say('ไฟล์นี้ไม่ใช่รูปภาพ');return;}
var u=URL.createObjectURL(file),im=new Image();
im.onload=function(){
if(S.url){URL.revokeObjectURL(S.url);}
clearTiles();
S.url=u;S.img=im;S.w=im.naturalWidth;S.h=im.naturalHeight;
S.fmt=file.type==='image/jpeg'?'jpeg':(file.type==='image/webp'?'webp':'png');
S.name=(file.name||'image').replace(/\.[^.]+$/,'').replace(/\s+/g,'_').replace(/[^\w\u0E00-\u0E7F.\-]+/g,'')||'image';
el.prefix.placeholder=S.name;
el.work.hidden=false;
onOpt();syncGrid();say('');
};
im.onerror=function(){URL.revokeObjectURL(u);say('เปิดรูปนี้ไม่ได้ ลองแปลงเป็น JPG หรือ PNG ก่อน');};
im.src=u;
}
function onGrid(){
var size=el.mode.value==='size';
el.bc1.hidden=size;el.bc2.hidden=size;el.bs1.hidden=!size;el.bs2.hidden=!size;el.ratio.disabled=size;
syncGrid();
}
function onOpt(){
el.qval.textContent=el.q.value;
el.qbox.hidden=cfg().fmt==='png';
markDirty();render();
}
['mode','cols','rows','tw','th'].forEach(function(k){el[k].addEventListener(k==='mode'?'change':'input',onGrid);});
['ratio','overlap','outw','fmt','q','prefix','ig'].forEach(function(k){el[k].addEventListener('input',onOpt);el[k].addEventListener('change',onOpt);});
el.adj.addEventListener('change',function(){el.cv.className=el.adj.checked?'adj':'';render();});
el.reset.addEventListener('click',syncGrid);
el.clear.addEventListener('click',function(){
if(S.busy){return;}
clearTiles();S.img=null;S.view=null;
if(S.url){URL.revokeObjectURL(S.url);S.url=null;}
el.file.value='';el.work.hidden=true;say('');
});
el.split.addEventListener('click',generate);
el.zip.addEventListener('click',doZip);
el.pdf.addEventListener('click',doPdf);
Array.prototype.forEach.call(el.root.querySelectorAll('[data-c]'),function(b){
b.addEventListener('click',function(){
el.mode.value='count';
el.cols.value=b.getAttribute('data-c');el.rows.value=b.getAttribute('data-r');
if(b.hasAttribute('data-ig')){el.ratio.value=b.getAttribute('data-ratio')||'full';el.ig.checked=true;el.outw.value='1080';}
onGrid();onOpt();
});
});
el.pick.addEventListener('click',function(e){e.stopPropagation();el.file.click();});
el.drop.addEventListener('click',function(){el.file.click();});
el.drop.addEventListener('keydown',function(e){if(e.key==='Enter'||e.key===' '){e.preventDefault();el.file.click();}});
el.file.addEventListener('change',function(){if(el.file.files&&el.file.files[0]){loadFile(el.file.files[0]);}});
['dragenter','dragover'].forEach(function(t){el.root.addEventListener(t,function(e){e.preventDefault();el.drop.classList.add('on');});});
['dragleave','drop'].forEach(function(t){el.root.addEventListener(t,function(e){e.preventDefault();el.drop.classList.remove('on');});});
el.root.addEventListener('drop',function(e){var f=e.dataTransfer&&e.dataTransfer.files&&e.dataTransfer.files[0];if(f){loadFile(f);}});
document.addEventListener('paste',function(e){
var it=(e.clipboardData&&e.clipboardData.items)||[];
for(var i=0;i<it.length;i++){
if(it[i].type&&it[i].type.indexOf('image/')===0){var f=it[i].getAsFile();if(f){e.preventDefault();loadFile(f);}return;}
}
});
var rz=0;
window.addEventListener('resize',function(){cancelAnimationFrame(rz);rz=requestAnimationFrame(render);});
})();
</script>

## วิธีใช้งานเครื่องมือแบ่งรูปภาพ

1. **เพิ่มรูปภาพ** ลากไฟล์มาวางในกรอบ กดปุ่ม "เลือกรูปภาพ" หรือคัดลอกรูปแล้วกด Ctrl+V (Mac ใช้ Cmd+V) ได้เลย
2. **เลือกรูปแบบการแบ่ง** กดปุ่มลัดอย่าง 2×2, 3×3 หรือ Instagram กริด หรือเลือกโหมด "ตามจำนวนแถว/คอลัมน์" แล้วกรอกตัวเลขเอง (สูงสุด 20×20) ถ้าต้องการกำหนดขนาดชิ้นเป็นพิกเซล ให้เลือกโหมด "ตามขนาดชิ้น"
3. **เลือกอัตราส่วนของแต่ละชิ้น** เช่น 1:1 หรือ 4:5 เครื่องมือจะครอปภาพจากกึ่งกลางให้พอดี ส่วนที่ถูกตัดออกจะมืดลงในตัวอย่าง หากไม่ต้องการครอปให้เลือก "ใช้ทั้งภาพ"
4. **ปรับเส้นแบ่ง (ไม่บังคับ)** ติ๊ก "ลากเส้นแบ่งเอง" แล้วลากจุดสีน้ำเงินบนเส้นเพื่อทำให้ชิ้นมีขนาดไม่เท่ากัน กด "จัดเส้นให้เท่ากัน" เพื่อกลับไปแบ่งเท่าๆ กัน
5. **ตั้งค่าไฟล์ผลลัพธ์** เลือกรูปแบบไฟล์ (PNG, JPG, WebP) ปรับคุณภาพ กำหนดความกว้างต่อชิ้น เช่น 1080 px และตั้งส่วนซ้อนทับหากต้องการ
6. **กด "แบ่งรูปภาพ"** เพื่อดูตัวอย่างทุกชิ้น คลิกที่ชิ้นใดก็ได้เพื่อดาวน์โหลดทีละไฟล์ หรือกด "ดาวน์โหลด ZIP" เพื่อรับทุกชิ้นในไฟล์เดียว
7. **พิมพ์โปสเตอร์ติดผนัง** เลือกขนาดกระดาษและขอบกระดาษ แล้วกด "ส่งออก PDF" ระบบจะสร้าง PDF โดยใช้ 1 ชิ้นต่อ 1 หน้า พร้อมเลขแถว คอลัมน์ และเส้นมุมสำหรับตัดและต่อ

### วิธีโพสต์กริด Instagram ให้เรียงถูกต้อง

เปิดตัวเลือก "เรียงเลขตามลำดับโพสต์ Instagram" (หรือกดปุ่มลัด Instagram) ไฟล์ที่ลงท้ายด้วย 01 คือชิ้นที่ต้องโพสต์ก่อน ซึ่งก็คือชิ้นล่างขวา แล้วโพสต์เรียงตามเลขไปเรื่อยๆ จนถึงชิ้นบนซ้ายเป็นชิ้นสุดท้าย รูปที่โพสต์ล่าสุดจะอยู่บนสุดของโปรไฟล์ ทำให้กริดต่อกันเป็นภาพเดียว

## ฟีเจอร์เด่นของเครื่องมือ

- แบ่งได้ทั้งแบบแถว×คอลัมน์ (1×1 ถึง 20×20) และแบบกำหนดขนาดชิ้นเป็นพิกเซล
- มีปุ่มลัดสำหรับ Instagram กริดและ Carousel พร้อมตั้งค่าอัตราส่วนและความกว้าง 1080 px ให้อัตโนมัติ
- ลากเส้นแบ่งเองได้ ชิ้นไม่ต้องมีขนาดเท่ากัน
- มีตัวอย่างพร้อมเลขกำกับทุกชิ้นก่อนดาวน์โหลด
- ส่วนซ้อนทับ (Overlap) เพื่อให้ชิ้นเหลื่อมกันเล็กน้อย เหมาะกับการพิมพ์ติดผนังหรือเตรียมข้อมูลภาพ
- ส่งออกเป็นไฟล์ ZIP หรือ PDF สำหรับพิมพ์ (A4, A3, Letter) พร้อมเส้นมุมตัดและต่อ
- ปรับขนาดและแปลงรูปแบบไฟล์ได้ในขั้นตอนเดียว
- ประมวลผลในเบราว์เซอร์ของคุณทั้งหมด รูปภาพไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์ ใช้ฟรี ไม่ต้องสมัครสมาชิก

## ศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| แถว (Row) | ชิ้นที่เรียงต่อกันในแนวนอน นับจากบนลงล่าง จำนวนแถว 3 หมายถึงตัดรูปเป็น 3 ระดับตามแนวตั้ง |
| คอลัมน์ (Column) | ชิ้นที่เรียงต่อกันในแนวตั้ง นับจากซ้ายไปขวา จำนวนคอลัมน์ 3 หมายถึงตัดรูปเป็น 3 ส่วนตามแนวนอน |
| กริด (Grid) | ตารางที่เกิดจากการแบ่งรูปด้วยแถวและคอลัมน์ เช่น กริด 3×3 มี 9 ชิ้น |
| ชิ้น (Tile) | ส่วนย่อยแต่ละส่วนที่ได้หลังจากแบ่งรูป ใช้เรียกแทนรูปที่ถูกตัดออกมาแต่ละรูป |
| ครอป (Crop) | การตัดส่วนเกินของภาพออกเพื่อให้ได้สัดส่วนที่ต้องการ เครื่องมือนี้ครอปจากกึ่งกลางภาพ |
| อัตราส่วน (Aspect Ratio) | สัดส่วนความกว้างต่อความสูงของแต่ละชิ้น เช่น 1:1 เป็นสี่เหลี่ยมจัตุรัส 4:5 เป็นแนวตั้งที่นิยมใช้โพสต์ Instagram |
| เส้นแบ่ง | เส้นที่บอกตำแหน่งที่จะตัดรูป เปิด "ลากเส้นแบ่งเอง" เพื่อเลื่อนเส้นได้ |
| ตามขนาดชิ้น | โหมดที่กำหนดความกว้างและความสูงของแต่ละชิ้นเป็นพิกเซล ระบบคำนวณจำนวนแถวและคอลัมน์ให้เอง ชิ้นขอบขวาและล่างอาจเล็กกว่าชิ้นอื่น |
| พิกเซล (px) | หน่วยเล็กที่สุดของรูปดิจิทัล ยิ่งจำนวนพิกเซลมากภาพยิ่งละเอียด |
| ความกว้างผลลัพธ์ | ความกว้างของไฟล์แต่ละชิ้นที่ดาวน์โหลด ความสูงจะปรับตามสัดส่วนให้เอง หากเว้นว่างจะใช้ขนาดตามต้นฉบับ |
| ส่วนซ้อนทับ (Overlap) | จำนวนพิกเซลที่ชิ้นข้างเคียงเหลื่อมกัน ช่วยให้ต่อรอยตัดได้เนียนขึ้นเวลาพิมพ์ ปรับเป็น 0 หากต้องการให้ชิ้นต่อกันพอดี |
| PNG | ไฟล์คมชัด ไม่สูญเสียคุณภาพ รองรับพื้นหลังโปร่งใส ขนาดไฟล์ค่อนข้างใหญ่ |
| JPG | ไฟล์ที่นิยมที่สุดสำหรับรูปถ่าย ขนาดเล็ก ไม่รองรับพื้นหลังโปร่งใส |
| WebP | ไฟล์ขนาดเล็กสำหรับเว็บ รองรับพื้นหลังโปร่งใส แต่บางแอปอาจเปิดไม่ได้ |
| คุณภาพ (Quality) | ระดับการบีบอัดของ JPG และ WebP ค่ายิ่งสูงภาพยิ่งชัดแต่ไฟล์ใหญ่ขึ้น |
| ZIP | ไฟล์รวมที่บรรจุหลายไฟล์ไว้ด้วยกัน ใช้ดาวน์โหลดทุกชิ้นได้ในครั้งเดียว |
| Carousel | โพสต์แบบเลื่อนปัดดูหลายสไลด์ เมื่อแบ่งรูปพาโนรามาเป็น 3×1 ภาพจะต่อเนื่องกันเมื่อปัดดู |
| ลำดับโพสต์ Instagram | การเรียงเลขชิ้นย้อนกลับ โดยชิ้นที่ 1 คือชิ้นที่ต้องโพสต์ก่อน เพื่อให้กริดบนโปรไฟล์ประกอบเป็นภาพเดียว |
| ขอบกระดาษ (Margin) | ระยะว่างรอบรูปในหน้า PDF ปรับให้ตรงกับระยะพิมพ์ของเครื่องพิมพ์ของคุณ |
| เส้นมุม (Crop Marks) | เส้นสั้นๆ ที่มุมของรูปในหน้า PDF ใช้เป็นแนวสำหรับตัดและวางต่อชิ้นให้ตรงกัน |
| ประมวลผลในเครื่อง | การทำงานทั้งหมดเกิดในเบราว์เซอร์ของคุณ รูปภาพไม่ถูกส่งออกไปเก็บบนเซิร์ฟเวอร์ |

## คำถามที่พบบ่อย

### แบ่งรูปภาพออนไลน์ฟรีหรือไม่

ใช้ฟรีทั้งหมด ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำบนรูปที่ดาวน์โหลด

### รูปของฉันถูกอัปโหลดไปเก็บไว้ที่ไหนหรือไม่

ไม่ การแบ่งรูป การสร้าง ZIP และการสร้าง PDF ทำงานในเบราว์เซอร์ของคุณเอง รูปจึงไม่ถูกส่งไปยังเซิร์ฟเวอร์

### รองรับไฟล์ HEIC จากไอโฟนหรือไม่

ขึ้นอยู่กับเบราว์เซอร์ Safari เปิดไฟล์ HEIC ได้ แต่เบราว์เซอร์อื่นอาจเปิดไม่ได้ หากมีข้อความแจ้งว่าเปิดรูปไม่ได้ ให้แปลงเป็น JPG หรือ PNG ก่อนแล้วลองใหม่

### จะตัดรูปให้เป็น 9 ชิ้นสำหรับ Instagram ทำอย่างไร

กดปุ่มลัด "Instagram กริด 3×3" แล้วกด "ดาวน์โหลด ZIP" จากนั้นโพสต์ไฟล์ตามเลขลำดับ เริ่มจากไฟล์ที่ลงท้ายด้วย 01

### ตัดรูปเพื่อพิมพ์โปสเตอร์ขนาดใหญ่ได้หรือไม่

ได้ เลือกจำนวนแถวและคอลัมน์ ตั้งส่วนซ้อนทับเล็กน้อยหากต้องการ แล้วกด "ส่งออก PDF" พิมพ์ทีละหน้าและนำมาต่อกันตามเลขแถวและคอลัมน์ที่ระบุมุมล่างของแต่ละหน้า

### จำกัดจำนวนชิ้นสูงสุดเท่าไร

สูงสุด 20×20 หรือ 400 ชิ้นต่อครั้ง หากรูปมีขนาดใหญ่มากและแบ่งหลายชิ้น เบราว์เซอร์อาจใช้เวลาประมวลผลนานขึ้น