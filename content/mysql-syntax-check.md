---
title: ตรวจสอบ Syntax MySQL ออนไลน์ ฟรี
h1: ตรวจสอบ Syntax MySQL
description: ตรวจสอบ Syntax MySQL ออนไลน์ฟรี วาง query หรือไฟล์ dump เพื่อดูทุกบรรทัดที่ผิดพร้อมวิธีแก้ error 1064 และจัดรูปแบบ SQL ได้ในเบราว์เซอร์ ไม่ต้องอัปโหลด
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-24T09:00:00+07:00'
weight: 157
tool: true
topic: dev
appCategory: DeveloperApplication
keywords:
- ตรวจสอบ Syntax MySQL
- ตรวจสอบ Syntax MySQL ออนไลน์
- เครื่องมือนักพัฒนา
- MySQL syntax checker
- แก้ error 1064
- จัดรูปแบบ SQL
---

<style>
.msc{--bd:rgba(127,127,127,.4);--ac:#0e7c86;--er:#c0392b;--ok:#1b7f4a;--bg:rgba(127,127,127,.08);margin:1rem 0;color:inherit;font:inherit}
.msc *{box-sizing:border-box}
.msc-bar,.msc-act{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:.5rem 0}
.msc-sel,.msc-b{font:inherit;font-size:.92rem;color:inherit;background:transparent;border:1px solid var(--bd);border-radius:6px;padding:.4rem .75rem;cursor:pointer;line-height:1.3}
.msc-b:hover,.msc-sel:hover{background:var(--bg)}
.msc-p{background:var(--ac);border-color:var(--ac);color:#fff;font-weight:600}
.msc-p:hover{background:var(--ac);filter:brightness(1.1)}
.msc-ex{font-size:.82rem;padding:.2rem .6rem}
.msc-ta{display:block;width:100%;min-height:260px;resize:vertical;font:.9rem/1.5 ui-monospace,SFMono-Regular,Menlo,Consolas,"Noto Sans Thai",monospace;white-space:pre;overflow:auto;color:inherit;background:transparent;border:1px solid var(--bd);border-radius:6px;padding:.75rem;tab-size:2}
.msc button:focus-visible,.msc select:focus-visible,.msc textarea:focus-visible,.msc label:focus-within{outline:2px solid var(--ac);outline-offset:2px}
.msc-sum{margin:.75rem 0 .25rem;padding:.6rem .8rem;border-left:4px solid var(--bd);background:var(--bg);font-weight:600}
.msc-sum.ok{border-color:var(--ok);color:var(--ok)}
.msc-sum.bad{border-color:var(--er);color:var(--er)}
.msc-res{list-style:none;margin:0;padding:0;max-height:420px;overflow:auto}
.msc-res li{padding:.55rem .1rem;border-bottom:1px solid var(--bd)}
.msc-ln{font:inherit;font-size:.82rem;font-weight:600;border:1px solid var(--bd);border-radius:4px;background:transparent;color:inherit;padding:.05rem .45rem;margin-right:.5rem;cursor:pointer}
.msc-nr{display:block;margin-top:.25rem;font:.82rem ui-monospace,Menlo,Consolas,monospace;opacity:.75;overflow-wrap:anywhere}
.msc-fx{margin-left:.5rem;font:inherit;font-size:.82rem;border:1px solid var(--ac);color:var(--ac);background:transparent;border-radius:4px;padding:.05rem .5rem;cursor:pointer}
.msc-note{font-size:.85rem;opacity:.8;margin:.5rem 0 0}
@media (prefers-color-scheme:dark){.msc{--ac:#3cc2cc;--er:#ff8a7a;--ok:#5fd493}.msc-p{color:#06292c}}
</style>

<div class="msc" id="msc">
<div class="msc-bar">
<label for="msc-ver">เวอร์ชัน</label>
<select id="msc-ver" class="msc-sel"><option value="84">MySQL 8.4</option><option value="80">MySQL 8.0</option><option value="57">MySQL 5.7</option><option value="maria">MariaDB</option></select>
<span>ลองตัวอย่าง:</span><span id="msc-exs"></span>
</div>
<textarea id="msc-src" class="msc-ta" wrap="off" spellcheck="false" aria-label="SQL ที่ต้องการตรวจสอบ" placeholder="วาง MySQL query หรือไฟล์ dump ที่นี่ หรือลากไฟล์ .sql มาวาง"></textarea>
<div class="msc-act">
<button type="button" class="msc-b msc-p" id="msc-run">ตรวจสอบ SQL</button>
<button type="button" class="msc-b" id="msc-fix">แก้ไขอัตโนมัติ</button>
<button type="button" class="msc-b" id="msc-fmt">จัดรูปแบบ</button>
<button type="button" class="msc-b" id="msc-min">ย่อ SQL</button>
<button type="button" class="msc-b" id="msc-undo">เลิกทำ</button>
<button type="button" class="msc-b" id="msc-copy">คัดลอก SQL</button>
<button type="button" class="msc-b" id="msc-rep">คัดลอกรายงาน</button>
<button type="button" class="msc-b" id="msc-dl">ดาวน์โหลด .sql</button>
<label class="msc-b" for="msc-file">เปิดไฟล์</label><input type="file" id="msc-file" accept=".sql,.txt,text/plain" hidden>
<button type="button" class="msc-b" id="msc-clr">ล้าง</button>
</div>
<div id="msc-sum" class="msc-sum" role="status" aria-live="polite">กด "ตรวจสอบ SQL" หรือ Ctrl+Enter เพื่อเริ่มตรวจ</div>
<ol id="msc-res" class="msc-res"></ol>
<p class="msc-note">ประมวลผลในเบราว์เซอร์ทั้งหมด SQL ไม่ถูกรันและไม่ถูกส่งออกไปที่ใด ตัวตรวจใช้กฎตรวจ syntax ที่พบบ่อย ไม่ตรวจว่ามีตารางหรือคอลัมน์จริงในฐานข้อมูล</p>
</div>

<script>
(function(){
'use strict';
var $=function(i){return document.getElementById(i)};
var src=$('msc-src');
if(!src){return}
var box=$('msc-res'),sum=$('msc-sum'),vsel=$('msc-ver'),hist=[],E=[],NL=[],cur='',snap='',tmr=0;
var S=function(x){var o={},a=x.split(' '),i;for(i=0;i<a.length;i++){o[a[i]]=1}return o};
var BASE=S('ADD ALL ALTER ANALYZE AND AS ASC BEFORE BETWEEN BIGINT BINARY BLOB BOTH BY CALL CASCADE CASE CHANGE CHAR CHARACTER CHECK COLLATE COLUMN CONDITION CONSTRAINT CONTINUE CONVERT CREATE CROSS CURRENT_DATE CURRENT_TIME CURRENT_TIMESTAMP CURRENT_USER CURSOR DATABASE DATABASES DECIMAL DECLARE DEFAULT DELAYED DELETE DESC DESCRIBE DETERMINISTIC DISTINCT DIV DOUBLE DROP DUAL EACH ELSE ELSEIF ENCLOSED ESCAPED EXISTS EXIT EXPLAIN FALSE FETCH FLOAT FOR FORCE FOREIGN FROM FULLTEXT GRANT GROUP HAVING IF IGNORE IN INDEX INFILE INNER INOUT INSENSITIVE INSERT INT INTEGER INTERVAL INTO IS ITERATE JOIN KEY KEYS KILL LEADING LEAVE LEFT LIKE LIMIT LINES LOAD LOCALTIME LOCALTIMESTAMP LOCK LONG LONGBLOB LONGTEXT LOOP MATCH MEDIUMBLOB MEDIUMINT MEDIUMTEXT MOD NATURAL NOT NULL NUMERIC ON OPTIMIZE OPTION OPTIONALLY OR ORDER OUT OUTER OUTFILE PRECISION PRIMARY PROCEDURE PURGE RANGE READ READS REAL REFERENCES REGEXP RELEASE RENAME REPEAT REPLACE REQUIRE RESTRICT RETURN REVOKE RIGHT RLIKE SCHEMA SCHEMAS SELECT SENSITIVE SEPARATOR SET SHOW SMALLINT SPATIAL SPECIFIC SQL SQLEXCEPTION SQLSTATE SQLWARNING SSL STARTING TABLE TERMINATED THEN TINYBLOB TINYINT TINYTEXT TO TRAILING TRIGGER TRUE UNDO UNION UNIQUE UNLOCK UNSIGNED UPDATE USAGE USE USING VALUES VARBINARY VARCHAR VARYING WHEN WHERE WHILE WITH WRITE XOR YEAR_MONTH ZEROFILL');
var NEW=S('ARRAY CUME_DIST DENSE_RANK EMPTY EXCEPT FIRST_VALUE FUNCTION GROUPS JSON_TABLE LAG LAST_VALUE LATERAL LEAD MEMBER NTH_VALUE NTILE OF OVER PERCENT_RANK RANK RECURSIVE ROW ROWS ROW_NUMBER SYSTEM WINDOW');
var START=S('SELECT INSERT UPDATE DELETE REPLACE CREATE ALTER DROP TRUNCATE RENAME SET SHOW USE DESCRIBE DESC EXPLAIN CALL WITH GRANT REVOKE BEGIN START COMMIT ROLLBACK SAVEPOINT LOCK UNLOCK LOAD ANALYZE OPTIMIZE CHECK REPAIR FLUSH PREPARE EXECUTE DEALLOCATE DO HANDLER TABLE VALUES IMPORT KILL SIGNAL RESIGNAL DECLARE RESET PURGE CHECKSUM CACHE INSTALL UNINSTALL XA BINLOG HELP SHUTDOWN RELEASE');
var CON=S('PRIMARY UNIQUE FOREIGN CONSTRAINT INDEX KEY FULLTEXT SPATIAL CHECK LIKE');
var COMMON=S('ORDER GROUP RANK KEY KEYS INDEX DESC LIMIT RANGE ROW ROWS GROUPS SYSTEM WINDOW OVER CHECK CONDITION READ WRITE TO FORCE USE SCHEMA COLUMN OF');
var EXF=S('CURRENT_DATE CURRENT_TIME CURRENT_TIMESTAMP CURRENT_USER LOCALTIME LOCALTIMESTAMP NULL TRUE FALSE DUAL LATERAL');
var INC=S('SELECT FROM WHERE AND OR JOIN ON INTO VALUES SET BY GROUP ORDER HAVING LIMIT UNION NOT IN LIKE AS WHEN THEN CASE TABLE UPDATE DELETE INSERT LEFT RIGHT INNER OUTER CROSS');
var O2=S('<= >= <> != == := || && << >> -> ::');
var CLK=['WHERE','FROM','GROUP','ORDER','LIMIT','HAVING','VALUES','JOIN','UNION'];
var CSP=S('IN VALUES AND OR NOT ON AS USING EXISTS WHERE HAVING SELECT FROM JOIN SET BY WHEN THEN ELSE CASE UNION ALL ANY SOME INTO KEY');
function isRes(u){return !!(BASE[u]||(vsel.value!=='57'&&NEW[u]))}
function wc(c){return (c>=48&&c<=57)||(c>=65&&c<=90)||c===95||c===36||(c>=97&&c<=122)||(c>=192&&c<=8191)||c>=11264}
function dist(a,b){var m=a.length,n=b.length,d=[],i,j,c;for(i=0;i<=m;i++){d[i]=[i]}for(j=1;j<=n;j++){d[0][j]=j}
for(i=1;i<=m;i++){for(j=1;j<=n;j++){c=a.charAt(i-1)===b.charAt(j-1)?0:1;d[i][j]=Math.min(d[i-1][j]+1,d[i][j-1]+1,d[i-1][j-1]+c);
if(i>1&&j>1&&a.charAt(i-1)===b.charAt(j-2)&&a.charAt(i-2)===b.charAt(j-1)){d[i][j]=Math.min(d[i][j],d[i-2][j-2]+1)}}}return d[m][n]}
function nearest(w,list,max){var b=null,bd=max+1,i,x;for(i=0;i<list.length;i++){if(list[i]===w){return null}x=dist(w,list[i]);if(x<bd){bd=x;b=list[i]}}return b}
function lineOf(o){var a=0,b=NL.length,m;while(a<b){m=(a+b)>>1;if(NL[m]<o){a=m+1}else{b=m}}return a+1}
function err(o,m,ed){if(E.length>=500){return}var l=lineOf(o),ls=l>1?NL[l-2]+1:0;E.push({o:o,l:l,c:o-ls+1,m:m,ed:ed||null,n:cur.substr(o,36).split('\n')[0]})}
function lex(s,cb,eo){
var n=s.length,i=0,delim=';',toks=[],sw=true,c,a,b,m,k;
function push(t,x,y){toks.push({t:t,v:s.slice(x,y),s:x,e:y,ws:sw});sw=false}
function flush(end,part){if(toks.length){cb({k:'s',toks:toks,s:toks[0].s,e:end,partial:!!part,d:delim})}toks=[]}
function dg(x){var q=s.charCodeAt(x);return q>=48&&q<=57}
while(i<n){
c=s.charCodeAt(i);
if(c===32||c===9||c===10||c===13||c===12||c===11){i++;sw=true;continue}
if(!toks.length&&(c===68||c===100)){m=/^delimiter[ \t]+(\S+)[ \t]*(\r?\n|$)/i.exec(s.substr(i,120));if(m){delim=m[1];cb({k:'d',raw:'DELIMITER '+m[1]});i+=m[0].length;sw=true;continue}}
if(c===45&&s.charCodeAt(i+1)===45){b=s.charCodeAt(i+2);if(i+2>=n||b===32||b===9||b===10||b===13){a=s.indexOf('\n',i);if(a<0){a=n}push('c',i,a);i=a;continue}}
if(c===35){a=s.indexOf('\n',i);if(a<0){a=n}push('c',i,a);i=a;continue}
if(c===47&&s.charCodeAt(i+1)===42){a=s.indexOf('*/',i+2);if(a<0){eo(i,'คอมเมนต์ /* ไม่ถูกปิดด้วย */');flush(n,1);return}push('c',i,a+2);i=a+2;continue}
if(c===39||c===34||c===96){a=i+1;for(;;){if(a>=n){eo(i,'เครื่องหมายคำพูด '+String.fromCharCode(c)+' ที่เปิดไว้ไม่ถูกปิด ทำให้ข้อความที่เหลือทั้งหมดถูกอ่านเป็นสตริง');flush(n,1);return}
b=s.charCodeAt(a);if(b===92&&c!==96){a+=2;continue}if(b===c){if(s.charCodeAt(a+1)===c){a+=2;continue}break}a++}
push(c===96?'q':'s',i,a+1);i=a+1;continue}
if(s.substr(i,delim.length)===delim){flush(i);i+=delim.length;sw=true;continue}
if(c===64){a=i+1;if(s.charCodeAt(a)===64){a++}while(a<n&&(wc(s.charCodeAt(a))||s.charCodeAt(a)===46)){a++}push('v',i,a);i=a;continue}
if(dg(i)||(c===46&&dg(i+1))){a=i;while(a<n&&dg(a)){a++}if(s.charCodeAt(a)===46){a++;while(a<n&&dg(a)){a++}}
b=s.charCodeAt(a);if(b===101||b===69){k=a+1;if(s.charAt(k)==='+'||s.charAt(k)==='-'){k++}if(dg(k)){a=k;while(a<n&&dg(a)){a++}}}
if(a<n&&wc(s.charCodeAt(a))){while(a<n&&wc(s.charCodeAt(a))){a++}push('w',i,a)}else{push('n',i,a)}i=a;continue}
if(wc(c)){a=i+1;while(a<n&&wc(s.charCodeAt(a))&&(delim===';'||s.substr(a,delim.length)!==delim)){a++}push('w',i,a);i=a;continue}
if(c===160||c===8216||c===8217||c===8220||c===8221){push('x',i,i+1);i++;continue}
a=s.substr(i,3);if(a==='<=>'||a==='->>'){push('o',i,i+3);i+=3;continue}
a=s.substr(i,2);if(O2[a]){push('o',i,i+2);i+=2;continue}
push('o',i,i+1);i++}
flush(n)}
function isComp(T){var i;if(T.length&&T[0].t==='w'&&T[0].v.toUpperCase()==='CREATE'){for(i=1;i<7&&i<T.length;i++){if(T[i].t==='w'&&/^(PROCEDURE|FUNCTION|TRIGGER|EVENT)$/i.test(T[i].v)){return true}}}return false}
function bt(q){return{s:q.s,e:q.e,r:'`'+q.v+'`'}}
function check(st){
var all=st.toks,T=[],X=[],D=[],i,j,t,u,p,nx,pu,nu,f,dep=0,stk=[],hasSet=false,hasFrom=false,hasVal=false;
for(i=0;i<all.length;i++){t=all[i];if(t.t==='x'){X.push(t)}else if(t.t!=='c'){T.push(t)}}
if(X.length){err(X[0].s,'พบเครื่องหมายคำพูดแบบโค้ง ‘ ’ “ ” หรือช่องว่างพิเศษ (มักมาจากการคัดลอกจาก Word หรือเว็บ) ซึ่ง MySQL อ่านไม่ได้',X.map(function(q){return{s:q.s,e:q.e,r:q.v==='\u00A0'?' ':(q.v==='\u2018'||q.v==='\u2019')?"'":'"'}}))}
if(!T.length){return}
var U=function(k){var q=T[k];return q&&q.t==='w'?q.v.toUpperCase():''};
for(i=0;i<T.length;i++){D[i]=dep;t=T[i];if(t.t==='o'){if(t.v==='('){dep++;stk.push(t)}else if(t.v===')'){dep--;if(stk.length){stk.pop()}else{err(t.s,'วงเล็บปิด ) เกินมา ไม่มีวงเล็บเปิดคู่กัน',[{s:t.s,e:t.e,r:''}])}}}}
if(stk.length&&!st.partial){err(stk[stk.length-1].s,'วงเล็บเปิด ( ไม่ถูกปิดด้วย )')}
if(isComp(T)){return}
f=U(0);
if(T[0].t==='w'){if(!START[f]){j=nearest(f,Object.keys(START),2);err(T[0].s,j?"ไม่รู้จักคำสั่ง '"+T[0].v+"' ตั้งใจพิมพ์ "+j+" หรือไม่":"ไม่รู้จักคำสั่ง '"+T[0].v+"' คำสั่ง SQL ต้องขึ้นต้นด้วยคีย์เวิร์ด เช่น SELECT, INSERT, UPDATE",j?[{s:T[0].s,e:T[0].e,r:j}]:null)}}
else if(!(T[0].t==='o'&&T[0].v==='(')){err(T[0].s,'คำสั่ง SQL ต้องขึ้นต้นด้วยคีย์เวิร์ด เช่น SELECT, INSERT, UPDATE')}
var ct=(f==='CREATE'&&(U(1)==='TABLE'||(U(1)==='TEMPORARY'&&U(2)==='TABLE')));
var rmsg=function(q){var w=q.v.toUpperCase();return "'"+q.v+"' เป็นคำสงวน (reserved word) ใช้เป็นชื่อตารางหรือคอลัมน์โดยตรงไม่ได้ ให้ครอบด้วย backtick เป็น `"+q.v+"`"+(NEW[w]&&!BASE[w]?' (เพิ่งเป็นคำสงวนตั้งแต่ MySQL 8.0 ใน 5.7 ใช้ได้ จึงอาจรันไม่ผ่านหลังอัปเกรด)':'')};
var qmsg=function(q){return q.v+' ถูกอ่านเป็นข้อความ (string) ไม่ใช่ชื่อตาราง/คอลัมน์ ให้ใช้ backtick `'+q.v.slice(1,-1)+'` แทน'};
var ident=function(k,ex){var q=T[k],w;if(!q){return}if(q.t==='s'){err(q.s,qmsg(q),[{s:q.s,e:q.e,r:'`'+q.v.slice(1,-1)+'`'}]);return}
if(q.t==='w'){w=q.v.toUpperCase();if(isRes(w)&&!EXF[w]&&!(ex&&ex[w])&&!(T[k+1]&&T[k+1].v==='(')){err(q.s,rmsg(q),[bt(q)])}}};
var btw=false;
for(i=0;i<T.length;i++){
t=T[i];u=U(i);p=T[i-1];nx=T[i+1];pu=U(i-1);nu=U(i+1);
if(D[i]===0){if(u==='SET'){hasSet=true}if(u==='FROM'){hasFrom=true}}
if(u==='VALUES'||u==='VALUE'||u==='SELECT'||u==='SET'||u==='TABLE'){hasVal=true}
if(t.t==='o'){
if(t.v==='=='){err(t.s,'MySQL ไม่มี == ให้ใช้ = สำหรับการเปรียบเทียบ',[{s:t.s,e:t.e,r:'='}])}
else if(t.v==='::'){err(t.s,':: เป็นรูปแบบของ PostgreSQL ใน MySQL ให้ใช้ CAST(ค่า AS ชนิดข้อมูล)')}
else if(t.v===','&&!ct&&nx&&(nx.v===')'||(nx.t==='w'&&/^(FROM|WHERE|GROUP|ORDER|HAVING|LIMIT)$/.test(nu)))){err(t.s,'มีเครื่องหมายจุลภาค , เกินก่อน '+nx.v,[{s:t.s,e:t.e,r:''}])}
else if(t.v==='['){for(j=i+1;j<i+5&&j<T.length;j++){if(T[j].v===']'){err(t.s,'[ชื่อ] เป็นรูปแบบของ SQL Server ใน MySQL ใช้ backtick `ชื่อ` แทน',[{s:t.s,e:T[j].e,r:'`'+cur.slice(t.e,T[j].s).trim()+'`'}]);break}}}
else if(t.v==='*'&&i===1&&f==='DELETE'){err(t.s,'DELETE ไม่ใช้ * ให้เขียนเป็น DELETE FROM ชื่อตาราง',[{s:t.s,e:t.e,r:''}])}
continue}
if(t.t==='s'&&nx&&(nx.t==='w'||nx.t==='n'||(nx.t==='v'&&nx.v!=='@'))&&!nx.ws){err(t.s,"เครื่องหมายคำพูดภายในข้อความทำให้ข้อความจบก่อนเวลา เช่น 'O'Brien' ให้เขียนเป็น 'O''Brien' หรือ 'O\\'Brien'")}
if(t.t==='s'&&D[i]===1&&ct&&p&&p.t==='o'&&(p.v==='('||p.v===',')){err(t.s,qmsg(t),[{s:t.s,e:t.e,r:'`'+t.v.slice(1,-1)+'`'}])}
if(t.t!=='w'){continue}
if(ct&&D[i]===1&&p&&p.t==='o'&&(p.v==='('||p.v===',')&&isRes(u)&&!CON[u]){err(t.s,rmsg(t),[bt(t)]);continue}
if(u==='BETWEEN'){btw=true}else if(u==='AND'&&btw){btw=false}
if(u==='TOP'&&(pu==='SELECT'||pu==='DISTINCT')&&nx&&nx.t==='n'){err(t.s,'TOP n เป็นรูปแบบของ SQL Server ใน MySQL ให้ใช้ LIMIT '+nx.v+' ท้ายคำสั่ง',[{s:t.s,e:nx.e+(cur.charAt(nx.e)===' '?1:0),r:''},{s:st.e,e:st.e,r:' LIMIT '+nx.v}])}
else if(u==='IDENTITY'&&nx&&nx.v==='('){for(j=i+2;j<T.length&&j<i+8;j++){if(T[j].v===')'){err(t.s,'IDENTITY เป็นของ SQL Server ใน MySQL ให้ใช้ AUTO_INCREMENT',[{s:t.s,e:T[j].e,r:'AUTO_INCREMENT'}]);break}}}
else if(u==='AUTOINCREMENT'){err(t.s,'AUTOINCREMENT เป็นของ SQLite ใน MySQL เขียนเป็น AUTO_INCREMENT',[{s:t.s,e:t.e,r:'AUTO_INCREMENT'}])}
else if(u==='ILIKE'){err(t.s,'ILIKE เป็นของ PostgreSQL ใน MySQL ใช้ LIKE (ไม่สนตัวพิมพ์เล็กใหญ่ตาม collation อยู่แล้ว)',[{s:t.s,e:t.e,r:'LIKE'}])}
else if(u==='RETURNING'&&vsel.value!=='maria'){err(t.s,'MySQL ไม่รองรับ RETURNING (มีเฉพาะ MariaDB และ PostgreSQL) ใช้ LAST_INSERT_ID() หรือ SELECT แยกแทน')}
else if(u==='FETCH'&&(nu==='FIRST'||nu==='NEXT')){err(t.s,'FETCH FIRST ... ROWS ONLY เป็นมาตรฐาน SQL อื่น ใน MySQL ให้ใช้ LIMIT')}
else if(u==='OFFSET'&&nx&&nx.t==='n'&&/^ROWS?$/.test(U(i+2))){err(t.s,'OFFSET n ROWS เป็นของ SQL Server ใน MySQL ให้ใช้ LIMIT จำนวน OFFSET n')}
else if(u==='REPLACE'&&pu==='OR'&&nu==='TABLE'&&vsel.value!=='maria'){err(t.s,'CREATE OR REPLACE TABLE มีเฉพาะ MariaDB ใน MySQL ให้ DROP TABLE IF EXISTS แล้วค่อย CREATE TABLE')}
else if((u==='VARCHAR'||u==='VARBINARY')&&(f==='CREATE'||f==='ALTER')&&!(nx&&nx.v==='(')){err(t.s,u+' ต้องระบุความยาว เช่น '+u+'(255)',[{s:t.e,e:t.e,r:'(255)'}])}
if(D[i]===0&&i>0&&((u===f&&(u==='CREATE'||u==='DROP'||u==='TRUNCATE'))||(u==='INSERT'&&nu==='INTO')||(u==='DELETE'&&nu==='FROM'))&&p){err(t.s,'น่าจะลืมใส่ ; ปิดคำสั่งก่อนหน้า (พบ '+u+' เริ่มคำสั่งใหม่ต่อกัน)',[{s:p.e,e:p.e,r:';'}])}
if(u==='FROM'){ident(i+1)}
else if(u==='JOIN'){ident(i+1)}
else if(u==='INTO'&&i<4&&(f==='INSERT'||f==='REPLACE')){ident(i+1)}
else if(u==='UPDATE'&&i===0){ident(1,S('LOW_PRIORITY IGNORE'))}
else if(u==='TABLE'&&/^(CREATE|ALTER|DROP|TRUNCATE|TEMPORARY|RENAME)$/.test(pu)){j=i+1;if(U(j)==='IF'){j++;if(U(j)==='NOT'){j++}if(U(j)==='EXISTS'){j++}}ident(j)}
else if(u==='AS'&&nx&&nx.t==='w'&&COMMON[nu]&&isRes(nu)){err(nx.s,rmsg(nx),[bt(nx)])}
else if(vsel.value!=='57'&&NEW[u]&&!BASE[u]&&p&&(pu==='SELECT'||p.v===',')&&nx&&(nx.v===','||nu==='FROM')&&!ct){err(t.s,rmsg(t),[bt(t)])}
else if(!BASE[u]&&!NEW[u]&&!START[u]&&u.length>3&&i>0&&nx&&p&&(p.t==='n'||p.t==='s'||p.t==='q'||p.v===')'||p.v==='*'||(p.t==='w'&&!BASE[pu]&&!NEW[pu]))&&!(nx.v===','||nx.v===')'||nx.v===';'||nx.v==='.'||nu==='FROM')){
j=nearest(u,CLK,u.length>4?2:1);if(j&&dist(u,j)<=(u.length>4?2:1)){err(t.s,"'"+t.v+"' น่าจะสะกดผิด ตั้งใจพิมพ์ "+j+" หรือไม่",[{s:t.s,e:t.e,r:j}])}}
}
if(!st.partial){
var last=T[T.length-1],lu=U(T.length-1),ln=T.length-1;
if((INC[lu]&&!(lu==='UPDATE'&&U(T.length-2)==='FOR'))||(last.t==='o'&&/^(,|=|<|>|<=|>=|<>|!=|\+|-|\/|\.)$/.test(last.v))){err(last.s,"คำสั่งไม่สมบูรณ์ จบด้วย '"+last.v+"' ซึ่งต้องมีส่วนต่อท้าย")}
if(f==='SELECT'&&U(1)==='FROM'){err(T[1].s,'SELECT ต้องระบุคอลัมน์ก่อน FROM เช่น SELECT * FROM ชื่อตาราง')}
if(f==='UPDATE'&&!hasSet){err(T[0].s,'UPDATE ต้องมี SET เพื่อกำหนดค่าที่จะเปลี่ยน')}
if(f==='DELETE'&&!hasFrom){err(T[0].s,'DELETE ต้องมี FROM เช่น DELETE FROM ชื่อตาราง WHERE ...')}
if((f==='INSERT'||f==='REPLACE')&&T.length>2&&!hasVal){err(T[0].s,f+' ต้องมี VALUES หรือ SELECT เพื่อบอกข้อมูลที่จะเพิ่ม')}}
}
function analyze(text){
var t0=Date.now(),ns=0,p=-1;E=[];NL=[];cur=text;
while((p=text.indexOf('\n',p+1))>=0){NL.push(p)}
lex(text,function(it){if(it.k==='s'){ns++;try{check(it)}catch(e){}}},function(o,m){err(o,m)});
E.sort(function(a,b){return a.o-b.o});
return{ns:ns,ms:Date.now()-t0}}
function nonC(tk){var r=[],i;for(i=0;i<tk.length;i++){if(tk[i].t!=='c'&&tk[i].t!=='x'){r.push(tk[i])}}return r}
function sp(a,b){
if(!a){return false}
var x=a.v,y=b.v;
if(y===','||y===';'||y===')'||y==='.'||x==='('||x==='.'){return false}
if(y==='('){if(a.t==='w'||a.t==='q'){return !!(b.ws||CSP[x.toUpperCase()])}return a.t==='o'&&x!==')'?true:!!b.ws}
if((x==='-'||x==='+')&&a.t==='o'){return !!b.ws}
if((y==='-'||y==='+')&&b.t==='o'){return !!b.ws||a.t==='o'&&x!==')'}
if(x==='@'||y==='::'||x==='::'){return false}
return true}
function fmtSt(it){
var tk=it.toks,N=nonC(tk),f=N.length&&N[0].t==='w'?N[0].v.toUpperCase():'';
if(isComp(N)){return cur.slice(it.s,it.e).trim()}
var o='',pd=0,cl='',prev=null,pu='',ls=true,cp=false,cd=false,btw=false,i,j,t,u,v,nu,ct=(f==='CREATE'&&/TABLE/i.test((N[1]?N[1].v:'')+' '+(N[2]?N[2].v:'')));
var nl=function(k){o=o.replace(/[ ]+$/,'')+'\n'+new Array(k+1).join('  ');ls=true};
for(i=0;i<tk.length;i++){
t=tk[i];if(t.t==='x'){continue}
v=t.v;u=t.t==='w'?v.toUpperCase():'';
if(t.t==='c'){if(!ls&&o){o+=' '}o+=v;ls=false;if(v.charAt(0)!=='/'){nl(0)}continue}
nu='';for(j=i+1;j<tk.length;j++){if(tk[j].t!=='c'){nu=tk[j].t==='w'?tk[j].v.toUpperCase():'';break}}
if(t.t==='w'&&BASE[u]){v=u}
if(pd===0&&o){
if(u==='FROM'&&f==='DELETE'&&pu==='DELETE'){}
else if(u==='FROM'||u==='WHERE'||u==='HAVING'||u==='LIMIT'||u==='UNION'||u==='VALUES'||u==='GROUP'||u==='ORDER'||(u==='SET'&&f==='UPDATE')||(u==='JOIN'&&!/^(LEFT|RIGHT|INNER|CROSS|NATURAL|OUTER|STRAIGHT)$/.test(pu))||(/^(LEFT|RIGHT|INNER|CROSS|NATURAL)$/.test(u)&&(nu==='JOIN'||nu==='OUTER'))){nl(0)}
else if((u==='AND'||u==='OR')&&(cl==='WHERE'||cl==='HAVING')&&!(u==='AND'&&btw)){nl(1)}}
if(pd===0){if(u==='BETWEEN'){btw=true}else if(u==='AND'&&btw){btw=false}
if(/^(SELECT|FROM|WHERE|GROUP|ORDER|HAVING|LIMIT|SET|VALUES)$/.test(u)){cl=u}}
if(t.t==='o'&&v===','&&((pd===0&&/^(SELECT|SET|GROUP|ORDER)$/.test(cl))||(cp&&pd===1))){o+=',';nl(1);prev=t;pu=',';continue}
if(t.t==='o'&&v===')'&&cp&&pd===1){pd--;nl(0);o+=')';ls=false;cp=false;cd=true;prev=t;pu=')';continue}
o+=(ls||!prev?'':(sp(prev,t)?' ':''))+v;ls=false;
if(t.t==='o'&&v==='('){if(ct&&!cd&&pd===0){cp=true;pd++;nl(1);prev=t;pu='(';continue}pd++}
else if(t.t==='o'&&v===')'){pd--}
prev=t;pu=u||v}
return o.replace(/\s+$/,'')}
function endsWithDelim(it,text){return text.substr(it.e,it.d.length)===it.d&&it.d.length>0}
function fmt(text){
var out='',ok=true,pd=false;cur=text;
lex(text,function(it){if(it.k==='d'){out+=(out?'\n':'')+it.raw+'\n';pd=true;return}
var s=fmtSt(it);if(s){out+=(out&&!pd?'\n\n':'')+s+(endsWithDelim(it,text)?it.d:'');pd=false}},function(){ok=false});
return ok?out.replace(/\s+$/,'')+'\n':null}
function need(a,b){
var x=a.v,y=b.v,w=function(q){return q.t==='w'||q.t==='n'||q.t==='v'||q.t==='s'||q.t==='q'};
if(x==='('||x==='.'||y===')'||y===','||y==='.'||y===';'){return false}
if(w(a)&&w(b)){return true}
if(y==='('&&w(a)){return false}
if(a.t==='o'&&b.t==='o'&&!(x===')'||x===','||y==='(')){return true}
return false}
function minify(text){
var out='',ok=true;cur=text;
lex(text,function(it){
if(it.k==='d'){out+=(out?'\n':'')+it.raw+'\n';return}
var N=nonC(it.toks),s='',prev=null,i,t;
if(isComp(N)){out+=cur.slice(it.s,it.e).trim()+(endsWithDelim(it,text)?it.d:'')+'\n';return}
for(i=0;i<it.toks.length;i++){t=it.toks[i];if(t.t==='x'){continue}
if(t.t==='c'&&!/^\/\*[!+]/.test(t.v)){continue}
s+=(prev&&need(prev,t)?' ':'')+t.v;prev=t}
if(s){out+=s+(endsWithDelim(it,text)?it.d:'')}},function(){ok=false});
return ok?out.replace(/\s+$/,'')+'\n':null}
function applyEd(text,ed){var a=ed.slice().sort(function(x,y){return y.s-x.s||y.e-x.e}),last=Infinity,r=text,i;
for(i=0;i<a.length;i++){if(a[i].e>last){continue}r=r.slice(0,a[i].s)+a[i].r+r.slice(a[i].e);last=a[i].s}return r}
function setText(v){hist.push(src.value);if(hist.length>30){hist.shift()}src.value=v}
function h(tag,cls,txt){var e=document.createElement(tag);if(cls){e.className=cls}if(txt){e.textContent=txt}return e}
function go(o){src.focus();src.setSelectionRange(o,Math.min(o+1,src.value.length));var lh=parseFloat(getComputedStyle(src).lineHeight)||20;src.scrollTop=Math.max(0,(lineOf(o)-3)*lh)}
function render(r){
var i,e,li,hd,b;
box.textContent='';
if(!r.ns&&!E.length){sum.className='msc-sum';sum.textContent='ไม่มีคำสั่ง SQL ให้ตรวจสอบ';return}
sum.className='msc-sum '+(E.length?'bad':'ok');
sum.textContent=E.length?'Syntax ผิดพลาด '+E.length+(E.length>=500?'+':'')+' จุด ใน '+r.ns+' คำสั่ง ('+r.ms+' ms)':'Syntax MySQL ถูกต้อง พบ '+r.ns+' คำสั่ง ('+r.ms+' ms)';
E.forEach(function(x){
li=h('li');hd=h('div');
b=h('button','msc-ln','บรรทัด '+x.l+':'+x.c);b.type='button';b.addEventListener('click',function(){go(x.o)});hd.appendChild(b);
hd.appendChild(h('span','',x.m));
if(x.ed){b=h('button','msc-fx','แก้ให้');b.type='button';b.addEventListener('click',function(){if(src.value!==snap){run();return}setText(applyEd(src.value,x.ed));run()});hd.appendChild(b)}
li.appendChild(hd);li.appendChild(h('code','msc-nr',"near '"+x.n+"' at line "+x.l));box.appendChild(li)})}
function run(){var v=src.value;snap=v;render(analyze(v))}
function fixAll(){var k,ed,v;for(k=0;k<3;k++){run();ed=[];E.forEach(function(x){if(x.ed){ed=ed.concat(x.ed)}});if(!ed.length){break}v=applyEd(src.value,ed);if(v===src.value){break}setText(v)}run()}
function tr(fn){var r=fn(src.value);if(r===null){sum.className='msc-sum bad';sum.textContent='ไม่สามารถดำเนินการได้ เพราะมีเครื่องหมายคำพูดหรือคอมเมนต์ที่ไม่ปิด กรุณาแก้ก่อน';analyze(src.value);return}setText(r);run()}
function cp(text,btn){var o=btn.textContent;
function ok(){btn.textContent='คัดลอกแล้ว';setTimeout(function(){btn.textContent=o},1200)}
function fb(){var ta=document.createElement('textarea');ta.value=text;document.body.appendChild(ta);ta.select();try{document.execCommand('copy');ok()}catch(e){}document.body.removeChild(ta)}
if(navigator.clipboard&&navigator.clipboard.writeText){navigator.clipboard.writeText(text).then(ok,fb)}else{fb()}}
function load(f){if(!f){return}if(f.size>10485760){sum.className='msc-sum bad';sum.textContent='ไฟล์ใหญ่เกิน 10 MB';return}
var r=new FileReader();r.onload=function(){setText(String(r.result));run()};r.readAsText(f)}
function on(id,fn){var e=$(id);if(e){e.addEventListener('click',fn)}}
on('msc-run',run);on('msc-fix',fixAll);
on('msc-fmt',function(){tr(fmt)});on('msc-min',function(){tr(minify)});
on('msc-undo',function(){if(hist.length){src.value=hist.pop();run()}});
on('msc-copy',function(){cp(src.value,$('msc-copy'))});
on('msc-rep',function(){run();cp(E.length?E.map(function(x){return 'บรรทัด '+x.l+':'+x.c+' - '+x.m}).join('\n'):'Syntax ถูกต้อง',$('msc-rep'))});
on('msc-dl',function(){var a=document.createElement('a'),u=URL.createObjectURL(new Blob([src.value],{type:'text/plain;charset=utf-8'}));a.href=u;a.download='query.sql';document.body.appendChild(a);a.click();document.body.removeChild(a);setTimeout(function(){URL.revokeObjectURL(u)},500)});
on('msc-clr',function(){if(src.value){setText('')}box.textContent='';sum.className='msc-sum';sum.textContent='กด "ตรวจสอบ SQL" หรือ Ctrl+Enter เพื่อเริ่มตรวจ'});
var fi=$('msc-file');if(fi){fi.addEventListener('change',function(){load(fi.files[0]);fi.value=''})}
vsel.addEventListener('change',function(){if(src.value){run()}});
src.addEventListener('keydown',function(e){if((e.ctrlKey||e.metaKey)&&e.key==='Enter'){e.preventDefault();run()}});
src.addEventListener('input',function(){clearTimeout(tmr);if(src.value.length<100000){tmr=setTimeout(run,700)}});
src.addEventListener('dragover',function(e){e.preventDefault()});
src.addEventListener('drop',function(e){e.preventDefault();if(e.dataTransfer&&e.dataTransfer.files.length){load(e.dataTransfer.files[0])}});
var EX=[['SQL ถูกต้อง',"SELECT u.id, u.name, COUNT(o.id) AS total_orders\nFROM users u\nLEFT JOIN orders o ON o.user_id = u.id\nWHERE u.status = 'active'\nGROUP BY u.id\nORDER BY total_orders DESC\nLIMIT 10;"],
['พิมพ์ผิด',"SELECT id, name FORM users WEHRE id = 1;"],
['คำสงวน',"CREATE TABLE ranking (\n  id INT PRIMARY KEY,\n  rank INT,\n  order VARCHAR(50)\n);"],
['เครื่องหมายคำพูดในข้อความ',"INSERT INTO users (name) VALUES ('O'Brien');"],
['SQL Server',"SELECT TOP 5 [name] FROM [users];"],
['ไม่ปิดเครื่องหมายคำพูด',"SELECT * FROM users WHERE name = 'Budi;\nSELECT 1;"]];
var xs=$('msc-exs');
if(xs){EX.forEach(function(x){var b=h('button','msc-b msc-ex',x[0]);b.type='button';b.addEventListener('click',function(){setText(x[1]);run()});xs.appendChild(b);xs.appendChild(document.createTextNode(' '))})}
})();
</script>

## วิธีใช้งานเครื่องมือตรวจสอบ Syntax MySQL

1. **เลือกเวอร์ชัน** ที่ใช้งานจริง เช่น MySQL 8.4, 8.0, 5.7 หรือ MariaDB เพราะคำสงวนและ syntax ของแต่ละเวอร์ชันไม่เหมือนกัน
2. **วาง SQL** ลงในกล่องข้อความ หรือกด "เปิดไฟล์" / ลากไฟล์ `.sql` จาก mysqldump หรือ phpMyAdmin มาวาง (ขนาดไม่เกิน 10 MB)
3. **กด "ตรวจสอบ SQL"** (หรือ Ctrl+Enter) เครื่องมือจะแสดงทุกจุดที่ผิดพร้อมเลขบรรทัด สาเหตุ และข้อความ `near '…'` แบบเดียวกับ error 1064 ของ MySQL
4. **คลิกเลขบรรทัด** เพื่อให้เคอร์เซอร์ไปที่จุดที่ผิดในกล่อง SQL
5. **กด "แก้ให้"** ที่ error รายการนั้น หรือ **"แก้ไขอัตโนมัติ"** เพื่อแก้ทุกจุดที่แก้ได้ในครั้งเดียว กด "เลิกทำ" หากไม่ต้องการ
6. **กด "จัดรูปแบบ"** เพื่อจัดบรรทัดและเปลี่ยนคีย์เวิร์ดเป็นตัวพิมพ์ใหญ่ หรือ **"ย่อ SQL"** เพื่อลบคอมเมนต์และช่องว่างส่วนเกิน
7. **คัดลอก ดาวน์โหลด หรือคัดลอกรายงาน error** ไปส่งต่อให้ทีมได้ทันที

## ฟีเจอร์ของเครื่องมือ

- **แสดงทุก error ในครั้งเดียว** ไม่ต้องแก้ทีละจุดแล้วตรวจซ้ำ
- **แก้ไขอัตโนมัติ** เช่น ครอบคำสงวนด้วย backtick, ลบจุลภาคเกิน, แก้ `==` เป็น `=`, เติมความยาว `VARCHAR`, เปลี่ยนเครื่องหมายคำพูดโค้งเป็นเครื่องหมายปกติ
- **ตรวจ SQL จากฐานข้อมูลอื่น** เช่น `TOP` `[name]` `IDENTITY` ของ SQL Server, `::` `ILIKE` ของ PostgreSQL, `AUTOINCREMENT` ของ SQLite พร้อมวิธีเขียนแบบ MySQL
- **รองรับไฟล์ dump และ `DELIMITER`** จึงตรวจ stored procedure และ trigger ได้โดยไม่ตัดผิดตำแหน่ง
- **ตรวจตามเวอร์ชัน** คำอย่าง `rank` หรือ `row` ใช้ได้ใน MySQL 5.7 แต่เป็นคำสงวนตั้งแต่ MySQL 8.0
- **ประมวลผลในเบราว์เซอร์ 100%** SQL ไม่ถูกรันและไม่ถูกอัปโหลด ตรวจ `DELETE` หรือ `DROP` ได้อย่างปลอดภัย

## อธิบายศัพท์ที่เกี่ยวข้อง

- **Syntax** คือกฎการเขียนคำสั่ง SQL ให้ถูกต้องตามไวยากรณ์ของ MySQL เช่น ลำดับคำและเครื่องหมายต่างๆ
- **Query** คือคำสั่ง SQL หนึ่งคำสั่งที่ส่งไปให้ฐานข้อมูลประมวลผล เช่น `SELECT` หรือ `UPDATE`
- **Error 1064** คือรหัสข้อผิดพลาด "You have an error in your SQL syntax" ที่ MySQL แจ้งเมื่อ syntax ไม่ถูกต้อง
- **Reserved word (คำสงวน)** คือคำที่ MySQL ใช้เป็นคำสั่งอยู่แล้ว เช่น `order`, `group`, `rank` หากใช้เป็นชื่อต้องครอบด้วย backtick
- **Backtick** คือเครื่องหมาย `` ` `` ที่ใช้ครอบชื่อตารางหรือคอลัมน์ เพื่อให้ MySQL อ่านเป็นชื่อ ไม่ใช่คำสั่ง
- **String (สตริง)** คือข้อความที่อยู่ในเครื่องหมายคำพูดเดี่ยวหรือคู่ เช่น `'สมชาย'`
- **Dump file** คือไฟล์ `.sql` ที่ส่งออกจากฐานข้อมูล (เช่น ด้วย mysqldump หรือ phpMyAdmin) เพื่อสำรองหรือย้ายข้อมูล
- **DELIMITER** คือคำสั่งของ MySQL client ที่เปลี่ยนตัวปิดคำสั่งจาก `;` เป็นอย่างอื่น เช่น `$$` เพื่อให้ stored procedure ที่มี `;` ภายในเขียนได้
- **Stored procedure / Trigger** คือชุดคำสั่ง SQL ที่เก็บไว้ในฐานข้อมูล เรียกใช้ซ้ำได้ หรือทำงานอัตโนมัติเมื่อมีการเพิ่ม แก้ หรือลบข้อมูล
- **Dialect (ภาษาถิ่นของ SQL)** คือส่วนต่างของ SQL แต่ละระบบ เช่น MySQL, PostgreSQL, SQL Server และ MariaDB
- **Formatter** คือฟีเจอร์จัดรูปแบบ SQL ให้อ่านง่าย ขึ้นบรรทัดใหม่ตามส่วนของคำสั่ง
- **Minify** คือการย่อ SQL ให้เหลือบรรทัดเดียว โดยลบคอมเมนต์และช่องว่างที่ไม่จำเป็น
- **Parser** คือส่วนที่อ่านและแยกโครงสร้างของ SQL เพื่อตรวจว่าถูกไวยากรณ์หรือไม่

## คำถามที่พบบ่อย

**เครื่องมือนี้รัน SQL หรือเชื่อมต่อฐานข้อมูลหรือไม่**
ไม่ SQL ถูกอ่านและตรวจในเบราว์เซอร์เท่านั้น ไม่มีการรันและไม่มีการส่งข้อมูลออกไป

**ผ่านการตรวจแล้ว แต่ตอนรันจริงยัง error ได้หรือไม่**
ได้ เครื่องมือนี้ตรวจเฉพาะ syntax ปัญหาอย่างตารางหรือคอลัมน์ไม่มีอยู่ ชนิดข้อมูลไม่ตรง หรือไม่มีสิทธิ์ จะเกิดตอนรันกับฐานข้อมูลจริงเท่านั้น

**แก้ error 1064 ได้อย่างไร**
ดูเลขบรรทัดและข้อความ `near` ที่เครื่องมือแสดง สาเหตุที่พบบ่อยคือสะกดคีย์เวิร์ดผิด ใช้คำสงวนเป็นชื่อโดยไม่ครอบด้วย backtick เครื่องหมายคำพูดไม่ครบคู่ หรือใช้ syntax ของฐานข้อมูลอื่น