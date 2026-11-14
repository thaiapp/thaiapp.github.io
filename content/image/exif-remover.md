---
title: ลบข้อมูล EXIF ออนไลน์ ฟรี
h1: ลบข้อมูล EXIF ออนไลน์
description: "ลบข้อมูล EXIF พิกัด GPS และ metadata ออกจากรูปภาพออนไลน์ฟรี ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดไฟล์ รองรับ JPG PNG WebP ลากวางแล้วดาวน์โหลดเลย ไม่ต้องติดตั้ง"
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-14T09:00:00+07:00'
weight: 114
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ลบข้อมูล EXIF ออนไลน์
- รูปภาพ
---
<style>
.xr{--xb:#d0d5dd;--xa:#2563eb;--xg:#15803d;--xo:#b45309;--xr:#b91c1c;--xbg:rgba(127,127,127,.08);margin:1rem 0;font-size:15px;line-height:1.5}
.xr *{box-sizing:border-box}
.xr-drop{display:block;border:2px dashed var(--xb);border-radius:12px;padding:28px 16px;text-align:center;cursor:pointer;background:var(--xbg)}
.xr-drop.on,.xr-drop:hover{border-color:var(--xa)}
.xr-drop b{display:block;font-size:1.05em}
.xr-drop span{display:block;opacity:.75;font-size:.85em;margin-top:4px}
.xr-opt{margin:14px 0;border:1px solid var(--xb);border-radius:12px;padding:10px 14px}
.xr-opt legend{padding:0 6px;font-weight:600}
.xr-g{display:grid;grid-template-columns:repeat(auto-fill,minmax(210px,1fr));gap:6px 14px;margin-top:8px}
.xr-g label{cursor:pointer}
.xr button{font:inherit;border:1px solid var(--xb);background:transparent;color:inherit;border-radius:8px;padding:6px 12px;cursor:pointer}
.xr button.p{background:var(--xa);border-color:var(--xa);color:#fff}
.xr button:disabled{opacity:.4;cursor:not-allowed}
.xr-bar{display:flex;flex-wrap:wrap;gap:8px;margin:10px 0}
.xr-f{border:1px solid var(--xb);border-radius:12px;padding:12px 14px;margin:8px 0;overflow-wrap:anywhere}
.xr-f p{margin:6px 0 0}
.xr-s{margin-left:8px;opacity:.7;font-size:.85em}
.xr-c{display:inline-block;border-radius:99px;padding:1px 10px;margin:4px 4px 0 0;font-size:.8em;border:1px solid currentColor}
.xr-ok{color:var(--xg)}
.xr-k{color:var(--xo)}
.xr-e{color:var(--xr)}
.xr-note{font-size:.85em;opacity:.8}
</style>
<div class="xr" id="xr">
<label class="xr-drop" id="xr-drop" for="xr-in"><b>ลากรูปมาวางที่นี่ คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง</b><span>JPG · PNG · WebP (ลบแบบไม่เสียคุณภาพ) · HEIC · GIF · BMP · AVIF (เข้ารหัสใหม่ผ่านเบราว์เซอร์)</span></label>
<input type="file" id="xr-in" accept="image/*" multiple hidden>
<fieldset class="xr-opt"><legend>เลือกข้อมูลที่ต้องการลบ</legend>
<div class="xr-bar"><button type="button" id="xr-all">ลบทั้งหมด (คงโปรไฟล์สี)</button><button type="button" id="xr-gpsonly">เฉพาะ GPS</button></div>
<div class="xr-g">
<label><input type="checkbox" id="o-gps" checked> ตำแหน่ง GPS</label>
<label><input type="checkbox" id="o-date" checked> วันเวลาที่ถ่าย</label>
<label><input type="checkbox" id="o-device" checked> กล้อง/อุปกรณ์/ชื่อผู้ถ่าย</label>
<label><input type="checkbox" id="o-soft" checked> ซอฟต์แวร์ที่ใช้แก้ไข</label>
<label><input type="checkbox" id="o-thumb" checked> Thumbnail ฝังในไฟล์</label>
<label><input type="checkbox" id="o-xmp" checked> XMP</label>
<label><input type="checkbox" id="o-iptc" checked> IPTC</label>
<label><input type="checkbox" id="o-icc"> โปรไฟล์สี ICC</label>
<label><input type="checkbox" id="o-com" checked> คอมเมนต์/ข้อมูลแฝงอื่นๆ</label>
<label><input type="checkbox" id="o-tail" checked> ข้อมูลท้ายไฟล์ (Motion Photo)</label>
<label><input type="checkbox" id="o-ori" checked> คงทิศทางภาพ (Orientation)</label>
</div>
</fieldset>
<div class="xr-bar"><button type="button" class="p" id="xr-zip" disabled>ดาวน์โหลดทั้งหมด (ZIP)</button><button type="button" id="xr-clr">ล้างรายการ</button></div>
<div id="xr-list" aria-live="polite"></div>
<p class="xr-note">ประมวลผลในเบราว์เซอร์ทั้งหมด ไฟล์ไม่ถูกส่งออกจากอุปกรณ์ของคุณ ผลลัพธ์ทุกไฟล์ถูกสแกนซ้ำเพื่อยืนยันว่าข้อมูลที่เลือกถูกลบจริง</p>
</div>
<script>
(function(){
'use strict';
var TS=[0,1,1,2,4,8,1,1,2,4,8,4,8],NONE={};
var CAT={date:{'0':[0x132],x:[0x9003,0x9004,0x9010,0x9011,0x9012,0x9290,0x9291,0x9292]},device:{'0':[0x10F,0x110,0x13B,0x9C9D],x:[0x927C,0xA420,0xA430,0xA431,0xA433,0xA434,0xA435]},soft:{'0':[0x131,0x13C]}};
var LB={gps:'ตำแหน่ง GPS',date:'วันเวลา',device:'กล้อง/อุปกรณ์/ผู้ถ่าย',soft:'ซอฟต์แวร์',thumb:'Thumbnail',exif:'EXIF อื่นๆ (ค่าถ่ายภาพ)',xmp:'XMP',iptc:'IPTC',icc:'โปรไฟล์สี ICC',com:'คอมเมนต์/ข้อมูลแฝง',tail:'ข้อมูลท้ายไฟล์'};
var ORDER=['gps','date','device','soft','thumb','exif','xmp','iptc','icc','com','tail'];
function asc(d,a,n){return String.fromCharCode.apply(null,d.subarray(a,a+n))}
function anyx(o){return !!(o.gps||o.date||o.device||o.soft||o.thumb)}
function tiff(d,s,e){
 if(e-s<8||(d[s]!==73&&d[s]!==77))return null;
 var dv=new DataView(d.buffer,d.byteOffset,d.byteLength),L=d[s]===73,T={dv:dv,L:L,s:s,ifds:{}};
 if(dv.getUint16(s+2,L)!==42)return null;
 function rd(off,nm){
  var b=s+off;
  if(!off||b+2>e)return null;
  var n=dv.getUint16(b,L);
  if(b+2+n*12+4>e)return null;
  var ent=[],i,o,t,sz,da;
  for(i=0;i<n;i++){
   o=b+2+i*12;t=dv.getUint16(o+2,L);sz=dv.getUint32(o+4,L)*(TS[t]||0);
   da=sz>4?s+dv.getUint32(o+8,L):o+8;
   if(da<s||da+sz>e)sz=0;
   ent.push({tag:dv.getUint16(o,L),o:o,da:da,sz:sz});
  }
  return (T.ifds[nm]={b:b,n:n,ent:ent,next:dv.getUint32(b+2+n*12,L)});
 }
 var f0=rd(dv.getUint32(s+4,L),'0');
 if(!f0)return T;
 f0.ent.forEach(function(x){
  if(x.tag===0x8769)rd(dv.getUint32(x.o+8,L),'x');
  if(x.tag===0x8825)rd(dv.getUint32(x.o+8,L),'g');
 });
 if(f0.next)rd(f0.next,'1');
 return T;
}
function ec(T,c){
 var f=T.ifds;c.exif=1;
 if(f.g&&f.g.n)c.gps=1;
 if(f['1'])c.thumb=1;
 ['0','x'].forEach(function(k){
  if(!f[k])return;
  f[k].ent.forEach(function(x){
   ['date','device','soft'].forEach(function(n){if((CAT[n][k]||[]).indexOf(x.tag)>-1)c[n]=1});
  });
 });
}
function gps(d,T){
 var g=T.ifds.g,v={};
 if(!g)return '';
 g.ent.forEach(function(x){v[x.tag]=x});
 function rat(x){
  if(!x||x.sz<24)return NaN;
  var a=0,m=1,k,n,q;
  for(k=0;k<3;k++){n=T.dv.getUint32(x.da+k*8,T.L);q=T.dv.getUint32(x.da+k*8+4,T.L);a+=q?n/q/m:0;m*=60}
  return a;
 }
 var la=rat(v[2]),lo=rat(v[4]);
 if(!isFinite(la)||!isFinite(lo)||(!la&&!lo))return '';
 if(v[1]&&d[v[1].o+8]===83)la=-la;
 if(v[3]&&d[v[3].o+8]===87)lo=-lo;
 return la.toFixed(5)+', '+lo.toFixed(5);
}
function dropEnt(d,T,f,idx){
 var o=f.b+2+idx*12,end=f.b+2+f.n*12+4;
 d.copyWithin(o,o+12,end);
 d.fill(0,end-12,end);
 f.n--;
 T.dv.setUint16(f.b,f.n,T.L);
}
function edit(d,s,e,o){
 var T=tiff(d,s,e);
 if(!T)return;
 var f0=T.ifds['0'],fx=T.ifds.x,fg=T.ifds.g,f1=T.ifds['1'],cut=false;
 function z(x){if(x.sz>4)d.fill(0,x.da,x.da+x.sz)}
 if(o.gps&&fg){fg.ent.forEach(z);d.fill(0,fg.b,fg.b+2+fg.n*12+4)}
 if(o.thumb&&f1){
  var a=0,l=0;
  f1.ent.forEach(function(x){
   if(x.tag===0x201)a=T.dv.getUint32(x.o+8,T.L);
   if(x.tag===0x202)l=T.dv.getUint32(x.o+8,T.L);
  });
  if(a&&l&&s+a+l<=e)d.fill(0,s+a,s+a+l);
  d.fill(0,f1.b,f1.b+2+f1.n*12+4);
  cut=true;
 }
 function sweep(f,k){
  if(!f)return;
  for(var i=f.ent.length-1;i>=0;i--){
   var x=f.ent[i],hit=false;
   ['date','device','soft'].forEach(function(n){if(o[n]&&(CAT[n][k]||[]).indexOf(x.tag)>-1)hit=true});
   if(k==='0'&&o.gps&&x.tag===0x8825)hit=true;
   if(hit){z(x);dropEnt(d,T,f,i)}
  }
 }
 sweep(fx,'x');sweep(f0,'0');
 if(cut&&f0)T.dv.setUint32(f0.b+2+f0.n*12,0,T.L);
}
function ori(v){return new Uint8Array([255,225,0,34,69,120,105,102,0,0,77,77,0,42,0,0,0,8,0,1,1,18,0,3,0,0,0,1,0,v,0,0,0,0,0,0])}
function jpg(d,o,wr){
 var c={},ch=[d.subarray(0,2)],i=2,n=d.length,gp='',all=!!(o.gps&&o.date&&o.device&&o.soft&&o.thumb);
 while(i<n-1){
  if(d[i]!==255){i++;continue}
  var m=d[i+1];
  if(m===255){i++;continue}
  if(m===0xD9){ch.push(d.subarray(i,i+2));i+=2;if(i<n){c.tail=1;if(!o.tail)ch.push(d.subarray(i))}break}
  if(m===1||(m>=0xD0&&m<=0xD8)){ch.push(d.subarray(i,i+2));i+=2;continue}
  var L=(d[i+2]<<8)|d[i+3],e=i+2+L;
  if(L<2||e>n){ch.push(d.subarray(i));break}
  if(m===0xDA){
   var j=e;
   ch.push(d.subarray(i,e));
   while(j<n-1&&!(d[j]===255&&d[j+1]!==0&&(d[j+1]<0xD0||d[j+1]>0xD7)))j++;
   if(j>=n-1)j=n;
   ch.push(d.subarray(e,j));i=j;continue;
  }
  var h=asc(d,i+4,14),drop=false,rep=null;
  if(m===0xE1&&h.slice(0,4)==='Exif'){
   var T=tiff(d,i+10,e);
   if(T){ec(T,c);gp=gp||gps(d,T)}else c.exif=1;
   if(wr&&T){
    if(all){
     var f=T.ifds['0'],v=1;
     drop=true;
     if(f)f.ent.forEach(function(x){if(x.tag===0x112)v=T.dv.getUint16(x.o+8,T.L)});
     if(o.ori&&v>1&&v<9)rep=ori(v);
    }else if(anyx(o)){rep=d.slice(i,e);edit(rep,10,rep.length,o)}
   }
  }
  else if(m===0xE1&&h.slice(0,4)==='http'){c.xmp=1;drop=wr&&!!o.xmp}
  else if(m===0xE2&&h.slice(0,4)==='ICC_'){c.icc=1;drop=wr&&!!o.icc}
  else if(m===0xE2&&h.slice(0,3)==='MPF'){c.tail=1;drop=wr&&!!o.tail}
  else if(m===0xED&&h.slice(0,5)==='Photo'){c.iptc=1;drop=wr&&!!o.iptc}
  else if(m===0xFE||(m>=0xE1&&m<=0xEF&&m!==0xEE)){c.com=1;drop=wr&&!!o.com}
  if(rep)ch.push(rep);else if(!drop)ch.push(d.subarray(i,e));
  i=e;
 }
 return {ch:ch,c:c,gp:gp};
}
function pg(d,o,wr){
 var c={},ch=[d.subarray(0,8)],i=8,gp='',dv=new DataView(d.buffer,d.byteOffset,d.byteLength);
 while(i+12<=d.length){
  var L=dv.getUint32(i),t=asc(d,i+4,4),e=i+12+L,dr=false;
  if(e>d.length){ch.push(d.subarray(i));break}
  if(t==='eXIf'){
   var T=tiff(d,i+8,i+8+L);
   if(T){ec(T,c);gp=gp||gps(d,T)}else c.exif=1;
   dr=wr&&anyx(o);
  }else if(t==='tEXt'||t==='zTXt'||t==='iTXt'){
   var xm=t==='iTXt'&&asc(d,i+8,17)==='XML:com.adobe.xmp';
   c[xm?'xmp':'com']=1;dr=wr&&!!(xm?o.xmp:o.com);
  }else if(t==='tIME'){c.date=1;dr=wr&&!!o.date}
  else if(t==='iCCP'){c.icc=1;dr=wr&&!!o.icc}
  if(!dr)ch.push(d.subarray(i,e));
  i=e;
  if(t==='IEND'){if(i<d.length){c.tail=1;if(!o.tail)ch.push(d.subarray(i))}break}
 }
 return {ch:ch,c:c,gp:gp};
}
function wp(d,o,wr){
 var c={},dv=new DataView(d.buffer,d.byteOffset,d.byteLength),i=12,ps=[],clr=0,gp='',out=[],tot=4,h=new Uint8Array(12);
 while(i+8<=d.length){
  var t=asc(d,i,4),L=dv.getUint32(i+4,true),e=Math.min(i+8+L+(L&1),d.length),dr=false;
  if(t==='EXIF'){
   var a=i+8+(asc(d,i+8,4)==='Exif'?6:0),T=tiff(d,a,i+8+L);
   if(T){ec(T,c);gp=gp||gps(d,T)}else c.exif=1;
   dr=wr&&anyx(o);if(dr)clr|=8;
  }else if(t==='XMP '){c.xmp=1;dr=wr&&!!o.xmp;if(dr)clr|=4}
  else if(t==='ICCP'){c.icc=1;dr=wr&&!!o.icc;if(dr)clr|=32}
  if(!dr)ps.push([t,d.subarray(i,e)]);
  i=e;
 }
 ps.forEach(function(p){
  var b=p[1];
  if(p[0]==='VP8X'&&clr){b=b.slice();b[8]=b[8]&(255^clr)}
  out.push(b);tot+=b.length;
 });
 h.set(d.subarray(0,4));new DataView(h.buffer).setUint32(4,tot,true);h.set(d.subarray(8,12),8);
 return {ch:[h].concat(out),c:c,gp:gp};
}
jpg.mime='image/jpeg';jpg.ext='.jpg';pg.mime='image/png';pg.ext='.png';wp.mime='image/webp';wp.ext='.webp';
function kind(d){
 if(d[0]===255&&d[1]===216)return jpg;
 if(d[0]===137&&d[1]===80&&d[2]===78&&d[3]===71)return pg;
 if(d.length>12&&asc(d,0,4)==='RIFF'&&asc(d,8,4)==='WEBP')return wp;
 return null;
}
async function proc(file,o){
 var d=new Uint8Array(await file.arrayBuffer()),f=kind(d),base=file.name.replace(/\.[^.]+$/,''),ex=(file.name.match(/\.[^.]+$/)||[''])[0];
 if(f){
  var b=f(d,NONE,false),r=f(d,o,true),bl=new Blob(r.ch,{type:f.mime}),a=f(new Uint8Array(await bl.arrayBuffer()),NONE,false);
  return {blob:bl,name:base+'-clean'+(ex||f.ext),b:b.c,a:a.c,gp:b.gp,size:bl.size};
 }
 var bm=await createImageBitmap(file),cv=document.createElement('canvas'),jp=/hei|avif|bmp|jpe?g/i.test(file.type+file.name),cx;
 cv.width=bm.width;cv.height=bm.height;cx=cv.getContext('2d');
 if(jp){cx.fillStyle='#fff';cx.fillRect(0,0,cv.width,cv.height)}
 cx.drawImage(bm,0,0);
 var out=await new Promise(function(res){cv.toBlob(res,jp?'image/jpeg':'image/png',0.92)});
 if(!out)throw new Error('encode');
 return {blob:out,name:base+'-clean'+(jp?'.jpg':'.png'),b:null,a:{},gp:'',size:out.size,re:1};
}
if(typeof globalThis!=='undefined'&&globalThis.__XR_TEST)Object.assign(globalThis.__XR_TEST,{jpg:jpg,pg:pg,wp:wp,kind:kind});
if(typeof document==='undefined'||!document.getElementById('xr'))return;
var CT=(function(){var t=[],c,n,k;for(n=0;n<256;n++){c=n;for(k=0;k<8;k++)c=c&1?0xEDB88320^(c>>>1):c>>>1;t[n]=c>>>0}return t})();
function crc(u){var c=-1,i;for(i=0;i<u.length;i++)c=CT[(c^u[i])&255]^(c>>>8);return (c^-1)>>>0}
function zip(fs){
 var loc=[],cen=[],off=0,cs=0,enc=new TextEncoder();
 fs.forEach(function(f){
  var nm=enc.encode(f.name),cr=crc(f.u),ln=f.u.length,h=new DataView(new ArrayBuffer(30)),g=new DataView(new ArrayBuffer(46));
  h.setUint32(0,0x04034b50,true);h.setUint16(4,20,true);h.setUint16(6,0x800,true);h.setUint16(12,33,true);h.setUint32(14,cr,true);h.setUint32(18,ln,true);h.setUint32(22,ln,true);h.setUint16(26,nm.length,true);
  g.setUint32(0,0x02014b50,true);g.setUint16(4,20,true);g.setUint16(6,20,true);g.setUint16(8,0x800,true);g.setUint16(14,33,true);g.setUint32(16,cr,true);g.setUint32(20,ln,true);g.setUint32(24,ln,true);g.setUint16(28,nm.length,true);g.setUint32(42,off,true);
  loc.push(new Uint8Array(h.buffer),nm,f.u);cen.push(new Uint8Array(g.buffer),nm);
  off+=30+nm.length+ln;cs+=46+nm.length;
 });
 var e=new DataView(new ArrayBuffer(22));
 e.setUint32(0,0x06054b50,true);e.setUint16(8,fs.length,true);e.setUint16(10,fs.length,true);e.setUint32(12,cs,true);e.setUint32(16,off,true);
 return new Blob(loc.concat(cen,[new Uint8Array(e.buffer)]),{type:'application/zip'});
}
var G=function(i){return document.getElementById(i)},items=[],run=0,KEYS=['gps','date','device','soft','thumb','xmp','iptc','icc','com','tail','ori'];
function opts(){var o={};KEYS.forEach(function(k){o[k]=G('o-'+k).checked});return o}
function el(t,c,x){var e=document.createElement(t);if(c)e.className=c;if(x!==undefined)e.textContent=x;return e}
function sz(n){return n>=1048576?(n/1048576).toFixed(2)+' MB':Math.max(1,Math.round(n/1024))+' KB'}
function dl(bl,name){var u=URL.createObjectURL(bl),a=document.createElement('a');a.href=u;a.download=name;document.body.appendChild(a);a.click();a.remove();setTimeout(function(){URL.revokeObjectURL(u)},4000)}
function card(it){
 var d=el('div','xr-f'),r=it.r;
 d.appendChild(el('b','',it.file.name));
 if(it.err){d.appendChild(el('p','xr-e','ประมวลผลไม่สำเร็จ: รูปแบบไม่รองรับหรือไฟล์เสียหาย'));return d}
 if(!r){d.appendChild(el('p','','กำลังประมวลผล…'));return d}
 d.appendChild(el('span','xr-s',sz(it.file.size)+' → '+sz(r.size)));
 if(r.re){d.appendChild(el('p','xr-k','เข้ารหัสภาพใหม่ผ่านเบราว์เซอร์ metadata ถูกลบทั้งหมด แต่ไฟล์อาจต่างจากต้นฉบับเล็กน้อย'))}
 else{
  var p=el('p',''),n=0;
  ORDER.forEach(function(k){
   if(!r.b[k])return;
   n++;p.appendChild(el('span','xr-c '+(r.a[k]?'xr-k':'xr-ok'),LB[k]+(r.a[k]?' · คงไว้':' · ลบแล้ว')));
  });
  if(!n)p.appendChild(el('span','xr-c xr-ok','ไม่พบข้อมูลส่วนตัวในไฟล์นี้'));
  d.appendChild(p);
  if(r.gp){
   var q=el('p','',(r.a.gps?'พบพิกัดต้นฉบับ (ยังคงอยู่): ':'พบพิกัดต้นฉบับ (ลบแล้ว): ')+r.gp+' ');
   var a=el('a','','ดูบนแผนที่');
   a.href='https://www.google.com/maps?q='+encodeURIComponent(r.gp);a.target='_blank';a.rel='noopener noreferrer';
   q.appendChild(a);d.appendChild(q);
  }
 }
 var b=el('button','p','ดาวน์โหลด');b.type='button';b.style.marginTop='8px';
 b.addEventListener('click',function(){dl(r.blob,r.name)});
 d.appendChild(b);
 return d;
}
function render(){
 var l=G('xr-list');
 l.textContent='';
 items.forEach(function(it){l.appendChild(card(it))});
 G('xr-zip').disabled=!items.some(function(it){return it.r});
}
async function refresh(){
 var my=++run,o=opts(),i;
 for(i=0;i<items.length;i++){
  if(my!==run)return;
  items[i].r=null;items[i].err=false;
 }
 render();
 for(i=0;i<items.length;i++){
  if(my!==run)return;
  try{items[i].r=await proc(items[i].file,o)}catch(x){items[i].err=true}
  render();
 }
}
function add(fl){
 var any=false;
 Array.prototype.forEach.call(fl,function(f){if(f&&/^image\//.test(f.type||'')||/\.(jpe?g|png|webp|heic|heif|avif|gif|bmp)$/i.test(f.name||'')){items.push({file:f,r:null,err:false});any=true}});
 if(any)refresh();
}
G('xr-in').addEventListener('change',function(e){add(e.target.files);e.target.value=''});
var dz=G('xr-drop');
['dragenter','dragover'].forEach(function(n){dz.addEventListener(n,function(e){e.preventDefault();dz.classList.add('on')})});
['dragleave','drop'].forEach(function(n){dz.addEventListener(n,function(e){e.preventDefault();dz.classList.remove('on')})});
dz.addEventListener('drop',function(e){if(e.dataTransfer)add(e.dataTransfer.files)});
document.addEventListener('paste',function(e){if(e.clipboardData&&e.clipboardData.files&&e.clipboardData.files.length)add(e.clipboardData.files)});
KEYS.forEach(function(k){G('o-'+k).addEventListener('change',function(){if(items.length)refresh()})});
G('xr-all').addEventListener('click',function(){KEYS.forEach(function(k){G('o-'+k).checked=k!=='icc'});if(items.length)refresh()});
G('xr-gpsonly').addEventListener('click',function(){KEYS.forEach(function(k){G('o-'+k).checked=(k==='gps'||k==='ori')});if(items.length)refresh()});
G('xr-clr').addEventListener('click',function(){run++;items=[];render()});
G('xr-zip').addEventListener('click',async function(){
 var fs=[],seen={},i,r,nm,u;
 for(i=0;i<items.length;i++){
  r=items[i].r;if(!r)continue;
  nm=r.name;
  if(seen[nm]){seen[nm]++;nm=nm.replace(/(\.[^.]*)?$/,'-'+seen[nm]+'$1')}else seen[nm]=1;
  u=new Uint8Array(await r.blob.arrayBuffer());
  fs.push({name:nm,u:u});
 }
 if(fs.length)dl(zip(fs),'exif-removed.zip');
});
})();
</script>

## วิธีใช้งาน

1. **เพิ่มรูปภาพ** ลากไฟล์มาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ (เลือกได้หลายไฟล์) หรือคัดลอกรูปแล้วกด Ctrl+V
2. **เลือกข้อมูลที่ต้องการลบ** ค่าเริ่มต้นคือลบข้อมูลส่วนตัวทั้งหมดและคงโปรไฟล์สีไว้ หากต้องการลบเฉพาะตำแหน่ง ให้กดปุ่ม "เฉพาะ GPS" หรือติ๊กเลือกเองทีละรายการ
3. **ตรวจผลลัพธ์** แต่ละไฟล์จะแสดงข้อมูลที่พบเดิม สถานะ "ลบแล้ว" หรือ "คงไว้" และพิกัด GPS ต้นฉบับ (ถ้ามี) ขนาดไฟล์ก่อนและหลัง รวมถึงผลสแกนซ้ำหลังลบ
4. **ดาวน์โหลด** กดปุ่มดาวน์โหลดทีละรูป หรือ "ดาวน์โหลดทั้งหมด (ZIP)" ไฟล์ใหม่จะมีชื่อลงท้ายด้วย `-clean` และไฟล์ต้นฉบับไม่ถูกแก้ไข
5. **เปลี่ยนตัวเลือกได้ตลอดเวลา** เมื่อติ๊กหรือยกเลิกตัวเลือก รายการทั้งหมดจะถูกประมวลผลใหม่อัตโนมัติ

**หมายเหตุ**
- JPG ลบแบบ lossless ไม่บีบอัดภาพซ้ำ จึงไม่เสียคุณภาพ และเลือกลบเฉพาะบางหมวดได้
- PNG และ WebP: หากเลือกหมวดใดหมวดหนึ่งของ EXIF (GPS, วันเวลา, อุปกรณ์, ซอฟต์แวร์, Thumbnail) ข้อมูล EXIF ทั้งก้อนจะถูกลบ
- HEIC, GIF, BMP, AVIF จะถูกเข้ารหัสใหม่ผ่านเบราว์เซอร์ จึงลบ metadata ได้หมด แต่ภาพจะถูกแปลงเป็น JPG หรือ PNG (HEIC/AVIF ต้องให้เบราว์เซอร์รองรับการเปิดไฟล์ เช่น Safari)
- ข้อมูลที่ลบได้ไม่ครอบคลุมลายน้ำที่มองไม่เห็นหรือใบหน้า/ป้ายทะเบียนในภาพ หากต้องการความเป็นส่วนตัวสูงให้เบลอส่วนเหล่านั้นด้วย

## คำอธิบายศัพท์

- **Metadata** ข้อมูลที่ฝังอยู่ในไฟล์รูป นอกเหนือจากตัวภาพ เช่น ตำแหน่ง เวลา และรุ่นกล้อง
- **EXIF** มาตรฐานข้อมูลที่กล้องและมือถือบันทึกไว้ในรูป เช่น รุ่นกล้อง ค่ารูรับแสง ISO วันเวลาที่ถ่าย
- **GPS** พิกัดละติจูดและลองจิจูดของสถานที่ถ่าย ซึ่งอาจเผยบ้านหรือที่ทำงานของคุณ
- **วันเวลา** เวลาที่ถ่ายภาพ เวลาแก้ไข และเวลาที่สร้างไฟล์ดิจิทัล
- **กล้อง/อุปกรณ์/ผู้ถ่าย** ยี่ห้อ รุ่น หมายเลขเครื่อง เลนส์ ชื่อเจ้าของ และ MakerNote (ข้อมูลเฉพาะของผู้ผลิต)
- **ซอฟต์แวร์** โปรแกรมหรือระบบที่ใช้สร้างและแก้ไขภาพ
- **Thumbnail** ภาพย่อที่ฝังในไฟล์ บางครั้งยังเป็นภาพก่อนครอปจึงอาจเปิดเผยส่วนที่ตัดออกไปแล้ว
- **XMP** metadata แบบ XML ของ Adobe มักมีประวัติการแก้ไข คำอธิบาย และชื่อผู้สร้าง
- **IPTC** ข้อมูลสำหรับสื่อและงานข่าว เช่น ชื่อช่างภาพ ลิขสิทธิ์ คำบรรยาย และคีย์เวิร์ด
- **โปรไฟล์สี ICC** ข้อมูลที่ทำให้สีแสดงผลถูกต้องบนอุปกรณ์ต่างๆ ลบแล้วสีอาจเพี้ยนเล็กน้อย จึงคงไว้เป็นค่าเริ่มต้น
- **คอมเมนต์/ข้อมูลแฝง** ข้อความหมายเหตุในไฟล์และบล็อกข้อมูลเฉพาะของแต่ละโปรแกรมหรือกล้อง
- **ข้อมูลท้ายไฟล์ (Motion Photo)** ข้อมูลที่ต่อท้ายภาพ เช่น วิดีโอสั้นของภาพเคลื่อนไหวบน Android ซึ่งอาจมีข้อมูลส่วนตัวแม้ลบ EXIF แล้ว
- **Orientation (ทิศทางภาพ)** ค่าที่บอกว่าต้องหมุนภาพกี่องศา หากลบทิ้งภาพแนวตั้งอาจแสดงเป็นแนวนอน เครื่องมือนี้จึงเก็บค่านี้ไว้ให้
- **Lossless** การแก้ไขไฟล์โดยไม่บีบอัดภาพใหม่ ภาพจึงเหมือนต้นฉบับทุกพิกเซล
- **เข้ารหัสใหม่ (Re-encode)** การวาดภาพใหม่แล้วบันทึกเป็นไฟล์ใหม่ ลบ metadata ได้หมดแต่ภาพอาจเปลี่ยนเล็กน้อย
- **ZIP** ไฟล์รวมหลายรูปไว้ในไฟล์เดียวเพื่อดาวน์โหลดสะดวก