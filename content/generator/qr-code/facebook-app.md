---
title: สร้าง QR Code เปิดแอป Facebook ออนไลน์ ฟรี
h1: สร้าง QR Code เปิดแอป Facebook
description: สร้าง QR Code เปิดแอป Facebook ฟรี ใส่โลโก้ ปรับสีได้ ดาวน์โหลด PNG หรือ SVG สแกนได้ทั้ง iPhone และ Android รองรับโปรไฟล์ เพจ กลุ่ม อีเวนต์ และ Messenger
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-23T09:00:00+07:00'
weight: 152
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สร้าง QR Code เปิดแอป Facebook
- สร้าง QR Code เปิดแอป Facebook ออนไลน์
- สุ่มและคำนวณ
---

<style>
.fq{max-width:780px;margin:1rem 0;padding:1rem;border:1px solid rgba(128,128,128,.4);border-radius:12px}
.fq *{box-sizing:border-box}
.fq label{display:block;font-size:.9rem;font-weight:600;margin:.6rem 0 .25rem}
.fq input[type=text],.fq select{width:100%;padding:.55rem .65rem;border:1px solid rgba(128,128,128,.6);border-radius:8px;font:inherit;color:inherit;background:transparent}
.fq select option{color:#000;background:#fff}
.fq input[type=color]{width:100%;height:2.4rem;padding:2px;border:1px solid rgba(128,128,128,.6);border-radius:8px;background:transparent}
.fq-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:1.2rem;align-items:start}
.fq-row{display:grid;grid-template-columns:repeat(auto-fit,minmax(130px,1fr));gap:.6rem}
.fq details{margin-top:.8rem;border:1px solid rgba(128,128,128,.3);border-radius:8px;padding:.4rem .7rem}
.fq summary{cursor:pointer;font-weight:600;padding:.3rem 0}
.fq-pv{width:100%;max-width:340px;min-height:80px;margin:0 auto}
.fq-pv svg{display:block;width:100%;height:auto;border-radius:8px}
.fq-btns{display:flex;flex-wrap:wrap;gap:.5rem;margin-top:.8rem}
.fq button{padding:.5rem .9rem;border:1px solid rgba(128,128,128,.6);border-radius:8px;background:transparent;color:inherit;font:inherit;cursor:pointer}
.fq button:hover:not(:disabled){background:rgba(128,128,128,.15)}
.fq button:disabled{opacity:.45;cursor:not-allowed}
.fq-link{word-break:break-all;font-size:.85rem;margin-top:.6rem;font-family:monospace}
.fq-msg{font-size:.9rem;margin-top:.6rem;min-height:1.3rem}
.fq-bad{color:#c62828;font-weight:600}
</style>

<div class="fq" id="fq">
<div class="fq-grid">
<div>
<label for="fq-type">ประเภทปลายทาง</label>
<select id="fq-type"><option value="profile">โปรไฟล์ส่วนตัว</option><option value="page">เพจ (Page)</option><option value="group">กลุ่ม (Group)</option><option value="event">อีเวนต์ (Event)</option><option value="messenger">Messenger (แชตตรง)</option></select>
<label for="fq-in">ชื่อผู้ใช้ / ลิงก์ / Facebook ID</label>
<input type="text" id="fq-in" placeholder="เช่น zuck หรือ https://www.facebook.com/zuck" autocomplete="off" autocapitalize="off" spellcheck="false">
<label for="fq-mode">รูปแบบลิงก์</label>
<select id="fq-mode"><option value="smart">ลิงก์อัจฉริยะ (แนะนำ) เปิดแอปหากติดตั้งไว้ ไม่มีแอปเปิดเว็บ</option><option value="deep">Deep Link (fb://) เปิดแอปโดยตรง ต้องใช้ ID ตัวเลข</option></select>
<details>
<summary>ปรับแต่งดีไซน์</summary>
<div class="fq-row">
<div><label for="fq-fg">สีจุด QR</label><input type="color" id="fq-fg" value="#1877f2"></div>
<div><label for="fq-bg">สีพื้นหลัง</label><input type="color" id="fq-bg" value="#ffffff"></div>
</div>
<div class="fq-row">
<div><label for="fq-shape">รูปแบบจุด</label><select id="fq-shape"><option value="square">สี่เหลี่ยม</option><option value="round">มุมโค้ง</option><option value="dot">วงกลม</option></select></div>
<div><label for="fq-ecc">ระดับ ECC</label><select id="fq-ecc"><option value="0">L (7%)</option><option value="1" selected>M (15%)</option><option value="2">Q (25%)</option><option value="3">H (30%)</option></select></div>
</div>
<label for="fq-frame">ข้อความใต้ QR (CTA)</label>
<input type="text" id="fq-frame" maxlength="28" placeholder="เช่น สแกนเพื่อติดตามเรา">
<label for="fq-logo">โลโก้กลาง QR (ไม่บังคับ)</label>
<input type="file" id="fq-logo" accept="image/*">
<div class="fq-btns"><button type="button" id="fq-nologo">เอาโลโก้ออก</button></div>
<label for="fq-size">ขนาดไฟล์ PNG</label>
<select id="fq-size"><option value="256">256 px</option><option value="512" selected>512 px</option><option value="1024">1024 px</option><option value="2048">2048 px (งานพิมพ์)</option></select>
</details>
</div>
<div>
<div class="fq-pv" id="fq-pv"></div>
<div class="fq-link" id="fq-link"></div>
<div class="fq-msg" id="fq-msg" role="status" aria-live="polite"></div>
<div class="fq-btns">
<button type="button" id="fq-png" disabled>ดาวน์โหลด PNG</button>
<button type="button" id="fq-svg" disabled>ดาวน์โหลด SVG</button>
<button type="button" id="fq-copy" disabled>คัดลอกลิงก์</button>
<button type="button" id="fq-test" disabled>ทดสอบลิงก์</button>
</div>
</div>
</div>
</div>

<script>
(function(){
var ECC=[[7,10,15,20,26,18,20,24,30,18],[10,16,26,18,24,16,18,22,22,26],[13,22,18,26,18,24,18,22,20,24],[17,28,22,16,22,28,26,26,24,28]];
var NB=[[1,1,1,1,1,2,2,2,2,4],[1,1,1,2,2,4,4,4,5,5],[1,1,2,2,4,4,6,6,8,8],[1,1,2,4,4,4,5,6,8,8]];
var FMT=[1,0,3,2];
function rawMod(v){var r=(16*v+128)*v+64;if(v>=2){var a=Math.floor(v/7)+2;r-=(25*a-10)*a-55;if(v>=7)r-=36;}return r;}
function dataCw(v,e){return Math.floor(rawMod(v)/8)-ECC[e][v-1]*NB[e][v-1];}
function gmul(x,y){var z=0;for(var i=7;i>=0;i--){z=(z<<1)^((z>>>7)*285);z^=((y>>>i)&1)*x;}return z;}
function rsDiv(d){var r=[],i,j,root=1;for(i=0;i<d;i++)r.push(0);r[d-1]=1;for(i=0;i<d;i++){for(j=0;j<d;j++){r[j]=gmul(r[j],root);if(j+1<d)r[j]^=r[j+1];}root=gmul(root,2);}return r;}
function rsRem(data,div){var r=div.map(function(){return 0;});data.forEach(function(b){var f=b^r.shift();r.push(0);div.forEach(function(c,i){r[i]^=gmul(c,f);});});return r;}
function buildQR(text,ecl){
var bytes=Array.prototype.slice.call(new TextEncoder().encode(text)),ver,cap,i,j,k;
for(ver=1;ver<=10;ver++){cap=dataCw(ver,ecl)*8;if(4+(ver<10?8:16)+bytes.length*8<=cap)break;}
if(ver>10)return null;
var bits=[];function put(v,l){for(var q=l-1;q>=0;q--)bits.push((v>>>q)&1);}
put(4,4);put(bytes.length,ver<10?8:16);bytes.forEach(function(b){put(b,8);});
put(0,Math.min(4,cap-bits.length));put(0,(8-bits.length%8)%8);
for(var pad=236;bits.length<cap;pad^=236^17)put(pad,8);
var data=[];for(i=0;i<bits.length;i+=8){var v=0;for(k=0;k<8;k++)v=v<<1|bits[i+k];data.push(v);}
var nb=NB[ecl][ver-1],eb=ECC[ecl][ver-1],raw=Math.floor(rawMod(ver)/8),nShort=nb-raw%nb,shortLen=Math.floor(raw/nb),blocks=[],div=rsDiv(eb),pos=0;
for(i=0;i<nb;i++){var len=shortLen-eb+(i<nShort?0:1),dat=data.slice(pos,pos+len);pos+=len;var ec=rsRem(dat,div);if(i<nShort)dat.push(0);blocks.push(dat.concat(ec));}
var all=[];for(i=0;i<blocks[0].length;i++)blocks.forEach(function(b,jj){if(i!=shortLen-eb||jj>=nShort)all.push(b[i]);});
var n=ver*4+17,m=[],fn=[];
for(i=0;i<n;i++){m.push([]);fn.push([]);for(j=0;j<n;j++){m[i].push(false);fn[i].push(false);}}
function sf(x,y,d){m[y][x]=d;fn[y][x]=true;}
for(i=0;i<n;i++){sf(6,i,i%2==0);sf(i,6,i%2==0);}
function finder(x,y){for(var dy=-4;dy<=4;dy++)for(var dx=-4;dx<=4;dx++){var d=Math.max(Math.abs(dx),Math.abs(dy)),xx=x+dx,yy=y+dy;if(xx>=0&&xx<n&&yy>=0&&yy<n)sf(xx,yy,d!=2&&d!=4);}}
finder(3,3);finder(n-4,3);finder(3,n-4);
var ap=[];if(ver>1){var na=Math.floor(ver/7)+2,step=Math.ceil((ver*4+4)/(na*2-2))*2;ap=[6];for(var p=n-7;ap.length<na;p-=step)ap.splice(1,0,p);}
for(i=0;i<ap.length;i++)for(j=0;j<ap.length;j++){if((i==0&&j==0)||(i==0&&j==ap.length-1)||(i==ap.length-1&&j==0))continue;for(var dy=-2;dy<=2;dy++)for(var dx=-2;dx<=2;dx++)sf(ap[i]+dx,ap[j]+dy,Math.max(Math.abs(dx),Math.abs(dy))!=1);}
function fmt(mask){var d=FMT[ecl]<<3|mask,r=d;for(var q=0;q<10;q++)r=(r<<1)^((r>>>9)*1335);var b=(d<<10|r)^21522;function g(q){return((b>>>q)&1)!=0;}
for(var q=0;q<=5;q++)sf(8,q,g(q));sf(8,7,g(6));sf(8,8,g(7));sf(7,8,g(8));for(var q=9;q<15;q++)sf(14-q,8,g(q));
for(var q=0;q<8;q++)sf(n-1-q,8,g(q));for(var q=8;q<15;q++)sf(8,n-15+q,g(q));sf(8,n-8,true);}
fmt(0);
if(ver>=7){var rr=ver;for(i=0;i<12;i++)rr=(rr<<1)^((rr>>>11)*7973);var vb=ver<<12|rr;for(i=0;i<18;i++){var bt=((vb>>>i)&1)!=0,a=n-11+i%3,b2=Math.floor(i/3);sf(a,b2,bt);sf(b2,a,bt);}}
i=0;for(var right=n-1;right>=1;right-=2){if(right==6)right=5;for(var vert=0;vert<n;vert++)for(j=0;j<2;j++){var x=right-j,up=((right+1)&2)==0,y=up?n-1-vert:vert;if(!fn[y][x]&&i<all.length*8){m[y][x]=((all[i>>>3]>>>(7-(i&7)))&1)!=0;i++;}}}
function cond(mk,x,y){switch(mk){case 0:return(x+y)%2==0;case 1:return y%2==0;case 2:return x%3==0;case 3:return(x+y)%3==0;case 4:return(Math.floor(x/3)+Math.floor(y/2))%2==0;case 5:return x*y%2+x*y%3==0;case 6:return(x*y%2+x*y%3)%2==0;default:return((x+y)%2+x*y%3)%2==0;}}
function mask(mk){for(var y=0;y<n;y++)for(var x=0;x<n;x++)if(!fn[y][x]&&cond(mk,x,y))m[y][x]=!m[y][x];}
function pen(){var s=0,a,b,run,t,y,x,dark=0;
for(t=0;t<2;t++)for(y=0;y<n;y++){run=1;for(x=1;x<n;x++){a=t?m[x][y]:m[y][x];b=t?m[x-1][y]:m[y][x-1];if(a==b){run++;if(run==5)s+=3;else if(run>5)s++;}else run=1;}}
for(y=0;y<n;y++)for(x=0;x<n;x++){if(m[y][x])dark++;if(y<n-1&&x<n-1&&m[y][x]==m[y][x+1]&&m[y][x]==m[y+1][x]&&m[y][x]==m[y+1][x+1])s+=3;}
var pt=[1,0,1,1,1,0,1],y2,x2,k2,h,vv,l1,l2;
for(y=0;y<n;y++)for(x=0;x<=n-7;x++){h=1;vv=1;for(k2=0;k2<7;k2++){if(m[y][x+k2]!=!!pt[k2])h=0;if(m[x+k2][y]!=!!pt[k2])vv=0;}
if(h){l1=1;l2=1;for(k2=1;k2<=4;k2++){if(x-k2<0||m[y][x-k2])l1=0;if(x+6+k2>=n||m[y][x+6+k2])l2=0;}if(l1||l2)s+=40;}
if(vv){l1=1;l2=1;for(k2=1;k2<=4;k2++){if(x-k2<0||m[x-k2][y])l1=0;if(x+6+k2>=n||m[x+6+k2][y])l2=0;}if(l1||l2)s+=40;}}
return s+(Math.ceil(Math.abs(dark*20-n*n*10)/(n*n))-1)*10;}
var best=0,bp=1e9;for(var mk=0;mk<8;mk++){mask(mk);fmt(mk);var pp=pen();if(pp<bp){bp=pp;best=mk;}mask(mk);}
mask(best);fmt(best);
return{n:n,ver:ver,m:m};}
var FQ_TYPES=['profile','page','group','event','messenger'];
function fqIsNum(s){return /^[0-9]+$/.test(s);}
function fqToken(raw){
raw=(raw||'').trim().replace(/^@/,'');
if(!raw)return '';
if(/^(https?:\/\/)?((www|m|web|mbasic|l)\.)?(facebook\.com|fb\.com|fb\.me|m\.me)(\/|$|\?)/i.test(raw)){
try{
var u=new URL(/^https?:/i.test(raw)?raw:'https://'+raw),id=u.searchParams.get('id');
if(id)return id;
var s=u.pathname.split('/').filter(Boolean);
if(['groups','events','pages','people'].indexOf(s[0])>-1){var nums=s.filter(fqIsNum);return nums.length?nums[nums.length-1]:(s[1]||'');}
return s[0]||'';
}catch(e){return '';}
}
return raw;
}
function fqLink(type,t,deep){
var n=fqIsNum(t);
if(deep){
if(!n)return{err:'Deep Link ต้องใช้ Facebook ID แบบตัวเลข เช่น 100012345678901'};
var dp={profile:'fb://profile/',page:'fb://page/',group:'fb://group/',event:'fb://event/',messenger:'fb-messenger://user-thread/'};
return{url:dp[type]+t};
}
if(type==='event'&&!n)return{err:'อีเวนต์ต้องใช้ ID แบบตัวเลข ดูได้จากลิงก์ของอีเวนต์'};
var fb='https://www.facebook.com/';
var up={profile:n?fb+'profile.php?id='+t:fb+t,page:fb+t,group:fb+'groups/'+t,event:fb+'events/'+t,messenger:'https://m.me/'+t};
return{url:up[type]};
}
function fqEsc(s){return s.replace(/[&<>"']/g,function(c){return '&#'+c.charCodeAt(0)+';';});}
function fqLum(h){var c=[1,3,5].map(function(i){var v=parseInt(h.substr(i,2),16)/255;return v<=0.03928?v/12.92:Math.pow((v+0.055)/1.055,2.4);});return 0.2126*c[0]+0.7152*c[1]+0.0722*c[2];}
function fqRatio(a,b){var x=fqLum(a),y=fqLum(b);return(Math.max(x,y)+0.05)/(Math.min(x,y)+0.05);}
function fqSvg(q,o){
var n=q.n,m=10,z=4,W=(n+2*z)*m,H=W+(o.frame?130:0),i,j,d='',x,y,r=3,s=[];
function fz(a,b){return(a<7&&b<7)||(a>=n-7&&b<7)||(a<7&&b>=n-7);}
for(j=0;j<n;j++)for(i=0;i<n;i++){
if(!q.m[j][i]||fz(i,j))continue;
x=(i+z)*m;y=(j+z)*m;
if(o.shape==='dot'){d+='M'+(x+0.5)+' '+(y+5)+'a4.5 4.5 0 1 0 9 0a4.5 4.5 0 1 0 -9 0z';}
else if(o.shape==='round'){d+='M'+(x+r)+' '+y+'h'+(m-2*r)+'a'+r+' '+r+' 0 0 1 '+r+' '+r+'v'+(m-2*r)+'a'+r+' '+r+' 0 0 1 -'+r+' '+r+'h-'+(m-2*r)+'a'+r+' '+r+' 0 0 1 -'+r+' -'+r+'v-'+(m-2*r)+'a'+r+' '+r+' 0 0 1 '+r+' -'+r+'z';}
else{d+='M'+x+' '+y+'h'+m+'v'+m+'h-'+m+'z';}
}
s.push('<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 '+W+' '+H+'" width="'+W+'" height="'+H+'" role="img" aria-label="QR Code">');
s.push('<rect width="'+W+'" height="'+H+'" fill="'+o.bg+'"/>');
s.push('<path d="'+d+'" fill="'+o.fg+'"'+(o.shape==='square'?' shape-rendering="crispEdges"':'')+'/>');
[[0,0],[n-7,0],[0,n-7]].forEach(function(c){
var fx=(c[0]+z)*m,fy=(c[1]+z)*m,round=o.shape!=='square';
s.push('<rect x="'+fx+'" y="'+fy+'" width="70" height="70" rx="'+(round?18:0)+'" fill="'+o.fg+'"/>');
s.push('<rect x="'+(fx+10)+'" y="'+(fy+10)+'" width="50" height="50" rx="'+(round?12:0)+'" fill="'+o.bg+'"/>');
s.push('<rect x="'+(fx+20)+'" y="'+(fy+20)+'" width="30" height="30" rx="'+(round?9:0)+'" fill="'+o.fg+'"/>');
});
if(o.logo){
var ls=Math.round(n*m*0.22),lx=z*m+(n*m-ls)/2;
s.push('<rect x="'+(lx-8)+'" y="'+(lx-8)+'" width="'+(ls+16)+'" height="'+(ls+16)+'" rx="14" fill="'+o.bg+'"/>');
s.push('<image xlink:href="'+o.logo+'" x="'+lx+'" y="'+lx+'" width="'+ls+'" height="'+ls+'" preserveAspectRatio="xMidYMid meet"/>');
}
if(o.frame){
var fs=Math.min(44,(W-2*z*m-40)/(Math.max(o.frame.length,4)*0.62));
s.push('<rect x="'+(z*m)+'" y="'+(W+10)+'" width="'+(W-2*z*m)+'" height="80" rx="20" fill="'+o.fg+'"/>');
s.push('<text x="'+(W/2)+'" y="'+(W+50+fs*0.35)+'" text-anchor="middle" font-size="'+fs.toFixed(1)+'" font-weight="700" fill="'+o.bg+'" font-family="system-ui,Noto Sans Thai,Sarabun,sans-serif">'+fqEsc(o.frame)+'</text>');
}
s.push('</svg>');
return{s:s.join(''),w:W,h:H};
}
function fqInit(){
function $(i){return document.getElementById(i);}
if(!$('fq-in')||!$('fq-pv'))return;
var logo='',cur=null,msg=$('fq-msg'),btns=['fq-copy','fq-test','fq-png','fq-svg'];
function say(t,bad){msg.textContent=t;msg.className=bad?'fq-msg fq-bad':'fq-msg';}
function lock(){btns.forEach(function(b){$(b).disabled=true;});}
function render(){
cur=null;lock();$('fq-link').textContent='';
var raw=$('fq-in').value,pv=$('fq-pv');
if(!raw.trim()){pv.innerHTML='';say('กรอกชื่อผู้ใช้ ลิงก์ หรือ Facebook ID เพื่อสร้าง QR Code');return;}
var t=fqToken(raw);
if(!/^[A-Za-z0-9._-]{1,100}$/.test(t)){pv.innerHTML='';say('อ่านชื่อผู้ใช้หรือ ID ไม่ได้ ใช้ได้เฉพาะตัวอักษร a-z ตัวเลข จุด ขีดกลาง และขีดล่าง หรือวางลิงก์ Facebook เต็มๆ',true);return;}
var deep=$('fq-mode').value==='deep',L=fqLink($('fq-type').value,t,deep);
if(L.err){pv.innerHTML='';say(L.err,true);return;}
var ecl=+$('fq-ecc').value;if(logo)ecl=3;
var q=buildQR(L.url,ecl);
if(!q){pv.innerHTML='';say('ลิงก์ยาวเกินไปสำหรับระดับแก้ไขข้อผิดพลาดนี้ ลองลดระดับ ECC หรือเอาโลโก้ออก',true);return;}
var o={fg:$('fq-fg').value,bg:$('fq-bg').value,shape:$('fq-shape').value,frame:$('fq-frame').value.trim(),logo:logo};
cur=fqSvg(q,o);cur.url=L.url;
pv.innerHTML=cur.s;$('fq-link').textContent=L.url;
btns.forEach(function(b){$(b).disabled=false;});
if(deep)$('fq-test').disabled=true;
var w=[],rt=fqRatio(o.fg,o.bg);
if(fqLum(o.fg)>fqLum(o.bg))w.push('สีจุดควรเข้มกว่าสีพื้น เพราะแอปสแกนบางตัวอ่านภาพกลับสีไม่ได้');
else if(rt<4)w.push('คอนทราสต์ต่ำ ('+rt.toFixed(1)+':1) อาจสแกนไม่ติด ควรเพิ่มความต่างของสี');
if(logo)w.push('ใช้ระดับแก้ไขข้อผิดพลาด H อัตโนมัติเพราะมีโลโก้');
if(deep)w.push('Deep Link ใช้ได้เฉพาะเครื่องที่ติดตั้งแอป Facebook และบางเครื่องอาจไม่เปิด ควรสแกนทดสอบก่อนใช้งานจริง');
say(w.length?w.join(' '):'พร้อมดาวน์โหลด แนะนำให้สแกนทดสอบด้วยมือถือก่อนใช้งานจริง',false);
}
function dl(blob,name){var a=document.createElement('a'),u=URL.createObjectURL(blob);a.href=u;a.download=name;document.body.appendChild(a);a.click();setTimeout(function(){URL.revokeObjectURL(u);a.remove();},500);}
$('fq-svg').addEventListener('click',function(){if(cur)dl(new Blob([cur.s],{type:'image/svg+xml'}),'facebook-qr.svg');});
$('fq-png').addEventListener('click',function(){
if(!cur)return;
var px=+$('fq-size').value,img=new Image(),c=cur;
img.onload=function(){try{var cv=document.createElement('canvas');cv.width=px;cv.height=Math.round(px*c.h/c.w);cv.getContext('2d').drawImage(img,0,0,cv.width,cv.height);cv.toBlob(function(b){if(b)dl(b,'facebook-qr.png');else say('สร้าง PNG ไม่สำเร็จ ลองดาวน์โหลดเป็น SVG แทน',true);},'image/png');}catch(e){say('สร้าง PNG ไม่สำเร็จ ลองดาวน์โหลดเป็น SVG แทน',true);}};
img.onerror=function(){say('สร้าง PNG ไม่สำเร็จ ลองดาวน์โหลดเป็น SVG แทน',true);};
img.src='data:image/svg+xml;charset=utf-8,'+encodeURIComponent(c.s);
});
$('fq-copy').addEventListener('click',function(){
if(!cur)return;
var t=cur.url;
function fb(){var a=document.createElement('textarea');a.value=t;document.body.appendChild(a);a.select();try{document.execCommand('copy');say('คัดลอกลิงก์แล้ว');}catch(e){say('คัดลอกไม่ได้ กรุณาคัดลอกลิงก์ด้านบนด้วยตนเอง',true);}a.remove();}
if(navigator.clipboard&&navigator.clipboard.writeText)navigator.clipboard.writeText(t).then(function(){say('คัดลอกลิงก์แล้ว');},fb);else fb();
});
$('fq-test').addEventListener('click',function(){if(cur&&/^https:\/\//.test(cur.url))window.open(cur.url,'_blank','noopener');});
$('fq-logo').addEventListener('change',function(e){
var f=e.target.files&&e.target.files[0];
if(!f){return;}
if(f.type.indexOf('image/')!==0||f.size>1500000){logo='';e.target.value='';say('เลือกไฟล์รูปภาพขนาดไม่เกิน 1.5 MB เท่านั้น',true);render();return;}
var r=new FileReader();r.onload=function(){logo=String(r.result);render();};r.readAsDataURL(f);
});
$('fq-nologo').addEventListener('click',function(){logo='';$('fq-logo').value='';render();});
['fq-type','fq-in','fq-mode','fq-fg','fq-bg','fq-shape','fq-ecc','fq-frame'].forEach(function(id){$(id).addEventListener('input',render);$(id).addEventListener('change',render);});
$('fq-type').addEventListener('change',function(){var m={profile:'เช่น zuck หรือ https://www.facebook.com/zuck',page:'เช่น facebook หรือ https://www.facebook.com/facebook',group:'ID หรือลิงก์กลุ่ม เช่น https://www.facebook.com/groups/123456789',event:'ID หรือลิงก์อีเวนต์ เช่น https://www.facebook.com/events/123456789',messenger:'เช่น zuck หรือ https://m.me/zuck'};$('fq-in').placeholder=m[$('fq-type').value];});
render();
}
if(document.readyState==='loading')document.addEventListener('DOMContentLoaded',fqInit);else fqInit();
})();
</script>

## วิธีใช้งานเครื่องมือสร้าง QR Code เปิดแอป Facebook

1. **เลือกประเภทปลายทาง** ได้แก่ โปรไฟล์ เพจ กลุ่ม อีเวนต์ หรือ Messenger
2. **กรอกชื่อผู้ใช้ ลิงก์ หรือ Facebook ID** วางลิงก์ Facebook เต็มๆ ได้เลย ระบบจะดึงชื่อผู้ใช้หรือ ID ให้อัตโนมัติ
3. **เลือกรูปแบบลิงก์** ใช้ "ลิงก์อัจฉริยะ" สำหรับการใช้งานทั่วไป หรือ "Deep Link" หากต้องการสั่งเปิดแอปโดยตรงและมี Facebook ID ตัวเลขอยู่แล้ว
4. **ปรับแต่งดีไซน์ (ไม่บังคับ)** เปลี่ยนสี รูปแบบจุด ใส่โลโก้ หรือเพิ่มข้อความชวนสแกนใต้ QR Code
5. **ดูคำเตือนใต้ตัวอย่าง** ระบบจะแจ้งเมื่อสีตัดกันน้อยเกินไปหรือสีกลับด้าน ซึ่งอาจทำให้สแกนไม่ติด
6. **สแกนทดสอบด้วยมือถือ** ทั้ง iPhone และ Android ก่อนนำไปใช้จริง
7. **ดาวน์โหลดไฟล์** เป็น PNG สำหรับออนไลน์ หรือ SVG สำหรับงานพิมพ์

## คำอธิบายศัพท์ที่ควรรู้

- **QR Code** คือบาร์โค้ดสองมิติที่เก็บลิงก์หรือข้อความไว้ เมื่อสแกนด้วยกล้องมือถือจะเปิดปลายทางที่กำหนดทันที
- **ลิงก์อัจฉริยะ (Universal Link)** คือลิงก์เว็บ https ปกติ ซึ่งมือถือที่ติดตั้งแอป Facebook จะเปิดในแอปให้เอง หากไม่มีแอปจะเปิดบนเว็บ
- **Deep Link** คือลิงก์รูปแบบพิเศษ เช่น `fb://profile/ID` ที่สั่งเปิดหน้าภายในแอปโดยตรง ใช้ได้เมื่อมีแอปติดตั้งเท่านั้น
- **ชื่อผู้ใช้ (Username)** คือชื่อที่ต่อท้าย facebook.com/ เช่น facebook.com/zuck ชื่อผู้ใช้คือ zuck
- **Facebook ID** คือรหัสตัวเลขประจำโปรไฟล์ เพจ กลุ่ม หรืออีเวนต์ มักเห็นในลิงก์รูปแบบ profile.php?id= หรือ /groups/ตัวเลข
- **m.me** คือลิงก์ลัดที่เปิดหน้าแชต Messenger กับบัญชีหรือเพจนั้นโดยตรง
- **ECC (Error Correction Code)** คือระดับการแก้ไขข้อผิดพลาดที่ช่วยให้ QR Code ยังสแกนได้แม้เสียหายบางส่วน มี 4 ระดับ ได้แก่ L ประมาณ 7% M ประมาณ 15% Q ประมาณ 25% และ H ประมาณ 30% ยิ่งสูงยิ่งทนทานแต่ QR Code จะหนาแน่นขึ้น
- **Quiet Zone** คือขอบว่างรอบ QR Code ที่ช่วยให้เครื่องสแกนแยกตัวโค้ดออกจากพื้นหลัง เครื่องมือนี้เว้นให้อัตโนมัติ 4 โมดูลตามมาตรฐาน
- **คอนทราสต์ (Contrast)** คือความต่างของสีจุดกับสีพื้น ควรให้จุดสีเข้มบนพื้นสีอ่อน อัตราส่วนอย่างน้อยประมาณ 4:1 เพื่อให้สแกนติดง่าย
- **รูปแบบจุด** คือรูปร่างของโมดูลใน QR Code ได้แก่ สี่เหลี่ยม มุมโค้ง และวงกลม ตัวมุมสามจุดยังคงอ่านง่ายเพื่อรักษาความสามารถในการสแกน
- **CTA (Call to Action)** คือข้อความชวนให้ลงมือทำ เช่น "สแกนเพื่อติดตามเรา" ที่แสดงใต้ QR Code เพื่อเพิ่มโอกาสที่คนจะสแกน
- **PNG** คือไฟล์ภาพแบบพิกเซล ใช้งานง่ายบนโซเชียล สไลด์ และเอกสาร
- **SVG** คือไฟล์ภาพเวกเตอร์ ขยายเท่าไรก็ไม่แตก เหมาะกับงานพิมพ์ขนาดใหญ่

## ตัวอย่างลิงก์ที่ระบบสร้างให้

| ประเภท | สิ่งที่กรอก | ลิงก์ในรูปแบบอัจฉริยะ |
| --- | --- | --- |
| โปรไฟล์ | zuck | `https://www.facebook.com/zuck` |
| เพจ | facebook | `https://www.facebook.com/facebook` |
| กลุ่ม | 123456789 | `https://www.facebook.com/groups/123456789` |
| อีเวนต์ | 123456789 | `https://www.facebook.com/events/123456789` |
| Messenger | zuck | `https://m.me/zuck` |

## เคล็ดลับให้ QR Code สแกนติดง่าย

- พิมพ์ให้มีขนาดอย่างน้อยประมาณ 2 x 2 เซนติเมตร และเพิ่มขนาดตามระยะที่คนยืนสแกน
- ใช้สีเข้มบนพื้นสีอ่อน หลีกเลี่ยงวางบนรูปภาพที่ลายเยอะ
- ใช้โลโก้ขนาดเล็ก ไม่เกินประมาณหนึ่งในห้าของความกว้าง QR Code
- สแกนทดสอบทั้ง iPhone และ Android จากสื่อที่พิมพ์จริงก่อนผลิตจำนวนมาก
- หากต้องการเปลี่ยนปลายทางภายหลัง ให้ใช้ลิงก์ของเพจหรือชื่อผู้ใช้ที่คงที่ เพราะ QR Code ที่สร้างแล้วแก้ไขไม่ได้

## คำถามที่พบบ่อย

### QR Code เปิดแอป Facebook ฟรีหรือไม่?

ฟรี ไม่ต้องสมัครสมาชิก ไม่มีลายน้ำ และดาวน์โหลดได้ไม่จำกัด ระบบประมวลผลในเบราว์เซอร์ของคุณ ไม่ส่งลิงก์หรือรูปโลโก้ไปยังเซิร์ฟเวอร์

### ทำไมสแกนแล้วเปิดเว็บแทนที่จะเปิดแอป?

หากเลือกลิงก์อัจฉริยะ มือถือจะเปิดแอป Facebook เมื่อติดตั้งไว้และอนุญาตให้แอปเปิดลิงก์ได้ หากไม่มีแอปหรือปิดการตั้งค่านี้ ระบบจะเปิดหน้าเว็บ Facebook แทน ซึ่งเป็นพฤติกรรมปกติของ iPhone และ Android

### Deep Link (fb://) ต่างจากลิงก์อัจฉริยะอย่างไร?

Deep Link สั่งเปิดแอปโดยตรงแต่ต้องมีแอปติดตั้งและต้องใช้ Facebook ID แบบตัวเลข อีกทั้งกล้องมือถือบางรุ่นไม่เปิดลิงก์รูปแบบนี้ ลิงก์อัจฉริยะจึงเหมาะกับการใช้งานทั่วไปมากกว่า

### ใส่โลโก้ใน QR Code แล้วสแกนไม่ติดทำอย่างไร?

ใช้โลโก้ขนาดเล็กที่ภาพชัด ให้ระบบใช้ ECC ระดับ H อัตโนมัติ ลดความยาวลิงก์ และตรวจสอบคอนทราสต์ของสี หากยังไม่ติดให้ลองเอาโลโก้ออก

### ควรดาวน์โหลดเป็น PNG หรือ SVG?

PNG เหมาะกับโพสต์โซเชียล สไลด์ และเอกสารทั่วไป ส่วน SVG เป็นภาพเวกเตอร์ขยายได้ไม่แตก เหมาะกับป้าย โปสเตอร์ และงานพิมพ์ขนาดใหญ่

<script type="application/ld+json">
{"@context": "https://schema.org", "@type": "FAQPage", "mainEntity": [{"@type": "Question", "name": "QR Code เปิดแอป Facebook ฟรีหรือไม่?", "acceptedAnswer": {"@type": "Answer", "text": "ฟรี ไม่ต้องสมัครสมาชิก ไม่มีลายน้ำ และดาวน์โหลดได้ไม่จำกัด ระบบประมวลผลในเบราว์เซอร์ของคุณ ไม่ส่งลิงก์หรือรูปโลโก้ไปยังเซิร์ฟเวอร์"}}, {"@type": "Question", "name": "ทำไมสแกนแล้วเปิดเว็บแทนที่จะเปิดแอป?", "acceptedAnswer": {"@type": "Answer", "text": "หากเลือกลิงก์อัจฉริยะ มือถือจะเปิดแอป Facebook เมื่อติดตั้งไว้และอนุญาตให้แอปเปิดลิงก์ได้ หากไม่มีแอปหรือปิดการตั้งค่านี้ ระบบจะเปิดหน้าเว็บ Facebook แทน ซึ่งเป็นพฤติกรรมปกติของ iPhone และ Android"}}, {"@type": "Question", "name": "Deep Link (fb://) ต่างจากลิงก์อัจฉริยะอย่างไร?", "acceptedAnswer": {"@type": "Answer", "text": "Deep Link สั่งเปิดแอปโดยตรงแต่ต้องมีแอปติดตั้งและต้องใช้ Facebook ID แบบตัวเลข อีกทั้งกล้องมือถือบางรุ่นไม่เปิดลิงก์รูปแบบนี้ ลิงก์อัจฉริยะจึงเหมาะกับการใช้งานทั่วไปมากกว่า"}}, {"@type": "Question", "name": "ใส่โลโก้ใน QR Code แล้วสแกนไม่ติดทำอย่างไร?", "acceptedAnswer": {"@type": "Answer", "text": "ใช้โลโก้ขนาดเล็กที่ภาพชัด ให้ระบบใช้ ECC ระดับ H อัตโนมัติ ลดความยาวลิงก์ และตรวจสอบคอนทราสต์ของสี หากยังไม่ติดให้ลองเอาโลโก้ออก"}}, {"@type": "Question", "name": "ควรดาวน์โหลดเป็น PNG หรือ SVG?", "acceptedAnswer": {"@type": "Answer", "text": "PNG เหมาะกับโพสต์โซเชียล สไลด์ และเอกสารทั่วไป ส่วน SVG เป็นภาพเวกเตอร์ขยายได้ไม่แตก เหมาะกับป้าย โปสเตอร์ และงานพิมพ์ขนาดใหญ่"}}]}
</script>