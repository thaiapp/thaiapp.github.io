---
title: สร้างไฟล์ ZIP ออนไลน์ ฟรี
h1: สร้างไฟล์ ZIP ออนไลน์
description: สร้างไฟล์ ZIP ออนไลน์ฟรี บีบอัดไฟล์และโฟลเดอร์ในเบราว์เซอร์ ตั้งรหัสผ่าน AES-256 แบ่งไฟล์เป็นส่วน ไฟล์ไม่ถูกอัปโหลด ไม่ต้องติดตั้งโปรแกรม ใช้ทุกอุปกรณ์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-03T09:00:00+07:00'
weight: 62
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- สร้างไฟล์ ZIP ออนไลน์
- PDF และไฟล์
---
<style>
#zt{max-width:760px;margin:0 auto;font-size:15px;line-height:1.5}
#zt *{box-sizing:border-box}
#zt .bar{display:flex;flex-wrap:wrap;gap:10px 16px;align-items:center;margin:12px 0}
#zt label{display:inline-flex;gap:6px;align-items:center;cursor:pointer}
#zt select,#zt input[type=text],#zt input[type=password],#zt input[type=number]{padding:6px 8px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font:inherit}
#zt input[type=number]{width:80px}
#zt button{padding:8px 16px;border:1px solid rgba(128,128,128,.5);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer}
#zt button.pri{background:#2563eb;border-color:#2563eb;color:#fff}
#zt button:disabled{opacity:.5;cursor:not-allowed}
#zt .drop{border:2px dashed rgba(128,128,128,.6);border-radius:12px;padding:28px 12px;text-align:center;cursor:pointer}
#zt .drop.over{border-color:#2563eb;background:rgba(37,99,235,.1)}
#zt .drop .ic{font-size:36px}
#zt .note{font-size:13px;opacity:.75;margin:6px 0}
#zt .warn{padding:8px 12px;border-radius:8px;background:rgba(245,158,11,.18);margin:10px 0}
#zt .res{padding:12px;border-radius:10px;background:rgba(34,197,94,.15);margin:12px 0}
#zt .res a{display:inline-block;margin:6px 8px 0 0;padding:6px 14px;border-radius:8px;background:#16a34a;color:#fff;text-decoration:none}
#zt ul.fl{list-style:none;margin:8px 0;padding:0;max-height:320px;overflow:auto}
#zt ul.fl li{display:flex;gap:8px;align-items:center;padding:6px 4px;border-bottom:1px solid rgba(128,128,128,.25)}
#zt ul.fl .n{flex:1;min-width:0;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
#zt ul.fl .d{opacity:.6;font-size:12px}
#zt ul.fl .x{padding:0 8px;border:0;font-size:18px}
#zt[hidden],#zt [hidden]{display:none!important}
</style>
<div id="zt">
<div class="bar">
<label>การบีบอัด:
<select id="zt-lv"><option value="deflate">บีบอัด (Deflate)</option><option value="store">ไม่มี (เก็บอย่างเดียว)</option></select></label>
<label><input type="checkbox" id="zt-pw-on"> รหัสผ่าน</label>
<span id="zt-pw-box" hidden><input type="password" id="zt-pw" placeholder="รหัสผ่าน" autocomplete="new-password"> <label><input type="checkbox" id="zt-pw-show"> แสดง</label></span>
<label>แยก:
<select id="zt-sp"><option value="0">ปิด</option><option value="10">10 MB</option><option value="25">25 MB</option><option value="100">100 MB</option><option value="700">700 MB</option><option value="c">กำหนดเอง</option></select></label>
<span id="zt-sp-box" hidden><input type="number" id="zt-sp-c" min="1" value="50"> MB</span>
</div>
<div class="bar">
<button type="button" id="zt-addf">เพิ่มไฟล์</button>
<button type="button" id="zt-addd">เพิ่มโฟลเดอร์</button>
<button type="button" class="pri" id="zt-go" disabled>สร้าง ZIP</button>
<button type="button" id="zt-clr" disabled>ล้าง</button>
</div>
<input type="file" id="zt-fi" multiple hidden>
<input type="file" id="zt-di" webkitdirectory hidden>
<div class="note">เปิดแท็บนี้ไว้ขณะประมวลผล — การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</div>
<div class="drop" id="zt-drop"><div class="ic">📁</div><div>ลากไฟล์หรือโฟลเดอร์มาที่นี่ หรือ <b>Ctrl</b>+V เพื่อวาง</div><div class="note">ประมวลผลในเครื่อง 100% — ไฟล์ไม่ออกจากเบราว์เซอร์ของคุณ</div></div>
<div class="warn" id="zt-zw" hidden>⚠️ บางไฟล์เป็นไฟล์ .zip อยู่แล้ว หากต้องการเปิดดูข้างใน ให้ใช้เครื่องมือแตกไฟล์แทน</div>
<div class="bar" id="zt-sum" hidden><span id="zt-cnt"></span><label id="zt-jl" hidden><input type="checkbox" id="zt-jk" checked> ข้ามไฟล์ขยะ (<span id="zt-jc">0</span>)</label></div>
<ul class="fl" id="zt-list"></ul>
<div class="note" id="zt-st"></div>
<div class="res" id="zt-res" hidden><div id="zt-rs"></div><div id="zt-dl"></div></div>
</div>
<script>
(function(){
"use strict";
var $=function(s){return document.getElementById("zt-"+s);};
var items=[];
var JUNK=/(^|\/)(\.DS_Store|Thumbs\.db|desktop\.ini|__MACOSX|\._[^\/]*)(\/|$)/i;
var urls=[];
function fmt(n){if(n<1024)return n+" B";if(n<1048576)return (n/1024).toFixed(1)+" KB";if(n<1073741824)return (n/1048576).toFixed(1)+" MB";return (n/1073741824).toFixed(2)+" GB";}
function tick(){return new Promise(function(r){setTimeout(r,0);});}
/* ---------- CRC32 ---------- */
var CT=new Uint32Array(256);
for(var i=0;i<256;i++){var c=i;for(var k=0;k<8;k++)c=(c&1)?(0xEDB88320^(c>>>1)):(c>>>1);CT[i]=c>>>0;}
function crc32(u){var c=0xFFFFFFFF;for(var i=0;i<u.length;i++)c=CT[(c^u[i])&255]^(c>>>8);return (c^0xFFFFFFFF)>>>0;}
/* ---------- AES-256 (encrypt only) ---------- */
var SB=new Uint8Array(256);
(function(){var p=1,q=1,x;
function rl(v,s){return ((v<<s)|(v>>(8-s)))&255;}
do{p=(p^(p<<1)^((p&128)?0x11B:0))&255;
q^=q<<1;q^=q<<2;q^=q<<4;q&=255;if(q&128)q^=9;
x=q^rl(q,1)^rl(q,2)^rl(q,3)^rl(q,4);
SB[p]=(x^0x63)&255;}while(p!==1);
SB[0]=0x63;})();
function xt(a){return ((a<<1)^((a&128)?27:0))&255;}
function aesKey(k){var w=new Uint8Array(240),rc=1,i,j,t;w.set(k);
for(i=8;i<60;i++){t=[w[i*4-4],w[i*4-3],w[i*4-2],w[i*4-1]];
if(i%8===0){t=[SB[t[1]]^rc,SB[t[2]],SB[t[3]],SB[t[0]]];rc=xt(rc);}
else if(i%8===4){t=[SB[t[0]],SB[t[1]],SB[t[2]],SB[t[3]]];}
for(j=0;j<4;j++)w[i*4+j]=w[(i-8)*4+j]^t[j];}
return w;}
var ST=new Uint8Array(16),TM=new Uint8Array(16);
function aesBlock(w,b){var r,i,c,a0,a1,a2,a3;
for(i=0;i<16;i++)ST[i]=b[i]^w[i];
for(r=1;r<=14;r++){
for(i=0;i<16;i++)TM[i]=SB[ST[(i+4*(i&3))&15]];
if(r<14){for(c=0;c<16;c+=4){a0=TM[c];a1=TM[c+1];a2=TM[c+2];a3=TM[c+3];
ST[c]=xt(a0)^xt(a1)^a1^a2^a3;
ST[c+1]=a0^xt(a1)^xt(a2)^a2^a3;
ST[c+2]=a0^a1^xt(a2)^xt(a3)^a3;
ST[c+3]=xt(a0)^a0^a1^a2^xt(a3);}}
else{for(i=0;i<16;i++)ST[i]=TM[i];}
for(i=0;i<16;i++)ST[i]^=w[r*16+i];}
return ST;}
async function aesZip(data,pw){
var salt=crypto.getRandomValues(new Uint8Array(16));
var km=await crypto.subtle.importKey("raw",new TextEncoder().encode(pw),"PBKDF2",false,["deriveBits"]);
var bits=new Uint8Array(await crypto.subtle.deriveBits({name:"PBKDF2",salt:salt,iterations:1000,hash:"SHA-1"},km,528));
var w=aesKey(bits.slice(0,32)),out=new Uint8Array(data.length),ctr=new Uint8Array(16),n=0,i,j,m,ks;
for(i=0;i<data.length;i+=16){
for(j=0;j<16;j++){ctr[j]=(ctr[j]+1)&255;if(ctr[j])break;}
ks=aesBlock(w,ctr);m=Math.min(16,data.length-i);
for(j=0;j<m;j++)out[i+j]=data[i+j]^ks[j];
if((++n&0x3FFF)===0)await tick();}
var hk=await crypto.subtle.importKey("raw",bits.slice(32,64),{name:"HMAC",hash:"SHA-1"},false,["sign"]);
var mac=new Uint8Array(await crypto.subtle.sign("HMAC",hk,out)).slice(0,10);
var res=new Uint8Array(16+2+out.length+10);
res.set(salt,0);res.set(bits.slice(64,66),16);res.set(out,18);res.set(mac,18+out.length);
return res;}
async function deflate(u){
var cs=new CompressionStream("deflate-raw"),wr=cs.writable.getWriter();
wr.write(u);wr.close();
return new Uint8Array(await new Response(cs.readable).arrayBuffer());}
function dos(ms){var d=new Date(ms||Date.now()),y=d.getFullYear();if(y<1980)y=1980;
return {t:(d.getHours()<<11)|(d.getMinutes()<<5)|(d.getSeconds()>>1),d:((y-1980)<<9)|((d.getMonth()+1)<<5)|d.getDate()};}
/* ---------- UI ---------- */
function render(){
var ul=$("list"),junk=0,zips=false;ul.textContent="";
items.forEach(function(it,idx){
var isJ=JUNK.test(it.path);if(isJ)junk++;
if(/\.zip$/i.test(it.path))zips=true;
var li=document.createElement("li");
var ic=document.createElement("span");ic.textContent="📄";
var nm=document.createElement("span");nm.className="n";
var slash=it.path.lastIndexOf("/");
nm.textContent=it.path.slice(slash+1);
nm.title=it.path;
var dr=document.createElement("span");dr.className="d";dr.textContent=slash>=0?it.path.slice(0,slash+1):"";
var sz=document.createElement("span");sz.className="d";sz.textContent=fmt(it.file.size);
var x=document.createElement("button");x.className="x";x.type="button";x.textContent="×";x.setAttribute("aria-label","ลบ");
x.onclick=function(){items.splice(idx,1);render();};
li.appendChild(ic);li.appendChild(nm);li.appendChild(dr);li.appendChild(sz);li.appendChild(x);ul.appendChild(li);});
$("sum").hidden=!items.length;
$("cnt").textContent=items.length+" ไฟล์";
$("jl").hidden=!junk;$("jc").textContent=junk;
$("zw").hidden=!zips;
$("go").disabled=!items.length;$("clr").disabled=!items.length;}
function addFiles(list){
for(var i=0;i<list.length;i++){var f=list[i];items.push({file:f.file||f,path:(f.path||f.webkitRelativePath||f.name).replace(/^\/+/,"")});}
$("res").hidden=true;render();}
function walk(entry,out){return new Promise(function(res){
if(entry.isFile){entry.file(function(f){out.push({file:f,path:entry.fullPath});res();},function(){res();});}
else if(entry.isDirectory){var rd=entry.createReader(),all=[];
(function more(){rd.readEntries(function(es){
if(!es.length){Promise.all(all.map(function(e){return walk(e,out);})).then(res);}
else{for(var i=0;i<es.length;i++)all.push(es[i]);more();}},function(){res();});})();}
else res();});}
var drop=$("drop");
drop.onclick=function(){$("fi").click();};
$("addf").onclick=function(){$("fi").click();};
$("addd").onclick=function(){$("di").click();};
$("fi").onchange=function(){addFiles(this.files);this.value="";};
$("di").onchange=function(){addFiles(this.files);this.value="";};
["dragenter","dragover"].forEach(function(ev){drop.addEventListener(ev,function(e){e.preventDefault();drop.classList.add("over");});});
["dragleave","drop"].forEach(function(ev){drop.addEventListener(ev,function(e){e.preventDefault();drop.classList.remove("over");});});
drop.addEventListener("drop",async function(e){
var dt=e.dataTransfer,ents=[],i;
if(dt.items){for(i=0;i<dt.items.length;i++){var en=dt.items[i].webkitGetAsEntry&&dt.items[i].webkitGetAsEntry();if(en)ents.push(en);}}
if(ents.length){var out=[];await Promise.all(ents.map(function(en){return walk(en,out);}));addFiles(out);}
else if(dt.files&&dt.files.length)addFiles(dt.files);});
document.addEventListener("paste",function(e){var fs=e.clipboardData&&e.clipboardData.files;if(fs&&fs.length){addFiles(fs);}});
$("pw-on").onchange=function(){$("pw-box").hidden=!this.checked;};
$("pw-show").onchange=function(){$("pw").type=this.checked?"text":"password";};
$("sp").onchange=function(){$("sp-box").hidden=this.value!=="c";};
$("clr").onclick=function(){items=[];$("res").hidden=true;$("st").textContent="";render();};
$("jk").onchange=function(){};
/* ---------- build ---------- */
$("go").onclick=async function(){
var btn=this,st=$("st");
var list=items.filter(function(it){return !($("jk").checked&&JUNK.test(it.path));});
if(!list.length){st.textContent="ไม่มีไฟล์ให้บีบอัด";return;}
var pw=$("pw-on").checked?$("pw").value:"";
if($("pw-on").checked&&!pw){st.textContent="กรุณาใส่รหัสผ่าน";return;}
if(pw&&!(window.crypto&&crypto.subtle)){st.textContent="การเข้ารหัสต้องเปิดผ่าน HTTPS";return;}
var spv=$("sp").value,S=0;
if(spv==="c")S=Math.floor((parseFloat($("sp-c").value)||0)*1048576);else S=(+spv)*1048576;
if(S&&S<65536){st.textContent="ขนาดส่วนแยกต้องไม่น้อยกว่า 64 KB";return;}
btn.disabled=true;$("res").hidden=true;
urls.forEach(function(u){URL.revokeObjectURL(u);});urls=[];
try{
var enc=new TextEncoder(),chunks=[],ents=[],pos=0,orig=0,k;
if(S){chunks.push(new Uint8Array([0x50,0x4b,7,8]));pos=4;}
var canDef=$("lv").value==="deflate"&&typeof CompressionStream!=="undefined";
for(k=0;k<list.length;k++){
var it=list[k];st.textContent="กำลังประมวลผล "+(k+1)+"/"+list.length+": "+it.path;
await tick();
var data=new Uint8Array(await it.file.arrayBuffer());
orig+=data.length;
var crc=crc32(data),usize=data.length,method=0,body=data;
if(canDef&&usize>0){try{var d=await deflate(data);if(d.length<usize){body=d;method=8;}}catch(e){}}
var flags=0x800,extra=new Uint8Array(0),ver=20;
if(pw){body=await aesZip(body,pw);flags|=1;ver=51;
extra=new Uint8Array([1,0x99,7,0,1,0,0x41,0x45,3,method&255,method>>8]);method=99;}
if(body.length>0xFFFFFFFF||usize>0xFFFFFFFF)throw new Error("ไฟล์ใหญ่เกิน 4 GB ไม่รองรับ");
var nm=enc.encode(it.path),dt=dos(it.file.lastModified);
var lh=new DataView(new ArrayBuffer(30));
lh.setUint32(0,0x04034b50,true);lh.setUint16(4,ver,true);lh.setUint16(6,flags,true);lh.setUint16(8,method,true);
lh.setUint16(10,dt.t,true);lh.setUint16(12,dt.d,true);lh.setUint32(14,crc,true);
lh.setUint32(18,body.length,true);lh.setUint32(22,usize,true);lh.setUint16(26,nm.length,true);lh.setUint16(28,extra.length,true);
chunks.push(new Uint8Array(lh.buffer),nm,extra,body);
ents.push({nm:nm,ext:extra,ver:ver,flags:flags,method:method,t:dt.t,d:dt.d,crc:crc,cs:body.length,us:usize,off:pos});
pos+=30+nm.length+extra.length+body.length;}
if(ents.length>65535)throw new Error("จำนวนไฟล์มากเกินไป (สูงสุด 65,535)");
var cdStart=pos,cdSize=0;
ents.forEach(function(e){
var cd=new DataView(new ArrayBuffer(46));
cd.setUint32(0,0x02014b50,true);cd.setUint16(4,e.ver,true);cd.setUint16(6,e.ver,true);cd.setUint16(8,e.flags,true);cd.setUint16(10,e.method,true);
cd.setUint16(12,e.t,true);cd.setUint16(14,e.d,true);cd.setUint32(16,e.crc,true);cd.setUint32(20,e.cs,true);cd.setUint32(24,e.us,true);
cd.setUint16(28,e.nm.length,true);cd.setUint16(30,e.ext.length,true);
cd.setUint16(34,S?Math.floor(e.off/S):0,true);
cd.setUint32(42,S?e.off%S:e.off,true);
chunks.push(new Uint8Array(cd.buffer),e.nm,e.ext);
cdSize+=46+e.nm.length+e.ext.length;});
var total=cdStart+cdSize+22,last=S?Math.floor((total-1)/S):0,cdDisk=S?Math.floor(cdStart/S):0;
if(total>0xFFFFFFFF)throw new Error("ไฟล์ ZIP ใหญ่เกิน 4 GB ไม่รองรับ");
var eo=new DataView(new ArrayBuffer(22));
eo.setUint32(0,0x06054b50,true);eo.setUint16(4,last,true);eo.setUint16(6,cdDisk,true);
eo.setUint16(8,ents.length,true);eo.setUint16(10,ents.length,true);eo.setUint32(12,cdSize,true);
eo.setUint32(16,S?cdStart%S:cdStart,true);
chunks.push(new Uint8Array(eo.buffer));
var blob=new Blob(chunks,{type:"application/zip"}),box=$("dl");
box.textContent="";
function link(b,name){var u=URL.createObjectURL(b);urls.push(u);
var a=document.createElement("a");a.href=u;a.download=name;a.textContent="ดาวน์โหลด "+name+" ("+fmt(b.size)+")";box.appendChild(a);}
if(!S){link(blob,"files.zip");}
else{var parts=last+1;
for(var p=0;p<parts;p++){var nmp=p===last?"files.zip":"files.z"+String(p+1).padStart(2,"0");
link(blob.slice(p*S,Math.min((p+1)*S,total)),nmp);}}
$("rs").textContent="สำเร็จ: "+list.length+" ไฟล์ · "+fmt(orig)+" → "+fmt(total)+(S?" · แยก "+(last+1)+" ส่วน":"");
$("res").hidden=false;st.textContent="";
}catch(err){st.textContent="เกิดข้อผิดพลาด: "+(err&&err.message?err.message:err);}
btn.disabled=!items.length;};
render();
})();
</script>

## วิธีใช้งานเครื่องมือสร้างไฟล์ ZIP

1. **เพิ่มไฟล์** — ลากไฟล์หรือโฟลเดอร์มาวางในกรอบประมาณ หรือกดปุ่ม "เพิ่มไฟล์" / "เพิ่มโฟลเดอร์" หรือกด `Ctrl`+V เพื่อวางไฟล์ที่คัดลอกไว้
2. **ตรวจรายการ** — ดูรายชื่อและขนาดไฟล์ หากมีไฟล์ที่ไม่ต้องการ กด × ท้ายแถวเพื่อลบออก
3. **ตั้งค่า** — เลือกการบีบอัด ใส่รหัสผ่านถ้าต้องการป้องกันไฟล์ และเลือกแยกไฟล์เป็นส่วนหากไฟล์ใหญ่
4. **สร้าง ZIP** — กดปุ่ม "สร้าง ZIP" แล้วรอจนเสร็จ โดยเปิดแท็บนี้ค้างไว้
5. **ดาวน์โหลด** — กดลิงก์ดาวน์โหลดที่ปรากฏ หากแยกส่วน ให้ดาวน์โหลดทุกส่วนไว้ในโฟลเดอร์เดียวกัน

## ความหมายของคำศัพท์

- **ZIP** — รูปแบบไฟล์รวมหลายไฟล์และโฟลเดอร์ไว้ในไฟล์เดียว ช่วยให้ส่งง่ายและมักมีขนาดเล็กลง
- **การบีบอัด** — การลดขนาดข้อมูลของไฟล์ ช่วยประหยัดพื้นที่และเวลาส่งไฟล์
- **ไม่มี (เก็บอย่างเดียว)** — รวมไฟล์เข้าด้วยกันโดยไม่ลดขนาด เร็วที่สุด เหมาะกับไฟล์ที่ถูกบีบอัดมาแล้ว เช่น JPG, MP4
- **Deflate** — วิธีบีบอัดมาตรฐานของ ZIP ที่เปิดได้ในทุกระบบปฏิบัติการ
- **รหัสผ่าน** — ล็อกไฟล์ ZIP ให้ต้องกรอกรหัสก่อนเปิด
- **AES-256** — มาตรฐานการเข้ารหัสระดับสูงที่ใช้ป้องกันเนื้อหาในไฟล์ ใช้เปิดด้วย 7-Zip หรือ Keka ได้ แต่ Finder ของ macOS เปิดไฟล์ที่เข้ารหัสแบบนี้ไม่ได้
- **แยก (Split)** — แบ่งไฟล์ ZIP ใหญ่เป็นหลายส่วน (.z01, .z02, … และ .zip) เพื่อส่งหรืออัปโหลดตามข้อจำกัดขนาด ต้องใช้ 7-Zip หรือ Keka ในการเปิด
- **กำหนดเอง** — ระบุขนาดของแต่ละส่วนเองเป็น MB
- **ข้ามไฟล์ขยะ** — ตัดไฟล์ระบบที่ไม่จำเป็นออก เช่น `.DS_Store`, `Thumbs.db`, `desktop.ini` และโฟลเดอร์ `__MACOSX`
- **โครงสร้างโฟลเดอร์** — ชื่อโฟลเดอร์ย่อยจะถูกเก็บไว้เหมือนต้นฉบับ เมื่อแตกไฟล์จะได้โครงสร้างเดิม
- **ประมวลผลในเครื่อง 100%** — การบีบอัดทำในเบราว์เซอร์ของคุณทั้งหมด ไฟล์ไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์