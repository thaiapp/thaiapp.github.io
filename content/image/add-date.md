---
title: ใส่วันที่บนรูปภาพ ออนไลน์ ฟรี
h1: ใส่วันที่บนรูปภาพ
description: 'ใส่วันที่บนรูปภาพออนไลน์ฟรี ตรวจวันที่จาก EXIF และชื่อไฟล์อัตโนมัติ ปรับรูปแบบ สี ขนาด ตำแหน่งได้ ทำหลายรูปพร้อมกันได้ ไม่ต้องอัปโหลด ไม่ต้องสมัครสมาชิก'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-13T09:00:00+07:00'
weight: 111
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ใส่วันที่บนรูปภาพ
- ใส่วันที่บนรูปภาพ ออนไลน์
- รูปภาพ
---
<style>
#adTool{--ac:#0f766e;margin:0 0 2rem;font:inherit}
#adTool *{box-sizing:border-box}
#adTool .dz{display:block;border:2px dashed rgba(128,128,128,.55);border-radius:10px;padding:1.6rem 1rem;text-align:center;cursor:pointer}
#adTool .dz.on{border-color:var(--ac);background:rgba(15,118,110,.08)}
#adTool .gr{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:.75rem;margin:1rem 0}
#adTool label.f{display:flex;flex-direction:column;gap:.25rem;font-size:.9rem}
#adTool input,#adTool select{font:inherit;padding:.4rem;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;width:100%}
#adTool input[type=color]{padding:0;height:2.2rem}
#adTool input[type=checkbox]{width:auto;align-self:flex-start;height:1.2rem}
#adTool .bar{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.75rem 0}
#adTool button{font:inherit;padding:.5rem 1rem;border:1px solid var(--ac);border-radius:6px;background:transparent;color:inherit;cursor:pointer}
#adTool button.pr{background:var(--ac);color:#fff}
#adTool button:disabled{opacity:.4;cursor:not-allowed}
#adTool canvas{max-width:100%;height:auto;border-radius:8px;display:none;margin:0 auto}
#adTool .bd{font-size:.85rem;padding:.15rem .6rem;border-radius:99px;border:1px solid rgba(128,128,128,.5)}
#adTool .st{min-height:1.4rem;font-size:.9rem}
#adTool :focus-visible{outline:2px solid var(--ac);outline-offset:2px}
</style>

<div id="adTool">
<label class="dz" id="dz" for="fi">วางรูปภาพที่นี่ ลากไฟล์มาวาง หรือกด Ctrl+V (คลิกเพื่อเลือกไฟล์ JPG, PNG, WebP)</label>
<input type="file" id="fi" accept="image/jpeg,image/png,image/webp" multiple hidden>
<div class="gr">
<label class="f">ข้อความ (ใช้ [date] แทนวันที่)<input type="text" id="tpl" value="[date]"></label>
<label class="f">รูปแบบวันที่<select id="fm"><option value="iso">2026-11-13</option><option value="slash">13/11/2026</option><option value="short">13 พ.ย. 2026</option><option value="be">13 พ.ย. 2569 (พ.ศ.)</option><option value="ym">11/2026</option></select></label>
<label class="f">รวมเวลา (ชั่วโมง:นาที)<input type="checkbox" id="tm"></label>
<label class="f">ตำแหน่ง<select id="ps"><option value="br">ล่างขวา</option><option value="bl">ล่างซ้าย</option><option value="tr">บนขวา</option><option value="tl">บนซ้าย</option></select></label>
<label class="f">ฟอนต์<select id="ft"><option value="'Courier New',monospace">ดิจิทัล (Monospace)</option><option value="Arial,Helvetica,sans-serif">Helvetica</option></select></label>
<label class="f">สี<input type="color" id="cl" value="#ff9d00"></label>
<label class="f">ขนาด<input type="range" id="sz" min="1" max="12" step="0.5" value="4"></label>
<label class="f">ความทึบ<input type="range" id="op" min="10" max="100" value="90"></label>
<label class="f">ระยะขอบ<input type="range" id="mg" min="0" max="10" step="0.5" value="3"></label>
<label class="f">ถ้าไม่พบวันที่<select id="fb"><option value="file">ใช้วันที่ไฟล์</option><option value="today">ใช้วันนี้</option><option value="custom">กำหนดเอง</option><option value="skip">ข้ามรูปนี้</option></select></label>
<label class="f">วันที่กำหนดเอง<input type="date" id="cd"></label>
</div>
<div class="bar"><button type="button" id="pp">ก่อนหน้า</button><span id="ct">0 / 0</span><button type="button" id="nx">ถัดไป</button><span class="bd" id="bd"></span><button type="button" id="rm">ลบรูปนี้</button></div>
<canvas id="pv"></canvas>
<div class="bar"><button type="button" class="pr" id="dl">ดาวน์โหลดรูปนี้</button><button type="button" class="pr" id="za">ดาวน์โหลดทั้งหมด (ZIP)</button></div>
<div class="st" id="st" role="status"></div>
<p>การประมวลผลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกส่งออกจากอุปกรณ์</p>
</div>

<script>
(function(){
var $=function(i){return document.getElementById(i)};
var items=[],cur=0;
var MON=['ม.ค.','ก.พ.','มี.ค.','เม.ย.','พ.ค.','มิ.ย.','ก.ค.','ส.ค.','ก.ย.','ต.ค.','พ.ย.','ธ.ค.'];
var LB={exif:'จาก EXIF',name:'จากชื่อไฟล์',file:'วันที่ไฟล์',today:'วันนี้',custom:'วันที่กำหนดเอง',none:'ไม่พบวันที่'};
var FN=/((?:19|20)\d\d)[-_.]?(0[1-9]|1[0-2])[-_.]?(0[1-9]|[12]\d|3[01])/;
function p2(n){return String(n).padStart(2,'0')}
function fmt(d,f,t){
var y=d.getFullYear(),m=d.getMonth(),day=d.getDate(),s;
if(f==='iso')s=y+'-'+p2(m+1)+'-'+p2(day);
else if(f==='slash')s=p2(day)+'/'+p2(m+1)+'/'+y;
else if(f==='short')s=day+' '+MON[m]+' '+y;
else if(f==='be')s=day+' '+MON[m]+' '+(y+543);
else s=p2(m+1)+'/'+y;
if(t)s+=' '+p2(d.getHours())+':'+p2(d.getMinutes());
return s}
function tiff(v,t){
var le=v.getUint16(t)===0x4949;
function g16(o){return v.getUint16(o,le)}
function g32(o){return v.getUint32(o,le)}
function str(o,n){var s='';for(var i=0;n>i;i++){var c=v.getUint8(o+i);if(c===0)break;s+=String.fromCharCode(c)}return s}
function ifd(o){var r={},n=g16(o);for(var i=0;n>i;i++){var e=o+2+i*12,cnt=g32(e+4);r[g16(e)]={c:cnt,o:cnt>4?t+g32(e+8):e+8,v:g32(e+8)}}return r}
var i0=ifd(t+g32(t+4));
var ex=i0[0x8769]?ifd(t+i0[0x8769].v):{};
var tg=ex[0x9003]||ex[0x9004]||i0[0x132];
return tg?str(tg.o,tg.c):null}
function readExif(b){
var v=new DataView(b),o=2,L=v.byteLength;
if(v.getUint16(0)!==0xFFD8)return null;
while(L>o+10){
var mk=v.getUint16(o),ln=v.getUint16(o+2);
if(mk===0xFFE1&&v.getUint32(o+4)===0x45786966)return tiff(v,o+10);
if(0xFF00>mk||mk===0xFFDA)break;
o+=2+ln}
return null}
function exDate(s){
var m=/(\d{4}):(\d\d):(\d\d)[ T](\d\d):(\d\d):(\d\d)/.exec(s||'');
if(!m||m[1]==='0000')return null;
var d=new Date(+m[1],m[2]-1,+m[3],+m[4],+m[5],+m[6]);
return isNaN(d.getTime())?null:d}
function resolve(it){
if(it.d)return{d:it.d,s:it.src};
var fb=$('fb').value;
if(fb==='file')return{d:new Date(it.f.lastModified),s:'file'};
if(fb==='today')return{d:new Date(),s:'today'};
if(fb==='custom'&&$('cd').value){var a=$('cd').value.split('-');return{d:new Date(+a[0],a[1]-1,+a[2]),s:'custom'}}
return null}
function draw(it,cv){
var im=it.img,w=im.naturalWidth,h=im.naturalHeight;
cv.width=w;cv.height=h;
var x=cv.getContext('2d');
x.drawImage(im,0,0);
var r=resolve(it);
if(!r)return false;
var txt=$('tpl').value.replace(/\[date\]/g,fmt(r.d,$('fm').value,$('tm').checked));
var sd=Math.min(w,h),fs=Math.round(sd*$('sz').value/100),mg=Math.round(sd*$('mg').value/100);
x.font='bold '+fs+'px '+$('ft').value;
x.globalAlpha=$('op').value/100;
x.fillStyle=$('cl').value;
x.shadowColor='rgba(0,0,0,.6)';
x.shadowBlur=Math.round(fs/8);
var p=$('ps').value,tw=x.measureText(txt).width;
x.fillText(txt,p.indexOf('l')>-1?mg:w-mg-tw,p.indexOf('t')>-1?mg+fs:h-mg);
return true}
function show(){
var n=items.length,cv=$('pv');
$('ct').textContent=(n?cur+1:0)+' / '+n;
['dl','za','rm'].forEach(function(i){$(i).disabled=!n});
$('pp').disabled=!n||cur===0;
$('nx').disabled=!n||cur===n-1;
if(!n){cv.style.display='none';$('bd').textContent='';return}
cv.style.display='block';
var it=items[cur],ok=draw(it,cv),r=resolve(it);
$('bd').textContent=r?LB[r.s]:LB.none;
if(!ok)$('st').textContent='ไม่พบวันที่ในรูปนี้ รูปนี้จะไม่ถูกใส่วันที่และไม่ถูกรวมใน ZIP'}
function add(fl){
var a=Array.prototype.slice.call(fl).filter(function(f){return /^image\/(jpeg|png|webp)$/.test(f.type)});
if(!a.length){$('st').textContent='รองรับเฉพาะไฟล์ JPG, PNG และ WebP';return}
$('st').textContent='';
a.forEach(function(f){
var rd=new FileReader();
rd.onload=function(){
var it={f:f,name:f.name,d:null,src:'none'};
try{if(f.type==='image/jpeg'){var d=exDate(readExif(rd.result));if(d){it.d=d;it.src='exif'}}}catch(e){}
if(!it.d){var m=FN.exec(f.name);if(m){it.d=new Date(+m[1],m[2]-1,+m[3]);it.src='name'}}
var im=new Image();
im.onload=function(){it.img=im;items.push(it);show()};
im.onerror=function(){$('st').textContent='เปิดไฟล์ '+f.name+' ไม่ได้'};
im.src=URL.createObjectURL(f)};
rd.readAsArrayBuffer(f)})}
function oname(it){return it.name.replace(/\.[^.]+$/,'')+'_date.'+(it.f.type==='image/png'?'png':'jpg')}
function blobOf(it){return new Promise(function(ok){
var c=document.createElement('canvas');
if(!draw(it,c))return ok(null);
var png=it.f.type==='image/png';
c.toBlob(ok,png?'image/png':'image/jpeg',0.92)})}
function save(b,n){
var a=document.createElement('a');
a.href=URL.createObjectURL(b);a.download=n;
document.body.appendChild(a);a.click();a.remove();
setTimeout(function(){URL.revokeObjectURL(a.href)},4000)}
function crc(b){
var t=crc.t,c,r=-1;
if(!t){t=crc.t=[];for(var n=0;256>n;n++){c=n;for(var k=0;8>k;k++)c=c&1?0xEDB88320^(c>>>1):c>>>1;t[n]=c>>>0}}
for(var i=0;b.length>i;i++)r=t[(r^b[i])&255]^(r>>>8);
return(r^-1)>>>0}
function zip(files){
var parts=[],cd=[],off=0,enc=new TextEncoder(),cs=0;
files.forEach(function(f){
var nb=enc.encode(f.n),c=crc(f.u8),ln=f.u8.length,h=new DataView(new ArrayBuffer(30));
h.setUint32(0,0x04034b50,true);h.setUint16(4,20,true);h.setUint16(6,0x0800,true);h.setUint16(12,0x21,true);
h.setUint32(14,c,true);h.setUint32(18,ln,true);h.setUint32(22,ln,true);h.setUint16(26,nb.length,true);
parts.push(h.buffer,nb,f.u8);
var d=new DataView(new ArrayBuffer(46));
d.setUint32(0,0x02014b50,true);d.setUint16(4,20,true);d.setUint16(6,20,true);d.setUint16(8,0x0800,true);d.setUint16(14,0x21,true);
d.setUint32(16,c,true);d.setUint32(20,ln,true);d.setUint32(24,ln,true);d.setUint16(28,nb.length,true);d.setUint32(42,off,true);
cd.push(d.buffer,nb);
cs+=46+nb.length;off+=30+nb.length+ln});
var e=new DataView(new ArrayBuffer(22));
e.setUint32(0,0x06054b50,true);e.setUint16(8,files.length,true);e.setUint16(10,files.length,true);e.setUint32(12,cs,true);e.setUint32(16,off,true);
return new Blob(parts.concat(cd,[e.buffer]),{type:'application/zip'})}
async function one(){
var b=await blobOf(items[cur]);
if(!b){$('st').textContent='รูปนี้ไม่มีวันที่ให้ใส่ ลองเลือกวิธีจัดการที่ช่อง "ถ้าไม่พบวันที่"';return}
save(b,oname(items[cur]))}
async function all(){
var out=[],seen={};
for(var i=0;items.length>i;i++){
var it=items[i],b=await blobOf(it);
$('st').textContent='กำลังประมวลผล '+(i+1)+' / '+items.length;
if(!b)continue;
var n=oname(it);
if(seen[n]){seen[n]++;n=n.replace(/(\.\w+)$/,'_'+seen[n]+'$1')}else seen[n]=1;
out.push({n:n,u8:new Uint8Array(await b.arrayBuffer())})}
if(!out.length){$('st').textContent='ไม่มีรูปที่ใส่วันที่ได้';return}
save(zip(out),'photos_date.zip');
$('st').textContent='เสร็จแล้ว '+out.length+' ไฟล์'}
['tpl','fm','tm','ps','ft','cl','sz','op','mg','fb','cd'].forEach(function(i){
$(i).addEventListener('input',show);$(i).addEventListener('change',show)});
$('fi').addEventListener('change',function(e){add(e.target.files);e.target.value=''});
var dz=$('dz');
['dragenter','dragover'].forEach(function(t){dz.addEventListener(t,function(e){e.preventDefault();dz.classList.add('on')})});
['dragleave','drop'].forEach(function(t){dz.addEventListener(t,function(e){e.preventDefault();dz.classList.remove('on');if(t==='drop')add(e.dataTransfer.files)})});
document.addEventListener('paste',function(e){if(e.clipboardData&&e.clipboardData.files.length)add(e.clipboardData.files)});
$('pp').addEventListener('click',function(){if(cur>0){cur--;show()}});
$('nx').addEventListener('click',function(){if(items.length-1>cur){cur++;show()}});
$('rm').addEventListener('click',function(){items.splice(cur,1);cur=Math.max(0,Math.min(cur,items.length-1));$('st').textContent='';show()});
$('dl').addEventListener('click',one);
$('za').addEventListener('click',all);
show()})();
</script>

## วิธีใช้งาน

1. **เพิ่มรูปภาพ** ลากไฟล์มาวางในกรอบด้านบน กด `Ctrl`+`V` เพื่อวางรูปจากคลิปบอร์ด หรือคลิกเพื่อเลือกไฟล์ รองรับ JPG, PNG และ WebP และเลือกได้หลายรูปพร้อมกัน
2. **ตรวจวันที่ที่พบ** เครื่องมือจะหาวันที่จากข้อมูล EXIF ก่อน แล้วจึงดูจากชื่อไฟล์ ป้ายเล็ก ๆ เหนือตัวอย่างจะบอกว่าวันที่ของรูปนั้นมาจากไหน ใช้ปุ่มก่อนหน้า/ถัดไปเพื่อตรวจทีละรูป
3. **ตั้งข้อความและรูปแบบ** ค่าเริ่มต้นของช่องข้อความคือ `[date]` ถ้าต้องการเพิ่มคำอื่น เช่น `© [date]` ให้พิมพ์เพิ่มได้ แล้วเลือกรูปแบบวันที่ที่ต้องการ และติ๊ก "รวมเวลา" หากต้องการให้แสดงชั่วโมงกับนาทีด้วย
4. **ปรับหน้าตา** เลือกตำแหน่งมุมของรูป ฟอนต์ สี ขนาด ความทึบ และระยะขอบ ตัวอย่างจะอัปเดตทันที
5. **จัดการรูปที่ไม่มีวันที่** ที่ช่อง "ถ้าไม่พบวันที่" เลือกใช้วันที่ไฟล์ วันนี้ วันที่กำหนดเอง หรือข้ามรูปนั้น
6. **ดาวน์โหลด** กด "ดาวน์โหลดรูปนี้" เพื่อรับรูปเดียว หรือ "ดาวน์โหลดทั้งหมด (ZIP)" เพื่อรับทุกรูปในไฟล์เดียว ชื่อไฟล์ใหม่จะต่อท้ายด้วย `_date`

หมายเหตุ: ไฟล์ที่ได้จะไม่มีข้อมูล EXIF เดิมติดไปด้วย (เช่น ตำแหน่ง GPS และรุ่นกล้อง) และไฟล์ WebP จะถูกบันทึกเป็น JPG

## ความหมายของคำศัพท์

- **EXIF** ข้อมูลที่กล้องหรือมือถือฝังไว้ในไฟล์รูป เช่น วันเวลาที่ถ่าย รุ่นกล้อง และตำแหน่ง
- **DateTimeOriginal** ฟิลด์ใน EXIF ที่เก็บวันเวลาที่กดชัตเตอร์จริง เป็นแหล่งวันที่ที่น่าเชื่อถือที่สุด
- **ชื่อไฟล์** บางครั้งวันที่ซ่อนอยู่ในชื่อ เช่น `20241108_093000.jpg` หรือ `2024-11-08.png` เครื่องมือจะอ่านค่านี้เมื่อไม่มี EXIF
- **วันที่ไฟล์** เวลาที่ไฟล์ถูกแก้ไขล่าสุดบนอุปกรณ์ อาจไม่ตรงกับวันที่ถ่ายจริง
- **ที่มาของวันที่** ป้ายที่บอกว่าวันที่ของแต่ละรูปมาจาก EXIF ชื่อไฟล์ วันที่ไฟล์ วันนี้ หรือกำหนดเอง
- **เทมเพลตและ `[date]`** ข้อความที่คุณกำหนดเอง โดยตัวแทน `[date]` จะถูกแทนด้วยวันที่ของแต่ละรูป
- **รูปแบบวันที่** วิธีเขียนวันที่ เช่น ISO (2026-11-13), แบบเครื่องหมายทับ (13/11/2026), เดือนย่อ และปี พ.ศ. (บวก 543 จากปี ค.ศ.)
- **รวมเวลา** เพิ่มชั่วโมงและนาทีต่อท้ายวันที่ เมื่อ EXIF มีข้อมูลเวลา
- **ฟอนต์ดิจิทัล** ตัวอักษรกว้างเท่ากันทุกตัว ให้อารมณ์เหมือนวันที่บนกล้องฟิล์มหรือนาฬิกาดิจิทัล
- **ความทึบ (Opacity)** ความเข้มของตัวอักษร ค่าต่ำจะจางและกลืนไปกับรูปมากขึ้น
- **ระยะขอบ (Margin)** ระยะห่างของข้อความจากขอบรูป คิดเป็นเปอร์เซ็นต์ของด้านที่สั้นกว่า จึงดูสัดส่วนเดียวกันทั้งรูปเล็กและรูปใหญ่
- **ZIP** ไฟล์บีบรวมหลายรูปไว้ด้วยกัน สะดวกเมื่อใส่วันที่หลายรูปพร้อมกัน
- **ประมวลผลในเบราว์เซอร์** รูปไม่ถูกอัปโหลดไปเซิร์ฟเวอร์ การใส่วันที่ทำงานบนอุปกรณ์ของคุณทั้งหมด