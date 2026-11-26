---
title: เช็ค Syntax PHP ออนไลน์ ฟรี
h1: เช็ค Syntax PHP
description: 'เช็ค Syntax PHP ออนไลน์ฟรี วางโค้ดทันทีแล้วหา ; หรือ } ที่ขาด พร้อมเช็คความเข้ากันได้ PHP 5.6-8.5 ตรวจในเบราว์เซอร์ ไม่อัปโหลดโค้ด ใช้ได้ทั้งมือถือและพีซี'
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-26T09:00:00+07:00'
weight: 164
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- เช็ค Syntax PHP
- เช็ค Syntax PHP ออนไลน์
- ตรวจสอบโค้ด PHP
- PHP syntax checker
- php -l ออนไลน์
- Parse error PHP
- เครื่องมือนักพัฒนา
---

<style>
#pxc *{box-sizing:border-box}
#pxc button,#pxc .pxc-b,#pxc select{font:inherit;padding:.4em .8em;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;cursor:pointer}
#pxc .pxc-bar{display:flex;flex-wrap:wrap;gap:.5em;align-items:center;margin:.5em 0}
#pxc textarea{width:100%;min-height:260px;font:14px/1.5 ui-monospace,Menlo,Consolas,monospace;padding:.7em;border:1px solid rgba(128,128,128,.5);border-radius:6px;background:transparent;color:inherit;tab-size:4;resize:vertical}
#pxc-sum{font-weight:600;margin:.6em 0}.pxc-ok{color:#1a8f3c}.pxc-bad{color:#d33}
#pxc-ls{padding-left:1.2em}#pxc-ls button{border:0;text-align:left;padding:.2em 0}
#pxc .pxc-sc{overflow-x:auto}#pxc table{border-collapse:collapse}#pxc td{border:1px solid rgba(128,128,128,.4);padding:.3em .7em;text-align:center;white-space:nowrap}#pxc .pxc-cur{font-weight:700;text-decoration:underline}
#pxc .pxc-ex button{padding:.15em .6em;margin:.15em;font-size:.9em}
</style>

<div id="pxc">
<div class="pxc-bar"><label>เวอร์ชัน PHP <select id="pxc-v"></select></label><button type="button" id="pxc-go">ตรวจสอบ PHP</button><label class="pxc-b">เปิดไฟล์<input id="pxc-f" type="file" accept=".php,.phtml,.inc,.txt" hidden></label><button type="button" id="pxc-cp">คัดลอกผลลัพธ์</button><button type="button" id="pxc-clr">ล้าง</button></div>
<div class="pxc-ex">ลอง: <span id="pxc-ex"></span></div>
<textarea id="pxc-ta" spellcheck="false" rows="14" placeholder="วางโค้ด PHP ที่นี่ หรือลากไฟล์ .php มาวาง"></textarea>
<div id="pxc-sum" role="status" aria-live="polite"></div>
<ol id="pxc-ls"></ol>
<h3>ความเข้ากันได้ของโค้ดแต่ละเวอร์ชัน</h3>
<div class="pxc-sc"><table id="pxc-tb"></table></div>
</div>

<script>
(function(){'use strict';
var V=['5.6','7.0','7.1','7.2','7.3','7.4','8.0','8.1','8.2','8.3','8.4','8.5'];
function set(a){var o={};a.split(' ').forEach(function(k){o[k]=1});return o}
var KW=set('abstract final public private protected static readonly var const function fn class interface trait enum extends implements namespace use as new clone instanceof insteadof global echo print return throw yield include require include_once require_once if else elseif while for foreach do switch case default try catch finally and or xor list array isset unset empty declare match goto');
var ST=set('echo print return if foreach for while do switch function class interface trait enum abstract final public private protected static readonly var const use namespace try throw global unset include require include_once require_once break continue new yield declare goto');
var CT=set('if elseif while for foreach switch catch declare');
var B='(^|[^>:$\\w\\\\])',N='()';
var R=[
[0,5,'e',/fn\s*\(/,'Arrow function (fn) ต้องใช้ PHP 7.4+'],
[0,5,'e',/\?\?=/,'??= ต้องใช้ PHP 7.4+',N],
[0,1,'e',/\?\?(?!=)/,'?? (null coalescing) ต้องใช้ PHP 7.0+',N],
[0,1,'e',/<=>/,'<=> ต้องใช้ PHP 7.0+',N],
[0,1,'e',/new\s+class\b/,'Anonymous class ต้องใช้ PHP 7.0+'],
[0,1,'e',/\)\s*:\s*\??[\w\\]+\s*\{/,'Return type ต้องใช้ PHP 7.0+',N],
[0,2,'e',/[(,:]\s*\?[A-Za-z\\]/,'Nullable type (?T) ต้องใช้ PHP 7.1+',N],
[0,2,'e',/:\s*void\b/,'Return type void ต้องใช้ PHP 7.1+',N],
[0,2,'e',/\[[^\[\]]*\]\s*=(?![=>])/,'[$a, $b] = ... ต้องใช้ PHP 7.1+ (เวอร์ชันเก่าใช้ list())','(^|[^\\w\\]\\)$>])'],
[0,2,'e',/catch\s*\([^)|]*\|/,'Multi-catch (A | B) ต้องใช้ PHP 7.1+'],
[0,5,'e',/(?:public|private|protected|static)\s+(?:static\s+)?\??(?:int|float|string|bool|array|iterable|self|[A-Z]\w*)\s+\$/,'Typed property ต้องใช้ PHP 7.4+'],
[0,5,'e',/\[\s*\.\.\.\s*[$\w]/,'Spread ใน array ([...$a]) ต้องใช้ PHP 7.4+',N],
[0,5,'e',/\d_\d/,'ตัวคั่นตัวเลข เช่น 1_000 ต้องใช้ PHP 7.4+'],
[0,6,'e',/match\s*\(/,'match ต้องใช้ PHP 8.0+'],
[0,6,'e',/\?->/,'Nullsafe ?-> ต้องใช้ PHP 8.0+',N],
[0,6,'e',/(?:public|private|protected)\s+(?:readonly\s+)?(?:\??[\w\\|]+\s+)?\$\w+\s*[,)]/,'Constructor property promotion ต้องใช้ PHP 8.0+'],
[0,6,'e',/:\s*[\w\\?]+\s*\|\s*[\w\\]+\s*[{;]/,'Union type ต้องใช้ PHP 8.0+',N],
[0,7,'e',/enum\s+\w+\s*(?::\s*\w+\s*)?(?:implements[^{]*)?\{/,'enum ต้องใช้ PHP 8.1+'],
[0,7,'e',/readonly\s+(?!(?:(?:final|abstract)\s+)*class)/,'readonly property ต้องใช้ PHP 8.1+'],
[0,7,'e',/:\s*never\b/,'Return type never ต้องใช้ PHP 8.1+',N],
[0,7,'e',/[\w\]]\(\s*\.\.\.\s*\)/,'First-class callable foo(...) ต้องใช้ PHP 8.1+',N],
[0,8,'e',/readonly\s+(?:(?:final|abstract)\s+)*class\b/,'readonly class ต้องใช้ PHP 8.2+'],
[0,9,'e',/const\s+(?:int|string|float|bool|array|mixed)\s+\w+\s*=/,'Typed class constant ต้องใช้ PHP 8.3+'],
[0,10,'e',/(?:public|protected|private)\s*\(set\)|\$\w+\s*\{\s*(?:get|set)\b/,'Property hooks / asymmetric visibility ต้องใช้ PHP 8.4+',N],
[0,10,'e',/new\s+[\w\\]+\([^()]*\)\s*->/,'new Foo()->bar() ต้องใช้ PHP 8.4+ (เวอร์ชันเก่าเขียน (new Foo())->bar())'],
[0,11,'e',/\|>/,'Pipe operator |> ต้องใช้ PHP 8.5+',N],
[6,99,'e',/\(\s*(?:real|unset)\s*\)/,'cast (real) และ (unset) ถูกตัดออกใน PHP 8.0',N],
[5,6,'w',/\$\w+\{[^}]*\}/,'$str{0} เลิกใช้แล้ว ให้ใช้ $str[0]',N],
[6,99,'e',/\$\w+\{[^}]*\}/,'$str{0} ถูกตัดออกใน PHP 8.0 ให้ใช้ $str[0]',N],
[3,6,'w',/(?:each|create_function)\s*\(/,'ฟังก์ชันนี้เลิกใช้ตั้งแต่ PHP 7.2'],
[6,99,'w',/(?:each|create_function|money_format|get_magic_quotes_gpc)\s*\(/,'ฟังก์ชันนี้ถูกลบใน PHP 8.0 (ไม่ใช่ Syntax error แต่จะพังตอนรัน)'],
[1,99,'w',/(?:mysql_\w+|ereg\w*|spliti?)\s*\(/,'ฟังก์ชันนี้ถูกลบใน PHP 7.0 ใช้ mysqli/PDO/preg_* แทน'],
[3,99,'w',/mcrypt_\w+\s*\(/,'mcrypt ถูกลบใน PHP 7.2 ใช้ openssl หรือ sodium แทน'],
[7,99,'w',/(?:gm)?strftime\s*\(/,'strftime() เลิกใช้ตั้งแต่ PHP 8.1 ใช้ date() แทน'],
[7,99,'w',/FILTER_SANITIZE_STRING\b/,'FILTER_SANITIZE_STRING เลิกใช้ตั้งแต่ PHP 8.1'],
[8,99,'w',/utf8_(?:en|de)code\s*\(/,'utf8_encode/decode เลิกใช้ตั้งแต่ PHP 8.2 ใช้ mb_convert_encoding'],
[10,99,'w',/(?:int|string|float|bool|array|callable|iterable|object|[A-Z][\w\\]*)\s+&?\$\w+\s*=\s*null\b/,'Implicit nullable (int $id = null) เลิกใช้ใน PHP 8.4 ให้เขียน ?int $id = null','(^|[^?|>:$\\w\\\\])'],
[11,99,'w',/\(\s*(?:boolean|integer|double|binary)\s*\)/,'cast ชื่อนี้เลิกใช้ใน PHP 8.5 ใช้ (bool) (int) (float) (string)',N],
[0,99,'e',/\$this\s*=(?![=>])/,'กำหนดค่าให้ $this ไม่ได้ (Cannot re-assign $this)',N]
];
function lex(s){
var T=[],I=[],n=s.length,i=0,php=false,tag=false,cl=s.split(''),m,e,q;
function bl(a,b){for(;a<b;a++)if(cl[a]!=='\n')cl[a]=' '}
function P(t,v,a,b){T.push({t:t,v:v,p:a,e:b})}
function er(p,x,sv){I.push({p:p,s:sv||'e',m:x})}
while(i<n){
var ch=s[i],c2=s.substr(i,2);
if(!php){
e=s.indexOf('<?',i);
if(e<0){bl(i,n);break}
bl(i,e);
if(s.substr(e,5)==='<?xml'){er(e,'พบ <?xml ซึ่ง PHP จะอ่านเป็นโค้ดเมื่อเปิด short_open_tag ให้ใช้ echo แทน','w');q=s.indexOf('?>',e);i=q<0?n:q+2;bl(e,i);continue}
m=/^<\?(php|=)?/i.exec(s.substr(e,5));
if(!m[1])er(e,'ใช้ <? (short tag) ควรเขียนเป็น <?php','w');
tag=true;php=true;i=e+m[0].length;bl(e,i);continue}
if(/\s/.test(ch)){i++;continue}
if(c2==='?>'){bl(i,i+2);P(';','?>',i,i+2);i+=2;php=false;continue}
if(ch==='#'&&s[i+1]==='['){P('[','#[',i,i+2);T[T.length-1].at=1;i+=2;continue}
if(ch==='#'||c2==='//'){e=i;while(e<n&&s[e]!=='\n'&&s.substr(e,2)!=='?>')e++;bl(i,e);i=e;continue}
if(c2==='/*'){e=s.indexOf('*/',i+2);if(e<0){er(i,'คอมเมนต์ /* ไม่ได้ปิดด้วย */ (unexpected end of file)');bl(i,n);break}bl(i,e+2);i=e+2;continue}
m=/^<<<[ \t]*(['"]?)(\w+)\1\r?\n/.exec(s.substr(i,120));
if(m){var st0=i+m[0].length,mm=new RegExp('^[ \\t]*'+m[2]+'\\b','m').exec(s.slice(st0));
if(!mm){er(i,'Heredoc/Nowdoc '+m[2]+' ไม่มีบรรทัดปิด (unexpected end of file)');bl(i,n);break}
e=st0+mm.index+mm[0].length;bl(i,e);P('s','h',i,e);i=e;continue}
if(ch==="'"||ch==='"'||ch==='`'){e=i+1;while(e<n&&s[e]!==ch){if(s[e]==='\\')e++;e++}
if(e>=n){er(i,'เครื่องหมายคำพูด '+ch+' ไม่ได้ปิด (unexpected end of file)');bl(i+1,n);break}
bl(i+1,e);P('s',ch,i,e+1);i=e+1;continue}
if(/[\u2018\u2019\u201C\u201D]/.test(ch)){er(i,'พบเครื่องหมายคำพูดแบบโค้ง '+ch+' (มักมาจาก Word/เว็บ) ให้เปลี่ยนเป็น \' หรือ "');P('s',ch,i,i+1);i++;continue}
q=s.substr(i,100);
m=/^\(\s*(?:int|integer|bool|boolean|float|double|real|string|binary|array|object|unset)\s*\)/i.exec(q);
if(m){P('c',m[0],i,i+m[0].length);i+=m[0].length;continue}
m=/^\$[A-Za-z_\u0080-\uffff][\w\u0080-\uffff]*/.exec(q);
if(m){P('v',m[0],i,i+m[0].length);i+=m[0].length;continue}
m=/^(?:0x[\da-f_]+|0b[01_]+|(?:\d[\d_]*)?\.?\d[\d_]*(?:e[+-]?\d+)?)/i.exec(q);
if(m&&m[0]){P('n',m[0],i,i+m[0].length);i+=m[0].length;continue}
m=/^[\\A-Za-z_\u0080-\uffff][\\\w\u0080-\uffff]*/.exec(q);
if(m){P('i',m[0].toLowerCase(),i,i+m[0].length);i+=m[0].length;continue}
if('()[]{}'.indexOf(ch)>=0){P(ch,ch,i,i+1);i++;continue}
m=/^(?:\?->|\?\?=|<=>|\*\*=|===|!==|\.\.\.|<<=|>>=|\|>|\+\+|--|->|=>|::|&&|\|\||\?\?|==|!=|<>|<=|>=|\+=|-=|\*=|\/=|\.=|%=|&=|\|=|\^=|<<|>>|\*\*|[-+*\/%=<>!&|^~?:.,;@$])/.exec(q);
if(m){P(m[0]===';'?';':'o',m[0],i,i+m[0].length);i+=m[0].length;continue}
i++}
return{T:T,cl:cl.join(''),I:I,tag:tag}}
function LC(p,ls){var a=0,b=ls.length-1,x;while(a<b){x=(a+b+1)>>1;if(ls[x]<=p)a=x;else b=x-1}return{l:a+1,c:p-ls[a]+1}}
function hint(o,s){var a=s.split('\n'),ind=a[o.l-1].match(/^\s*/)[0].length,x;
for(x=o.l;x<a.length;x++){if(a[x].trim()&&a[x].match(/^\s*/)[0].length<=ind&&!/^\s*(\}|\)|else|catch|finally)/.test(a[x]))return ' น่าจะต้องปิดก่อนบรรทัด '+(x+1)}
return ' น่าจะต้องปิดที่ท้ายไฟล์'}
function ana(s,vi){
var L=lex(s),T=L.T,I=L.I.slice(),ls=[0],k,t,pv=null,st=[],fn={},stop=0,PR={')':'(',']':'[','}':'{'},o,k2;
for(k=0;k<s.length;k++)if(s[k]==='\n')ls.push(k+1);
function er(p,m,sv){I.push({p:p,s:sv||'e',m:m})}
function isEnd(p){return !!p&&(p.t==='v'||p.t==='n'||p.t==='s'||(p.t===')'&&!p.ctl)||(p.t===']'&&!p.at)||(p.t==='i'&&!KW[p.v]))}
T.forEach(function(x){x.l=LC(x.p,ls).l});
for(k=0;k<T.length&&!stop;k++){
t=T[k];
var top=st[st.length-1],stm=!top||(top.t==='{'&&!top.m);
if(isEnd(pv)){
var same=t.l===pv.l;
if(same&&pv.t!=='i'&&(t.t==='v'||t.t==='n'||t.t==='s'))er(pv.e,'ขาด ; หรือ , หรือ operator ระหว่างสองค่านี้ (unexpected)');
else if(stm&&(t.t==='}'||(!same&&(t.t==='v'||(t.t==='i'&&ST[t.v]&&!(t.v==='use'&&pv.t===')'))))))er(pv.e,'ขาด ; ท้ายคำสั่ง (PHP จะรายงานว่า unexpected ที่บรรทัด '+t.l+')')}
if(t.t==='('||t.t==='['||t.t==='{'){
o={t:t.t,p:t.p,l:t.l,ctl:0,at:t.at};
if(t.t==='('&&pv&&pv.t==='i'){if(CT[pv.v])o.ctl=1;if(pv.v==='match')o.mt=1}
if(t.t==='{'&&pv&&(pv.mc||((pv.t==='v'||pv.t===']')&&pv.e===t.p)))o.m=1;
st.push(o)}
else if(t.t===')'||t.t===']'||t.t==='}'){
o=st.pop();
if(!o){er(t.p,'มี '+t.t+' เกินมาหนึ่งตัว (Unmatched \''+t.t+'\') ตัวที่อยู่ผิดที่มักอยู่สูงขึ้นไป ดูการย่อหน้า');stop=1}
else if(o.t!==PR[t.t]){er(t.p,'ปิดด้วย '+t.t+' แต่ '+o.t+' ที่เปิดบรรทัด '+o.l+' ยังไม่ปิด');stop=1}
else{t.ctl=o.ctl;t.at=o.at;if(o.mt)t.mc=1}}
if(t.t==='i'&&(t.v==='function'||t.v==='fn')){
k2=k+1;var nm='';
if(T[k2]&&T[k2].v==='&')k2++;
if(T[k2]&&T[k2].t==='i'&&t.v==='function'){nm=T[k2].v;k2++}
if(T[k2]&&T[k2].t==='('){
if(nm&&!st.length){if(fn[nm])er(t.p,'ประกาศฟังก์ชัน '+nm+'() ซ้ำ (Cannot redeclare ประกาศไว้แล้วบรรทัด '+fn[nm]+')');fn[nm]=t.l}
var d=0,sn={},u,q;
for(q=k2;q<T.length;q++){u=T[q];
if(u.t==='('||u.t==='['||u.t==='{')d++;
else if(u.t===')'||u.t===']'||u.t==='}'){d--;if(!d)break}
else if(u.t==='v'&&d===1){if(sn[u.v])er(u.p,'พารามิเตอร์ '+u.v+' ซ้ำ (Redefinition of parameter)');sn[u.v]=1}}}}
if(t.t==='i'&&t.v==='declare'&&k>0&&T[k+2]&&T[k+2].v==='strict_types')er(t.p,'declare(strict_types=1) ต้องเป็นคำสั่งแรกสุดของไฟล์');
pv=t}
if(!stop){
if(!st.length&&isEnd(pv))er(pv.e,'ขาด ; ท้ายไฟล์ (unexpected end of file)');
while(st.length){o=st.pop();
er(o.p,(o.t==='{'?'ขาด } เพราะ { ที่เปิดบรรทัด '+o.l+' ไม่เคยปิด'+hint(o,s):'ขาด '+(o.t==='('?')':']')+' เพราะ '+o.t+' ที่เปิดบรรทัด '+o.l+' ไม่เคยปิด')+' (unexpected end of file)')}}
R.forEach(function(r){
if(vi<r[0]||vi>=r[1])return;
var re=new RegExp((r[5]||B)+r[3].source,'g'),m;
while((m=re.exec(L.cl))){er(m.index+m[1].length,r[4],r[2]);if(!m[0])re.lastIndex++}});
if(!L.tag&&s.trim())I.push({p:0,s:'i',m:'ไม่พบแท็ก <?php โค้ดนี้ถือเป็น HTML ธรรมดา จึงไม่มี Syntax error'});
I.sort(function(a,b){return a.p-b.p});
var seen={},out=[];
I.forEach(function(x){var lc=LC(Math.min(x.p,s.length),ls),key=lc.l+x.m;if(seen[key])return;seen[key]=1;out.push({l:lc.l,c:lc.c,s:x.s,m:x.m})});
return out}
window.pxcAna=ana;
var el=function(i){return document.getElementById(i)},ta=el('pxc-ta');
if(!ta)return;
var sel=el('pxc-v'),sum=el('pxc-sum'),ls=el('pxc-ls'),tb=el('pxc-tb'),last='',timer=0;
V.forEach(function(v,i){var o=document.createElement('option');o.value=i;o.textContent='PHP '+v;sel.appendChild(o)});
sel.value='8';
try{var sv=localStorage.getItem('pxcv');if(sv!==null&&V[+sv])sel.value=sv}catch(e){}
var EX=[
['ถูกต้อง',"<?php\nfunction add(int $a, int $b): int {\n    return $a + $b;\n}\necho add(1, 2);\n"],
['ขาด ;',"<?php\n$name = 'Somchai'\necho $name;\n"],
['ขาด }',"<?php\nfunction hi() {\n    if (true) {\n        echo 'hi';\n}\n"],
['ไม่ปิดเครื่องหมายคำพูด',"<?php\n$a = 'hello;\necho $a;\n"],
['เครื่องหมายคำพูดโค้ง',"<?php\necho “สวัสดี”;\n"],
['โค้ดเก่า',"<?php\n$s = 'abc';\necho $s{0};\n$f = create_function('$a', 'return $a;');\n"],
['โค้ดใหม่',"<?php\n$r = match($x) { 1 => 'a', default => 'b' };\n$f = fn($n) => $n * 2;\n"],
['ไม่มีแท็ก',"echo 'hello';\n"]];
EX.forEach(function(x){var b=document.createElement('button');b.type='button';b.textContent=x[0];b.onclick=function(){ta.value=x[1];render()};el('pxc-ex').appendChild(b)});
function go(l){var a=ta.value.split('\n'),p=0,i;for(i=0;i<l-1&&i<a.length;i++)p+=a[i].length+1;
ta.focus();ta.setSelectionRange(p,p+(a[l-1]||'').length);ta.scrollTop=Math.max(0,(l-3)*(parseFloat(getComputedStyle(ta).lineHeight)||21))}
function render(){
var s=ta.value,vi=+sel.value,res,er,wn;
ls.textContent='';tb.textContent='';last='';
if(!s.trim()){sum.className='';sum.textContent='ไม่มีโค้ดให้ตรวจสอบ';return}
res=ana(s,vi);
er=res.filter(function(x){return x.s==='e'});wn=res.filter(function(x){return x.s==='w'});
sum.className=er.length?'pxc-bad':'pxc-ok';
sum.textContent=er.length?'❌ พบ Syntax ผิดพลาด '+er.length+' จุด (PHP '+V[vi]+')':'✅ ไม่พบข้อผิดพลาดทาง Syntax (PHP '+V[vi]+')'+(wn.length?' · คำเตือน '+wn.length+' รายการ':'');
last=sum.textContent;
res.forEach(function(x){var li=document.createElement('li'),b=document.createElement('button');
b.type='button';b.textContent=(x.s==='e'?'❌ ':x.s==='w'?'⚠️ ':'ℹ️ ')+'บรรทัด '+x.l+': '+x.m;
b.onclick=function(){go(x.l)};li.appendChild(b);ls.appendChild(li);last+='\nบรรทัด '+x.l+': '+x.m});
var h=tb.insertRow(),r2=tb.insertRow();
V.forEach(function(v,i){var n=ana(s,i).filter(function(x){return x.s==='e'}).length,c=h.insertCell(),d=r2.insertCell();
c.textContent='PHP '+v;if(i===vi)c.className='pxc-cur';d.textContent=n?'❌ '+n:'✅';d.className=n?'pxc-bad':'pxc-ok'})}
function rd(f){if(!f)return;var r=new FileReader();r.onload=function(){ta.value=String(r.result);render()};r.readAsText(f)}
el('pxc-go').onclick=render;
el('pxc-clr').onclick=function(){ta.value='';render();ta.focus()};
el('pxc-cp').onclick=function(){if(last&&navigator.clipboard)navigator.clipboard.writeText(last).catch(function(){})};
el('pxc-f').onchange=function(){rd(this.files[0])};
sel.onchange=function(){try{localStorage.setItem('pxcv',sel.value)}catch(e){}render()};
ta.addEventListener('input',function(){clearTimeout(timer);timer=setTimeout(render,500)});
ta.addEventListener('dragover',function(e){e.preventDefault()});
ta.addEventListener('drop',function(e){e.preventDefault();rd(e.dataTransfer&&e.dataTransfer.files[0])});
render()})();
</script>

## วิธีใช้งานเครื่องมือเช็ค Syntax PHP

1. **เลือกเวอร์ชัน PHP** ที่เซิร์ฟเวอร์หรือโฮสติ้งของคุณใช้ เช่น 7.4 หรือ 8.2 ระบบจะจำค่าที่เลือกไว้
2. **วางโค้ด PHP** ลงในกล่อง หรือกด "เปิดไฟล์" หรือลากไฟล์ `.php` มาวางได้เลย
3. **ดูผลลัพธ์** ระบบตรวจอัตโนมัติขณะพิมพ์ หรือกด "ตรวจสอบ PHP" เพื่อตรวจซ้ำ
4. **คลิกที่ข้อผิดพลาด** เพื่อให้เคอร์เซอร์ไปเลือกบรรทัดนั้นในกล่องโค้ด
5. **ดูตารางความเข้ากันได้** เพื่อรู้ว่าโค้ดเดียวกันผ่านหรือไม่ผ่านใน PHP เวอร์ชันไหนบ้าง
6. **กด "คัดลอกผลลัพธ์"** เพื่อนำรายการข้อผิดพลาดไปส่งต่อหรือค้นหาวิธีแก้ต่อ

ปุ่มตัวอย่าง (เช่น "ขาด ;" "ขาด }") ช่วยให้ดูว่าข้อผิดพลาดแต่ละแบบแสดงผลอย่างไร ส่วนโค้ดทั้งหมดถูกตรวจในเบราว์เซอร์ของคุณ ไม่มีการอัปโหลดไปที่ใด

## อธิบายคำศัพท์

- **Syntax (ไวยากรณ์)** กฎการเขียนโค้ด เช่น ต้องจบคำสั่งด้วย `;` และเปิด/ปิดวงเล็บให้ครบคู่
- **Syntax Error / Parse error** ข้อผิดพลาดที่ PHP อ่านโค้ดไม่ได้ จึงไม่รันไฟล์นั้นเลย
- **unexpected token** PHP เจอสัญลักษณ์ที่ไม่ควรอยู่ตรงนั้น ซึ่งมักเกิดจาก `;` ที่ขาดในบรรทัดก่อนหน้า
- **unexpected end of file** อ่านถึงท้ายไฟล์แล้วแต่ยังมีบางอย่างเปิดค้างอยู่ เช่น `{` หรือเครื่องหมายคำพูด
- **Unmatched '}'** มีวงเล็บปีกกาปิดเกินมา 1 ตัว
- **Deprecated (เลิกใช้)** ยังใช้ได้ในเวอร์ชันนี้ แต่จะถูกลบในอนาคต ควรเปลี่ยนวิธีเขียน
- **Warning (คำเตือน)** ไม่ใช่ Syntax error แต่เป็นสิ่งที่อาจทำให้โค้ดพังตอนรัน
- **Runtime error** ข้อผิดพลาดที่เกิดตอนรันโค้ด เช่น เรียกฟังก์ชันที่ไม่มีอยู่ เครื่องมือนี้ตรวจไม่ได้
- **short_open_tag** การตั้งค่าที่ทำให้ PHP รู้จักแท็ก `<?` แบบสั้น ซึ่งอาจชนกับ `<?xml`
- **Arrow function (`fn`)** ฟังก์ชันแบบย่อ ใช้ได้ตั้งแต่ PHP 7.4
- **`match`** นิพจน์คล้าย `switch` ใช้ได้ตั้งแต่ PHP 8.0
- **Implicit nullable** การเขียน `int $id = null` โดยไม่มี `?` ซึ่งเลิกใช้ใน PHP 8.4
- **`php -l`** คำสั่งใน Terminal ที่ให้ PHP ตรวจ Syntax ของไฟล์โดยไม่รันโค้ด

## คำถามที่พบบ่อย

### โค้ดที่วางถูกอัปโหลดไปที่เซิร์ฟเวอร์หรือไม่?
ไม่ การตรวจทั้งหมดทำงานในเบราว์เซอร์ของคุณ โค้ดไม่ถูกส่งออกไปที่ใด

### ผลตรวจเหมือนกับ `php -l` ทุกกรณีหรือไม่?
เครื่องมือนี้ใช้ตัววิเคราะห์ของตัวเองในเบราว์เซอร์ จึงจับข้อผิดพลาดที่พบบ่อยได้ดี เช่น `;` หรือ `}` ที่ขาด เครื่องหมายคำพูดที่ไม่ปิด และโค้ดที่ไม่รองรับในเวอร์ชันที่เลือก แต่ไม่ใช่เครื่องยนต์ PHP จริง หากต้องการความแน่นอน 100% ให้รัน `php -l ชื่อไฟล์.php` บนเซิร์ฟเวอร์อีกครั้ง

### ทำไมบรรทัดที่ระบุไม่ใช่จุดที่ผิดจริง?
PHP รายงานจุดที่อ่านต่อไม่ได้ ซึ่งมักอยู่หลังจุดที่ผิดจริง เช่น `;` ที่ขาดจะถูกรายงานที่บรรทัดถัดไป ส่วน `}` ที่หายไปจะถูกรายงานที่ท้ายไฟล์ ให้ดูการย่อหน้าของบล็อกก่อนหน้า

### ทำไมโค้ดผ่านใน PHP 8.x แต่ไม่ผ่านใน PHP 5.6 หรือ 7.x?
ไวยากรณ์ใหม่ เช่น `fn` `match` `?->` และ `enum` ใช้ไม่ได้ในเวอร์ชันเก่า ตารางความเข้ากันได้จะแสดงผลของทุกเวอร์ชันพร้อมกัน

### ตรวจโค้ด Laravel หรือ WordPress ได้ไหม?
ได้ทีละไฟล์ เพราะเป็นโค้ด PHP ปกติ แต่เครื่องมือนี้ตรวจเฉพาะ Syntax ไม่ตรวจว่าคลาสหรือฟังก์ชันที่เรียกใช้มีอยู่จริงหรือไม่

### ตรวจ Syntax PHP ผ่าน Terminal ทำอย่างไร?
รัน `php -l index.php` ถ้าไม่มีปัญหาจะแสดง `No syntax errors detected` หากต้องตรวจทั้งโฟลเดอร์ ใช้ `find . -name "*.php" -exec php -l {} \;`