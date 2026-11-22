---
title: แยกไฟล์เสียงออนไลน์ ฟรี
h1: แยกไฟล์เสียงออนไลน์
description: แยกไฟล์เสียงออนไลน์ฟรี แบ่งไฟล์ MP3 WAV เป็นหลายส่วนตามจุดที่ต้องการ ตามเวลา ขนาด ช่วงเงียบ หรือไทม์สแตมป์ ทำงานในเบราว์เซอร์ ไม่อัปโหลดไฟล์ ไม่มีลายน้ำ
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-21T09:00:00+07:00'
weight: 141
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- แยกไฟล์เสียงออนไลน์
- เสียงและวิดีโอ
---

<style>
.as-wrap{--ac:#2563eb;--bd:rgba(128,128,128,.35);--bg:rgba(128,128,128,.09);font-size:15px;line-height:1.55;margin:1.5rem 0}
.as-wrap *{box-sizing:border-box}
.as-wrap button,.as-wrap input,.as-wrap textarea{font:inherit;color:inherit}
.as-drop{border:2px dashed var(--bd);border-radius:12px;padding:2rem 1rem;text-align:center;cursor:pointer;transition:border-color .15s,background .15s}
.as-drop:hover,.as-drop.on,.as-drop:focus-visible{border-color:var(--ac);background:rgba(37,99,235,.07);outline:none}
.as-drop strong{display:block;font-size:1.15em}
.as-sub{opacity:.75;font-size:.9em}
.as-msg{min-height:1.4em;margin:.6rem 0 0;font-size:.95em}
.as-err{color:#dc2626;font-weight:600}
.as-priv{opacity:.8;font-size:.88em;margin:.2rem 0 1rem}
.as-info{font-weight:600;margin-bottom:.5rem;word-break:break-all}
.as-info span{font-weight:400;opacity:.8}
.as-bar,.as-sel,.as-grid,.as-out{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.5rem 0}
.as-btn{border:1px solid var(--bd);background:transparent;border-radius:8px;padding:.35rem .8rem;cursor:pointer;min-height:36px}
.as-btn:hover{border-color:var(--ac)}
.as-btn:focus-visible,.as-in:focus-visible,.as-nm:focus-visible{outline:2px solid var(--ac);outline-offset:1px}
.as-btn:disabled{opacity:.5;cursor:not-allowed}
.as-pri{background:var(--ac);border-color:var(--ac);color:#fff}
.as-time{font-variant-numeric:tabular-nums;font-size:.95em}
.as-zoom{display:flex;align-items:center;gap:.4rem;font-size:.9em}
.as-scroll{overflow-x:auto;border:1px solid var(--bd);border-radius:10px;background:var(--bg)}
.as-inner{position:relative;height:130px;min-width:100%;cursor:crosshair;touch-action:pan-x}
.as-inner canvas{display:block;width:100%;height:130px}
.as-head{position:absolute;top:0;bottom:0;width:2px;background:#dc2626;pointer-events:none;left:0}
.as-mk{position:absolute;top:0;bottom:0;width:22px;margin-left:-11px;cursor:ew-resize;touch-action:none;text-align:center;z-index:2}
.as-mk::after{content:"";position:absolute;top:0;bottom:0;left:10px;width:2px;background:#f59e0b}
.as-mk.on::after{background:#ea580c;width:3px;left:9px}
.as-mh{position:relative;z-index:1;font-size:13px;line-height:13px;color:#f59e0b}
.as-mk.on .as-mh{color:#ea580c}
.as-in{border:1px solid var(--bd);background:transparent;border-radius:8px;padding:.3rem .5rem;min-height:36px;width:6.5rem}
.as-card{border:1px solid var(--bd);border-radius:10px;padding:.5rem .9rem;margin:.8rem 0}
.as-card summary{cursor:pointer;font-weight:600;padding:.2rem 0}
.as-grid label{display:flex;align-items:center;gap:.4rem;flex-wrap:wrap}
.as-sep{flex-basis:100%;height:0;margin:.2rem 0}
.as-ts{width:100%;min-height:90px;border:1px solid var(--bd);background:transparent;border-radius:8px;padding:.5rem;resize:vertical}
.as-h{font-size:1.05em;font-weight:700;margin:1rem 0 .4rem}
.as-row{display:flex;flex-wrap:wrap;gap:.4rem .6rem;align-items:center;border-bottom:1px solid var(--bd);padding:.45rem 0}
.as-row.off{opacity:.45}
.as-no{min-width:1.8rem;text-align:right;font-variant-numeric:tabular-nums;opacity:.7}
.as-nm{flex:1 1 180px;min-width:0;border:1px solid var(--bd);background:transparent;border-radius:8px;padding:.3rem .5rem;min-height:36px}
.as-rt,.as-du,.as-sz{font-size:.88em;font-variant-numeric:tabular-nums;opacity:.85}
.as-ck{width:18px;height:18px}
@media (max-width:560px){.as-in{width:5.5rem}.as-rt{flex-basis:100%;padding-left:2.3rem}}
@media (prefers-reduced-motion:reduce){.as-drop{transition:none}}
</style>

<div class="as-wrap" id="as-split">
<div class="as-drop" id="as-drop" tabindex="0" role="button" aria-label="เลือกไฟล์เสียงเพื่อแยก">
<strong>วางไฟล์เสียงที่นี่</strong>
<div class="as-sub">หรือคลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวาง</div>
<div class="as-sub">MP3, WAV, M4A, OGG, FLAC, AAC และวิดีโอ (เช่น MP4) ไม่เกิน 500 MB</div>
<input type="file" id="as-file" accept="audio/*,video/*,.mp3,.wav,.m4a,.ogg,.oga,.opus,.flac,.aac,.mp4,.webm" hidden>
</div>
<div class="as-msg" id="as-msg" role="status" aria-live="polite"></div>
<div class="as-priv">ไฟล์ของคุณไม่ถูกอัปโหลด ประมวลผลในเบราว์เซอร์ทั้งหมด ใช้ฟรี ไม่ต้องสมัคร ไม่มีลายน้ำ</div>
<div id="as-ed" hidden>
<div class="as-info" id="as-info"></div>
<div class="as-bar">
<button type="button" class="as-btn" id="as-play">▶ เล่น</button>
<span class="as-time" id="as-time">0:00.000 / 0:00.000</span>
<label class="as-zoom">ซูม <input type="range" id="as-zoom" min="1" max="20" value="1" aria-label="ซูมรูปคลื่นเสียง"></label>
<button type="button" class="as-btn as-pri" id="as-add">เพิ่มจุดแยกที่ตำแหน่งเล่น</button>
<button type="button" class="as-btn" id="as-clear">ล้างจุดแยก</button>
</div>
<div class="as-scroll" id="as-scroll"><div class="as-inner" id="as-inner"><canvas id="as-cv" height="130"></canvas><div class="as-head" id="as-head"></div></div></div>
<div class="as-sub">คลิกบนรูปคลื่นเพื่อย้ายตำแหน่งเล่น ลากเครื่องหมาย ▼ เพื่อปรับจุดแยก</div>
<div class="as-sel" id="as-sel" hidden>
<span>จุดแยกที่เลือก</span>
<input class="as-in" id="as-selt" inputmode="decimal" aria-label="เวลาของจุดแยกที่เลือก">
<button type="button" class="as-btn" data-nudge="-1">−1 วิ</button>
<button type="button" class="as-btn" data-nudge="-0.1">−0.1 วิ</button>
<button type="button" class="as-btn" data-nudge="0.1">+0.1 วิ</button>
<button type="button" class="as-btn" data-nudge="1">+1 วิ</button>
<button type="button" class="as-btn" data-act="del">ลบจุดนี้</button>
</div>
<details class="as-card" open>
<summary>แยกอัตโนมัติ</summary>
<div class="as-grid">
<label>แบ่งเท่า ๆ กัน <input class="as-in" id="as-n" type="number" min="2" max="500" value="4" inputmode="numeric"> ส่วน</label>
<button type="button" class="as-btn" data-act="eq">ใช้</button>
<span class="as-sep"></span>
<label>แบ่งทุก <input class="as-in" id="as-sec" type="number" min="1" value="60" inputmode="decimal"> วินาที</label>
<button type="button" class="as-btn" data-act="dur">ใช้</button>
<span class="as-sep"></span>
<label>แต่ละส่วนไม่เกิน <input class="as-in" id="as-mb" type="number" min="0.1" step="0.1" value="10" inputmode="decimal"> MB</label>
<button type="button" class="as-btn" data-act="size">ใช้</button>
<span class="as-sep"></span>
<label>ตรวจช่วงเงียบ ต่ำกว่า <input class="as-in" id="as-thr" type="number" min="-80" max="-10" value="-40" inputmode="numeric"> dB นานอย่างน้อย <input class="as-in" id="as-gap" type="number" min="0.2" max="10" step="0.1" value="1" inputmode="decimal"> วินาที</label>
<button type="button" class="as-btn" data-act="sil">ตรวจหา</button>
</div>
<div class="as-grid">
<span class="as-sub">ตั้งค่าเร็ว</span>
<button type="button" class="as-btn" data-pre="s30">30 วินาที</button>
<button type="button" class="as-btn" data-pre="s60">1 นาที</button>
<button type="button" class="as-btn" data-pre="s300">5 นาที</button>
<button type="button" class="as-btn" data-pre="mb10">10 MB</button>
<button type="button" class="as-btn" data-pre="mb25">25 MB</button>
</div>
<div class="as-h">วางไทม์สแตมป์หรือ CUE</div>
<textarea class="as-ts" id="as-ts" spellcheck="false" placeholder="00:00 บทนำ&#10;03:25 เพลงที่ 2&#10;1:02:10 เพลงที่ 3"></textarea>
<div class="as-grid"><button type="button" class="as-btn" data-act="ts">แยกตามไทม์สแตมป์</button></div>
</details>
<div class="as-h" id="as-cnt">ส่วนที่ได้</div>
<div class="as-out">
<label>แม่แบบชื่อไฟล์ <input class="as-in" id="as-tpl" value="{name}_{no}" style="width:12rem" spellcheck="false"></label>
<label id="as-id3l"><input type="checkbox" id="as-id3" class="as-ck" checked> คงแท็ก ID3 (MP3)</label>
<button type="button" class="as-btn as-pri" id="as-zip">ดาวน์โหลดทั้งหมด (ZIP)</button>
</div>
<div id="as-list"></div>
</div>
</div>

<script>
(function(){
'use strict';
/*H-START*/
function pad(n,w){var s=String(n);while(s.length<w)s='0'+s;return s;}
function fmt(t){if(!(t>0))t=0;var ti=Math.round(t*1000),ms=ti%1000,ts=Math.floor(ti/1000),h=Math.floor(ts/3600),m=Math.floor(ts%3600/60),s=ts%60;return (h?h+':'+pad(m,2):String(m))+':'+pad(s,2)+'.'+pad(ms,3);}
function parseTime(str){str=String(str).trim().replace(',','.');if(!str)return NaN;var p=str.split(':');if(p.length>3)return NaN;var t=0;for(var i=0;i<p.length;i++){if(!/^\d+(\.\d+)?$/.test(p[i]))return NaN;t=t*60+parseFloat(p[i]);}return t;}
function safeName(s){s=String(s).replace(/[\\\/:*?"<>|\u0000-\u001f]/g,'_').replace(/\s+/g,' ').trim().replace(/^\.+/,'');if(s.length>120)s=s.slice(0,120);return s||'clip';}
function esc(s){return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g,'&quot;');}
function parseTimestamps(text){
var out=[],lines=String(text).split(/\r?\n/),i,m,L;
if(/INDEX\s+0?1\s+\d+:\d+:\d+/i.test(text)){
var title='';
for(i=0;i<lines.length;i++){L=lines[i];
if(/^\s*TRACK\s/i.test(L)){title='';continue;}
m=L.match(/^\s*TITLE\s+"?(.*?)"?\s*$/i);if(m){title=m[1];continue;}
m=L.match(/^\s*INDEX\s+0?1\s+(\d+):(\d+):(\d+)/i);
if(m)out.push({t:(+m[1])*60+(+m[2])+(+m[3])/75,title:title});}
}else{
for(i=0;i<lines.length;i++){
m=lines[i].match(/^\s*[\[\(]?(\d{1,2}):(\d{2})(?::(\d{2}))?(?:[.,](\d{1,3}))?[\]\)]?\s*[-\u2013\u2014:|.)]*\s*(.*?)\s*$/);
if(!m)continue;
var h=0,mi,se,ms=m[4]?parseFloat('0.'+m[4]):0;
if(m[3]!==undefined){h=+m[1];mi=+m[2];se=+m[3];}else{mi=+m[1];se=+m[2];}
if(mi>59||se>59)continue;
out.push({t:h*3600+mi*60+se+ms,title:m[5]||''});}
}
out.sort(function(a,b){return a.t-b.t;});
return out;}
var BR1=[0,32,40,48,56,64,80,96,112,128,160,192,224,256,320],BR2=[0,8,16,24,32,40,48,56,64,80,96,112,128,144,160],SRT={3:[44100,48000,32000],2:[22050,24000,16000],0:[11025,12000,8000]};
function mp3Hdr(u,p){
if(p<0||p+4>u.length)return null;
var b0=u[p],b1=u[p+1],b2=u[p+2],b3=u[p+3];
if(b0!==255||(b1&224)!==224)return null;
var ver=(b1>>3)&3,layer=(b1>>1)&3;
if(ver===1||layer!==1)return null;
var bi=(b2>>4)&15,si=(b2>>2)&3;
if(bi===0||bi===15||si===3)return null;
var br=(ver===3?BR1:BR2)[bi]*1000,sr=SRT[ver][si],pd=(b2>>1)&1;
var len=ver===3?Math.floor(144*br/sr)+pd:Math.floor(72*br/sr)+pd;
return {len:len,sr:sr,spf:ver===3?1152:576,br:br,ver:ver,mono:((b3>>6)&3)===3,prot:b1&1};}
function parseMp3(u){
var p=0,id3=0,h,q;
if(u.length>10&&u[0]===73&&u[1]===68&&u[2]===51){id3=10+(((u[6]&127)<<21)|((u[7]&127)<<14)|((u[8]&127)<<7)|(u[9]&127));if(u[5]&16)id3+=10;p=id3;}
var found=-1,limit=Math.min(u.length,p+1048576);
for(q=p;q<limit;q++){h=mp3Hdr(u,q);if(h&&mp3Hdr(u,q+h.len)){found=q;break;}}
if(found<0)return null;
p=found;
var offs=[],sr=0,spf=0,brSum=0,first=true,end=p;
while(p<u.length){
h=mp3Hdr(u,p);
if(!h||p+h.len>u.length){
var nx=-1,lim2=Math.min(u.length,p+65536);
for(q=p+1;q<lim2;q++){var h2=mp3Hdr(u,q);if(h2&&mp3Hdr(u,q+h2.len)){nx=q;break;}}
if(nx<0)break;
p=nx;continue;}
if(!sr){sr=h.sr;spf=h.spf;}
if(first){first=false;
var so=h.ver===3?(h.mono?17:32):(h.mono?9:17),xo=p+4+(h.prot?0:2)+so;
if(xo+4<=u.length){
var tg=String.fromCharCode(u[xo],u[xo+1],u[xo+2],u[xo+3]),vb=String.fromCharCode(u[p+36],u[p+37],u[p+38],u[p+39]);
if(tg==='Xing'||tg==='Info'||vb==='VBRI'){p+=h.len;continue;}}}
offs.push(p);brSum+=h.br;p+=h.len;end=p;}
if(offs.length<10||(end-offs[0])<u.length*0.2)return null;
return {offs:Uint32Array.from(offs),n:offs.length,start:offs[0],end:end,sr:sr,spf:spf,fd:spf/sr,avgBr:brSum/offs.length,id3:id3};}
function wavHeader(f,dl){
var fl=f.length,pd=fl&1,hl=28+fl+pd,h=new Uint8Array(hl),dv=new DataView(h.buffer);
function s(o,t){for(var i=0;i<4;i++)h[o+i]=t.charCodeAt(i);}
s(0,'RIFF');dv.setUint32(4,hl-8+dl,true);s(8,'WAVE');s(12,'fmt ');dv.setUint32(16,fl,true);h.set(f,20);s(20+fl+pd,'data');dv.setUint32(24+fl+pd,dl,true);
return h;}
async function parseWav(file){
var head=new DataView(await file.slice(0,12).arrayBuffer());
if(head.byteLength<12||head.getUint32(0,false)!==0x52494646||head.getUint32(8,false)!==0x57415645)return null;
var pos=12,fm=null;
for(var k=0;k<200&&pos+8<=file.size;k++){
var ch=new DataView(await file.slice(pos,pos+8).arrayBuffer()),id=ch.getUint32(0,false),sz=ch.getUint32(4,true);
if(id===0x666d7420){fm=new Uint8Array(await file.slice(pos+8,pos+8+sz).arrayBuffer());}
else if(id===0x64617461){
if(!fm||fm.length<16)return null;
var dv=new DataView(fm.buffer,fm.byteOffset,fm.byteLength),ba=dv.getUint16(12,true),br=dv.getUint32(8,true);
if(!ba||!br)return null;
var ds=pos+8,dl=Math.min(sz,file.size-ds);
if(sz===0||sz===0xFFFFFFFF)dl=file.size-ds;
dl-=dl%ba;
return {fmt:fm,ds:ds,dl:dl,ba:ba,br:br,dur:dl/br};}
pos+=8+sz+(sz&1);}
return null;}
var CT=null;
function crcUpd(c,u){
if(!CT){CT=new Uint32Array(256);for(var n=0;n<256;n++){var x=n;for(var k=0;k<8;k++)x=x&1?(0xEDB88320^(x>>>1)):(x>>>1);CT[n]=x>>>0;}}
for(var i=0;i<u.length;i++)c=CT[(c^u[i])&255]^(c>>>8);
return c>>>0;}
async function blobCrc(b){
var c=0xFFFFFFFF,pos=0,CH=4194304;
while(pos<b.size){var u=new Uint8Array(await b.slice(pos,pos+CH).arrayBuffer());c=crcUpd(c,u);pos+=CH;}
return (c^0xFFFFFFFF)>>>0;}
async function zipStore(files,onp){
var parts=[],cd=[],off=0,enc=new TextEncoder(),now=new Date();
var dt=(((now.getFullYear()-1980)<<9)|((now.getMonth()+1)<<5)|now.getDate())&0xFFFF,tm=((now.getHours()<<11)|(now.getMinutes()<<5)|(now.getSeconds()>>1))&0xFFFF;
for(var i=0;i<files.length;i++){
var f=files[i],nm=enc.encode(f.name),crc=await blobCrc(f.blob),sz=f.blob.size;
var lh=new DataView(new ArrayBuffer(30));
lh.setUint32(0,0x04034b50,true);lh.setUint16(4,20,true);lh.setUint16(6,0x0800,true);lh.setUint16(8,0,true);lh.setUint16(10,tm,true);lh.setUint16(12,dt,true);lh.setUint32(14,crc,true);lh.setUint32(18,sz,true);lh.setUint32(22,sz,true);lh.setUint16(26,nm.length,true);lh.setUint16(28,0,true);
parts.push(lh.buffer,nm,f.blob);
var ch=new DataView(new ArrayBuffer(46));
ch.setUint32(0,0x02014b50,true);ch.setUint16(4,20,true);ch.setUint16(6,20,true);ch.setUint16(8,0x0800,true);ch.setUint16(10,0,true);ch.setUint16(12,tm,true);ch.setUint16(14,dt,true);ch.setUint32(16,crc,true);ch.setUint32(20,sz,true);ch.setUint32(24,sz,true);ch.setUint16(28,nm.length,true);ch.setUint32(42,off,true);
cd.push(ch.buffer,nm);
off+=30+nm.length+sz;
if(onp)onp(i+1,files.length);}
var cs=0;for(var j=0;j<cd.length;j++)cs+=cd[j].byteLength;
var e=new DataView(new ArrayBuffer(22));
e.setUint32(0,0x06054b50,true);e.setUint16(8,files.length,true);e.setUint16(10,files.length,true);e.setUint32(12,cs,true);e.setUint32(16,off,true);
return new Blob(parts.concat(cd,[e.buffer]),{type:'application/zip'});}
function findSilence(db,win,thr,minSil,dur){
var pts=[],i=0,n=db.length,minW=Math.max(1,Math.round(minSil/win));
while(i<n){
if(db[i]<thr){var j=i;while(j<n&&db[j]<thr)j++;
if(j-i>=minW){var t=(i+j)/2*win;if(t>1&&t<dur-1)pts.push(t);}
i=j;}else i++;}
return pts;}
function wavFromBuffer(ab,s0,s1){
var ch=ab.numberOfChannels,n=s1-s0,sr=ab.sampleRate,dl=n*ch*2,f=new Uint8Array(16),dv=new DataView(f.buffer);
dv.setUint16(0,1,true);dv.setUint16(2,ch,true);dv.setUint32(4,sr,true);dv.setUint32(8,sr*ch*2,true);dv.setUint16(12,ch*2,true);dv.setUint16(14,16,true);
var out=new DataView(new ArrayBuffer(dl)),data=[],c,i,o=0;
for(c=0;c<ch;c++)data.push(ab.getChannelData(c));
for(i=0;i<n;i++)for(c=0;c<ch;c++){var v=Math.max(-1,Math.min(1,data[c][s0+i]));out.setInt16(o,v<0?v*32768:v*32767,true);o+=2;}
return new Blob([wavHeader(f,dl),out.buffer],{type:'audio/wav'});}
/*H-END*/
if(typeof document==='undefined'){return;}
var $=function(id){return document.getElementById(id);};
if(!$('as-split'))return;
var MAX=500*1048576;
var S={file:null,kind:'',mp3:null,wav:null,dur:0,rate:0,peaks:null,db:null,pk:0.01,win:0.05,gmax:1,pts:[],sel:-1,titles:{},custom:{},skip:{},full:null,ctx:null,url:'',audio:null,stopAt:null,raf:0,drag:null,busy:false,base:'audio'};
function msg(t,err){var m=$('as-msg');m.textContent=t||'';m.className='as-msg'+(err?' as-err':'');}
function AC(){return window.AudioContext||window.webkitAudioContext;}
function decodeBuf(ctx,buf){return new Promise(function(res,rej){var p=ctx.decodeAudioData(buf,res,rej);if(p&&p.then)p.then(res,rej);});}
async function decodeAnalysis(buf){
var A=AC();if(!A)throw new Error('noaudio');
var ctx;try{ctx=new A({sampleRate:8000});}catch(e){ctx=new A();}
var ab=await decodeBuf(ctx,buf);
try{ctx.close();}catch(e2){}
return ab;}
function fullCtx(){if(!S.ctx){var A=AC();if(!A)throw new Error('noaudio');S.ctx=new A();}return S.ctx;}
async function fullBuf(){
if(S.full)return S.full;
var buf=await S.file.arrayBuffer();
S.full=await decodeBuf(fullCtx(),buf);
return S.full;}
function wave(ab){
var sr=ab.sampleRate,ch=ab.numberOfChannels,n=ab.length,d=[],c,i,gm=0;
for(c=0;c<ch;c++)d.push(ab.getChannelData(c));
var pb=Math.max(1,Math.round(sr*0.01)),pn=Math.ceil(n/pb),pk=new Float32Array(pn);
var wb=Math.max(1,Math.round(sr*0.05)),wn=Math.ceil(n/wb),db=new Float32Array(wn);
for(var b=0;b<pn;b++){var s=b*pb,e=Math.min(n,s+pb),m=0;for(c=0;c<ch;c++){var x=d[c];for(i=s;i<e;i++){var v=x[i];if(v<0)v=-v;if(v>m)m=v;}}pk[b]=m;if(m>gm)gm=m;}
for(var w=0;w<wn;w++){var s2=w*wb,e2=Math.min(n,s2+wb),sum=0;for(c=0;c<ch;c++){var x2=d[c];for(i=s2;i<e2;i++)sum+=x2[i]*x2[i];}var rms=Math.sqrt(sum/Math.max(1,(e2-s2)*ch));db[w]=rms>0.00001?20*Math.log10(rms):-100;}
S.peaks=pk;S.db=db;S.pk=pb/sr;S.win=wb/sr;S.gmax=gm>0.001?gm:1;}
function reset(){
if(S.audio){try{S.audio.pause();S.audio.removeAttribute('src');}catch(e){}}
if(S.url)URL.revokeObjectURL(S.url);
cancelAnimationFrame(S.raf);
S.file=null;S.mp3=null;S.wav=null;S.peaks=null;S.db=null;S.pts=[];S.sel=-1;S.titles={};S.custom={};S.skip={};S.full=null;S.url='';S.stopAt=null;
$('as-ed').hidden=true;}
async function load(file){
if(!file||S.busy)return;
if(file.size>MAX){msg('ไฟล์ใหญ่เกิน 500 MB กรุณาเลือกไฟล์ที่เล็กกว่านี้',1);return;}
S.busy=true;reset();msg('กำลังอ่านไฟล์เสียง…');
try{
var buf=await file.arrayBuffer(),u=new Uint8Array(buf),kind='other',mp3=null,wav=null;
if(u.length>12&&u[0]===82&&u[1]===73&&u[2]===70&&u[3]===70){wav=await parseWav(file);if(wav)kind='wav';}
if(kind==='other'){mp3=parseMp3(u);if(mp3)kind='mp3';}
msg('กำลังวิเคราะห์รูปคลื่นเสียง…');
var dec=null;
try{dec=await decodeAnalysis(buf);}catch(e){dec=null;}
buf=null;u=null;
if(!dec&&kind==='other')throw new Error('decode');
S.file=file;S.kind=kind;S.mp3=mp3;S.wav=wav;
S.base=safeName(file.name.replace(/\.[^.]+$/,''));
if(kind==='mp3'){S.dur=mp3.n*mp3.fd;S.rate=(mp3.end-mp3.start)/S.dur;}
else if(kind==='wav'){S.dur=wav.dur;S.rate=wav.br;}
else{S.dur=dec.duration;S.rate=fullCtx().sampleRate*dec.numberOfChannels*2;}
if(dec)wave(dec);
dec=null;
S.url=URL.createObjectURL(file);
var a=new Audio();a.preload='metadata';a.src=S.url;S.audio=a;
a.addEventListener('play',function(){$('as-play').textContent='⏸ หยุด';cancelAnimationFrame(S.raf);loop();});
a.addEventListener('pause',function(){$('as-play').textContent='▶ เล่น';head(a.currentTime);});
a.addEventListener('ended',function(){$('as-play').textContent='▶ เล่น';head(a.currentTime);});
a.addEventListener('error',function(){msg('เบราว์เซอร์เล่นไฟล์นี้ไม่ได้ แต่ยังแยกไฟล์ได้',1);});
var mode=kind==='mp3'?'คัดลอกตรง ไม่สูญเสียคุณภาพ':kind==='wav'?'ตัดตรง ไม่สูญเสียคุณภาพ':'ส่งออกเป็น WAV';
$('as-info').innerHTML=esc(file.name)+' <span>· '+fmt(S.dur)+' · '+(file.size/1048576).toFixed(2)+' MB · โหมด: '+mode+'</span>';
$('as-id3l').style.display=kind==='mp3'?'':'none';
$('as-ed').hidden=false;
$('as-zoom').value=1;
layout();setPoints([]);head(0);
msg('พร้อมแล้ว เพิ่มจุดแยกหรือเลือกแยกอัตโนมัติ');
}catch(err){
reset();
msg('ไม่สามารถอ่านไฟล์นี้ได้ ไฟล์อาจเสียหรือเป็นรูปแบบที่เบราว์เซอร์ไม่รองรับ',1);
}finally{S.busy=false;}}
function layout(){
var sc=$('as-scroll'),inner=$('as-inner'),z=+$('as-zoom').value||1;
inner.style.width=Math.max(sc.clientWidth,1)*z+'px';
draw();renderMarkers();head(S.audio?S.audio.currentTime:0);}
function draw(){
var cv=$('as-cv'),W=$('as-inner').clientWidth,H=130,dpr=Math.min(window.devicePixelRatio||1,2),cw=Math.max(1,Math.min(Math.round(W*dpr),16000));
cv.width=cw;cv.height=Math.round(H*dpr);
var g=cv.getContext('2d');g.setTransform(cw/W,0,0,dpr,0,0);g.clearRect(0,0,W,H);
if(!S.peaks){g.fillStyle='rgba(128,128,128,.9)';g.font='14px sans-serif';g.textAlign='center';g.fillText('ไม่สามารถแสดงรูปคลื่นได้ แต่ยังแยกไฟล์ได้',W/2,H/2);return;}
var pk=S.peaks,per=S.pk,mid=H/2;
g.fillStyle='rgba(128,128,128,.35)';g.fillRect(0,mid-0.5,W,1);
g.fillStyle='#2563eb';
for(var x=0;x<W;x++){
var b0=Math.floor(x/W*S.dur/per),b1=Math.max(b0+1,Math.ceil((x+1)/W*S.dur/per)),m=0;
if(b1>pk.length)b1=pk.length;
for(var b=b0;b<b1;b++)if(pk[b]>m)m=pk[b];
var h=Math.max(1,Math.min(1,m/S.gmax)*(H-26));
g.fillRect(x,mid-h/2+6,1,h);}}
function head(t){
if(!S.file)return;
var W=$('as-inner').clientWidth,hd=$('as-head');
hd.style.left=(t/S.dur*W)+'px';
$('as-time').textContent=fmt(t)+' / '+fmt(S.dur);}
function loop(){
var a=S.audio;if(!a)return;
var t=a.currentTime;head(t);
if(S.stopAt!=null&&t>=S.stopAt){a.pause();S.stopAt=null;return;}
var sc=$('as-scroll'),x=t/S.dur*$('as-inner').clientWidth;
if(!a.paused&&(x>sc.scrollLeft+sc.clientWidth*0.95||x<sc.scrollLeft))sc.scrollLeft=Math.max(0,x-sc.clientWidth*0.15);
if(!a.paused)S.raf=requestAnimationFrame(loop);}
function seek(t){if(!S.audio)return;t=Math.max(0,Math.min(S.dur,t));try{S.audio.currentTime=t;}catch(e){}head(t);}
function setPoints(arr,keepNames){
var r=arr.map(function(t){return Math.round(t*1000)/1000;}).filter(function(t){return t>0.05&&t<S.dur-0.05;}).sort(function(a,b){return a-b;});
var o=[];for(var i=0;i<r.length;i++){if(!o.length||r[i]-o[o.length-1]>=0.05)o.push(r[i]);}
if(o.length>499)o=o.slice(0,499);
S.pts=o;S.sel=-1;S.skip={};S.custom={};
if(!keepNames)S.titles={};
renderMarkers();renderSel();renderList();}
function renderMarkers(){
var inner=$('as-inner'),old=inner.querySelectorAll('.as-mk');
for(var k=0;k<old.length;k++)old[k].parentNode.removeChild(old[k]);
var W=inner.clientWidth;
S.pts.forEach(function(t,i){
var d=document.createElement('div');d.className='as-mk'+(i===S.sel?' on':'');d.setAttribute('data-i',i);d.style.left=(t/S.dur*W)+'px';d.title=fmt(t);d.innerHTML='<span class="as-mh">▼</span>';inner.appendChild(d);});}
function renderSel(){
var on=S.sel>=0&&S.sel<S.pts.length;
$('as-sel').hidden=!on;
if(on)$('as-selt').value=fmt(S.pts[S.sel]);}
function select(i){S.sel=i;renderMarkers();renderSel();}
function moveSel(t){
var i=S.sel;if(i<0)return;
var lo=i>0?S.pts[i-1]+0.05:0.05,hi=i<S.pts.length-1?S.pts[i+1]-0.05:S.dur-0.05;
t=Math.round(Math.max(lo,Math.min(hi,t))*1000)/1000;
S.pts[i]=t;renderMarkers();renderSel();renderList();}
function segs(){
var a=[0].concat(S.pts),b=S.pts.concat([S.dur]),r=[];
for(var i=0;i<a.length;i++)r.push({i:i,s:a[i],e:b[i]});
return r;}
function ext(){return S.kind==='mp3'?'.mp3':'.wav';}
function frm(t){return Math.max(0,Math.min(S.mp3.n,Math.round(t/S.mp3.fd)));}
function segBytes(s,e){
if(S.kind==='mp3'){var f0=frm(s),f1=frm(e);if(f1<=f0)return 0;var b1=f1<S.mp3.n?S.mp3.offs[f1]:S.mp3.end;return b1-S.mp3.offs[f0]+($('as-id3').checked?S.mp3.id3:0);}
if(S.kind==='wav'){var w=S.wav;return Math.max(0,Math.floor((e-s)*w.br/w.ba)*w.ba)+44+w.fmt.length;}
return Math.round((e-s)*S.rate)+44;}
function sizeLbl(b){return b>=1048576?(b/1048576).toFixed(1)+' MB':Math.max(1,Math.round(b/1024))+' KB';}
function names(){
var n=S.pts.length+1,w=Math.max(2,String(n).length),tpl=$('as-tpl').value||'{name}_{no}',used={},out=[];
for(var i=0;i<n;i++){
var nm;
if(S.custom[i]!==undefined&&S.custom[i]!=='')nm=S.custom[i];
else{nm=tpl.replace(/\{name\}/g,S.base).replace(/\{no\}/g,pad(i+1,w)).replace(/\{title\}/g,S.titles[i]||'').replace(/^[\s_\-.]+|[\s_\-.]+$/g,'');
if(!nm)nm=S.base+'_'+pad(i+1,w);}
nm=safeName(nm);
var key=nm.toLowerCase();
if(used[key]){used[key]++;nm=nm+'_'+used[key];}else used[key]=1;
out.push(nm+ext());}
return out;}
function renderList(){
if(!S.file)return;
var sg=segs(),nm=names(),h='',cnt=0;
sg.forEach(function(x){
var off=S.skip[x.i]?true:false;if(!off)cnt++;
h+='<div class="as-row'+(off?' off':'')+'" data-i="'+x.i+'"><input type="checkbox" class="as-ck" aria-label="เลือกส่วนที่ '+(x.i+1)+'"'+(off?'':' checked')+'><span class="as-no">'+(x.i+1)+'</span><input class="as-nm" value="'+esc(nm[x.i])+'" aria-label="ชื่อไฟล์ส่วนที่ '+(x.i+1)+'" spellcheck="false"><span class="as-rt">'+fmt(x.s)+' – '+fmt(x.e)+'</span><span class="as-du">'+fmt(x.e-x.s)+'</span><span class="as-sz">~'+sizeLbl(segBytes(x.s,x.e))+'</span><button type="button" class="as-btn" data-a="pv" aria-label="ฟังตัวอย่างส่วนที่ '+(x.i+1)+'">▶</button><button type="button" class="as-btn" data-a="dl" aria-label="ดาวน์โหลดส่วนที่ '+(x.i+1)+'">ดาวน์โหลด</button></div>';});
$('as-list').innerHTML=h;
$('as-cnt').textContent='ส่วนที่ได้ '+sg.length+' ส่วน (เลือก '+cnt+' ส่วน)';
$('as-zip').disabled=cnt<1;}
async function segBlob(i){
var sg=segs()[i],s=sg.s,e=sg.e;
if(S.kind==='mp3'){
var m=S.mp3,f0=frm(s),f1=frm(e);
if(f1<=f0)throw new Error('empty');
var b0=m.offs[f0],b1=f1<m.n?m.offs[f1]:m.end,parts=[];
if($('as-id3').checked&&m.id3>0)parts.push(S.file.slice(0,m.id3));
parts.push(S.file.slice(b0,b1));
return new Blob(parts,{type:'audio/mpeg'});}
if(S.kind==='wav'){
var w=S.wav,a=Math.floor(s*w.br/w.ba)*w.ba,b=Math.floor(e*w.br/w.ba)*w.ba;
if(e>=S.dur-0.0005)b=w.dl;
b=Math.min(b,w.dl);
if(b<=a)throw new Error('empty');
return new Blob([wavHeader(w.fmt,b-a),S.file.slice(w.ds+a,w.ds+b)],{type:'audio/wav'});}
var ab=await fullBuf(),sr=ab.sampleRate,a2=Math.round(s*sr),b2=Math.min(ab.length,Math.round(e*sr));
if(b2<=a2)throw new Error('empty');
return wavFromBuffer(ab,a2,b2);}
function saveBlob(blob,name){
var a=document.createElement('a'),u=URL.createObjectURL(blob);
a.href=u;a.download=name;a.style.display='none';document.body.appendChild(a);a.click();
setTimeout(function(){if(a.parentNode)a.parentNode.removeChild(a);URL.revokeObjectURL(u);},60000);}
async function downloadOne(i){
if(S.busy)return;S.busy=true;
try{msg('กำลังสร้างไฟล์…');var b=await segBlob(i);saveBlob(b,names()[i]);msg('ดาวน์โหลดแล้ว: '+names()[i]);}
catch(e){msg('สร้างไฟล์ไม่สำเร็จ ส่วนนี้อาจสั้นเกินไปหรือหน่วยความจำไม่พอ',1);}
finally{S.busy=false;}}
async function downloadZip(){
if(S.busy)return;
var sg=segs(),nm=names(),files=[];
S.busy=true;
try{
for(var k=0;k<sg.length;k++){
if(S.skip[sg[k].i])continue;
msg('กำลังสร้างส่วนที่ '+(k+1)+' จาก '+sg.length+'…');
files.push({name:nm[k],blob:await segBlob(k)});}
if(!files.length){msg('กรุณาเลือกอย่างน้อย 1 ส่วน',1);return;}
var z=await zipStore(files,function(d,t){msg('กำลังบีบอัด ZIP '+d+'/'+t+'…');});
saveBlob(z,S.base+'_split.zip');
msg('ดาวน์โหลด ZIP แล้ว ('+files.length+' ไฟล์)');
}catch(e){msg('สร้าง ZIP ไม่สำเร็จ ไฟล์อาจยาวเกินกว่าหน่วยความจำของอุปกรณ์',1);}
finally{S.busy=false;}}
function preview(i){
var sg=segs()[i];if(!S.audio||!sg)return;
S.stopAt=sg.e;seek(sg.s);var p=S.audio.play();if(p&&p.catch)p.catch(function(){});}
function everyPoints(step){
var p=[];
for(var t=step;t<S.dur-0.25;t+=step){p.push(t);if(p.length>499)return null;}
return p;}
function act(a){
if(!S.file)return;
var p,v;
if(a==='eq'){v=parseInt($('as-n').value,10);if(!(v>=2&&v<=500)){msg('ใส่จำนวนส่วนระหว่าง 2 ถึง 500',1);return;}
p=[];for(var i=1;i<v;i++)p.push(S.dur*i/v);setPoints(p);msg('แบ่งเป็น '+v+' ส่วนเท่า ๆ กัน');}
else if(a==='dur'||a==='size'){
if(a==='dur'){v=parseFloat($('as-sec').value);if(!(v>=1)){msg('ใส่ระยะเวลาอย่างน้อย 1 วินาที',1);return;}}
else{var mb=parseFloat($('as-mb').value);if(!(mb>0)){msg('ใส่ขนาดสูงสุดเป็น MB',1);return;}v=Math.floor(mb*1048576*0.97/S.rate);if(v<1){msg('ขนาดเล็กเกินไป ลองเพิ่มค่า MB',1);return;}}
p=everyPoints(v);
if(!p){msg('จะได้เกิน 500 ส่วน ลองเพิ่มค่าให้มากขึ้น',1);return;}
setPoints(p);msg('แบ่งทุก '+fmt(v)+' ได้ '+(p.length+1)+' ส่วน'+(a==='size'?' (ขนาดโดยประมาณ)':''));}
else if(a==='sil'){
if(!S.db){msg('ไฟล์นี้ไม่มีข้อมูลรูปคลื่น จึงตรวจช่วงเงียบไม่ได้',1);return;}
var thr=parseFloat($('as-thr').value),gap=parseFloat($('as-gap').value);
if(!(thr>=-80&&thr<=-10)||!(gap>=0.2&&gap<=10)){msg('เกณฑ์ความดังต้องอยู่ระหว่าง -80 ถึง -10 dB และช่วงเงียบ 0.2 ถึง 10 วินาที',1);return;}
p=findSilence(S.db,S.win,thr,gap,S.dur);
if(!p.length){setPoints([]);msg('ไม่พบช่วงเงียบ ลองเพิ่มเกณฑ์เป็น -35 dB หรือลดความยาวช่วงเงียบ',1);return;}
if(p.length>499){msg('พบช่วงเงียบมากกว่า 500 จุด ลองลดเกณฑ์ dB หรือเพิ่มความยาวช่วงเงียบ',1);return;}
setPoints(p);msg('พบช่วงเงียบ '+p.length+' จุด ได้ '+(p.length+1)+' ส่วน');}
else if(a==='ts'){
var en=parseTimestamps($('as-ts').value);
if(!en.length){msg('ไม่พบไทม์สแตมป์ ใช้รูปแบบเช่น 03:25 ชื่อ หรือวางไฟล์ CUE',1);return;}
p=[];var ti={};
en.forEach(function(x){if(x.t<=0.05){if(x.title)ti[0]=x.title;}else if(x.t<S.dur-0.05){p.push(x.t);ti[p.length]=x.title;}});
if(!p.length){msg('ไทม์สแตมป์อยู่นอกความยาวของไฟล์',1);return;}
setPoints(p);S.titles=ti;
if(en.some(function(x){return x.title;}))$('as-tpl').value='{no}_{title}';
renderList();msg('แยกตามไทม์สแตมป์ ได้ '+(p.length+1)+' ส่วน');}
else if(a==='del'){
if(S.sel<0)return;S.pts.splice(S.sel,1);S.sel=-1;S.skip={};S.custom={};S.titles={};renderMarkers();renderSel();renderList();}}
var root=$('as-split'),inner=$('as-inner');
root.addEventListener('click',function(e){
var t=e.target.closest?e.target.closest('[data-act],[data-pre],[data-nudge],[data-a]'):null;
if(!t)return;
if(t.hasAttribute('data-act')){act(t.getAttribute('data-act'));return;}
if(t.hasAttribute('data-pre')){
var pr=t.getAttribute('data-pre');
if(pr.charAt(0)==='s'){$('as-sec').value=pr.slice(1);act('dur');}else{$('as-mb').value=pr.slice(2);act('size');}
return;}
if(t.hasAttribute('data-nudge')){if(S.sel>=0)moveSel(S.pts[S.sel]+parseFloat(t.getAttribute('data-nudge')));return;}
if(t.hasAttribute('data-a')){
var row=t.closest('.as-row');if(!row)return;
var i=+row.getAttribute('data-i');
if(t.getAttribute('data-a')==='pv')preview(i);else downloadOne(i);}});
$('as-list').addEventListener('change',function(e){
if(e.target.classList.contains('as-ck')){var i=+e.target.closest('.as-row').getAttribute('data-i');if(e.target.checked)delete S.skip[i];else S.skip[i]=1;renderList();}});
$('as-list').addEventListener('input',function(e){
if(e.target.classList.contains('as-nm')){var i=+e.target.closest('.as-row').getAttribute('data-i');var v=e.target.value.replace(/\.(mp3|wav)$/i,'');if(v)S.custom[i]=v;else delete S.custom[i];}});
$('as-tpl').addEventListener('input',renderList);
$('as-id3').addEventListener('change',renderList);
$('as-zip').addEventListener('click',downloadZip);
$('as-selt').addEventListener('change',function(){var t=parseTime(this.value);if(isNaN(t)){renderSel();return;}moveSel(t);});
$('as-play').addEventListener('click',function(){
var a=S.audio;if(!a)return;
if(a.paused){S.stopAt=null;var p=a.play();if(p&&p.catch)p.catch(function(){msg('เบราว์เซอร์เล่นไฟล์นี้ไม่ได้',1);});}else a.pause();});
$('as-add').addEventListener('click',function(){
if(!S.audio)return;
var t=Math.round(S.audio.currentTime*1000)/1000;
if(t<=0.05||t>=S.dur-0.05){msg('ย้ายตำแหน่งเล่นไปที่กลางไฟล์ก่อนเพิ่มจุดแยก',1);return;}
for(var i=0;i<S.pts.length;i++){if(Math.abs(S.pts[i]-t)<0.05){msg('มีจุดแยกที่ตำแหน่งนี้แล้ว',1);return;}}
var keep=S.pts.length;
setPoints(S.pts.concat([t]));
S.sel=S.pts.indexOf(t);renderMarkers();renderSel();
msg('เพิ่มจุดแยกที่ '+fmt(t)+(keep?'':''));});
$('as-clear').addEventListener('click',function(){if(S.file){setPoints([]);msg('ล้างจุดแยกทั้งหมดแล้ว');}});
$('as-zoom').addEventListener('input',function(){
var sc=$('as-scroll'),ratio=sc.scrollWidth>0?(sc.scrollLeft+sc.clientWidth/2)/sc.scrollWidth:0;
layout();sc.scrollLeft=ratio*sc.scrollWidth-sc.clientWidth/2;});
inner.addEventListener('pointerdown',function(e){
var mk=e.target.closest?e.target.closest('.as-mk'):null;
if(mk){var i=+mk.getAttribute('data-i');select(i);var el=inner.querySelector('.as-mk[data-i="'+i+'"]');S.drag={i:i,el:el};try{el.setPointerCapture(e.pointerId);}catch(x){}e.preventDefault();return;}
var r=inner.getBoundingClientRect();
seek((e.clientX-r.left)/r.width*S.dur);
if(S.sel>=0)select(-1);});
inner.addEventListener('pointermove',function(e){
var d=S.drag;if(!d)return;
var r=inner.getBoundingClientRect(),i=d.i;
var t=(e.clientX-r.left)/r.width*S.dur;
var lo=i>0?S.pts[i-1]+0.05:0.05,hi=i<S.pts.length-1?S.pts[i+1]-0.05:S.dur-0.05;
t=Math.round(Math.max(lo,Math.min(hi,t))*1000)/1000;
S.pts[i]=t;d.el.style.left=(t/S.dur*r.width)+'px';d.el.title=fmt(t);$('as-selt').value=fmt(t);});
function endDrag(){if(S.drag){S.drag=null;renderList();}}
inner.addEventListener('pointerup',endDrag);
inner.addEventListener('pointercancel',endDrag);
var drop=$('as-drop'),fi=$('as-file');
drop.addEventListener('click',function(){fi.click();});
drop.addEventListener('keydown',function(e){if(e.key==='Enter'||e.key===' '){e.preventDefault();fi.click();}});
fi.addEventListener('change',function(){if(fi.files&&fi.files[0])load(fi.files[0]);fi.value='';});
['dragenter','dragover'].forEach(function(n){drop.addEventListener(n,function(e){e.preventDefault();drop.classList.add('on');});});
['dragleave','drop'].forEach(function(n){drop.addEventListener(n,function(e){e.preventDefault();drop.classList.remove('on');});});
drop.addEventListener('drop',function(e){var f=e.dataTransfer&&e.dataTransfer.files&&e.dataTransfer.files[0];if(f)load(f);});
document.addEventListener('paste',function(e){
var t=e.target&&e.target.tagName;if(t==='INPUT'||t==='TEXTAREA')return;
var f=e.clipboardData&&e.clipboardData.files&&e.clipboardData.files[0];if(f)load(f);});
var rz=0;
window.addEventListener('resize',function(){clearTimeout(rz);rz=setTimeout(function(){if(S.file)layout();},150);});
})();
</script>

## วิธีใช้งานเครื่องมือแยกไฟล์เสียง

1. **เลือกไฟล์** คลิกหรือลากไฟล์ MP3, WAV, M4A, OGG, FLAC, AAC หรือไฟล์วิดีโอ เช่น MP4 ลงในกรอบด้านบน หรือกด Ctrl+V เพื่อวางไฟล์
2. **ฟังและดูรูปคลื่น** กดปุ่ม "เล่น" แล้วคลิกบนรูปคลื่นเพื่อย้ายตำแหน่งเล่น ใช้แถบ "ซูม" เมื่อต้องการกำหนดจุดให้แม่นยำขึ้น
3. **กำหนดจุดแยก** ย้ายตำแหน่งเล่นไปยังจุดที่ต้องการ แล้วกด "เพิ่มจุดแยกที่ตำแหน่งเล่น" ลากเครื่องหมาย ▼ เพื่อปรับตำแหน่ง หรือเลือกจุดแล้วกด ±0.1 วินาที และ ±1 วินาที หรือพิมพ์เวลาเองในช่องก็ได้
4. **หรือให้เครื่องมือแยกให้อัตโนมัติ** เลือกแบ่งเท่า ๆ กัน แบ่งตามระยะเวลา แบ่งตามขนาดไฟล์ ตรวจหาช่วงเงียบ หรือวางไทม์สแตมป์และไฟล์ CUE ปุ่ม "ตั้งค่าเร็ว" ช่วยตั้งค่ายอดนิยม เช่น 30 วินาทีและ 10 MB
5. **ตรวจรายการส่วนที่ได้** ติ๊กเลือกเฉพาะส่วนที่ต้องการ แก้ชื่อไฟล์ได้โดยตรง และกด ▶ เพื่อฟังตัวอย่างแต่ละส่วนก่อนดาวน์โหลด
6. **ตั้งชื่อไฟล์** ใช้ช่อง "แม่แบบชื่อไฟล์" เช่น `{name}_{no}` เพื่อให้ได้ชื่อเป็นระเบียบอัตโนมัติ
7. **ดาวน์โหลด** กด "ดาวน์โหลด" ที่ส่วนนั้นเพื่อรับทีละไฟล์ หรือกด "ดาวน์โหลดทั้งหมด (ZIP)" เพื่อรับทุกส่วนในไฟล์เดียว

## ความหมายของคำศัพท์ในเครื่องมือ

- **จุดแยก** ตำแหน่งเวลาที่ใช้ตัดไฟล์ จุดแยกหนึ่งจุดทำให้ได้ไฟล์เพิ่มหนึ่งส่วน
- **รูปคลื่นเสียง (Waveform)** กราฟแสดงความดังของเสียงตามเวลา ช่วงที่แบนคือช่วงที่เงียบ ช่วยให้หาจุดตัดได้ง่าย
- **ตำแหน่งเล่น** เส้นแนวตั้งสีแดงที่เลื่อนไปตามเสียงที่กำลังเล่น เป็นตำแหน่งที่ใช้เพิ่มจุดแยก
- **ซูม** ขยายรูปคลื่นตามแนวนอนเพื่อวางจุดแยกได้ละเอียดขึ้น
- **แบ่งเท่า ๆ กัน** แบ่งไฟล์เป็นจำนวนส่วนที่กำหนด โดยแต่ละส่วนยาวเท่ากัน
- **แบ่งตามระยะเวลา** ตัดทุกกี่วินาที ส่วนสุดท้ายอาจสั้นกว่าส่วนอื่น
- **แบ่งตามขนาด** กำหนดขนาดสูงสุดของแต่ละส่วนเป็น MB เครื่องมือจะประมาณความยาวที่พอดีกับขนาดนั้น ขนาดจริงอาจต่างเล็กน้อยในไฟล์ที่บิตเรตไม่คงที่
- **ช่วงเงียบ** ช่วงที่เสียงเบาจนแทบไม่ได้ยิน เช่น ช่องว่างระหว่างเพลง จุดแยกจะถูกวางไว้กลางช่วงเงียบนั้น
- **เกณฑ์ความดัง (dB)** ระดับที่ต่ำกว่านี้จะนับว่าเงียบ ค่า -40 dB เป็นค่าเริ่มต้นที่เหมาะกับไฟล์ทั่วไป ถ้าไฟล์มีเสียงรบกวนพื้นหลังให้ลองเพิ่มเป็น -35 หรือ -30
- **ความยาวช่วงเงียบขั้นต่ำ** ช่วงเงียบต้องนานอย่างน้อยกี่วินาทีจึงจะนับเป็นจุดแยก ช่วยกันไม่ให้ตัดตรงจังหวะหยุดสั้น ๆ ระหว่างพูด
- **ไทม์สแตมป์** รายการเวลาและชื่อตอน เช่น `03:25 เพลงที่ 2` มักพบในคำอธิบายวิดีโอหรือพอดแคสต์ วางรายการลงในช่องแล้วเครื่องมือจะตั้งจุดแยกและชื่อไฟล์ให้
- **CUE** ไฟล์ข้อความที่ระบุตำแหน่งเพลงในอัลบั้มที่รวมเป็นไฟล์เดียว วางข้อความ CUE ลงในช่องเดียวกับไทม์สแตมป์ได้
- **แม่แบบชื่อไฟล์** รูปแบบการตั้งชื่ออัตโนมัติ `{name}` คือชื่อไฟล์เดิม `{no}` คือลำดับส่วนที่เติม 0 นำหน้า และ `{title}` คือชื่อตอนจากไทม์สแตมป์หรือ CUE
- **คัดลอกตรง (ไม่สูญเสียคุณภาพ)** ตัดข้อมูลเสียงเดิมออกมาโดยไม่แปลงไฟล์ใหม่ จึงเร็วและคุณภาพเท่าต้นฉบับ ใช้กับ MP3 และ WAV
- **เฟรม MP3** หน่วยย่อยของไฟล์ MP3 ยาวประมาณ 26 มิลลิวินาที การตัดแบบคัดลอกตรงจึงตัดได้ที่ขอบเฟรมเท่านั้น
- **WAV** ไฟล์เสียงแบบไม่บีบอัด คุณภาพสูงแต่ขนาดใหญ่ ไฟล์ M4A, OGG, FLAC และวิดีโอจะถูกส่งออกในรูปแบบนี้
- **แท็ก ID3** ข้อมูลชื่อเพลง ศิลปิน และภาพปกที่ฝังอยู่ในไฟล์ MP3 เปิดตัวเลือกนี้เพื่อให้ทุกส่วนมีข้อมูลเหมือนต้นฉบับ ปิดไว้ถ้าต้องการไฟล์ที่เล็กลง
- **ZIP** ไฟล์บีบรวมที่เก็บหลายไฟล์ไว้ด้วยกัน ช่วยให้ดาวน์โหลดครั้งเดียวได้ทุกส่วน

## ข้อควรรู้ก่อนใช้งาน

- ไฟล์ทั้งหมดถูกประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดไปยังเซิร์ฟเวอร์ และข้อมูลจะหายเมื่อปิดหรือโหลดหน้าใหม่
- MP3 ที่ตัดแบบคัดลอกตรงอาจมีเสียงสะดุดเล็กน้อยมากที่รอยต่อ เพราะตัดที่ขอบเฟรม หากต้องการความแม่นยำระดับมิลลิวินาที ให้ใช้ไฟล์ WAV
- ไฟล์ที่ยาวมากใช้หน่วยความจำสูง โดยเฉพาะ M4A, OGG และ FLAC ที่ต้องแปลงเป็น WAV หากอุปกรณ์ค้างให้ลองแบ่งไฟล์เป็นช่วงใหญ่ก่อน
- เปิดแท็บนี้ค้างไว้ระหว่างสร้างไฟล์และดาวน์โหลด โดยเฉพาะบนมือถือ

## คำถามที่พบบ่อย

### แยกไฟล์เสียงแล้วคุณภาพเสียงลดลงหรือไม่

ไม่ลดสำหรับไฟล์ MP3 และ WAV เพราะเครื่องมือคัดลอกข้อมูลเดิมโดยไม่แปลงไฟล์ใหม่ ส่วนไฟล์ M4A, OGG, FLAC และวิดีโอจะถูกแปลงเป็น WAV 16 บิต ซึ่งเป็นไฟล์ไม่บีบอัดที่ใหญ่กว่าต้นฉบับ

### ไฟล์ของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่

ไม่ การแยกไฟล์ทำงานในเบราว์เซอร์ของคุณทั้งหมด ไฟล์จึงไม่ออกจากอุปกรณ์

### จะแยกเพลงออกจากไฟล์ที่รวมหลายเพลงได้อย่างไร

มีสองวิธี วิธีแรกใช้ "ตรวจช่วงเงียบ" เมื่อเพลงมีช่องว่างคั่น วิธีที่สองวางไทม์สแตมป์หรือไฟล์ CUE ของอัลบั้มลงในช่องเพื่อให้ตัดตรงตำแหน่งเพลงพร้อมตั้งชื่อไฟล์ให้

### ตัดไฟล์เสียงให้ส่งทางอีเมลหรือแชทได้อย่างไร

ใช้ "แต่ละส่วนไม่เกิน MB" แล้วใส่ขนาดที่ต้องการ หรือกดปุ่มตั้งค่าเร็ว 10 MB และ 25 MB ขนาดที่ได้เป็นค่าประมาณ ควรตรวจขนาดในรายการก่อนส่ง