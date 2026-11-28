---
title: การบีบอัด JS และ CSS ออนไลน์ ฟรี | Prasslina
h1: การบีบอัด JS และ CSS
description: ย่อไฟล์ JS, CSS, HTML และ JSON ออนไลน์ฟรี ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดโค้ด ลบคอมเมนต์ ดูขนาดก่อน-หลังและ gzip คัดลอกหรือดาวน์โหลดทันที ไม่ต้องติดตั้ง
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-27T09:00:00+07:00'
weight: 169
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- การบีบอัด JS และ CSS
- การบีบอัด JS และ CSS ออนไลน์
- เครื่องมือนักพัฒนา
- ย่อ JS
- ย่อ CSS
- ย่อ HTML
- ย่อ JSON
- minify javascript
- minify css
- js minifier
- css minifier
- บีบอัดโค้ด
---

วางโค้ดหรือลากไฟล์มาวางเพื่อย่อขนาดทันที ทำงานในเบราว์เซอร์ของคุณเองทั้งหมด โค้ดไม่ถูกส่งไปที่เซิร์ฟเวอร์

<style>
.mn{font:15px/1.6 system-ui,-apple-system,"Segoe UI",sans-serif;margin:1rem 0}
.mn *{box-sizing:border-box}
.mn-opt{display:flex;flex-wrap:wrap;gap:.5rem 1rem;margin-bottom:.75rem}
.mn-opt label{display:inline-flex;align-items:center;gap:.35rem}
.mn textarea,.mn select{width:100%;font:13px/1.5 ui-monospace,Menlo,Consolas,monospace;color:inherit;background:transparent;border:1px solid rgba(128,128,128,.45);border-radius:8px;padding:.6rem}
.mn select{width:auto;font-family:inherit;padding:.3rem}
.mn textarea{min-height:200px;resize:vertical}
.mn-dz{display:block;margin:.75rem 0;padding:1rem;border:2px dashed rgba(128,128,128,.55);border-radius:8px;text-align:center;cursor:pointer}
.mn-dz.on{border-color:#2563eb;background:rgba(37,99,235,.08)}
.mn-dz input{display:none}
.mn button{font:inherit;cursor:pointer;border:1px solid rgba(128,128,128,.55);background:transparent;color:inherit;border-radius:8px;padding:.45rem .9rem;margin:0 .4rem .4rem 0}
.mn button.p{background:#2563eb;border-color:#2563eb;color:#fff}
.mn-st{margin:.4rem 0;font-weight:600}
.mn-err{color:#d92d20;margin:.4rem 0}
.mn-list{padding-left:1.2rem}
.mn-list li{margin:.25rem 0}
.mn-list button{margin-left:.5rem;padding:.15rem .6rem}
</style>

<div class="mn" id="mn">
<div class="mn-opt">
<label>ประเภทโค้ด <select id="mn-type"><option value="auto">ตรวจจับอัตโนมัติ</option><option value="js">JavaScript</option><option value="css">CSS</option><option value="html">HTML</option><option value="json">JSON</option></select></label>
<label><input type="checkbox" id="mn-rm" checked> ลบคอมเมนต์</label>
<label><input type="checkbox" id="mn-lic" checked> เก็บคอมเมนต์ลิขสิทธิ์ (/*!)</label>
<label><input type="checkbox" id="mn-con"> ลบ console.* และ debugger</label>
<label><input type="checkbox" id="mn-zero" checked> ตัดเลข 0 นำหน้า (CSS)</label>
</div>
<textarea id="mn-in" placeholder="วางโค้ด JS, CSS, HTML หรือ JSON ที่นี่" spellcheck="false" aria-label="โค้ดต้นฉบับ"></textarea>
<label class="mn-dz" id="mn-dz">หรือลากไฟล์ .js .css .html .json มาวางที่นี่ (เลือกได้หลายไฟล์)<input type="file" id="mn-files" multiple accept=".js,.mjs,.css,.html,.htm,.json"></label>
<div><button type="button" class="p" id="mn-go">ย่อโค้ด</button><button type="button" id="mn-ex">ตัวอย่าง</button><button type="button" id="mn-rs">ล้างค่า</button></div>
<div class="mn-err" id="mn-err" role="alert"></div>
<div class="mn-st" id="mn-st" aria-live="polite"></div>
<textarea id="mn-out" readonly placeholder="ผลลัพธ์ที่ย่อแล้วจะแสดงที่นี่" spellcheck="false" aria-label="ผลลัพธ์ที่ย่อแล้ว"></textarea>
<div><button type="button" id="mn-cp">คัดลอก</button><button type="button" id="mn-dl">ดาวน์โหลด</button></div>
<ul class="mn-list" id="mn-list"></ul>
</div>

<script>
(function(){
/*E1*/
var cur='';
function E(m,i){throw new Error(m+' (บรรทัดที่ '+(cur.slice(0,i).split('\n').length)+')')}
var WC=/[\w$\u0080-\uffff\\]/;
var PS={};['>>>=','...','===','!==','**=','<<=','>>=','>>>','&&=','||=','??=','=>','==','!=','<=','>=','&&','||','??','?.','++','--','+=','-=','*=','/=','%=','&=','|=','^=','<<','>>','**'].forEach(function(x){PS[x]=1});
var RK=/^(return|typeof|instanceof|in|of|new|delete|void|throw|case|do|else|yield|await)$/;
var RS=/^(return|break|continue|throw|yield|async)$/;
var CN=/^(\(|\[|\.|,|;|:|=|\?|\+|-|\*|\/|%|&|\||\^|<|>|\)|\]|\}|=>|\?\.|\?\?|&&|\|\||[=!]==?|<=|>=|\*\*|<<|>>>?|[-+*\/%&|^]=|\*\*=|&&=|\|\|=|\?\?=|<<=|>>>?=)$/;
function tpl(s,i){var n=s.length,c;i++;while(i<n){c=s[i];if(c=='\\')i+=2;else if(c=='`')return i+1;else if(c=='$'&&s[i+1]=='{')i=ex(s,i+2);else i++}E('เทมเพลต ` ไม่ได้ปิด',i)}
function ex(s,i){var d=1,n=s.length,c,q,lc='',pl,cl;while(i<n){c=s[i];pl=lc;if(!/\s/.test(c))lc=c;if(c=='{')d++;else if(c=='}'){if(--d==0)return i+1}else if(c=='`'){i=tpl(s,i);continue}else if(c=='"'||c=="'"){q=c;i++;while(i<n&&s[i]!=q){if(s[i]=='\\')i++;i++}}else if(c=='/'&&s[i+1]=='*'){i=s.indexOf('*/',i+2);if(i<0)break;i++}else if(c=='/'&&s[i+1]=='/'){i=s.indexOf('\n',i);if(i<0)break}else if(c=='/'&&(!pl||/[(,=:\[!&|?{};+\-*%<>~^]/.test(pl))){i++;cl=0;while(i<n&&s[i]!='\n'){if(s[i]=='\\')i++;else if(s[i]=='[')cl=1;else if(s[i]==']')cl=0;else if(s[i]=='/'&&!cl)break;i++}}i++}E('${ ในเทมเพลตไม่ได้ปิด',i)}
function lex(s,o){
var T=[],i=0,n=s.length,nl=0,sp=0,c,j,m,p,k,txt,cl,ch;
var wr=/[\w$\u0080-\uffff\\]+/y,nr=/0[xXbBoO][\da-fA-F_]+n?|(?:\d[\d_]*\.?[\d_]*|\.\d[\d_]*)(?:[eE][+-]?\d+)?n?/y;
function add(t,v){T.push({t:t,v:v,nl:nl,sp:sp});nl=sp=0}
if(s.slice(0,2)=='#!'){j=s.indexOf('\n');if(j<0)j=n;add('c',s.slice(0,j));i=j}
while(i<n){
c=s[i];
if(/\s/.test(c)){if(/[\n\r\u2028\u2029]/.test(c))nl=1;else sp=1;i++;continue}
if(c=='/'&&(s[i+1]=='/'||s[i+1]=='*')){
if(s[i+1]=='/'){j=s.indexOf('\n',i);if(j<0)j=n}else{j=s.indexOf('*/',i+2);if(j<0)E('คอมเมนต์ /* ไม่ได้ปิดด้วย */',i);j+=2}
txt=s.slice(i,j);
if(!o.rm||(o.lic&&/^\/[*\/]!|@license|@preserve/.test(txt)))add('c',txt);else if(/\n/.test(txt))nl=1;else sp=1;
i=j;continue}
if(c=='"'||c=="'"){j=i+1;while(j<n&&s[j]!=c){if(s[j]=='\\')j+=2;else if(s[j]=='\n')break;else j++}if(s[j]!=c)E('สตริงไม่ได้ปิดเครื่องหมายคำพูด',i);add('s',s.slice(i,j+1));i=j+1;continue}
if(c=='`'){j=tpl(s,i);add('t',s.slice(i,j));i=j;continue}
if(/[0-9]/.test(c)||(c=='.'&&/[0-9]/.test(s[i+1]||''))){nr.lastIndex=i;m=nr.exec(s);if(m){add('n',m[0]);i+=m[0].length;continue}}
if(c=='/'){
for(k=T.length-1;k>=0&&T[k].t=='c';k--);
p=k>=0?T[k]:null;
if(!p||(p.t=='p'&&!/^(\)|\]|\+\+|--)$/.test(p.v))||(p.t=='w'&&RK.test(p.v))){
j=i+1;cl=0;
while(j<n){ch=s[j];if(ch=='\\')j++;else if(ch=='\n')break;else if(ch=='[')cl=1;else if(ch==']')cl=0;else if(ch=='/'&&!cl)break;j++}
if(j>=n||s[j]!='/')E('นิพจน์ regex ไม่ได้ปิดด้วย /',i);
j++;while(j<n&&WC.test(s[j]))j++;
add('r',s.slice(i,j));i=j;continue}}
wr.lastIndex=i;m=wr.exec(s);
if(m){add('w',m[0]);i+=m[0].length;continue}
txt=c;
for(k=4;k>1;k--)if(PS[s.substr(i,k)]){txt=s.substr(i,k);break}
if(txt=='?.'&&/[0-9]/.test(s[i+2]||''))txt='?';
add('p',txt);i+=txt.length}
return T}
function dropCon(T){
var R=[],i,k,d,t,pv,nx;
for(i=0;i<T.length;i++){
t=T[i];
if(t.t=='w'&&t.v=='debugger'){R.push({t:'p',v:';',nl:t.nl,sp:t.sp});continue}
if(t.t=='w'&&t.v=='console'&&T[i+1]&&T[i+1].v=='.'&&T[i+2]&&T[i+2].t=='w'&&/^(log|info|warn|error|debug|trace|table|dir|time|timeEnd|group|groupEnd|assert)$/.test(T[i+2].v)&&T[i+3]&&T[i+3].v=='('){
pv=R[R.length-1];
if(!(pv&&(pv.v=='.'||pv.v=='?.'))){
d=0;
for(k=i+3;k<T.length;k++){if(T[k].t=='p'){if(T[k].v=='(')d++;else if(T[k].v==')'&&--d==0)break}}
if(k<T.length){
nx=T[k+1];
if((!pv||(pv.t=='p'&&/^[;{}]$/.test(pv.v)))&&nx&&nx.t=='p'&&nx.v==';'){i=k+1;continue}
R.push({t:'w',v:'void',nl:t.nl,sp:t.sp},{t:'n',v:'0',nl:0,sp:1});i=k;continue}}}
R.push(t)}
return R}
function keepNL(a,b){
var x=a.v,y=b.v;
if(a.t=='w'&&RS.test(x))return !/^[;}]$/.test(y);
if(!(a.t=='w'||a.t=='n'||a.t=='s'||a.t=='t'||a.t=='r'||(a.t=='p'&&/^(\)|\]|\}|\+\+|--)$/.test(x))))return false;
if(b.t=='p'&&(y=='++'||y=='--'))return true;
if(x=='}'&&a.t=='p')return !(b.t=='p'&&/^[,;)\]}]$/.test(y));
if(b.t=='t')return false;
if(b.t=='p')return !CN.test(y);
if(b.t=='w')return !/^(in|instanceof|catch|finally)$/.test(y);
return true}
function joinJS(T){
var o='',pv=null,t,i,a,b,e,f;
for(i=0;i<T.length;i++){
t=T[i];
if(t.t=='c'){o+=(o?'\n':'')+t.v+'\n';pv=null;continue}
if(pv){
a=pv.v;b=t.v;e=a.slice(-1);f=b[0];
if(t.nl&&keepNL(pv,t))o+='\n';
else if((WC.test(e)&&WC.test(f))||(e=='+'&&f=='+')||(e=='-'&&f=='-')||(e=='/'&&f=='/')||(pv.t=='n'&&f=='.'&&/^\d+$/.test(a))||(e=='?'&&f=='.'))o+=' '}
o+=t.v;pv=t}
return o}
function minJS(s,o){var T=lex(s,o);if(o.con)T=dropCon(T);return joinJS(T)}
function minCSS(s,o){
var P=[],a,b,q;
s=s.replace(/\/\*[\s\S]*?\*\/|"(?:\\[\s\S]|[^"\\])*"|'(?:\\[\s\S]|[^'\\])*'|url\(\s*(?:[^)"'\s]|\\.)*\s*\)/gi,function(m){
if(m[0]=='/'){if(o.rm&&!(o.lic&&m[2]=='!'))return ' ';m='\n'+m+'\n'}
P.push(m);return '\u0000'+(P.length-1)+'\u0000'});
if(/\/\*/.test(s))throw new Error('คอมเมนต์ /* ไม่ได้ปิดด้วย */');
if(/["']/.test(s))throw new Error('มีเครื่องหมายคำพูดที่ไม่ได้ปิด');
a=(s.match(/\{/g)||[]).length;b=(s.match(/\}/g)||[]).length;
if(a!=b)throw new Error('วงเล็บปีกกา { } ไม่ครบคู่ (เปิด '+a+' ปิด '+b+')');
s=s.replace(/\s+/g,' ').replace(/ ?([{};,>~!]) ?/g,'$1').replace(/:\s+/g,':').replace(/\( /g,'(').replace(/ \)/g,')').replace(/([\w)\]-]) :(?=[^{};]*[;}])/g,'$1:').replace(/;+}/g,'}');
do{q=s;s=s.replace(/(^|[{};])[^{};]*\{\}/g,'$1')}while(q!=s);
if(o.zero)s=s.replace(/(^|[^\d.\w])0+\.(\d)/g,'$1.$2');
return s.replace(/\u0000(\d+)\u0000/g,function(m,k){return P[k]}).replace(/\*\/\n +/g,'*/\n').trim()}
function minHTML(s,o){
var P=/(<pre[\s\S]*?<\/pre>|<textarea[\s\S]*?<\/textarea>|<script[\s\S]*?<\/script>|<style[\s\S]*?<\/style>)/i;
return s.split(P).map(function(x,i){
var m,t;
if(i%2==0){
if(o.rm)x=x.replace(/<!--(?!\[if)[\s\S]*?-->/g,'');
return x.replace(/\s+/g,' ').replace(/ ?(<\/?(?:div|p|ul|ol|li|table|thead|tbody|tfoot|tr|td|th|html|head|body|section|header|footer|nav|main|article|aside|form|h[1-6]|meta|link|title|br|hr|option|select|!doctype)\b[^>]*>) ?/gi,'$1')}
m=/^(<(script|style)\b([^>]*)>)([\s\S]*?)(<\/\2>)$/i.exec(x);
if(m&&m[4].trim()&&!/\bsrc\s*=/i.test(m[3])){
t=/type\s*=\s*["']?([^"'\s>]+)/i.exec(m[3]);
if(!t||/^(module|text\/javascript|application\/javascript|text\/css)$/i.test(t[1])){
try{return m[1]+(m[2].toLowerCase()=='script'?minJS(m[4],o):minCSS(m[4],o))+m[5]}catch(e){}}}
return x}).join('').trim()}
function minJSON(s){return JSON.stringify(JSON.parse(s))}
function detect(s,name){
var e=(name||'').toLowerCase().match(/\.(\w+)$/),t=s.trim();
if(e){if(/^(m?js|cjs)$/.test(e[1]))return 'js';if(e[1]=='css')return 'css';if(/^html?$/.test(e[1]))return 'html';if(e[1]=='json')return 'json'}
if(/^</.test(t))return 'html';
if(/^[\[{]/.test(t)){try{JSON.parse(t);return 'json'}catch(x){}}
if(/^(@[\w-]+|[^{};]+\{[^{}]*:[^{}]*\})/.test(t)&&!/\b(function|var|let|const)\b|=>/.test(t))return 'css';
return 'js'}
function proc(s,name,type,o){
cur=s;type=(type&&type!='auto')?type:detect(s,name);
return{t:type,out:type=='css'?minCSS(s,o):type=='html'?minHTML(s,o):type=='json'?minJSON(s):minJS(s,o)}}
/*E2*/
var $=function(i){return document.getElementById(i)},R=[],lt='js',EXT={js:'js',css:'css',html:'html',json:'json'};
function opts(){return{rm:$('mn-rm').checked,lic:$('mn-lic').checked,con:$('mn-con').checked,zero:$('mn-zero').checked}}
function bytes(s){return new TextEncoder().encode(s).length}
function fmt(n){return n.toLocaleString('en-US')+' B'}
function pct(a,b){return a?((1-b/a)*100).toFixed(1)+'%':'0%'}
function err(m){$('mn-err').textContent=m||''}
async function gz(s){try{if(!window.CompressionStream)return null;var st=new Blob([s]).stream().pipeThrough(new CompressionStream('gzip'));return (await new Response(st).arrayBuffer()).byteLength}catch(e){return null}}
async function stat(a,b){var A=bytes(a),B=bytes(b),g=await gz(b);return 'ก่อน '+fmt(A)+' → หลัง '+fmt(B)+' (ลดลง '+pct(A,B)+')'+(g!=null?' · ประมาณ gzip '+fmt(g):'')}
function dl(txt,fn){var a=document.createElement('a'),u=URL.createObjectURL(new Blob([txt],{type:'text/plain;charset=utf-8'}));a.href=u;a.download=fn;document.body.appendChild(a);a.click();a.remove();setTimeout(function(){URL.revokeObjectURL(u)},1000)}
function row(txt,fn,data){var li=document.createElement('li'),sp=document.createElement('span');sp.textContent=txt;li.appendChild(sp);if(fn){var b=document.createElement('button');b.type='button';b.textContent='ดาวน์โหลด';b.onclick=function(){dl(data,fn)};li.appendChild(b)}$('mn-list').appendChild(li)}
$('mn-go').onclick=async function(){
var s=$('mn-in').value;err('');$('mn-list').innerHTML='';
if(!s.trim()){err('กรุณาวางโค้ดหรือเลือกไฟล์ก่อน');return}
try{var r=proc(s,'',$('mn-type').value,opts());lt=r.t;$('mn-out').value=r.out;$('mn-st').textContent='['+r.t.toUpperCase()+'] '+await stat(s,r.out)}
catch(e){$('mn-out').value='';$('mn-st').textContent='';err('ผิดพลาด: '+e.message)}};
async function load(fl){
var o=opts(),ty=$('mn-type').value,f,s,r,i;
err('');R=[];$('mn-list').innerHTML='';$('mn-out').value='';$('mn-st').textContent='';
for(i=0;i<fl.length;i++){f=fl[i];
try{s=await f.text();r=proc(s,f.name,ty,o);R.push({t:r.t,o:r.out});
row(f.name+' ['+r.t.toUpperCase()+'] '+fmt(bytes(s))+' → '+fmt(bytes(r.out))+' (ลดลง '+pct(bytes(s),bytes(r.out))+')',/\.[^.]+$/.test(f.name)?f.name.replace(/\.([^.]+)$/,'.min.$1'):f.name+'.min',r.out)}
catch(e){row(f.name+' — ผิดพลาด: '+e.message)}}
if(R.length==1){$('mn-out').value=R[0].o;lt=R[0].t}
if(R.length>1&&R.every(function(x){return x.t==R[0].t&&(x.t=='js'||x.t=='css')})){
var t=R[0].t,all=R.map(function(x){return x.o}).join(t=='js'?';\n':'\n');
row('รวมทุกไฟล์เป็นไฟล์เดียว '+fmt(bytes(all)),'bundle.min.'+t,all);$('mn-out').value=all;lt=t}}
$('mn-files').onchange=function(){load(this.files)};
var dz=$('mn-dz');
['dragover','dragenter'].forEach(function(e){dz.addEventListener(e,function(ev){ev.preventDefault();dz.classList.add('on')})});
['dragleave','drop'].forEach(function(e){dz.addEventListener(e,function(ev){ev.preventDefault();dz.classList.remove('on')})});
dz.addEventListener('drop',function(ev){load(ev.dataTransfer.files)});
$('mn-cp').onclick=function(){
var v=$('mn-out').value,b=this,done=function(){var t=b.textContent;b.textContent='คัดลอกแล้ว ✓';setTimeout(function(){b.textContent=t},1500)};
if(!v)return;
if(navigator.clipboard&&navigator.clipboard.writeText){navigator.clipboard.writeText(v).then(done,function(){$('mn-out').select();document.execCommand('copy');done()})}
else{$('mn-out').select();document.execCommand('copy');done()}};
$('mn-dl').onclick=function(){var v=$('mn-out').value;if(v)dl(v,'minified.min.'+EXT[lt])};
$('mn-rs').onclick=function(){$('mn-in').value='';$('mn-out').value='';$('mn-st').textContent='';$('mn-list').innerHTML='';$('mn-files').value='';R=[];err('')};
$('mn-ex').onclick=function(){$('mn-type').value='auto';$('mn-in').value='// ตัวอย่าง: รวมราคาสินค้า\nfunction totalPrice(items) {\n  /* วนลูปรวมราคา */\n  var sum = 0;\n  for (var i = 0; i < items.length; i++) {\n    sum += items[i].price * items[i].qty;\n  }\n  console.log("total", sum);\n  return sum;\n}\n'};
})();
</script>

## วิธีใช้งานการบีบอัด JS และ CSS

1. วางโค้ด JavaScript, CSS, HTML หรือ JSON ลงในช่องด้านบน หรือลากไฟล์มาวางในกรอบเส้นประ (เลือกได้หลายไฟล์พร้อมกัน)
2. เลือกประเภทโค้ด หากไม่แน่ใจให้ใช้ "ตรวจจับอัตโนมัติ" ซึ่งดูจากนามสกุลไฟล์และลักษณะของโค้ด
3. ติ๊กหรือเอาติ๊กตัวเลือกที่ต้องการ เช่น ลบคอมเมนต์ เก็บคอมเมนต์ลิขสิทธิ์ หรือลบ console.log
4. กดปุ่ม "ย่อโค้ด" แล้วดูขนาดก่อนและหลัง เปอร์เซ็นต์ที่ลดลง และขนาดโดยประมาณเมื่อบีบอัดด้วย gzip
5. กด "คัดลอก" หรือ "ดาวน์โหลด" เพื่อนำผลลัพธ์ไปใช้ ไฟล์ที่ดาวน์โหลดจะตั้งชื่อเป็น `ชื่อไฟล์.min.นามสกุล`
6. หากอัปโหลดหลายไฟล์ประเภทเดียวกัน (JS หรือ CSS) สามารถดาวน์โหลดรวมเป็นไฟล์เดียวได้
7. หากโค้ดมีข้อผิดพลาด เช่น วงเล็บไม่ครบคู่หรือสตริงไม่ปิด ระบบจะแจ้งข้อความและเลขบรรทัดให้แก้ไข

## ความหมายของคำศัพท์ที่ควรรู้

- **Minify (การย่อโค้ด)** คือการลบช่องว่าง การขึ้นบรรทัดใหม่ และคอมเมนต์ที่ไม่จำเป็นออก โดยโค้ดยังทำงานเหมือนเดิม
- **Minifier** คือเครื่องมือที่ทำหน้าที่ย่อโค้ด เช่น เครื่องมือในหน้านี้
- **Obfuscate (การพรางโค้ด)** คือการทำให้โค้ดอ่านยากเพื่อป้องกันการคัดลอก ต่างจากการย่อที่เน้นลดขนาดเป็นหลัก
- **gzip / Brotli** คือการบีบอัดไฟล์ที่เซิร์ฟเวอร์ทำตอนส่งไปยังเบราว์เซอร์ ใช้ร่วมกับการย่อโค้ดได้เพื่อให้ไฟล์เล็กลงอีก
- **คอมเมนต์ลิขสิทธิ์ (/*!)** คือคอมเมนต์ที่ขึ้นต้นด้วย `/*!` หรือมี `@license` ซึ่งมักต้องคงไว้ตามเงื่อนไขของไลบรารี
- **Mangle (การย่อชื่อตัวแปร)** คือการเปลี่ยนชื่อตัวแปรให้สั้นลง เครื่องมือนี้ไม่เปลี่ยนชื่อตัวแปรเพื่อความปลอดภัยของโค้ด
- **ASI (Automatic Semicolon Insertion)** คือกลไกของ JavaScript ที่เติม `;` ให้อัตโนมัติ เครื่องมือจึงคงการขึ้นบรรทัดใหม่ไว้เฉพาะจุดที่จำเป็น
- **Dead code** คือโค้ดที่ไม่ถูกเรียกใช้ เครื่องมือนี้ไม่ลบให้ แต่ลบ `console.*` และ `debugger` ได้หากเลือกตัวเลือก
- **เลข 0 นำหน้า** คือการเขียน `0.5` ใน CSS ซึ่งย่อเป็น `.5` ได้โดยค่าเท่าเดิม

## คำถามที่พบบ่อย

**โค้ดของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่**
ไม่ การย่อทำงานในเบราว์เซอร์ของคุณทั้งหมด จึงใช้กับโค้ดภายในองค์กรได้อย่างสบายใจ

**ย่อแล้วโค้ดจะพังหรือไม่**
เครื่องมือเลือกวิธีที่ปลอดภัย เช่น ไม่เปลี่ยนชื่อตัวแปรและคงบรรทัดใหม่ที่จำเป็นต่อ ASI แต่ควรทดสอบไฟล์ที่ย่อแล้วก่อนนำขึ้นเว็บจริงทุกครั้ง

**ย่อแล้วอ่านกลับได้ไหม**
ไฟล์ที่ย่อแล้วอ่านยาก ควรเก็บไฟล์ต้นฉบับไว้เสมอ และใช้ไฟล์ `.min` เฉพาะบนเว็บไซต์จริง

**ย่อ JS และ CSS ช่วยเรื่องความเร็วเว็บอย่างไร**
ไฟล์ที่เล็กลงโหลดเร็วขึ้นและใช้แบนด์วิดท์น้อยลง ช่วยเรื่องประสบการณ์ผู้ใช้และคะแนนความเร็วของหน้าเว็บ

**รองรับไฟล์ขนาดเท่าไร**
ขึ้นอยู่กับหน่วยความจำของอุปกรณ์ ไฟล์หลักร้อย KB ถึงไม่กี่ MB ทำงานได้ปกติบนเครื่องทั่วไป