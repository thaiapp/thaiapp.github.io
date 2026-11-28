---
title: จัดรูปแบบ HTML ออนไลน์ ฟรี
h1: จัดรูปแบบ HTML
description: 'จัดรูปแบบ HTML ออนไลน์ฟรี ทำ Beautify และ Minify ตรวจสอบแท็กผิด ดู Diff และพรีวิวได้ทันที ประมวลผลในเบราว์เซอร์ ไม่อัปโหลดข้อมูล ใช้ได้ทั้งมือถือและคอม'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-28T09:00:00+07:00'
weight: 176
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- จัดรูปแบบ HTML
- จัดรูปแบบ HTML ออนไลน์
- เครื่องมือนักพัฒนา
- HTML Beautifier
- ย่อ HTML
- ตรวจสอบ HTML
---

<div id="hf" class="hf">
<div class="hf-bar">
<label>โหมด <select id="hf-mode"><option value="fmt">จัดรูปแบบ (Beautify)</option><option value="min">ย่อโค้ด (Minify)</option></select></label>
<label>เยื้อง <select id="hf-ind"><option value="2">2 ช่องว่าง</option><option value="4">4 ช่องว่าง</option><option value="t">Tab</option></select></label>
<label>Attribute <select id="hf-am"><option value="auto">อัตโนมัติ</option><option value="always">หนึ่งต่อบรรทัด</option><option value="never">บรรทัดเดียว</option></select></label>
<label>เครื่องหมายคำพูด <select id="hf-q"><option value="k">คงเดิม</option><option value="d">ใช้ &quot; &quot;</option><option value="s">ใช้ &#39; &#39;</option></select></label>
<label><input type="checkbox" id="hf-wrap" checked> ตัดบรรทัดยาวที่</label><input type="number" id="hf-max" value="120" min="40" max="400">
<label><input type="checkbox" id="hf-emb" checked> จัดรูปแบบ &lt;style&gt;/&lt;script&gt;</label>
<label><input type="checkbox" id="hf-nc"> ลบคอมเมนต์</label>
<label><input type="checkbox" id="hf-ns"> ลบ style attribute</label>
<label><input type="checkbox" id="hf-low"> แท็ก/attribute ตัวพิมพ์เล็ก</label>
</div>
<div class="hf-grid">
<div class="hf-col">
<div class="hf-row"><b>ข้อมูลนำเข้า</b><span><button type="button" id="hf-open">เปิดไฟล์</button><button type="button" id="hf-sample">ตัวอย่าง</button><button type="button" id="hf-clear">ล้าง</button><button type="button" id="hf-undo">เลิกทำ</button></span></div>
<textarea id="hf-in" spellcheck="false" placeholder="วางโค้ด HTML ที่นี่ ระบบจะประมวลผลทันทีที่พิมพ์..."></textarea>
<input type="file" id="hf-file" class="hf-h" accept=".html,.htm,.xhtml,.txt,.php,.vue,.svg">
</div>
<div class="hf-col">
<div class="hf-row"><span class="hf-tabs"><button type="button" data-t="out" class="on">ผลลัพธ์</button><button type="button" data-t="diff">Diff</button><button type="button" data-t="val">ตรวจสอบ</button><button type="button" data-t="pre">พรีวิว</button><button type="button" data-t="ext">ดึงข้อมูล</button></span><span><button type="button" id="hf-copy">คัดลอก</button><button type="button" id="hf-dl">ดาวน์โหลด</button></span></div>
<textarea id="hf-out" spellcheck="false" readonly></textarea>
<div id="hf-p-diff" class="hf-box hf-h"></div>
<div id="hf-p-val" class="hf-box hf-h"></div>
<div id="hf-p-pre" class="hf-h"><iframe id="hf-prev" sandbox="" title="พรีวิว HTML"></iframe></div>
<div id="hf-p-ext" class="hf-h"><select id="hf-ext-k"><option value="text">ข้อความทั้งหมด</option><option value="links">ลิงก์ทั้งหมด</option><option value="images">รูปภาพทั้งหมด</option><option value="heads">โครงสร้างหัวข้อ (H1-H6)</option></select><textarea id="hf-ext-out" readonly></textarea></div>
</div>
</div>
<div class="hf-st"><span id="hf-stat">ประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดข้อมูล</span> <span id="hf-err"></span></div>
</div>

<style>
.hf{--b:#cbd5e1;--bg:#fff;--fg:#0f172a;--mu:#475569;--ac:#2563eb;--rd:#fee2e2;--gr:#dcfce7;margin:1rem 0;padding:1rem;background:#f8fafc;color:#0f172a;border:1px solid var(--b);border-radius:12px;color-scheme:light}
.hf label,.hf span,.hf b,.hf p,.hf li,.hf td,.hf option{color:#0f172a;opacity:1}
.hf select,.hf input,.hf textarea{color:#0f172a;background:#fff;-webkit-text-fill-color:#0f172a;opacity:1}
.hf textarea::placeholder{color:#64748b;-webkit-text-fill-color:#64748b;opacity:1}
.hf button{color:#0f172a;background:#fff}
.hf button:hover{border-color:var(--ac)}
.hf button.on{color:#fff;background:var(--ac)}
.hf input[type=checkbox]{accent-color:var(--ac)}
.hf *{box-sizing:border-box}
.hf-bar{display:flex;flex-wrap:wrap;gap:.5rem 1rem;align-items:center;margin-bottom:.75rem;font-size:.9rem}
.hf-bar select,.hf-bar input[type=number]{margin-left:.25rem;padding:.2rem;background:var(--bg);color:var(--fg);border:1px solid var(--b);border-radius:6px}
.hf-bar input[type=number]{width:4.5rem}
.hf-grid{display:grid;grid-template-columns:1fr;gap:1rem}
@media (min-width:900px){.hf-grid{grid-template-columns:1fr 1fr}}
.hf-row{display:flex;justify-content:space-between;align-items:center;gap:.5rem;flex-wrap:wrap;margin-bottom:.4rem}
.hf button{padding:.3rem .6rem;margin-left:.25rem;border:1px solid var(--b);border-radius:6px;background:var(--bg);color:var(--fg);cursor:pointer;font-size:.85rem}
.hf button.on{background:var(--ac);color:#fff;border-color:var(--ac)}
.hf textarea,.hf-box,.hf iframe{width:100%;height:420px;border:1px solid var(--b);border-radius:8px;background:#fff;color:#0f172a;font:13px/1.5 ui-monospace,Menlo,Consolas,monospace;tab-size:2;padding:.6rem;resize:vertical}
.hf iframe{background:#fff;padding:0}
.hf #hf-ext-out{height:380px;margin-top:.4rem}
.hf-box{overflow:auto;resize:none}
.hf-h{display:none!important}
.hf-d{border-collapse:collapse;width:100%}
.hf-d td{width:50%;vertical-align:top;white-space:pre-wrap;word-break:break-all;padding:0 .3rem;border-left:1px solid var(--b)}
.hf-d td.hf-del{background:var(--rd)}.hf-d td.hf-add{background:var(--gr)}
.hf-vl{list-style:none;margin:0;padding:0}
.hf-vl li{padding:.35rem .5rem;margin-bottom:.3rem;border-radius:6px;cursor:pointer;border-left:4px solid var(--mu);font-family:inherit}
.hf-vl li.hf-error{border-color:#dc2626}.hf-vl li.hf-warn{border-color:#d97706}
.hf .hf-st,.hf .hf-st span{margin-top:.6rem;font-size:.85rem;color:#475569}.hf #hf-err{color:#dc2626}#hf-err{color:#dc2626}
</style>

<script>
(function(){
var LT='\x3C',GT='\x3E';
function lt(a,b){return String(a-b).charAt(0)=='-'}
var VOID={area:1,base:1,br:1,col:1,embed:1,hr:1,img:1,input:1,link:1,meta:1,param:1,source:1,track:1,wbr:1};
var INL={a:1,b:1,i:1,u:1,em:1,strong:1,span:1,small:1,sub:1,sup:1,code:1,abbr:1,label:1,mark:1,s:1,del:1,ins:1,kbd:1,q:1,cite:1,time:1,font:1,big:1,tt:1,'var':1,img:1,br:1,input:1,button:1,select:1,wbr:1};
var AUTO={li:1,p:1,td:1,th:1,tr:1,option:1,dt:1,dd:1,thead:1,tbody:1,tfoot:1,head:1,body:1,html:1,colgroup:1,optgroup:1};
var SIB={li:'l',dt:'d',dd:'d',tr:'r',td:'c',th:'c',option:'o'};
var DEP={font:1,center:1,marquee:1,blink:1,big:1,strike:1,tt:1,frame:1,frameset:1,acronym:1,applet:1,basefont:1,dir:1,noframes:1};
var TOK=/\x3C!--[\s\S]*?--\x3E|\x3C!doctype[^\x3E]*\x3E|\x3C(script|style|pre|textarea)\b(?:"[^"]*"|'[^']*'|[^'"\x3E])*\x3E[\s\S]*?\x3C\/\1\s*\x3E|\x3C\/?[a-zA-Z][^\s\x3E\/]*(?:"[^"]*"|'[^']*'|[^'"\x3E])*\x3E|[^\x3C]+|\x3C/gi;
function attrs(s){var b=s.replace(/^\x3C[^\s\x3E\/]+/,'').replace(/\/?\x3E$/,''),a=[],m,re=/([^\s=\/"'\x3E]+)(?:\s*=\s*(?:"([^"]*)"|'([^']*)'|([^\s"'\x3E]+)))?/g;
while((m=re.exec(b)))a.push({n:m[1],v:m[2]!=null?m[2]:m[3]!=null?m[3]:m[4],q:m[2]!=null?'"':m[3]!=null?"'":''});return a}
function tok(s){var r=[],m,ln=1,x,k,q;TOK.lastIndex=0;
while((m=TOK.exec(s))){x=m[0];k={s:x,l:ln,t:'t',n:''};
if(x.indexOf(LT+'!--')==0)k.t='c';
else if(/^\x3C!doctype/i.test(x))k.t='d';
else if(m[1]){k.t='r';k.n=m[1].toLowerCase()}
else if(x.length!=1&&x.charAt(0)==LT){q=/^\x3C(\/?)([^\s\x3E\/]+)/.exec(x);k.t=q[1]?'x':'o';k.rn=q[2];k.n=q[2].toLowerCase();if(k.t=='o'){k.a=attrs(x);k.sc=/\/\s*\x3E$/.test(x)}}
r.push(k);ln+=x.split('\n').length-1}
return r}
function mk(k,o){var a=[];k.a.forEach(function(t){if(o.nostyle&&t.n.toLowerCase()=='style')return;var nm=o.low?t.n.toLowerCase():t.n,q;
if(t.v===undefined){a.push(nm);return}
q=o.q=='k'?(t.q||'"'):o.q;if(t.q&&t.v.indexOf(q)!=-1)q=t.q;a.push(nm+'='+q+t.v+q)});
return{n:o.low?k.n:k.rn,a:a}}
function openLines(k,o,inl){var p=mk(k,o),e=(k.sc?' /':'')+GT,one=LT+p.n+(p.a.length?' '+p.a.join(' '):'')+e,mu=false,r;
if(!inl){if(o.am=='always')mu=lt(1,p.a.length);else if(o.am=='auto')mu=lt(o.max,one.length)&&lt(1,p.a.length)}
if(!mu)return[one];
r=[LT+p.n];p.a.forEach(function(a,j){r.push(o.u+a+(j==p.a.length-1?e:''))});return r}
function ded(b){var L=b.replace(/^\n+|\s+$/g,'').split('\n'),m=1e9;
L.forEach(function(x){if(/\S/.test(x)){var w=x.match(/^\s*/)[0].length;if(lt(w,m))m=w}});
return L.map(function(x){return x.slice(m)})}
function fmt(s,u,css){var o=[],l='',d=0,p=0,ps=[],i=0,n=s.length,c,j,pv,r,ch,cl;
function nl(){var t=l.trim();if(t)o.push(u.repeat(d)+t);l=''}
while(i!=n){c=s.charAt(i);
if(c=='\n'){if(css)l+=' ';else nl();i++;continue}
if(/\s/.test(c)){if(l&&l.slice(-1)!=' ')l+=' ';i++;continue}
if(c=='/'&&s.charAt(i+1)=='*'){j=s.indexOf('*/',i+2);j=j==-1?n:j+2;if(css){nl();l=s.slice(i,j);nl()}else l+=s.slice(i,j);i=j;continue}
if(!css&&c=='/'&&s.charAt(i+1)=='/'){j=s.indexOf('\n',i);if(j==-1)j=n;l+=s.slice(i,j);nl();i=j;continue}
if(c=='"'||c=="'"||c=='`'){j=i+1;while(lt(j,n)&&s.charAt(j)!=c){if(s.charAt(j)=='\\')j++;j++}
l+=s.slice(i,j+1);i=j+1;continue}
pv=l.replace(/\s+$/,'').slice(-1);
if(!css&&c=='/'&&(pv==''||/[(,=:\[!&|?{};+\-*%~^]/.test(pv))){j=i+1;cl=false;
while(lt(j,n)){ch=s.charAt(j);if(ch=='\\')j++;else if(ch=='\n')break;else if(ch=='[')cl=true;else if(ch==']')cl=false;else if(ch=='/'&&!cl)break;j++}
if(s.charAt(j)=='/'){j++;while(lt(j,n)&&/[a-z]/i.test(s.charAt(j)))j++;l+=s.slice(i,j);i=j;continue}}
if(c=='('||c=='[')p++;
if(c==')'||c==']'){if(p)p--}
if(c=='{'){l=l.replace(/\s+$/,'')+(l.trim()?' ':'')+'{';nl();d++;ps.push(p);p=0;i++;continue}
if(c=='}'){nl();if(d)d--;p=ps.pop()||0;l='}';i++;r=s.slice(i,i+12);
if(!css&&/^\s*(else|catch|finally|while)\b/.test(r))l+=' ';
else if(css||!/^\s*[)\],;.:]/.test(r))nl();
continue}
if(c==';'&&p==0){l+=';';nl();i++;continue}
if(c==','&&p==0&&!css){l+=',';nl();i++;continue}
l+=c;i++}
nl();return o.join('\n')}
function beautify(src,o){var T=tok(src),u=o.u,out=[],cur='',d=0,sp=false,st=[],i,j,k,n;
function put(l){out.push(u.repeat(d)+l)}
function fl(){var t=cur.trim(),w,l,j;cur='';sp=false;if(!t)return;
if(o.wrap&&lt(o.max,(u.repeat(d)+t).length)){w=t.split(/\s+(?=[^\x3E]*(?:\x3C|$))/);l='';
for(j=0;j!=w.length;j++){if(l&&lt(o.max,(u.repeat(d)+l+' '+w[j]).length)){put(l);l=u+w[j]}else l=l?l+' '+w[j]:w[j]}
put(l)}else put(t)}
function raw(k){var m=/^(\x3C(?:"[^"]*"|'[^']*'|[^'"\x3E])*\x3E)([\s\S]*?)(\x3C\/[a-z]+\s*\x3E)$/i.exec(k.s),L,ty,b;fl();
if(!m||!(k.n=='script'||k.n=='style')||!o.emb){put(k.s);return}
b=m[2];if(!/\S/.test(b)){put(m[1]+m[3]);return}
ty=(/type\s*=\s*["']?([^"'\s\x3E]+)/i.exec(m[1])||[])[1]||'';
if(k.n=='style')L=fmt(b,u,true).split('\n');
else if(/json/i.test(ty)){try{L=JSON.stringify(JSON.parse(b),null,u=='\t'?'\t':u.length).split('\n')}catch(e){L=ded(b)}}
else if(ty&&!/javascript|module/i.test(ty))L=ded(b);
else L=fmt(b,u,false).split('\n');
put(m[1]);d++;L.forEach(function(x){put(x)});d--;put(m[3])}
for(i=0;i!=T.length;i++){k=T[i];n=k.n;
if(k.t=='t'){var lead=/^\s/.test(k.s),trail=/\s$/.test(k.s),x=k.s.replace(/\s+/g,' ').trim();
if(!x){sp=true;continue}
if(cur&&(sp||lead))cur+=' ';cur+=x;sp=trail;continue}
if(k.t=='c'){if(o.nc&&!/^\x3C!--\[if/.test(k.s))continue;fl();put(k.s.trim());continue}
if(k.t=='d'){fl();put(k.s);continue}
if(k.t=='r'){raw(k);continue}
if(INL[n]){if(cur&&sp)cur+=' ';cur+=k.t=='o'?openLines(k,o,true)[0]:LT+'/'+(o.low?n:k.rn)+GT;sp=false;continue}
fl();
if(k.t=='x'){if(VOID[n])continue;j=st.lastIndexOf(n);if(j!=-1){d=Math.max(0,d-(st.length-j));st.length=j}put(LT+'/'+(o.low?n:k.rn)+GT);continue}
if(SIB[n]&&st.length&&SIB[st[st.length-1]]==SIB[n]){st.pop();if(d)d--}
openLines(k,o).forEach(function(x){put(x)});
if(!VOID[n]&&!k.sc){d++;st.push(n)}}
fl();return out.join('\n')}
function minify(src,o){var T=tok(src),r='',i,k,a,b,m,p;
function inl(z){return z&&(z.t=='t'||((z.t=='o'||z.t=='x')&&INL[z.n]))}
for(i=0;i!=T.length;i++){k=T[i];
if(k.t=='c'){if(/^\x3C!--\[if/.test(k.s))r+=k.s;continue}
if(k.t=='t'){if(!/\S/.test(k.s)){if(inl(T[i-1])&&inl(T[i+1]))r+=' ';continue}r+=k.s.replace(/\s+/g,' ');continue}
if(k.t=='o'){p=mk(k,o);r+=LT+p.n+(p.a.length?' '+p.a.join(' '):'')+(k.sc?'/':'')+GT;continue}
if(k.t=='x'){r+=LT+'/'+(o.low?k.n:k.rn)+GT;continue}
if(k.t=='r'&&(k.n=='script'||k.n=='style')){m=/^(\x3C(?:"[^"]*"|'[^']*'|[^'"\x3E])*\x3E)([\s\S]*?)(\x3C\/[a-z]+\s*\x3E)$/i.exec(k.s);
if(m){b=k.n=='style'?m[2].replace(/\/\*[\s\S]*?\*\//g,'').replace(/\s+/g,' ').replace(/\s*([{};,])\s*/g,'$1').replace(/;}/g,'}').trim():m[2].trim();r+=m[1]+b+m[3];continue}}
r+=k.s}
return r.trim()}
function validate(s){var T=tok(s),R=[],st=[],ids=Object.create(null),hd=false;
function add(lv,l,m){R.push({lv:lv,l:l,m:m})}
T.forEach(function(k){var n=k.n,seen,j,y;
if(k.t=='d')hd=true;
if(k.t=='r'){if(DEP[n])add('warn',k.l,'แท็ก '+LT+n+GT+' เลิกใช้แล้ว');return}
if(k.t=='o'){seen=Object.create(null);
if(DEP[n])add('warn',k.l,'แท็ก '+LT+n+GT+' เลิกใช้แล้ว ควรใช้ CSS แทน');
k.a.forEach(function(a){var an=a.n.toLowerCase();if(seen[an])add('error',k.l,'attribute "'+a.n+'" ซ้ำในแท็ก '+LT+n+GT);seen[an]=1;
if(an=='id'&&a.v!==undefined){if(ids[a.v])add('error',k.l,'id "'+a.v+'" ซ้ำกับบรรทัด '+ids[a.v]);else ids[a.v]=k.l}});
if(n=='img'&&!seen.alt)add('warn',k.l,'รูปภาพไม่มี alt (กระทบ SEO และการเข้าถึง)');
if(!VOID[n]&&!k.sc)st.push({n:n,l:k.l});return}
if(k.t=='x'){if(VOID[n]){add('warn',k.l,'แท็ก '+LT+n+GT+' ไม่ต้องมีแท็กปิด');return}
j=st.length-1;while(j!=-1&&st[j].n!=n)j--;
if(j==-1){add('error',k.l,'แท็กปิด '+LT+'/'+n+GT+' ไม่มีแท็กเปิดคู่กัน');return}
while(st.length-1!=j){y=st.pop();if(!AUTO[y.n])add('error',y.l,'แท็ก '+LT+y.n+GT+' ไม่ได้ปิด (ถูกตัดด้วย '+LT+'/'+n+GT+' บรรทัด '+k.l+')')}
st.pop()}});
st.forEach(function(y){if(!AUTO[y.n])add('error',y.l,'แท็ก '+LT+y.n+GT+' ไม่ได้ปิดจนจบเอกสาร')});
if(!hd&&/\x3Chtml/i.test(s))add('info',1,'ไม่พบ DOCTYPE ควรขึ้นต้นด้วย '+LT+'!doctype html'+GT);
R.sort(function(a,b){return a.l-b.l});return R}
function diff(a,b){var A=a.split('\n'),B=b.split('\n'),n=A.length,m=B.length,w=m+1,L,i,j,r=[];
if(lt(3e6,(n+1)*w))return null;
L=new Uint32Array((n+1)*w);
for(i=n-1;i!=-1;i--)for(j=m-1;j!=-1;j--)L[i*w+j]=A[i]==B[j]?L[(i+1)*w+j+1]+1:Math.max(L[(i+1)*w+j],L[i*w+j+1]);
i=0;j=0;
while(i!=n&&j!=m){if(A[i]==B[j]){r.push([A[i],B[j],0]);i++;j++}else if(!lt(L[(i+1)*w+j],L[i*w+j+1])){r.push([A[i],'',1]);i++}else{r.push(['',B[j],2]);j++}}
while(i!=n){r.push([A[i],'',1]);i++}
while(j!=m){r.push(['',B[j],2]);j++}
return r}
function extract(s,kind){var doc=new DOMParser().parseFromString(s,'text/html'),r=[];
doc.querySelectorAll('script,style,noscript').forEach(function(e){e.remove()});
if(kind=='text')return doc.body.textContent.replace(/[ \t]+/g,' ').replace(/\n\s*\n+/g,'\n').trim();
if(kind=='links')doc.querySelectorAll('a[href]').forEach(function(e){r.push(e.getAttribute('href')+'  |  '+e.textContent.trim())});
if(kind=='images')doc.querySelectorAll('img[src]').forEach(function(e){r.push(e.getAttribute('src')+(e.getAttribute('alt')?'  |  alt: '+e.getAttribute('alt'):'  |  (ไม่มี alt)'))});
if(kind=='heads')doc.querySelectorAll('h1,h2,h3,h4,h5,h6').forEach(function(e){r.push('  '.repeat(+e.tagName.charAt(1)-1)+e.tagName+': '+e.textContent.trim())});
return r.join('\n')}
var G=typeof globalThis!='undefined'?globalThis:window;
G.HF={beautify:beautify,minify:minify,validate:validate,diff:diff,fmt:fmt};
if(typeof document=='undefined')return;
function init(){
var IDS=['mode','ind','am','q','wrap','max','nc','ns','low','emb'],tab='out',prev='',tm,fn='index.html';
function g(id){return document.getElementById('hf-'+id)}
function H(t,c,x){var e=document.createElement(t);if(c)e.className=c;if(x!=null)e.textContent=x;return e}
if(!g('in'))return;
function opts(){var v=g('ind').value,q=g('q').value;return{u:v=='t'?'\t':' '.repeat(+v),am:g('am').value,q:q=='d'?'"':q=='s'?"'":'k',wrap:g('wrap').checked,max:+g('max').value||120,nc:g('nc').checked,nostyle:g('ns').checked,low:g('low').checked,emb:g('emb').checked}}
function bytes(x){return new Blob([x]).size}
function jump(line){var ta=g('in'),L=ta.value.split('\n'),off=0,i;for(i=0;i!=line-1;i++)off+=L[i].length+1;
ta.focus();ta.setSelectionRange(off,off+(L[line-1]||'').length);ta.scrollTop=Math.max(0,line-3)*(parseFloat(getComputedStyle(ta).lineHeight)||19)}
function paint(){var s=g('in').value,r=g('out').value,box,t;
if(tab=='diff'){box=g('p-diff');box.textContent='';t=diff(s,r);
if(!t){box.appendChild(H('p','','ไฟล์ใหญ่เกินกว่าจะเปรียบเทียบ'));return}
var tb=H('table','hf-d');t.forEach(function(x){var tr=H('tr'),a=H('td',x[2]==1?'hf-del':'',x[0]),b=H('td',x[2]==2?'hf-add':'',x[1]);tr.appendChild(a);tr.appendChild(b);tb.appendChild(tr)});box.appendChild(tb)}
if(tab=='val'){box=g('p-val');box.textContent='';var R=validate(s);
if(!R.length){box.appendChild(H('p','','✓ ไม่พบปัญหา'));return}
var ul=H('ul','hf-vl');R.forEach(function(x){var li=H('li','hf-'+x.lv);li.appendChild(H('b','',(x.lv=='error'?'ผิดพลาด':x.lv=='warn'?'คำเตือน':'ข้อมูล')+' · บรรทัด '+x.l));li.appendChild(document.createTextNode(' '+x.m));li.onclick=function(){jump(x.l)};ul.appendChild(li)});
box.appendChild(H('p','','พบ '+R.length+' รายการ (คลิกเพื่อไปยังบรรทัด)'));box.appendChild(ul)}
if(tab=='pre')g('prev').setAttribute('srcdoc',r);
if(tab=='ext')g('ext-out').value=extract(s,g('ext-k').value)}
function run(){var s=g('in').value,o=opts(),r,a,b;
try{r=g('mode').value=='min'?minify(s,o):beautify(s,o);g('err').textContent=''}catch(e){r=s;g('err').textContent='เกิดข้อผิดพลาด: '+e.message}
g('out').value=r;a=bytes(s);b=bytes(r);
g('stat').textContent=s?'ก่อน '+a.toLocaleString()+' B → หลัง '+b.toLocaleString()+' B ('+(a?Math.round((b-a)/a*100):0)+'%) · '+(r?r.split('\n').length:0)+' บรรทัด · ประมวลผลในเบราว์เซอร์ ไม่มีการอัปโหลด':'ประมวลผลในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดข้อมูล';
paint()}
function sched(){clearTimeout(tm);tm=setTimeout(run,200)}
function setIn(v){prev=g('in').value;g('in').value=v;run()}
function save(){try{var sv={};IDS.forEach(function(id){var e=g(id);sv[id]=e.type=='checkbox'?e.checked:e.value});localStorage.setItem('hf-set',JSON.stringify(sv))}catch(e){}}
try{var sv=JSON.parse(localStorage.getItem('hf-set')||'{}');IDS.forEach(function(id){var e=g(id);if(sv[id]!==undefined){if(e.type=='checkbox')e.checked=sv[id];else e.value=sv[id]}})}catch(e){}
IDS.forEach(function(id){g(id).addEventListener('change',function(){save();run()})});
g('in').addEventListener('input',sched);
g('ext-k').addEventListener('change',paint);
Array.prototype.forEach.call(document.querySelectorAll('.hf-tabs button'),function(bt){bt.addEventListener('click',function(){tab=bt.getAttribute('data-t');
Array.prototype.forEach.call(document.querySelectorAll('.hf-tabs button'),function(x){x.className=x===bt?'on':''});
['out','p-diff','p-val','p-pre','p-ext'].forEach(function(id){var e=g(id),on=id==tab||id=='p-'+tab;e.className=e.className.replace(/\s*hf-h\b/,'')+(on?'':' hf-h')});paint()})});
g('open').onclick=function(){g('file').click()};
g('file').onchange=function(){var f=this.files[0],rd,me=this;if(!f)return;fn=f.name;rd=new FileReader();rd.onload=function(){setIn(rd.result)};rd.readAsText(f);me.value=''};
var SAMPLE="‹!doctype html›‹html lang=\"th\"›‹head›‹title›ทดสอบ‹/title›‹style›body{margin:0}.a{color:red}‹/style›‹/head›‹body›‹center›ตัวอย่าง‹/center›‹div class=\"box\" id=\"x\" data-a=\"1\"›‹h1›สวัสดี ‹b›HTML‹/b›‹/h1›‹p›ข้อความ ‹a href=\"#\"›ลิงก์‹/a› และ ‹img src=\"a.png\"›‹/p›‹ul›‹li›หนึ่ง‹li›สอง‹/ul›‹script›function hi(n){if(n==1){alert('hi')}else{return n*2}}‹/script›‹/div›‹/body›‹/html›".replace(/‹/g,LT).replace(/›/g,GT);
g('sample').onclick=function(){setIn(SAMPLE)};
g('clear').onclick=function(){setIn('')};
g('undo').onclick=function(){setIn(prev)};
g('copy').onclick=function(){var v=g('out').value,bt=this,ok=function(){bt.textContent='คัดลอกแล้ว ✓';setTimeout(function(){bt.textContent='คัดลอก'},1500)};
if(navigator.clipboard&&navigator.clipboard.writeText)navigator.clipboard.writeText(v).then(ok,function(){});
else{g('out').select();document.execCommand('copy');ok()}};
g('dl').onclick=function(){var v=g('out').value,nm=g('mode').value=='min'?fn.replace(/(\.min)?(\.[^.]+)$/,'.min$2'):fn.replace(/\.min(\.[^.]+)$/,'$1'),u=URL.createObjectURL(new Blob([v],{type:'text/html'})),a=document.createElement('a');
a.href=u;a.download=nm;document.body.appendChild(a);a.click();a.remove();setTimeout(function(){URL.revokeObjectURL(u)},1000)};
run()}
if(document.readyState=='loading')document.addEventListener('DOMContentLoaded',init);else init();
})();
</script>

## วิธีใช้งาน

1. **วางโค้ด** HTML ลงในช่อง "ข้อมูลนำเข้า" หรือกด **เปิดไฟล์** (รองรับ .html, .htm, .php, .vue, .svg) ระบบจะประมวลผลทันทีที่พิมพ์
2. **เลือกโหมด** จัดรูปแบบ (Beautify) เพื่อให้อ่านง่าย หรือ ย่อโค้ด (Minify) เพื่อลดขนาดไฟล์
3. **ปรับการตั้งค่า** เช่น ขนาดการเยื้อง ความยาวบรรทัด รูปแบบ attribute เครื่องหมายคำพูด การลบคอมเมนต์ การลบ style attribute
4. **สลับแท็บ** ฝั่งผลลัพธ์: *ผลลัพธ์* ดูโค้ดที่ได้, *Diff* เทียบก่อน-หลังแบบเคียงข้าง, *ตรวจสอบ* ดูแท็กผิดพลาด (คลิกรายการเพื่อกระโดดไปยังบรรทัดนั้น), *พรีวิว* ดูหน้าเว็บที่แสดงผลจริง, *ดึงข้อมูล* แยกข้อความ ลิงก์ รูปภาพ และโครงสร้างหัวข้อ
5. **คัดลอก** หรือ **ดาวน์โหลด** ผลลัพธ์ โดยชื่อไฟล์จะคงตามต้นฉบับ (`index.min.html` จะกลับเป็น `index.html`)

## ฟีเจอร์เด่น

- จัดรูปแบบและย่อโค้ดในหน้าเดียว พร้อมแสดงขนาดไฟล์ก่อนและหลัง
- ข้อความภายในหน้าเว็บคงเดิม ไม่แตะต้องเนื้อหาใน `pre` และ `textarea`
- จัดรูปแบบ `style` และ `script` ในตัว รวมถึง JSON-LD
- ตรวจจับแท็กไม่ปิด แท็กปิดเกิน attribute ซ้ำ id ซ้ำ รูปภาพไม่มี alt และแท็กที่เลิกใช้แล้ว
- เปรียบเทียบ Diff ก่อน-หลัง และพรีวิวใน sandbox ที่ปลอดภัย
- จำการตั้งค่าไว้ในเบราว์เซอร์ ใช้งานบนมือถือได้ และรองรับโหมดมืด
- ประมวลผลในเครื่อง 100% ไม่มีการส่งโค้ดไปเซิร์ฟเวอร์

## อธิบายศัพท์ที่เกี่ยวข้อง

| คำศัพท์ | ความหมายโดยย่อ |
|---|---|
| HTML Formatter / Beautify | การจัดโค้ด HTML ให้เป็นระเบียบ ขึ้นบรรทัดใหม่และเยื้องตามระดับของแท็ก เพื่อให้อ่านและแก้ไขง่าย |
| Minify | การลบช่องว่าง การขึ้นบรรทัด และคอมเมนต์ที่ไม่จำเป็น เพื่อให้ไฟล์เล็กลงและโหลดเร็วขึ้น |
| Indentation (การเยื้อง) | การเว้นระยะหน้าบรรทัดเพื่อบอกระดับความลึกของแท็ก นิยมใช้ 2 หรือ 4 ช่องว่าง หรือ Tab |
| Tag (แท็ก) | ส่วนประกอบพื้นฐานของ HTML เช่น `div` และ `p` มักมีแท็กเปิดและแท็กปิดเป็นคู่ |
| Attribute | ค่าที่กำหนดเพิ่มให้แท็ก เช่น `class`, `id`, `href`, `src` |
| Void element | แท็กที่ไม่มีแท็กปิดและไม่มีเนื้อหาข้างใน เช่น `br`, `img`, `meta`, `input` |
| Inline element | แท็กที่แสดงอยู่ในบรรทัดเดียวกับข้อความ เช่น `a`, `b`, `span` เครื่องมือจึงไม่แยกบรรทัดให้ |
| DOCTYPE | ประกาศที่บอกเบราว์เซอร์ว่าเอกสารเป็น HTML เวอร์ชันใด ปัจจุบันใช้ `<!doctype html>` |
| Inline style | CSS ที่เขียนใน attribute `style` ของแท็กโดยตรง ซึ่งแก้ไขยากกว่าการแยกไฟล์ CSS |
| JSON-LD | ข้อมูล structured data ในแท็ก `script` ที่ช่วยให้เสิร์ชเอนจินเข้าใจเนื้อหา |
| Diff | การเปรียบเทียบโค้ดสองชุด โดยไฮไลต์บรรทัดที่ถูกลบ (แดง) และเพิ่ม (เขียว) |
| Sandbox | พื้นที่แยกที่จำกัดสิทธิ์ ในที่นี้ใช้แสดงพรีวิวโดยไม่รันสคริปต์ จึงปลอดภัย |
| Deprecated tag | แท็กที่เลิกใช้แล้วใน HTML5 เช่น `font`, `center`, `marquee` ควรเปลี่ยนไปใช้ CSS |
| alt text | ข้อความอธิบายรูปภาพ ช่วยการเข้าถึงสำหรับผู้ใช้โปรแกรมอ่านหน้าจอและมีผลต่อ SEO ภาพ |

## คำถามที่พบบ่อย

**ข้อมูลของฉันถูกส่งไปเซิร์ฟเวอร์หรือไม่?**
ไม่ การจัดรูปแบบ ตรวจสอบ และพรีวิวทำงานในเบราว์เซอร์ของคุณทั้งหมด

**จัดรูปแบบแล้วหน้าเว็บจะเปลี่ยนไปหรือไม่?**
ไม่ เครื่องมือปรับเฉพาะช่องว่างและการขึ้นบรรทัดระหว่างแท็ก ข้อความที่อยู่ติดกันจะไม่ถูกเติมช่องว่างเพิ่ม

**HTML ที่ผิดพลาดใช้ได้ไหม?**
ได้ ระบบจะจัดรูปแบบเท่าที่ทำได้ และแท็บ "ตรวจสอบ" จะบอกตำแหน่งปัญหา เช่น แท็กที่ไม่ได้ปิด

**โหมด Minify ปลอดภัยกับ JavaScript หรือไม่?**
โหมดย่อจะลบช่องว่างและคอมเมนต์ใน HTML และ CSS ส่วน JavaScript จะคงโค้ดเดิมไว้เพื่อป้องกันโค้ดพัง