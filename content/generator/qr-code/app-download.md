---
title: สร้าง QR Code ดาวน์โหลดแอป ออนไลน์ ฟรี
h1: สร้าง QR Code ดาวน์โหลดแอป
description: สร้าง QR Code ดาวน์โหลดแอปฟรี รวมลิงก์ App Store และ Google Play ในรหัสเดียว สแกนได้ทั้ง iPhone และ Android ปรับแต่งสีได้ โหลด PNG/SVG ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-24T08:45:00+07:00'
weight: 151
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สร้าง QR Code ดาวน์โหลดแอป
- สร้าง QR Code ดาวน์โหลดแอป ออนไลน์
- สุ่มและคำนวณ
---

<script>if(/[#&](i|a|h)=/.test(location.hash)){document.documentElement.style.visibility='hidden';setTimeout(function(){document.documentElement.style.visibility='';},3500);}</script>
<div class="qa">
<style>
.qa{max-width:960px;margin:0 auto 24px;font-size:15px}
.qa *{box-sizing:border-box}
.qa-grid{display:grid;grid-template-columns:1fr 1fr;gap:20px}
@media(max-width:760px){.qa-grid{grid-template-columns:1fr}}
.qa-box{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:16px}
.qa label{display:block;margin:10px 0 4px;font-weight:600;font-size:14px}
.qa input[type=text],.qa select{width:100%;padding:9px 10px;border:1px solid #bbb;border-radius:8px;background:#fff;color:#111;font-size:15px}
.qa input[type=color]{width:100%;height:38px;padding:2px;border:1px solid #bbb;border-radius:8px;background:#fff}
.qa-row{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.qa-btns{display:flex;flex-wrap:wrap;gap:8px;margin-top:12px}
.qa button{padding:9px 14px;border:0;border-radius:8px;background:#2563eb;color:#fff;font-size:14px;cursor:pointer}
.qa button.qa-alt{background:#6b7280}
.qa-cv{display:block;margin:0 auto;max-width:100%;width:320px;height:auto;border:1px solid rgba(128,128,128,.35);border-radius:8px}
.qa-msg{margin-top:10px;font-size:14px;line-height:1.5}
.qa-err{color:#dc2626}
.qa-warn{color:#b45309}
.qa-links a{display:block;word-break:break-all;margin-top:4px;font-size:13px}
</style>
<div class="qa-grid">
<div class="qa-box">
<label for="qa-name">ชื่อแอป (ไม่บังคับ)</label>
<input type="text" id="qa-name" maxlength="24" placeholder="เช่น My App">
<label for="qa-ios">ลิงก์ App Store หรือ App ID (iPhone / iPad)</label>
<input type="text" id="qa-ios" placeholder="https://apps.apple.com/th/app/.../id443904275">
<label for="qa-and">ลิงก์ Google Play หรือ Package name (Android)</label>
<input type="text" id="qa-and" placeholder="https://play.google.com/store/apps/details?id=com.example.app">
<label for="qa-hw">ลิงก์ Huawei AppGallery (ไม่บังคับ)</label>
<input type="text" id="qa-hw" placeholder="https://appgallery.huawei.com/app/C100000000">
<label for="qa-fb">เว็บไซต์สำรอง สำหรับคอมพิวเตอร์ (ไม่บังคับ)</label>
<input type="text" id="qa-fb" placeholder="https://example.com">
<label for="qa-cmp">ชื่อแคมเปญ UTM (ไม่บังคับ, a-z 0-9 - _)</label>
<input type="text" id="qa-cmp" maxlength="40" placeholder="poster-nov">
<label for="qa-mode">ประเภท QR</label>
<select id="qa-mode">
<option value="smart">อัจฉริยะ: QR เดียว เปิดร้านค้าตามอุปกรณ์</option>
<option value="ios">แบบตรง: เปิด App Store เท่านั้น</option>
<option value="android">แบบตรง: เปิด Google Play เท่านั้น</option>
<option value="huawei">แบบตรง: เปิด AppGallery เท่านั้น</option>
</select>
<div class="qa-row">
<div><label for="qa-fg">สี QR</label><input type="color" id="qa-fg" value="#111111"></div>
<div><label for="qa-bg">สีพื้นหลัง</label><input type="color" id="qa-bg" value="#ffffff"></div>
</div>
<div class="qa-row">
<div><label for="qa-shape">รูปทรงจุด</label><select id="qa-shape"><option value="sq">สี่เหลี่ยม</option><option value="round">มน</option></select></div>
<div><label for="qa-ecl">แก้ไขข้อผิดพลาด</label><select id="qa-ecl"><option value="0">L (7%)</option><option value="1" selected>M (15%)</option><option value="2">Q (25%)</option><option value="3">H (30%)</option></select></div>
</div>
<div class="qa-row">
<div><label for="qa-size">ขนาดไฟล์ PNG</label><select id="qa-size"><option value="512">512 px</option><option value="1024" selected>1024 px</option><option value="2048">2048 px</option><option value="4096">4096 px</option></select></div>
<div><label for="qa-lbl">ข้อความใต้ QR</label><select id="qa-lbl"><option value="1" selected>แสดง</option><option value="0">ซ่อน</option></select></div>
</div>
<label for="qa-lbltxt">ข้อความที่แสดงใต้ QR</label>
<input type="text" id="qa-lbltxt" maxlength="40" value="สแกนเพื่อดาวน์โหลดแอป">
</div>
<div class="qa-box">
<canvas id="qa-cv" class="qa-cv" width="320" height="320"></canvas>
<div class="qa-msg" id="qa-msg">กรอกลิงก์ร้านค้าอย่างน้อย 1 ช่อง เพื่อสร้าง QR Code</div>
<div class="qa-btns" id="qa-btns" style="display:none">
<button type="button" id="qa-png">ดาวน์โหลด PNG</button>
<button type="button" id="qa-svg">ดาวน์โหลด SVG</button>
<button type="button" class="qa-alt" id="qa-copy">คัดลอกลิงก์ใน QR</button>
</div>
<div class="qa-msg qa-links" id="qa-links"></div>
</div>
</div>
</div>
<script>
(function(){
/*QR-START*/
var ECC=[[-1,7,10,15,20,26,18,20,24,30,18,20,24,26,30,22,24,28,30,28,28,28,28,30,30,26,28,30,30,30,30,30,30,30,30,30,30,30,30,30,30],[-1,10,16,26,18,24,16,18,22,22,26,30,22,22,24,24,28,28,26,26,26,26,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28],[-1,13,22,18,26,18,24,18,22,20,24,28,26,24,20,30,24,28,28,26,30,28,30,30,30,30,28,30,30,30,30,30,30,30,30,30,30,30,30,30,30],[-1,17,28,22,16,22,28,26,26,24,28,24,28,22,24,24,30,28,28,26,28,30,24,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30]];
var BLK=[[-1,1,1,1,1,1,2,2,2,2,4,4,4,4,4,6,6,6,6,7,8,8,9,9,10,12,12,12,13,14,15,16,17,18,19,19,20,21,22,24,25],[-1,1,1,1,2,2,4,4,4,5,5,5,8,9,9,10,10,11,13,14,16,17,17,18,20,21,23,25,26,28,29,31,33,35,37,38,40,43,45,47,49],[-1,1,1,2,2,4,4,6,6,8,8,8,10,12,16,12,17,16,18,21,20,23,23,25,27,29,34,34,35,38,40,43,45,48,51,53,56,59,62,65,68],[-1,1,1,2,4,4,4,5,6,8,8,11,11,16,16,18,16,19,21,25,25,25,34,30,32,35,37,40,42,45,48,51,54,57,60,63,66,70,74,77,81]];
var FB=[1,0,3,2];
function raw(v){var r=(16*v+128)*v+64;if(v>=2){var a=Math.floor(v/7)+2;r-=(25*a-10)*a-55;if(v>=7)r-=36;}return r;}
function cap(l,v){return Math.floor(raw(v)/8)-ECC[l][v]*BLK[l][v];}
function mul(x,y){var z=0;for(var i=7;i>=0;i--){z=(z<<1)^((z>>>7)*0x11D);z^=((y>>>i)&1)*x;}return z;}
function qrEnc(text,lvl){
var data=Array.from(new TextEncoder().encode(text)),ver=1,i,j,k;
for(;ver<=40;ver++){if(4+(ver<10?8:16)+8*data.length<=cap(lvl,ver)*8)break;}
if(ver>40)return null;
var bits=[];function put(v,len){for(var t=len-1;t>=0;t--)bits.push((v>>>t)&1);}
put(4,4);put(data.length,ver<10?8:16);data.forEach(function(b){put(b,8);});
var cb=cap(lvl,ver)*8;put(0,Math.min(4,cb-bits.length));while(bits.length%8)bits.push(0);
for(var pad=0xEC;bits.length<cb;pad^=0xEC^0x11)put(pad,8);
var cw=[];for(i=0;i<bits.length;i+=8){var x=0;for(j=0;j<8;j++)x=x*2+bits[i+j];cw.push(x);}
var nb=BLK[lvl][ver],el=ECC[lvl][ver],rc=Math.floor(raw(ver)/8),ns=nb-rc%nb,sl=Math.floor(rc/nb);
var div=[];for(i=0;i<el-1;i++)div.push(0);div.push(1);var root=1;
for(i=0;i<el;i++){for(j=0;j<el;j++){div[j]=mul(div[j],root);if(j+1<el)div[j]^=div[j+1];}root=mul(root,2);}
var blocks=[];k=0;
for(i=0;i<nb;i++){var d=cw.slice(k,k+sl-el+(i<ns?0:1));k+=d.length;var rem=div.map(function(){return 0;});
d.forEach(function(b){var f=b^rem.shift();rem.push(0);div.forEach(function(c,t){rem[t]^=mul(c,f);});});
if(i<ns)d.push(0);blocks.push(d.concat(rem));}
var all=[];for(i=0;i<blocks[0].length;i++)blocks.forEach(function(b,jj){if(i!==sl-el||jj>=ns)all.push(b[i]);});
var n=ver*4+17,M=[],F=[];for(i=0;i<n;i++){M.push(new Array(n).fill(false));F.push(new Array(n).fill(false));}
function sf(x,y,v){M[y][x]=v;F[y][x]=true;}
for(i=0;i<n;i++){sf(6,i,i%2===0);sf(i,6,i%2===0);}
function fp(x,y){for(var dy=-4;dy<=4;dy++)for(var dx=-4;dx<=4;dx++){var xx=x+dx,yy=y+dy;if(xx>=0&&xx<n&&yy>=0&&yy<n){var ds=Math.max(Math.abs(dx),Math.abs(dy));sf(xx,yy,ds!==2&&ds!==4);}}}
fp(3,3);fp(n-4,3);fp(3,n-4);
var ap=[];if(ver>1){var na=Math.floor(ver/7)+2,st=ver===32?26:Math.ceil((ver*4+4)/(na*2-2))*2;ap=[6];for(var p=n-7;ap.length<na;p-=st)ap.splice(1,0,p);}
for(i=0;i<ap.length;i++)for(j=0;j<ap.length;j++){if((i===0&&j===0)||(i===0&&j===ap.length-1)||(i===ap.length-1&&j===0))continue;
for(var dy=-2;dy<=2;dy++)for(var dx=-2;dx<=2;dx++)sf(ap[i]+dx,ap[j]+dy,Math.max(Math.abs(dx),Math.abs(dy))!==1);}
function fmt(mask){var dd=(FB[lvl]<<3)|mask,r=dd,t;for(t=0;t<10;t++)r=(r<<1)^((r>>>9)*0x537);var b=((dd<<10)|r)^0x5412;
function g(q){return((b>>>q)&1)===1;}
for(t=0;t<=5;t++)sf(8,t,g(t));sf(8,7,g(6));sf(8,8,g(7));sf(7,8,g(8));for(t=9;t<15;t++)sf(14-t,8,g(t));
for(t=0;t<8;t++)sf(n-1-t,8,g(t));for(t=8;t<15;t++)sf(8,n-15+t,g(t));sf(8,n-8,true);}
fmt(0);
if(ver>=7){var r2=ver;for(i=0;i<12;i++)r2=(r2<<1)^((r2>>>11)*0x1F25);var vb=(ver<<12)|r2;for(i=0;i<18;i++){var c=((vb>>>i)&1)===1,a=n-11+i%3,b2=Math.floor(i/3);sf(a,b2,c);sf(b2,a,c);}}
var bi=0;for(var right=n-1;right>=1;right-=2){if(right===6)right=5;for(var vert=0;vert<n;vert++)for(j=0;j<2;j++){var xx2=right-j,up=((right+1)&2)===0,yy2=up?n-1-vert:vert;if(!F[yy2][xx2]&&bi<all.length*8){M[yy2][xx2]=((all[bi>>>3]>>>(7-(bi&7)))&1)===1;bi++;}}}
function mk(m){for(var y=0;y<n;y++)for(var x=0;x<n;x++){var v;switch(m){case 0:v=(x+y)%2===0;break;case 1:v=y%2===0;break;case 2:v=x%3===0;break;case 3:v=(x+y)%3===0;break;case 4:v=(Math.floor(x/3)+Math.floor(y/2))%2===0;break;case 5:v=x*y%2+x*y%3===0;break;case 6:v=(x*y%2+x*y%3)%2===0;break;default:v=((x+y)%2+x*y%3)%2===0;}if(v&&!F[y][x])M[y][x]=!M[y][x];}}
function pen(){var s=0,y,x,dk=0;
for(y=0;y<n;y++){var rr=1,cr=1;for(x=0;x<n;x++){if(M[y][x])dk++;
if(x>0){if(M[y][x]===M[y][x-1]){rr++;if(rr===5)s+=3;else if(rr>5)s++;}else rr=1;
if(M[x][y]===M[x-1][y]){cr++;if(cr===5)s+=3;else if(cr>5)s++;}else cr=1;}
if(y>0&&x>0&&M[y][x]===M[y][x-1]&&M[y][x]===M[y-1][x]&&M[y][x]===M[y-1][x-1])s+=3;}}
return s+Math.max(0,Math.ceil(Math.abs(dk*20-n*n*10)/(n*n))-1)*10;}
var best=0,bp=1e9;for(var m=0;m<8;m++){mk(m);fmt(m);var pp=pen();if(pp<bp){bp=pp;best=m;}mk(m);}
mk(best);fmt(best);return{m:M,v:ver};}
/*QR-END*/
var $=function(id){return document.getElementById(id);},q=function(id){return $('qa-'+id);};
var PKG=/^[A-Za-z][\w]*(?:\.[A-Za-z_][\w]*)+$/;
function pIos(s){s=s.trim();if(!s)return'';var m=s.match(/(?:^|\/)id(\d{6,12})/)||s.match(/^(\d{6,12})$/);return m?m[1]:null;}
function pAnd(s){s=s.trim();if(!s)return'';var m=s.match(/[?&]id=([A-Za-z][\w]*(?:\.[A-Za-z_][\w]*)+)/)||s.match(/^([A-Za-z][\w]*(?:\.[A-Za-z_][\w]*)+)$/);return m?m[1]:null;}
function pHw(s){s=s.trim();if(!s)return'';var m=s.match(/(C\d{6,12})/)||s.match(/^(\d{6,12})$/);return m?(m[1].charAt(0)==='C'?m[1]:'C'+m[1]):null;}
function pUrl(s){s=s.trim();if(!s)return'';if(!/^https?:\/\//i.test(s))s='https://'+s;try{var u=new URL(s);return(/^https?:$/.test(u.protocol)&&u.hostname.indexOf('.')>0)?u.href:null;}catch(e){return null;}}
function cmp(c){return c&&/^[\w-]{1,40}$/.test(c)?c:'';}
function uIos(i,c){return'https://apps.apple.com/app/id'+i+(c?'?ct='+c:'');}
function uAnd(a,c){return'https://play.google.com/store/apps/details?id='+a+(c?'&referrer='+encodeURIComponent('utm_source=qr&utm_medium=qrcode&utm_campaign='+c):'');}
function uHw(h){return'https://appgallery.huawei.com/app/'+h;}
function uWeb(f,c){if(!c)return f;try{var u=new URL(f);u.searchParams.set('utm_source','qr');u.searchParams.set('utm_medium','qrcode');u.searchParams.set('utm_campaign',c);return u.href;}catch(e){return f;}}
function ln(t,h){var a=document.createElement('a');a.textContent=t;a.href=h;a.target='_blank';a.rel='noopener';return a;}
function showTool(){document.documentElement.style.visibility='';}
/* โหมดเปิดลิงก์จาก QR อัจฉริยะ */
function landing(I,A,Hh,f,c,name){
var o=document.createElement('div');o.style.cssText='position:fixed;left:0;top:0;right:0;bottom:0;z-index:99999;background:#fff;color:#111;display:flex;align-items:center;justify-content:center;padding:20px;font-family:sans-serif';
var b=document.createElement('div');b.style.cssText='max-width:360px;width:100%;text-align:center';
var h=document.createElement('h2');h.textContent=name||'ดาวน์โหลดแอป';h.style.cssText='margin:0 0 16px;font-size:22px';b.appendChild(h);
function btn(t,u){var a=ln(t,u);a.style.cssText='display:block;margin:10px 0;padding:12px;border-radius:10px;background:#2563eb;color:#fff;text-decoration:none;font-size:16px';b.appendChild(a);}
if(I)btn('ดาวน์โหลดบน App Store',uIos(I,c));
if(A)btn('ดาวน์โหลดบน Google Play',uAnd(A,c));
if(Hh)btn('ดาวน์โหลดบน AppGallery',uHw(Hh));
if(f)btn('เปิดเว็บไซต์ '+new URL(f).hostname,uWeb(f,c));
o.appendChild(b);document.body.appendChild(o);showTool();}
function route(){
var H=new URLSearchParams(location.hash.slice(1)),I=H.get('i')||'',A=H.get('a')||'',Hh=H.get('h')||'',c=cmp(H.get('c')||''),f=pUrl(H.get('f')||''),name=(H.get('n')||'').slice(0,24);
if(!/^\d{6,12}$/.test(I))I='';if(!PKG.test(A))A='';if(!/^C\d{6,12}$/.test(Hh))Hh='';
if(!I&&!A&&!Hh)return false;
var ua=navigator.userAgent,ios=/iPhone|iPad|iPod/.test(ua)||(navigator.platform==='MacIntel'&&navigator.maxTouchPoints>1),hw=/HUAWEI|HONOR|HMSCore|HarmonyOS/i.test(ua),an=/Android/i.test(ua)||hw,t='';
if(ios&&I)t=uIos(I,c);else if(hw&&Hh)t=uHw(Hh);else if(an&&A)t=uAnd(A,c);
if(t){location.replace(t);return true;}
landing(I,A,Hh,f,c,name);return true;}
/* โหมดสร้าง QR */
var cv=q('cv'),last=null;
function rr(x,px,py,s,r){x.beginPath();x.moveTo(px+r,py);x.arcTo(px+s,py,px+s,py+s,r);x.arcTo(px+s,py+s,px,py+s,r);x.arcTo(px,py+s,px,py,r);x.arcTo(px,py,px+s,py,r);x.closePath();x.fill();}
function isF(u,y,n){return(u<7&&y<7)||(u>=n-7&&y<7)||(u<7&&y>=n-7);}
function rn(c,m,o,S){var n=m.length,k=n+8,cs=Math.max(1,Math.floor(S/k)),W=cs*k,lh=o.label?Math.round(W*0.13):0,x=c.getContext('2d');
c.width=W;c.height=W+lh;x.fillStyle=o.bg;x.fillRect(0,0,W,W+lh);x.fillStyle=o.fg;
for(var y=0;y<n;y++)for(var u=0;u<n;u++)if(m[y][u]){var px=(u+4)*cs,py=(y+4)*cs;if(o.shape==='round'&&!isF(u,y,n))rr(x,px,py,cs,cs*0.3);else x.fillRect(px,py,cs,cs);}
if(lh){var fs=Math.round(lh*0.45);x.font='bold '+fs+'px sans-serif';while(x.measureText(o.label).width>W*0.92&&fs>8){fs-=2;x.font='bold '+fs+'px sans-serif';}x.textAlign='center';x.textBaseline='middle';x.fillText(o.label,W/2,W+lh*0.42);}}
function esc(s){return s.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');}
function svgOut(m,o){var n=m.length,k=n+8,lh=o.label?k*0.13:0,d='';
for(var y=0;y<n;y++)for(var u=0;u<n;u++)if(m[y][u]){if(o.shape==='round'&&!isF(u,y,n))d+='<rect x="'+(u+4)+'" y="'+(y+4)+'" width="1" height="1" rx="0.3"/>';else d+='<path d="M'+(u+4)+' '+(y+4)+'h1v1h-1z"/>';}
return'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 '+k+' '+(k+lh)+'" width="1024" height="'+Math.round(1024*(k+lh)/k)+'"><rect width="'+k+'" height="'+(k+lh)+'" fill="'+o.bg+'"/><g fill="'+o.fg+'">'+d+'</g>'+(lh?'<text x="'+k/2+'" y="'+(k+lh*0.45)+'" text-anchor="middle" dominant-baseline="middle" font-family="sans-serif" font-weight="bold" font-size="'+lh*0.45+'" fill="'+o.fg+'">'+esc(o.label)+'</text>':'')+'</svg>';}
function lum(h){var f=function(v){v=v/255;return v<=0.03928?v/12.92:Math.pow((v+0.055)/1.055,2.4);};return 0.2126*f(parseInt(h.substr(1,2),16))+0.7152*f(parseInt(h.substr(3,2),16))+0.0722*f(parseInt(h.substr(5,2),16));}
function opt(){return{fg:q('fg').value,bg:q('bg').value,shape:q('shape').value,label:q('lbl').value==='1'?q('lbltxt').value.trim():''};}
function gen(){
var er=[],name=q('name').value.trim().slice(0,24),i=pIos(q('ios').value),a=pAnd(q('and').value),h=pHw(q('hw').value),f=pUrl(q('fb').value),c=cmp(q('cmp').value.trim().replace(/\s+/g,'-').replace(/[^\w-]/g,'').slice(0,40)),mode=q('mode').value,pay='',links=[];
if(i===null)er.push('ลิงก์ App Store หรือ App ID ไม่ถูกต้อง');
if(a===null)er.push('ลิงก์ Google Play หรือ Package name ไม่ถูกต้อง');
if(h===null)er.push('ลิงก์ AppGallery ไม่ถูกต้อง');
if(f===null)er.push('เว็บไซต์สำรองไม่ถูกต้อง');
if(!er.length){
if(!i&&!a&&!h)er.push('กรอกลิงก์ร้านค้าอย่างน้อย 1 ช่อง เพื่อสร้าง QR Code');
else if(mode==='ios'&&!i)er.push('โหมดนี้ต้องกรอก App Store');
else if(mode==='android'&&!a)er.push('โหมดนี้ต้องกรอก Google Play');
else if(mode==='huawei'&&!h)er.push('โหมดนี้ต้องกรอก AppGallery');}
var msg=q('msg'),box=q('btns'),lk=q('links');lk.textContent='';
if(er.length){msg.className='qa-msg'+((i||a||h||f)?' qa-err':'');msg.textContent=er.join(' / ');box.style.display='none';last=null;cv.getContext('2d').clearRect(0,0,cv.width,cv.height);return;}
if(i)links.push(['App Store',uIos(i,c)]);if(a)links.push(['Google Play',uAnd(a,c)]);if(h)links.push(['AppGallery',uHw(h)]);if(f)links.push(['เว็บไซต์',uWeb(f,c)]);
if(mode==='smart'){var p='';if(i)p+='&i='+i;if(a)p+='&a='+a;if(h)p+='&h='+h;if(f)p+='&f='+encodeURIComponent(f).replace(/%3A/g,':').replace(/%2F/g,'/');if(c)p+='&c='+c;if(name)p+='&n='+encodeURIComponent(name);pay=location.origin+location.pathname+'#'+p.slice(1);}
else if(mode==='ios')pay=uIos(i,c);else if(mode==='android')pay=uAnd(a,c);else pay=uHw(h);
var r=qrEnc(pay,+q('ecl').value);
if(!r){msg.className='qa-msg qa-err';msg.textContent='ข้อมูลยาวเกินไป กรุณาลดความยาวข้อมูล';box.style.display='none';return;}
var o=opt();last={m:r.m,pay:pay,o:o};rn(cv,r.m,o,640);
var n=r.m.length,t='เวอร์ชัน QR '+r.v+' ('+n+'x'+n+' โมดูล) · ลิงก์ยาว '+pay.length+' ตัวอักษร · แนะนำพิมพ์ไม่เล็กกว่า ≈ '+Math.ceil((n+8)*0.07*2)/2+' ซม.',w=[];
var l1=lum(o.fg),l2=lum(o.bg);if((Math.max(l1,l2)+0.05)/(Math.min(l1,l2)+0.05)<3)w.push('คอนทราสต์ต่ำ อาจสแกนยาก');else if(l1>l2)w.push('สีหน้าอ่อนกว่าพื้นหลัง บางแอปอาจสแกนไม่ได้');
if(pay.length>180)w.push('ข้อมูลเยอะ QR จะหนาแน่น ควรพิมพ์ให้ใหญ่ขึ้น');
msg.className='qa-msg'+(w.length?' qa-warn':'');msg.textContent=t+(w.length?' · ⚠ '+w.join(', '):'');box.style.display='flex';
lk.appendChild(document.createTextNode('ทดสอบลิงก์ปลายทาง:'));links.forEach(function(x){lk.appendChild(ln(x[0]+': '+x[1],x[1]));});}
function dl(u,n){var a=document.createElement('a');a.href=u;a.download=n;document.body.appendChild(a);a.click();a.parentNode.removeChild(a);}
q('png').addEventListener('click',function(){if(!last)return;var t=document.createElement('canvas');rn(t,last.m,last.o,+q('size').value);t.toBlob(function(b){var u=URL.createObjectURL(b);dl(u,'qr-code-app-download.png');setTimeout(function(){URL.revokeObjectURL(u);},3000);});});
q('svg').addEventListener('click',function(){if(!last)return;var u=URL.createObjectURL(new Blob([svgOut(last.m,last.o)],{type:'image/svg+xml'}));dl(u,'qr-code-app-download.svg');setTimeout(function(){URL.revokeObjectURL(u);},3000);});
q('copy').addEventListener('click',function(){if(!last)return;try{navigator.clipboard.writeText(last.pay);}catch(e){window.prompt('คัดลอกลิงก์',last.pay);}});
['name','ios','and','hw','fb','cmp','mode','fg','bg','shape','ecl','size','lbl','lbltxt'].forEach(function(id){q(id).addEventListener('input',gen);q(id).addEventListener('change',gen);});
window.addEventListener('hashchange',function(){if(!document.querySelector('[data-qa-landing]')&&/[#&](i|a|h)=/.test(location.hash))location.reload();});
try{if(!route()){showTool();gen();}}catch(e){showTool();try{gen();}catch(e2){}}
})();
</script>

## วิธีใช้งานเครื่องมือสร้าง QR Code ดาวน์โหลดแอป

1. **วางลิงก์แอป** ในช่อง App Store (iPhone/iPad) และ Google Play (Android) จะวางลิงก์เต็ม หรือกรอกเพียง App ID / Package name ก็ได้ ระบบดึงรหัสออกมาให้อัตโนมัติ
2. **เลือกประเภท QR** เลือก "อัจฉริยะ" หากต้องการ QR เดียวที่เปิดร้านค้าให้ตรงกับมือถือของผู้สแกน หรือเลือก "แบบตรง" หากต้องการลิงก์ร้านเดียวที่ไม่ผ่านหน้านี้
3. **เพิ่มตัวเลือกเสริม** เช่น AppGallery ของ Huawei เว็บไซต์สำรองสำหรับผู้ใช้คอมพิวเตอร์ และชื่อแคมเปญเพื่อติดตามยอดดาวน์โหลดจากสื่อแต่ละชิ้น
4. **ปรับแต่งหน้าตา** เลือกสี รูปทรงจุด ระดับแก้ไขข้อผิดพลาด และข้อความใต้ QR
5. **ทดสอบก่อนใช้จริง** สแกนด้วยมือถือทั้ง iPhone และ Android หรือกดลิงก์ปลายทางที่แสดงใต้ QR เพื่อตรวจสอบ
6. **ดาวน์โหลดไฟล์** เลือก PNG สำหรับใช้งานทั่วไป หรือ SVG สำหรับงานพิมพ์ขนาดใหญ่ที่ต้องการความคมชัดไม่จำกัด

## อธิบายคำศัพท์

- **App Store** – ร้านแอปของ Apple สำหรับ iPhone และ iPad
- **Google Play** – ร้านแอปหลักของอุปกรณ์ Android
- **Huawei AppGallery** – ร้านแอปของ Huawei สำหรับมือถือรุ่นที่ไม่มี Google Play
- **App ID** – เลขประจำแอปบน App Store ปรากฏท้ายลิงก์หลังตัวอักษร id เช่น id443904275
- **Package name** – ชื่อประจำแอปบน Android ที่ปรากฏในลิงก์หลัง id= เช่น com.example.app
- **QR แบบอัจฉริยะ** – QR เดียวที่ตรวจชนิดมือถือของผู้สแกนแล้วเปิดร้านค้าที่ถูกต้องให้ ข้อมูลทั้งหมดอยู่ในลิงก์ ไม่มีการเก็บข้อมูลบนเซิร์ฟเวอร์ แต่ต้องมีหน้านี้เปิดให้บริการอยู่
- **QR แบบตรง** – QR ที่ฝังลิงก์ร้านค้าโดยตรง ใช้งานได้ถาวรโดยไม่พึ่งเว็บไซต์ใด แต่รองรับร้านค้าเดียว
- **เว็บไซต์สำรอง (Fallback)** – ลิงก์ที่แสดงให้ผู้สแกนจากคอมพิวเตอร์หรืออุปกรณ์ที่ไม่มีร้านค้าตรงกัน
- **UTM / ชื่อแคมเปญ** – ป้ายกำกับที่ใช้บอกว่าผู้ใช้มาจากสื่อใด เช่น โปสเตอร์หรือใบปลิว เพื่อวัดผลใน Google Play และ App Store
- **ระดับแก้ไขข้อผิดพลาด (L/M/Q/H)** – ความสามารถของ QR ในการอ่านได้แม้เสียหายบางส่วน ยิ่งสูง QR ยิ่งหนาแน่น
- **Quiet zone** – ขอบว่างรอบ QR ที่จำเป็นต่อการสแกน เครื่องมือนี้เว้นไว้ให้อัตโนมัติ
- **คอนทราสต์** – ความต่างของสี QR กับพื้นหลัง ควรเป็นสีเข้มบนพื้นสว่างเพื่อให้สแกนง่าย
- **PNG** – ไฟล์ภาพทั่วไป เหมาะกับเว็บและโซเชียล
- **SVG** – ไฟล์เวกเตอร์ ขยายได้ไม่แตก เหมาะกับงานพิมพ์

## ฟีเจอร์เด่น

- QR เดียวรองรับทั้ง iPhone, Android และ Huawei
- วางลิงก์ร้านค้าได้ทันที ระบบตรวจสอบและแจ้งเตือนเมื่อลิงก์ไม่ถูกต้อง
- หน้าสำรองสำหรับผู้สแกนจากคอมพิวเตอร์ พร้อมปุ่มเลือกร้านค้า
- เพิ่ม UTM ให้ลิงก์ร้านค้าอัตโนมัติ เพื่อติดตามแหล่งที่มา
- ปรับสี รูปทรงจุด และข้อความใต้ QR ได้
- แจ้งเตือนคอนทราสต์ต่ำและแนะนำขนาดพิมพ์ขั้นต่ำ
- ดาวน์โหลด PNG ได้สูงสุด 4096 px และ SVG
- ประมวลผลในเบราว์เซอร์ทั้งหมด ไม่ต้องสมัครสมาชิก ไม่มีลายน้ำ

## คำถามที่พบบ่อย

**QR Code ดาวน์โหลดแอปใช้ฟรีหรือไม่?**
ใช้ฟรี ไม่ต้องลงทะเบียน และดาวน์โหลดได้ไม่จำกัด

**QR แบบอัจฉริยะจะหมดอายุไหม?**
ไม่มีวันหมดอายุตามเวลา แต่ลิงก์ชี้มาที่หน้านี้ หากต้องการ QR ถาวรที่ไม่พึ่งเว็บไซต์ ให้เลือกแบบตรง

**เครื่องมือนี้เก็บข้อมูลแอปของฉันหรือไม่?**
ไม่เก็บ การสร้าง QR เกิดขึ้นในเบราว์เซอร์ของคุณ ข้อมูลที่กรอกจะไม่ถูกส่งไปที่เซิร์ฟเวอร์

**ควรพิมพ์ QR ขนาดเท่าไร?**
เครื่องมือจะแนะนำขนาดขั้นต่ำให้ตามความหนาแน่นของ QR โดยทั่วไปไม่ควรเล็กกว่า 2-3 ซม. และควรทดสอบสแกนจากงานพิมพ์จริงก่อน

**ทำไมสแกนไม่ติด?**
ส่วนใหญ่เกิดจากคอนทราสต์ต่ำ สีหน้าอ่อนกว่าพื้นหลัง ขนาดเล็กเกินไป หรือพื้นผิวสะท้อนแสง ลองใช้สีดำบนพื้นขาวและเพิ่มขนาด