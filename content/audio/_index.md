---
title: เครื่องมือเสียงออนไลน์ ฟรี แปลง ตัด รวม แยกไฟล์เสียง
h1: เครื่องมือเสียงออนไลน์
description: เครื่องมือเสียงออนไลน์ฟรี แปลงไฟล์เสียงเป็น MP3 และ WAV ตัด รวม แยก บีบอัดไฟล์ ปรับระดับเสียง อัดเสียง ประมวลผลบนอุปกรณ์ ไม่อัปโหลดไฟล์ ไม่ต้องสมัครสมาชิก
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-11-19T09:00:00+07:00'
weight: 131
tool: true
topic: media
appCategory: MultimediaApplication
keywords:
- เครื่องมือเสียงออนไลน์
- เสียงและวิดีโอ
---

<style>
.pa-app{--pa-ac:#2563eb;--pa-bd:rgba(127,127,127,.38);--pa-bg:rgba(127,127,127,.09);margin:1.25rem 0 2.25rem;line-height:1.6}
.pa-app *{box-sizing:border-box}
.pa-app button,.pa-app input,.pa-app select{font:inherit}
.pa-drop{display:flex;flex-direction:column;gap:.25rem;align-items:center;text-align:center;padding:1.7rem 1rem;border:2px dashed var(--pa-bd);border-radius:12px;cursor:pointer;transition:border-color .15s,background-color .15s}
.pa-drop:hover,.pa-drop:focus-visible,.pa-drop.over{border-color:var(--pa-ac);background:rgba(37,99,235,.07);outline:none}
.pa-drop span{font-size:.88em;opacity:.78}
.pa-files{list-style:none;margin:.8rem 0 0;padding:0;display:grid;gap:.4rem}
.pa-file{display:flex;align-items:center;gap:.55rem;padding:.4rem .65rem;border:1px solid var(--pa-bd);border-radius:8px}
.pa-file.on{border-color:var(--pa-ac)}
.pa-fn{flex:1;min-width:0;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.pa-fm{font-size:.82em;opacity:.7;white-space:nowrap}
.pa-ib{min-width:2rem;height:2rem;padding:0;border:1px solid var(--pa-bd);border-radius:6px;background:transparent;color:inherit;cursor:pointer}
.pa-ib:hover{border-color:var(--pa-ac)}
.pa-tabs{display:flex;flex-wrap:wrap;gap:.3rem;margin:1.1rem 0 .8rem;border-bottom:1px solid var(--pa-bd)}
.pa-tab{padding:.5rem .85rem;border:0;border-bottom:3px solid transparent;background:transparent;color:inherit;cursor:pointer;opacity:.75}
.pa-tab:hover{opacity:1}
.pa-tab.on{opacity:1;border-bottom-color:var(--pa-ac);font-weight:600}
.pa-out{display:flex;flex-wrap:wrap;gap:.8rem 1.2rem;align-items:flex-end;padding:.7rem .85rem;background:var(--pa-bg);border-radius:10px;margin-bottom:.9rem}
.pa-panel{display:none}
.pa-panel.on{display:block}
.pa-hint{margin:.2rem 0 .8rem;font-size:.92em;opacity:.8}
.pa-row{display:flex;flex-wrap:wrap;gap:.8rem 1.2rem;align-items:flex-end;margin-bottom:.8rem}
.pa-f{display:flex;flex-direction:column;gap:.2rem;font-size:.92em}
.pa-f.chk{flex-direction:row;align-items:center;gap:.45rem}
.pa-app select,.pa-app input[type=number],.pa-app input[type=text]{padding:.42rem .6rem;border:1px solid var(--pa-bd);border-radius:8px;background:var(--pa-bg);color:inherit;min-width:7rem}
.pa-app select option{color:#111;background:#fff}
.pa-wave{display:block;width:100%;height:110px;border:1px solid var(--pa-bd);border-radius:8px;cursor:ew-resize;touch-action:pan-y;margin-bottom:.6rem}
.pa-btn{padding:.55rem 1.1rem;border:1px solid var(--pa-ac);border-radius:8px;background:var(--pa-ac);color:#fff;cursor:pointer;font-weight:600}
.pa-btn.alt{background:transparent;color:inherit;border-color:var(--pa-bd);font-weight:400}
.pa-btn:hover:not(:disabled){filter:brightness(1.1)}
.pa-btn:disabled{opacity:.5;cursor:not-allowed}
.pa-app button:focus-visible,.pa-app select:focus-visible,.pa-app input:focus-visible{outline:2px solid var(--pa-ac);outline-offset:2px}
.pa-msg{min-height:1.6em;margin:.9rem 0 .3rem;font-size:.95em}
.pa-msg.err{color:#d33}
.pa-app progress{width:100%;height:.6rem}
.pa-res{display:grid;gap:.6rem;margin-top:.6rem}
.pa-r{display:grid;gap:.35rem;padding:.65rem .8rem;border:1px solid var(--pa-bd);border-radius:10px}
.pa-r b{overflow-wrap:anywhere}
.pa-r small{opacity:.75}
.pa-r audio{width:100%}
.pa-r a{justify-self:start;color:var(--pa-ac);font-weight:600}
.pa-priv{font-size:.88em;opacity:.8;margin-top:.8rem}
@media (prefers-reduced-motion:reduce){.pa-drop{transition:none}}
</style>

<div class="pa-app" id="pa-app">
<div class="pa-drop" id="pa-drop" tabindex="0" role="button" aria-label="เพิ่มไฟล์เสียงหรือวิดีโอ">
<strong>ลากไฟล์เสียงหรือวิดีโอมาวางที่นี่</strong>
<span>หรือคลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้</span>
<span>รองรับ MP3, WAV, M4A, AAC, OGG, FLAC, MP4, WEBM, MOV (ตามที่เบราว์เซอร์ถอดรหัสได้)</span>
<input type="file" id="pa-file" accept="audio/*,video/*" multiple hidden>
</div>
<ul class="pa-files" id="pa-files" aria-label="รายการไฟล์" hidden></ul>
<div class="pa-tabs" id="pa-tabs" role="tablist" aria-label="เครื่องมือเสียง">
<button type="button" role="tab" class="pa-tab on" data-tab="convert" aria-selected="true">แปลงไฟล์</button>
<button type="button" role="tab" class="pa-tab" data-tab="trim" aria-selected="false">ตัดเสียง</button>
<button type="button" role="tab" class="pa-tab" data-tab="split" aria-selected="false">แยกไฟล์</button>
<button type="button" role="tab" class="pa-tab" data-tab="join" aria-selected="false">รวมไฟล์</button>
<button type="button" role="tab" class="pa-tab" data-tab="fx" aria-selected="false">ปรับเสียง</button>
<button type="button" role="tab" class="pa-tab" data-tab="compress" aria-selected="false">บีบอัด</button>
<button type="button" role="tab" class="pa-tab" data-tab="record" aria-selected="false">อัดเสียง</button>
</div>
<div class="pa-out" id="pa-outbar">
<label class="pa-f">รูปแบบไฟล์ที่ได้<select id="pa-fmt"><option value="mp3">MP3</option><option value="wav">WAV (ไม่บีบอัด)</option></select></label>
<label class="pa-f" id="pa-kbps-wrap">คุณภาพ MP3 (Bitrate)<select id="pa-kbps"><option value="320">320 kbps (สูงสุด)</option><option value="256">256 kbps</option><option value="192" selected>192 kbps (แนะนำ)</option><option value="160">160 kbps</option><option value="128">128 kbps</option><option value="96">96 kbps</option><option value="64">64 kbps (เสียงพูด)</option></select></label>
</div>
<section class="pa-panel on" data-panel="convert">
<p class="pa-hint">แปลงทุกไฟล์ในรายการเป็นรูปแบบที่เลือก ใช้ดึงเสียงจากวิดีโอเป็น MP3 ได้เช่นกัน</p>
<div class="pa-row">
<label class="pa-f">อัตราสุ่มตัวอย่าง (Sample rate)<select id="pa-sr"><option value="0">ตามต้นฉบับ</option><option value="48000">48,000 Hz</option><option value="44100">44,100 Hz</option><option value="32000">32,000 Hz</option><option value="22050">22,050 Hz</option><option value="16000">16,000 Hz</option><option value="8000">8,000 Hz</option></select></label>
<label class="pa-f">ช่องเสียง<select id="pa-ch"><option value="0">ตามต้นฉบับ</option><option value="1">โมโน (1 ช่อง)</option><option value="2">สเตอริโอ (2 ช่อง)</option></select></label>
</div>
<button type="button" class="pa-btn pa-act" id="pa-run-convert">แปลงไฟล์</button>
</section>
<section class="pa-panel" data-panel="trim">
<p class="pa-hint">ไฟล์ที่ใช้: <b id="pa-tfile">ยังไม่ได้เลือกไฟล์</b> (เลือกจากปุ่มวงกลมในรายการไฟล์) ลากเส้นสีน้ำเงินบนคลื่นเสียงหรือกรอกวินาทีเพื่อกำหนดช่วง</p>
<canvas class="pa-wave" id="pa-wave" aria-label="คลื่นเสียงและช่วงที่เลือก"></canvas>
<div class="pa-row">
<label class="pa-f">วิธีตัด<select id="pa-tmode"><option value="keep">เก็บเฉพาะช่วงที่เลือก (ทริม)</option><option value="cut">ลบช่วงที่เลือกออก (ตัดกลาง)</option></select></label>
<label class="pa-f">เริ่ม (วินาที)<input type="number" id="pa-ts" min="0" step="0.01" value="0"></label>
<label class="pa-f">จบ (วินาที)<input type="number" id="pa-te" min="0" step="0.01" value="0"></label>
</div>
<p class="pa-hint" id="pa-tinfo"></p>
<div class="pa-row">
<button type="button" class="pa-btn alt" id="pa-tplay">ฟังช่วงที่เลือก</button>
<button type="button" class="pa-btn alt" id="pa-tstop">หยุดฟัง</button>
<button type="button" class="pa-btn pa-act" id="pa-run-trim">ตัดและสร้างไฟล์</button>
</div>
</section>
<section class="pa-panel" data-panel="split">
<p class="pa-hint">ไฟล์ที่ใช้: <b id="pa-sfile">ยังไม่ได้เลือกไฟล์</b> แยกเป็นหลายไฟล์ แล้วดาวน์โหลดทีละไฟล์หรือเป็น ZIP</p>
<div class="pa-row">
<label class="pa-f">วิธีแยก<select id="pa-smode"><option value="every">ทุก ๆ N วินาที</option><option value="parts">แบ่งเป็น N ส่วนเท่า ๆ กัน</option><option value="points">ตัดตามเวลาที่กำหนด</option></select></label>
<label class="pa-f"><span id="pa-slabel">N (วินาที)</span><input type="text" id="pa-sval" value="60" inputmode="decimal"></label>
</div>
<button type="button" class="pa-btn pa-act" id="pa-run-split">แยกไฟล์</button>
</section>
<section class="pa-panel" data-panel="join">
<p class="pa-hint">รวมทุกไฟล์ในรายการเป็นไฟล์เดียว เรียงตามลำดับในรายการ ปรับลำดับด้วยปุ่มลูกศร</p>
<div class="pa-row">
<label class="pa-f">เว้นช่วงเงียบระหว่างไฟล์ (วินาที)<input type="number" id="pa-gap" min="0" max="10" step="0.1" value="0"></label>
</div>
<button type="button" class="pa-btn pa-act" id="pa-run-join">รวมไฟล์</button>
</section>
<section class="pa-panel" data-panel="fx">
<p class="pa-hint">ปรับเสียงทุกไฟล์ในรายการ ลำดับการทำงาน: ลบความเงียบ, ความเร็ว, กลับด้าน, ระดับเสียง, เฟด</p>
<div class="pa-row">
<label class="pa-f">ระดับเสียง (%)<input type="number" id="pa-gain" min="10" max="400" step="5" value="100"></label>
<label class="pa-f chk"><input type="checkbox" id="pa-norm">ปรับระดับเสียงมาตรฐาน (Normalize)</label>
<label class="pa-f">เฟดเข้า (วินาที)<input type="number" id="pa-fi" min="0" max="30" step="0.5" value="0"></label>
<label class="pa-f">เฟดออก (วินาที)<input type="number" id="pa-fo" min="0" max="30" step="0.5" value="0"></label>
</div>
<div class="pa-row">
<label class="pa-f">ความเร็ว (ระดับเสียงเปลี่ยนตาม)<select id="pa-speed"><option value="0.5">0.5x</option><option value="0.75">0.75x</option><option value="1" selected>1x (ปกติ)</option><option value="1.25">1.25x</option><option value="1.5">1.5x</option><option value="2">2x</option></select></label>
<label class="pa-f chk"><input type="checkbox" id="pa-rev">กลับด้านเสียง (เล่นย้อนหลัง)</label>
</div>
<div class="pa-row">
<label class="pa-f chk"><input type="checkbox" id="pa-sil">ลบช่วงเงียบ</label>
<label class="pa-f">ถือว่าเงียบเมื่อเบากว่า (dB)<input type="number" id="pa-sth" min="-80" max="-10" step="1" value="-45"></label>
<label class="pa-f">เงียบนานเกิน (วินาที)<input type="number" id="pa-smin" min="0.1" max="10" step="0.1" value="0.6"></label>
<label class="pa-f">เหลือช่วงเงียบไว้ (วินาที)<input type="number" id="pa-skeep" min="0" max="2" step="0.05" value="0.2"></label>
</div>
<button type="button" class="pa-btn pa-act" id="pa-run-fx">ปรับเสียง</button>
</section>
<section class="pa-panel" data-panel="compress">
<p class="pa-hint">ลดขนาดทุกไฟล์ให้ใกล้เป้าหมายที่กำหนด (ผลลัพธ์เป็น MP3 เสมอ) เหมาะกับการส่งผ่านแชตหรืออีเมล</p>
<div class="pa-row">
<label class="pa-f">ขนาดเป้าหมายต่อไฟล์ (MB)<input type="number" id="pa-csize" min="0.1" step="0.1" value="5"></label>
<label class="pa-f chk"><input type="checkbox" id="pa-cmono" checked>แปลงเป็นโมโน (ไฟล์เล็กลง เหมาะกับเสียงพูด)</label>
</div>
<p class="pa-hint" id="pa-cinfo"></p>
<button type="button" class="pa-btn pa-act" id="pa-run-compress">บีบอัดไฟล์</button>
</section>
<section class="pa-panel" data-panel="record">
<p class="pa-hint">อัดเสียงจากไมโครโฟน เมื่อหยุดอัด ไฟล์จะถูกเพิ่มเข้ารายการให้ตัด แปลง หรือปรับเสียงต่อได้ (ต้องเปิดหน้านี้ผ่าน HTTPS และอนุญาตการใช้ไมโครโฟน)</p>
<div class="pa-row">
<button type="button" class="pa-btn" id="pa-rstart">เริ่มอัดเสียง</button>
<button type="button" class="pa-btn alt" id="pa-rstop" disabled>หยุดอัด</button>
<b id="pa-rtime">0:00</b>
</div>
</section>
<p class="pa-msg" id="pa-msg" role="status" aria-live="polite"></p>
<progress id="pa-prog" max="1" value="0" hidden></progress>
<div class="pa-res" id="pa-results"></div>
<div class="pa-row" id="pa-zipbar" hidden><button type="button" class="pa-btn alt" id="pa-zip">ดาวน์โหลดทั้งหมดเป็น ZIP</button></div>
<p class="pa-priv">ไฟล์เสียงของคุณไม่ถูกอัปโหลดไปที่เซิร์ฟเวอร์ ทุกอย่างประมวลผลในเบราว์เซอร์ของคุณ เมื่อส่งออกเป็น MP3 ครั้งแรก เบราว์เซอร์จะดาวน์โหลดตัวเข้ารหัส MP3 ขนาดเล็กเพียงครั้งเดียว</p>
</div>

<script>
(function () {
'use strict';
/*DSP-START*/
function pLen(p){return p.ch[0].length;}
function pDur(p){return pLen(p)/p.rate;}
function fromAB(ab){var ch=[];for(var i=0;i<ab.numberOfChannels;i++){ch.push(new Float32Array(ab.getChannelData(i)));}return {rate:ab.sampleRate,ch:ch};}
function pIdx(p,t){return Math.max(0,Math.min(pLen(p),Math.round(t*p.rate)));}
function pSlice(p,a,b){var s=pIdx(p,a),e=Math.max(s,pIdx(p,b));return {rate:p.rate,ch:p.ch.map(function(c){return c.slice(s,e);})};}
function pCut(p,a,b){var s=pIdx(p,a),e=Math.max(s,pIdx(p,b));return {rate:p.rate,ch:p.ch.map(function(c){var o=new Float32Array(c.length-(e-s));o.set(c.subarray(0,s),0);o.set(c.subarray(e),s);return o;})};}
function pConcat(list,gap){
  var chn=0,total=0,i,c;
  for(i=0;i<list.length;i++){chn=Math.max(chn,list[i].ch.length);total+=pLen(list[i]);}
  var rate=list[0].rate,gapN=Math.round(gap*rate);
  total+=gapN*(list.length-1);
  var out=[];for(c=0;c<chn;c++){out.push(new Float32Array(total));}
  var pos=0;
  for(i=0;i<list.length;i++){
    for(c=0;c<chn;c++){out[c].set(list[i].ch[Math.min(c,list[i].ch.length-1)],pos);}
    pos+=pLen(list[i])+gapN;
  }
  return {rate:rate,ch:out};
}
function pForceCh(p,n){
  var len=pLen(p),i,c;
  if(n===1){
    if(p.ch.length===1){return p;}
    var m=new Float32Array(len);
    for(c=0;c<p.ch.length;c++){for(i=0;i<len;i++){m[i]+=p.ch[c][i];}}
    for(i=0;i<len;i++){m[i]/=p.ch.length;}
    return {rate:p.rate,ch:[m]};
  }
  if(p.ch.length===1){return {rate:p.rate,ch:[p.ch[0],p.ch[0]]};}
  if(p.ch.length>2){return {rate:p.rate,ch:[p.ch[0],p.ch[1]]};}
  return p;
}
function pGain(p,g){return {rate:p.rate,ch:p.ch.map(function(c){var o=new Float32Array(c.length);for(var i=0;i<c.length;i++){o[i]=c[i]*g;}return o;})};}
function pPeak(p){var m=0;for(var c=0;c<p.ch.length;c++){var d=p.ch[c];for(var i=0;i<d.length;i++){var v=d[i]<0?-d[i]:d[i];if(v>m){m=v;}}}return m;}
function pNormalize(p,db){var pk=pPeak(p);if(pk<1e-6){return p;}return pGain(p,Math.pow(10,db/20)/pk);}
function pFade(p,fi,fo){
  var o=pGain(p,1),n=pLen(o),a=Math.min(n,Math.round(fi*o.rate)),b=Math.min(n,Math.round(fo*o.rate));
  for(var c=0;c<o.ch.length;c++){
    var d=o.ch[c],i;
    for(i=0;i<a;i++){d[i]*=i/a;}
    for(i=0;i<b;i++){d[n-b+i]*=1-i/b;}
  }
  return o;
}
function pReverse(p){return {rate:p.rate,ch:p.ch.map(function(c){return new Float32Array(c).reverse();})};}
function pSpeed(p,f){
  var n=Math.max(1,Math.floor(pLen(p)/f));
  return {rate:p.rate,ch:p.ch.map(function(c){
    var o=new Float32Array(n),last=c.length-1;
    for(var i=0;i<n;i++){var pos=i*f,i0=Math.floor(pos),fr=pos-i0,a=c[Math.min(i0,last)],b=c[Math.min(i0+1,last)];o[i]=a+(b-a)*fr;}
    return o;
  })};
}
function pResample(p,rate){
  if(p.rate===rate){return p;}
  var ratio=p.rate/rate,len=pLen(p),n=Math.max(1,Math.floor(len/ratio));
  return {rate:rate,ch:p.ch.map(function(c){
    var o=new Float32Array(n),w=Math.max(1,Math.round(ratio)),last=len-1;
    for(var i=0;i<n;i++){
      var pos=i*ratio;
      if(ratio>1){
        var s=Math.floor(pos),e=Math.min(len,s+w),sum=0;
        for(var j=s;j<e;j++){sum+=c[j];}
        o[i]=e>s?sum/(e-s):0;
      }else{
        var i0=Math.floor(pos),fr=pos-i0,a=c[Math.min(i0,last)],b=c[Math.min(i0+1,last)];
        o[i]=a+(b-a)*fr;
      }
    }
    return o;
  })};
}
function pRemoveSilence(p,thDb,minSec,keepSec){
  var F=Math.max(1,Math.round(p.rate*0.01)),n=pLen(p),nf=Math.ceil(n/F),th=Math.pow(10,thDb/20),sil=new Uint8Array(nf),f,c,i;
  for(f=0;f<nf;f++){
    var s=f*F,e=Math.min(n,s+F),m=0;
    for(c=0;c<p.ch.length;c++){for(i=s;i<e;i++){var v=p.ch[c][i];if(v<0){v=-v;}if(v>m){m=v;}}}
    sil[f]=m<th?1:0;
  }
  var minF=Math.max(1,Math.round(minSec/0.01)),keepF=Math.max(0,Math.round(keepSec/0.01)),ranges=[],total=0;
  f=0;
  while(f<nf){
    var g=f,isS=sil[f];
    while(g<nf&&sil[g]===isS){g++;}
    var cnt=g-f;
    if(isS&&cnt>=minF){
      var k=Math.min(keepF,cnt);
      if(k>0){ranges.push([f*F,Math.min(n,(f+k)*F)]);}
    }else{
      ranges.push([f*F,Math.min(n,g*F)]);
    }
    f=g;
  }
  for(i=0;i<ranges.length;i++){total+=ranges[i][1]-ranges[i][0];}
  return {rate:p.rate,ch:p.ch.map(function(ch){
    var o=new Float32Array(total),pos=0;
    for(var r=0;r<ranges.length;r++){o.set(ch.subarray(ranges[r][0],ranges[r][1]),pos);pos+=ranges[r][1]-ranges[r][0];}
    return o;
  })};
}
function parseTime(s){
  s=String(s).trim();
  if(!s){return NaN;}
  var parts=s.split(':');
  if(parts.length>3){return NaN;}
  var t=0;
  for(var i=0;i<parts.length;i++){
    if(!/^\d+(\.\d+)?$/.test(parts[i].trim())){return NaN;}
    t=t*60+parseFloat(parts[i]);
  }
  return t;
}
function fmtTime(sec){
  if(!isFinite(sec)||sec<0){sec=0;}
  var h=Math.floor(sec/3600),m=Math.floor((sec%3600)/60),s=sec%60,ss=(s<10?'0':'')+s.toFixed(1);
  if(h>0){return h+':'+(m<10?'0':'')+m+':'+ss;}
  return m+':'+ss;
}
function splitRanges(total,mode,val){
  var r=[],i;
  if(mode==='every'){
    var n=parseFloat(val);
    if(!(n>0)){throw new Error('badval');}
    for(var t=0;t<total-0.005;t+=n){r.push([t,Math.min(total,t+n)]);if(r.length>200){throw new Error('toomany');}}
  }else if(mode==='parts'){
    var k=Math.floor(parseFloat(val));
    if(!(k>=2)){throw new Error('badval');}
    if(k>200){throw new Error('toomany');}
    for(i=0;i<k;i++){r.push([total*i/k,total*(i+1)/k]);}
  }else{
    var pts=String(val).split(/[\s;,]+/).filter(function(x){return x;}).map(parseTime);
    if(!pts.length||pts.some(function(x){return isNaN(x);})){throw new Error('points');}
    pts=pts.filter(function(x){return x>0&&x<total;}).sort(function(a,b){return a-b;});
    pts=pts.filter(function(x,j){return j===0||x!==pts[j-1];});
    if(!pts.length){throw new Error('points');}
    if(pts.length>199){throw new Error('toomany');}
    var b=[0].concat(pts,[total]);
    for(i=0;i<b.length-1;i++){r.push([b[i],b[i+1]]);}
  }
  return r;
}
var BR1=[32,40,48,56,64,80,96,112,128,160,192,224,256,320],BR2=[8,16,24,32,40,48,56,64,80,96,112,128,144,160];
function snapBitrate(k,rate,down){
  var L=rate>=32000?BR1:BR2,best=L[0],i;
  if(down){for(i=0;i<L.length;i++){if(L[i]<=k){best=L[i];}}return best;}
  for(i=0;i<L.length;i++){if(Math.abs(L[i]-k)<Math.abs(best-k)){best=L[i];}}
  return best;
}
function planCompress(mb,dur,srcRate,mono){
  var want=mb*1048576*8/Math.max(0.1,dur)/1000;
  var rate=want>=64?(srcRate===48000?48000:44100):(want>=24?22050:16000);
  var kbps=snapBitrate(Math.max(8,want),rate,true);
  return {want:want,rate:rate,kbps:kbps,mono:!!mono,est:kbps*125*dur};
}
function encodeWav(p){
  var n=pLen(p),ch=p.ch.length,bytes=n*ch*2,buf=new ArrayBuffer(44+bytes),v=new DataView(buf);
  function ws(o,s){for(var i=0;i<s.length;i++){v.setUint8(o+i,s.charCodeAt(i));}}
  ws(0,'RIFF');v.setUint32(4,36+bytes,true);ws(8,'WAVE');ws(12,'fmt ');
  v.setUint32(16,16,true);v.setUint16(20,1,true);v.setUint16(22,ch,true);
  v.setUint32(24,p.rate,true);v.setUint32(28,p.rate*ch*2,true);v.setUint16(32,ch*2,true);v.setUint16(34,16,true);
  ws(36,'data');v.setUint32(40,bytes,true);
  var o=44;
  for(var i=0;i<n;i++){
    for(var c=0;c<ch;c++){
      var s=p.ch[c][i];s=s>1?1:(s<-1?-1:s);
      v.setInt16(o,s<0?s*32768:s*32767,true);o+=2;
    }
  }
  return new Blob([buf],{type:'audio/wav'});
}
function toInt16(a){var o=new Int16Array(a.length);for(var i=0;i<a.length;i++){var s=a[i];s=s>1?1:(s<-1?-1:s);o[i]=s<0?s*32768:s*32767;}return o;}
var crcT=null;
function crc32(u8){
  if(!crcT){crcT=new Uint32Array(256);for(var n=0;n<256;n++){var c=n;for(var k=0;k<8;k++){c=(c&1)?(0xEDB88320^(c>>>1)):(c>>>1);}crcT[n]=c>>>0;}}
  var crc=0xFFFFFFFF;
  for(var i=0;i<u8.length;i++){crc=crcT[(crc^u8[i])&255]^(crc>>>8);}
  return (crc^0xFFFFFFFF)>>>0;
}
function buildZip(entries){
  var enc=new TextEncoder(),parts=[],central=[],offset=0;
  entries.forEach(function(e){
    var nb=enc.encode(e.name),crc=crc32(e.data),size=e.data.length;
    var lh=new DataView(new ArrayBuffer(30));
    lh.setUint32(0,0x04034b50,true);lh.setUint16(4,20,true);lh.setUint16(6,0x0800,true);lh.setUint16(8,0,true);lh.setUint16(10,0,true);lh.setUint16(12,0x21,true);
    lh.setUint32(14,crc,true);lh.setUint32(18,size,true);lh.setUint32(22,size,true);lh.setUint16(26,nb.length,true);lh.setUint16(28,0,true);
    var ch=new DataView(new ArrayBuffer(46));
    ch.setUint32(0,0x02014b50,true);ch.setUint16(4,20,true);ch.setUint16(6,20,true);ch.setUint16(8,0x0800,true);ch.setUint16(10,0,true);ch.setUint16(12,0,true);ch.setUint16(14,0x21,true);
    ch.setUint32(16,crc,true);ch.setUint32(20,size,true);ch.setUint32(24,size,true);ch.setUint16(28,nb.length,true);ch.setUint32(42,offset,true);
    parts.push(new Uint8Array(lh.buffer),nb,e.data);
    central.push(new Uint8Array(ch.buffer),nb);
    offset+=30+nb.length+size;
  });
  var cdSize=0;central.forEach(function(x){cdSize+=x.length;});
  var end=new DataView(new ArrayBuffer(22));
  end.setUint32(0,0x06054b50,true);end.setUint16(8,entries.length,true);end.setUint16(10,entries.length,true);end.setUint32(12,cdSize,true);end.setUint32(16,offset,true);
  return new Blob(parts.concat(central,[new Uint8Array(end.buffer)]),{type:'application/zip'});
}
/*DSP-END*/

var LAME_SOURCES=[
'https://cdnjs.cloudflare.com/ajax/libs/lamejs/1.2.1/lame.min.js',
'https://cdn.jsdelivr.net/npm/lamejs@1.2.1/lame.min.js'
];
var MP3_RATES=[8000,11025,12000,16000,22050,24000,32000,44100,48000];
var MAX_BYTES=300*1024*1024;
var ERR={
  nofile:'ยังไม่มีไฟล์ในรายการ กรุณาเพิ่มไฟล์เสียงก่อน',
  need2:'ต้องมีอย่างน้อย 2 ไฟล์ในรายการจึงจะรวมไฟล์ได้',
  range:'ช่วงที่เลือกไม่ถูกต้อง เวลาจบต้องมากกว่าเวลาเริ่ม',
  empty:'ผลลัพธ์ไม่มีเสียงเหลืออยู่ ลองปรับค่าที่ตั้งไว้',
  lame:'โหลดตัวเข้ารหัส MP3 ไม่สำเร็จ ตรวจสอบอินเทอร์เน็ตแล้วลองใหม่ หรือเลือกรูปแบบ WAV',
  points:'กรอกเวลาตัดอย่างน้อย 1 จุดที่อยู่ในความยาวไฟล์ เช่น 30, 1:15, 2:00',
  badval:'ค่าที่กรอกไม่ถูกต้อง กรุณากรอกตัวเลขที่มากกว่า 0 (แบ่งเป็นส่วนต้องตั้งแต่ 2)',
  toomany:'แยกได้ไม่เกิน 200 ไฟล์ต่อครั้ง',
  noeffect:'เลือกการปรับเสียงอย่างน้อย 1 อย่างก่อน',
  noaudio:'เบราว์เซอร์นี้ไม่รองรับ Web Audio กรุณาใช้เบราว์เซอร์รุ่นใหม่',
  norec:'เบราว์เซอร์นี้ไม่รองรับการอัดเสียง หรือหน้านี้ไม่ได้เปิดผ่าน HTTPS',
  mic:'เข้าถึงไมโครโฟนไม่ได้ กรุณาอนุญาตสิทธิ์ไมโครโฟนในเบราว์เซอร์'
};
var $=function(id){return document.getElementById(id);};
var root=$('pa-app');
if(!root){return;}
var state={files:[],sel:null,tab:'convert',busy:false,results:[],nextId:1};
var ctx=null,player=null,rec=null,lameP=null;

function getCtx(){
  if(!ctx){var AC=window.AudioContext||window.webkitAudioContext;if(!AC){throw new Error('noaudio');}ctx=new AC();}
  return ctx;
}
function decode(ab){
  return new Promise(function(res,rej){
    var r=getCtx().decodeAudioData(ab,res,rej);
    if(r&&r.then){r.then(res,rej);}
  });
}
function pad(n){return (n<10?'0':'')+n;}
function stamp(){var d=new Date();return pad(d.getHours())+pad(d.getMinutes())+pad(d.getSeconds());}
function fmtSize(b){return b>=1048576?(b/1048576).toFixed(2)+' MB':Math.max(1,Math.round(b/1024))+' KB';}
function baseName(n){return n.replace(/\.[^.\/\\]+$/,'');}
function tick(){return new Promise(function(r){setTimeout(r,0);});}
function setMsg(t,err){var m=$('pa-msg');m.textContent=t||'';m.className='pa-msg'+(err?' err':'');}
function setProg(v){var p=$('pa-prog');if(v===null){p.hidden=true;return;}p.hidden=false;p.value=Math.max(0,Math.min(1,v));}
function showError(e){
  var code=e&&e.message?e.message:String(e);
  if(ERR[code]){setMsg(ERR[code],true);return;}
  if(e&&(e.name==='RangeError'||/memory|allocation/i.test(code))){setMsg('หน่วยความจำไม่พอ ลองใช้ไฟล์ที่สั้นลงหรือปิดแท็บอื่น',true);return;}
  setMsg('เกิดข้อผิดพลาด: '+code,true);
}
function setBusy(b){
  state.busy=b;
  var bs=root.querySelectorAll('.pa-act');
  for(var i=0;i<bs.length;i++){bs[i].disabled=b;}
  root.setAttribute('aria-busy',b?'true':'false');
}

function loadScriptSafe(urls){
  var i=0;
  function next(){
    if(i>=urls.length){return Promise.reject(new Error('lame'));}
    var u=urls[i++];
    return fetch(u,{mode:'cors',credentials:'omit'}).then(function(r){
      if(!r.ok){throw new Error('http');}
      return r.text();
    }).then(function(t){
      if(/^\s*</.test(t)){throw new Error('html');}
      var url=URL.createObjectURL(new Blob([t],{type:'text/javascript'}));
      return new Promise(function(res,rej){
        var s=document.createElement('script');
        s.onload=function(){if(window.lamejs){res();}else{rej(new Error('nolame'));}};
        s.onerror=function(){rej(new Error('exec'));};
        s.src=url;
        document.head.appendChild(s);
      });
    }).catch(next);
  }
  return next();
}
function ensureLame(){
  if(window.lamejs){return Promise.resolve();}
  if(!lameP){
    lameP=loadScriptSafe(LAME_SOURCES).catch(function(){lameP=null;throw new Error('lame');});
  }
  return lameP;
}

async function resampleAsync(p,rate){
  if(p.rate===rate){return p;}
  try{
    var OC=window.OfflineAudioContext||window.webkitOfflineAudioContext;
    var n=Math.max(1,Math.ceil(pLen(p)*rate/p.rate)),oc=new OC(p.ch.length,n,rate);
    var buf=oc.createBuffer(p.ch.length,pLen(p),p.rate);
    for(var c=0;c<p.ch.length;c++){buf.getChannelData(c).set(p.ch[c]);}
    var src=oc.createBufferSource();src.buffer=buf;src.connect(oc.destination);src.start();
    return fromAB(await oc.startRendering());
  }catch(e){
    return pResample(p,rate);
  }
}
async function encodeMp3(p,kbps,onp){
  p=pForceCh(p,p.ch.length>1?2:1);
  if(MP3_RATES.indexOf(p.rate)<0){p=await resampleAsync(p,44100);}
  await ensureLame();
  var chn=p.ch.length,k=snapBitrate(kbps,p.rate,false);
  var enc=new window.lamejs.Mp3Encoder(chn,p.rate,k);
  var L=toInt16(p.ch[0]),R=chn===2?toInt16(p.ch[1]):null,n=L.length,block=1152,parts=[];
  for(var i=0;i<n;i+=block){
    var out=chn===2?enc.encodeBuffer(L.subarray(i,i+block),R.subarray(i,i+block)):enc.encodeBuffer(L.subarray(i,i+block));
    if(out.length){parts.push(new Uint8Array(out));}
    if(i%(block*300)===0){if(onp){onp(i/n);}await tick();}
  }
  var end=enc.flush();
  if(end.length){parts.push(new Uint8Array(end));}
  return new Blob(parts,{type:'audio/mpeg'});
}
async function encodeOut(p,o,onp){
  if(pLen(p)===0){throw new Error('empty');}
  if(o.fmt==='wav'){return encodeWav(p);}
  return encodeMp3(p,o.kbps,onp);
}
function outOpts(){return {fmt:$('pa-fmt').value,kbps:parseInt($('pa-kbps').value,10)};}
function extOf(fmt){return fmt==='wav'?'.wav':'.mp3';}

function clearResults(){
  state.results.forEach(function(r){URL.revokeObjectURL(r.url);});
  state.results=[];
  $('pa-results').textContent='';
  $('pa-zipbar').hidden=true;
}
function addResult(name,blob,note){
  var names=state.results.map(function(r){return r.name;}),nm=name,k=2;
  while(names.indexOf(nm)>=0){nm=name.replace(/(\.[^.]+)$/,'-'+k+'$1');k++;}
  var url=URL.createObjectURL(blob);
  state.results.push({name:nm,blob:blob,url:url});
  var d=document.createElement('div');d.className='pa-r';
  var b=document.createElement('b');b.textContent=nm;
  var s=document.createElement('small');s.textContent=fmtSize(blob.size)+(note?' ('+note+')':'');
  var au=document.createElement('audio');au.controls=true;au.preload='none';au.src=url;
  var a=document.createElement('a');a.href=url;a.download=nm;a.textContent='ดาวน์โหลด';
  d.appendChild(b);d.appendChild(s);d.appendChild(au);d.appendChild(a);
  $('pa-results').appendChild(d);
  $('pa-zipbar').hidden=state.results.length<2;
}
async function runJob(fn){
  if(state.busy){return;}
  setBusy(true);clearResults();setMsg('');
  try{await fn();setMsg('เสร็จแล้ว ฟังตัวอย่างหรือกดดาวน์โหลดได้ด้านล่าง');}
  catch(e){showError(e);}
  finally{setBusy(false);setProg(null);}
}

function getSel(){
  var f=null;
  state.files.forEach(function(x){if(x.id===state.sel){f=x;}});
  if(!f&&state.files.length){f=state.files[0];state.sel=f.id;}
  return f;
}
function btn(label,act,id,title){
  var b=document.createElement('button');
  b.type='button';b.className='pa-ib';b.textContent=label;b.setAttribute('data-act',act);b.setAttribute('data-id',id);b.setAttribute('aria-label',title);b.title=title;
  return b;
}
function renderFiles(){
  var ul=$('pa-files');ul.textContent='';
  var sel=getSel();
  state.files.forEach(function(f){
    var li=document.createElement('li');li.className='pa-file'+(sel&&f.id===sel.id?' on':'');
    var rb=document.createElement('input');rb.type='radio';rb.name='pa-sel';rb.checked=!!sel&&f.id===sel.id;rb.value=f.id;rb.setAttribute('aria-label','เลือกไฟล์นี้สำหรับตัดและแยก');
    var nm=document.createElement('span');nm.className='pa-fn';nm.textContent=f.name;nm.title=f.name;
    var mt=document.createElement('span');mt.className='pa-fm';mt.textContent=fmtTime(f.dur)+' / '+fmtSize(f.size);
    li.appendChild(rb);li.appendChild(nm);li.appendChild(mt);
    li.appendChild(btn('▲','up',f.id,'เลื่อนขึ้น'));li.appendChild(btn('▼','down',f.id,'เลื่อนลง'));li.appendChild(btn('✕','rm',f.id,'ลบไฟล์'));
    ul.appendChild(li);
  });
  ul.hidden=!state.files.length;
  renderSel();
}
function renderSel(){
  var f=getSel(),t=f?f.name:'ยังไม่ได้เลือกไฟล์';
  $('pa-tfile').textContent=t;$('pa-sfile').textContent=t;
  if(f&&f.rs===undefined){f.rs=0;f.re=f.dur;}
  syncTrim();updCompressInfo();
}

function getPeaks(f,n){
  if(f.peaks&&f.peaks.length===n){return f.peaks;}
  var ab=f.ab,len=ab.length,pk=new Float32Array(n),step=len/n,mx=0.0001,c,i,j;
  for(c=0;c<ab.numberOfChannels;c++){
    var d=ab.getChannelData(c);
    for(i=0;i<n;i++){
      var s=Math.floor(i*step),e=Math.min(len,Math.floor((i+1)*step)),st=Math.max(1,Math.floor((e-s)/64)),m=pk[i];
      for(j=s;j<e;j+=st){var v=d[j]<0?-d[j]:d[j];if(v>m){m=v;}}
      pk[i]=m;if(m>mx){mx=m;}
    }
  }
  for(i=0;i<n;i++){pk[i]/=mx;}
  f.peaks=pk;
  return pk;
}
function drawWave(){
  var cv=$('pa-wave');if(!cv||state.tab!=='trim'){return;}
  var f=getSel(),w=cv.clientWidth||600,h=cv.clientHeight||110,dpr=window.devicePixelRatio||1;
  if(cv.width!==Math.round(w*dpr)||cv.height!==Math.round(h*dpr)){cv.width=Math.round(w*dpr);cv.height=Math.round(h*dpr);}
  var g=cv.getContext('2d');g.setTransform(dpr,0,0,dpr,0,0);g.clearRect(0,0,w,h);
  if(!f||!(f.dur>0)){return;}
  var n=Math.max(10,Math.floor(w/3)),pk=getPeaks(f,n);
  g.globalAlpha=0.55;g.fillStyle=getComputedStyle(cv).color;
  for(var i=0;i<n;i++){var bh=Math.max(1,pk[i]*(h-8));g.fillRect(i*3,(h-bh)/2,2,bh);}
  g.globalAlpha=1;
  var x1=f.rs/f.dur*w,x2=f.re/f.dur*w;
  g.fillStyle='rgba(37,99,235,.22)';g.fillRect(x1,0,x2-x1,h);
  g.fillStyle='#2563eb';g.fillRect(x1-1,0,2,h);g.fillRect(x2-1,0,2,h);
}
function syncTrim(){
  var f=getSel();
  if(!f){$('pa-ts').value='0';$('pa-te').value='0';$('pa-tinfo').textContent='';drawWave();return;}
  $('pa-ts').value=f.rs.toFixed(2);$('pa-te').value=f.re.toFixed(2);
  $('pa-tinfo').textContent='เริ่ม '+fmtTime(f.rs)+' / จบ '+fmtTime(f.re)+' / ความยาวช่วงที่เลือก '+fmtTime(f.re-f.rs)+' จากทั้งหมด '+fmtTime(f.dur);
  drawWave();
}
function updCompressInfo(){
  var el=$('pa-cinfo'),f=getSel(),mb=parseFloat($('pa-csize').value);
  if(!f||!(mb>0)){el.textContent='';return;}
  var pl=planCompress(mb,f.dur,f.ab.sampleRate,$('pa-cmono').checked);
  var t='ไฟล์ "'+f.name+'" จะใช้ประมาณ '+pl.kbps+' kbps ได้ขนาดราว '+fmtSize(pl.est);
  if(pl.want<8){t+=' (เป้าหมายเล็กกว่าที่ MP3 ทำได้ ผลลัพธ์จะใหญ่กว่าที่ตั้งไว้)';}
  else if(pl.want>320){t+=' (เป้าหมายใหญ่กว่าขนาดที่ 320 kbps ไม่จำเป็นต้องบีบอัด)';}
  el.textContent=t;
}

async function addFiles(list){
  var arr=Array.prototype.slice.call(list||[]);
  if(!arr.length){return;}
  setMsg('');
  for(var i=0;i<arr.length;i++){
    var file=arr[i];
    if(file.size>MAX_BYTES){setMsg('ไฟล์ "'+file.name+'" ใหญ่เกิน 300 MB',true);continue;}
    setMsg('กำลังอ่านไฟล์ '+(i+1)+'/'+arr.length+': '+file.name);
    try{
      var ab=await decode(await file.arrayBuffer());
      pushFile(file.name,file.size,ab);
    }catch(e){
      if(e&&e.message==='noaudio'){showError(e);return;}
      setMsg('ถอดรหัสไฟล์ "'+file.name+'" ไม่ได้ ไฟล์อาจเสียหรือเบราว์เซอร์ไม่รองรับรูปแบบนี้',true);
    }
  }
  if(state.files.length&&!$('pa-msg').classList.contains('err')){setMsg('เพิ่มไฟล์แล้ว เลือกเครื่องมือจากแท็บด้านบน');}
}
function pushFile(name,size,ab){
  var f={id:'f'+(state.nextId++),name:name,size:size,ab:ab,dur:ab.duration,peaks:null,rs:0,re:ab.duration};
  state.files.push(f);
  if(!state.sel){state.sel=f.id;}
  renderFiles();
  ensureLame().catch(function(){});
}

function setTab(t){
  state.tab=t;
  var tabs=root.querySelectorAll('.pa-tab'),ps=root.querySelectorAll('.pa-panel'),i;
  for(i=0;i<tabs.length;i++){var on=tabs[i].getAttribute('data-tab')===t;tabs[i].classList.toggle('on',on);tabs[i].setAttribute('aria-selected',on?'true':'false');}
  for(i=0;i<ps.length;i++){ps[i].classList.toggle('on',ps[i].getAttribute('data-panel')===t);}
  $('pa-outbar').style.display=(t==='record'||t==='compress')?'none':'';
  if(t==='trim'){syncTrim();}
  if(t==='compress'){updCompressInfo();}
}
function syncFmt(){$('pa-kbps-wrap').style.display=$('pa-fmt').value==='mp3'?'':'none';}

function needFiles(){if(!state.files.length){throw new Error('nofile');}}
function progAll(i,n){return function(fr){setProg((i+fr)/n);};}

async function runConvert(){
  needFiles();
  var o=outOpts(),sr=parseInt($('pa-sr').value,10),ch=parseInt($('pa-ch').value,10),n=state.files.length;
  for(var i=0;i<n;i++){
    var f=state.files[i];
    setMsg('กำลังแปลง '+(i+1)+'/'+n+': '+f.name);setProg(i/n);await tick();
    var p=fromAB(f.ab);
    if(ch){p=pForceCh(p,ch);}
    if(sr){p=await resampleAsync(p,sr);}
    addResult(baseName(f.name)+extOf(o.fmt),await encodeOut(p,o,progAll(i,n)));
  }
}
async function runTrim(){
  needFiles();
  var f=getSel(),a=parseFloat($('pa-ts').value),b=parseFloat($('pa-te').value),cut=$('pa-tmode').value==='cut',o=outOpts();
  if(!(a>=0)||!(b>a)){throw new Error('range');}
  b=Math.min(b,f.dur);
  if(!(b>a)){throw new Error('range');}
  setMsg('กำลังตัดเสียง...');await tick();
  var p=fromAB(f.ab),out=cut?pCut(p,a,b):pSlice(p,a,b);
  addResult(baseName(f.name)+(cut?'-cut':'-trim')+extOf(o.fmt),await encodeOut(out,o,setProg));
}
async function runSplit(){
  needFiles();
  var f=getSel(),o=outOpts(),mode=$('pa-smode').value,rg=splitRanges(f.dur,mode,$('pa-sval').value),p=fromAB(f.ab),n=rg.length;
  for(var i=0;i<n;i++){
    setMsg('กำลังสร้างไฟล์ '+(i+1)+'/'+n);setProg(i/n);await tick();
    var part=pSlice(p,rg[i][0],rg[i][1]);
    addResult(baseName(f.name)+'-part'+(i<9?'0':'')+(i+1)+extOf(o.fmt),await encodeOut(part,o,progAll(i,n)));
  }
}
async function runJoin(){
  if(state.files.length<2){throw new Error('need2');}
  var o=outOpts(),gap=Math.max(0,Math.min(10,parseFloat($('pa-gap').value)||0)),list=state.files.map(function(f){return fromAB(f.ab);});
  setMsg('กำลังรวมไฟล์...');await tick();
  var r0=list[0].rate;
  list=list.map(function(p){return pResample(p,r0);});
  addResult('merged-'+state.files.length+'-files'+extOf(o.fmt),await encodeOut(pConcat(list,gap),o,setProg));
}
async function runFx(){
  needFiles();
  var o=outOpts(),gain=parseFloat($('pa-gain').value)/100,norm=$('pa-norm').checked,fi=parseFloat($('pa-fi').value)||0,fo=parseFloat($('pa-fo').value)||0;
  var speed=parseFloat($('pa-speed').value),rev=$('pa-rev').checked,sil=$('pa-sil').checked;
  var th=parseFloat($('pa-sth').value),mn=parseFloat($('pa-smin').value),kp=parseFloat($('pa-skeep').value);
  if(!sil&&!rev&&!norm&&speed===1&&fi<=0&&fo<=0&&Math.abs(gain-1)<0.001){throw new Error('noeffect');}
  var n=state.files.length;
  for(var i=0;i<n;i++){
    var f=state.files[i];
    setMsg('กำลังปรับเสียง '+(i+1)+'/'+n+': '+f.name);setProg(i/n);await tick();
    var p=fromAB(f.ab);
    if(sil){p=pRemoveSilence(p,th,mn,kp);}
    if(pLen(p)===0){throw new Error('empty');}
    if(speed!==1){p=pSpeed(p,speed);}
    if(rev){p=pReverse(p);}
    if(norm){p=pNormalize(p,-1);}else if(Math.abs(gain-1)>0.001){p=pGain(p,gain);}
    if(fi>0||fo>0){p=pFade(p,fi,fo);}
    addResult(baseName(f.name)+'-edit'+extOf(o.fmt),await encodeOut(p,o,progAll(i,n)));
  }
}
async function runCompress(){
  needFiles();
  var mb=parseFloat($('pa-csize').value),mono=$('pa-cmono').checked,n=state.files.length;
  if(!(mb>0)){throw new Error('badval');}
  for(var i=0;i<n;i++){
    var f=state.files[i],pl=planCompress(mb,f.dur,f.ab.sampleRate,mono);
    setMsg('กำลังบีบอัด '+(i+1)+'/'+n+': '+f.name);setProg(i/n);await tick();
    var p=fromAB(f.ab);
    if(pl.mono){p=pForceCh(p,1);}
    p=await resampleAsync(p,pl.rate);
    var blob=await encodeMp3(p,pl.kbps,progAll(i,n));
    addResult(baseName(f.name)+'-compressed.mp3',blob,'จาก '+fmtSize(f.size)+' ที่ '+pl.kbps+' kbps');
  }
}

function stopPlay(){if(player){try{player.stop();}catch(e){}player=null;}}
function playSel(){
  var f=getSel();if(!f){setMsg(ERR.nofile,true);return;}
  stopPlay();
  try{
    var ac=getCtx();if(ac.resume){ac.resume();}
    var s=ac.createBufferSource();s.buffer=f.ab;s.connect(ac.destination);
    s.onended=function(){if(player===s){player=null;}};
    s.start(0,f.rs,Math.max(0.01,f.re-f.rs));player=s;
  }catch(e){showError(e);}
}

var recTimer=null,recStart0=0;
async function startRec(){
  try{
    if(!navigator.mediaDevices||!window.MediaRecorder){throw new Error('norec');}
    var stream;
    try{stream=await navigator.mediaDevices.getUserMedia({audio:true});}catch(e){throw new Error('mic');}
    var mime='';
    ['audio/webm;codecs=opus','audio/webm','audio/mp4','audio/ogg;codecs=opus'].some(function(m){if(MediaRecorder.isTypeSupported(m)){mime=m;return true;}return false;});
    var mr=mime?new MediaRecorder(stream,{mimeType:mime}):new MediaRecorder(stream),chunks=[];
    mr.ondataavailable=function(e){if(e.data&&e.data.size){chunks.push(e.data);}};
    mr.onstop=async function(){
      stream.getTracks().forEach(function(t){t.stop();});
      clearInterval(recTimer);
      $('pa-rstart').disabled=false;$('pa-rstop').disabled=true;
      var blob=new Blob(chunks,{type:mr.mimeType||mime||'audio/webm'});
      try{
        var ab=await decode(await blob.arrayBuffer());
        pushFile('recording-'+stamp(),blob.size,ab);
        setMsg('อัดเสียงเสร็จแล้ว เพิ่มไฟล์เข้ารายการแล้ว เลือกแท็บอื่นเพื่อตัด แปลง หรือปรับเสียงต่อ');
      }catch(e){setMsg('ถอดรหัสเสียงที่อัดไม่ได้ กรุณาลองใหม่',true);}
    };
    mr.start();rec=mr;recStart0=Date.now();
    $('pa-rstart').disabled=true;$('pa-rstop').disabled=false;
    recTimer=setInterval(function(){$('pa-rtime').textContent=fmtTime((Date.now()-recStart0)/1000).replace(/\.\d$/,'');},500);
    setMsg('กำลังอัดเสียง...');
  }catch(e){showError(e);}
}

function on(id,ev,fn){$(id).addEventListener(ev,fn);}
var drop=$('pa-drop'),fin=$('pa-file');
drop.addEventListener('click',function(){fin.click();});
drop.addEventListener('keydown',function(e){if(e.key==='Enter'||e.key===' '){e.preventDefault();fin.click();}});
drop.addEventListener('dragover',function(e){e.preventDefault();drop.classList.add('over');});
drop.addEventListener('dragleave',function(){drop.classList.remove('over');});
drop.addEventListener('drop',function(e){e.preventDefault();drop.classList.remove('over');if(e.dataTransfer){addFiles(e.dataTransfer.files);}});
fin.addEventListener('change',function(){addFiles(fin.files);fin.value='';});
document.addEventListener('paste',function(e){
  var fl=e.clipboardData&&e.clipboardData.files;
  if(fl&&fl.length){addFiles(fl);}
});
$('pa-files').addEventListener('click',function(e){
  var b=e.target.closest?e.target.closest('button'):null;
  if(!b){return;}
  var id=b.getAttribute('data-id'),act=b.getAttribute('data-act'),i=-1;
  state.files.forEach(function(f,k){if(f.id===id){i=k;}});
  if(i<0){return;}
  if(act==='rm'){state.files.splice(i,1);if(state.sel===id){state.sel=state.files.length?state.files[0].id:null;}}
  if(act==='up'&&i>0){var t=state.files[i-1];state.files[i-1]=state.files[i];state.files[i]=t;}
  if(act==='down'&&i<state.files.length-1){var u=state.files[i+1];state.files[i+1]=state.files[i];state.files[i]=u;}
  renderFiles();
});
$('pa-files').addEventListener('change',function(e){
  if(e.target&&e.target.type==='radio'){state.sel=e.target.value;renderFiles();}
});
$('pa-tabs').addEventListener('click',function(e){
  var b=e.target.closest?e.target.closest('button'):null;
  if(b){setTab(b.getAttribute('data-tab'));}
});
on('pa-fmt','change',syncFmt);
on('pa-run-convert','click',function(){runJob(runConvert);});
on('pa-run-trim','click',function(){runJob(runTrim);});
on('pa-run-split','click',function(){runJob(runSplit);});
on('pa-run-join','click',function(){runJob(runJoin);});
on('pa-run-fx','click',function(){runJob(runFx);});
on('pa-run-compress','click',function(){runJob(runCompress);});
on('pa-tplay','click',playSel);
on('pa-tstop','click',stopPlay);
on('pa-rstart','click',startRec);
on('pa-rstop','click',function(){if(rec&&rec.state!=='inactive'){rec.stop();}});
on('pa-csize','input',updCompressInfo);
on('pa-cmono','change',updCompressInfo);
on('pa-norm','change',function(){$('pa-gain').disabled=$('pa-norm').checked;});
on('pa-smode','change',function(){
  var m=$('pa-smode').value,l=$('pa-slabel'),v=$('pa-sval');
  if(m==='every'){l.textContent='N (วินาที)';v.value='60';}
  else if(m==='parts'){l.textContent='N (จำนวนส่วน)';v.value='3';}
  else{l.textContent='เวลาที่ตัด คั่นด้วยจุลภาค เช่น 30, 1:15, 2:00';v.value='';}
});
function onRange(){
  var f=getSel();if(!f){return;}
  var a=parseFloat($('pa-ts').value),b=parseFloat($('pa-te').value);
  if(!(a>=0)){a=0;}
  if(!(b>0)){b=f.dur;}
  a=Math.min(a,f.dur);b=Math.min(b,f.dur);
  if(b<=a){b=Math.min(f.dur,a+0.01);if(b<=a){a=Math.max(0,b-0.01);}}
  f.rs=a;f.re=b;
  var cvInfo=$('pa-tinfo');
  cvInfo.textContent='เริ่ม '+fmtTime(a)+' / จบ '+fmtTime(b)+' / ความยาวช่วงที่เลือก '+fmtTime(b-a)+' จากทั้งหมด '+fmtTime(f.dur);
  drawWave();
}
on('pa-ts','input',onRange);
on('pa-te','input',onRange);
on('pa-ts','change',syncTrim);
on('pa-te','change',syncTrim);
on('pa-zip','click',async function(){
  if(state.busy||state.results.length<2){return;}
  setBusy(true);
  try{
    setMsg('กำลังสร้างไฟล์ ZIP...');
    var ent=[];
    for(var i=0;i<state.results.length;i++){ent.push({name:state.results[i].name,data:new Uint8Array(await state.results[i].blob.arrayBuffer())});}
    var url=URL.createObjectURL(buildZip(ent)),a=document.createElement('a');
    a.href=url;a.download='audio-files.zip';document.body.appendChild(a);a.click();document.body.removeChild(a);
    setTimeout(function(){URL.revokeObjectURL(url);},10000);
    setMsg('สร้างไฟล์ ZIP แล้ว');
  }catch(e){showError(e);}
  finally{setBusy(false);}
});

var cv=$('pa-wave'),drag=null;
function moveHandle(e){
  var f=getSel();if(!f||!drag){return;}
  var r=cv.getBoundingClientRect(),t=Math.max(0,Math.min(f.dur,(e.clientX-r.left)/r.width*f.dur));
  if(drag==='s'){f.rs=Math.min(t,f.re-0.01);}else{f.re=Math.max(t,f.rs+0.01);}
  syncTrim();
}
cv.addEventListener('pointerdown',function(e){
  var f=getSel();if(!f){return;}
  var r=cv.getBoundingClientRect(),t=(e.clientX-r.left)/r.width*f.dur;
  drag=Math.abs(t-f.rs)<=Math.abs(t-f.re)?'s':'e';
  try{cv.setPointerCapture(e.pointerId);}catch(x){}
  moveHandle(e);
});
cv.addEventListener('pointermove',moveHandle);
cv.addEventListener('pointerup',function(){drag=null;});
cv.addEventListener('pointercancel',function(){drag=null;});
var rzT=null;
window.addEventListener('resize',function(){clearTimeout(rzT);rzT=setTimeout(drawWave,150);});
window.addEventListener('pagehide',function(){stopPlay();});

syncFmt();
})();
</script>

## วิธีใช้เครื่องมือเสียงออนไลน์

1. **เพิ่มไฟล์** ลากไฟล์เสียงหรือวิดีโอมาวางในกรอบด้านบน คลิกเพื่อเลือกไฟล์ หรือกด Ctrl+V เพื่อวางไฟล์ที่คัดลอกไว้ จะเพิ่มได้หลายไฟล์พร้อมกัน (ไฟล์ละไม่เกิน 300 MB) หรือใช้แท็บ "อัดเสียง" เพื่อบันทึกเสียงจากไมโครโฟนก็ได้
2. **เลือกเครื่องมือ** คลิกแท็บที่ต้องการ ได้แก่ แปลงไฟล์ ตัดเสียง แยกไฟล์ รวมไฟล์ ปรับเสียง บีบอัด และอัดเสียง
3. **ตั้งค่า** เลือกรูปแบบไฟล์ที่ได้ (MP3 หรือ WAV) และคุณภาพ MP3 จากแถบสีเทา แล้วปรับค่าเฉพาะของเครื่องมือนั้น
4. **กดปุ่มดำเนินการ** รอจนแถบความคืบหน้าเต็ม และอย่าปิดหรือสลับออกจากแท็บนี้ระหว่างประมวลผล
5. **ฟังและดาวน์โหลด** ฟังตัวอย่างจากเครื่องเล่นใต้ชื่อไฟล์ แล้วกด "ดาวน์โหลด" ทีละไฟล์ หรือกด "ดาวน์โหลดทั้งหมดเป็น ZIP" เมื่อมีหลายไฟล์

### วิธีใช้แต่ละเครื่องมือ

- **แปลงไฟล์** เลือกรูปแบบ MP3 หรือ WAV แล้วกด "แปลงไฟล์" ถ้าเพิ่มไฟล์วิดีโอ เครื่องมือจะดึงเฉพาะเสียงออกมาให้ ใช้ตัวเลือกอัตราสุ่มตัวอย่างและช่องเสียงเมื่ออุปกรณ์ปลายทางกำหนดค่าเฉพาะ
- **ตัดเสียง** เลือกไฟล์ด้วยปุ่มวงกลมในรายการ ลากเส้นสีน้ำเงินบนคลื่นเสียงหรือกรอกวินาทีเริ่มและจบ กด "ฟังช่วงที่เลือก" เพื่อตรวจก่อน แล้วเลือกว่าจะเก็บเฉพาะช่วงนั้น (ทริม) หรือลบช่วงนั้นออกแล้วต่อส่วนที่เหลือเข้าด้วยกัน (ตัดกลาง)
- **แยกไฟล์** แบ่งไฟล์เดียวเป็นหลายไฟล์ ทุก ๆ N วินาที เป็น N ส่วนเท่า ๆ กัน หรือตัดตามเวลาที่ระบุ เช่น `30, 1:15, 2:00`
- **รวมไฟล์** ต่อทุกไฟล์ในรายการตามลำดับ ใช้ปุ่ม ▲ ▼ จัดลำดับก่อนกดรวม และกำหนดช่วงเงียบคั่นระหว่างไฟล์ได้
- **ปรับเสียง** ปรับระดับเสียงเป็นเปอร์เซ็นต์ หรือใช้ Normalize ให้เสียงดังสม่ำเสมอ ใส่เฟดเข้า/ออก ปรับความเร็ว กลับด้านเสียง และลบช่วงเงียบอัตโนมัติ เหมาะกับการตัดช่วงอึ้งในพอดแคสต์และเสียงบรรยาย
- **บีบอัด** ระบุขนาดเป้าหมายเป็น MB ระบบจะคำนวณ Bitrate ให้เองและแสดงขนาดโดยประมาณก่อนกดเริ่ม เหมาะกับการส่งไฟล์ผ่านแชตหรืออีเมล
- **อัดเสียง** กด "เริ่มอัดเสียง" และอนุญาตการใช้ไมโครโฟน เมื่อหยุด ไฟล์จะถูกเพิ่มเข้ารายการให้นำไปใช้กับเครื่องมืออื่นต่อ

## คำศัพท์ที่ควรรู้

- **MP3** รูปแบบไฟล์เสียงแบบบีบอัดที่เปิดได้เกือบทุกอุปกรณ์ ขนาดเล็ก แต่สูญเสียรายละเอียดเสียงบางส่วน
- **WAV** รูปแบบไฟล์เสียงแบบไม่บีบอัด คุณภาพเต็ม แต่ไฟล์ใหญ่มาก เหมาะกับงานตัดต่อต่อ
- **Lossy และ Lossless** Lossy คือการบีบอัดที่ตัดข้อมูลบางส่วนทิ้ง (เช่น MP3) ส่วน Lossless คือไม่ตัดข้อมูลทิ้ง (เช่น WAV, FLAC)
- **Bitrate (kbps)** ปริมาณข้อมูลเสียงต่อวินาที ยิ่งสูงยิ่งคุณภาพดีและไฟล์ใหญ่ เพลงทั่วไปนิยม 192 ถึง 320 kbps ส่วนเสียงพูดใช้ 64 ถึง 96 kbps ก็พอ
- **Sample rate (Hz)** จำนวนครั้งที่ตรวจวัดเสียงต่อวินาที 44,100 Hz คือมาตรฐานของเพลง 48,000 Hz พบบ่อยในวิดีโอ ค่าต่ำกว่านี้ทำให้ไฟล์เล็กลงแต่เสียงแหลมหายไป
- **โมโน (Mono) และสเตอริโอ (Stereo)** โมโนมี 1 ช่องเสียง สเตอริโอมี 2 ช่อง (ซ้ายและขวา) การแปลงเป็นโมโนทำให้ไฟล์เล็กลงราวครึ่งหนึ่ง เหมาะกับเสียงพูด
- **ทริม (Trim)** ตัดเก็บเฉพาะช่วงที่ต้องการ ส่วนหัวและท้ายที่เหลือจะถูกทิ้ง
- **ตัดกลาง (Cut)** ลบช่วงตรงกลางออก แล้วต่อส่วนหัวกับส่วนท้ายเข้าด้วยกัน
- **แยกไฟล์ (Split)** แบ่งไฟล์เดียวเป็นหลายไฟล์ตามเวลาหรือจำนวนส่วน
- **รวมไฟล์ (Join / Merge)** ต่อหลายไฟล์เข้าด้วยกันเป็นไฟล์เดียว
- **คลื่นเสียง (Waveform)** กราฟแสดงความดังของเสียงตามเวลา ใช้ช่วยหาจุดที่ต้องการตัด
- **เฟดเข้า/เฟดออก (Fade in / Fade out)** ค่อย ๆ เพิ่มเสียงจากเงียบในช่วงต้น หรือค่อย ๆ ลดเสียงจนเงียบช่วงท้าย เพื่อไม่ให้เสียงเริ่มหรือจบกะทันหัน
- **Normalize** ปรับให้จุดที่ดังที่สุดของไฟล์อยู่ที่ระดับเดียวกัน (เครื่องมือนี้ใช้ -1 dB) ทำให้ไฟล์ที่เบาเกินไปดังขึ้นโดยไม่แตก
- **dB (เดซิเบล)** หน่วยวัดความดัง ค่าติดลบหมายถึงเบากว่าระดับสูงสุด -45 dB ถือว่าเบามาก
- **ช่วงเงียบ (Silence)** ช่วงที่เสียงเบากว่าค่าที่กำหนดต่อเนื่องนานเกินเวลาที่ตั้งไว้ เครื่องมือจะย่อให้สั้นลง
- **Clipping (เสียงแตก)** อาการที่เสียงดังเกินขีดจำกัดจนถูกตัดยอด ทำให้เสียงแตกพร่า มักเกิดเมื่อเพิ่มระดับเสียงมากเกินไป
- **ความเร็วเสียง (Speed)** เปลี่ยนความเร็วในการเล่น เครื่องมือนี้เปลี่ยนระดับเสียงสูงต่ำตามความเร็วด้วย (2x เสียงสูงขึ้น 0.5x เสียงต่ำลง)
- **ประมวลผลบนอุปกรณ์ (Client-side)** งานทั้งหมดทำในเบราว์เซอร์ของคุณ ไฟล์เสียงไม่ถูกส่งไปที่เซิร์ฟเวอร์

## คำถามที่พบบ่อย

**ไฟล์ของฉันถูกอัปโหลดหรือไม่?**
ไม่ถูกอัปโหลด การอ่าน ตัด แปลง และเข้ารหัสทำในเบราว์เซอร์ของคุณทั้งหมด มีเพียงตัวเข้ารหัส MP3 ที่ถูกดาวน์โหลดจาก CDN หนึ่งครั้งเมื่อส่งออกเป็น MP3 ถ้าเลือก WAV จะไม่ต้องใช้ตัวเข้ารหัสนี้

**รองรับรูปแบบไฟล์อะไรบ้าง?**
นำเข้าได้ตามที่เบราว์เซอร์ของคุณถอดรหัสได้ เช่น MP3, WAV, M4A, AAC, OGG, FLAC และวิดีโอ MP4, WEBM, MOV บางไฟล์ เช่น MKV, AVI หรือวิดีโอที่ใช้ตัวเข้ารหัสพิเศษ อาจเปิดไม่ได้ ส่วนไฟล์ที่ได้ออกมาเป็น MP3 หรือ WAV

**ทำไมไฟล์ WAV ถึงใหญ่กว่า MP3 มาก?**
WAV ไม่บีบอัดข้อมูลเสียง เพลงยาว 3 นาทีแบบสเตอริโอจะมีขนาดราว 30 MB ขณะที่ MP3 ที่ 192 kbps จะมีขนาดราว 4 MB

**ไฟล์ยาวมากหรือใหญ่มากใช้ได้ไหม?**
เครื่องมือต้องถอดรหัสไฟล์ทั้งหมดเก็บในหน่วยความจำ ไฟล์เสียงยาวหลายชั่วโมงหรือมือถือรุ่นเก่าอาจช้าหรือหน่วยความจำไม่พอ แนะนำให้ตัดแบ่งทีละช่วง และอย่าปิดหรือสลับแท็บระหว่างประมวลผล

**ควรเลือก Bitrate เท่าไร?**
เพลงทั่วไปแนะนำ 192 kbps เพื่อสมดุลระหว่างคุณภาพและขนาด ถ้าต้องการคุณภาพสูงใช้ 256 ถึง 320 kbps ถ้าเป็นเสียงพูดหรือพอดแคสต์ใช้ 64 ถึง 96 kbps ก็ชัดเจนและไฟล์เล็ก

**เปลี่ยนความเร็วแล้วเสียงเพี้ยนใช่ไหม?**
ใช่ ในเครื่องมือนี้ความเร็วกับระดับเสียงเปลี่ยนไปพร้อมกัน เหมือนการเร่งหรือหน่วงแผ่นเสียง ถ้าต้องการเปลี่ยนเฉพาะความเร็วโดยไม่เปลี่ยนระดับเสียง ต้องใช้โปรแกรมตัดต่อเสียงเฉพาะทาง