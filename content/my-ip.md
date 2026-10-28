---
title: ตรวจสอบ IP ของฉัน ออนไลน์ ฟรี
h1: ตรวจสอบ IP ของฉัน
description: ใช้ตรวจสอบ IP ของคุณ ตรวจสอบและวัดผลได้ง่าย รองรับทั้งมือถือ แท็บเล็ต และคอมพิวเตอร์ ชัดเจน ออกแบบให้ใช้ง่ายแม้เป็นครั้งแรก ฟรี ไม่ต้องติดตั้งใดๆ
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-26T09:00:00+07:00'
weight: 1
tool: true
topic: device
appCategory: UtilitiesApplication
keywords:
- ตรวจสอบ IP ของฉัน
- ตรวจสอบ IP ของฉัน ออนไลน์
- ทดสอบและวัดค่า
---

ที่อยู่ IP ของฉันคืออะไร? เปิดหน้านี้แล้วระบบจะแสดงที่อยู่ IPv4 และ IPv6 ของเครือข่ายที่คุณใช้อยู่ พร้อมข้อมูลเครือข่าย เช่น ผู้ให้บริการอินเทอร์เน็ต ประเทศ เมือง และเขตเวลา โดยอัตโนมัติ

<style>
.myip{max-width:760px;margin:1rem auto;font-family:inherit;color:inherit;line-height:1.5}
.myip *{box-sizing:border-box}
.myip-cards{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:12px;margin-bottom:16px}
.myip-card{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:14px 16px;background:rgba(128,128,128,.07)}
.myip-title{font-size:.95rem;font-weight:700;margin-bottom:8px;opacity:.85}
.myip-row{display:flex;align-items:center;justify-content:space-between;gap:10px;flex-wrap:wrap}
.myip-val{font-size:1.25rem;font-weight:700;word-break:break-all;min-width:0}
.myip-btn{cursor:pointer;border:1px solid rgba(128,128,128,.5);background:transparent;color:inherit;border-radius:8px;padding:6px 14px;font-size:.9rem;font-family:inherit}
.myip-btn:hover{background:rgba(128,128,128,.18)}
.myip-btn:disabled{opacity:.45;cursor:not-allowed}
.myip-info{border:1px solid rgba(128,128,128,.35);border-radius:12px;padding:6px 16px 10px}
.myip-info-title{font-size:1.05rem;font-weight:700;margin:10px 0 6px}
.myip-line{display:flex;justify-content:space-between;gap:16px;padding:8px 0;border-bottom:1px solid rgba(128,128,128,.2)}
.myip-line:last-child{border-bottom:0}
.myip-k{opacity:.75;flex:0 0 auto}
.myip-v{font-weight:600;text-align:right;word-break:break-all;min-width:0}
.myip-actions{margin-top:14px;text-align:center}
.myip-err{margin-top:10px;font-size:.9rem;opacity:.8;text-align:center}
@media (max-width:480px){.myip-line{flex-direction:column;gap:2px}.myip-v{text-align:left}}
</style>
<div class="myip" id="myip-app">
<div class="myip-cards">
<div class="myip-card"><div class="myip-title">IPv4 เครือข่ายปัจจุบัน</div><div class="myip-row"><span class="myip-val" id="big-v4">กำลังตรวจสอบ...</span><button type="button" class="myip-btn" id="copy-v4" data-target="big-v4" disabled>คัดลอก</button></div></div>
<div class="myip-card"><div class="myip-title">IPv6 เครือข่ายปัจจุบัน</div><div class="myip-row"><span class="myip-val" id="big-v6">กำลังตรวจสอบ...</span><button type="button" class="myip-btn" id="copy-v6" data-target="big-v6" disabled>คัดลอก</button></div></div>
</div>
<div class="myip-info">
<div class="myip-info-title">ข้อมูลเครือข่าย</div>
<div class="myip-line"><span class="myip-k">IPv4:</span><span class="myip-v" id="i-v4">-</span></div>
<div class="myip-line"><span class="myip-k">IPv6:</span><span class="myip-v" id="i-v6">-</span></div>
<div class="myip-line"><span class="myip-k">ผู้ให้บริการอินเทอร์เน็ต:</span><span class="myip-v" id="i-isp">-</span></div>
<div class="myip-line"><span class="myip-k">ASN:</span><span class="myip-v" id="i-asn">-</span></div>
<div class="myip-line"><span class="myip-k">ประเทศ:</span><span class="myip-v" id="i-country">-</span></div>
<div class="myip-line"><span class="myip-k">ภูมิภาค:</span><span class="myip-v" id="i-region">-</span></div>
<div class="myip-line"><span class="myip-k">รหัสภูมิภาค:</span><span class="myip-v" id="i-regioncode">-</span></div>
<div class="myip-line"><span class="myip-k">เมือง:</span><span class="myip-v" id="i-city">-</span></div>
<div class="myip-line"><span class="myip-k">เขตเวลา:</span><span class="myip-v" id="i-tz">-</span></div>
<div class="myip-line"><span class="myip-k">เวลาท้องถิ่น:</span><span class="myip-v" id="i-time">-</span></div>
<div class="myip-line"><span class="myip-k">รหัสไปรษณีย์:</span><span class="myip-v" id="i-postal">-</span></div>
<div class="myip-line"><span class="myip-k">ตำแหน่งทางภูมิศาสตร์:</span><span class="myip-v" id="i-geo">-</span></div>
</div>
<div class="myip-actions"><button type="button" class="myip-btn" id="myip-refresh">ตรวจสอบอีกครั้ง</button></div>
<div class="myip-err" id="myip-msg" role="status"></div>
<noscript><div class="myip-err">กรุณาเปิดใช้งาน JavaScript เพื่อใช้เครื่องมือนี้</div></noscript>
</div>
<script>
(function () {
  'use strict';
  var NA = 'ไม่สามารถใช้ได้';
  var tzName = null;
  var clock = null;
  function $(id) { return document.getElementById(id); }
  function setText(id, v) {
    var el = $(id);
    if (!el) return;
    el.textContent = (v === undefined || v === null || v === '') ? '-' : String(v);
  }
  // อ่านเป็นข้อความก่อนแล้วค่อย parse เอง เพื่อไม่ให้เกิด Unexpected token '<' เมื่อ API ตอบเป็น HTML
  function getJSON(url, ms) {
    var ctrl = (typeof AbortController !== 'undefined') ? new AbortController() : null;
    var timer = ctrl ? setTimeout(function () { ctrl.abort(); }, ms || 8000) : null;
    var opts = { cache: 'no-store' };
    if (ctrl) opts.signal = ctrl.signal;
    return fetch(url, opts).then(function (res) {
      if (timer) clearTimeout(timer);
      if (!res.ok) throw new Error('HTTP ' + res.status);
      return res.text();
    }).then(function (txt) {
      try { return JSON.parse(txt); } catch (e) { throw new Error('Invalid JSON'); }
    });
  }
  function isV4(s) { return typeof s === 'string' && /^(\d{1,3}\.){3}\d{1,3}$/.test(s); }
  function isV6(s) { return typeof s === 'string' && s.indexOf(':') > -1 && /^[0-9a-fA-F:.]+$/.test(s); }
  function firstOk(urls, check) {
    var i = 0;
    function next() {
      if (i >= urls.length) return Promise.resolve(null);
      var u = urls[i++];
      return getJSON(u, 7000).then(function (d) {
        return (d && check(d.ip)) ? d.ip : next();
      }).catch(next);
    }
    return next();
  }
  function getIPv4() {
    return firstOk(['https://api.ipify.org?format=json', 'https://ipv4.seeip.org/jsonip'], isV4);
  }
  function getIPv6() {
    return firstOk(['https://api6.ipify.org?format=json', 'https://ipv6.seeip.org/jsonip'], isV6);
  }
  function geoFromIpwho(ip) {
    return getJSON('https://ipwho.is/' + encodeURIComponent(ip), 8000).then(function (d) {
      if (!d || d.success === false) throw new Error('ipwho failed');
      var c = d.connection || {};
      var t = d.timezone || {};
      return {
        isp: c.isp || c.org, asn: c.asn ? 'AS' + c.asn : '', country: d.country,
        region: d.region, regionCode: d.region_code, city: d.city, tz: t.id,
        postal: d.postal, lat: d.latitude, lon: d.longitude
      };
    });
  }
  function geoFromIpapi(ip) {
    return getJSON('https://ipapi.co/' + encodeURIComponent(ip) + '/json/', 8000).then(function (d) {
      if (!d || d.error) throw new Error('ipapi failed');
      return {
        isp: d.org, asn: d.asn, country: d.country_name, region: d.region,
        regionCode: d.region_code, city: d.city, tz: d.timezone,
        postal: d.postal, lat: d.latitude, lon: d.longitude
      };
    });
  }
  function getGeo(ip) {
    return geoFromIpwho(ip).catch(function () { return geoFromIpapi(ip); });
  }
  function fmtTime(tz) {
    var opts = { timeZone: tz, year: 'numeric', month: '2-digit', day: '2-digit',
      hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: false };
    try { return new Intl.DateTimeFormat('th-TH-u-ca-gregory', opts).format(new Date()); }
    catch (e1) {
      try { return new Intl.DateTimeFormat('en-GB', opts).format(new Date()); }
      catch (e2) { return '-'; }
    }
  }
  function startClock(tz) {
    if (clock) { clearInterval(clock); clock = null; }
    tzName = tz || null;
    if (!tzName) { setText('i-time', '-'); return; }
    setText('i-time', fmtTime(tzName));
    clock = setInterval(function () { setText('i-time', fmtTime(tzName)); }, 1000);
  }
  function fillGeo(g) {
    setText('i-isp', g.isp);
    setText('i-asn', g.asn);
    setText('i-country', g.country);
    setText('i-region', g.region);
    setText('i-regioncode', g.regionCode);
    setText('i-city', g.city);
    setText('i-tz', g.tz);
    setText('i-postal', g.postal);
    var hasGeo = (g.lat !== undefined && g.lat !== null && g.lat !== '' && g.lon !== undefined && g.lon !== null && g.lon !== '');
    setText('i-geo', hasGeo ? (g.lat + ', ' + g.lon) : '-');
    startClock(g.tz);
  }
  function resetInfo() {
    ['i-v4', 'i-v6', 'i-isp', 'i-asn', 'i-country', 'i-region', 'i-regioncode', 'i-city', 'i-tz', 'i-time', 'i-postal', 'i-geo'].forEach(function (id) { setText(id, '-'); });
    startClock(null);
    setText('big-v4', 'กำลังตรวจสอบ...');
    setText('big-v6', 'กำลังตรวจสอบ...');
    $('copy-v4').disabled = true;
    $('copy-v6').disabled = true;
    setText('myip-msg', '');
  }
  function run() {
    var btn = $('myip-refresh');
    btn.disabled = true;
    resetInfo();
    Promise.all([getIPv4(), getIPv6()]).then(function (r) {
      var v4 = r[0], v6 = r[1];
      setText('big-v4', v4 || NA);
      setText('big-v6', v6 || NA);
      setText('i-v4', v4 || NA);
      setText('i-v6', v6 || NA);
      $('copy-v4').disabled = !v4;
      $('copy-v6').disabled = !v6;
      var ip = v4 || v6;
      if (!ip) {
        setText('myip-msg', 'ไม่สามารถตรวจสอบ IP ได้ กรุณาปิดตัวบล็อกโฆษณาหรือลองใหม่อีกครั้ง');
        return null;
      }
      return getGeo(ip).then(fillGeo).catch(function () {
        setText('myip-msg', 'ดึงข้อมูลตำแหน่งและผู้ให้บริการไม่สำเร็จ แต่ IP ด้านบนถูกต้อง');
      });
    }).catch(function () {
      setText('big-v4', NA);
      setText('big-v6', NA);
      setText('myip-msg', 'เกิดข้อผิดพลาดในการเชื่อมต่อ กรุณาลองใหม่อีกครั้ง');
    }).then(function () {
      btn.disabled = false;
    });
  }
  function copyText(text, done) {
    function fallback() {
      try {
        var ta = document.createElement('textarea');
        ta.value = text;
        ta.setAttribute('readonly', '');
        ta.style.position = 'fixed';
        ta.style.opacity = '0';
        document.body.appendChild(ta);
        ta.select();
        document.execCommand('copy');
        document.body.removeChild(ta);
        done(true);
      } catch (e) { done(false); }
    }
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(function () { done(true); }, fallback);
    } else { fallback(); }
  }
  function bindCopy(btnId) {
    var btn = $(btnId);
    btn.addEventListener('click', function () {
      var text = $(btn.getAttribute('data-target')).textContent;
      copyText(text, function (ok) {
        btn.textContent = ok ? 'คัดลอกแล้ว' : 'คัดลอกไม่สำเร็จ';
        setTimeout(function () { btn.textContent = 'คัดลอก'; }, 1500);
      });
    });
  }
  bindCopy('copy-v4');
  bindCopy('copy-v6');
  $('myip-refresh').addEventListener('click', run);
  run();
})();
</script>

## วิธีใช้งานเครื่องมือตรวจสอบ IP

1. **เปิดหน้านี้** ระบบจะเริ่มตรวจสอบ IP ของคุณทันที ไม่ต้องกรอกข้อมูลหรือติดตั้งโปรแกรมใดๆ
2. **ดูผลลัพธ์ด้านบน** ช่อง "IPv4 เครือข่ายปัจจุบัน" และ "IPv6 เครือข่ายปัจจุบัน" แสดงที่อยู่ IP ที่เว็บไซต์อื่นมองเห็นจากอุปกรณ์ของคุณ
3. **กดปุ่ม "คัดลอก"** เพื่อคัดลอก IP ไปวางในแอปแชต อีเมล หรือแบบฟอร์มที่ต้องการ
4. **อ่านตาราง "ข้อมูลเครือข่าย"** เพื่อดูผู้ให้บริการอินเทอร์เน็ต ASN ประเทศ เมือง เขตเวลา และข้อมูลอื่นๆ ที่เกี่ยวข้องกับ IP นั้น
5. **กด "ตรวจสอบอีกครั้ง"** หลังเปลี่ยนเครือข่าย เช่น สลับจาก Wi-Fi เป็นข้อมูลมือถือ หรือเปิด/ปิด VPN เพื่อดูว่า IP เปลี่ยนไปหรือไม่

**เคล็ดลับ:** ถ้าต้องการทดสอบว่า VPN ทำงานหรือไม่ ให้ตรวจสอบ IP ก่อนและหลังเปิด VPN แล้วเปรียบเทียบผลลัพธ์

## คำอธิบายศัพท์ที่ควรรู้

| คำศัพท์ | ความหมายโดยย่อ |
| --- | --- |
| **IP Address** | รหัสเฉพาะของอุปกรณ์หรือเครือข่ายที่เชื่อมต่ออินเทอร์เน็ต ใช้ระบุปลายทางเพื่อให้ส่งข้อมูลถึงกันได้ |
| **IPv4** | IP แบบดั้งเดิม เป็นตัวเลข 4 ชุดคั่นด้วยจุด เช่น `1.1.1.1` ยังเป็นรูปแบบที่ใช้กันแพร่หลายที่สุด |
| **IPv6** | IP รุ่นใหม่ ใช้เลขฐานสิบหกคั่นด้วยเครื่องหมายโคลอน เช่น `2001:4860:4860::8844` มีจำนวนที่อยู่มากกว่า IPv4 มาก |
| **ผู้ให้บริการอินเทอร์เน็ต (ISP)** | บริษัทที่ให้บริการเชื่อมต่ออินเทอร์เน็ตแก่คุณ เช่น AIS, True, NT |
| **ASN** | Autonomous System Number หมายเลขประจำเครือข่ายขนาดใหญ่ที่บริหารโดยองค์กรเดียว เช่น ISP ใช้ระบุว่า IP นี้เป็นของเครือข่ายใด |
| **ประเทศ** | ประเทศที่ฐานข้อมูล IP ระบุว่า IP นี้ลงทะเบียนหรือใช้งานอยู่ |
| **ภูมิภาค** | เขตการปกครองระดับแรกของประเทศ เช่น จังหวัดหรือรัฐ |
| **รหัสภูมิภาค** | รหัสย่อของภูมิภาคข้างต้น ใช้อ้างอิงในระบบคอมพิวเตอร์ |
| **เมือง** | เมืองโดยประมาณที่ IP นี้ถูกระบุว่าอยู่ ซึ่งมักเป็นตำแหน่งของศูนย์กลางเครือข่ายของ ISP ไม่ใช่บ้านของคุณ |
| **เขตเวลา** | โซนเวลามาตรฐานของพื้นที่นั้น เช่น `Asia/Bangkok` (UTC+7) |
| **เวลาท้องถิ่น** | วันและเวลาปัจจุบันตามเขตเวลาของตำแหน่งที่ IP ระบุ อัปเดตทุกวินาที |
| **รหัสไปรษณีย์** | รหัสไปรษณีย์โดยประมาณของพื้นที่ที่ IP ระบุ อาจไม่แสดงในบางเครือข่าย |
| **ตำแหน่งทางภูมิศาสตร์** | พิกัดละติจูดและลองจิจูดโดยประมาณของ IP เป็นค่าคร่าวๆ ระดับเมืองหรือย่าน ไม่ใช่ที่อยู่จริง |
| **Public IP** | IP ที่เว็บไซต์ภายนอกมองเห็น ต่างจาก IP ภายในบ้าน (เช่น `192.168.x.x`) ที่ใช้ในเครือข่ายท้องถิ่นเท่านั้น |
| **VPN / Proxy** | บริการที่ส่งการเชื่อมต่อผ่านเซิร์ฟเวอร์อื่น ทำให้ IP และตำแหน่งที่แสดงเป็นของเซิร์ฟเวอร์นั้นแทน |

## IPv4 และ IPv6

คุณอาจมีทั้งที่อยู่ IPv4 และ IPv6 ขึ้นอยู่กับการตั้งค่าเครือข่าย หลายอุปกรณ์ใช้ IPv4 เพื่อความเข้ากันได้กับระบบเก่า และรองรับ IPv6 สำหรับการเชื่อมต่อสมัยใหม่

## ทำไมแสดง "ไม่สามารถใช้ได้"?

ถ้า IPv4 หรือ IPv6 แสดง "ไม่สามารถใช้ได้" หมายความว่าผู้ให้บริการอินเทอร์เน็ตของคุณไม่รองรับประเภทนั้น เราเตอร์ไม่ได้เปิดใช้ หรืออุปกรณ์ไม่ได้ตั้งค่าไว้ ถือเป็นเรื่องปกติ เพราะหลายเครือข่ายมีเพียง IPv4 เท่านั้น

## คำถามที่พบบ่อย

**ข้อมูลตำแหน่งตรงกับที่อยู่จริงของฉันไหม?**
ไม่ตรงเสมอไป ตำแหน่งจาก IP เป็นค่าประมาณจากฐานข้อมูล มักแสดงเมืองหรือที่ตั้งของ ISP ไม่ใช่ที่อยู่บ้านของคุณ

**IP ของฉันเปลี่ยนได้ไหม?**
ได้ ผู้ให้บริการส่วนใหญ่ใช้ IP แบบเปลี่ยนแปลงได้ (Dynamic IP) การรีสตาร์ทเราเตอร์ สลับเครือข่าย หรือใช้ VPN อาจทำให้ IP เปลี่ยน

**ควรเปิดเผย IP ให้ผู้อื่นไหม?**
IP เพียงอย่างเดียวไม่ได้ระบุตัวตนหรือที่อยู่จริงของคุณ แต่ไม่ควรโพสต์ในที่สาธารณะโดยไม่จำเป็น