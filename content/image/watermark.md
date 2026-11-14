---
title: ใส่ลายน้ำรูปภาพออนไลน์ ฟรี
h1: ใส่ลายน้ำรูปภาพออนไลน์
description: ใส่ลายน้ำรูปภาพออนไลน์ฟรี เพิ่มข้อความหรือโลโก้ให้หลายภาพพร้อมกัน ปรับตำแหน่ง ขนาด ความโปร่งใส และลายซ้ำได้ รองรับ JPG PNG WebP HEIC ไม่ต้องติดตั้งโปรแกรม
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-13T09:00:00+07:00'
weight: 110
tool: true
topic: image
appCategory: MultimediaApplication
keywords:
- ใส่ลายน้ำรูปภาพออนไลน์
- รูปภาพ
---

<div class="wm" id="wm">
<style>
.wm{max-width:100%;font:inherit}
.wm *{box-sizing:border-box}
.wm [hidden]{display:none!important}
.wm .wm-drop{border:2px dashed rgba(128,128,128,.6);border-radius:12px;padding:24px 16px;text-align:center;cursor:pointer}
.wm .wm-drop.on{border-color:#0d9488;background:rgba(13,148,136,.1)}
.wm .wm-drop small{display:block;opacity:.75;margin-top:6px}
.wm .wm-grid{display:grid;gap:16px;margin-top:16px}
@media (min-width:860px){.wm .wm-grid{grid-template-columns:1.25fr 1fr}}
.wm fieldset{border:1px solid rgba(128,128,128,.4);border-radius:8px;padding:8px 12px;margin:0 0 12px}
.wm legend{font-weight:700;padding:0 6px}
.wm label{display:flex;align-items:center;gap:8px;margin:6px 0;flex-wrap:wrap}
.wm label span{min-width:92px}
.wm label b{min-width:48px;font-weight:400;opacity:.8}
.wm input[type=text],.wm select{flex:1;min-width:120px;padding:6px 8px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font:inherit}
.wm select option{color:#000}
.wm input[type=range]{flex:1;min-width:110px}
.wm button{padding:8px 14px;border:0;border-radius:6px;background:#0d9488;color:#fff;cursor:pointer;font:inherit}
.wm button.g{background:rgba(128,128,128,.28);color:inherit}
.wm button:disabled{opacity:.5;cursor:not-allowed}
.wm button:focus-visible,.wm input:focus-visible,.wm select:focus-visible{outline:2px solid #0d9488;outline-offset:2px}
.wm canvas{max-width:100%;height:auto;display:block;margin:0 auto;border-radius:6px;background:repeating-conic-gradient(rgba(128,128,128,.22) 0 25%,transparent 0 50%) 50%/16px 16px}
.wm .wm-bar{display:flex;gap:8px;flex-wrap:wrap;align-items:center;margin:10px 0}
.wm .wm-name{flex:1;min-width:120px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;text-align:center}
.wm .wm-msg{min-height:1.5em;font-size:.92em;margin-top:8px}
</style>
<div class="wm-drop" id="wm_drop" tabindex="0" role="button">
เลือกรูปภาพ ลากมาวาง หรือกด Ctrl+V เพื่อวางรูป
<small>เลือกได้หลายไฟล์ รองรับ JPG, PNG, WebP, HEIC · ประมวลผลในเบราว์เซอร์ ไฟล์ไม่ถูกอัปโหลด</small>
</div>
<input type="file" id="wm_f" accept="image/*,.heic,.heif" multiple hidden>
<div class="wm-msg" id="wm_msg" role="status"></div>
<div class="wm-grid" id="wm_work" hidden>
<div>
<canvas id="wm_cv" width="1" height="1"></canvas>
<div class="wm-bar">
<button type="button" class="g" id="wm_prev">ก่อนหน้า</button>
<span class="wm-name" id="wm_n"></span>
<button type="button" class="g" id="wm_next">ถัดไป</button>
</div>
<div class="wm-bar">
<button type="button" id="wm_one">ดาวน์โหลดภาพนี้</button>
<button type="button" id="wm_zip">ดาวน์โหลดทั้งหมด (Zip)</button>
<button type="button" class="g" id="wm_clear">ล้างทั้งหมด</button>
</div>
</div>
<div>
<fieldset>
<legend><label><input type="checkbox" id="t_on" checked> ลายน้ำข้อความ</label></legend>
<label><span>ข้อความ</span><input type="text" id="t_text" value="© ชื่อของคุณ" maxlength="120"></label>
<label><span>ฟอนต์</span><select id="t_font"><option value="system-ui,'Noto Sans Thai',Tahoma,sans-serif">ตัวไม่มีหัว (ทั่วไป)</option><option value="'Noto Serif Thai',Georgia,serif">ตัวมีหัว</option><option value="monospace">ตัวพิมพ์ดีด</option></select></label>
<label><span>ตัวหนา</span><input type="checkbox" id="t_bold" checked></label>
<label><span>สี</span><input type="color" id="t_color" value="#ffffff"></label>
<label><span>ขนาด</span><input type="range" id="t_size" min="1" max="20" step="0.5" value="4"><b></b></label>
<label><span>ความทึบ</span><input type="range" id="t_op" min="5" max="100" step="5" value="70"><b></b></label>
<label><span>หมุน</span><input type="range" id="t_rot" min="-180" max="180" step="5" value="0" data-u="°"><b></b></label>
<label><span>ตำแหน่ง</span><select id="t_pos"><option value="tl">บนซ้าย</option><option value="tc">บนกลาง</option><option value="tr">บนขวา</option><option value="ml">กลางซ้าย</option><option value="mc">กึ่งกลาง</option><option value="mr">กลางขวา</option><option value="bl">ล่างซ้าย</option><option value="bc">ล่างกลาง</option><option value="br" selected>ล่างขวา</option></select></label>
<label><span>ลายซ้ำ</span><input type="checkbox" id="t_tile"></label>
<label><span>ระยะห่าง</span><input type="range" id="t_gap" min="0" max="300" step="10" value="80"><b></b></label>
</fieldset>
<fieldset>
<legend><label><input type="checkbox" id="l_on"> ลายน้ำโลโก้</label></legend>
<label><span>ไฟล์โลโก้</span><input type="file" id="l_file" accept="image/*"></label>
<label><span>ขนาด</span><input type="range" id="l_size" min="3" max="80" step="1" value="18"><b></b></label>
<label><span>ความทึบ</span><input type="range" id="l_op" min="5" max="100" step="5" value="80"><b></b></label>
<label><span>หมุน</span><input type="range" id="l_rot" min="-180" max="180" step="5" value="0" data-u="°"><b></b></label>
<label><span>ตำแหน่ง</span><select id="l_pos"><option value="tl">บนซ้าย</option><option value="tc">บนกลาง</option><option value="tr">บนขวา</option><option value="ml">กลางซ้าย</option><option value="mc">กึ่งกลาง</option><option value="mr">กลางขวา</option><option value="bl" selected>ล่างซ้าย</option><option value="bc">ล่างกลาง</option><option value="br">ล่างขวา</option></select></label>
<label><span>ลายซ้ำ</span><input type="checkbox" id="l_tile"></label>
<label><span>ระยะห่าง</span><input type="range" id="l_gap" min="0" max="300" step="10" value="80"><b></b></label>
</fieldset>
<fieldset>
<legend>ไฟล์ที่ได้</legend>
<label><span>รูปแบบ</span><select id="o_fmt"><option value="image/jpeg">JPG</option><option value="image/png">PNG</option><option value="image/webp">WebP</option></select></label>
<label><span>คุณภาพ</span><input type="range" id="o_q" min="50" max="100" step="1" value="92"><b></b></label>
</fieldset>
</div>
</div>
<script>
(function(){
var $=function(i){return document.getElementById(i)};
var items=[],cur=0,logo=null,busy=false,raf=0;
var IDS=['t_on','t_text','t_font','t_bold','t_color','t_size','t_op','t_rot','t_pos','t_tile','t_gap','l_on','l_size','l_op','l_rot','l_pos','l_tile','l_gap','o_fmt','o_q'];
function val(i){var e=$(i);return e.type==='checkbox'?e.checked:e.value}
function msg(t){$('wm_msg').textContent=t||''}
function saveCfg(){try{var o={};IDS.forEach(function(i){o[i]=val(i)});localStorage.setItem('wm_cfg',JSON.stringify(o))}catch(e){}}
function loadCfg(){try{var o=JSON.parse(localStorage.getItem('wm_cfg')||'{}');IDS.forEach(function(i){if(i in o){var e=$(i);if(e.type==='checkbox'){e.checked=!!o[i]}else{e.value=o[i]}}});$('l_on').checked=false}catch(e){}}
function lum(h){var n=parseInt(h.slice(1),16);return (0.299*(n>>16)+0.587*((n>>8)&255)+0.114*(n&255))/255}
function cfg(p){return{pos:val(p+'_pos'),rot:+val(p+'_rot')*Math.PI/180,tile:val(p+'_tile'),gap:+val(p+'_gap')/100,op:+val(p+'_op')/100,size:+val(p+'_size')/100}}
function wmDraw(ctx,w,h){
var d=Math.sqrt(w*w+h*h);
['t','l'].forEach(function(p){
if(!val(p+'_on'))return;
var c=cfg(p),iw,ih,fs=0,txt='';
if(p==='t'){
txt=val('t_text');if(!txt)return;
fs=d*c.size;ctx.font=(val('t_bold')?'700 ':'400 ')+fs+'px '+val('t_font');
iw=ctx.measureText(txt).width;ih=fs*1.25;
}else{
if(!logo)return;
iw=d*c.size;ih=iw*logo.height/logo.width;
}
ctx.save();
ctx.globalAlpha=c.op;
if(p==='t'){
ctx.textAlign='center';ctx.textBaseline='middle';ctx.fillStyle=val('t_color');
ctx.shadowColor=lum(val('t_color'))>0.55?'rgba(0,0,0,.55)':'rgba(255,255,255,.55)';
ctx.shadowBlur=fs*0.12;
}
function one(x,y,r){
ctx.save();ctx.translate(x,y);ctx.rotate(r);
if(p==='t'){ctx.fillText(txt,0,0)}else{ctx.drawImage(logo,-iw/2,-ih/2,iw,ih)}
ctx.restore();
}
if(c.tile){
var sx=Math.max(d*0.02,iw*(1+c.gap)),sy=Math.max(d*0.02,ih*(1+c.gap)),j=0,x,y;
ctx.translate(w/2,h/2);ctx.rotate(c.rot);
for(y=-d;d>=y;y+=sy){
for(x=-d+(j%2?sx/2:0);d>=x;x+=sx){one(x,y,0)}
j++;
}
}else{
var cs=Math.abs(Math.cos(c.rot)),sn=Math.abs(Math.sin(c.rot));
var bw=iw*cs+ih*sn,bh=iw*sn+ih*cs,m=d*0.02,v=c.pos.charAt(0),a=c.pos.charAt(1);
var cx=a==='l'?m+bw/2:(a==='r'?w-m-bw/2:w/2);
var cy=v==='t'?m+bh/2:(v==='b'?h-m-bh/2:h/2);
one(cx,cy,c.rot);
}
ctx.restore();
});
}
function show(){
var it=items[cur];if(!it)return;
var cv=$('wm_cv'),s=Math.min(1,900/Math.max(it.w,it.h));
var w=Math.max(1,Math.round(it.w*s)),h=Math.max(1,Math.round(it.h*s)),ctx=cv.getContext('2d');
cv.width=w;cv.height=h;
ctx.drawImage(it.bmp,0,0,w,h);
wmDraw(ctx,w,h);
$('wm_n').textContent=(cur+1)+' / '+items.length+'  '+it.name;
}
function redraw(){
if(raf)return;
raf=requestAnimationFrame(function(){raf=0;if(items.length){show()}saveCfg()});
}
function loadHeic(){
if(window.heic2any)return Promise.resolve();
return new Promise(function(ok,no){
var s=document.createElement('script');
s.src='https://cdn.jsdelivr.net/npm/heic2any@0.0.4/dist/heic2any.min.js';
s.onload=ok;s.onerror=function(){no(new Error('heic'))};
document.head.appendChild(s);
});
}
function dec(f){
return createImageBitmap(f).catch(function(){
return loadHeic().then(function(){return window.heic2any({blob:f,toType:'image/jpeg',quality:0.92})}).then(function(r){return createImageBitmap(Array.isArray(r)?r[0]:r)});
});
}
function add(files){
var list=Array.prototype.filter.call(files,function(f){return /^image\//.test(f.type)||/\.(heic|heif|jpe?g|png|webp|avif|gif|bmp)$/i.test(f.name)});
if(!list.length){msg('ไม่พบไฟล์ภาพที่รองรับ ลองใช้ JPG, PNG, WebP หรือ HEIC');return}
msg('กำลังโหลดภาพ...');
var bad=0;
list.reduce(function(p,f){
return p.then(function(){
return dec(f).then(function(b){items.push({name:f.name,bmp:b,w:b.width,h:b.height})},function(){bad++});
});
},Promise.resolve()).then(function(){
if(items.length){$('wm_work').hidden=false;show()}
msg(bad?('เปิดไม่ได้ '+bad+' ไฟล์ (เบราว์เซอร์อ่านรูปแบบนี้ไม่ได้)'):('โหลดแล้ว '+items.length+' ภาพ'));
});
}
function fname(it){return it.name.replace(/\.[^.]+$/,'')+'-watermark.'+val('o_fmt').split('/')[1].replace('jpeg','jpg')}
function out(it){
var fmt=val('o_fmt'),c=document.createElement('canvas'),ctx;
c.width=it.w;c.height=it.h;ctx=c.getContext('2d');
if(fmt==='image/jpeg'){ctx.fillStyle='#fff';ctx.fillRect(0,0,it.w,it.h)}
ctx.drawImage(it.bmp,0,0);
wmDraw(ctx,it.w,it.h);
return new Promise(function(ok){c.toBlob(ok,fmt,+val('o_q')/100)});
}
function dl(b,n){
var a=document.createElement('a'),u=URL.createObjectURL(b);
a.href=u;a.download=n;document.body.appendChild(a);a.click();a.remove();
setTimeout(function(){URL.revokeObjectURL(u)},4000);
}
var CT=(function(){var t=[],c,n,k;for(n=0;256>n;n++){c=n;for(k=0;8>k;k++){c=(c&1)?(0xEDB88320^(c>>>1)):(c>>>1)}t[n]=c>>>0}return t})();
function crc(u){var c=-1,i;for(i=0;u.length>i;i++){c=CT[(c^u[i])&255]^(c>>>8)}return (c^-1)>>>0}
function mkZip(files){
var enc=new TextEncoder(),parts=[],cen=[],off=0,cdSize=0;
files.forEach(function(f){
var nm=enc.encode(f.name),cr=crc(f.data),n=f.data.length;
var h=new DataView(new ArrayBuffer(30));
h.setUint32(0,0x04034b50,true);h.setUint16(4,20,true);h.setUint16(6,0x0800,true);h.setUint16(8,0,true);
h.setUint16(10,0,true);h.setUint16(12,0x21,true);h.setUint32(14,cr,true);h.setUint32(18,n,true);
h.setUint32(22,n,true);h.setUint16(26,nm.length,true);h.setUint16(28,0,true);
var g=new DataView(new ArrayBuffer(46));
g.setUint32(0,0x02014b50,true);g.setUint16(4,20,true);g.setUint16(6,20,true);g.setUint16(8,0x0800,true);
g.setUint16(10,0,true);g.setUint16(12,0,true);g.setUint16(14,0x21,true);g.setUint32(16,cr,true);
g.setUint32(20,n,true);g.setUint32(24,n,true);g.setUint16(28,nm.length,true);g.setUint32(42,off,true);
parts.push(h.buffer,nm,f.data);cen.push(g.buffer,nm);
off+=30+nm.length+n;cdSize+=46+nm.length;
});
var e=new DataView(new ArrayBuffer(22));
e.setUint32(0,0x06054b50,true);e.setUint16(8,files.length,true);e.setUint16(10,files.length,true);
e.setUint32(12,cdSize,true);e.setUint32(16,off,true);
return new Blob(parts.concat(cen,[e.buffer]),{type:'application/zip'});
}
function zipAll(){
if(busy||!items.length)return;
busy=true;
var files=[],used={};
items.reduce(function(p,it,i){
return p.then(function(){
msg('กำลังประมวลผล '+(i+1)+' / '+items.length);
return out(it).then(function(b){return b.arrayBuffer()}).then(function(buf){
var n=fname(it),k=n;
if(used[n]){used[n]++;k=used[n]+'-'+n}else{used[n]=1}
files.push({name:k,data:new Uint8Array(buf)});
});
});
},Promise.resolve()).then(function(){
dl(mkZip(files),'watermark-images.zip');msg('เสร็จแล้ว ดาวน์โหลด '+files.length+' ภาพ');busy=false;
},function(){msg('เกิดข้อผิดพลาด ลองลดจำนวนภาพหรือขนาดไฟล์');busy=false});
}
var dz=$('wm_drop');
dz.onclick=function(){$('wm_f').click()};
dz.onkeydown=function(e){if(e.key==='Enter'||e.key===' '){e.preventDefault();$('wm_f').click()}};
dz.ondragover=function(e){e.preventDefault();dz.classList.add('on')};
dz.ondragleave=function(){dz.classList.remove('on')};
dz.ondrop=function(e){e.preventDefault();dz.classList.remove('on');add(e.dataTransfer.files)};
$('wm_f').onchange=function(){add(this.files);this.value=''};
document.addEventListener('paste',function(e){var f=e.clipboardData&&e.clipboardData.files;if(f&&f.length){add(f)}});
$('l_file').onchange=function(){
var f=this.files[0];if(!f)return;
dec(f).then(function(b){logo=b;$('l_on').checked=true;redraw()},function(){msg('เปิดไฟล์โลโก้ไม่ได้')});
};
$('wm_prev').onclick=function(){if(items.length){cur=(cur+items.length-1)%items.length;show()}};
$('wm_next').onclick=function(){if(items.length){cur=(cur+1)%items.length;show()}};
$('wm_one').onclick=function(){var it=items[cur];if(!it)return;out(it).then(function(b){dl(b,fname(it))})};
$('wm_zip').onclick=zipAll;
$('wm_clear').onclick=function(){items=[];cur=0;$('wm_work').hidden=true;msg('')};
loadCfg();
Array.prototype.forEach.call(document.querySelectorAll('#wm input[type=range]'),function(r){
var b=r.nextElementSibling;
function u(){b.textContent=r.value+(r.getAttribute('data-u')||'%')}
r.addEventListener('input',u);u();
});
IDS.forEach(function(i){$(i).addEventListener('input',redraw);$(i).addEventListener('change',redraw)});
})();
</script>
</div>

## วิธีใช้งาน

1. กดช่องด้านบนเพื่อเลือกรูป หรือลากไฟล์มาวาง หรือกด Ctrl+V เพื่อวางรูปจากคลิปบอร์ด เลือกได้หลายไฟล์พร้อมกัน
2. ติ๊ก **ลายน้ำข้อความ** แล้วพิมพ์ข้อความที่ต้องการ เช่น ชื่อร้านหรือ © ชื่อของคุณ
3. ถ้าต้องการโลโก้ ติ๊ก **ลายน้ำโลโก้** แล้วเลือกไฟล์โลโก้ (PNG พื้นหลังโปร่งใสให้ผลดีที่สุด) ใช้ข้อความและโลโก้พร้อมกันได้
4. ปรับตำแหน่ง ขนาด ความทึบ และมุมหมุนจนพอใจ ดูผลได้จากตัวอย่างทันที ใช้ปุ่มก่อนหน้า/ถัดไปเพื่อตรวจทีละภาพ
5. ถ้าต้องการป้องกันการครอปออก ให้ติ๊ก **ลายซ้ำ** แล้วปรับระยะห่างและมุมหมุน (เช่น -30°)
6. เลือกรูปแบบและคุณภาพของไฟล์ แล้วกด **ดาวน์โหลดภาพนี้** หรือ **ดาวน์โหลดทั้งหมด (Zip)**

การตั้งค่าใช้กับทุกภาพในชุดเดียวกัน และเครื่องมือจะจำการตั้งค่าล่าสุดไว้ในเบราว์เซอร์ของคุณ

## ความหมายของแต่ละตัวเลือก

- **ลายน้ำข้อความ**: ข้อความที่วางทับบนภาพ เช่น ชื่อ แบรนด์ หรือข้อความลิขสิทธิ์ ระบบเพิ่มเงาบาง ๆ สีตรงข้ามให้อัตโนมัติ เพื่อให้อ่านออกทั้งบนพื้นสว่างและพื้นมืด
- **ลายน้ำโลโก้**: รูปภาพที่วางทับบนภาพถ่าย เหมาะกับโลโก้ร้านหรือแบรนด์
- **ฟอนต์ / ตัวหนา**: รูปแบบตัวอักษรของลายน้ำข้อความ ตัวหนาอ่านง่ายกว่าเมื่อลายน้ำจาง
- **สี**: สีของข้อความ สีขาวเหมาะกับภาพมืด สีเข้มเหมาะกับภาพสว่าง
- **ขนาด**: วัดเป็นเปอร์เซ็นต์ของเส้นทแยงมุมภาพ ภาพแนวตั้ง แนวนอน และความละเอียดต่างกันจึงได้ลายน้ำสัดส่วนเท่ากัน
- **ความทึบ (Opacity)**: ยิ่งค่าต่ำ ลายน้ำยิ่งโปร่งแสง ยิ่งค่าสูง ลายน้ำยิ่งชัด
- **หมุน**: เอียงลายน้ำตามองศา ค่าลบเอียงทวนเข็มนาฬิกา -30° ถึง -45° เป็นมุมที่นิยมสำหรับลายน้ำแบบเฉียง
- **ตำแหน่ง**: วางลายน้ำที่มุม ขอบ หรือกึ่งกลางภาพ รวม 9 จุด เว้นขอบให้อัตโนมัติ
- **ลายซ้ำ (Tile)**: วางลายน้ำซ้ำเป็นตารางทั่วทั้งภาพ ครอปหรือลบออกยากกว่าลายน้ำจุดเดียว และเมื่อเปิดใช้งาน ตัวเลือกตำแหน่งจะไม่มีผล
- **ระยะห่าง**: ช่องว่างระหว่างลายน้ำแต่ละอันในโหมดลายซ้ำ ค่าน้อยจะถี่ ค่ามากจะโปร่ง
- **รูปแบบไฟล์**: JPG ไฟล์เล็ก เหมาะกับภาพถ่าย PNG คมชัดและไม่สูญเสียคุณภาพ ไฟล์ใหญ่กว่า WebP ไฟล์เล็กและคมชัด แต่บางโปรแกรมเก่าอาจเปิดไม่ได้
- **คุณภาพ**: ใช้กับ JPG และ WebP ค่าสูงให้ภาพคมแต่ไฟล์ใหญ่ ค่า 85-92 เหมาะกับการใช้งานทั่วไป
- **ดาวน์โหลดทั้งหมด (Zip)**: รวมภาพที่ใส่ลายน้ำแล้วทั้งหมดเป็นไฟล์ Zip ไฟล์เดียว

## คำถามที่พบบ่อย

**รูปของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์ไหม?**
ไม่ ทุกขั้นตอนทำงานในเบราว์เซอร์ของคุณ ไฟล์ไม่ถูกส่งออกจากอุปกรณ์

**ไฟล์ HEIC จากไอโฟนใช้ได้ไหม?**
ได้ เบราว์เซอร์ที่อ่าน HEIC ได้เองจะเปิดได้ทันที ส่วนเบราว์เซอร์อื่นเครื่องมือจะโหลดตัวแปลงเพิ่มเมื่อจำเป็น ซึ่งต้องเชื่อมต่ออินเทอร์เน็ต

**ไฟล์ที่ได้คุณภาพลดลงไหม?**
ภาพที่ได้มีความละเอียดเท่าต้นฉบับ ส่วนความคมขึ้นกับรูปแบบและคุณภาพที่เลือก ตัวอย่างในหน้าจอถูกย่อเพื่อให้ปรับได้ลื่น แต่ไฟล์ที่ดาวน์โหลดไม่ถูกย่อ