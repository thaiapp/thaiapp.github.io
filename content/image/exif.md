---
title: ดูข้อมูล EXIF ออนไลน์ ฟรี ตรวจ GPS และ Metadata ของรูปภาพ
h1: ดูข้อมูล EXIF ออนไลน์
description: 'ดู EXIF พิกัด GPS วันเวลา และข้อมูลกล้องจากรูป JPG, PNG, WebP, HEIC, TIFF ในเบราว์เซอร์ ไม่อัปโหลด ประเมินความเสี่ยงและลบข้อมูลส่วนตัวก่อนแชร์ ใช้ฟรีทันที'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-14T09:00:00+07:00'
weight: 113
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ดูข้อมูล EXIF ออนไลน์
- ดู EXIF
- ดู EXIF รูปภาพ
- ดู EXIF HEIC
- เช็คพิกัด GPS รูปภาพ
- ตรวจสอบตำแหน่งที่ถ่ายรูป
- ดู metadata รูปภาพ
- ดูข้อมูลกล้องจากรูป
- EXIF viewer
- รูปภาพ
---

<style>
#xv{border:2px dashed #8aa;border-radius:12px;padding:14px;margin:16px 0}
#xv .r{border:1px solid #8884;border-radius:10px;padding:12px;margin:10px 0}
#xv table{border-collapse:collapse;width:100%;font-size:.85rem}
#xv td{border-bottom:1px solid #8883;padding:3px 6px;word-break:break-all}
#xv td:first-child{white-space:nowrap;opacity:.7}
#xv button,#xv label{margin:3px 8px 3px 0}
#xv .hi{color:#d33;font-weight:700}
</style>
<div id="xv"><input type="file" id="xf" multiple accept="image/*,.heic,.heif,.tif,.tiff"> <input id="xq" placeholder="ค้นหาฟิลด์…"> <button id="xj" type="button">ส่งออก JSON</button><button id="xc" type="button">ส่งออก CSV</button><button id="xr" type="button">ล้างทั้งหมด</button><div id="xo"><p>ลากรูปมาวางที่นี่ หรือกดเลือกไฟล์ (ประมวลผลในเบราว์เซอร์ ไม่อัปโหลด)</p></div></div>
<script>
(function(){
var $=function(i){return document.getElementById(i)},S=[];
var T={271:'Make',272:'Model',274:'Orientation',305:'Software',306:'DateTime',315:'Artist',33432:'Copyright',33434:'ExposureTime',33437:'FNumber',34855:'ISO',36867:'DateTimeOriginal',36868:'DateTimeDigitized',37377:'ShutterSpeed',37378:'Aperture',37380:'ExposureCompensation',37383:'MeteringMode',37385:'Flash',37386:'FocalLength',37500:'MakerNote',41986:'ExposureMode',41987:'WhiteBalance',42032:'CameraOwnerName',42033:'BodySerialNumber',42035:'LensMake',42036:'LensModel',42037:'LensSerialNumber',50708:'UniqueCameraModel',50735:'CameraSerialNumber'};
var GT={1:'GPSLatitudeRef',2:'GPSLatitude',3:'GPSLongitudeRef',4:'GPSLongitude',5:'GPSAltitudeRef',6:'GPSAltitude',7:'GPSTimeStamp',29:'GPSDateStamp'};
var C={gps:'GPS',date:'วันเวลา',dev:'กล้อง/ซอฟต์แวร์',id:'ซีเรียล/เจ้าของ/MakerNote',thumb:'ภาพย่อ',xmp:'XMP/IPTC/ข้อความ',icc:'โปรไฟล์สี ICC',c2pa:'C2PA'};
var P={s:['gps','date','dev','id','thumb','xmp'],m:['gps','id','thumb','xmp'],p:['gps','thumb','id']};
function esc(s){return String(s).replace(/[&<>"']/g,function(c){return '&#'+c.charCodeAt(0)+';'})}
function cat(x){if(x.g=='GPS'||x.id==34853)return 'gps';
if([306,36867,36868,37520,37521,37522,36880,36881,36882].indexOf(x.id)>=0)return 'date';
if([271,272,305,42035,42036,50708].indexOf(x.id)>=0)return 'dev';
if([315,33432,42032,42033,42037,50735,37500].indexOf(x.id)>=0)return 'id';
return ''}
function tf(b,s,r){
var dv=new DataView(b.buffer,b.byteOffset,b.byteLength),le=b[s]==73,Z=[0,1,1,2,4,8,1,1,2,4,8,4,8];
function u16(p){return dv.getUint16(p,le)}
function u32(p){return dv.getUint32(p,le)}
function val(t,c,p){var a=[],i,x,nu,de;
if(t==2){x='';for(i=0;i<c;i++){if(!b[p+i])break;x+=String.fromCharCode(b[p+i])}return x}
if(t==1||t==7){for(i=0;i<Math.min(c,16);i++)a.push(b[p+i]);return a.join(' ')}
for(i=0;i<Math.min(c,8);i++){
if(t==3)a.push(u16(p+i*2));else if(t==4)a.push(u32(p+i*4));
else if(t==5||t==10){nu=t==5?u32(p+i*8):dv.getInt32(p+i*8,le);de=u32(p+i*8+4);a.push(de?+(nu/de).toFixed(4):0)}
else a.push(0)}
return a.length==1?a[0]:a}
function ifd(p,g,d){var n,i,e,id,t,c,sz,vo;
if(d>2||p<8||s+p+2>b.length)return 0;
n=u16(s+p);if(g=='IFD0')r.np=s+p+2+n*12;
for(i=0;i<n;i++){e=s+p+2+i*12;if(e+12>b.length)break;
id=u16(e);t=u16(e+2);c=u32(e+4);sz=(Z[t]||1)*c;vo=sz>4?s+u32(e+8):e+8;
if(vo+sz>b.length)continue;
if(id==34665||id==34853){r.ft.push({g:g,id:id,k:'',v:'',e:e,sz:4,p:1});ifd(u32(e+8),id==34665?'EXIF':'GPS',d+1);continue}
if(g=='IFD1'){if(id==513)r.th={o:u32(e+8),l:0};if(id==514&&r.th)r.th.l=u32(e+8)}
r.ft.push({g:g,id:id,k:g=='GPS'?(GT[id]||'GPS '+id):(T[id]||'0x'+id.toString(16)),v:sz>20000?'['+sz+' bytes]':val(t,c,vo),e:e,vo:vo,sz:sz})}
return u32(s+p+2+n*12)}
var q=ifd(u32(s+4),'IFD0',0);if(q)ifd(q,'IFD1',0)}
function an(b){
var r={fmt:'?',tf:-1,sg:[],ft:[],th:null,np:-1,x:{}},p,L,m,t,n,d,i;
function A(p,n){return String.fromCharCode.apply(null,b.subarray(p,p+n))}
if(b[0]==255&&b[1]==216){r.fmt='JPEG';p=2;
while(p+4<b.length&&b[p]==255){m=b[p+1];if(m==218||m==217)break;
if(m==1||m==216||(m>=208&&m<=215)){p+=2;continue}
L=b[p+2]*256+b[p+3];n=A(p+4,Math.min(30,L));t=null;
if(m==225&&n.indexOf('Exif\x00\x00')==0)r.tf=p+10;
else if(m==225&&n.indexOf('http://ns.adobe.com/xap')==0)t='xmp';
else if(m==237)t='xmp';
else if(m==226&&n.indexOf('ICC_PROFILE')==0)t='icc';
else if(m==235)t='c2pa';
if(t){r.sg.push({t:t,a:p,z:p+2+L});r.x[t]=1}
p+=2+L}}
else if(b[0]==137&&b[1]==80){r.fmt='PNG';p=8;
while(p+12<=b.length){L=((b[p]*256+b[p+1])*256+b[p+2])*256+b[p+3];n=A(p+4,4);t=null;
if(n=='eXIf')r.tf=p+8;
else if(n=='iCCP')t='icc';
else if(n=='caBX')t='c2pa';
else if(n=='iTXt'||n=='tEXt'||n=='zTXt'){t='xmp';
if(n=='tEXt'){d=A(p+8,Math.min(L,3000)).split('\x00');r.ft.push({g:'PNG',id:0,k:d[0],v:d.slice(1).join(' ').slice(0,300)})}}
if(t){r.sg.push({t:t,a:p,z:p+12+L});r.x[t]=1}
p+=12+L}}
else if(A(0,4)=='RIFF'&&A(8,4)=='WEBP'){r.fmt='WebP';p=12;
while(p+8<=b.length){n=A(p,4);L=b[p+4]+b[p+5]*256+b[p+6]*65536+b[p+7]*16777216;
if(n=='EXIF')r.tf=p+8+(A(p+8,4)=='Exif'?6:0);
if(n=='XMP ')r.x.xmp=1;
if(n=='ICCP')r.x.icc=1;
p+=8+L+(L&1)}}
else if((b[0]==73&&b[1]==73&&b[2]==42)||(b[0]==77&&b[1]==77&&b[3]==42)){r.fmt='TIFF';r.tf=0}
else if(A(4,4)=='ftyp'){r.fmt='HEIC';
for(i=0;i<Math.min(b.length,3000000)-8;i++){
if(b[i]==69&&b[i+1]==120&&b[i+2]==105&&b[i+3]==102&&!b[i+4]&&!b[i+5]&&(b[i+6]==73||b[i+6]==77)){r.tf=i+6;break}}}
if(r.tf>=0&&r.tf+8<b.length&&(b[r.tf]==73||b[r.tf]==77)){try{tf(b,r.tf,r)}catch(e){}}
r.ft=r.ft.filter(function(x){return x.id!=60956});
if(r.th&&!r.th.l)r.th=null;
return r}
function geo(ft){var g={},c=function(a,f){var v=a[0]+a[1]/60+a[2]/3600;return(f=='S'||f=='W')?-v:v};
ft.forEach(function(x){if(x.g=='GPS')g[x.id]=x.v});
if(!Array.isArray(g[2])||!Array.isArray(g[4]))return null;
return[c(g[2],g[1]),c(g[4],g[3])]}
function has(r){var h={};r.ft.forEach(function(x){var k=cat(x);if(k)h[k]=1});if(r.th)h.thumb=1;
['xmp','icc','c2pa'].forEach(function(k){if(r.x[k])h[k]=1});return h}
function score(r){var h=has(r),s=0;if(h.gps)s+=40;if(h.id)s+=20;if(h.date)s+=15;if(h.dev)s+=10;if(h.thumb)s+=5;if(h.xmp)s+=10;return s}
function lv(s){return s>=50?'สูง':s>=20?'ปานกลาง':'ต่ำ'}
function fm(k,v){if(k=='ExposureTime'&&v>0&&v<1)return '1/'+Math.round(1/v)+' s';if(k=='FNumber')return 'f/'+v;if(k=='FocalLength')return v+' mm';return Array.isArray(v)?v.join(', '):String(v)}
function vis(r){return r.ft.filter(function(x){return !x.p})}
function card(f,i){var r=f.r,h=has(r),g=geo(r.ft),sc=score(r),k,o='<div class="r" data-i="'+i+'"><b>'+esc(f.n)+'</b> · '+r.fmt+' · '+Math.round(f.s/1024)+' KB<br>';
if(r.fmt=='?')return o+'ไม่รองรับไฟล์ชนิดนี้</div>';
o+='คะแนนความเสี่ยง: <b class="'+(sc>=50?'hi':'')+'">'+sc+'/100 ('+lv(sc)+')</b><br>พบ: '+(Object.keys(h).map(function(k){return C[k]}).join(', ')||'ไม่พบข้อมูลส่วนตัว');
if(g)o+='<br>📍 '+g[0].toFixed(5)+', '+g[1].toFixed(5)+' <a href="https://www.openstreetmap.org/?mlat='+g[0]+'&mlon='+g[1]+'#map=16/'+g[0]+'/'+g[1]+'" target="_blank" rel="noopener noreferrer">เปิดใน OpenStreetMap</a>';
o+='<details><summary>ดูฟิลด์ทั้งหมด ('+vis(r).length+')</summary><table>'+vis(r).map(function(x){var t=x.g+' '+x.k+' '+fm(x.k,x.v);return '<tr data-t="'+esc(t.toLowerCase())+'"><td>'+esc(x.g)+' · '+esc(x.k)+'</td><td>'+esc(fm(x.k,x.v))+'</td></tr>'}).join('')+'</table></details><div>';
for(k in C)if(h[k])o+='<label><input type="checkbox" data-k="'+k+'"'+(P.s.indexOf(k)>=0?' checked':'')+'> '+C[k]+'</label>';
o+='</div><button type="button" data-p="s">พรีเซ็ต: โซเชียล</button><button type="button" data-p="m">พรีเซ็ต: ขายของ</button><button type="button" data-p="p">พรีเซ็ต: พอร์ตโฟลิโอ</button><br><button type="button" data-a="c">ลบข้อมูลที่เลือก</button><div class="v"></div></div>';
return o}
function clean(f,sel){
var b=f.b.slice(),r=f.r,dv,le,keep=[],p=0;
function z(a,n){if(a>=0&&a+n<=b.length)for(var k=0;k<n;k++)b[a+k]=0}
if(r.tf>=0&&r.np>=0){le=b[r.tf]==73;dv=new DataView(b.buffer);
r.ft.forEach(function(x){if(x.e==null||!sel[cat(x)])return;
if(x.sz>4)z(x.vo,x.sz);else z(x.e+8,4);
dv.setUint16(x.e,60956,le);dv.setUint16(x.e+2,7,le);dv.setUint32(x.e+4,x.sz>4?x.sz:4,le)});
if(sel.thumb&&r.th){z(r.tf+r.th.o,r.th.l);dv.setUint32(r.np,0,le)}}
r.sg.forEach(function(s){if(sel[s.t]){keep.push(b.subarray(p,s.a));p=s.z}});
keep.push(b.subarray(p));
return new Blob(keep,{type:f.type})}
function add(fl){Array.prototype.forEach.call(fl,function(file){file.arrayBuffer().then(function(ab){
var b=new Uint8Array(ab),r;try{r=an(b)}catch(e){r={fmt:'?',tf:-1,sg:[],ft:[],th:null,np:-1,x:{}}}
S.push({n:file.name,s:file.size,b:b,r:r,type:file.type});
if(S.length==1)$('xo').innerHTML='';
$('xo').insertAdjacentHTML('beforeend',card(S[S.length-1],S.length-1))})})}
function dl(txt,name,mime){var a=document.createElement('a');a.href=URL.createObjectURL(new Blob([txt],{type:mime}));a.download=name;a.click()}
$('xf').addEventListener('change',function(e){add(e.target.files)});
$('xv').addEventListener('dragover',function(e){e.preventDefault()});
$('xv').addEventListener('drop',function(e){e.preventDefault();add(e.dataTransfer.files)});
$('xr').addEventListener('click',function(){S=[];$('xo').innerHTML='<p>ลากรูปมาวางที่นี่ หรือกดเลือกไฟล์</p>'});
$('xq').addEventListener('input',function(e){var q=e.target.value.toLowerCase();
document.querySelectorAll('#xo details').forEach(function(d){d.open=!!q});
document.querySelectorAll('#xo tr').forEach(function(t){t.style.display=t.getAttribute('data-t').indexOf(q)>=0?'':'none'})});
$('xj').addEventListener('click',function(){dl(JSON.stringify(S.map(function(f){return{file:f.n,format:f.r.fmt,risk:score(f.r),fields:vis(f.r).map(function(x){return{group:x.g,tag:x.k,value:fm(x.k,x.v)}})}}),null,2),'exif.json','application/json')});
$('xc').addEventListener('click',function(){var q=function(s){return '"'+String(s).replace(/"/g,'""')+'"'},rows=['file,group,tag,value'];
S.forEach(function(f){vis(f.r).forEach(function(x){rows.push([q(f.n),q(x.g),q(x.k),q(fm(x.k,x.v))].join(','))})});
dl(rows.join('\n'),'exif.csv','text/csv')});
$('xo').addEventListener('click',function(e){var t=e.target,c=t.closest?t.closest('.r'):null,f,sel={},v;
if(!c)return;f=S[c.getAttribute('data-i')];
if(t.getAttribute('data-p')){var pp=P[t.getAttribute('data-p')];
c.querySelectorAll('input[data-k]').forEach(function(x){x.checked=pp.indexOf(x.getAttribute('data-k'))>=0})}
if(t.getAttribute('data-a')=='c'){
c.querySelectorAll('input[data-k]').forEach(function(x){if(x.checked)sel[x.getAttribute('data-k')]=1});
var bl=clean(f,sel);v=c.querySelector('.v');
bl.arrayBuffer().then(function(ab){var r2=an(new Uint8Array(ab)),h=has(r2),u=URL.createObjectURL(bl);
v.innerHTML='ตรวจซ้ำแล้ว: คะแนนความเสี่ยง '+score(r2)+'/100 · ยังเหลือ: '+(Object.keys(h).map(function(k){return C[k]}).join(', ')||'ไม่พบข้อมูลส่วนตัว')+' · <a href="'+u+'" download="clean_'+esc(f.n)+'">ดาวน์โหลดไฟล์ที่ลบแล้ว</a>'})}});
})();
</script>

## วิธีใช้งานเครื่องมือดู EXIF

1. ลากรูปภาพมาวางในกรอบด้านบน หรือกด **เลือกไฟล์** รองรับ JPG, PNG, WebP, HEIC และ TIFF เลือกได้หลายไฟล์พร้อมกัน
2. ดูกล่องผลของแต่ละภาพ จะเห็นรูปแบบไฟล์ ขนาด **คะแนนความเสี่ยง** และรายการข้อมูลที่พบ เช่น GPS วันเวลา ข้อมูลกล้อง และหมายเลขเครื่อง
3. หากภาพมีพิกัด GPS จะแสดงละติจูดและลองจิจูด กด **เปิดใน OpenStreetMap** เมื่ออยากดูแผนที่ ลิงก์นี้เปิดเว็บภายนอก พิกัดจะถูกส่งไปเฉพาะตอนที่คุณกดเท่านั้น
4. กด **ดูฟิลด์ทั้งหมด** เพื่อดูทุกแท็ก และใช้ช่อง **ค้นหาฟิลด์** เพื่อกรอง เช่น พิมพ์ `iso` หรือ `gps`
5. เลือก **พรีเซ็ต** (โซเชียล, ขายของ, พอร์ตโฟลิโอ) หรือติ๊กหมวดที่ต้องการลบเอง เช่น ลบเฉพาะ GPS โดยเก็บข้อมูลอื่นไว้
6. กด **ลบข้อมูลที่เลือก** ระบบจะอ่านไฟล์ใหม่เพื่อ **ตรวจซ้ำ** และแสดงว่ายังเหลืออะไรอยู่ จากนั้นกด **ดาวน์โหลดไฟล์ที่ลบแล้ว**
7. กด **ส่งออก JSON** หรือ **ส่งออก CSV** เพื่อเก็บรายงานข้อมูลของทุกภาพไว้ตรวจสอบภายหลัง

หมายเหตุ: ไฟล์ JPEG และ PNG ลบได้ทุกหมวด ส่วน WebP, HEIC และ TIFF ลบได้เฉพาะข้อมูล EXIF (GPS, วันเวลา, กล้อง, หมายเลขเครื่อง, ภาพย่อ)

ทุกขั้นตอนทำงานในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งออกจากอุปกรณ์ ดูรายละเอียดได้ที่หน้า [ประมวลผลในเครื่อง 100%](/page/no-upload/)

## อธิบายคำศัพท์ในข้อมูล EXIF

- **EXIF (Exchangeable Image File Format)** คือข้อมูลที่กล้องหรือสมาร์ตโฟนบันทึกฝังไว้ในไฟล์ภาพ เช่น รุ่นกล้อง วันเวลา ค่าแสง และตำแหน่ง
- **Metadata** คือข้อมูลที่อธิบายไฟล์ภาพ ไม่ใช่ตัวภาพเอง ครอบคลุมทั้ง EXIF, IPTC และ XMP
- **GPS (Latitude / Longitude)** คือพิกัดละติจูดและลองจิจูดของสถานที่ถ่ายภาพ บางภาพอาจมีความสูงจากระดับน้ำทะเล (Altitude) ด้วย
- **IPTC** คือมาตรฐานข้อมูลที่ใช้ในงานสื่อและภาพข่าว เช่น ชื่อผู้ถ่าย ลิขสิทธิ์ คำบรรยายภาพ และคีย์เวิร์ด
- **XMP** คือ metadata รูปแบบ XML ที่โปรแกรมแต่งภาพ เช่น Lightroom และ Photoshop ใช้บันทึกเรตติ้ง แท็ก และประวัติการแก้ไข
- **ICC Profile** คือโปรไฟล์สีที่ช่วยให้ภาพแสดงสีตรงกันในแต่ละอุปกรณ์ เช่น sRGB หรือ Display P3 หากลบออก สีของภาพอาจดูต่างไปในบางโปรแกรม
- **Make / Model** คือยี่ห้อและรุ่นของกล้องหรือโทรศัพท์ที่ใช้ถ่ายภาพ
- **Lens** คือเลนส์ที่ใช้ถ่ายภาพ ใช้ดูว่าภาพถ่ายด้วยเลนส์ตัวไหน
- **DateTimeOriginal** คือวันเวลาที่กดชัตเตอร์ตามนาฬิกาของกล้อง หากตั้งนาฬิกากล้องผิด ค่านี้ก็จะผิดตามไปด้วย
- **ISO** คือความไวแสงของเซนเซอร์ ค่าสูงช่วยให้ถ่ายในที่มืดได้ แต่ภาพมักมีนอยส์มากขึ้น
- **Aperture (f-number)** คือขนาดรูรับแสง เช่น f/1.8 ตัวเลขน้อยแปลว่ารูรับแสงกว้าง รับแสงได้มากและฉากหลังเบลอง่ายขึ้น
- **Shutter Speed** คือความเร็วชัตเตอร์ เช่น 1/250 วินาที ยิ่งเร็วยิ่งหยุดการเคลื่อนไหวได้ดี ยิ่งช้ายิ่งรับแสงมากแต่ภาพอาจสั่นไหว
- **Focal Length** คือความยาวโฟกัส หน่วยมิลลิเมตร ค่าน้อยให้มุมภาพกว้าง ค่ามากให้มุมแคบและภาพดูใกล้ขึ้น
- **Exposure Compensation** คือค่าชดเชยแสง (EV) ที่ปรับให้ภาพสว่างหรือมืดกว่าที่กล้องวัดได้
- **White Balance** คือสมดุลแสงสีขาว ที่ทำให้สีของภาพดูเป็นธรรมชาติภายใต้แสงแบบต่างๆ
- **Flash** คือสถานะแฟลชว่ายิงหรือไม่ยิงตอนถ่ายภาพ
- **Orientation** คือทิศทางการหมุนของภาพ ใช้บอกโปรแกรมว่าควรแสดงภาพแนวตั้งหรือแนวนอน
- **Software** คือชื่อซอฟต์แวร์หรือเฟิร์มแวร์ที่บันทึกหรือแก้ไขภาพล่าสุด
- **คะแนนความเสี่ยง** คือคะแนน 0-100 ที่เครื่องมือคำนวณจากข้อมูลที่พบ เช่น GPS หมายเลขเครื่อง และวันเวลา ยิ่งสูงยิ่งเสี่ยงเปิดเผยข้อมูลส่วนตัว เป็นเพียงตัวช่วยประเมินเบื้องต้น
- **Thumbnail (ภาพย่อ)** คือภาพขนาดเล็กที่ฝังอยู่ในไฟล์ บางครั้งยังเป็นภาพต้นฉบับก่อนถูกครอป จึงควรลบด้วย
- **MakerNote** คือข้อมูลเฉพาะของผู้ผลิตกล้อง อ่านค่าได้ยาก แต่อาจมีหมายเลขเครื่องหรือการตั้งค่าภายใน
- **Serial Number (BodySerialNumber / LensSerialNumber)** คือหมายเลขประจำตัวของตัวกล้องและเลนส์ ใช้โยงว่าหลายภาพมาจากกล้องตัวเดียวกัน
- **CameraOwnerName / Artist / Copyright** คือชื่อเจ้าของกล้อง ผู้ถ่าย และข้อความลิขสิทธิ์ที่อาจเปิดเผยตัวตน
- **C2PA (Content Credentials)** คือมาตรฐานบันทึกที่มาและประวัติการแก้ไขภาพ รวมถึงการสร้างด้วย AI การลบจะทำให้ข้อมูลรับรองนี้หายไป
- **ข้อความใน PNG (tEXt / iTXt)** คือข้อความที่ฝังในไฟล์ PNG เครื่องมือสร้างภาพ AI บางตัวเก็บพรอมต์และพารามิเตอร์ไว้ที่นี่
- **พรีเซ็ต** คือชุดหมวดที่ติ๊กไว้ให้ล่วงหน้าตามการใช้งาน เช่น โซเชียล ขายของ หรือพอร์ตโฟลิโอ ปรับเองได้ก่อนลบ
- **ตรวจซ้ำ (Verify)** คือการอ่านไฟล์ที่ลบแล้วอีกครั้งเพื่อยืนยันว่าข้อมูลที่เลือกหายไปจริง

## ข้อมูลใน EXIF ที่ควรระวังก่อนแชร์รูป

- **พิกัด GPS** อาจเผยตำแหน่งบ้าน ที่ทำงาน หรือโรงเรียน โดยเฉพาะรูปที่ถ่ายใกล้บ้าน
- **วันเวลาที่ถ่าย** อาจบอกกิจวัตรประจำวันหรือช่วงที่คุณไม่อยู่บ้าน
- **ยี่ห้อและรุ่นอุปกรณ์** บางกล้องยังบันทึกหมายเลขเครื่องไว้ด้วย
- **ชื่อผู้ถ่ายและลิขสิทธิ์** ใน IPTC และ XMP อาจเปิดเผยตัวตนที่คุณไม่ได้ตั้งใจ

อย่าพึ่งพาแพลตฟอร์มให้ลบข้อมูลให้เสมอไป แอปโซเชียลมีเดียหลายแห่งมักตัดข้อมูลตำแหน่งออกเมื่ออัปโหลดรูปแบบปกติ แต่วิธีการทำงานเปลี่ยนแปลงได้ ส่วนการส่งไฟล์ต้นฉบับ เช่น แนบอีเมล ส่งเป็นไฟล์หรือเอกสารในแชต หรือแชร์ผ่านไดรฟ์ มักเก็บข้อมูล EXIF ไว้ครบ วิธีที่แน่นอนกว่าคือตรวจและลบข้อมูลด้วยเครื่องมือนี้ก่อนส่ง หรือใช้หน้า [ลบ EXIF](/image/exif-remover/) โดยตรง

## คำถามที่พบบ่อย

### EXIF คืออะไร และพบในไฟล์ประเภทไหนบ้าง

EXIF คือข้อมูลที่กล้องและสมาร์ตโฟนบันทึกไว้ในไฟล์ภาพ พบมากที่สุดใน JPG รองลงมาคือ HEIC จาก iPhone และ TIFF ส่วน PNG และ WebP มีข้อมูลได้จำกัดกว่า ส่วนไฟล์ GIF โดยทั่วไปไม่มี EXIF

### เครื่องมือนี้อัปโหลดรูปของฉันไปที่เซิร์ฟเวอร์หรือไม่

ไม่ การอ่านและการลบข้อมูลทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกส่งออกจากอุปกรณ์ ดูวิธีตรวจสอบด้วยตัวเองได้ที่หน้า [ประมวลผลในเครื่อง 100%](/page/no-upload/)

### ทำไมรูปของฉันไม่มี EXIF หรือไม่มีพิกัด GPS

มีหลายสาเหตุที่พบบ่อย เช่น เป็นภาพแคปหน้าจอ ภาพที่ผ่านแอปแชตหรือโซเชียลมีเดียซึ่งมักตัดข้อมูลออก ภาพที่ถูกบีบอัดหรือแต่งด้วยโปรแกรมที่ไม่เก็บ metadata หรือปิดการแท็กตำแหน่งในแอปกล้องไว้ตั้งแต่ตอนถ่าย

### จะดูตำแหน่งที่ถ่ายรูปได้อย่างไร

วางไฟล์ภาพต้นฉบับในเครื่องมือนี้ หากภาพมีพิกัด GPS ให้กด **เปิดใน OpenStreetMap** เพื่อดูตำแหน่ง ควรใช้ไฟล์ต้นฉบับจากกล้องหรือโทรศัพท์ ไม่ใช่ภาพที่ส่งต่อผ่านแอปแชต เพราะข้อมูลตำแหน่งอาจถูกตัดออกไปแล้ว

### ดู EXIF ของไฟล์ HEIC จาก iPhone ได้หรือไม่

ได้ เครื่องมือรองรับไฟล์ HEIC ลากไฟล์มาวางได้เลยโดยไม่ต้องแปลงเป็น JPG ก่อน

### ดูหลายรูปพร้อมกันได้หรือไม่

ได้ เพิ่มหลายไฟล์พร้อมกันเพื่อเปรียบเทียบข้อมูลของแต่ละภาพ และลบข้อมูลพร้อมกันได้ โดยกด `Ctrl` ค้างไว้ขณะเลือกไฟล์

### ลบข้อมูลเฉพาะบางหมวดได้หรือไม่

ได้ ติ๊กเลือกหมวดที่ต้องการลบ เช่น GPS, วันเวลา, ข้อมูลกล้อง, หมายเลขเครื่อง, ภาพย่อ, XMP/IPTC, โปรไฟล์สี ICC และ C2PA หรือใช้พรีเซ็ตที่เตรียมไว้ หากไม่แน่ใจ แนะนำให้เริ่มจากพรีเซ็ตโซเชียล และไม่ลบโปรไฟล์สี เพราะอาจทำให้สีภาพดูต่างไปในบางโปรแกรม

### ทำไมเปิดแผนที่แล้วพิกัดถูกส่งออกไป

ตัวเครื่องมืออ่านพิกัดในเบราว์เซอร์และไม่โหลดแผนที่ของบุคคลที่สามเอง จะมีการส่งพิกัดไปยัง OpenStreetMap ก็ต่อเมื่อคุณกดลิงก์ **เปิดใน OpenStreetMap** เท่านั้น

### ลบ EXIF แล้วคุณภาพรูปลดลงหรือไม่

ไม่ สำหรับไฟล์ JPEG การทำความสะอาดเป็นแบบ lossless ภาพไม่ถูกบีบอัดซ้ำ จึงไม่สูญเสียคุณภาพ หลังลบแล้วระบบจะตรวจซ้ำและแสดงว่ายังเหลือข้อมูลอะไรอยู่

### ข้อมูล EXIF แก้ไขหรือปลอมได้หรือไม่ ใช้เป็นหลักฐานได้ไหม

แก้ไขได้ ทั้งวันเวลา พิกัด และชื่อกล้อง จึงควรใช้เป็นข้อมูลประกอบเท่านั้น ไม่ควรใช้เป็นหลักฐานเด็ดขาด ฟิลด์ Software อาจช่วยบอกใบ้ว่าภาพเคยผ่านโปรแกรมแต่งภาพมาแล้ว แต่ไม่ได้ยืนยันว่าภาพถูกดัดแปลง

### ภาพที่สร้างด้วย AI มี EXIF หรือไม่

ขึ้นอยู่กับเครื่องมือที่สร้างและวิธีบันทึกไฟล์ เครื่องมือนี้แสดงข้อมูลที่อ่านได้จาก EXIF, IPTC และ XMP ซึ่งอาจรวมถึงชื่อซอฟต์แวร์ที่สร้างหรือแก้ไขภาพ แต่การมีหรือไม่มีข้อมูลเหล่านี้ไม่เพียงพอที่จะยืนยันว่าภาพสร้างด้วย AI หรือไม่

### จะป้องกันไม่ให้รูปบันทึกตำแหน่งตั้งแต่ต้นได้อย่างไร

ปิดการแท็กตำแหน่งในแอปกล้องของโทรศัพท์ก่อนถ่าย หรือลบข้อมูลด้วยเครื่องมือนี้ทุกครั้งก่อนส่งรูปให้ผู้อื่น

## เครื่องมือที่เกี่ยวข้อง

- [ลบ EXIF](/image/exif-remover/) ลบตำแหน่งและข้อมูลส่วนตัวออกจากรูป
- [แปลง HEIC](/image/heic/) แปลงรูปจาก iPhone เป็น JPG
- [บีบอัดรูปภาพ](/image/compress/) ลดขนาดไฟล์ก่อนส่ง
- [ปรับขนาดรูปภาพ](/image/resize/) เปลี่ยนความกว้างและความสูงของภาพ