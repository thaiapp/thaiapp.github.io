---
title: Online YUI Compressor ออนไลน์ ฟรี
h1: Online YUI Compressor
description: 'ย่อไฟล์ JavaScript, CSS และ JSON ด้วย Online YUI Compressor ฟรี ดูขนาดก่อนหลังและ gzip ทันที ประมวลผลในเบราว์เซอร์ทั้งหมด ปลอดภัย เร็ว ไม่ต้องสมัครสมาชิก'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-27T09:00:00+07:00'
weight: 170
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- Online YUI Compressor
- Online YUI Compressor ออนไลน์
- เครื่องมือนักพัฒนา
---

<style>
#yc{max-width:100%;font:inherit}
#yc *{box-sizing:border-box}
#yc textarea{width:100%;min-height:200px;font:13px/1.45 ui-monospace,Menlo,Consolas,monospace;padding:10px;border:1px solid rgba(128,128,128,.45);border-radius:8px;background:transparent;color:inherit;resize:vertical}
#yc .r{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:10px 0}
#yc button,#yc select,#yc input[type=text],#yc input[type=number]{font:inherit;padding:7px 12px;border-radius:8px;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit}
#yc button{cursor:pointer}
#yc button.p{background:#2563eb;border-color:#2563eb;color:#fff}
#yc input[type=text]{flex:1;min-width:180px}
#yc input[type=number]{width:80px}
#yc .st{display:grid;grid-template-columns:repeat(auto-fit,minmax(130px,1fr));gap:8px;margin:10px 0}
#yc .st div{border:1px solid rgba(128,128,128,.35);border-radius:8px;padding:8px 10px;font-size:.9em}
#yc .st b{display:block;font-size:1.15em}
#yc .dz{border:2px dashed rgba(128,128,128,.55);border-radius:10px;padding:14px;text-align:center}
#yc .dz.on{border-color:#2563eb}
#yc .m{min-height:1.4em;font-size:.92em}
#yc .m.e{color:#dc2626}
#yc .m.w{color:#d97706}
#yc .l{display:flex;flex-wrap:wrap;gap:8px;justify-content:space-between;align-items:center;padding:6px 0;border-bottom:1px solid rgba(128,128,128,.25);font-size:.9em}
</style>
<div id="yc">
<div class="r">
<label for="yc-mode">ประเภทโค้ด</label>
<select id="yc-mode"><option value="auto">ตรวจจับอัตโนมัติ</option><option value="js">JavaScript</option><option value="css">CSS</option><option value="json">JSON</option></select>
<label><input type="checkbox" id="yc-keep" checked> เก็บคอมเมนต์ลิขสิทธิ์</label>
<label><input type="checkbox" id="yc-semi"> เก็บ ; ตัวสุดท้าย (CSS)</label>
<label>ตัดบรรทัดทุก <input type="number" id="yc-lb" min="0" value="0"> ตัวอักษร</label>
</div>
<textarea id="yc-in" spellcheck="false" placeholder="วางโค้ด JavaScript, CSS หรือ JSON ที่นี่"></textarea>
<div class="r">
<button type="button" class="p" id="yc-run">ย่อขนาด</button>
<button type="button" id="yc-clear">ล้างข้อมูล</button>
<input type="text" id="yc-url" placeholder="หรือใส่ URL ของไฟล์ .js / .css / .json">
<button type="button" id="yc-load">โหลดจาก URL</button>
</div>
<div class="dz" id="yc-drop">ลากไฟล์ .js .css .json มาวางที่นี่ (หลายไฟล์ได้) หรือ <input type="file" id="yc-files" multiple accept=".js,.mjs,.css,.json"></div>
<div class="m" id="yc-msg" role="status" aria-live="polite"></div>
<div class="st">
<div>ขนาดต้นฉบับ<b id="yc-s1">-</b></div>
<div>หลังย่อ<b id="yc-s2">-</b></div>
<div>ประหยัดได้<b id="yc-s3">-</b></div>
<div>หลังย่อ + gzip<b id="yc-s4">-</b></div>
</div>
<textarea id="yc-out" spellcheck="false" readonly placeholder="ผลลัพธ์ที่ย่อขนาดแล้วจะแสดงที่นี่"></textarea>
<div class="r">
<button type="button" class="p" id="yc-copy">คัดลอก</button>
<button type="button" id="yc-dl">ดาวน์โหลด (.min)</button>
</div>
<div id="yc-list"></div>
</div>
<script>
(function(){
var $=function(i){return document.getElementById(i)};
function isW(c){return /[A-Za-z0-9_$\\]/.test(c)||c>'\x7f'}
function minJS(s,o){
var out=[],n=s.length,i=0,pd=0,col=0,pend=0,prev='',pp='',word='',lb=o.lb||0;
var KW=/^(return|typeof|instanceof|in|of|new|delete|void|throw|case|do|else|yield|await)$/;
function put(t){
var c=t.charAt(0);
if(pend&&prev){
if(pend==2&&/[\w$\\"'`)\]}+\-]/.test(prev)&&(/[\w$\\(\[+\-!~"'`]/.test(c)||c>'\x7f'||(c=='{'&&prev!=')'))){out.push('\n');col=0}
else if((isW(prev)&&isW(c))||(prev=='+'&&c=='+')||(prev=='-'&&c=='-')||(/\d/.test(prev)&&c=='.')){out.push(' ');col++}
}
pend=0;out.push(t);col+=t.length;pp=prev;prev=t.charAt(t.length-1)
}
function tpl(k){k++;while(k<n&&s[k]!='`'){if(s[k]=='\\')k+=2;else if(s[k]=='$'&&s[k+1]=='{')k=blk(k+2);else k++}return k+1}
function blk(k){var d=1,c;while(k<n&&d){c=s[k];if(c=='{')d++;else if(c=='}')d--;else if(c=='`'){k=tpl(k);continue}else if(c=='"'||c=="'"){k++;while(k<n&&s[k]!=c){if(s[k]=='\\')k++;k++}}k++}return k}
while(i<n){
var c=s[i],d=s[i+1],j,t;
if(/\s/.test(c)){var nl=0;while(i<n&&/\s/.test(s[i])){if(s[i]=='\n')nl=1;i++}pend=Math.max(pend,nl?2:1);continue}
if(c=='/'&&d=='/'){j=s.indexOf('\n',i);i=j<0?n:j;pend=Math.max(pend,1);continue}
if(c=='/'&&d=='*'){j=s.indexOf('*/',i+2);j=j<0?n:j+2;t=s.slice(i,j);
if(o.keep&&(t.charAt(2)=='!'||/@(license|preserve)/i.test(t))){out.push('\n'+t+'\n');prev='';col=0;pend=0}else pend=Math.max(pend,1);
i=j;continue}
if(c=='"'||c=="'"){j=i+1;while(j<n&&s[j]!=c){if(s[j]=='\\')j++;j++}put(s.slice(i,j+1));i=j+1;word='';continue}
if(c=='`'){j=tpl(i);put(s.slice(i,j));i=j;word='';continue}
if(c=='/'){
var re=!prev||/[(,=:\[!&|?{};*%<>~^]/.test(prev)||prev=='}'||((prev=='+'||prev=='-')&&pp!=prev)||(isW(prev)&&KW.test(word));
if(re){j=i+1;var cl=0;while(j<n&&(s[j]!='/'||cl)&&s[j]!='\n'){if(s[j]=='\\')j++;else if(s[j]=='[')cl=1;else if(s[j]==']')cl=0;j++}
j++;while(j<n&&/[a-z]/i.test(s[j]))j++;put(s.slice(i,j));i=j;word='';continue}
}
if(isW(c)){j=i;while(j<n&&isW(s[j]))j++;t=s.slice(i,j);put(t);word=t;i=j;continue}
put(c);word='';
if(c=='(')pd++;else if(c==')')pd--;
if(lb&&col>=lb&&pd<=0&&(c==';'||c=='}')){out.push('\n');col=0;prev=''}
i++
}
return out.join('').trim()
}
function minCSS(s,o){
var ph=[],r='',i=0,n=s.length,c,j,t;
function hold(x){ph.push(x);return '\u0001'+(ph.length-1)+'\u0002'}
while(i<n){c=s[i];
if(c=='"'||c=="'"){j=i+1;while(j<n&&s[j]!=c){if(s[j]=='\\')j++;j++}r+=hold(s.slice(i,j+1));i=j+1}
else if(c=='/'&&s[i+1]=='*'){j=s.indexOf('*/',i+2);j=j<0?n:j+2;t=s.slice(i,j);if(o.keep&&t.charAt(2)=='!')r+=hold(t);else r+=' ';i=j}
else if(/^url\(/i.test(s.substr(i,4))&&!/^url\(\s*["']/i.test(s.substr(i,10))){j=s.indexOf(')',i);j=j<0?n:j+1;r+=hold(s.slice(i,j).replace(/\(\s+/,'(').replace(/\s+\)$/,')'));i=j}
else if(/^(calc|min|max|clamp)\(/i.test(s.substr(i,6))){var d=0;j=s.indexOf('(',i);do{if(s[j]=='(')d++;else if(s[j]==')')d--;j++}while(j<n&&d>0);
r+=hold(s.slice(i,j).replace(/\/\*[\s\S]*?\*\//g,'').replace(/\s+/g,' ').replace(/\(\s/g,'(').replace(/\s\)/g,')').replace(/\s*,\s*/g,','));i=j}
else{r+=c;i++}
}
var x='',pd=0,k=0,m=r.length;
while(k<m){c=r[k];
if(/\s/.test(c)){while(k<m&&/\s/.test(r[k]))k++;
var p=x.charAt(x.length-1),nx=r[k]||'';
if(!p||!nx||/[{};,:(]/.test(p)||/[{};,)]/.test(nx)||(!pd&&(/[>~+!]/.test(p)||/[>~+!]/.test(nx))))continue;
x+=' ';continue}
if(c=='(')pd++;else if(c==')')pd--;
x+=c;k++}
x=x.replace(/;{2,}/g,';');
if(!o.semi)x=x.replace(/;\}/g,'}');
var b;do{b=x;x=x.replace(/[^{};]+\{\}/g,'')}while(b!=x);
x=x.replace(/(^|[\s:,(])-?(?:0*\.)?0+(px|em|rem|ex|ch|vw|vh|vmin|vmax|cm|mm|in|pt|pc)(?![\w%-])/gi,function(a,p1){return p1+'0'});
x=x.replace(/(^|[^\d.])0+\.(?=\d)/g,'$1.');
x=x.replace(/#([0-9a-f])\1([0-9a-f])\2([0-9a-f])\3(?=[;}),!\s]|$)/gi,'#$1$2$3');
if(o.lb>0){var z='',l=0;for(var u=0;u<x.length;u++){z+=x[u];l++;if(x[u]=='}'&&l>=o.lb){z+='\n';l=0}}x=z}
return x.replace(/\u0001(\d+)\u0002/g,function(a,q){return ph[q]}).trim()
}
function minJSON(s){return JSON.stringify(JSON.parse(s))}
function detect(s,name){
if(name){var e=name.split('.').pop().toLowerCase();if(e=='js'||e=='mjs')return 'js';if(e=='css')return 'css';if(e=='json')return 'json'}
var t=s.trim();
if(/^[\[{]/.test(t)){try{JSON.parse(t);return 'json'}catch(e){}}
if(/\b(function|var|let|const|return|import|export|class)\b|=>/.test(t))return 'js';
return /\{[^{}]*:[^{}]*[;}]/.test(t)?'css':'js'
}
function opts(){return{keep:$('yc-keep').checked,semi:$('yc-semi').checked,lb:Math.max(0,parseInt($('yc-lb').value,10)||0)}}
function conv(s,m){var o=opts();return m=='css'?minCSS(s,o):m=='json'?minJSON(s):minJS(s,o)}
function chk(code){try{new Function(code);return ''}catch(e){return e.message}}
function bytes(s){return new TextEncoder().encode(s).length}
function fmt(v){return v>=1024?(v/1024).toFixed(2)+' KB':v+' B'}
function gz(s){try{return new Response(new Blob([s]).stream().pipeThrough(new CompressionStream('gzip'))).arrayBuffer().then(function(b){return b.byteLength},function(){return null})}catch(e){return Promise.resolve(null)}}
function msg(t,c){var e=$('yc-msg');e.textContent=t||'';e.className='m'+(c?' '+c:'')}
function stats(a,b,g){
$('yc-s1').textContent=fmt(a);$('yc-s2').textContent=fmt(b);
$('yc-s3').textContent=a?Math.max(0,(100-b*100/a)).toFixed(1)+'%':'-';
$('yc-s4').textContent=g==null?'ไม่รองรับ':fmt(g)
}
var curName='',curMode='js';
function dl(name,text){
var a=document.createElement('a'),u=URL.createObjectURL(new Blob([text],{type:'text/plain;charset=utf-8'}));
a.href=u;a.download=name;document.body.appendChild(a);a.click();document.body.removeChild(a);
setTimeout(function(){URL.revokeObjectURL(u)},1500)
}
function minName(n,m){
if(!n)return 'minified.'+m;
var p=n.lastIndexOf('.');return p<0?n+'.min':n.slice(0,p).replace(/\.min$/,'')+'.min'+n.slice(p)
}
function run(){
var s=$('yc-in').value;
if(!s.trim()){msg('กรุณาวางโค้ดหรือเลือกไฟล์ก่อน','e');return}
var m=$('yc-mode').value;if(m=='auto')m=detect(s,curName);
var out;
try{out=conv(s,m)}catch(e){msg('ย่อขนาดไม่สำเร็จ: '+e.message,'e');return}
curMode=m;$('yc-out').value=out;
var a=bytes(s),b=bytes(out);stats(a,b,null);
gz(out).then(function(g){stats(a,b,g)});
var w='';
if(m=='js'){w=chk(s)?'คำเตือน: ตรวจสอบ syntax ต้นฉบับไม่ผ่าน (อาจเป็นโค้ดแบบ ES module ซึ่งเครื่องมือตรวจไม่ได้) กรุณาทดสอบผลลัพธ์ก่อนใช้งานจริง':(chk(out)?'คำเตือน: ผลลัพธ์อาจมี syntax ผิดพลาด กรุณาตรวจสอบก่อนใช้งาน':'')}
if(w)msg(w,'w');else msg('ย่อขนาดสำเร็จ ('+m.toUpperCase()+')')
}
function batch(files){
var list=$('yc-list');list.textContent='';
Array.prototype.forEach.call(files,function(f){
f.text().then(function(s){
var m=detect(s,f.name),out;
try{out=conv(s,m)}catch(e){msg(f.name+': '+e.message,'e');return}
if(files.length==1){curName=f.name;$('yc-in').value=s;run();return}
var row=document.createElement('div');row.className='l';
var sp=document.createElement('span');sp.textContent=f.name+' : '+fmt(bytes(s))+' → '+fmt(bytes(out));
var bt=document.createElement('button');bt.type='button';bt.textContent='ดาวน์โหลด';
bt.onclick=function(){dl(minName(f.name,m),out)};
row.appendChild(sp);row.appendChild(bt);list.appendChild(row)
})
})
}
$('yc-run').onclick=run;
$('yc-clear').onclick=function(){$('yc-in').value='';$('yc-out').value='';$('yc-list').textContent='';curName='';stats(0,0,0);['yc-s1','yc-s2','yc-s3','yc-s4'].forEach(function(k){$(k).textContent='-'});msg('')};
$('yc-copy').onclick=function(){
var v=$('yc-out').value;if(!v){msg('ยังไม่มีผลลัพธ์ให้คัดลอก','e');return}
var ok=function(){msg('คัดลอกแล้ว')},ko=function(){$('yc-out').select();document.execCommand('copy');ok()};
try{navigator.clipboard.writeText(v).then(ok,ko)}catch(e){ko()}
};
$('yc-dl').onclick=function(){var v=$('yc-out').value;if(!v){msg('ยังไม่มีผลลัพธ์ให้ดาวน์โหลด','e');return}dl(minName(curName,curMode),v)};
$('yc-files').onchange=function(){if(this.files.length)batch(this.files)};
var dz=$('yc-drop');
dz.ondragover=function(e){e.preventDefault();dz.className='dz on'};
dz.ondragleave=function(){dz.className='dz'};
dz.ondrop=function(e){e.preventDefault();dz.className='dz';if(e.dataTransfer.files.length)batch(e.dataTransfer.files)};
$('yc-load').onclick=function(){
var u=$('yc-url').value.trim();if(!u){msg('กรุณาใส่ URL','e');return}
msg('กำลังโหลด...');
fetch(u).then(function(r){if(!r.ok)throw new Error('HTTP '+r.status);return r.text()}).then(function(t){
curName=u.split('?')[0].split('/').pop();$('yc-in').value=t;run()
}).catch(function(){msg('โหลดไฟล์ไม่ได้ (เว็บปลายทางอาจไม่อนุญาต CORS) กรุณาวางโค้ดลงในช่องแทน','e')})
};
window.YUIC={js:minJS,css:minCSS,json:minJSON};
})();
</script>

## วิธีใช้งาน Online YUI Compressor

1. **เลือกประเภทโค้ด** ปล่อยเป็น "ตรวจจับอัตโนมัติ" ได้ หรือเลือก JavaScript, CSS, JSON เองเพื่อความแม่นยำ
2. **ใส่โค้ด** โดยวางลงในช่องด้านบน, ลากไฟล์ `.js` `.css` `.json` มาวาง (เลือกหลายไฟล์ได้พร้อมกัน) หรือใส่ URL แล้วกด "โหลดจาก URL"
3. **ตั้งค่าตัวเลือก** เช่น เก็บคอมเมนต์ลิขสิทธิ์ เก็บเครื่องหมาย `;` ตัวสุดท้ายของ CSS หรือกำหนดให้ตัดบรรทัดทุกกี่ตัวอักษร (ค่า 0 คือไม่ตัดบรรทัด)
4. **กด "ย่อขนาด"** แล้วดูผลลัพธ์พร้อมขนาดก่อนและหลัง เปอร์เซ็นต์ที่ประหยัดได้ และขนาดเมื่อบีบอัดด้วย gzip
5. **กด "คัดลอก" หรือ "ดาวน์โหลด"** ไฟล์ที่ดาวน์โหลดจะมีนามสกุล `.min` เช่น `app.min.js`
6. **ทดสอบก่อนใช้งานจริง** โดยเปิดเว็บและตรวจสอบว่าทุกอย่างยังทำงานได้ตามปกติ

ข้อมูลทั้งหมดประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดโค้ดไปยังเซิร์ฟเวอร์ (ยกเว้นการโหลดจาก URL ซึ่งเบราว์เซอร์จะดึงไฟล์โดยตรง)

## คำอธิบายศัพท์ที่ควรรู้

- **Minify (ย่อขนาดโค้ด)** การลบช่องว่าง การขึ้นบรรทัดใหม่ และคอมเมนต์ที่ไม่จำเป็นออก โดยโค้ดยังทำงานเหมือนเดิม ช่วยให้ไฟล์เล็กลงและเว็บโหลดเร็วขึ้น
- **YUI Compressor** เครื่องมือย่อ JavaScript และ CSS ที่พัฒนาโดย Yahoo! เน้นความปลอดภัยของโค้ดเป็นหลัก เครื่องมือนี้ใช้แนวทางย่อแบบปลอดภัยในลักษณะเดียวกัน แต่ทำงานในเบราว์เซอร์ด้วย JavaScript ไม่ได้รัน Java ต้นฉบับ
- **Mangle / Munge** การเปลี่ยนชื่อตัวแปรให้สั้นลง เช่น `userName` เป็น `a` เครื่องมือนี้ไม่เปลี่ยนชื่อตัวแปร จึงปลอดภัยกับโค้ดที่ใช้ `eval` หรือ `with` แต่ไฟล์อาจเล็กลงน้อยกว่าเครื่องมือที่ทำ mangle
- **อัตราการบีบอัด / ประหยัดได้** เปอร์เซ็นต์ขนาดที่ลดลงเมื่อเทียบกับต้นฉบับ
- **Gzip** การบีบอัดไฟล์ที่เว็บเซิร์ฟเวอร์ส่งให้เบราว์เซอร์ตามโปรโตคอล HTTP ใช้ร่วมกับ minify ได้ ค่า "หลังย่อ + gzip" คือขนาดที่ผู้ใช้ดาวน์โหลดจริงโดยประมาณ
- **คอมเมนต์ลิขสิทธิ์ (`/*! ... */`)** คอมเมนต์ที่ขึ้นต้นด้วย `/*!` หรือมีคำว่า `@license` และ `@preserve` ซึ่งมักระบุลิขสิทธิ์หรือเงื่อนไขการใช้งานไลบรารี ควรเก็บไว้
- **ตัดบรรทัด (Line break)** การแทรกบรรทัดใหม่ทุกช่วงความยาวที่กำหนด เพื่อให้เปิดไฟล์ในโปรแกรมแก้ไขได้ง่าย เหมาะกับระบบที่จำกัดความยาวต่อบรรทัด
- **เก็บ `;` ตัวสุดท้าย (Preserve semicolon)** ตามปกติ CSS ไม่ต้องมี `;` หลังคำสั่งสุดท้ายในกลุ่ม `{ }` จึงลบออกเพื่อประหยัดพื้นที่ ติ๊กตัวเลือกนี้หากต้องการเก็บไว้
- **JSON** รูปแบบข้อมูลข้อความที่ใช้แลกเปลี่ยนข้อมูลระหว่างระบบ เครื่องมือจะตรวจความถูกต้องแล้วย่อให้อยู่ในบรรทัดเดียว
- **ES Module** โค้ด JavaScript ที่ใช้ `import` และ `export` เครื่องมือย่อได้ แต่ตรวจ syntax ล่วงหน้าไม่ได้ จึงอาจขึ้นคำเตือน
- **CORS** กฎความปลอดภัยของเบราว์เซอร์ที่กำหนดว่าเว็บหนึ่งดึงไฟล์จากอีกเว็บได้หรือไม่ หากโหลดจาก URL ไม่ได้ ให้วางโค้ดลงในช่องแทน

## คำถามที่พบบ่อย

### Online YUI Compressor ปลอดภัยหรือไม่
ปลอดภัย โค้ดถูกย่อในเบราว์เซอร์ของคุณทั้งหมดและไม่ถูกส่งไปเก็บที่เซิร์ฟเวอร์

### ย่อแล้วโค้ดจะทำงานผิดพลาดไหม
เครื่องมือเลือกวิธีที่ปลอดภัย คือลบช่องว่างและคอมเมนต์โดยไม่เปลี่ยนชื่อตัวแปร อย่างไรก็ตามควรทดสอบเว็บทุกครั้งก่อนนำขึ้นใช้งานจริง และเก็บไฟล์ต้นฉบับไว้เสมอ

### ย่อ JavaScript ได้สูงสุดเท่าไร
ขึ้นอยู่กับโค้ด โดยทั่วไปประหยัดได้ราว 20-60% โค้ดที่มีคอมเมนต์และการย่อหน้ามากจะลดได้มากกว่า ดูผลจริงได้จากช่อง "ประหยัดได้" และ "หลังย่อ + gzip"

### รองรับ JavaScript แบบ ES6 หรือไม่
รองรับ ทั้ง `let`, `const`, arrow function และ template literal เพราะเครื่องมือไม่แปลงหรือเปลี่ยนชื่อโค้ด แต่เพียงตัดส่วนที่ไม่จำเป็นออก

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[
{"@type":"Question","name":"Online YUI Compressor ปลอดภัยหรือไม่","acceptedAnswer":{"@type":"Answer","text":"ปลอดภัย โค้ดถูกย่อในเบราว์เซอร์ของคุณทั้งหมดและไม่ถูกส่งไปเก็บที่เซิร์ฟเวอร์"}},
{"@type":"Question","name":"ย่อแล้วโค้ดจะทำงานผิดพลาดไหม","acceptedAnswer":{"@type":"Answer","text":"เครื่องมือเลือกวิธีที่ปลอดภัย คือลบช่องว่างและคอมเมนต์โดยไม่เปลี่ยนชื่อตัวแปร อย่างไรก็ตามควรทดสอบเว็บทุกครั้งก่อนนำขึ้นใช้งานจริง"}},
{"@type":"Question","name":"รองรับ JavaScript แบบ ES6 หรือไม่","acceptedAnswer":{"@type":"Answer","text":"รองรับ ทั้ง let, const, arrow function และ template literal เพราะเครื่องมือไม่แปลงหรือเปลี่ยนชื่อโค้ด"}}
]}
</script>