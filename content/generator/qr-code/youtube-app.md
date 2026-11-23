---
title: สร้าง QR Code เปิดแอป YouTube ออนไลน์ ฟรี
h1: สร้าง QR Code เปิดแอป YouTube
description: สร้าง QR Code เปิดแอป YouTube สำหรับวิดีโอ ช่อง เพลย์ลิสต์ และปุ่มสมัครสมาชิก ปรับสีและโลโก้ได้ เห็นตัวอย่างทันที ดาวน์โหลด PNG/SVG ฟรี ไม่ต้องลงทะเบียน
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-23T09:00:00+07:00'
weight: 153
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สร้าง QR Code เปิดแอป YouTube
- สร้าง QR Code เปิดแอป YouTube ออนไลน์
- QR Code YouTube
- QR Code สมัครช่อง YouTube
- สุ่มและคำนวณ
---

<style>
.qy-tool{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:20px;margin:16px 0}
.qy-form label{display:block;margin:0 0 10px;font-size:.92em}
.qy-form input[type=text],.qy-form select{display:block;width:100%;box-sizing:border-box;padding:8px;margin-top:4px;font:inherit;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.5);border-radius:6px}
.qy-form input[type=color]{display:block;width:100%;height:36px;margin-top:4px;padding:2px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent}
.qy-row{display:flex;gap:10px}.qy-row label{flex:1}
.qy-out{text-align:center}
.qy-out canvas{max-width:100%;height:auto;border:1px solid rgba(128,128,128,.4);border-radius:8px}
.qy-out p{word-break:break-all;font-size:.85em;margin:8px 0}
#qyMsg{min-height:1.2em}
.qy-btns{display:flex;flex-wrap:wrap;gap:8px;justify-content:center}
.qy-btns button{padding:8px 14px;font:inherit;cursor:pointer;border:1px solid rgba(128,128,128,.6);border-radius:6px;background:transparent;color:inherit}
</style>

<div class="qy-tool">
<div class="qy-form">
<label>ประเภทลิงก์<select id="qyType"><option value="video">วิดีโอ</option><option value="shorts">Shorts</option><option value="channel">ช่อง</option><option value="subscribe">ปุ่มสมัครสมาชิกช่อง</option><option value="playlist">เพลย์ลิสต์</option></select></label>
<label>ลิงก์ / ID / @แฮนเดิล<input id="qyInput" type="text" placeholder="เช่น https://youtu.be/dQw4w9WgXcQ หรือ @youtube" autocomplete="off"></label>
<label id="qyTimeWrap">เริ่มเล่นที่เวลา (ไม่บังคับ)<input id="qyTime" type="text" placeholder="1:30 หรือ 90"></label>
<label>รูปแบบลิงก์<select id="qyMode"><option value="https">มาตรฐาน https (แนะนำ)</option><option value="scheme">youtube:// (เปิดแอปตรง)</option></select></label>
<div class="qy-row"><label>สีโค้ด<input id="qyFg" type="color" value="#000000"></label><label>สีพื้น<input id="qyBg" type="color" value="#ffffff"></label></div>
<div class="qy-row"><label>ขนาด<select id="qySize"><option value="256">256 px</option><option value="512" selected>512 px</option><option value="1024">1024 px</option></select></label><label>ขอบ<select id="qyMargin"><option value="2">2</option><option value="4" selected>4</option><option value="6">6</option></select></label><label>ECC<select id="qyEcc"><option value="0">L</option><option value="1" selected>M</option><option value="2">Q</option><option value="3">H</option></select></label></div>
<label><input id="qyLogo" type="checkbox"> ใส่โลโก้ตรงกลาง (ตั้ง ECC เป็น H อัตโนมัติ)</label>
</div>
<div class="qy-out">
<canvas id="qyCanvas" width="256" height="256"></canvas>
<p id="qyLink"></p>
<p id="qyMsg" role="status"></p>
<div class="qy-btns"><button type="button" id="qyPng">ดาวน์โหลด PNG</button><button type="button" id="qySvg">ดาวน์โหลด SVG</button><button type="button" id="qyCopy">คัดลอกลิงก์</button></div>
</div>
</div>

<script>
(function(){
'use strict';
var EB=[[7,10,15,20,26,18,20,24,30,18,20,24,26,30,22,24,28,30,28,28],[10,16,26,18,24,16,18,22,22,26,30,22,22,24,24,28,28,26,26,26],[13,22,18,26,18,24,18,22,20,24,28,26,24,20,30,24,28,28,26,30],[17,28,22,16,22,28,26,26,24,28,24,28,22,24,24,30,28,28,26,28]];
var NB=[[1,1,1,1,1,2,2,2,2,4,4,4,4,4,6,6,6,6,7,8],[1,1,1,2,2,4,4,4,5,5,5,8,9,9,10,10,11,13,14,16],[1,1,2,2,4,4,6,6,8,8,8,10,12,16,12,17,16,18,21,20],[1,1,2,4,4,4,5,6,8,8,11,11,16,16,18,16,19,21,25,25]];
function raw(v){var r=(16*v+128)*v+64;if(v>=2){var a=Math.floor(v/7)+2;r-=(25*a-10)*a-55;if(v>=7)r-=36;}return r;}
function mul(x,y){var z=0;for(var i=7;i>=0;i--){z=(z<<1)^((z>>>7)*0x11D);z^=((y>>>i)&1)*x;}return z;}
function gen(d){var r=[],i,j,t=1;for(i=0;i<d;i++)r.push(0);r[d-1]=1;for(i=0;i<d;i++){for(j=0;j<d;j++){r[j]=mul(r[j],t);if(j+1<d)r[j]^=r[j+1];}t=mul(t,2);}return r;}
function rem(data,g){var r=g.map(function(){return 0;});data.forEach(function(b){var f=b^r.shift();r.push(0);g.forEach(function(c,i){r[i]^=mul(c,f);});});return r;}
function qr(text,e){
var d=Array.from(new TextEncoder().encode(text)),v,cap,i;
for(v=1;v<=20;v++){cap=Math.floor(raw(v)/8)-EB[e][v-1]*NB[e][v-1];if(d.length+(v<10?2:3)<=cap)break;}
if(v>20)throw new Error('long');
var bits=[];function put(val,len){for(var k=len-1;k>=0;k--)bits.push((val>>>k)&1);}
put(4,4);put(d.length,v<10?8:16);d.forEach(function(b){put(b,8);});
put(0,Math.min(4,cap*8-bits.length));
while(bits.length%8)bits.push(0);
var cw=[];for(i=0;i<bits.length;i+=8)cw.push(parseInt(bits.slice(i,i+8).join(''),2));
for(var p=0xEC;cw.length<cap;p^=0xEC^0x11)cw.push(p);
var nb=NB[e][v-1],eb=EB[e][v-1],rc=Math.floor(raw(v)/8),ns=nb-rc%nb,sl=Math.floor(rc/nb),gp=gen(eb),blocks=[],k=0;
for(i=0;i<nb;i++){var dat=cw.slice(k,k+sl-eb+(i<ns?0:1));k+=dat.length;var ec=rem(dat,gp);if(i<ns)dat.push(0);blocks.push(dat.concat(ec));}
var res=[];for(i=0;i<blocks[0].length;i++)blocks.forEach(function(b,j){if(i!=sl-eb||j>=ns)res.push(b[i]);});
var n=v*4+17,m=[],f=[];
for(i=0;i<n;i++){m.push(new Array(n).fill(false));f.push(new Array(n).fill(false));}
function set(x,y,c){m[y][x]=c;f[y][x]=true;}
for(i=0;i<n;i++){set(6,i,i%2==0);set(i,6,i%2==0);}
function fin(x,y){for(var dy=-4;dy<=4;dy++)for(var dx=-4;dx<=4;dx++){var xx=x+dx,yy=y+dy;if(xx>=0&&xx<n&&yy>=0&&yy<n){var q=Math.max(Math.abs(dx),Math.abs(dy));set(xx,yy,q!=2&&q!=4);}}}
fin(3,3);fin(n-4,3);fin(3,n-4);
var ap=[];
if(v>1){var na=Math.floor(v/7)+2,st=v==32?26:Math.ceil((v*4+4)/(na*2-2))*2;ap=[6];for(var q=n-7;ap.length<na;q-=st)ap.splice(1,0,q);}
ap.forEach(function(y,a){ap.forEach(function(x,b){
if((a==0&&b==0)||(a==0&&b==ap.length-1)||(a==ap.length-1&&b==0))return;
for(var dy=-2;dy<=2;dy++)for(var dx=-2;dx<=2;dx++)set(x+dx,y+dy,Math.max(Math.abs(dx),Math.abs(dy))!=1);});});
function fmt(mask){
var dt=([1,0,3,2][e]<<3)|mask,r=dt,t;
for(t=0;t<10;t++)r=(r<<1)^((r>>>9)*0x537);
var b=((dt<<10)|r)^0x5412;
function bt(z){return ((b>>>z)&1)!=0;}
for(t=0;t<=5;t++)set(8,t,bt(t));
set(8,7,bt(6));set(8,8,bt(7));set(7,8,bt(8));
for(t=9;t<15;t++)set(14-t,8,bt(t));
for(t=0;t<8;t++)set(n-1-t,8,bt(t));
for(t=8;t<15;t++)set(8,n-15+t,bt(t));
set(8,n-8,true);}
if(v>=7){var vr=v,vb;for(i=0;i<12;i++)vr=(vr<<1)^((vr>>>11)*0x1F25);vb=(v<<12)|vr;
for(i=0;i<18;i++){var vc=((vb>>>i)&1)!=0,va=n-11+i%3,vt=Math.floor(i/3);set(va,vt,vc);set(vt,va,vc);}}
fmt(0);
var bi=0;
for(var rt=n-1;rt>=1;rt-=2){if(rt==6)rt=5;
for(var vv=0;vv<n;vv++)for(var j=0;j<2;j++){var x=rt-j,up=((rt+1)&2)==0,y=up?n-1-vv:vv;
if(!f[y][x]&&bi<res.length*8){m[y][x]=((res[bi>>>3]>>>(7-(bi&7)))&1)!=0;bi++;}}}
function msk(w){for(var y=0;y<n;y++)for(var x=0;x<n;x++){
if(f[y][x])continue;var c;
switch(w){case 0:c=(x+y)%2==0;break;case 1:c=y%2==0;break;case 2:c=x%3==0;break;case 3:c=(x+y)%3==0;break;
case 4:c=(Math.floor(x/3)+Math.floor(y/2))%2==0;break;case 5:c=x*y%2+x*y%3==0;break;case 6:c=(x*y%2+x*y%3)%2==0;break;default:c=((x+y)%2+x*y%3)%2==0;}
if(c)m[y][x]=!m[y][x];}}
function pen(){var s=0,dk=0,y,x,l,t;
for(y=0;y<n;y++)for(x=0;x<n;x++){if(m[y][x])dk++;if(x<n-1&&y<n-1&&m[y][x]==m[y][x+1]&&m[y][x]==m[y+1][x]&&m[y][x]==m[y+1][x+1])s+=3;}
for(t=0;t<2;t++)for(y=0;y<n;y++){l=1;
for(x=1;x<=n;x++){var cur=x<n?(t?m[x][y]:m[y][x]):null,prv=t?m[x-1][y]:m[y][x-1];
if(x<n&&cur==prv)l++;else{if(l>=5)s+=l-2;l=1;}}}
return s+Math.floor(Math.abs(dk*20-n*n*10)/(n*n))*10;}
var best=0,bp=1e9;
for(var w=0;w<8;w++){msk(w);fmt(w);var pp=pen();if(pp<bp){bp=pp;best=w;}msk(w);}
msk(best);fmt(best);
return {n:n,m:m};}
var $=function(i){return document.getElementById(i);};
var cur=null;
function secs(s){s=s.trim();if(!s)return 0;var p=s.split(':').map(Number);if(p.some(isNaN))return 0;return p.reduce(function(a,b){return a*60+b;},0);}
function vid(s){var m=s.match(/(?:v=|youtu\.be\/|shorts\/|embed\/|live\/)([\w-]{11})/);if(m)return m[1];return /^[\w-]{11}$/.test(s)?s:'';}
function parse(){
var t=$('qyType').value,s=$('qyInput').value.trim(),u='',m;
if(!s)return '';
if(t=='video'||t=='shorts'){
var id=vid(s);if(!id)return '';
u=t=='shorts'?'https://www.youtube.com/shorts/'+id:'https://www.youtube.com/watch?v='+id;
var sc=secs($('qyTime').value);if(t=='video'&&sc>0)u+='&t='+sc+'s';
}else if(t=='playlist'){
m=s.match(/list=([\w-]+)/)||s.match(/^((?:PL|UU|OL|FL|RD)[\w-]+)$/);
if(!m)return '';u='https://www.youtube.com/playlist?list='+m[1];
}else{
var h=s.match(/@([\w.\-]+)/),c=s.match(/(UC[\w-]{22})/);
if(c)u='https://www.youtube.com/channel/'+c[1];
else if(h)u='https://www.youtube.com/@'+h[1];
else if(/^[\w.\-]+$/.test(s))u='https://www.youtube.com/@'+s;
else return '';
if(t=='subscribe')u+='?sub_confirmation=1';
}
return $('qyMode').value=='scheme'?u.replace('https://','youtube://'):u;}
function lum(h){var c=[1,3,5].map(function(i){var v=parseInt(h.substr(i,2),16)/255;return v<=0.03928?v/12.92:Math.pow((v+0.055)/1.055,2.4);});return 0.2126*c[0]+0.7152*c[1]+0.0722*c[2];}
function rr(c,x,y,w,h,r,col){c.fillStyle=col;c.beginPath();c.moveTo(x+r,y);c.arcTo(x+w,y,x+w,y+h,r);c.arcTo(x+w,y+h,x,y+h,r);c.arcTo(x,y+h,x,y,r);c.arcTo(x,y,x+w,y,r);c.closePath();c.fill();}
function render(){
var link=parse(),cv=$('qyCanvas'),size=+$('qySize').value,msg=$('qyMsg'),c=cv.getContext('2d');
$('qyTimeWrap').style.display=$('qyType').value=='video'?'':'none';
if($('qyLogo').checked)$('qyEcc').value='3';
cur=null;$('qyLink').textContent='';
if(!link){c.clearRect(0,0,cv.width,cv.height);msg.textContent=$('qyInput').value.trim()?'ไม่พบ ID หรือลิงก์ที่ถูกต้อง ลองตรวจสอบประเภทลิงก์อีกครั้ง':'กรอกลิงก์เพื่อสร้าง QR Code';return;}
var q;try{q=qr(link,+$('qyEcc').value);}catch(err){msg.textContent='ลิงก์ยาวเกินไปสำหรับ QR Code นี้';return;}
var mg=+$('qyMargin').value,T=q.n+2*mg,u=Math.max(1,Math.floor(size/T)),fg=$('qyFg').value,bg=$('qyBg').value;
cv.width=cv.height=u*T;
c.fillStyle=bg;c.fillRect(0,0,u*T,u*T);c.fillStyle=fg;
for(var y=0;y<q.n;y++)for(var x=0;x<q.n;x++)if(q.m[y][x])c.fillRect((x+mg)*u,(y+mg)*u,u,u);
if($('qyLogo').checked){var L=Math.floor(q.n*0.2),o=(T-L)/2;
c.fillStyle=bg;c.fillRect((o-0.5)*u,(o-0.5)*u,(L+1)*u,(L+1)*u);
rr(c,o*u,o*u,L*u,L*u,L*u*0.25,'#ff0000');
c.fillStyle='#fff';c.beginPath();c.moveTo((o+L*0.38)*u,(o+L*0.3)*u);c.lineTo((o+L*0.38)*u,(o+L*0.7)*u);c.lineTo((o+L*0.7)*u,(o+L*0.5)*u);c.closePath();c.fill();}
cur={q:q,link:link,mg:mg,T:T,fg:fg,bg:bg,logo:$('qyLogo').checked};
$('qyLink').textContent=link;
var l1=lum(fg),l2=lum(bg),ratio=(Math.max(l1,l2)+0.05)/(Math.min(l1,l2)+0.05);
msg.textContent=(l1>l2||ratio<4)?'คำเตือน: สีโค้ดควรเข้มกว่าสีพื้นและคอนทราสต์สูง ไม่เช่นนั้นสแกนยาก':'พร้อมดาวน์โหลด';}
function svg(){
var k=cur,n=k.q.n,p='',x,y,s;
for(y=0;y<n;y++)for(x=0;x<n;x++)if(k.q.m[y][x])p+='M'+(x+k.mg)+' '+(y+k.mg)+'h1v1h-1z';
s='<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 '+k.T+' '+k.T+'" shape-rendering="crispEdges"><rect width="'+k.T+'" height="'+k.T+'" fill="'+k.bg+'"/><path d="'+p+'" fill="'+k.fg+'"/>';
if(k.logo){var L=Math.floor(n*0.2),o=(k.T-L)/2;
s+='<rect x="'+(o-0.5)+'" y="'+(o-0.5)+'" width="'+(L+1)+'" height="'+(L+1)+'" fill="'+k.bg+'"/>';
s+='<rect x="'+o+'" y="'+o+'" width="'+L+'" height="'+L+'" rx="'+(L*0.25)+'" fill="#ff0000"/>';
s+='<path d="M'+(o+L*0.38)+' '+(o+L*0.3)+'L'+(o+L*0.38)+' '+(o+L*0.7)+'L'+(o+L*0.7)+' '+(o+L*0.5)+'Z" fill="#fff"/>';}
return s+'</svg>';}
function dl(name,url){var a=document.createElement('a');a.href=url;a.download=name;document.body.appendChild(a);a.click();document.body.removeChild(a);}
$('qyPng').onclick=function(){if(!cur)return;$('qyCanvas').toBlob(function(b){var u=URL.createObjectURL(b);dl('qr-youtube.png',u);setTimeout(function(){URL.revokeObjectURL(u);},1000);});};
$('qySvg').onclick=function(){if(!cur)return;var u=URL.createObjectURL(new Blob([svg()],{type:'image/svg+xml'}));dl('qr-youtube.svg',u);setTimeout(function(){URL.revokeObjectURL(u);},1000);};
$('qyCopy').onclick=function(){if(!cur)return;
var done=function(){$('qyMsg').textContent='คัดลอกลิงก์แล้ว';};
if(navigator.clipboard&&navigator.clipboard.writeText){navigator.clipboard.writeText(cur.link).then(done,function(){});}
else{var t=document.createElement('textarea');t.value=cur.link;document.body.appendChild(t);t.select();try{document.execCommand('copy');done();}catch(e){}document.body.removeChild(t);}};
['qyType','qyInput','qyTime','qyMode','qyFg','qyBg','qySize','qyMargin','qyEcc','qyLogo'].forEach(function(id){$(id).addEventListener('input',render);$(id).addEventListener('change',render);});
render();
})();
</script>

## วิธีใช้งานเครื่องมือสร้าง QR Code เปิดแอป YouTube

1. **เลือกประเภทลิงก์** เช่น วิดีโอ, Shorts, ช่อง, ปุ่มสมัครสมาชิกช่อง หรือเพลย์ลิสต์
2. **วางลิงก์ ID หรือ @แฮนเดิล** ระบบจะแยก ID ให้เองและแสดงลิงก์ที่ใช้จริงใต้ QR Code
3. **ตั้งเวลาเริ่มเล่น** (เฉพาะวิดีโอ) เช่น `1:30` หรือ `90` เพื่อให้ผู้สแกนเริ่มดูตรงจุดที่ต้องการ
4. **เลือกรูปแบบลิงก์** ใช้ `https` เพื่อความเข้ากันได้สูงสุด หรือ `youtube://` หากต้องการเปิดแอปโดยตรงบน iPhone
5. **ปรับแต่งหน้าตา** เลือกสี ขนาด ขอบ ระดับ ECC และเปิดโลโก้ตรงกลางได้ตามต้องการ
6. **ดาวน์โหลดหรือคัดลอก** เลือก PNG สำหรับใช้งานบนจอ หรือ SVG สำหรับงานพิมพ์ แล้วทดสอบสแกนด้วยมือถือก่อนใช้งานจริงทุกครั้ง

## คำอธิบายศัพท์ที่ใช้ในเครื่องมือ

- **QR Code** : บาร์โค้ดสองมิติที่เก็บข้อความหรือลิงก์ไว้ เมื่อสแกนด้วยกล้องมือถือจะเปิดลิงก์นั้นทันที
- **Deep link** : ลิงก์ที่เปิดหน้าเฉพาะในแอป เช่น เปิดวิดีโอในแอป YouTube โดยตรงแทนการเปิดในเบราว์เซอร์
- **ลิงก์ https (Universal link)** : ลิงก์เว็บปกติ มือถือที่ติดตั้งแอป YouTube จะเปิดในแอปให้อัตโนมัติ หากไม่มีแอปจะเปิดในเบราว์เซอร์แทน
- **youtube://** : รูปแบบลิงก์เฉพาะที่สั่งเปิดแอป YouTube โดยตรง เหมาะกับ iPhone แต่บางแอปสแกนบน Android อาจไม่รองรับ
- **Video ID** : รหัส 11 ตัวอักษรที่ระบุวิดีโอแต่ละรายการ เช่น `dQw4w9WgXcQ`
- **@แฮนเดิล (Handle)** : ชื่อเฉพาะของช่อง ขึ้นต้นด้วย @ เช่น `@youtube`
- **Channel ID** : รหัสช่องที่ขึ้นต้นด้วย `UC` ตามด้วยอักขระอีก 22 ตัว
- **Playlist ID** : รหัสเพลย์ลิสต์ที่อยู่หลัง `list=` มักขึ้นต้นด้วย `PL`
- **Shorts** : วิดีโอสั้นแนวตั้งของ YouTube ที่ใช้ลิงก์รูปแบบ `/shorts/`
- **ปุ่มสมัครสมาชิก (sub_confirmation)** : พารามิเตอร์ที่ทำให้ผู้สแกนเห็นหน้าต่างยืนยันการสมัครช่องทันที
- **ไทม์สแตมป์ (Timestamp)** : เวลาที่ให้วิดีโอเริ่มเล่น ระบบแปลงเป็นวินาทีและต่อท้ายลิงก์เป็น `&t=90s`
- **ECC (Error Correction Code)** : ระดับการแก้ไขข้อผิดพลาด L ≈ 7%, M ≈ 15%, Q ≈ 25%, H ≈ 30% ยิ่งสูงยิ่งสแกนง่ายเมื่อโค้ดเสียหายหรือมีโลโก้ทับ แต่โค้ดจะซับซ้อนขึ้น
- **ขอบ (Quiet Zone)** : พื้นที่ว่างรอบ QR Code ที่ช่วยให้กล้องแยกโค้ดออกจากพื้นหลัง ควรมีอย่างน้อย 4 โมดูล
- **คอนทราสต์ (Contrast)** : ความต่างระหว่างสีโค้ดกับสีพื้น ควรใช้โค้ดสีเข้มบนพื้นสว่างเพื่อให้สแกนติดง่าย
- **PNG** : ไฟล์ภาพแรสเตอร์ เหมาะกับโซเชียลมีเดียและสไลด์
- **SVG** : ไฟล์ภาพเวกเตอร์ ขยายได้ไม่จำกัดโดยภาพไม่แตก เหมาะกับงานพิมพ์ ป้าย และสติกเกอร์

## ตัวอย่างการใช้งาน

- พิมพ์ QR Code ช่อง YouTube บนนามบัตร โบรชัวร์ หรือบรรจุภัณฑ์สินค้า
- วางในสไลด์นำเสนอเพื่อให้ผู้ฟังสแกนดูวิดีโอประกอบหรือเพลย์ลิสต์บทเรียน
- ใส่ในโปสเตอร์หรือหน้าร้านเพื่อชวนสมัครช่องด้วยปุ่มสมัครสมาชิก
- แปะบนอุปกรณ์หรือคู่มือเพื่อลิงก์ไปวิดีโอสอนใช้งานโดยตรง

## คำถามที่พบบ่อย

**QR Code นี้หมดอายุหรือไม่?** ไม่หมดอายุ เพราะเป็น QR Code แบบคงที่ที่เก็บลิงก์ไว้ในตัวโค้ดเอง จะใช้ได้ตราบเท่าที่วิดีโอหรือช่องนั้นยังอยู่

**ต้องติดตั้งแอป YouTube หรือไม่?** ไม่จำเป็น หากไม่มีแอป ลิงก์ https จะเปิดใน YouTube บนเบราว์เซอร์แทน

**ข้อมูลของฉันถูกส่งไปที่ไหนหรือไม่?** ไม่ถูกส่ง เครื่องมือนี้สร้าง QR Code ในเบราว์เซอร์ของคุณทั้งหมด ไม่ต้องลงทะเบียนและไม่เก็บลิงก์ที่กรอก

**ทำไมสแกนไม่ติด?** ตรวจสอบว่าสีโค้ดเข้มกว่าสีพื้น มีขอบว่างเพียงพอ ไม่พิมพ์ขนาดเล็กเกินไป และหากใส่โลโก้ควรใช้ ECC ระดับ H

*YouTube เป็นเครื่องหมายการค้าของ Google LLC และ QR Code เป็นเครื่องหมายการค้าจดทะเบียนของ DENSO WAVE เครื่องมือนี้ไม่มีส่วนเกี่ยวข้องกับเจ้าของเครื่องหมายการค้าดังกล่าว*