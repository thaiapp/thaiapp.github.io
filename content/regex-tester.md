---
title: Regex Tester Online ออนไลน์ ฟรี
h1: Regex Tester Online
description: Regex Tester Online ทดสอบ Regex ฟรี เห็นผลทันที ไฮไลต์ที่ตรงกัน อธิบายรูปแบบ มีตัวอย่างภาษาไทย แชร์ลิงก์ได้ ไม่อัปโหลดข้อมูล ใช้ได้ทั้งมือถือและคอมพิวเตอร์
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-26T09:00:00+07:00'
weight: 165
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- Regex Tester Online
- Regex Tester Online ออนไลน์
- ทดสอบ Regex
- เครื่องมือนักพัฒนา
---

<div class="rx" id="rx">
<div class="rx-r"><input id="rxp" placeholder="รูปแบบ Regex หรือวางทั้งชุด เช่น /\d+/gi" spellcheck="false" autocomplete="off" aria-label="รูปแบบ Regex"><button type="button" id="rxl">คัดลอกลิงก์</button></div>
<div class="rx-f" id="rxf"></div>
<div class="rx-r"><input id="rxs" placeholder="แทนที่ด้วย เช่น $1 หรือ $&lt;name&gt;" spellcheck="false" aria-label="ข้อความแทนที่"></div>
<textarea id="rxt" rows="6" placeholder="ข้อความทดสอบ" spellcheck="false" aria-label="ข้อความทดสอบ"></textarea>
<div class="rx-i" id="rxi"></div>
<div class="rx-tb" id="rxb"><button type="button" data-t="h" class="on">ไฮไลต์</button><button type="button" data-t="l">รายการที่ตรงกัน</button><button type="button" data-t="r">ผลการแทนที่</button><button type="button" data-t="s">ผลการแยกข้อความ</button></div>
<div class="rx-o" id="rxo"></div>
<h3>อธิบายรูปแบบทีละส่วน</h3>
<div class="rx-e" id="rxe"></div>
<h3>ทดสอบหลายข้อความ (Multi-test)</h3>
<p class="rx-n">หนึ่งบรรทัดต่อหนึ่งข้อความ ขึ้นต้นด้วย <code>!</code> หมายถึงต้องไม่ตรงกัน</p>
<textarea id="rxu" rows="3" placeholder="a@b.com&#10;!ไม่ใช่อีเมล" spellcheck="false" aria-label="ข้อความทดสอบหลายบรรทัด"></textarea>
<div id="rxv" class="rx-o"></div>
<h3>โค้ดที่คัดลอกได้</h3>
<div class="rx-tb" id="rxc"><button type="button" data-c="js" class="on">JavaScript</button><button type="button" data-c="php">PHP</button><button type="button" data-c="py">Python</button></div>
<pre class="rx-k" id="rxk"></pre>
<button type="button" id="rxy">คัดลอกโค้ด</button>
<h3>ตัวอย่างรูปแบบพร้อมใช้</h3>
<div class="rx-f" id="rxg"></div>
<h3>Cheatsheet คลิกเพื่อแทรก</h3>
<div class="rx-f" id="rxh"></div>
</div>
<style>
.rx{--b:rgba(128,128,128,.4);--m:rgba(255,200,0,.45);--m2:rgba(0,170,255,.35);font-size:15px;line-height:1.6}
.rx *{box-sizing:border-box}
.rx input,.rx textarea{width:100%;padding:8px 10px;border:1px solid var(--b);border-radius:6px;background:transparent;color:inherit;font:14px/1.5 ui-monospace,Menlo,Consolas,monospace}
.rx button{padding:5px 10px;border:1px solid var(--b);border-radius:6px;background:transparent;color:inherit;cursor:pointer;font:inherit;font-size:13px}
.rx button.on{background:rgba(0,130,255,.2);border-color:rgba(0,130,255,.7)}
.rx-r{display:flex;gap:6px;margin:6px 0}
.rx-f,.rx-tb{display:flex;flex-wrap:wrap;gap:6px;margin:6px 0}
.rx-o{border:1px solid var(--b);border-radius:6px;padding:8px 10px;min-height:44px;white-space:pre-wrap;word-break:break-word;overflow-wrap:anywhere;max-height:340px;overflow:auto;font-family:ui-monospace,Menlo,Consolas,monospace;font-size:14px}
.rx-o mark{background:var(--m);color:inherit;border-radius:3px}
.rx-o mark.b{background:var(--m2)}
.rx-o mark.fl{outline:2px solid #e33}
.rx-i{margin:6px 0;font-size:14px}
.rx-i .er{color:#d33}
.rx-i .wn{color:#b70}
.rx-k{white-space:pre-wrap;word-break:break-word;border:1px solid var(--b);border-radius:6px;padding:8px 10px;font-size:13px}
.rx-e div{padding:3px 0;border-bottom:1px dashed var(--b)}
.rx-e code,.rx-o code{font-weight:700}
.rx-o .li{padding:3px 0;border-bottom:1px dashed var(--b);cursor:pointer}
.rx-n{font-size:13px;opacity:.8}
.rx-f button[title]{font-family:ui-monospace,Menlo,Consolas,monospace}
@media(max-width:560px){.rx-r{flex-wrap:wrap}.rx-r button{width:100%}}
</style>
<script>
(function(){
var $=function(i){return document.getElementById(i)};
var S={p:'',f:'g',t:'',r:'',u:'',tab:'h',c:'js'};
var FL=[['g','หาทั้งหมด'],['i','ไม่สนตัวพิมพ์ใหญ่เล็ก'],['m','^ $ ทุกบรรทัด'],['s','. รวมบรรทัดใหม่'],['u','Unicode'],['y','เริ่มตามตำแหน่ง']];
var CS=[['\\d','ตัวเลข 0-9'],['\\w','ตัวอักษร ตัวเลข _'],['\\s','ช่องว่าง'],['\\b','ขอบคำ'],['.','อักขระใดก็ได้'],['^','ต้นข้อความ'],['$','ท้ายข้อความ'],['[abc]','a b หรือ c'],['[^abc]','ยกเว้น a b c'],['a|b','a หรือ b'],['(…)','จับเป็นกลุ่ม'],['(?<n>…)','กลุ่มมีชื่อ'],['(?:…)','กลุ่มไม่จับ'],['(?=…)','lookahead'],['(?<=…)','lookbehind'],['*','0 ครั้งขึ้นไป'],['+','1 ครั้งขึ้นไป'],['?','0 หรือ 1 ครั้ง'],['{n,m}','n ถึง m ครั้ง'],['*?','ทำซ้ำแบบ lazy'],['\\p{Script=Thai}','อักษรไทย (ใช้ u)']];
var LB=[['อีเมล','[\\w.+-]+@[\\w-]+(?:\\.[\\w-]+)+','gi','ติดต่อ a.b@mail.com หรือ x@site.co.th'],['URL','https?:\\/\\/[^\\s/$.?#][^\\s]*','gi','ดูที่ https://example.com/a?b=1 และ http://x.th'],['เบอร์โทรไทย','\\b0[6-9]\\d[- ]?\\d{3}[- ]?\\d{4}\\b','g','โทร 081-234-5678 หรือ 0891234567'],['บัตรประชาชน 13 หลัก','\\b\\d-?\\d{4}-?\\d{5}-?\\d{2}-?\\d\\b','g','เลข 1-2345-67890-12-3'],['รหัสไปรษณีย์','\\b[1-9]\\d{4}\\b','g','กรุงเทพฯ 10110 เชียงใหม่ 50200'],['วันที่ (วัน/เดือน/ปี → ปี-เดือน-วัน)','(\\d{1,2})\\/(\\d{1,2})\\/(\\d{4})','g','วันนี้ 26/11/2569','$3-$2-$1'],['อักษรไทย','\\p{Script=Thai}+','gu','Regex คือ รูปแบบ ข้อความ'],['คำซ้ำ','\\b(\\w+)\\s+\\1\\b','gi','this is is a test'],['สี HEX','#(?:[0-9a-f]{3}){1,2}\\b','gi','สี #fff และ #1a2B3c'],['IPv4','\\b(?:\\d{1,3}\\.){3}\\d{1,3}\\b','g','เซิร์ฟเวอร์ 192.168.1.10'],['จำนวนเงินบาท','฿?\\s?\\d{1,3}(?:,\\d{3})*(?:\\.\\d{2})?','g','ราคา ฿1,250.50 และ 99'],['รหัสผ่านแข็งแรง','^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$','gm','Abcdef12\nabc12'],['ช้าเกินไป (ReDoS)','(a+)+$','','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab']];
function esc(s){return String(s).replace(/[&<>"]/g,function(c){return{'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;'}[c]})}
function core(p,f,t,r,u){
var o={m:[],c:0,rep:'',sp:[],tr:[]};
try{
var g=f.indexOf('g')<0?f+'g':f,rg=new RegExp(p,g),m;
while((m=rg.exec(t))!==null){o.c++;if(o.m.length<200)o.m.push({t:m[0],i:m.index,g:Array.prototype.slice.call(m,1),n:m.groups||null});if(m[0]==='')rg.lastIndex++;if(o.c>100000)break}
o.rep=t.replace(new RegExp(p,f),r);
o.sp=t.split(new RegExp(p,f.replace(/[gy]/g,''))).slice(0,500);
var nf=f.replace(/[gy]/g,'');
o.tr=u?u.split('\n').filter(Boolean).map(function(l){var n=l.charAt(0)==='!',s=n?l.slice(1):l;return{s:s,ok:new RegExp(p,nf).test(s)!==n}}):[];
}catch(e){o.e=String(e.message||e)}
return o}
var W=null,wt=0,WS='self.onmessage=function(e){postMessage(('+core.toString()+').apply(null,e.data))}';
function run(cb){
var a=[S.p,S.f,S.t,S.r,S.u];
if(!S.p){cb(core('(?:)','','','',''));return}
var done=false;
try{
if(W)W.terminate();
W=new Worker(URL.createObjectURL(new Blob([WS],{type:'text/javascript'})));
clearTimeout(wt);
wt=setTimeout(function(){if(!done){done=true;W.terminate();cb({slow:1})}},2000);
W.onmessage=function(e){if(!done){done=true;clearTimeout(wt);cb(e.data)}};
W.onerror=function(){if(!done){done=true;clearTimeout(wt);cb(core.apply(null,a))}};
W.postMessage(a);
}catch(x){cb(core.apply(null,a))}}
function conv(v){
var n=[],f=null,p=v.trim(),x;
if((x=/^r(['"])([\s\S]*)\1$/.exec(p)))p=x[2];
else if((x=/^(['"]?)([\/~#@!%])([\s\S]*)\2([a-zA-Z]*)\1$/.exec(p))){p=x[3];f=x[4]}
if(/\(\?P</.test(p)){p=p.replace(/\(\?P</g,'(?<').replace(/\(\?P=(\w+)\)/g,'\\k<$1>');n.push('แปลง (?P<name> เป็น (?<name> แล้ว')}
if(/\\[AzZ]/.test(p)){p=p.replace(/\\A/g,'^').replace(/\\[zZ]/g,'$');n.push('แปลง \\A \\z เป็น ^ $ แล้ว')}
if(/\[:\w+:\]/.test(p)){var P={alpha:'a-zA-Z',digit:'0-9',alnum:'a-zA-Z0-9',space:'\\s',upper:'A-Z',lower:'a-z',punct:'!-\\/:-@\\[-`{-~'};p=p.replace(/\[:(\w+):\]/g,function(a,k){return P[k]||a});n.push('แปลง POSIX class เป็นช่วงอักขระแล้ว')}
if((x=/^\(\?([imsx]+)\)/.exec(p))){p=p.slice(x[0].length);f=(f||'')+x[1].replace(/x/g,'');n.push('ย้าย inline flag ไปเป็นแฟล็ก')}
if(/\(\?>|[+*?}]\+/.test(p))n.push('Possessive/atomic group ใช้ไม่ได้ใน JavaScript ลองใช้ lookahead แทน');
if(/\\[pP]\{/.test(p)&&!/u/.test(f||S.f))n.push('\\p{…} ต้องเปิดแฟล็ก u');
return{p:p,f:f,n:n}}
function ex(p){
var T=[[/^\\u[0-9a-fA-F]{4}|^\\x[0-9a-fA-F]{2}/,'อักขระตามรหัส'],[/^\\[pP]\{[^}]+\}/,'คุณสมบัติ Unicode (ต้องเปิดแฟล็ก u)'],[/^\\k<\w+>/,'อ้างอิงกลุ่มมีชื่อ'],[/^\\[1-9]/,'อ้างอิงกลุ่มที่จับไว้ก่อนหน้า'],[/^\\./,0],[/^\[\^?(?:\\.|[^\]\\])*\]/,1],[/^\(\?<=/,'lookbehind: ต้องมีข้อความนี้อยู่ก่อนหน้า'],[/^\(\?<!/,'negative lookbehind: ต้องไม่มีข้อความนี้ก่อนหน้า'],[/^\(\?=/,'lookahead: ต้องมีข้อความนี้ตามมา'],[/^\(\?!/,'negative lookahead: ต้องไม่มีข้อความนี้ตามมา'],[/^\(\?:/,'กลุ่มที่ไม่จับค่า'],[/^\(\?<\w+>/,'กลุ่มมีชื่อ'],[/^\(/,'เริ่มกลุ่มที่จับค่า'],[/^\)/,'ปิดกลุ่ม'],[/^(?:\{\d+(?:,\d*)?\}|[*+?])\??/,2],[/^\^/,'ต้นข้อความ (หรือต้นบรรทัดเมื่อเปิด m)'],[/^\$/,'ท้ายข้อความ (หรือท้ายบรรทัดเมื่อเปิด m)'],[/^\./,'อักขระใดก็ได้ (ยกเว้นขึ้นบรรทัดใหม่)'],[/^\|/,'หรือ (ทางเลือก)']];
var E={d:'ตัวเลข 0-9',D:'ไม่ใช่ตัวเลข',w:'ตัวอักษร a-z ตัวเลข และ _ (ไม่รวมอักษรไทย)',W:'ไม่ใช่ \\w',s:'ช่องว่าง แท็บ ขึ้นบรรทัดใหม่',S:'ไม่ใช่ช่องว่าง',b:'ขอบคำ',B:'ไม่ใช่ขอบคำ',n:'ขึ้นบรรทัดใหม่',t:'แท็บ',r:'carriage return'};
var h='',i=0,k,j,s,d;
while(i<p.length){s=p.slice(i);d=null;
for(j=0;j<T.length;j++){k=T[j][0].exec(s);if(k){d=T[j][1];break}}
if(!k){k=[s.charAt(0)];d='อักขระ "'+s.charAt(0)+'" ตรงตัว'}
else if(d===0)d=E[k[0].charAt(1)]||'อักขระ "'+k[0].charAt(1)+'" ตรงตัว';
else if(d===1)d=k[0].charAt(1)==='^'?'ชุดอักขระ: ตัวใดก็ได้ที่ไม่อยู่ในนี้':'ชุดอักขระ: ตัวใดตัวหนึ่งในนี้';
else if(d===2){var q=k[0],l=/\?$/.test(q)&&q.length>1;q=q.replace(/\?$/,'');d=(q==='*'?'0 ครั้งขึ้นไป':q==='+'?'1 ครั้งขึ้นไป':q==='?'?'0 หรือ 1 ครั้ง':'จำนวนครั้ง '+q)+(l?' (lazy: เอาน้อยที่สุด)':'')}
h+='<div><code>'+esc(k[0])+'</code> → '+esc(d)+'</div>';i+=k[0].length}
return h||'พิมพ์รูปแบบเพื่อดูคำอธิบาย'}
function code(){
var p=S.p,f=S.f,fl=f.replace(/[gy]/g,'');
if(S.c==='js')return 'const re = new RegExp('+JSON.stringify(p)+', "'+f+'");\nconst all = [...text.matchAll(re)];\nconst out = text.replace(re, '+JSON.stringify(S.r)+');';
var qp=p.replace(/\\\\|'|\//g,function(m){return m==="'"?"\\'":m==='/'?'\\/':'\\\\\\\\'});
if(S.c==='php')return "preg_match_all('/"+qp+"/"+fl.replace(/[^imsu]/g,'')+"', $text, $m);\n$out = preg_replace('/"+qp+"/"+fl.replace(/[^imsu]/g,'')+"', '"+S.r.replace(/\\|'/g,'\\$&')+"', $text);";
var py=p.replace(/\(\?<(\w+)>/g,'(?P<$1>'),fs=[];
if(/i/.test(f))fs.push('re.I');if(/m/.test(f))fs.push('re.M');if(/s/.test(f))fs.push('re.S');
var q2=py.indexOf("'")<0?"'":'"',fa=fs.length?', flags='+fs.join('|'):'';
return 'import re\nall = re.findall(r'+q2+py+q2+', text'+fa+')\nout = re.sub(r'+q2+py+q2+', '+JSON.stringify(S.r.replace(/\$(\d)/g,'\\$1'))+', text'+fa+')'}
function hl(t,m){
var h='',e=0,k;
for(k=0;k<m.length;k++){var a=m[k];if(a.i<e||a.t==='')continue;h+=esc(t.slice(e,a.i))+'<mark id="mk'+k+'"'+(k%2?' class="b"':'')+'>'+esc(a.t)+'</mark>';e=a.i+a.t.length}
return h+esc(t.slice(e))}
function view(o){
var i=$('rxi'),oo=$('rxo');
$('rxe').innerHTML=ex(S.p);
$('rxk').textContent=S.p?code():'';
if(o.slow){i.innerHTML='<span class="er">ช้าเกินไป จึงหยุดการทำงาน (อาจเป็น catastrophic backtracking เช่น (a+)+ ลองลดการทำซ้ำซ้อน)</span>';oo.textContent='';$('rxv').textContent='';return}
if(o.e){i.innerHTML='<span class="er">รูปแบบไม่ถูกต้อง: '+esc(o.e)+'</span>';oo.textContent='';$('rxv').textContent='';return}
var cv=conv(S.p),nt=cv.n.length?' <span class="wn">'+esc(cv.n.join(' · '))+'</span>':'';
i.innerHTML=(S.p?'พบ <b>'+o.c+'</b> รายการ'+(o.c>200?' (แสดง 200 รายการแรก)':''):'พิมพ์รูปแบบเพื่อเริ่มทดสอบ')+nt;
if(S.tab==='h')oo.innerHTML=S.p?hl(S.t,o.m):esc(S.t);
else if(S.tab==='l')oo.innerHTML=o.m.length?o.m.map(function(a,k){var g=a.g.map(function(x,n){return ' กลุ่ม '+(n+1)+': '+esc(x==null?'(ไม่มี)':x)}).join(' |');var nn=a.n?' | ชื่อ: '+esc(JSON.stringify(a.n)):'';return '<div class="li" data-k="'+k+'">'+(k+1)+'. <code>'+esc(a.t===''?'(ว่าง)':a.t)+'</code> ตำแหน่ง '+a.i+'–'+(a.i+a.t.length)+g+nn+'</div>'}).join(''):'ไม่พบที่ตรงกัน';
else if(S.tab==='r')oo.textContent=o.rep;
else oo.innerHTML=o.sp.map(function(x,k){return '<div class="li">'+(k+1)+'. '+esc(x===undefined?'(undefined)':x)+'</div>'}).join('');
$('rxv').innerHTML=o.tr.length?o.tr.map(function(x){return '<div class="li">'+(x.ok?'✅':'❌')+' '+esc(x.s)+'</div>'}).join(''):''}
function go(){S.p=$('rxp').value;S.t=$('rxt').value.slice(0,524288);S.r=$('rxs').value;S.u=$('rxu').value;
var c=conv(S.p),ff=S.f;
if(c.f!==null&&document.activeElement===$('rxp')&&c.p!==S.p){}
run(function(o){view(o)})}
function lk(){var h='';try{h='#'+btoa(unescape(encodeURIComponent(JSON.stringify({p:S.p,f:S.f,t:S.t,r:S.r,u:S.u}))))}catch(e){}return location.origin+location.pathname+h}
var dt;function sched(){clearTimeout(dt);dt=setTimeout(go,150)}
function flags(){$('rxf').innerHTML=FL.map(function(x){return '<button type="button" data-f="'+x[0]+'" title="'+x[1]+'" class="'+(S.f.indexOf(x[0])>=0?'on':'')+'">'+x[0]+' '+x[1]+'</button>'}).join('')}
function setP(v,f){var c=conv(v);$('rxp').value=c.p;if(f!=null||c.f!==null){S.f=(f!=null?f:c.f)||'';flags()}sched()}
$('rxf').addEventListener('click',function(e){var f=e.target.getAttribute('data-f');if(!f)return;S.f=S.f.indexOf(f)>=0?S.f.replace(f,''):S.f+f;flags();go()});
$('rxp').addEventListener('input',function(){var v=this.value;if(/^(r['"]|['"]?[\/~#@!%][\s\S]+[\/~#@!%][a-zA-Z]*['"]?$)/.test(v.trim())&&/[\/~#@!%][a-zA-Z]*['"]?$/.test(v.trim())&&v.trim().length>2){var c=conv(v);if(c.p!==v){this.value=c.p;if(c.f!==null){S.f=c.f;flags()}}}sched()});
['rxt','rxs','rxu'].forEach(function(i){$(i).addEventListener('input',sched)});
$('rxb').addEventListener('click',function(e){var t=e.target.getAttribute('data-t');if(!t)return;S.tab=t;Array.prototype.forEach.call(this.children,function(b){b.className=b.getAttribute('data-t')===t?'on':''});go()});
$('rxc').addEventListener('click',function(e){var t=e.target.getAttribute('data-c');if(!t)return;S.c=t;Array.prototype.forEach.call(this.children,function(b){b.className=b.getAttribute('data-c')===t?'on':''});$('rxk').textContent=S.p?code():''});
$('rxo').addEventListener('click',function(e){var d=e.target.closest?e.target.closest('.li'):null;if(!d||d.getAttribute('data-k')==null)return;S.tab='h';Array.prototype.forEach.call($('rxb').children,function(b){b.className=b.getAttribute('data-t')==='h'?'on':''});go();setTimeout(function(){var m=$('mk'+d.getAttribute('data-k'));if(m){m.className+=' fl';m.scrollIntoView({block:'center'})}},250)});
function cp(s,b){var o=b.textContent;function ok(){b.textContent='คัดลอกแล้ว';setTimeout(function(){b.textContent=o},1200)}
try{navigator.clipboard.writeText(s).then(ok,function(){window.prompt('คัดลอก:',s)})}catch(e){window.prompt('คัดลอก:',s)}}
$('rxl').addEventListener('click',function(){go();cp(lk(),this)});
$('rxy').addEventListener('click',function(){cp($('rxk').textContent,this)});
$('rxg').innerHTML=LB.map(function(x,k){return '<button type="button" data-l="'+k+'">'+esc(x[0])+'</button>'}).join('');
$('rxg').addEventListener('click',function(e){var k=e.target.getAttribute('data-l');if(k==null)return;var x=LB[k];$('rxp').value=x[1];S.f=x[2];$('rxt').value=x[3];$('rxs').value=x[4]||'';flags();go()});
$('rxh').innerHTML=CS.map(function(x,k){return '<button type="button" data-s="'+k+'" title="'+esc(x[1])+'">'+esc(x[0])+' <small>'+esc(x[1])+'</small></button>'}).join('');
$('rxh').addEventListener('click',function(e){var b=e.target.closest?e.target.closest('button'):null;if(!b)return;var k=b.getAttribute('data-s');if(k==null)return;var el=$('rxp'),v=el.value,a=el.selectionStart==null?v.length:el.selectionStart,z=el.selectionEnd==null?v.length:el.selectionEnd,tk=CS[k][0];el.value=v.slice(0,a)+tk+v.slice(z);el.focus();el.selectionStart=el.selectionEnd=a+tk.length;go()});
document.addEventListener('keydown',function(e){if((e.ctrlKey||e.metaKey)&&e.key==='Enter'){e.preventDefault();$('rxl').click()}});
try{var h=location.hash.slice(1);if(h){var d=JSON.parse(decodeURIComponent(escape(atob(h))));if(d&&typeof d.p==='string'){$('rxp').value=d.p;S.f=typeof d.f==='string'?d.f:'g';$('rxt').value=d.t||'';$('rxs').value=d.r||'';$('rxu').value=d.u||''}}history.replaceState(null,'',location.pathname)}catch(e){}
if(!$('rxp').value){$('rxp').value='(\\d{4})-(\\d{2})-(\\d{2})';$('rxt').value='วันที่ 2026-11-26 และ 2027-01-05';$('rxs').value='$3/$2/$1'}
flags();go();
})();
</script>

## วิธีใช้ Regex Tester Online

1. **พิมพ์หรือวางรูปแบบ (Pattern)** ลงในช่องบนสุด วางทั้งชุดได้ เช่น `/^\d+$/gm`, `'~\d+~u'` ของ PHP หรือ `r'\d+'` ของ Python เครื่องมือจะแยกรูปแบบกับแฟล็กให้อัตโนมัติ
2. **เลือกแฟล็ก (Flag)** ที่ต้องการ คลิกเพื่อเปิดหรือปิด เช่น `i` ไม่สนตัวพิมพ์ใหญ่เล็ก
3. **ใส่ข้อความทดสอบ** ผลจะแสดงทันทีขณะพิมพ์ ส่วนที่ตรงกันจะถูกไฮไลต์
4. **ดูผลลัพธ์** จากแท็บไฮไลต์ รายการที่ตรงกัน (พร้อมกลุ่มและตำแหน่ง) ผลการแทนที่ และผลการแยกข้อความ คลิกรายการเพื่อหาตำแหน่งในข้อความ
5. **อ่านคำอธิบายรูปแบบ** ด้านล่างเพื่อดูว่าแต่ละส่วนของ Regex ทำอะไร
6. **ทดสอบหลายข้อความ** ใส่ทีละบรรทัด ใช้ `!` นำหน้าสำหรับข้อความที่ต้องไม่ตรงกัน
7. **คัดลอกโค้ด** เป็น JavaScript, PHP หรือ Python หรือกด **คัดลอกลิงก์** เพื่อแชร์รูปแบบและข้อความทดสอบ (ลิงก์เก็บข้อมูลไว้ในที่อยู่ของหน้า ไม่ส่งไปเซิร์ฟเวอร์)
8. **ลองตัวอย่างพร้อมใช้** เช่น อีเมล เบอร์โทรไทย เลขบัตรประชาชน รหัสไปรษณีย์ หรือวันที่ แล้วปรับให้ตรงกับงานของคุณ

> หมายเหตุ: การทดสอบทำงานด้วยเอนจิน JavaScript ของเบราว์เซอร์คุณ โค้ด PHP และ Python ที่สร้างให้เป็นตัวช่วยแปลงรูปแบบ อาจมีรายละเอียดต่างกันเล็กน้อย เช่น Possessive quantifier และ atomic group ใช้ไม่ได้ใน JavaScript ข้อความทดสอบยาวได้ถึง 512 KB และแสดง 200 รายการแรก

## คำอธิบายศัพท์ Regex

- **Regex (Regular Expression)** รูปแบบที่ใช้อธิบายข้อความที่ต้องการค้นหา เช่น `\d{4}` คือตัวเลข 4 หลัก
- **Pattern** ตัวรูปแบบของ Regex เอง
- **Flag (แฟล็ก)** ตัวอักษรที่เปลี่ยนวิธีอ่านรูปแบบ: `g` หาทั้งหมด `i` ไม่สนตัวพิมพ์ `m` ^ $ ทุกบรรทัด `s` จุดรวมบรรทัดใหม่ `u` Unicode `y` ตรงตามตำแหน่ง
- **Group (กลุ่ม)** ส่วนในวงเล็บ `( )` ที่จับค่าไว้ใช้ภายหลัง เช่น `$1`
- **Named group** กลุ่มที่ตั้งชื่อ `(?<year>\d{4})` อ้างอิงด้วย `$<year>`
- **Character class** ชุดอักขระในวงเล็บเหลี่ยม `[a-z]` และ `[^a-z]` คือยกเว้น
- **Quantifier** ตัวบอกจำนวนครั้ง `*` `+` `?` `{n,m}`
- **Greedy / Lazy** Greedy เอามากที่สุด ส่วน Lazy (`*?`) เอาน้อยที่สุด
- **Anchor** ตำแหน่ง ไม่ใช่ตัวอักษร เช่น `^` ต้นข้อความ `$` ท้ายข้อความ `\b` ขอบคำ
- **Lookahead / Lookbehind** ตรวจข้อความที่ตามมาหรืออยู่ก่อนหน้า โดยไม่รวมในผลลัพธ์ `(?=…)` `(?<=…)`
- **Backreference** อ้างอิงกลุ่มที่จับไว้แล้ว เช่น `\1` ใช้หาคำซ้ำ
- **Escape (`\`)** ทำให้อักขระพิเศษเป็นตัวอักษรธรรมดา เช่น `\.`
- **Catastrophic backtracking (ReDoS)** รูปแบบที่ทำซ้ำซ้อน เช่น `(a+)+` ทำให้เอนจินลองหลายวิธีจนค้าง เครื่องมือนี้หยุดให้เมื่อเกิน 2 วินาที
- **Unicode property** `\p{Script=Thai}` ใช้จับอักษรไทย ต้องเปิดแฟล็ก `u`

## คำถามที่พบบ่อย

**ทำไม `\w+` จับคำภาษาไทยไม่ได้?** ใน JavaScript `\w` ครอบคลุมเฉพาะ a-z, A-Z, 0-9 และ _ ให้ใช้ `\p{Script=Thai}+` พร้อมแฟล็ก `u`

**ข้อมูลของฉันถูกอัปโหลดไหม?** ไม่ ทุกอย่างประมวลผลในเบราว์เซอร์ของคุณ

**ใช้ Regex จาก AI หรือจากภาษาอื่นได้ไหม?** วางทั้งชุดได้ เครื่องมือจะแปลง `(?P<name>)`, `\A`, `\z` และ POSIX class ให้ และแจ้งเตือนส่วนที่ใช้ใน JavaScript ไม่ได้