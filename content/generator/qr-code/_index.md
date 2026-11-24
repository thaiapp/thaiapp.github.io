---
title: สร้าง QR Code ออนไลน์ ฟรี
h1: สร้าง QR Code ออนไลน์
description: 'สร้าง QR Code ออนไลน์ฟรี รองรับ URL, LINE, WhatsApp, PromptPay, Wi-Fi ใส่โลโก้ ปรับสี ดาวน์โหลด PNG, SVG, PDF ไม่ต้องสมัคร ไม่มีลายน้ำ ใช้ได้ในเบราว์เซอร์'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-23T09:00:00+07:00'
weight: 149
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- สร้าง QR Code ออนไลน์
- สุ่มและคำนวณ
---
<style>
.qrx{--b:rgba(128,128,128,.35);margin:0 0 2rem;font-size:15px}
.qrx *{box-sizing:border-box}
.qrx [hidden]{display:none!important}
.qrx-tabs{display:flex;flex-wrap:wrap;gap:6px;margin-bottom:14px}
.qrx-tabs button{padding:7px 12px;border:1px solid var(--b);border-radius:999px;background:transparent;color:inherit;cursor:pointer;font:inherit}
.qrx-tabs button[aria-selected=true]{background:#1d4ed8;border-color:#1d4ed8;color:#fff}
.qrx-grid{display:grid;grid-template-columns:minmax(0,1.2fr) minmax(0,1fr);gap:20px;align-items:start}
.qrx-right{position:sticky;top:12px}
.qrx label{display:block;margin:0 0 10px;font-weight:600}
.qrx label input[type=text],.qrx label input[type=number],.qrx label input:not([type]),.qrx select,.qrx textarea{display:block;width:100%;margin-top:4px;padding:8px 10px;border:1px solid var(--b);border-radius:8px;background:transparent;color:inherit;font:inherit;font-weight:400}
.qrx label input[type=color]{display:block;width:100%;height:36px;margin-top:4px;padding:2px;border:1px solid var(--b);border-radius:8px;background:transparent}
.qrx label input[type=range],.qrx label input[type=file]{display:block;width:100%;margin-top:6px}
.qrx .qrx-chk{display:flex;align-items:center;gap:8px;font-weight:600}
.qrx-row{display:grid;grid-template-columns:repeat(auto-fit,minmax(130px,1fr));gap:0 12px;align-items:end}
.qrx-box{border:1px solid var(--b);border-radius:10px;padding:10px 14px;margin:14px 0}
.qrx-box summary{cursor:pointer;font-weight:700}
.qrx button{font:inherit}
.qrx-row button,.qrx-btns button,.qrx-box button{padding:8px 14px;border:1px solid var(--b);border-radius:8px;background:transparent;color:inherit;cursor:pointer;margin:0 6px 10px 0}
.qrx-btns button{background:#1d4ed8;border-color:#1d4ed8;color:#fff;font-weight:600}
.qrx button:disabled{opacity:.45;cursor:not-allowed}
.qrx-preview{background:#fff;border:1px solid var(--b);border-radius:12px;padding:14px;min-height:260px;display:flex;align-items:center;justify-content:center}
.qrx-preview svg{display:block;width:100%;max-width:340px;height:auto}
.qrx-ph{color:#666;text-align:center;margin:0}
.qrx-note p{margin:6px 0;color:#b45309;font-size:14px}
.qrx-small{font-size:13px;opacity:.8;margin:8px 0}
.qrx video{width:100%;max-width:360px;border-radius:8px}
.qrx-btns{margin-top:10px}
@media(max-width:760px){.qrx-grid{grid-template-columns:minmax(0,1fr)}.qrx-right{position:static;order:-1}}
</style>
<div class="qrx" id="qrx">
<div class="qrx-tabs" id="qrxTabs" role="tablist" aria-label="ประเภท QR Code"></div>
<div class="qrx-grid">
<div class="qrx-left">
<div id="qrxPanels"></div>
<details class="qrx-box" open><summary>ปรับแต่งรูปแบบ</summary>
<div class="qrx-row">
<label>สี QR<input type="color" id="c_fg" value="#111111"></label>
<label>สีพื้นหลัง<input type="color" id="c_bg" value="#ffffff"></label>
<label class="qrx-chk"><input type="checkbox" id="c_grad"> ไล่เฉดสี</label>
<label>สีที่ 2 (ไล่เฉด)<input type="color" id="c_fg2" value="#1d4ed8"></label>
</div>
<div class="qrx-row">
<label>รูปแบบจุด<select id="c_mod"><option value="square">สี่เหลี่ยม</option><option value="round">สี่เหลี่ยมมน</option><option value="dot">วงกลม</option></select></label>
<label>รูปแบบมุม<select id="c_eye"><option value="square">สี่เหลี่ยม</option><option value="round">สี่เหลี่ยมมน</option></select></label>
<label>ขอบว่าง (โมดูล)<input type="number" id="c_margin" min="0" max="10" value="4"></label>
<label>ความทนทาน<select id="c_ecl"><option value="0">L (7%)</option><option value="1" selected>M (15%)</option><option value="2">Q (25%)</option><option value="3">H (30%)</option></select></label>
</div>
<div class="qrx-row">
<label>โลโก้กลาง QR<input type="file" id="c_logo" accept="image/*"></label>
<label>ขนาดโลโก้<input type="range" id="c_logoPct" min="10" max="25" value="18"></label>
<div><button type="button" id="c_logoX">ลบโลโก้</button></div>
</div>
<div class="qrx-row">
<label class="qrx-chk"><input type="checkbox" id="c_frame"> กรอบข้อความ</label>
<label>ข้อความในกรอบ<input type="text" id="c_frameText" maxlength="24" value="สแกนเลย"></label>
<div><button type="button" id="c_reset">คืนค่าเริ่มต้น</button></div>
</div>
</details>
<details class="qrx-box qrx-nostate"><summary>สร้างหลาย QR Code พร้อมกัน (ZIP)</summary>
<label>ใส่ข้อมูล 1 บรรทัดต่อ 1 QR Code (สูงสุด 100 บรรทัด)<textarea id="k_in" rows="5" placeholder="https://example.com/a&#10;https://example.com/b"></textarea></label>
<button type="button" id="k_go">สร้างและดาวน์โหลด ZIP</button><span id="k_st" class="qrx-small"></span>
</details>
<details class="qrx-box qrx-nostate"><summary>อ่าน/สแกน QR Code</summary>
<div class="qrx-row"><label>อัปโหลดรูป QR Code<input type="file" id="s_file" accept="image/*"></label><div><button type="button" id="s_cam">เปิดกล้อง</button><button type="button" id="s_stop" hidden>หยุดกล้อง</button></div></div>
<video id="s_vid" playsinline muted hidden></video>
<div id="s_out" class="qrx-small"></div>
</details>
</div>
<div class="qrx-right">
<div id="qrxPreview" class="qrx-preview" aria-live="polite"></div>
<div id="qrxNote" class="qrx-note"></div>
<div id="qrxPx" class="qrx-small"></div>
<div class="qrx-row">
<label>ขนาดพิมพ์ (ซม.)<input type="number" id="c_cm" min="1" max="50" step="0.5" value="5"></label>
<label>ความละเอียด (DPI)<select id="c_dpi"><option value="150">150</option><option value="300" selected>300</option><option value="600">600</option></select></label>
</div>
<div class="qrx-btns"><button type="button" id="b_png" disabled>ดาวน์โหลด PNG</button><button type="button" id="b_svg" disabled>SVG</button><button type="button" id="b_pdf" disabled>PDF</button><button type="button" id="b_copy" disabled>คัดลอกรูป</button></div>
<details class="qrx-box qrx-nostate"><summary>ข้อมูลที่เข้ารหัสใน QR Code</summary><textarea id="qrxData" rows="3" readonly></textarea></details>
</div>
</div>
</div>

<script>
var QRC=(function(){
var ECC=[
[-1,7,10,15,20,26,18,20,24,30,18,20,24,26,30,22,24,28,30,28,28,28,28,30,30,26,28,30,30,30,30,30,30,30,30,30,30,30,30,30,30],
[-1,10,16,26,18,24,16,18,22,22,26,30,22,22,24,24,28,28,26,26,26,26,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28],
[-1,13,22,18,26,18,24,18,22,20,24,28,26,24,20,30,24,28,28,26,30,28,30,30,30,30,28,30,30,30,30,30,30,30,30,30,30,30,30,30,30],
[-1,17,28,22,16,22,28,26,26,24,28,24,28,22,24,24,30,28,28,26,28,30,24,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30]];
var BLK=[
[-1,1,1,1,1,1,2,2,2,2,4,4,4,4,4,6,6,6,6,7,8,8,9,9,10,12,12,12,13,14,15,16,17,18,19,19,20,21,22,24,25],
[-1,1,1,1,2,2,4,4,4,5,5,5,8,9,9,10,10,11,13,14,16,17,17,18,20,21,23,25,26,28,29,31,33,35,37,38,40,43,45,47,49],
[-1,1,1,2,2,4,4,6,6,8,8,8,10,12,16,12,17,16,18,21,20,23,23,25,27,29,34,34,35,38,40,43,45,48,51,53,56,59,62,65,68],
[-1,1,1,2,4,4,4,5,6,8,8,11,11,16,16,18,16,19,21,25,25,25,34,30,32,35,37,40,42,45,48,51,54,57,60,63,66,70,74,77,81]];
var FMT=[1,0,3,2];
function utf8(s){return Array.prototype.slice.call(new TextEncoder().encode(s));}
function rawModules(v){var r=(16*v+128)*v+64;if(v>=2){var a=Math.floor(v/7)+2;r-=(25*a-10)*a-55;if(v>=7)r-=36;}return r;}
function dataCw(v,e){return Math.floor(rawModules(v)/8)-ECC[e][v]*BLK[e][v];}
function gmul(x,y){var z=0;for(var i=7;i>=0;i--){z=(z<<1)^((z>>>7)*0x11D);z^=((y>>>i)&1)*x;}return z;}
function rsDiv(deg){var r=[],i,j;for(i=0;i<deg;i++)r.push(0);r[deg-1]=1;var root=1;for(i=0;i<deg;i++){for(j=0;j<deg;j++){r[j]=gmul(r[j],root);if(j+1<deg)r[j]^=r[j+1];}root=gmul(root,2);}return r;}
function rsRem(data,div){var r=div.map(function(){return 0;});data.forEach(function(b){var f=b^r.shift();r.push(0);div.forEach(function(c,i){r[i]^=gmul(c,f);});});return r;}
function alignPos(v){if(v===1)return[];var n=Math.floor(v/7)+2;var step=v===32?26:Math.ceil((v*4+4)/(n*2-2))*2;var r=[6];for(var p=v*4+10;r.length<n;p-=step)r.splice(1,0,p);return r;}
function penalty(m,n){
 var res=0,x,y,k,run,dark=0;
 for(var pass=0;pass<2;pass++){
  for(y=0;y<n;y++){
   run=1;
   var line=[];
   for(x=0;x<n;x++){var c=pass?m[x][y]:m[y][x];line.push(c);if(c)dark++;if(x>0){if(c===line[x-1]){run++;}else{if(run>=5)res+=3+run-5;run=1;}}}
   if(run>=5)res+=3+run-5;
   for(x=0;x+11<=n;x++){
    var a=[1,0,1,1,1,0,1,0,0,0,0],b=[0,0,0,0,1,0,1,1,1,0,1],ma=true,mb=true;
    for(k=0;k<11;k++){if(line[x+k]!==a[k])ma=false;if(line[x+k]!==b[k])mb=false;}
    if(ma)res+=40;if(mb)res+=40;
   }
  }
 }
 dark=dark/2;
 for(y=0;y<n-1;y++)for(x=0;x<n-1;x++){var c0=m[y][x];if(c0===m[y][x+1]&&c0===m[y+1][x]&&c0===m[y+1][x+1])res+=3;}
 var total=n*n;
 res+=(Math.ceil(Math.abs(dark*20-total*10)/total)-1)*10;
 return res;
}
function encode(text,e){
 var data=utf8(text),v,cc;
 for(v=1;;v++){if(v>40)throw new Error('ข้อมูลยาวเกินไป');cc=v<10?8:16;if(4+cc+data.length*8<=dataCw(v,e)*8)break;}
 var bits=[];
 function put(val,len){for(var i=len-1;i>=0;i--)bits.push((val>>>i)&1);}
 put(4,4);put(data.length,cc);data.forEach(function(b){put(b,8);});
 var cap=dataCw(v,e)*8;
 put(0,Math.min(4,cap-bits.length));
 put(0,(8-bits.length%8)%8);
 for(var pad=0xEC;bits.length<cap;pad^=0xEC^0x11)put(pad,8);
 var cw=[],i,j;
 for(i=0;i<bits.length;i+=8){var t=0;for(j=0;j<8;j++)t=(t<<1)|bits[i+j];cw.push(t);}
 var nb=BLK[e][v],eccLen=ECC[e][v],raw=Math.floor(rawModules(v)/8),nShort=nb-raw%nb,shortLen=Math.floor(raw/nb);
 var blocks=[],div=rsDiv(eccLen),k=0;
 for(i=0;i<nb;i++){
  var dat=cw.slice(k,k+shortLen-eccLen+(i<nShort?0:1));k+=dat.length;
  var ecc=rsRem(dat,div);
  if(i<nShort)dat.push(0);
  blocks.push(dat.concat(ecc));
 }
 var all=[];
 for(i=0;i<blocks[0].length;i++)blocks.forEach(function(bl,jj){if(i!==shortLen-eccLen||jj>=nShort)all.push(bl[i]);});
 var n=v*4+17,m=[],fn=[];
 for(i=0;i<n;i++){m.push([]);fn.push([]);for(j=0;j<n;j++){m[i].push(0);fn[i].push(0);}}
 function setFn(x,y,d){m[y][x]=d?1:0;fn[y][x]=1;}
 function gb(x,i){return(x>>>i)&1;}
 function finder(cx,cy){for(var dy=-4;dy<=4;dy++)for(var dx=-4;dx<=4;dx++){var dist=Math.max(Math.abs(dx),Math.abs(dy)),xx=cx+dx,yy=cy+dy;if(xx>=0&&xx<n&&yy>=0&&yy<n)setFn(xx,yy,dist!==2&&dist!==4);}}
 function align(cx,cy){for(var dy=-2;dy<=2;dy++)for(var dx=-2;dx<=2;dx++)setFn(cx+dx,cy+dy,Math.max(Math.abs(dx),Math.abs(dy))!==1);}
 function fmt(mask){
  var d=(FMT[e]<<3)|mask,r=d;
  for(var q=0;q<10;q++)r=(r<<1)^((r>>>9)*0x537);
  var b=((d<<10)|r)^0x5412,q2;
  for(q2=0;q2<=5;q2++)setFn(8,q2,gb(b,q2));
  setFn(8,7,gb(b,6));setFn(8,8,gb(b,7));setFn(7,8,gb(b,8));
  for(q2=9;q2<15;q2++)setFn(14-q2,8,gb(b,q2));
  for(q2=0;q2<8;q2++)setFn(n-1-q2,8,gb(b,q2));
  for(q2=8;q2<15;q2++)setFn(8,n-15+q2,gb(b,q2));
  setFn(8,n-8,1);
 }
 for(i=0;i<n;i++){setFn(6,i,i%2===0);setFn(i,6,i%2===0);}
 finder(3,3);finder(n-4,3);finder(3,n-4);
 var ap=alignPos(v),na=ap.length;
 for(i=0;i<na;i++)for(j=0;j<na;j++){if(!((i===0&&j===0)||(i===0&&j===na-1)||(i===na-1&&j===0)))align(ap[i],ap[j]);}
 fmt(0);
 if(v>=7){var r2=v;for(i=0;i<12;i++)r2=(r2<<1)^((r2>>>11)*0x1F25);var vb=(v<<12)|r2;for(i=0;i<18;i++){var bt=gb(vb,i),a=n-11+i%3,b2=Math.floor(i/3);setFn(a,b2,bt);setFn(b2,a,bt);}}
 var idx=0;
 for(var right=n-1;right>=1;right-=2){
  if(right===6)right=5;
  for(var vert=0;vert<n;vert++)for(j=0;j<2;j++){
   var x=right-j,up=((right+1)&2)===0,y=up?n-1-vert:vert;
   if(!fn[y][x]&&idx<all.length*8){m[y][x]=gb(all[idx>>>3],7-(idx&7));idx++;}
  }
 }
 function mask(mk){
  for(var y=0;y<n;y++)for(var x=0;x<n;x++){
   var inv;
   switch(mk){
    case 0:inv=(x+y)%2===0;break;case 1:inv=y%2===0;break;case 2:inv=x%3===0;break;case 3:inv=(x+y)%3===0;break;
    case 4:inv=(Math.floor(x/3)+Math.floor(y/2))%2===0;break;case 5:inv=x*y%2+x*y%3===0;break;
    case 6:inv=(x*y%2+x*y%3)%2===0;break;default:inv=((x+y)%2+x*y%3)%2===0;
   }
   if(!fn[y][x]&&inv)m[y][x]^=1;
  }
 }
 var best=0,bp=1e9;
 for(var mk=0;mk<8;mk++){mask(mk);fmt(mk);var p=penalty(m,n);if(p<bp){bp=p;best=mk;}mask(mk);}
 mask(best);fmt(best);
 return{size:n,version:v,m:m};
}
return{encode:encode};
})();
var H={
esc:function(s){return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g,'&quot;');},
hex:function(c,d){return /^#[0-9a-f]{6}$/i.test(c)?c:d;},
lum:function(c){var r=[1,3,5].map(function(i){var v=parseInt(c.substr(i,2),16)/255;return v<=0.03928?v/12.92:Math.pow((v+0.055)/1.055,2.4);});return 0.2126*r[0]+0.7152*r[1]+0.0722*r[2];},
contrast:function(a,b){var x=H.lum(a),y=H.lum(b);return (Math.max(x,y)+0.05)/(Math.min(x,y)+0.05);},
crc16:function(s){var c=0xFFFF;for(var i=0;i<s.length;i++){c^=s.charCodeAt(i)<<8;for(var k=0;k<8;k++)c=(c&0x8000)?((c<<1)^0x1021)&0xFFFF:(c<<1)&0xFFFF;}return ('0000'+c.toString(16).toUpperCase()).slice(-4);},
promptpay:function(id,amt){
 var d=String(id).replace(/\D/g,''),acc;
 if(d.length===10&&d.charAt(0)==='0')acc='01130066'+d.substr(1);
 else if(d.length===11&&d.substr(0,2)==='66')acc='0113'+'00'+d;
 else if(d.length===13)acc='0213'+d;
 else if(d.length===15)acc='0315'+d;
 else return '';
 var a=amt?parseFloat(amt):0,s='000201'+(a>0?'010212':'010211');
 var m='0016A000000677010111'+acc;
 s+='29'+('0'+m.length).slice(-2)+m+'5303764';
 if(a>0){var t=a.toFixed(2);s+='54'+('0'+t.length).slice(-2)+t;}
 s+='5802TH6304';
 return s+H.crc16(s);
},
wesc:function(s){return String(s).replace(/([\\;,:"])/g,'\\$1');},
vesc:function(s){return String(s).replace(/\\/g,'\\\\').replace(/\n/g,'\\n').replace(/([;,])/g,'\\$1');},
crc32:function(b){var t=H.ct;if(!t){t=H.ct=[];for(var n=0;n<256;n++){var c=n;for(var k=0;k<8;k++)c=c&1?0xEDB88320^(c>>>1):c>>>1;t[n]=c>>>0;}}var c2=0xFFFFFFFF;for(var i=0;i<b.length;i++)c2=t[(c2^b[i])&255]^(c2>>>8);return (c2^0xFFFFFFFF)>>>0;},
zip:function(files){
 var enc=new TextEncoder(),ch=[],cd=[],off=0,cds=0;
 files.forEach(function(f){
  var nm=enc.encode(f.name),crc=H.crc32(f.data),sz=f.data.length;
  var h=new DataView(new ArrayBuffer(30));h.setUint32(0,0x04034b50,true);h.setUint16(4,20,true);h.setUint16(6,0x0800,true);h.setUint16(12,0x21,true);h.setUint32(14,crc,true);h.setUint32(18,sz,true);h.setUint32(22,sz,true);h.setUint16(26,nm.length,true);
  ch.push(new Uint8Array(h.buffer),nm,f.data);
  var c=new DataView(new ArrayBuffer(46));c.setUint32(0,0x02014b50,true);c.setUint16(4,20,true);c.setUint16(6,20,true);c.setUint16(8,0x0800,true);c.setUint16(14,0x21,true);c.setUint32(16,crc,true);c.setUint32(20,sz,true);c.setUint32(24,sz,true);c.setUint16(28,nm.length,true);c.setUint32(42,off,true);
  cd.push(new Uint8Array(c.buffer),nm);cds+=46+nm.length;off+=30+nm.length+sz;
 });
 var e=new DataView(new ArrayBuffer(22));e.setUint32(0,0x06054b50,true);e.setUint16(8,files.length,true);e.setUint16(10,files.length,true);e.setUint32(12,cds,true);e.setUint32(16,off,true);
 return new Blob(ch.concat(cd,[new Uint8Array(e.buffer)]),{type:'application/zip'});
},
pdf:function(jpg,pw,ph,wPt,hPt){
 var enc=new TextEncoder(),parts=[],offs=[],len=0;
 function add(x){var b=typeof x==='string'?enc.encode(x):x;parts.push(b);len+=b.length;}
 var PW=595.28,PH=841.89,x=((PW-wPt)/2).toFixed(2),y=((PH-hPt)/2).toFixed(2);
 var cs='q '+wPt.toFixed(2)+' 0 0 '+hPt.toFixed(2)+' '+x+' '+y+' cm /Im0 Do Q';
 add('%PDF-1.4\n');
 offs[1]=len;add('1 0 obj\n<< /Type /Catalog /Pages 2 0 R >>\nendobj\n');
 offs[2]=len;add('2 0 obj\n<< /Type /Pages /Kids [3 0 R] /Count 1 >>\nendobj\n');
 offs[3]=len;add('3 0 obj\n<< /Type /Page /Parent 2 0 R /MediaBox [0 0 '+PW+' '+PH+'] /Resources << /XObject << /Im0 4 0 R >> >> /Contents 5 0 R >>\nendobj\n');
 offs[4]=len;add('4 0 obj\n<< /Type /XObject /Subtype /Image /Width '+pw+' /Height '+ph+' /ColorSpace /DeviceRGB /BitsPerComponent 8 /Filter /DCTDecode /Length '+jpg.length+' >>\nstream\n');add(jpg);add('\nendstream\nendobj\n');
 offs[5]=len;add('5 0 obj\n<< /Length '+cs.length+' >>\nstream\n'+cs+'\nendstream\nendobj\n');
 var xr=len,t='xref\n0 6\n0000000000 65535 f \n';
 for(var i=1;i<=5;i++)t+=('0000000000'+offs[i]).slice(-10)+' 00000 n \n';
 add(t+'trailer\n<< /Size 6 /Root 1 0 R >>\nstartxref\n'+xr+'\n%%EOF');
 return new Blob(parts,{type:'application/pdf'});
},
svg:function(o,q,wAttr,hAttr){
 var n=q.size,m=o.margin,W=n+2*m,bar=o.frame?Math.max(4,W*0.17):0,Ht=W+bar,F=o.grad?'url(#g)':o.fg,i,j;
 function f(v){return String(+v.toFixed(2));}
 var s='<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 '+f(W)+' '+f(Ht)+'"'+(wAttr?' width="'+wAttr+'" height="'+hAttr+'"':'')+'>';
 if(o.grad)s+='<defs><linearGradient id="g" gradientUnits="userSpaceOnUse" x1="0" y1="0" x2="'+f(W)+'" y2="'+f(W)+'"><stop offset="0" stop-color="'+o.fg+'"/><stop offset="1" stop-color="'+o.fg2+'"/></linearGradient></defs>';
 s+='<rect width="'+f(W)+'" height="'+f(Ht)+'" fill="'+o.bg+'"/>';
 var ls=0,hole=null;
 if(o.logo){ls=Math.max(3,Math.round(n*o.logoPct/100));hole={a:n/2-ls/2-0.5,b:n/2+ls/2+0.5};}
 function inEye(x,y){return (x<7&&y<7)||(x>=n-7&&y<7)||(x<7&&y>=n-7);}
 function skip(x,y){return inEye(x,y)||(hole&&x+0.5>hole.a&&x+0.5<hole.b&&y+0.5>hole.a&&y+0.5<hole.b);}
 var d='';
 for(j=0;j<n;j++){
  if(o.mod==='square'){
   i=0;
   while(i<n){if(q.m[j][i]&&!skip(i,j)){var r=1;while(i+r<n&&q.m[j][i+r]&&!skip(i+r,j))r++;d+='M'+(i+m)+' '+(j+m)+'h'+r+'v1h-'+r+'z';i+=r;}else i++;}
  }else{
   for(i=0;i<n;i++){if(!q.m[j][i]||skip(i,j))continue;var x=i+m,y=j+m;
    if(o.mod==='dot')d+='M'+f(x+0.03)+' '+f(y+0.5)+'a0.47 0.47 0 1 0 0.94 0a0.47 0.47 0 1 0 -0.94 0z';
    else d+='M'+f(x+0.34)+' '+f(y+0.04)+'h0.32a0.3 0.3 0 0 1 0.3 0.3v0.32a0.3 0.3 0 0 1 -0.3 0.3h-0.32a0.3 0.3 0 0 1 -0.3 -0.3v-0.32a0.3 0.3 0 0 1 0.3 -0.3z';
   }
  }
 }
 s+='<path fill="'+F+'"'+(o.mod==='square'?' shape-rendering="crispEdges"':'')+' d="'+d+'"/>';
 [[0,0],[n-7,0],[0,n-7]].forEach(function(p){
  var x=p[0]+m,y=p[1]+m;
  if(o.eye==='circle')s+='<circle cx="'+(x+3.5)+'" cy="'+(y+3.5)+'" r="3" fill="none" stroke="'+F+'" stroke-width="1"/><circle cx="'+(x+3.5)+'" cy="'+(y+3.5)+'" r="1.5" fill="'+F+'"/>';
  else{var rx=o.eye==='round'?0.8:0,ri=o.eye==='round'?0.4:0;s+='<rect x="'+(x+0.5)+'" y="'+(y+0.5)+'" width="6" height="6" rx="'+rx+'" fill="none" stroke="'+F+'" stroke-width="1"/><rect x="'+(x+2)+'" y="'+(y+2)+'" width="3" height="3" rx="'+ri+'" fill="'+F+'"/>';}
 });
 if(o.logo){var lx=m+n/2-ls/2,ly=lx;s+='<rect x="'+f(lx-0.5)+'" y="'+f(ly-0.5)+'" width="'+(ls+1)+'" height="'+(ls+1)+'" rx="1" fill="'+o.bg+'"/><image xlink:href="'+o.logo+'" x="'+f(lx)+'" y="'+f(ly)+'" width="'+ls+'" height="'+ls+'" preserveAspectRatio="xMidYMid meet"/>';}
 if(o.frame){var t=H.esc(o.frameText||'SCAN ME'),fs=Math.min(bar*0.5,W*0.9/(Math.max(t.length,1)*0.62));s+='<rect x="0" y="'+f(W)+'" width="'+f(W)+'" height="'+f(bar)+'" fill="'+F+'"/><text x="'+f(W/2)+'" y="'+f(W+bar/2+fs*0.35)+'" text-anchor="middle" font-family="Noto Sans Thai,Sarabun,Tahoma,sans-serif" font-weight="700" font-size="'+f(fs)+'" fill="'+o.bg+'">'+t+'</text>';}
 return{svg:s+'</svg>',w:W,h:Ht};
}
};
(function(){
var $=function(i){return document.getElementById(i);};
var root=$('qrx');if(!root)return;
var TABS=[['url','URL / ลิงก์'],['text','ข้อความ'],['wa','WhatsApp'],['line','LINE'],['pp','PromptPay'],['wifi','Wi-Fi'],['vcard','vCard'],['email','อีเมล'],['sms','SMS'],['tel','โทรศัพท์'],['geo','แผนที่']];
var FIELDS={
url:[['url','ลิงก์เว็บไซต์ (URL)','text','https://example.com']],
text:[['text','ข้อความ','area','พิมพ์ข้อความที่ต้องการ']],
wa:[['cc','รหัสประเทศ','text','66','66'],['num','เบอร์ WhatsApp','text','0812345678'],['msg','ข้อความเริ่มต้น (ไม่บังคับ)','area','สวัสดีครับ สนใจสินค้า']],
line:[['kind','ประเภท','sel','','',[['oa','LINE Official Account (@)'],['user','LINE ID ส่วนตัว']]],['id','LINE ID','text','@yourshop']],
pp:[['id','เบอร์โทร / เลขบัตรประชาชน / e-Wallet ID','text','0812345678'],['amt','จำนวนเงิน (บาท, ไม่บังคับ)','number','100']],
wifi:[['ssid','ชื่อ Wi-Fi (SSID)','text',''],['pass','รหัสผ่าน','text',''],['enc','การเข้ารหัส','sel','','',[['WPA','WPA/WPA2/WPA3'],['WEP','WEP'],['nopass','ไม่มีรหัสผ่าน']]],['hid','เครือข่ายซ่อน (Hidden)','chk']],
vcard:[['fn','ชื่อ','text',''],['ln','นามสกุล','text',''],['tel','เบอร์โทร','text',''],['email','อีเมล','text',''],['org','บริษัท','text',''],['title','ตำแหน่ง','text',''],['url','เว็บไซต์','text','']],
email:[['to','อีเมลผู้รับ','text','name@example.com'],['sub','หัวข้อ','text',''],['body','เนื้อหา','area','']],
sms:[['num','เบอร์โทร','text','0812345678'],['msg','ข้อความ','area','']],
tel:[['num','เบอร์โทร','text','+66812345678']],
geo:[['lat','ละติจูด','text','13.7563'],['lng','ลองจิจูด','text','100.5018']]
};
var cur='url',hint='',last=null,logoData=null,timer=null;
function fld(t,f){var id='f_'+t+'_'+f[0];
 if(f[2]==='chk')return '<label class="qrx-chk"><input type="checkbox" id="'+id+'"> '+f[1]+'</label>';
 var h;
 if(f[2]==='area')h='<textarea id="'+id+'" rows="3" placeholder="'+H.esc(f[3]||'')+'"></'+'textarea>';
 else if(f[2]==='sel')h='<select id="'+id+'">'+f[5].map(function(o){return '<option value="'+o[0]+'">'+o[1]+'</option>';}).join('')+'</select>';
 else h='<input type="'+(f[2]||'text')+'" id="'+id+'" placeholder="'+H.esc(f[3]||'')+'" value="'+H.esc(f[4]||'')+'" autocomplete="off">';
 return '<label>'+f[1]+h+'</label>';}
var tabsEl=$('qrxTabs'),panEl=$('qrxPanels');
TABS.forEach(function(t,i){
 var b=document.createElement('button');b.type='button';b.textContent=t[1];b.setAttribute('role','tab');b.setAttribute('data-t',t[0]);b.setAttribute('aria-selected',i===0?'true':'false');tabsEl.appendChild(b);
 var p=document.createElement('div');p.className='qrx-panel';p.setAttribute('data-p',t[0]);p.hidden=i!==0;p.innerHTML=FIELDS[t[0]].map(function(f){return fld(t[0],f);}).join('');panEl.appendChild(p);
});
tabsEl.addEventListener('click',function(e){var b=e.target.closest('button');if(!b)return;cur=b.getAttribute('data-t');
 Array.prototype.forEach.call(tabsEl.children,function(x){x.setAttribute('aria-selected',x===b?'true':'false');});
 Array.prototype.forEach.call(panEl.children,function(x){x.hidden=x.getAttribute('data-p')!==cur;});render();});
function g(f){var e=$('f_'+cur+'_'+f);if(!e)return '';return e.type==='checkbox'?e.checked:e.value.trim();}
function dig(s){return String(s).replace(/\D/g,'');}
function normUrl(s){s=s.trim();if(!s)return '';return /^[a-z][a-z0-9+.-]*:/i.test(s)?s:'https://'+s;}
var P={
url:function(){return normUrl(g('url'));},
text:function(){return g('text');},
wa:function(){var raw=g('num'),d=dig(raw);if(!d)return '';if(raw.charAt(0)!=='+'&&d.charAt(0)==='0')d=dig(g('cc'))+d.replace(/^0+/,'');var m=g('msg');return 'https://wa.me/'+d+(m?'?text='+encodeURIComponent(m):'');},
line:function(){var id=g('id').replace(/^@/,'').replace(/^~/,'');if(!id)return '';return g('kind')==='oa'?'https://line.me/R/ti/p/@'+id:'https://line.me/ti/p/~'+id;},
pp:function(){var id=g('id');if(!id)return '';var r=H.promptpay(id,g('amt'));if(!r)hint='หมายเลข PromptPay ไม่ถูกต้อง (เบอร์โทร 10 หลัก, เลขบัตร 13 หลัก หรือ e-Wallet 15 หลัก)';return r;},
wifi:function(){var s=g('ssid');if(!s)return '';var t=g('enc');return 'WIFI:T:'+t+';S:'+H.wesc(s)+';'+(t!=='nopass'?'P:'+H.wesc(g('pass'))+';':'')+(g('hid')?'H:true;':'')+';';},
vcard:function(){var fn=g('fn'),ln=g('ln'),tel=g('tel'),em=g('email');if(!fn&&!ln&&!tel&&!em)return '';var v=H.vesc,o=['BEGIN:VCARD','VERSION:3.0','N:'+v(ln)+';'+v(fn)+';;;','FN:'+v((fn+' '+ln).trim())];
 if(g('org'))o.push('ORG:'+v(g('org')));if(g('title'))o.push('TITLE:'+v(g('title')));if(tel)o.push('TEL;TYPE=CELL:'+v(tel));if(em)o.push('EMAIL:'+v(em));if(g('url'))o.push('URL:'+v(g('url')));o.push('END:VCARD');return o.join('\n');},
email:function(){var to=g('to');if(!to)return '';var q=[];if(g('sub'))q.push('subject='+encodeURIComponent(g('sub')));if(g('body'))q.push('body='+encodeURIComponent(g('body')));return 'mailto:'+to+(q.length?'?'+q.join('&'):'');},
sms:function(){var n=g('num').replace(/[^\d+]/g,'');return n?'SMSTO:'+n+':'+g('msg'):'';},
tel:function(){var n=g('num').replace(/[^\d+]/g,'');return n?'tel:'+n:'';},
geo:function(){var a=parseFloat(g('lat')),b=parseFloat(g('lng'));if(isNaN(a)||isNaN(b))return '';if(Math.abs(a)>90||Math.abs(b)>180){hint='ค่าพิกัดอยู่นอกช่วงที่ถูกต้อง';return '';}return 'https://www.google.com/maps?q='+a+','+b;}
};
function pick(v,list,d){return list.indexOf(v)>-1?v:d;}
function clamp(v,a,b){return Math.min(b,Math.max(a,v));}
function opts(){return{fg:H.hex($('c_fg').value,'#111111'),bg:H.hex($('c_bg').value,'#ffffff'),fg2:H.hex($('c_fg2').value,'#1d4ed8'),grad:$('c_grad').checked,
 mod:pick($('c_mod').value,['square','round','dot'],'square'),eye:pick($('c_eye').value,['square','round'],'square'),margin:clamp(parseInt($('c_margin').value,10)||0,0,10),
 ecl:clamp(parseInt($('c_ecl').value,10)||0,0,3),logo:logoData,logoPct:clamp(parseInt($('c_logoPct').value,10)||18,10,25),frame:$('c_frame').checked,frameText:$('c_frameText').value.trim()};}
function cmVal(){return clamp(parseFloat($('c_cm').value)||5,1,50);}
function pxFor(cm){return clamp(Math.round(cm/2.54*(parseInt($('c_dpi').value,10)||300)),200,4096);}
function setBtns(on){['b_png','b_svg','b_pdf','b_copy'].forEach(function(i){$(i).disabled=!on;});}
function render(){
 hint='';var o=opts(),text=P[cur](),pv=$('qrxPreview'),nt=$('qrxNote'),notes=[];last=null;
 if(!text){pv.innerHTML='<p class="qrx-ph">'+H.esc(hint||'กรอกข้อมูลด้านซ้ายเพื่อสร้าง QR Code')+'</p>';nt.innerHTML='';$('qrxData').value='';$('qrxPx').textContent='';setBtns(false);return;}
 var q;try{q=QRC.encode(text,o.logo?3:o.ecl);}catch(e){pv.innerHTML='<p class="qrx-ph">ข้อมูลยาวเกินไป ลดความยาวหรือใช้ลิงก์สั้นลง</p>';setBtns(false);return;}
 var r=H.svg(o,q);pv.innerHTML=r.svg;last={o:o,q:q,r:r,text:text};$('qrxData').value=text;setBtns(true);
 var cm=cmVal(),px=pxFor(cm);$('qrxPx').textContent='ขนาดไฟล์ PNG: '+px+' × '+Math.round(px*r.h/r.w)+' พิกเซล · QR เวอร์ชัน '+q.version+' ('+q.size+'×'+q.size+' โมดูล)';
 var c=H.contrast(o.fg,o.bg),c2=o.grad?H.contrast(o.fg2,o.bg):21;
 if(Math.min(c,c2)<3)notes.push('ความต่างสีระหว่าง QR กับพื้นหลังต่ำ อาจสแกนไม่ติด ลองใช้สีเข้มบนพื้นอ่อน');
 else if(H.lum(o.fg)>H.lum(o.bg))notes.push('สี QR อ่อนกว่าพื้นหลัง (กลับสี) แอปสแกนบางรุ่นอ่านไม่ได้ แนะนำสีเข้มบนพื้นอ่อน');
 if(o.margin<4)notes.push('ขอบว่างน้อยกว่า 4 โมดูล เครื่องสแกนบางรุ่นอาจอ่านไม่ได้');
 if(o.mod!=='square'||o.eye!=='square')notes.push('ใช้รูปแบบจุดหรือมุมพิเศษ แอปสแกนบางรุ่นอาจอ่านยากกว่าแบบสี่เหลี่ยม ควรทดสอบสแกนก่อนใช้งานจริง');
 if(o.logo)notes.push('ใส่โลโก้แล้ว ระบบใช้ความทนทาน H (30%) อัตโนมัติ ควรทดสอบสแกนก่อนพิมพ์');
 if(q.version>=15)notes.push('ข้อมูลยาว QR จึงหนาแน่นและสแกนยาก ลองย่อข้อความหรือใช้ลิงก์สั้น');
 if(cm*10/r.w<0.4)notes.push('ขนาดพิมพ์เล็กเกินไป แต่ละจุดน้อยกว่า 0.4 มม. ควรเพิ่มขนาด');
 nt.innerHTML=notes.map(function(n){return '<p>⚠ '+H.esc(n)+'</p>';}).join('');
}
function toCanvas(o,q,px,cb){var r0=H.svg(o,q),h=Math.round(px*r0.h/r0.w),r=H.svg(o,q,px,h),img=new Image();
 img.onload=function(){var c=document.createElement('canvas');c.width=px;c.height=h;var x=c.getContext('2d');x.fillStyle=o.bg;x.fillRect(0,0,px,h);x.drawImage(img,0,0,px,h);cb(c);};
 img.onerror=function(){cb(null);};img.src='data:image/svg+xml;charset=utf-8,'+encodeURIComponent(r.svg);}
function dl(blob,name){var a=document.createElement('a');a.href=URL.createObjectURL(blob);a.download=name;document.body.appendChild(a);a.click();setTimeout(function(){URL.revokeObjectURL(a.href);a.remove();},1500);}
function say(m){var n=$('qrxNote');n.innerHTML='<p>'+H.esc(m)+'</p>';}
$('b_png').onclick=function(){if(!last)return;toCanvas(last.o,last.q,pxFor(cmVal()),function(c){if(!c)return say('สร้างไฟล์ PNG ไม่สำเร็จ');c.toBlob(function(b){dl(b,'qr-code.png');},'image/png');});};
$('b_svg').onclick=function(){if(!last)return;var cm=cmVal(),r=last.r,s=H.svg(last.o,last.q,(cm*10)+'mm',(cm*10*r.h/r.w).toFixed(2)+'mm').svg;dl(new Blob(['<?xml version="1.0" encoding="UTF-8"?>\n'+s],{type:'image/svg+xml'}),'qr-code.svg');};
$('b_pdf').onclick=function(){if(!last)return;var cm=Math.min(cmVal(),18);toCanvas(last.o,last.q,pxFor(cm),function(c){if(!c)return say('สร้างไฟล์ PDF ไม่สำเร็จ');var b64=c.toDataURL('image/jpeg',0.95).split(',')[1],bin=atob(b64),u=new Uint8Array(bin.length);for(var i=0;i<bin.length;i++)u[i]=bin.charCodeAt(i);var w=cm*28.3465;dl(H.pdf(u,c.width,c.height,w,w*c.height/c.width),'qr-code.pdf');});};
$('b_copy').onclick=function(){if(!last)return;toCanvas(last.o,last.q,Math.min(pxFor(cmVal()),1024),function(c){if(!c)return say('คัดลอกไม่สำเร็จ');
 if(!(navigator.clipboard&&window.ClipboardItem))return say('เบราว์เซอร์นี้ไม่รองรับการคัดลอกรูป ใช้ปุ่มดาวน์โหลดแทน');
 c.toBlob(function(b){navigator.clipboard.write([new ClipboardItem({'image/png':b})]).then(function(){say('คัดลอกรูป QR Code แล้ว');},function(){say('คัดลอกไม่สำเร็จ ใช้ปุ่มดาวน์โหลดแทน');});},'image/png');});};
$('c_logo').onchange=function(){var f=this.files&&this.files[0];if(!f)return;var rd=new FileReader();rd.onload=function(){var im=new Image();im.onload=function(){var c=document.createElement('canvas');c.width=c.height=256;var x=c.getContext('2d'),s=Math.min(256/im.width,256/im.height),w=im.width*s,h=im.height*s;x.drawImage(im,(256-w)/2,(256-h)/2,w,h);logoData=c.toDataURL('image/png');render();};im.onerror=function(){say('อ่านไฟล์รูปโลโก้ไม่ได้');};im.src=rd.result;};rd.readAsDataURL(f);};
$('c_logoX').onclick=function(){logoData=null;$('c_logo').value='';render();};
var SAVE=['c_fg','c_bg','c_fg2','c_mod','c_eye','c_margin','c_ecl','c_logoPct','c_frameText','c_cm','c_dpi'],SAVEC=['c_grad','c_frame'],DEF={};
SAVE.concat(SAVEC).forEach(function(i){DEF[i]=SAVEC.indexOf(i)>-1?$(i).checked:$(i).value;});
function save(){try{var s={};SAVE.forEach(function(i){s[i]=$(i).value;});SAVEC.forEach(function(i){s[i]=$(i).checked;});localStorage.setItem('qrx_v1',JSON.stringify(s));}catch(e){}}
function load(){try{var s=JSON.parse(localStorage.getItem('qrx_v1')||'null');if(!s)return;SAVE.forEach(function(i){if(typeof s[i]==='string')$(i).value=s[i];});SAVEC.forEach(function(i){if(typeof s[i]==='boolean')$(i).checked=s[i];});}catch(e){}}
$('c_reset').onclick=function(){SAVE.concat(SAVEC).forEach(function(i){if(SAVEC.indexOf(i)>-1)$(i).checked=DEF[i];else $(i).value=DEF[i];});logoData=null;$('c_logo').value='';save();render();};
function later(){clearTimeout(timer);timer=setTimeout(function(){render();save();},60);}
root.addEventListener('input',function(e){if(e.target.closest&&e.target.closest('.qrx-nostate'))return;later();});
root.addEventListener('change',function(e){if(e.target.closest&&e.target.closest('.qrx-nostate'))return;later();});
$('k_go').onclick=function(){
 var lines=$('k_in').value.split(/\r?\n/).map(function(s){return s.trim();}).filter(Boolean).slice(0,100),st=$('k_st');
 if(!lines.length){st.textContent='ใส่ข้อมูลอย่างน้อย 1 บรรทัด';return;}
 var o=opts(),files=[],i=0,px=Math.min(pxFor(cmVal()),2048);
 function next(){
  if(i>=lines.length){dl(H.zip(files),'qr-codes.zip');st.textContent='เสร็จแล้ว '+files.length+' ไฟล์';return;}
  var t=lines[i],q;if(/^[\w-]+(\.[\w-]+)+(\/\S*)?$/.test(t))t='https://'+t;
  try{q=QRC.encode(t,o.logo?3:o.ecl);}catch(e){st.textContent='บรรทัด '+(i+1)+' ยาวเกินไป';return;}
  st.textContent='กำลังสร้าง '+(i+1)+'/'+lines.length;
  toCanvas(o,q,px,function(c){if(!c){st.textContent='สร้างไม่สำเร็จ';return;}c.toBlob(function(b){b.arrayBuffer().then(function(ab){files.push({name:'qr-'+('000'+(i+1)).slice(-3)+'.png',data:new Uint8Array(ab)});i++;next();});},'image/png');});
 }
 next();};
var det=null,stream=null,loop=null,out=$('s_out');
try{if('BarcodeDetector' in window)det=new window.BarcodeDetector({formats:['qr_code']});}catch(e){det=null;}
function show(v){out.textContent='';var ta=document.createElement('textarea');ta.readOnly=true;ta.rows=3;ta.value=v;out.appendChild(ta);
 var b=document.createElement('button');b.type='button';b.textContent='คัดลอกผลลัพธ์';b.onclick=function(){ta.select();try{document.execCommand('copy');}catch(e){}};out.appendChild(b);
 if(/^https?:\/\//i.test(v)){var a=document.createElement('a');a.href=v;a.textContent=' เปิดลิงก์';a.target='_blank';a.rel='noopener noreferrer nofollow';out.appendChild(a);var w=document.createElement('p');w.textContent='ตรวจสอบลิงก์ให้แน่ใจก่อนเปิด โดยเฉพาะ QR จากแหล่งที่ไม่รู้จัก';out.appendChild(w);}}
function stopCam(){if(loop)clearInterval(loop);loop=null;if(stream)stream.getTracks().forEach(function(t){t.stop();});stream=null;$('s_vid').hidden=true;$('s_stop').hidden=true;}
if(!det){out.textContent='เบราว์เซอร์นี้ยังไม่รองรับการอ่าน QR ในหน้านี้ ลองใช้ Chrome หรือใช้แอปกล้องในมือถือ';$('s_cam').disabled=true;$('s_file').disabled=true;}
$('s_file').onchange=function(){var f=this.files&&this.files[0];if(!f||!det)return;createImageBitmap(f).then(function(bm){return det.detect(bm);}).then(function(r){if(r&&r.length)show(r[0].rawValue);else out.textContent='ไม่พบ QR Code ในรูปนี้';}).catch(function(){out.textContent='อ่านรูปไม่สำเร็จ';});};
$('s_cam').onclick=function(){if(!det||!navigator.mediaDevices)return;navigator.mediaDevices.getUserMedia({video:{facingMode:'environment'}}).then(function(s){stream=s;var v=$('s_vid');v.srcObject=s;v.hidden=false;v.play();$('s_stop').hidden=false;loop=setInterval(function(){det.detect(v).then(function(r){if(r&&r.length){show(r[0].rawValue);stopCam();}}).catch(function(){});},400);}).catch(function(){out.textContent='เปิดกล้องไม่ได้ ตรวจสอบสิทธิ์การใช้กล้อง';});};
$('s_stop').onclick=stopCam;
load();render();
})();

</script>

## วิธีใช้งานตัวสร้าง QR Code

1. **เลือกประเภท QR Code** จากแท็บด้านบน เช่น URL, LINE, WhatsApp, PromptPay, Wi-Fi หรือ vCard
2. **กรอกข้อมูล** ในช่องที่แสดง ตัวอย่าง QR Code จะอัปเดตทันทีโดยไม่ต้องกดปุ่มสร้าง
3. **ปรับแต่งรูปแบบ** ในส่วน "ปรับแต่งรูปแบบ" เช่น สี รูปแบบจุดและมุม ขอบว่าง ใส่โลโก้ หรือเพิ่มกรอบข้อความ
4. **ดูคำเตือน** ใต้ตัวอย่าง ระบบจะแจ้งหากสีต่างกันน้อย ขอบว่างไม่พอ หรือขนาดพิมพ์เล็กเกินไป
5. **ตั้งขนาดพิมพ์และความละเอียด** เช่น 5 ซม. ที่ 300 DPI สำหรับงานพิมพ์ทั่วไป
6. **ดาวน์โหลด** เป็น PNG, SVG หรือ PDF หรือกด "คัดลอกรูป" เพื่อนำไปวางในเอกสารได้ทันที
7. **ทดสอบสแกน** ด้วยมือถืออย่างน้อย 2 เครื่องก่อนพิมพ์จริง
8. ถ้าต้องการหลายรายการ ใช้ส่วน "สร้างหลาย QR Code พร้อมกัน" ใส่ข้อมูลบรรทัดละ 1 รายการ แล้วดาวน์โหลดเป็นไฟล์ ZIP

ข้อมูลถูกประมวลผลในเบราว์เซอร์ของคุณทั้งหมด ไม่มีการส่งข้อความหรือโลโก้ขึ้นเซิร์ฟเวอร์

## ประเภท QR Code ที่รองรับ

- **URL / ลิงก์:** เปิดเว็บไซต์ ระบบเติม https:// ให้อัตโนมัติถ้าไม่ได้พิมพ์
- **ข้อความ:** แสดงข้อความธรรมดาเมื่อสแกน
- **WhatsApp:** เปิดแชตกับเบอร์ที่กำหนดพร้อมข้อความเริ่มต้น แปลงเบอร์ที่ขึ้นต้นด้วย 0 เป็นรูปแบบสากลให้อัตโนมัติ
- **LINE:** ลิงก์เพิ่มเพื่อนของ LINE Official Account หรือ LINE ID ส่วนตัว
- **PromptPay:** QR รับเงินจากเบอร์โทร เลขบัตรประชาชน หรือ e-Wallet ID พร้อมกำหนดจำนวนเงินได้
- **Wi-Fi:** ให้ผู้สแกนเชื่อมต่อเครือข่ายได้ทันทีโดยไม่ต้องพิมพ์รหัสผ่าน
- **vCard:** บันทึกชื่อ เบอร์ อีเมล และข้อมูลติดต่อลงสมุดโทรศัพท์
- **อีเมล, SMS, โทรศัพท์:** เปิดแอปที่เกี่ยวข้องพร้อมข้อมูลที่กรอกไว้
- **แผนที่:** เปิดตำแหน่งใน Google Maps จากพิกัดละติจูดและลองจิจูด

## คำศัพท์ที่ควรรู้

- **QR Code:** บาร์โค้ดสองมิติที่เก็บข้อมูลได้ทั้งข้อความและลิงก์ สแกนได้ด้วยกล้องมือถือ
- **URL:** ที่อยู่เว็บไซต์ เช่น https://example.com
- **Static QR (QR แบบคงที่):** ข้อมูลฝังอยู่ใน QR โดยตรง ไม่มีวันหมดอายุ แต่แก้ไขข้อมูลภายหลังไม่ได้ ตัวสร้างนี้สร้าง QR แบบคงที่
- **Dynamic QR (QR แบบไดนามิก):** QR ที่ชี้ไปยังลิงก์กลางซึ่งเปลี่ยนปลายทางได้ ต้องใช้บริการเซิร์ฟเวอร์ ไม่ใช่ฟีเจอร์ของเครื่องมือนี้
- **ความทนทาน (Error Correction):** ความสามารถในการอ่านได้แม้ QR ชำรุดหรือถูกบัง มี 4 ระดับ คือ L (7%), M (15%), Q (25%) และ H (30%) ยิ่งสูงยิ่งทนแต่จุดจะหนาแน่นขึ้น
- **โมดูล (Module):** จุดสี่เหลี่ยมเล็กๆ แต่ละจุดที่ประกอบเป็น QR Code
- **มุม (Finder Pattern / Eye):** สี่เหลี่ยมซ้อนกัน 3 มุมที่ช่วยให้กล้องหาตำแหน่งและทิศทางของ QR Code
- **ขอบว่าง (Quiet Zone):** พื้นที่ว่างรอบ QR Code ควรกว้างอย่างน้อย 4 โมดูลเพื่อให้สแกนติด
- **ความต่างสี (Contrast):** ความแตกต่างระหว่างสี QR กับพื้นหลัง ควรเป็นสีเข้มบนพื้นอ่อน
- **ไล่เฉดสี (Gradient):** การไล่สีจากสีแรกไปสีที่สอง ควรเลือกสีที่ยังเข้มพอเมื่อเทียบกับพื้นหลัง
- **โลโก้กลาง QR:** รูปที่วางทับตรงกลาง QR ระบบจะลบจุดใต้โลโก้และใช้ความทนทานระดับ H ให้อัตโนมัติ
- **กรอบข้อความ:** แถบข้อความใต้ QR เช่น "สแกนเลย" ช่วยบอกผู้ดูว่าต้องทำอะไร
- **PNG:** ไฟล์ภาพทั่วไป เหมาะกับเว็บ โซเชียล และเอกสาร
- **SVG:** ไฟล์เวกเตอร์ขยายได้ไม่แตก เหมาะกับงานพิมพ์ขนาดใหญ่และงานออกแบบ
- **PDF:** ไฟล์เอกสารที่วาง QR ไว้กลางหน้า A4 ตามขนาดที่ตั้ง เหมาะสำหรับส่งพิมพ์
- **DPI:** จำนวนจุดต่อนิ้ว ยิ่งสูงยิ่งคมชัด 300 DPI เหมาะกับงานพิมพ์ทั่วไป
- **PromptPay:** ระบบโอนเงินของไทย QR ที่สร้างเป็นมาตรฐาน EMVCo แบบคงที่
- **SSID:** ชื่อเครือข่าย Wi-Fi ที่ปรากฏในรายการ
- **WPA/WEP:** รูปแบบการเข้ารหัสรหัสผ่าน Wi-Fi ปัจจุบันส่วนใหญ่ใช้ WPA/WPA2/WPA3 ส่วน WEP เป็นแบบเก่า
- **vCard:** รูปแบบไฟล์นามบัตรอิเล็กทรอนิกส์ที่โทรศัพท์นำเข้าได้
- **ข้อมูลที่เข้ารหัส (Payload):** ข้อความจริงที่ฝังใน QR ดูได้ในส่วน "ข้อมูลที่เข้ารหัสใน QR Code" เพื่อตรวจสอบก่อนใช้งาน
- **ZIP (สร้างหลายรายการ):** ไฟล์บีบอัดที่รวมภาพ QR หลายไฟล์ไว้ด้วยกัน

## เคล็ดลับให้ QR Code สแกนติดง่าย

- ใช้สีเข้มบนพื้นอ่อน และหลีกเลี่ยงการกลับสี
- เว้นขอบว่างอย่างน้อย 4 โมดูล
- ขนาดพิมพ์ขั้นต่ำประมาณ 2 × 2 ซม. และควรใหญ่ขึ้นถ้าสแกนจากระยะไกล
- ข้อมูลยิ่งสั้น QR ยิ่งโปร่ง ใช้ลิงก์สั้นแทนลิงก์ยาว
- ถ้าใส่โลโก้ ให้ใช้ขนาดไม่เกิน 25% และทดสอบสแกนทุกครั้ง
- สำหรับงานพิมพ์ ใช้ SVG หรือ PNG ที่ 300 DPI ขึ้นไป
- QR PromptPay ควรตรวจชื่อผู้รับในแอปธนาคารทุกครั้งก่อนยืนยันการโอน

## คำถามที่พบบ่อย

### QR Code ที่สร้างจากเครื่องมือนี้ฟรีและหมดอายุไหม?

ใช้ฟรี ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำ QR ที่สร้างเป็นแบบคงที่ จึงไม่หมดอายุ ตราบใดที่ปลายทาง เช่น เว็บไซต์ ยังใช้งานได้

### ข้อมูลของฉันถูกส่งไปเก็บที่เซิร์ฟเวอร์หรือไม่?

ไม่ การสร้างภาพ QR Code ทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ข้อความ รหัสผ่าน Wi-Fi และโลโก้ไม่ถูกอัปโหลด

### ควรเลือกดาวน์โหลดเป็น PNG, SVG หรือ PDF?

PNG เหมาะกับเว็บและโซเชียล SVG เหมาะกับงานพิมพ์ขนาดใหญ่เพราะขยายแล้วไม่แตก ส่วน PDF สะดวกเมื่อต้องส่งพิมพ์เป็นหน้าเอกสาร

### ใส่โลโก้แล้ว QR Code สแกนไม่ติด ทำอย่างไร?

ลดขนาดโลโก้ เพิ่มความต่างสี และตรวจให้ขอบว่างเพียงพอ ระบบเลือกความทนทานระดับ H ให้อัตโนมัติเมื่อใส่โลโก้ แต่ควรทดสอบสแกนก่อนใช้งานจริง

### สร้าง QR Code รับเงิน PromptPay ได้ไหม?

ได้ เลือกแท็บ PromptPay แล้วกรอกเบอร์โทร เลขบัตรประชาชน หรือ e-Wallet ID และใส่จำนวนเงินถ้าต้องการ เมื่อสแกนในแอปธนาคาร ให้ตรวจชื่อผู้รับก่อนโอนทุกครั้ง

QR Code เป็นเครื่องหมายการค้าจดทะเบียนของ DENSO WAVE INCORPORATED

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[
{"@type":"Question","name":"QR Code ที่สร้างจากเครื่องมือนี้ฟรีและหมดอายุไหม?","acceptedAnswer":{"@type":"Answer","text":"ใช้ฟรี ไม่ต้องสมัครสมาชิก และไม่มีลายน้ำ QR ที่สร้างเป็นแบบคงที่ จึงไม่หมดอายุ ตราบใดที่ปลายทาง เช่น เว็บไซต์ ยังใช้งานได้"}},
{"@type":"Question","name":"ข้อมูลของฉันถูกส่งไปเก็บที่เซิร์ฟเวอร์หรือไม่?","acceptedAnswer":{"@type":"Answer","text":"ไม่ การสร้างภาพ QR Code ทั้งหมดเกิดขึ้นในเบราว์เซอร์ของคุณ ข้อความ รหัสผ่าน Wi-Fi และโลโก้ไม่ถูกอัปโหลด"}},
{"@type":"Question","name":"ควรเลือกดาวน์โหลดเป็น PNG, SVG หรือ PDF?","acceptedAnswer":{"@type":"Answer","text":"PNG เหมาะกับเว็บและโซเชียล SVG เหมาะกับงานพิมพ์ขนาดใหญ่เพราะขยายแล้วไม่แตก ส่วน PDF สะดวกเมื่อต้องส่งพิมพ์เป็นหน้าเอกสาร"}},
{"@type":"Question","name":"ใส่โลโก้แล้ว QR Code สแกนไม่ติด ทำอย่างไร?","acceptedAnswer":{"@type":"Answer","text":"ลดขนาดโลโก้ เพิ่มความต่างสี และตรวจให้ขอบว่างเพียงพอ ระบบเลือกความทนทานระดับ H ให้อัตโนมัติเมื่อใส่โลโก้ แต่ควรทดสอบสแกนก่อนใช้งานจริง"}},
{"@type":"Question","name":"สร้าง QR Code รับเงิน PromptPay ได้ไหม?","acceptedAnswer":{"@type":"Answer","text":"ได้ เลือกแท็บ PromptPay แล้วกรอกเบอร์โทร เลขบัตรประชาชน หรือ e-Wallet ID และใส่จำนวนเงินถ้าต้องการ เมื่อสแกนในแอปธนาคาร ให้ตรวจชื่อผู้รับก่อนโอนทุกครั้ง"}}
]}
</script>