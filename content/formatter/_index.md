---
title: จัดรูปแบบโค้ด ออนไลน์ ฟรี HTML CSS JavaScript JSON
h1: จัดรูปแบบโค้ด
description: จัดรูปแบบโค้ดออนไลน์ฟรี รองรับ HTML, CSS, JavaScript และ JSON ตรวจจับภาษาอัตโนมัติ จัดให้อ่านง่ายหรือย่อโค้ด ใช้ได้ทั้งมือถือและเดสก์ท็อป ไม่ต้องสมัคร
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-28T09:00:00+07:00'
weight: 175
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- จัดรูปแบบโค้ด
- จัดรูปแบบโค้ด ออนไลน์
- เครื่องมือนักพัฒนา
- จัดรูปแบบ JSON
- จัดรูปแบบ HTML
- จัดรูปแบบ CSS
- จัดรูปแบบ JavaScript
- ย่อโค้ด
- code formatter
- beautify code
---

<div class="pcf" id="pcf-app">
<div class="pcf-bar">
<label>ภาษา<select id="pcf-lang"><option value="auto">ตรวจจับอัตโนมัติ</option><option value="html">HTML</option><option value="css">CSS</option><option value="js">JavaScript</option><option value="json">JSON</option></select></label>
<label>โหมด<select id="pcf-mode"><option value="fmt">จัดรูปแบบ (Beautify)</option><option value="min">ย่อโค้ด (Minify)</option></select></label>
<label>การเยื้อง<select id="pcf-indent"><option value="2">2 ช่องว่าง</option><option value="4">4 ช่องว่าง</option><option value="tab">Tab</option></select></label>
<label class="pcf-chk"><input type="checkbox" id="pcf-sort"> เรียงคีย์ JSON A–Z</label>
</div>
<div class="pcf-bar">
<button type="button" class="pcf-btn pcf-primary" id="pcf-run">ประมวลผล</button>
<button type="button" class="pcf-btn" id="pcf-paste">วางจากคลิปบอร์ด</button>
<label class="pcf-btn" for="pcf-file">เปิดไฟล์</label>
<input type="file" id="pcf-file" accept=".html,.htm,.css,.js,.mjs,.cjs,.json,text/*,application/json" hidden>
<button type="button" class="pcf-btn" id="pcf-sample">ตัวอย่าง</button>
<button type="button" class="pcf-btn" id="pcf-clear">ล้าง</button>
</div>
<div class="pcf-grid">
<div class="pcf-col"><label for="pcf-in">โค้ดต้นฉบับ (วาง พิมพ์ หรือลากไฟล์มาวาง)</label><textarea id="pcf-in" spellcheck="false" autocomplete="off" autocapitalize="off" wrap="off" placeholder="วางโค้ด HTML, CSS, JavaScript หรือ JSON ที่นี่ แล้วกด Ctrl+Enter"></textarea></div>
<div class="pcf-col"><label for="pcf-out">ผลลัพธ์</label><textarea id="pcf-out" spellcheck="false" wrap="off" readonly placeholder="ผลลัพธ์จะแสดงที่นี่"></textarea></div>
</div>
<div class="pcf-bar">
<button type="button" class="pcf-btn" id="pcf-copy">คัดลอกผลลัพธ์</button>
<button type="button" class="pcf-btn" id="pcf-download">ดาวน์โหลด</button>
<button type="button" class="pcf-btn" id="pcf-swap">ใช้ผลลัพธ์เป็นอินพุต</button>
</div>
<p class="pcf-status" id="pcf-status" role="status" aria-live="polite"></p>
<noscript><p>เครื่องมือนี้ต้องเปิดใช้งาน JavaScript ในเบราว์เซอร์</p></noscript>
</div>
<style>
.pcf{margin:1rem 0 2rem;font-size:15px}
.pcf *{box-sizing:border-box}
.pcf-bar{display:flex;flex-wrap:wrap;gap:8px 12px;align-items:center;margin:0 0 10px}
.pcf-bar label{display:flex;align-items:center;gap:6px}
.pcf select{padding:6px 8px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font:inherit}
.pcf-btn{display:inline-block;padding:7px 14px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:rgba(128,128,128,.12);color:inherit;font:inherit;cursor:pointer;line-height:1.3}
.pcf-btn:hover{background:rgba(128,128,128,.25)}
.pcf-primary{background:#2563eb;border-color:#2563eb;color:#fff;font-weight:600}
.pcf-primary:hover{background:#1d4ed8}
.pcf-grid{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin:0 0 10px}
.pcf-col{display:flex;flex-direction:column;gap:6px;min-width:0}
.pcf-col textarea{width:100%;min-height:340px;padding:10px;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;font:13px/1.5 ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;tab-size:2;resize:vertical;white-space:pre;overflow:auto}
.pcf-status{min-height:1.5em;margin:6px 0 0;font-size:14px}
.pcf-ok{color:#16a34a}
.pcf-warn{color:#d97706}
.pcf-err{color:#dc2626}
@media (max-width:720px){.pcf-grid{grid-template-columns:1fr}.pcf-col textarea{min-height:240px}}
</style>
<script>
(function(){
'use strict';
var WARN=[];
function rep(s,n){var r='';for(var i=0;i<n;i++)r+=s;return r;}
function lineCol(s,p){var l=1,c=1;for(var i=0;i<p&&i<s.length;i++){if(s.charCodeAt(i)===10){l++;c=1;}else c++;}return [l,c];}
function skipStr(s,i){var q=s.charAt(i),n=s.length;i++;while(i<n){var c=s.charAt(i);if(c==='\\'){i+=2;continue;}if(c===q)return i+1;if(c==='\n'&&q!=='`')break;i++;}WARN.push('พบสตริงที่ไม่ได้ปิดเครื่องหมายคำพูด');return Math.min(i,n);}
/* ---------- JSON ---------- */
function sortKeys(v){if(Array.isArray(v))return v.map(sortKeys);if(v&&typeof v==='object'){var o={};Object.keys(v).sort().forEach(function(k){o[k]=sortKeys(v[k]);});return o;}return v;}
function jsonRun(s,o){var d=JSON.parse(s);if(o.sort)d=sortKeys(d);return o.minify?JSON.stringify(d):JSON.stringify(d,null,o.unit);}
/* ---------- CSS ---------- */
function splitTop(s,ch){var r=[],d=0,b='',q=null;for(var i=0;i<s.length;i++){var c=s.charAt(i);if(q){b+=c;if(c==='\\'){b+=s.charAt(++i);}else if(c===q)q=null;continue;}if(c==='"'||c==="'"){q=c;b+=c;continue;}if(c==='('||c==='[')d++;else if(c===')'||c===']')d--;if(c===ch&&d===0){r.push(b);b='';}else b+=c;}r.push(b);return r;}
function cssDecl(t){if(t.charAt(0)==='@')return t;var m=/^([^:]+?)\s*:\s*([\s\S]*)$/.exec(t);if(!m)return t;return m[1].trim()+': '+m[2].trim().replace(/\s*!\s*important$/i,' !important');}
function cssFmt(s,o){
var out=[],ind=0,buf='',par=0,i=0,n=s.length,c,j,e,t;
function pad(){return rep(o.unit,ind);}
function flush(){var x=buf.trim();buf='';return x;}
while(i<n){
c=s.charAt(i);
if(c==='"'||c==="'"){j=skipStr(s,i);buf+=s.slice(i,j);i=j;continue;}
if(c==='/'&&s.charAt(i+1)==='*'){e=s.indexOf('*/',i+2);if(e<0){WARN.push('พบคอมเมนต์ที่ไม่ได้ปิด');e=n-2;}var cm=s.slice(i,e+2);i=e+2;if(buf.trim()===''){buf='';out.push(pad()+cm);}else buf+=cm;continue;}
if(/\s/.test(c)){if(buf!==''&&buf.charAt(buf.length-1)!==' ')buf+=' ';i++;continue;}
if(c==='(')par++;else if(c===')')par=Math.max(0,par-1);
if(c==='{'&&par===0){var sel=flush();if(sel.charAt(0)!=='@'){sel=splitTop(sel,',').map(function(x){return x.trim();}).join(',\n'+pad());}else{sel=sel.replace(/\(\s*([\w-]+)\s*:\s*/g,'($1: ');}out.push(pad()+(sel?sel+' ':'')+'{');ind++;i++;continue;}
if(c==='}'&&par===0){t=flush();if(t)out.push(pad()+cssDecl(t)+';');if(ind>0)ind--;else WARN.push('พบ } เกินจำนวน');if(out.length&&/ \{$/.test(out[out.length-1])&&!t){out[out.length-1]+='}';}else out.push(pad()+'}');if(ind===0)out.push('');i++;continue;}
if(c===';'&&par===0){t=flush();if(t)out.push(pad()+cssDecl(t)+';');i++;continue;}
buf+=c;i++;}
t=flush();if(t)out.push(pad()+cssDecl(t));
if(ind>0)WARN.push('วงเล็บปีกกา { ปิดไม่ครบ');
return out.join('\n').replace(/\n{3,}/g,'\n\n').trim();}
function cssMin(s){
var out='',i=0,n=s.length,par=0,c,j,e;
function last(){return out.charAt(out.length-1);}
while(i<n){
c=s.charAt(i);
if(c==='"'||c==="'"){j=skipStr(s,i);out+=s.slice(i,j);i=j;continue;}
if(c==='/'&&s.charAt(i+1)==='*'){e=s.indexOf('*/',i+2);if(e<0){WARN.push('พบคอมเมนต์ที่ไม่ได้ปิด');e=n-2;}i=e+2;continue;}
if(/\s/.test(c)){while(i<n&&/\s/.test(s.charAt(i)))i++;var nx=s.charAt(i),lc=last();
if(out===''||i>=n)continue;
if('{};,:'.indexOf(lc)>=0)continue;
if('{};,'.indexOf(nx)>=0||nx===')')continue;
if(par===0&&('>+~'.indexOf(lc)>=0||'>+~'.indexOf(nx)>=0))continue;
out+=' ';continue;}
if(c==='(')par++;else if(c===')')par=Math.max(0,par-1);
if(c==='}'&&last()===';')out=out.slice(0,-1);
out+=c;i++;}
return out.trim();}
/* ---------- JS tokenizer ---------- */
var KWRE={'return':1,'typeof':1,'case':1,'do':1,'else':1,'in':1,'of':1,'void':1,'delete':1,'throw':1,'new':1,'instanceof':1,'yield':1,'await':1};
var KWSP={'if':1,'for':1,'while':1,'switch':1,'catch':1,'with':1,'return':1,'typeof':1,'instanceof':1,'in':1,'of':1,'else':1,'do':1,'case':1,'throw':1,'await':1,'yield':1,'delete':1,'void':1,'function':1,'async':1,'extends':1};
var OBJKW={'return':1,'typeof':1,'in':1,'of':1,'throw':1,'yield':1,'await':1,'default':1,'void':1,'delete':1,'instanceof':1,'new':1,'import':1,'export':1,'const':1,'let':1,'var':1};
var PUNCT=['>>>=','...','===','!==','**=','<<=','>>=','>>>','&&=','||=','??=','=>','==','!=','<=','>=','&&','||','??','?.','++','--','+=','-=','*=','/=','%=','&=','|=','^=','<<','>>','**'];
var NUMRE=/(?:0[xX][0-9a-fA-F_]+|0[bB][01_]+|0[oO][0-7_]+|(?:\d[\d_]*\.?[\d_]*|\.\d[\d_]*)(?:[eE][+-]?\d+)?)n?/y;
function scanTpl(s,i){var n=s.length;i++;while(i<n){var c=s.charAt(i);if(c==='\\'){i+=2;continue;}if(c==='`')return i+1;if(c==='$'&&s.charAt(i+1)==='{'){i=scanBr(s,i+2);continue;}i++;}WARN.push('พบ template literal ที่ไม่ได้ปิด');return n;}
function scanBr(s,i){var d=1,n=s.length;while(i<n){var c=s.charAt(i);if(c==='`'){i=scanTpl(s,i);continue;}if(c==='"'||c==="'"){i=skipStr(s,i);continue;}if(c==='{')d++;else if(c==='}'){d--;if(d===0)return i+1;}i++;}return n;}
function blockOrObj(pv){
if(!pv)return 'b';
if(pv.t==='p'){return (pv.v===')'||pv.v==='=>'||pv.v===';'||pv.v==='{'||pv.v==='}'||pv.v===']')?'b':'o';}
if(pv.t==='id')return OBJKW[pv.v]?'o':'b';
return 'b';}
function jsTok(s){
var T=[],i=0,n=s.length,nls=0,pv=null,c,j,m,t;
function push(tok){tok.nls=nls;nls=0;T.push(tok);if(tok.t!=='lc'&&tok.t!=='bc')pv=tok;}
while(i<n){
c=s.charAt(i);
if(c==='\n'){nls++;i++;continue;}
if(/\s/.test(c)){i++;continue;}
if(c==='/'&&s.charAt(i+1)==='/'){j=s.indexOf('\n',i);if(j<0)j=n;push({t:'lc',v:s.slice(i,j).replace(/\s+$/,'')});i=j;continue;}
if(c==='/'&&s.charAt(i+1)==='*'){j=s.indexOf('*/',i+2);if(j<0){WARN.push('พบคอมเมนต์ที่ไม่ได้ปิด');j=n-2;}push({t:'bc',v:s.slice(i,j+2)});i=j+2;continue;}
if(c==='"'||c==="'"){j=skipStr(s,i);push({t:'str',v:s.slice(i,j)});i=j;continue;}
if(c==='`'){j=scanTpl(s,i);push({t:'tpl',v:s.slice(i,j)});i=j;continue;}
if(c==='/'){
var re=!pv||(pv.t==='p'&&pv.v!==')'&&pv.v!==']'&&pv.v!=='}'&&pv.v!=='++'&&pv.v!=='--')||(pv.t==='id'&&KWRE[pv.v]);
if(re){j=i+1;var cl=false,ok=false;while(j<n){var ch=s.charAt(j);if(ch==='\n')break;if(ch==='\\'){j+=2;continue;}if(ch==='[')cl=true;else if(ch===']')cl=false;else if(ch==='/'&&!cl){ok=true;break;}j++;}
if(ok){j++;while(j<n&&/[A-Za-z]/.test(s.charAt(j)))j++;push({t:'re',v:s.slice(i,j)});i=j;continue;}}}
if(/[0-9]/.test(c)||(c==='.'&&/[0-9]/.test(s.charAt(i+1)))){NUMRE.lastIndex=i;m=NUMRE.exec(s);if(m&&m.index===i){push({t:'num',v:m[0]});i+=m[0].length;continue;}}
if(/[A-Za-z_$#\u0080-\uFFFF\\]/.test(c)){j=i+1;while(j<n&&/[A-Za-z0-9_$\u0080-\uFFFF\\]/.test(s.charAt(j)))j++;push({t:'id',v:s.slice(i,j)});i=j;continue;}
var pm=null;for(var k=0;k<PUNCT.length;k++){if(s.substr(i,PUNCT[k].length)===PUNCT[k]){pm=PUNCT[k];break;}}
if(!pm)pm=c;
push({t:'p',v:pm});i+=pm.length;}
var STMT={'if':1,'for':1,'while':1,'switch':1,'try':1,'do':1,'else':1,'function':1,'class':1,'with':1,'catch':1,'finally':1,'export':1,'import':1};
function exprBlock(T,oi){
var d=0,k,first=oi;
for(k=oi-1;k>=0;k--){var x=T[k];if(x.t==='lc'||x.t==='bc')continue;
if(x.t==='p'){
if(d===0&&(x.v===';'||(x.v==='}'&&x.kind==='b'&&x.ee===false)))break;
if(x.v===')'||x.v===']'||x.v==='}')d++;
else if(x.v==='('||x.v==='['||x.v==='{'){d--;if(d<0)break;}}
first=k;}
var f=null;for(k=first;k<oi;k++){if(T[k].t!=='lc'&&T[k].t!=='bc'&&k>=0){f=T[k];break;}}
if(!f)return false;
if(f.t==='id'){if(f.v==='async'){var g=null;for(k=first+1;k<oi;k++){if(T[k].t!=='lc'&&T[k].t!=='bc'){g=T[k];break;}}return !(g&&g.t==='id'&&g.v==='function');}return !STMT[f.v];}
return true;}
var st=[];T.forEach(function(x,idx){if(x.t!=='p')return;if(x.v==='{'){var q=null;for(var z=idx-1;z>=0;z--){if(T[z].t!=='lc'&&T[z].t!=='bc'){q=T[z];break;}}x.kind=blockOrObj(q);x.i=idx;st.push(x);}else if(x.v==='}'){var o=st.pop();x.kind=o?o.kind:'b';x.ee=(x.kind==='o')?true:(o?exprBlock(T,o.i):false);}});
return T;}
function exprEnd(p){if(!p)return false;if(p.t==='p')return p.v===')'||p.v===']'||p.v==='++'||p.v==='--'||(p.v==='}'&&p.ee);return true;}
function startsStmt(t,brace){if(t.t!=='p')return true;var v=t.v;return v==='('||v==='['||v==='++'||v==='--'||v==='!'||v==='~'||(brace&&v==='{');}
function isUnaryCtx(pv){if(!pv)return true;if(pv.t==='p')return !(pv.v===')'||pv.v===']'||pv.v==='}'||pv.v==='++'||pv.v==='--');if(pv.t==='id')return !!(KWRE[pv.v]);return false;}
/* ---------- JS format ---------- */
function jsFmt(src,o){
var T=jsTok(src),out=[],cur='',ind=0,nl=false,nlBlock=false,afterDo=false,pna=false,pv=null,lbl=null,pvUn=false;
var st=[{k:'b',tern:0,caseOpen:false,inLabel:false,isDo:false}];
function pad(){return rep(o.unit,ind);}
function brk(blank){if(cur!==''){out.push(cur);cur='';}if(blank&&out.length&&out[out.length-1]!=='')out.push('');}
function add(x){if(cur==='')cur=pad()+x;else cur+=x;}
for(var i=0;i<T.length;i++){
var t=T[i],v=t.v,top=st[st.length-1],nx=T[i+1];
if(t.t==='lc'||t.t==='bc'){
if(t.nls>0&&cur!=='')brk(t.nls>1&&!(pv&&pv.v==='{'));
if(cur==='')add(v);else cur+=' '+v;
if(t.t==='lc'){brk();nl=false;}
continue;}
if(nl&&nlBlock){
if((t.t==='p'&&(v===')'||v===','||v===';'||v==='.'||v==='?.'||v===']'||v===':'||(v==='('&&pv&&pv.ee&&t.nls===0)))||(t.t==='id'&&(v==='else'||v==='catch'||v==='finally'||(v==='while'&&afterDo))))nl=false;}
var emptyClose=(t.t==='p'&&v==='}'&&pv&&pv.t==='p'&&pv.v==='{'&&nl);
if(emptyClose)nl=false;
var need=nl;
var isCase=false;
if(t.t==='id'&&top.k==='b'&&(v==='case'||(v==='default'&&nx&&nx.t==='p'&&nx.v===':'))&&(!pv||(pv.t==='p'&&(pv.v==='{'||pv.v==='}'||pv.v===';'||pv.v===':')))){
if(top.caseOpen){ind=Math.max(0,ind-1);top.caseOpen=false;}
need=true;isCase=true;top.inLabel=true;}
if(!need&&t.nls>0&&exprEnd(pv)&&startsStmt(t,false))need=true;
if(t.t==='p'&&v==='}'&&!emptyClose)need=true;
if(need){brk(t.nls>1&&!(pv&&pv.t==='p'&&pv.v==='{')&&!(t.t==='p'&&v==='}'));nl=false;}
var sp=(cur!=='')&&!pna;
if(pna&&pvUn&&t.t==='p'&&(v.charAt(0)==='+'||v.charAt(0)==='-')&&v.charAt(0)===pv.v.charAt(0))sp=true;
var setPna=false,setUn=false;
if(t.t==='p'){
if(v==='{'){
var kind=(lbl&&pv===lbl)?'b':blockOrObj(pv);
st.push({k:kind,tern:0,caseOpen:false,inLabel:false,isDo:!!(pv&&pv.t==='id'&&pv.v==='do')});
add((sp?' ':'')+'{');ind++;nl=true;nlBlock=false;}
else if(v==='}'){
var fi=-1;for(var z=st.length-1;z>0;z--){if(st[z].k==='b'||st[z].k==='o'){fi=z;break;}}
var fr=fi>0?st[fi]:null;
if(fr){if(fr.caseOpen)ind=Math.max(0,ind-1);st.length=fi;}
ind=Math.max(0,ind-1);
add('}');
if(fr&&fr.k==='o'){nl=false;}else{nl=true;nlBlock=true;afterDo=!!(fr&&fr.isDo);}}
else if(v==='('||v==='['){
if(v==='('){sp=sp&&!(pv&&((pv.t==='id'&&!KWSP[pv.v])||(pv.t==='p'&&(pv.v===')'||pv.v===']'))||pv.t==='tpl'));}
else{sp=sp&&!(pv&&(pv.t==='id'&&!KWSP[pv.v]||pv.t==='p'&&(pv.v===')'||pv.v===']')||pv.t==='str'||pv.t==='tpl'));}
st.push({k:v,tern:0});add((sp?' ':'')+v);setPna=true;}
else if(v===')'||v===']'){
if(top.k===(v===')'?'(':'[')&&st.length>1)st.pop();
add(v);}
else if(v===';'){add(';');if(top.k!=='('){nl=true;nlBlock=false;}}
else if(v===','){add(',');if(top.k==='o'){nl=true;nlBlock=false;}}
else if(v==='.'||v==='?.'){add(v);setPna=true;}
else if(v==='?'){top.tern++;add((sp?' ':'')+'?');}
else if(v===':'){
if(top.tern>0){top.tern--;add((sp?' ':'')+':');}
else if(top.inLabel){add(':');ind++;top.caseOpen=true;top.inLabel=false;nl=true;nlBlock=false;lbl=t;}
else add(':');}
else if(v==='...'){add((sp?' ':'')+v);setPna=true;}
else if(v==='!'||v==='~'){add((sp?' ':'')+v);setPna=true;}
else if(v==='++'||v==='--'){
if(exprEnd(pv)&&t.nls===0&&!(pv.t==='id'&&KWRE[pv.v])){add(v);}else{add((sp?' ':'')+v);setPna=true;setUn=true;}}
else if((v==='+'||v==='-')&&isUnaryCtx(pv)){add((sp?' ':'')+v);setPna=true;setUn=true;}
else add((sp?' ':'')+v);}
else if(t.t==='tpl'){sp=sp&&!(pv&&((pv.t==='id'&&!KWSP[pv.v])||(pv.t==='p'&&(pv.v===')'||pv.v===']'))));add((sp?' ':'')+v);}
else add((sp?' ':'')+v);
pna=setPna;pvUn=setUn;pv=t;}
brk();
if(st.length>1)WARN.push('วงเล็บ ( [ { ปิดไม่ครบหรือไม่สมดุล');
return out.join('\n');}
function jsMin(src){
var T=jsTok(src),out='',pv=null;
function isW(c){return /[A-Za-z0-9_$\u0080-\uFFFF]/.test(c);}
for(var i=0;i<T.length;i++){
var t=T[i];
if(t.t==='lc'||t.t==='bc')continue;
var sep='';
if(pv){
var a=out.charAt(out.length-1),b=t.v.charAt(0);
if(t.nls>0&&exprEnd(pv)&&startsStmt(t,true))sep='\n';
else if(isW(a)&&isW(b))sep=' ';
else if((a==='+'&&b==='+')||(a==='-'&&b==='-'))sep=' ';
else if(a==='/'&&(b==='/'||b==='*'))sep=' ';
else if(pv.t==='num'&&t.v==='.'&&/^\d+$/.test(pv.v))sep=' ';}
out+=sep+t.v;pv=t;}
return out;}
/* ---------- HTML ---------- */
var VOID={area:1,base:1,br:1,col:1,embed:1,hr:1,img:1,input:1,link:1,meta:1,param:1,source:1,track:1,wbr:1};
var RAW={script:1,style:1,textarea:1,pre:1};
var IMPL={li:{li:1},dt:{dt:1,dd:1},dd:{dt:1,dd:1},p:{p:1},tr:{tr:1,td:1,th:1},td:{td:1,th:1},th:{td:1,th:1},option:{option:1},tbody:{thead:1,tbody:1,tfoot:1}};
var OPTCLOSE={p:1,li:1,dt:1,dd:1,tr:1,td:1,th:1,option:1,thead:1,tbody:1,tfoot:1,html:1,body:1,head:1};
var INL={a:1,abbr:1,b:1,bdi:1,bdo:1,big:1,button:1,cite:1,code:1,data:1,del:1,dfn:1,em:1,font:1,i:1,img:1,input:1,ins:1,kbd:1,label:1,mark:1,meter:1,output:1,progress:1,q:1,s:1,samp:1,select:1,small:1,span:1,strike:1,strong:1,sub:1,sup:1,textarea:1,time:1,u:1,'var':1,wbr:1};
function normTag(v){var r='',q=null;for(var i=0;i<v.length;i++){var c=v.charAt(i);if(q){r+=c;if(c===q)q=null;continue;}if(c==='"'||c==="'"){q=c;r+=c;continue;}if(/\s/.test(c)){if(r.charAt(r.length-1)!==' ')r+=' ';continue;}r+=c;}return r.replace(/\s+(\/?>)$/,'$1');}
function htmlTok(s){
var T=[],i=0,n=s.length,e,j,v,m,name;
while(i<n){
if(s.charAt(i)==='<'){
if(s.substr(i,4)==='<!--'){e=s.indexOf('-->',i+4);if(e<0){WARN.push('พบคอมเมนต์ HTML ที่ไม่ได้ปิด');e=n;}else e+=3;T.push({t:'c',v:s.slice(i,e)});i=e;continue;}
if(s.charAt(i+1)==='!'||s.charAt(i+1)==='?'){e=s.indexOf('>',i);e=e<0?n:e+1;T.push({t:'d',v:s.slice(i,e)});i=e;continue;}
if(s.charAt(i+1)==='/'&&/[A-Za-z]/.test(s.charAt(i+2))){e=s.indexOf('>',i);e=e<0?n:e+1;v=s.slice(i,e);m=/^<\/([^\s>]+)/.exec(v);T.push({t:'e',v:v.replace(/\s+/g,''),n:m[1].toLowerCase()});i=e;continue;}
if(/[A-Za-z]/.test(s.charAt(i+1))){
j=i+1;var q=null;while(j<n){var c=s.charAt(j);if(q){if(c===q)q=null;}else if(c==='"'||c==="'")q=c;else if(c==='>')break;j++;}
e=j<n?j+1:n;v=s.slice(i,e);m=/^<([^\s\/>]+)/.exec(v);name=m[1].toLowerCase();
var sc=/\/\s*>$/.test(v);
T.push({t:'s',v:v,n:name,sc:sc});i=e;
if(RAW[name]&&!sc){var rx=new RegExp('<\\/'+name+'(?=[\\s>/])','ig');rx.lastIndex=i;var mm=rx.exec(s);var cl=mm?mm.index:n;T.push({t:'r',v:s.slice(i,cl),n:name});i=cl;}
continue;}}
j=i+1;while(j<n){if(s.charAt(j)==='<'&&/[A-Za-z\/!?]/.test(s.charAt(j+1)))break;j++;}
T.push({t:'x',v:s.slice(i,j)});i=j;}
return T;}
function embedded(raw,tag,o){
var type=/\btype\s*=\s*["']?([^"'\s>]+)/i.exec(tag.v);type=type?type[1].toLowerCase():'';
try{
if(tag.n==='style')return o.minify?cssMin(raw):cssFmt(raw,o);
if(type.indexOf('json')>=0){return jsonRun(raw,o);}
if(type===''||type.indexOf('javascript')>=0||type==='module'){return o.minify?jsMin(raw):jsFmt(raw,o);}
}catch(e){WARN.push('ไม่สามารถจัดรูปแบบโค้ดภายใน <'+tag.n+'> ได้ จึงคงไว้ตามเดิม');}
return raw.trim();}
function htmlFmt(src,o){
var T=htmlTok(src),out=[],stack=[];
function pad(){return rep(o.unit,stack.length);}
function put(x){out.push(pad()+x);}
for(var i=0;i<T.length;i++){
var t=T[i],nx=T[i+1],n2=T[i+2];
if(t.t==='x'){var x=t.v.replace(/\s+/g,' ').trim();if(x)put(x);continue;}
if(t.t==='c'||t.t==='d'){put(t.v.trim());continue;}
if(t.t==='e'){var idx=stack.lastIndexOf(t.n);if(idx<0){WARN.push('พบแท็กปิด </'+t.n+'> ที่ไม่มีแท็กเปิด');}else{stack.length=idx;}put(t.v);continue;}
if(t.t==='s'){
var impl=IMPL[t.n];
if(impl&&stack.length&&impl[stack[stack.length-1]])stack.pop();
var tag=normTag(t.v);
if(t.sc||VOID[t.n]){put(tag);continue;}
if(nx&&nx.t==='r'){
var endTok=(n2&&n2.t==='e'&&n2.n===t.n)?n2:null;
var endTxt=endTok?endTok.v:'</'+t.n+'>';
if(t.n==='pre'||t.n==='textarea'){out.push(pad()+tag+nx.v+endTxt);i+=endTok?2:1;continue;}
var body=embedded(nx.v,t,o);
if(!body.trim()){put(tag+endTxt);}
else{put(tag);stack.push(t.n);body.split('\n').forEach(function(l){out.push(l===''?'':pad()+l);});stack.pop();put(endTxt);}
i+=endTok?2:1;continue;}
if(nx&&nx.t==='e'&&nx.n===t.n){put(tag+nx.v);i++;continue;}
if(nx&&nx.t==='x'&&n2&&n2.t==='e'&&n2.n===t.n){var tx=nx.v.replace(/\s+/g,' ').trim();if(tx.length<=80){put(tag+tx+n2.v);i+=2;continue;}}
put(tag);stack.push(t.n);continue;}}
var left=stack.filter(function(x){return !OPTCLOSE[x];});
if(left.length)WARN.push('มีแท็กที่ยังไม่ได้ปิด: '+left.join(', '));
return out.join('\n');}
function htmlMin(src,o){
var T=htmlTok(src),out='',P=[];
T.forEach(function(t){if(t.t!=='c'||/^<!--\[if/i.test(t.v))P.push(t);});
for(var i=0;i<P.length;i++){
var t=P[i],pv=P[i-1],nx=P[i+1];
if(t.t==='x'){
var x=t.v.replace(/\s+/g,' ');
var pb=!pv||((pv.t==='s'||pv.t==='e')&&!INL[pv.n])||pv.t==='d'||pv.t==='c'||pv.t==='r';
var nb=!nx||((nx.t==='s'||nx.t==='e')&&!INL[nx.n])||nx.t==='d'||nx.t==='c';
if(pb)x=x.replace(/^ /,'');if(nb)x=x.replace(/ $/,'');
out+=x;continue;}
if(t.t==='s'||t.t==='e'){out+=normTag(t.v);continue;}
if(t.t==='r'){var prevTag=pv;if(prevTag&&(prevTag.n==='pre'||prevTag.n==='textarea'))out+=t.v;else out+=embedded(t.v,prevTag,{minify:true,unit:'',sort:false});continue;}
out+=t.v;}
return out.trim();}
/* ---------- detect + process ---------- */
function detect(s){
var t=s.trim();if(!t)return 'js';
if(/^[\[{]/.test(t)){try{JSON.parse(t);return 'json';}catch(e){}}
if(/^<(!doctype|html|head|body|div|span|p|a|ul|ol|li|table|form|section|header|footer|main|nav|script|style|meta|link|h[1-6]|img|button|input|!--|[a-z][\w-]*[\s>\/])/i.test(t))return 'html';
if(!/\b(function|var|let|const|return|import|export|class|if|for|while)\b|=>/.test(t)&&/^(@[\w-]+[^{;]*[{;]|[^{};()=]+\{\s*[\w-]+\s*:)/.test(t))return 'css';
return 'js';}
function run(lang,src,o){
WARN=[];
if(lang==='auto')lang=detect(src);
var r;
if(lang==='json')r=jsonRun(src,o);
else if(lang==='css')r=o.minify?cssMin(src):cssFmt(src,o);
else if(lang==='html')r=o.minify?htmlMin(src,o):htmlFmt(src,o);
else r=o.minify?jsMin(src):jsFmt(src,o);
return {lang:lang,text:r,warn:WARN.slice()};}
if(typeof document==='undefined'){if(typeof globalThis!=='undefined')globalThis.__pcf={run:run,detect:detect};return;}
function $(id){return document.getElementById(id);}
var inp=$('pcf-in'),out=$('pcf-out'),st=$('pcf-status'),lang=$('pcf-lang'),mode=$('pcf-mode'),ind=$('pcf-indent'),sort=$('pcf-sort'),file=$('pcf-file');
if(!inp||!out||!st)return;
var NAMES={json:'JSON',css:'CSS',html:'HTML',js:'JavaScript'},EXT={json:'json',css:'css',html:'html',js:'js'};
var SAMPLES={
json:'{"nama":"Prasslina","aktif":true,"alat":["html","css","js"],"profil":{"level":3,"tags":[],"alamat":null}}',
css:'@media (min-width:768px){.card{display:flex;gap:16px}}.btn,.btn:hover{color:#fff;background:#2563eb;border-radius:6px!important}',
html:'<!DOCTYPE html><html lang="th"><head><meta charset="utf-8"><title>Halo</title><style>p{color:red}<\/style></head><body><div class="box"><h1>Halo</h1><p>Contoh <b>HTML</b></p><ul><li>Satu</li><li>Dua</li></ul></div><scr'+'ipt>var a=1;if(a){console.log("ok")}<\/scr'+'ipt></body></html>',
js:'function hitung(a,b){var hasil=a+b;if(hasil>10){return {nilai:hasil,besar:true}}for(var i=0;i<3;i++){hasil+=i}return hasil>0?"positif":"negatif"}const data=[1,2,3].map(x=>x*2);'};
var lastLang='js';
function bytes(x){try{return new Blob([x]).size;}catch(e){return x.length;}}
function fmtB(n){return n<1024?n+' B':(n/1024).toFixed(1)+' KB';}
function msg(text,cls){st.className='pcf-status'+(cls?' pcf-'+cls:'');st.textContent=text;}
function opts(){var v=ind.value;return {unit:v==='tab'?'\t':rep(' ',parseInt(v,10)),sort:sort.checked,minify:mode.value==='min'};}
function save(){try{localStorage.setItem('pcf-set',JSON.stringify({i:ind.value,m:mode.value,s:sort.checked,l:lang.value}));}catch(e){}}
function load(){try{var d=JSON.parse(localStorage.getItem('pcf-set')||'null');if(d){if(d.i)ind.value=d.i;if(d.m)mode.value=d.m;sort.checked=!!d.s;if(d.l)lang.value=d.l;}}catch(e){}}
function go(){
var src=inp.value;
if(!src.trim()){out.value='';msg('วางโค้ดในช่องซ้ายก่อน แล้วกดปุ่ม "ประมวลผล"','');return;}
var o=opts();
try{
var r=run(lang.value,src,o);
lastLang=r.lang;out.value=r.text;
var a=bytes(src),b=bytes(r.text);
var info='สำเร็จ · ภาษา '+NAMES[r.lang]+(lang.value==='auto'?' (ตรวจพบอัตโนมัติ)':'')+' · '+fmtB(a)+' → '+fmtB(b);
if(o.minify&&a>0)info+=' (ลดลง '+Math.max(0,Math.round((1-b/a)*100))+'%)';
info+=' · '+r.text.split('\n').length+' บรรทัด';
var w=r.warn.filter(function(x,i,arr){return arr.indexOf(x)===i;});
if(w.length){msg(info+' · ⚠ '+w.join(' / '),'warn');}else msg(info,'ok');
}catch(e){
out.value='';
var m=String(e&&e.message?e.message:e);
var pos=/position (\d+)/.exec(m);
if(pos&&!/line \d+/.test(m)){var lc=lineCol(src,parseInt(pos[1],10));m+=' (บรรทัด '+lc[0]+' คอลัมน์ '+lc[1]+')';}
msg('ผิดพลาด: '+m,'err');}}
function readFile(f){
if(!f)return;
if(f.size>5*1024*1024){msg('ไฟล์ใหญ่เกิน 5 MB อาจทำให้เบราว์เซอร์ช้า กรุณาใช้ไฟล์ที่เล็กลง','warn');return;}
var ext=(/\.([a-z0-9]+)$/i.exec(f.name)||[])[1];ext=ext?ext.toLowerCase():'';
var map={json:'json',css:'css',html:'html',htm:'html',js:'js',mjs:'js',cjs:'js'};
if(map[ext])lang.value=map[ext];
var rd=new FileReader();
rd.onload=function(){inp.value=String(rd.result||'');go();};
rd.onerror=function(){msg('อ่านไฟล์ไม่สำเร็จ','err');};
rd.readAsText(f);}
$('pcf-run').addEventListener('click',function(){save();go();});
$('pcf-clear').addEventListener('click',function(){inp.value='';out.value='';msg('','');inp.focus();});
$('pcf-sample').addEventListener('click',function(){var l=lang.value==='auto'?'json':lang.value;inp.value=SAMPLES[l];go();});
$('pcf-copy').addEventListener('click',function(){
var t=out.value;if(!t){msg('ยังไม่มีผลลัพธ์ให้คัดลอก','warn');return;}
function fb(){out.focus();out.select();var ok=false;try{ok=document.execCommand('copy');}catch(e){}msg(ok?'คัดลอกผลลัพธ์แล้ว':'คัดลอกไม่สำเร็จ กรุณาเลือกข้อความแล้วกด Ctrl+C',ok?'ok':'warn');}
if(navigator.clipboard&&navigator.clipboard.writeText){navigator.clipboard.writeText(t).then(function(){msg('คัดลอกผลลัพธ์แล้ว','ok');},fb);}else fb();});
$('pcf-paste').addEventListener('click',function(){
if(navigator.clipboard&&navigator.clipboard.readText){navigator.clipboard.readText().then(function(t){inp.value=t;go();},function(){msg('เบราว์เซอร์ไม่อนุญาตให้อ่านคลิปบอร์ด กรุณากด Ctrl+V ในช่องซ้ายแทน','warn');});}
else msg('เบราว์เซอร์นี้ไม่รองรับปุ่มวาง กรุณากด Ctrl+V ในช่องซ้ายแทน','warn');});
$('pcf-download').addEventListener('click',function(){
var t=out.value;if(!t){msg('ยังไม่มีผลลัพธ์ให้ดาวน์โหลด','warn');return;}
try{var b=new Blob([t],{type:'text/plain;charset=utf-8'});var a=document.createElement('a');a.href=URL.createObjectURL(b);a.download=(mode.value==='min'?'minified.':'formatted.')+EXT[lastLang];document.body.appendChild(a);a.click();document.body.removeChild(a);setTimeout(function(){URL.revokeObjectURL(a.href);},1000);}catch(e){msg('ดาวน์โหลดไม่สำเร็จ','err');}});
$('pcf-swap').addEventListener('click',function(){if(!out.value){msg('ยังไม่มีผลลัพธ์','warn');return;}inp.value=out.value;out.value='';msg('นำผลลัพธ์กลับมาเป็นอินพุตแล้ว','');});
file.addEventListener('change',function(){readFile(file.files&&file.files[0]);file.value='';});
inp.addEventListener('dragover',function(e){e.preventDefault();});
inp.addEventListener('drop',function(e){var f=e.dataTransfer&&e.dataTransfer.files&&e.dataTransfer.files[0];if(f){e.preventDefault();readFile(f);}});
inp.addEventListener('keydown',function(e){if((e.ctrlKey||e.metaKey)&&e.key==='Enter'){e.preventDefault();go();}});
[lang,mode,ind,sort].forEach(function(el){el.addEventListener('change',function(){save();if(inp.value.trim())go();});});
load();
})();
</script>

## วิธีใช้งานเครื่องมือจัดรูปแบบโค้ด

1. **วางโค้ด** ลงในช่องซ้าย หรือกด "วางจากคลิปบอร์ด" หรือกด "เปิดไฟล์" (รองรับ .html .css .js .json) หรือลากไฟล์มาวางในช่องได้เลย
2. **เลือกภาษา** ปล่อยเป็น "ตรวจจับอัตโนมัติ" ได้ หรือเลือก HTML, CSS, JavaScript, JSON เองหากต้องการความแม่นยำ
3. **เลือกโหมด** "จัดรูปแบบ (Beautify)" เพื่อให้อ่านง่าย หรือ "ย่อโค้ด (Minify)" เพื่อลดขนาดไฟล์
4. **ตั้งค่าการเยื้อง** เลือก 2 ช่องว่าง, 4 ช่องว่าง หรือ Tab และสำหรับ JSON เลือก "เรียงคีย์ A–Z" ได้
5. **กด "ประมวลผล"** หรือกด Ctrl + Enter (Mac: Cmd + Enter) ผลลัพธ์จะแสดงในช่องขวา พร้อมขนาดไฟล์ก่อน/หลังและข้อความแจ้งเตือน
6. **นำไปใช้งาน** กด "คัดลอกผลลัพธ์" หรือ "ดาวน์โหลด" หรือกด "ใช้ผลลัพธ์เป็นอินพุต" หากต้องการประมวลผลต่อ เช่น จัดรูปแบบแล้วย่ออีกครั้ง

ทุกครั้งที่เปลี่ยนภาษา โหมด การเยื้อง หรือตัวเลือก เครื่องมือจะประมวลผลใหม่ให้อัตโนมัติ และจดจำการตั้งค่าไว้ในเบราว์เซอร์ของคุณ

## คุณสมบัติเด่น

- รองรับ **HTML, CSS, JavaScript และ JSON** ในหน้าเดียว พร้อมตรวจจับภาษาอัตโนมัติ
- **จัดรูปแบบ (Beautify) และย่อโค้ด (Minify)** ได้ในเครื่องมือเดียว
- ปรับการเยื้องได้ 2 ช่องว่าง, 4 ช่องว่าง หรือ Tab
- **แจ้งข้อผิดพลาดของ JSON** พร้อมตำแหน่งบรรทัดและคอลัมน์ และแจ้งเตือนวงเล็บหรือแท็กที่ไม่สมดุลในโค้ดอื่น
- จัดรูปแบบ `<script>` และ `<style>` ที่ฝังอยู่ใน HTML รวมถึง JSON-LD ให้โดยอัตโนมัติ
- เรียงคีย์ JSON ตามตัวอักษร เพื่อเปรียบเทียบไฟล์ได้ง่าย
- แสดงขนาดไฟล์ก่อน/หลัง และเปอร์เซ็นต์ที่ลดลงเมื่อย่อโค้ด
- เปิดไฟล์ ลากไฟล์มาวาง คัดลอก และดาวน์โหลดผลลัพธ์
- ใช้ได้ทั้งมือถือและเดสก์ท็อป ไม่ต้องสมัครสมาชิก
- **ประมวลผลในเบราว์เซอร์ของคุณ** โค้ดไม่ถูกส่งออกไปยังเซิร์ฟเวอร์

## ตัวอย่างก่อนและหลังจัดรูปแบบ

CSS ที่ถูกย่อ:

```css
@media (min-width:768px){.card,.box{display:flex;gap:16px}}
```

หลังจัดรูปแบบ (เยื้อง 2 ช่องว่าง):

```css
@media (min-width: 768px) {
  .card,
  .box {
    display: flex;
    gap: 16px;
  }
}
```

## คำศัพท์ที่ควรรู้

- **Format / Beautify (จัดรูปแบบ)** การเพิ่มการขึ้นบรรทัดใหม่และการเยื้อง เพื่อให้โค้ดอ่านและแก้ไขง่าย โดยไม่เปลี่ยนการทำงานของโค้ด
- **Minify (ย่อโค้ด)** การลบช่องว่าง บรรทัดว่าง และคอมเมนต์ที่ไม่จำเป็น เพื่อให้ไฟล์เล็กลงและโหลดเร็วขึ้น
- **Unminify** การคืนรูปโค้ดที่ถูกย่อให้อ่านง่ายอีกครั้ง ซึ่งก็คือการจัดรูปแบบนั่นเอง แต่ชื่อตัวแปรที่ถูกทำให้สั้นจะไม่ถูกเปลี่ยนกลับ
- **Pretty print** อีกชื่อหนึ่งของการจัดรูปแบบให้สวยงามและอ่านง่าย มักใช้กับ JSON
- **Indent (การเยื้อง)** การเว้นระยะหน้าบรรทัดเพื่อแสดงลำดับชั้นของโค้ด เลือกใช้ช่องว่าง (Space) หรือ Tab ก็ได้ ตามมาตรฐานของทีม
- **Whitespace (ช่องว่าง)** อักขระที่มองไม่เห็น เช่น ช่องว่าง Tab และการขึ้นบรรทัดใหม่
- **Comment (คอมเมนต์)** ข้อความอธิบายในโค้ดที่ไม่ถูกประมวลผล การย่อโค้ดมักลบทิ้งเพื่อลดขนาด
- **Syntax (ไวยากรณ์)** กฎการเขียนของแต่ละภาษา หากผิดกฎจะเกิด Syntax error
- **Validate (ตรวจสอบความถูกต้อง)** การเช็กว่าโค้ดถูกต้องตามไวยากรณ์ เช่น JSON ที่ถูกต้องต้องใช้เครื่องหมายคำพูดคู่ และห้ามมีจุลภาคท้ายสุด
- **HTML** ภาษาโครงสร้างของหน้าเว็บ ใช้แท็กอย่าง `<div>` และ `<p>`
- **CSS** ภาษาจัดรูปแบบและตกแต่งหน้าเว็บ เช่น สี ขนาด และเลย์เอาต์
- **JavaScript** ภาษาโปรแกรมที่ทำให้หน้าเว็บโต้ตอบได้
- **JSON** รูปแบบข้อมูลแบบข้อความที่ใช้แลกเปลี่ยนระหว่างระบบ ประกอบด้วยคู่ key และ value
- **Sort keys (เรียงคีย์)** การเรียงชื่อคีย์ของ JSON ตามตัวอักษร ช่วยให้เปรียบเทียบหรือตรวจสอบความต่างได้ง่าย
- **Auto-detect (ตรวจจับอัตโนมัติ)** การเดาภาษาของโค้ดจากเนื้อหาที่วาง
- **Obfuscate (ทำให้อ่านยาก)** การเปลี่ยนชื่อตัวแปรและโครงสร้างให้เข้าใจยากโดยตั้งใจ ต่างจาก Minify และเครื่องมือนี้ไม่ได้ถอดรหัสกลับ
- **Client-side (ฝั่งเบราว์เซอร์)** การประมวลผลในอุปกรณ์ของคุณเอง ไม่ต้องอัปโหลดข้อมูลไปเซิร์ฟเวอร์

## ข้อควรรู้และข้อจำกัด

- ตัวจัดรูปแบบ JavaScript, HTML และ CSS เป็นแบบน้ำหนักเบาที่ทำงานในเบราว์เซอร์ ไม่ใช่ตัวแยกวิเคราะห์ไวยากรณ์เต็มรูปแบบ จึงอาจจัดบรรทัดต่างจากเครื่องมืออย่าง Prettier สำหรับโค้ดที่ซับซ้อนมาก ควรทดสอบก่อนนำไปใช้งานจริง
- การย่อโค้ดจะลบช่องว่างและคอมเมนต์เท่านั้น ไม่เปลี่ยนชื่อตัวแปร จึงเล็กลงน้อยกว่าเครื่องมือย่อขั้นสูงอย่าง Terser
- HTML ที่แยกแท็กแต่ละบรรทัดอาจทำให้ช่องว่างระหว่างแท็กแบบ inline เปลี่ยนไปเล็กน้อย เช่น `<b>` และ `<span>` ควรตรวจหน้าเว็บหลังใช้งาน
- JSON ที่มีตัวเลขขนาดใหญ่มากอาจสูญเสียความแม่นยำ ตามข้อจำกัดของ JavaScript
- ไฟล์ขนาดใหญ่เกิน 5 MB อาจทำให้เบราว์เซอร์ช้า

## คำถามที่พบบ่อย

### โค้ดของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่?

ไม่ เครื่องมือนี้ประมวลผลทั้งหมดในเบราว์เซอร์ของคุณ โค้ดที่วางไว้จึงไม่ถูกส่งออกไปที่ใด

### จัดรูปแบบแล้วโค้ดจะทำงานต่างจากเดิมหรือไม่?

ตัวจัดรูปแบบเปลี่ยนเฉพาะช่องว่างและการขึ้นบรรทัดใหม่ ไม่เปลี่ยนลำดับหรือเนื้อหาของโค้ด อย่างไรก็ตาม ควรทดสอบผลลัพธ์ทุกครั้ง โดยเฉพาะ HTML

### Beautify กับ Minify ต่างกันอย่างไร?

Beautify ทำให้โค้ดอ่านง่ายด้วยการเยื้องและขึ้นบรรทัดใหม่ ส่วน Minify ลบช่องว่างและคอมเมนต์เพื่อลดขนาดไฟล์ ใช้กับไฟล์ที่จะนำขึ้นเว็บไซต์จริง

### ทำไม JSON ของฉันขึ้นข้อผิดพลาด?

สาเหตุที่พบบ่อยคือมีจุลภาคท้ายสุดของรายการ ใช้เครื่องหมายคำพูดเดี่ยวแทนคู่ ไม่ใส่เครื่องหมายคำพูดที่ชื่อคีย์ หรือมีคอมเมนต์อยู่ในไฟล์ เครื่องมือจะแจ้งตำแหน่งบรรทัดและคอลัมน์เพื่อให้แก้ไขได้เร็วขึ้น

### ย่อโค้ดแล้วเปลี่ยนชื่อตัวแปรให้สั้นลงหรือไม่?

ไม่ เครื่องมือนี้ลบเฉพาะช่องว่างและคอมเมนต์ที่ไม่จำเป็น ชื่อตัวแปรและโครงสร้างโค้ดจะคงเดิม

<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[
{"@type":"Question","name":"โค้ดของฉันถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่?","acceptedAnswer":{"@type":"Answer","text":"ไม่ เครื่องมือนี้ประมวลผลทั้งหมดในเบราว์เซอร์ของคุณ โค้ดที่วางไว้จึงไม่ถูกส่งออกไปที่ใด"}},
{"@type":"Question","name":"จัดรูปแบบแล้วโค้ดจะทำงานต่างจากเดิมหรือไม่?","acceptedAnswer":{"@type":"Answer","text":"ตัวจัดรูปแบบเปลี่ยนเฉพาะช่องว่างและการขึ้นบรรทัดใหม่ ไม่เปลี่ยนลำดับหรือเนื้อหาของโค้ด อย่างไรก็ตาม ควรทดสอบผลลัพธ์ทุกครั้ง โดยเฉพาะ HTML"}},
{"@type":"Question","name":"Beautify กับ Minify ต่างกันอย่างไร?","acceptedAnswer":{"@type":"Answer","text":"Beautify ทำให้โค้ดอ่านง่ายด้วยการเยื้องและขึ้นบรรทัดใหม่ ส่วน Minify ลบช่องว่างและคอมเมนต์เพื่อลดขนาดไฟล์ ใช้กับไฟล์ที่จะนำขึ้นเว็บไซต์จริง"}},
{"@type":"Question","name":"ทำไม JSON ของฉันขึ้นข้อผิดพลาด?","acceptedAnswer":{"@type":"Answer","text":"สาเหตุที่พบบ่อยคือมีจุลภาคท้ายสุดของรายการ ใช้เครื่องหมายคำพูดเดี่ยวแทนคู่ ไม่ใส่เครื่องหมายคำพูดที่ชื่อคีย์ หรือมีคอมเมนต์อยู่ในไฟล์ เครื่องมือจะแจ้งตำแหน่งบรรทัดและคอลัมน์เพื่อให้แก้ไขได้เร็วขึ้น"}},
{"@type":"Question","name":"ย่อโค้ดแล้วเปลี่ยนชื่อตัวแปรให้สั้นลงหรือไม่?","acceptedAnswer":{"@type":"Answer","text":"ไม่ เครื่องมือนี้ลบเฉพาะช่องว่างและคอมเมนต์ที่ไม่จำเป็น ชื่อตัวแปรและโครงสร้างโค้ดจะคงเดิม"}}
]}
</script>