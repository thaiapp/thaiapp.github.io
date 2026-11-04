---
title: คำนวณแฮช SHA ไฟล์ออนไลน์ ฟรี
h1: คำนวณแฮช SHA ไฟล์ออนไลน์
description: คำนวณแฮช SHA-1, SHA-256, SHA-512 และ MD5 ของไฟล์ออนไลน์ ตรวจสอบความถูกต้องของไฟล์ได้ทันทีในเบราว์เซอร์ ไม่ต้องอัปโหลดไฟล์ ใช้งานฟรี ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-04T09:00:00+07:00'
weight: 67
tool: true
topic: pdf-file
appCategory: BusinessApplication
keywords:
- คำนวณแฮช SHA ไฟล์ออนไลน์
- PDF และไฟล์
---

สร้างค่าแฮช MD5, SHA-1, SHA-256 และ SHA-512 ของไฟล์โดยตรงในเบราว์เซอร์ **ไม่ต้องอัปโหลด** ไฟล์ของคุณไม่ถูกส่งไปที่ใด เหมาะสำหรับตรวจสอบว่าไฟล์ที่ดาวน์โหลดมาครบถ้วนและไม่ถูกแก้ไข

<style>
#shaTool{--ac:#2563eb;--ok:#16a34a;--bad:#dc2626;margin:1.25rem 0;line-height:1.5}
#shaTool *{box-sizing:border-box}
#shaTool [hidden]{display:none!important}
#shaTool .sha-tabs{display:flex;flex-wrap:wrap;gap:.5rem}
#shaTool .sha-tab{padding:.45rem 1.1rem;border:1px solid rgba(127,127,127,.45);border-radius:999px;background:transparent;color:inherit;cursor:pointer;font:inherit;font-size:.9rem}
#shaTool .sha-tab[aria-selected="true"]{background:var(--ac);border-color:var(--ac);color:#fff}
#shaTool .sha-info{margin:.5rem 0 1rem;font-size:.85rem;opacity:.75}
#shaTool .sha-bar{display:flex;flex-wrap:wrap;gap:.5rem;margin-bottom:.75rem}
#shaTool .sha-btn{padding:.5rem 1rem;border:1px solid var(--ac);border-radius:8px;background:var(--ac);color:#fff;cursor:pointer;font:inherit;font-size:.9rem}
#shaTool .sha-btn.sha-ghost{background:transparent;color:inherit;border-color:rgba(127,127,127,.45)}
#shaTool .sha-drop{padding:1.75rem 1rem;border:2px dashed rgba(127,127,127,.5);border-radius:12px;text-align:center;cursor:pointer;background:rgba(127,127,127,.06)}
#shaTool .sha-drop.on,#shaTool .sha-drop:focus-visible{border-color:var(--ac);background:rgba(37,99,235,.08);outline:none}
#shaTool .sha-drop p{margin:.4rem 0}
#shaTool .sha-drop small{opacity:.75}
#shaTool .sha-ic-big{font-size:2rem}
#shaTool kbd{padding:.05rem .4rem;border:1px solid rgba(127,127,127,.5);border-radius:4px;font-size:.85em}
#shaTool .sha-note{margin:.75rem 0 0;font-size:.85rem;opacity:.8}
#shaTool label.sha-lb{display:block;margin:1rem 0 .35rem;font-weight:600;font-size:.95rem}
#shaTool textarea{width:100%;padding:.6rem;border:1px solid rgba(127,127,127,.45);border-radius:8px;background:transparent;color:inherit;font:inherit;font-family:ui-monospace,Menlo,Consolas,monospace;font-size:.85rem;resize:vertical}
#shaTool .sha-head{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;gap:.5rem;margin:1rem 0 .5rem;font-size:.9rem}
#shaTool .sha-list{list-style:none;margin:0;padding:0}
#shaTool .sha-item{margin:0 0 .6rem;padding:.7rem .85rem;border:1px solid rgba(127,127,127,.35);border-radius:10px}
#shaTool .sha-item.ok{border-color:var(--ok);background:rgba(22,163,74,.08)}
#shaTool .sha-item.bad{border-color:var(--bad);background:rgba(220,38,38,.07)}
#shaTool .sha-top{display:flex;align-items:center;gap:.5rem}
#shaTool .sha-name{flex:1;min-width:0;font-weight:600;word-break:break-all}
#shaTool .sha-size{font-size:.8rem;opacity:.7;white-space:nowrap}
#shaTool .sha-x{border:0;background:transparent;color:inherit;font-size:1.3rem;line-height:1;cursor:pointer;opacity:.6}
#shaTool .sha-row{display:flex;flex-wrap:wrap;align-items:center;gap:.5rem;margin-top:.45rem}
#shaTool .sha-hash{flex:1 1 16rem;min-width:0;font-family:ui-monospace,Menlo,Consolas,monospace;font-size:.82rem;word-break:break-all}
#shaTool .sha-badge{font-size:.8rem;font-weight:600}
#shaTool .sha-badge.ok{color:var(--ok)}
#shaTool .sha-badge.bad{color:var(--bad)}
#shaTool .sha-copy{padding:.25rem .7rem;border:1px solid rgba(127,127,127,.45);border-radius:6px;background:transparent;color:inherit;cursor:pointer;font:inherit;font-size:.8rem}
#shaTool .sha-err{color:var(--bad);font-size:.85rem}
#shaTool .sha-wait{font-size:.85rem;opacity:.7}
</style>
<div id="shaTool">
<div class="sha-tabs" role="tablist" aria-label="เลือกอัลกอริทึม">
<button type="button" class="sha-tab" role="tab" data-a="MD5" aria-selected="false">MD5</button>
<button type="button" class="sha-tab" role="tab" data-a="SHA-1" aria-selected="false">SHA-1</button>
<button type="button" class="sha-tab" role="tab" data-a="SHA-256" aria-selected="true">SHA-256</button>
<button type="button" class="sha-tab" role="tab" data-a="SHA-512" aria-selected="false">SHA-512</button>
</div>
<div class="sha-info" id="shaInfo"></div>
<div class="sha-bar">
<button type="button" class="sha-btn" id="shaAdd">📁 เพิ่มไฟล์</button>
<button type="button" class="sha-btn sha-ghost" id="shaAddDir">🗂️ เลือกโฟลเดอร์</button>
<button type="button" class="sha-btn sha-ghost" id="shaClear">ล้าง</button>
</div>
<input type="file" id="shaFile" multiple hidden>
<input type="file" id="shaDir" webkitdirectory hidden>
<div class="sha-drop" id="shaDrop" tabindex="0" role="button" aria-label="วางหรือเลือกไฟล์">
<div class="sha-ic-big">📥</div>
<p>ลากไฟล์หรือโฟลเดอร์มาวางที่นี่ คลิกเพื่อเลือกไฟล์ หรือกด <kbd>Ctrl</kbd>+<kbd>V</kbd> เพื่อวาง</p>
<small>ประมวลผลในเครื่อง 100% — ไฟล์ไม่ออกจากเบราว์เซอร์ของคุณ</small>
</div>
<p class="sha-note" id="shaNote" hidden>เปิดแท็บนี้ไว้ขณะประมวลผล การสลับแอปหรือล็อกหน้าจออาจทำให้หยุดชั่วคราว</p>
<label class="sha-lb" for="shaVerify">ตรวจสอบแฮช (ไม่บังคับ)</label>
<textarea id="shaVerify" rows="2" placeholder="วางแฮชที่คาดหวังหนึ่งรายการขึ้นไป คั่นด้วยช่องว่างหรือขึ้นบรรทัดใหม่ ไฟล์ที่ตรงกันจะถูกไฮไลต์"></textarea>
<div id="shaResult" hidden>
<div class="sha-head"><span id="shaSummary"></span><button type="button" class="sha-copy" id="shaCopyAll">คัดลอกทั้งหมด</button></div>
<ul class="sha-list" id="shaList"></ul>
</div>
</div>
<script>
(function(){
'use strict';
var root=document.getElementById('shaTool');
if(!root){return;}
var ICONS={pdf:'📕',doc:'📘',docx:'📘',xls:'📗',xlsx:'📗',csv:'📗',ppt:'📙',pptx:'📙',zip:'🗜️',rar:'🗜️','7z':'🗜️',gz:'🗜️',iso:'💿',png:'🖼️',jpg:'🖼️',jpeg:'🖼️',gif:'🖼️',webp:'🖼️',svg:'🖼️',mp3:'🎵',wav:'🎵',mp4:'🎬',mov:'🎬',mkv:'🎬',txt:'📝',md:'📝',json:'🧾',exe:'⚙️',dmg:'⚙️',apk:'⚙️'};
var HEXLEN={32:'MD5',40:'SHA-1',64:'SHA-256',128:'SHA-512'};
var INFO={'MD5':'MD5: 128 บิต (32 ตัวอักษร) เหมาะตรวจไฟล์ทั่วไป ไม่ควรใช้ด้านความปลอดภัย','SHA-1':'SHA-1: 160 บิต (40 ตัวอักษร) ยังพบในระบบเก่า ไม่แนะนำด้านความปลอดภัย','SHA-256':'SHA-256: 256 บิต (64 ตัวอักษร) มาตรฐานที่นิยมที่สุดสำหรับตรวจสอบไฟล์','SHA-512':'SHA-512: 512 บิต (128 ตัวอักษร) ยาวและแข็งแกร่งที่สุดในชุดนี้'};
var algo='SHA-256',files=[],seq=0,running=false;
function $(id){return document.getElementById(id);}
function el(tag,cls,txt){var e=document.createElement(tag);if(cls){e.className=cls;}if(txt!==undefined){e.textContent=txt;}return e;}
function fmt(n){var u=['B','KB','MB','GB','TB'],i=0;while(n>=1024&&i!==4){n=n/1024;i++;}return (i===0?n:n.toFixed(2))+' '+u[i];}
function icon(name){var m=/\.([^.]+)$/.exec(name);return (m&&ICONS[m[1].toLowerCase()])||'📄';}
function tokens(){
return $('shaVerify').value.toLowerCase().split(/[\s,;]+/).filter(function(t){return /^[0-9a-f]+$/.test(t)&&HEXLEN[t.length];});
}
function hex(buf){
return Array.prototype.map.call(new Uint8Array(buf),function(b){return ('0'+b.toString(16)).slice(-2);}).join('');
}
function readBuf(f){
if(f.arrayBuffer){return f.arrayBuffer();}
return new Promise(function(ok,no){var r=new FileReader();r.onload=function(){ok(r.result);};r.onerror=function(){no(r.error);};r.readAsArrayBuffer(f);});
}
async function md5(buf){
var K=[],R=[7,12,17,22,5,9,14,20,4,11,16,23,6,10,15,21],i,o;
for(i=0;i!==64;i++){K[i]=Math.floor(Math.abs(Math.sin(i+1))*4294967296)|0;}
var s=[0x67452301,0xefcdab89|0,0x98badcfe|0,0x10325476];
function run(M){
var a=s[0],b=s[1],c=s[2],d=s[3],f,g,t,x,r,j;
for(j=0;j!==64;j++){
if(j>47){f=c^(b|~d);g=(7*j)%16;}
else if(j>31){f=b^c^d;g=(3*j+5)%16;}
else if(j>15){f=(d&b)|(~d&c);g=(5*j+1)%16;}
else{f=(b&c)|(~b&d);g=j;}
t=d;d=c;c=b;
x=(a+f+K[j]+M[g])|0;
r=R[(j>>4)*4+(j&3)];
b=(b+((x<<r)|(x>>>(32-r))))|0;
a=t;
}
s[0]=(s[0]+a)|0;s[1]=(s[1]+b)|0;s[2]=(s[2]+c)|0;s[3]=(s[3]+d)|0;
}
var n=buf.byteLength,dv=new DataView(buf),M=new Int32Array(16),full=n-(n%64);
for(o=0;o!==full;o+=64){
for(i=0;i!==16;i++){M[i]=dv.getInt32(o+i*4,true);}
run(M);
if(o!==0&&o%8388608===0){await new Promise(function(r){setTimeout(r,0);});}
}
var rem=n-full,tl=rem>55?128:64,tail=new Uint8Array(128);
tail.set(new Uint8Array(buf,full,rem));
tail[rem]=0x80;
var bits=n*8,tv=new DataView(tail.buffer);
tv.setUint32(tl-8,bits>>>0,true);
tv.setUint32(tl-4,Math.floor(bits/4294967296),true);
for(o=0;o!==tl;o+=64){
for(i=0;i!==16;i++){M[i]=tv.getInt32(o+i*4,true);}
run(M);
}
var out='',k,v;
for(i=0;i!==4;i++){v=s[i];for(k=0;k!==4;k++){out+=('0'+((v>>>(8*k))&255).toString(16)).slice(-2);}}
return out;
}
async function hashBuf(buf,a){
if(a==='MD5'){return md5(buf);}
if(!window.crypto||!window.crypto.subtle){throw new Error('NOSUBTLE');}
return hex(await window.crypto.subtle.digest(a,buf));
}
function copy(text,btn,label){
function done(){btn.textContent='คัดลอกแล้ว ✓';setTimeout(function(){btn.textContent=label;},1500);}
function fallback(){
var t=document.createElement('textarea');
t.value=text;t.style.position='fixed';t.style.opacity='0';
document.body.appendChild(t);t.select();
try{document.execCommand('copy');done();}catch(e){}
document.body.removeChild(t);
}
if(navigator.clipboard&&navigator.clipboard.writeText){navigator.clipboard.writeText(text).then(done,fallback);}else{fallback();}
}
function render(){
var list=$('shaList'),toks=tokens(),ready=0,ok=0,total=0;
list.textContent='';
files.forEach(function(it){
total+=it.file.size;
var h=it.hashes[algo],err=it.errs[algo],st='',li=el('li','sha-item');
if(h){ready++;if(toks.length){if(toks.indexOf(h)!==-1){st='ok';ok++;}else{st='bad';}}}
if(st){li.className+=' '+st;}
var top=el('div','sha-top');
top.appendChild(el('span','',icon(it.name)));
top.appendChild(el('span','sha-name',it.name));
top.appendChild(el('span','sha-size',fmt(it.file.size)));
var rm=el('button','sha-x','×');
rm.type='button';
rm.setAttribute('aria-label','ลบ '+it.name);
rm.onclick=function(){files=files.filter(function(x){return x.id!==it.id;});render();};
top.appendChild(rm);
li.appendChild(top);
var row=el('div','sha-row');
if(h){
row.appendChild(el('code','sha-hash',h));
if(st==='ok'){row.appendChild(el('span','sha-badge ok','✓ ตรงกัน'));}
if(st==='bad'){row.appendChild(el('span','sha-badge bad','✗ ไม่ตรง'));}
var cp=el('button','sha-copy','คัดลอก');
cp.type='button';
cp.onclick=function(){copy(h,cp,'คัดลอก');};
row.appendChild(cp);
}else if(err){
row.appendChild(el('span','sha-err',err));
}else{
row.appendChild(el('span','sha-wait',it.busy?'กำลังคำนวณ…':'รอคิว…'));
}
li.appendChild(row);
list.appendChild(li);
});
$('shaSummary').textContent=files.length?(files.length+' ไฟล์ · '+fmt(total)+(toks.length?(' · ตรงกัน '+ok+'/'+ready):'')):'';
$('shaResult').hidden=!files.length;
$('shaNote').hidden=!running;
}
async function run(){
if(running){return;}
running=true;
try{
var again=true,i,it,a,buf;
while(again){
again=false;
for(i=0;i!==files.length;i++){
it=files[i];
if(it.hashes[algo]||it.errs[algo]){continue;}
a=algo;
it.busy=true;
render();
try{
buf=await readBuf(it.file);
it.hashes[a]=await hashBuf(buf,a);
}catch(e){
it.errs[a]=(e&&e.message==='NOSUBTLE')?'เบราว์เซอร์นี้ไม่รองรับ SHA ในหน้านี้ (ต้องเปิดผ่าน HTTPS)':'อ่านไฟล์ไม่สำเร็จ ไฟล์อาจใหญ่เกินหน่วยความจำของอุปกรณ์';
}
buf=null;
it.busy=false;
again=true;
break;
}
}
}finally{
running=false;
render();
}
}
function setAlgo(a){
algo=a;
Array.prototype.forEach.call(root.querySelectorAll('.sha-tab'),function(b){b.setAttribute('aria-selected',b.getAttribute('data-a')===a?'true':'false');});
$('shaInfo').textContent=INFO[a];
render();
run();
}
function addFiles(list){
Array.prototype.forEach.call(list,function(f){files.push({id:++seq,name:f._p||f.webkitRelativePath||f.name,file:f,hashes:{},errs:{},busy:false});});
render();
run();
}
function readEntry(entry,out){
return new Promise(function(res){
if(entry.isFile){
entry.file(function(f){f._p=entry.fullPath.replace(/^\//,'');out.push(f);res();},function(){res();});
}else if(entry.isDirectory){
var rd=entry.createReader(),all=[];
(function next(){
rd.readEntries(function(es){
if(!es.length){Promise.all(all.map(function(e){return readEntry(e,out);})).then(function(){res();});return;}
all=all.concat(Array.prototype.slice.call(es));
next();
},function(){res();});
})();
}else{res();}
});
}
var drop=$('shaDrop');
drop.addEventListener('click',function(){$('shaFile').click();});
drop.addEventListener('keydown',function(e){if(e.key==='Enter'||e.key===' '){e.preventDefault();$('shaFile').click();}});
drop.addEventListener('dragover',function(e){e.preventDefault();drop.classList.add('on');});
drop.addEventListener('dragleave',function(){drop.classList.remove('on');});
drop.addEventListener('drop',function(e){
e.preventDefault();
drop.classList.remove('on');
var dt=e.dataTransfer,out=[],ents=[],i,en;
if(dt.items&&dt.items.length&&dt.items[0].webkitGetAsEntry){
for(i=0;i!==dt.items.length;i++){en=dt.items[i].webkitGetAsEntry();if(en){ents.push(en);}}
Promise.all(ents.map(function(x){return readEntry(x,out);})).then(function(){addFiles(out);});
}else{
addFiles(dt.files);
}
});
$('shaAdd').addEventListener('click',function(){$('shaFile').click();});
$('shaAddDir').addEventListener('click',function(){$('shaDir').click();});
$('shaClear').addEventListener('click',function(){files=[];render();});
$('shaFile').addEventListener('change',function(){addFiles(this.files);this.value='';});
$('shaDir').addEventListener('change',function(){addFiles(this.files);this.value='';});
$('shaCopyAll').addEventListener('click',function(){
var t=files.filter(function(x){return x.hashes[algo];}).map(function(x){return x.hashes[algo]+'  '+x.name;}).join('\n');
if(t){copy(t,this,'คัดลอกทั้งหมด');}
});
$('shaVerify').addEventListener('input',function(){
var t=tokens();
if(t.length&&!t.some(function(x){return HEXLEN[x.length]===algo;})){setAlgo(HEXLEN[t[0].length]);return;}
render();
});
Array.prototype.forEach.call(root.querySelectorAll('.sha-tab'),function(b){b.addEventListener('click',function(){setAlgo(b.getAttribute('data-a'));});});
document.addEventListener('paste',function(e){
var tg=e.target&&e.target.tagName;
if(tg==='TEXTAREA'||tg==='INPUT'){return;}
var fl=e.clipboardData&&e.clipboardData.files;
if(fl&&fl.length){addFiles(fl);}
});
setAlgo('SHA-256');
})();
</script>

## วิธีใช้งานเครื่องมือคำนวณแฮช SHA

1. **เลือกอัลกอริทึม** กดแท็บ MD5, SHA-1, SHA-256 หรือ SHA-512 ค่าเริ่มต้นคือ SHA-256 ซึ่งเป็นมาตรฐานที่ใช้กันแพร่หลายที่สุด หากเว็บที่ให้ดาวน์โหลดระบุแฮชชนิดอื่น ให้เลือกชนิดเดียวกัน
2. **เพิ่มไฟล์** ลากไฟล์หรือโฟลเดอร์มาวางในกรอบด้านบน คลิกปุ่ม "เพิ่มไฟล์" หรือ "เลือกโฟลเดอร์" หรือกด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้ เพิ่มได้หลายไฟล์พร้อมกัน
3. **รอผลลัพธ์** ค่าแฮชจะแสดงใต้ชื่อไฟล์แต่ละไฟล์ ไฟล์ขนาดใหญ่ใช้เวลานานกว่า ควรเปิดแท็บนี้ค้างไว้จนเสร็จ
4. **คัดลอกค่าแฮช** กด "คัดลอก" ข้างแฮชของไฟล์ที่ต้องการ หรือ "คัดลอกทั้งหมด" เพื่อได้รายการในรูปแบบ `แฮช  ชื่อไฟล์` เหมือนผลลัพธ์ของคำสั่ง sha256sum
5. **ตรวจสอบไฟล์ (ไม่บังคับ)** วางแฮชต้นฉบับจากผู้พัฒนาหรือเว็บไซต์ต้นทางในช่อง "ตรวจสอบแฮช" ไฟล์ที่ตรงกันจะขึ้น "✓ ตรงกัน" สีเขียว ส่วนไฟล์ที่ไม่ตรงจะขึ้น "✗ ไม่ตรง" สีแดง เครื่องมือจะสลับไปใช้อัลกอริทึมที่ตรงกับความยาวของแฮชให้อัตโนมัติ
6. **ล้างรายการ** กด × เพื่อลบทีละไฟล์ หรือกด "ล้าง" เพื่อลบทั้งหมด

หากไฟล์ไม่ตรงกับแฮชต้นฉบับ แปลว่าไฟล์อาจดาวน์โหลดไม่สมบูรณ์ ถูกแก้ไข หรือเป็นคนละเวอร์ชัน ควรดาวน์โหลดใหม่จากแหล่งที่เชื่อถือได้

## ความหมายของแต่ละคำศัพท์

- **แฮช (Hash)** กระบวนการแปลงข้อมูลหรือไฟล์ทุกขนาดให้เป็นข้อความสั้นที่ความยาวคงที่ ไฟล์เดิมให้ผลเดิมเสมอ แต่เปลี่ยนเพียงหนึ่งบิตผลลัพธ์จะต่างไปทั้งหมด
- **ค่าแฮช / เช็กซัม (Digest / Checksum)** ข้อความผลลัพธ์ที่ได้จากการแฮช ใช้เป็น "ลายนิ้วมือ" ของไฟล์เพื่อเทียบว่าไฟล์เหมือนต้นฉบับหรือไม่
- **SHA (Secure Hash Algorithm)** ตระกูลอัลกอริทึมแฮชที่ออกแบบโดยหน่วยงาน NSA ของสหรัฐฯ และเผยแพร่โดย NIST มีหลายรุ่น เช่น SHA-1, SHA-2 (รวม SHA-256 และ SHA-512)
- **SHA-1** ให้ค่าแฮชยาว 160 บิต (40 ตัวอักษร) พบว่าถูกโจมตีแบบชนกันได้ จึงไม่แนะนำสำหรับงานด้านความปลอดภัย แต่ยังใช้ตรวจสอบไฟล์ในระบบเก่า
- **SHA-256** ให้ค่าแฮชยาว 256 บิต (64 ตัวอักษร) เป็นตัวเลือกที่สมดุลระหว่างความปลอดภัยและความเร็ว นิยมใช้ตรวจสอบไฟล์ดาวน์โหลดทั่วไป
- **SHA-512** ให้ค่าแฮชยาว 512 บิต (128 ตัวอักษร) ผลลัพธ์ยาวกว่า เหมาะกับงานที่ต้องการความมั่นใจสูง
- **MD5** ให้ค่าแฮชยาว 128 บิต (32 ตัวอักษร) คำนวณเร็วและยังใช้ตรวจว่าไฟล์เสียหายหรือไม่ แต่ไม่ปลอดภัยพอสำหรับป้องกันการปลอมแปลง
- **การชนกันของแฮช (Collision)** กรณีที่ไฟล์สองไฟล์ต่างกันแต่ได้ค่าแฮชเหมือนกัน เป็นสาเหตุที่ MD5 และ SHA-1 ไม่แนะนำให้ใช้ด้านความปลอดภัย
- **ตัวเลขฐานสิบหก (Hexadecimal)** รูปแบบที่ใช้แสดงค่าแฮช ประกอบด้วยตัวเลข 0-9 และตัวอักษร a-f ตัวพิมพ์เล็กหรือใหญ่ถือว่าเท่ากัน
- **การตรวจสอบความสมบูรณ์ของไฟล์ (File Integrity)** การเทียบค่าแฮชของไฟล์ที่ได้รับกับค่าแฮชต้นฉบับ เพื่อยืนยันว่าไฟล์ไม่เสียหายและไม่ถูกดัดแปลง
- **ประมวลผลในเครื่อง (Client-side)** การคำนวณเกิดขึ้นในเบราว์เซอร์ของคุณเอง ไฟล์จึงไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์ใด