---
title: โยนหัวก้อย ออนไลน์ ฟรี
h1: โยนหัวก้อย
description: โยนหัวก้อยออนไลน์ฟรี พลิกเหรียญ 3 มิติ สุ่มผลหัวหรือก้อยอย่างยุติธรรม เหมาะกับตัดสินใจ แบ่งทีม และเล่นเกม ใช้ได้ทันที ไม่ต้องสมัคร พร้อมสถิติและประวัติ
date: '2026-10-26T09:00:00+07:00'
lastmod: '2026-10-28T09:00:00+07:00'
weight: 12
tool: true
topic: random
appCategory: UtilitiesApplication
keywords:
- โยนหัวก้อย
- โยนหัวก้อย ออนไลน์
- สุ่มและคำนวณ
---
<style>
.cf-app{--cf-bg:#f6f7fb;--cf-card:#fff;--cf-text:#1f2430;--cf-muted:#6b7280;--cf-line:#e3e6ee;--cf-accent:#d9a400;--cf-head:#2f7d4f;--cf-tail:#b4472f;max-width:560px;margin:1.5rem auto;padding:1.25rem;background:var(--cf-bg);border:1px solid var(--cf-line);border-radius:16px;color:var(--cf-text);font-family:inherit;box-sizing:border-box}
@media (prefers-color-scheme:dark){.cf-app{--cf-bg:#1b1f2a;--cf-card:#242a38;--cf-text:#eef0f6;--cf-muted:#a0a7b8;--cf-line:#343b4d;--cf-accent:#f2c230;--cf-head:#5fc98a;--cf-tail:#f08a6f}}
.cf-app *{box-sizing:border-box}
.cf-stage{perspective:900px;display:flex;justify-content:center;align-items:center;height:240px}
.cf-lift{width:170px;height:170px}
.cf-lift.cf-up{animation:cf-lift 1.6s ease-in-out}
@keyframes cf-lift{0%{transform:translateY(0) scale(1)}45%{transform:translateY(-55px) scale(1.18)}100%{transform:translateY(0) scale(1)}}
.cf-coin{position:relative;width:170px;height:170px;transform-style:preserve-3d;transition:transform 1.6s cubic-bezier(.2,.7,.2,1);cursor:pointer;outline:none;border-radius:50%}
.cf-coin:focus-visible{box-shadow:0 0 0 4px var(--cf-accent)}
.cf-face{position:absolute;inset:0;border-radius:50%;display:flex;flex-direction:column;align-items:center;justify-content:center;backface-visibility:hidden;-webkit-backface-visibility:hidden;background:radial-gradient(circle at 35% 30%,#fff3b0,#f2c230 45%,#b98600 100%);border:6px solid #a87800;box-shadow:inset 0 0 0 6px rgba(255,255,255,.35),0 6px 16px rgba(0,0,0,.25);color:#5a3f00;user-select:none}
.cf-face b{font-size:2.6rem;line-height:1}
.cf-face span{font-size:1rem;margin-top:.35rem;letter-spacing:.05em}
.cf-tail{transform:rotateX(180deg)}
.cf-result{text-align:center;font-size:1.5rem;font-weight:700;min-height:2.2rem;margin:.25rem 0 1rem}
.cf-btns{display:flex;gap:.6rem;justify-content:center;flex-wrap:wrap}
.cf-btn{border:0;border-radius:999px;padding:.75rem 1.8rem;font-size:1.05rem;font-weight:700;cursor:pointer;background:var(--cf-accent);color:#2b2000}
.cf-btn:disabled{opacity:.55;cursor:not-allowed}
.cf-btn.cf-ghost{background:transparent;color:var(--cf-text);border:1px solid var(--cf-line)}
.cf-stats{display:grid;grid-template-columns:repeat(3,1fr);gap:.6rem;margin-top:1.25rem}
.cf-stat{background:var(--cf-card);border:1px solid var(--cf-line);border-radius:12px;padding:.7rem .4rem;text-align:center}
.cf-stat small{display:block;color:var(--cf-muted);font-size:.8rem}
.cf-stat strong{font-size:1.4rem}
.cf-stat em{display:block;font-style:normal;color:var(--cf-muted);font-size:.8rem}
.cf-hist-title{margin:1.1rem 0 .4rem;font-size:.9rem;color:var(--cf-muted)}
.cf-hist{display:flex;flex-wrap:wrap;gap:.35rem;min-height:2rem}
.cf-chip{padding:.2rem .65rem;border-radius:999px;font-size:.85rem;font-weight:600;color:#fff}
.cf-chip.cf-h{background:var(--cf-head);color:#0b1f13}
.cf-chip.cf-t{background:var(--cf-tail);color:#2a0d05}
@media (prefers-color-scheme:light){.cf-chip.cf-h,.cf-chip.cf-t{color:#fff}}
@media (prefers-reduced-motion:reduce){.cf-coin{transition-duration:.01s}.cf-lift.cf-up{animation:none}}
.cf-guide dt{font-weight:700;margin-top:.8rem}
.cf-guide dd{margin:.15rem 0 0 0;color:inherit}
</style>
<div class="cf-app" id="cf-app">
<div class="cf-stage"><div class="cf-lift" id="cf-lift"><div class="cf-coin" id="cf-coin" role="button" tabindex="0" aria-label="เหรียญ กดเพื่อโยน"><div class="cf-face cf-head"><b>หัว</b><span>HEADS</span></div><div class="cf-face cf-tail"><b>ก้อย</b><span>TAILS</span></div></div></div></div>
<div class="cf-result" id="cf-result" aria-live="polite">กดเหรียญหรือปุ่มเพื่อโยน</div>
<div class="cf-btns"><button type="button" class="cf-btn" id="cf-flip">โยนเหรียญ</button><button type="button" class="cf-btn cf-ghost" id="cf-reset">รีเซ็ต</button></div>
<div class="cf-stats">
<div class="cf-stat"><small>หัว</small><strong id="cf-n-h">0</strong><em id="cf-p-h">0%</em></div>
<div class="cf-stat"><small>ก้อย</small><strong id="cf-n-t">0</strong><em id="cf-p-t">0%</em></div>
<div class="cf-stat"><small>ทั้งหมด</small><strong id="cf-n-all">0</strong><em>ครั้ง</em></div>
</div>
<div class="cf-hist-title">ประวัติการโยน (ล่าสุดอยู่ซ้ายสุด สูงสุด 20 ครั้ง)</div>
<div class="cf-hist" id="cf-hist"></div>
</div>
<script>
(function () {
  var coin = document.getElementById('cf-coin');
  var lift = document.getElementById('cf-lift');
  var flipBtn = document.getElementById('cf-flip');
  var resetBtn = document.getElementById('cf-reset');
  var resultEl = document.getElementById('cf-result');
  var histEl = document.getElementById('cf-hist');
  var nH = document.getElementById('cf-n-h');
  var nT = document.getElementById('cf-n-t');
  var nAll = document.getElementById('cf-n-all');
  var pH = document.getElementById('cf-p-h');
  var pT = document.getElementById('cf-p-t');
  if (!coin || !flipBtn) { return; }
  var rotation = 0;
  var heads = 0;
  var tails = 0;
  var history = [];
  var busy = false;
  var timer = null;
  function randomBit() {
    try {
      var c = window.crypto || window.msCrypto;
      if (c && c.getRandomValues) {
        var arr = new Uint8Array(1);
        c.getRandomValues(arr);
        return arr[0] % 2;
      }
    } catch (e) {}
    return Math.random() > 0.5 ? 1 : 0;
  }
  function percent(n, total) {
    if (total === 0) { return '0%'; }
    return (n * 100 / total).toFixed(1) + '%';
  }
  function render() {
    var total = heads + tails;
    nH.textContent = String(heads);
    nT.textContent = String(tails);
    nAll.textContent = String(total);
    pH.textContent = percent(heads, total);
    pT.textContent = percent(tails, total);
    histEl.textContent = '';
    for (var i = 0; i !== history.length; i++) {
      var chip = document.createElement('span');
      var isHead = history[i] === 0;
      chip.className = 'cf-chip ' + (isHead ? 'cf-h' : 'cf-t');
      chip.textContent = isHead ? 'หัว' : 'ก้อย';
      histEl.appendChild(chip);
    }
  }
  function flip() {
    if (busy) { return; }
    busy = true;
    flipBtn.disabled = true;
    resultEl.textContent = 'กำลังโยน...';
    var outcome = randomBit();
    var target = outcome === 0 ? 0 : 180;
    var current = ((rotation % 360) + 360) % 360;
    var diff = ((target - current) + 360) % 360;
    var spins = 360 * (4 + (randomBit() + randomBit() * 2));
    rotation = rotation + spins + diff;
    coin.style.transform = 'rotateX(' + rotation + 'deg)';
    lift.classList.remove('cf-up');
    void lift.offsetWidth;
    lift.classList.add('cf-up');
    var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    timer = setTimeout(function () {
      if (outcome === 0) { heads += 1; } else { tails += 1; }
      history.unshift(outcome);
      if (history.length > 20) { history.pop(); }
      resultEl.textContent = 'ผลลัพธ์: ' + (outcome === 0 ? 'หัว' : 'ก้อย');
      render();
      busy = false;
      flipBtn.disabled = false;
    }, reduce ? 50 : 1700);
  }
  function reset() {
    if (timer) { clearTimeout(timer); timer = null; }
    busy = false;
    flipBtn.disabled = false;
    heads = 0;
    tails = 0;
    history = [];
    rotation = 0;
    coin.style.transition = 'none';
    coin.style.transform = 'rotateX(0deg)';
    void coin.offsetWidth;
    coin.style.transition = '';
    lift.classList.remove('cf-up');
    resultEl.textContent = 'กดเหรียญหรือปุ่มเพื่อโยน';
    render();
  }
  flipBtn.addEventListener('click', flip);
  resetBtn.addEventListener('click', reset);
  coin.addEventListener('click', flip);
  coin.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') {
      e.preventDefault();
      flip();
    }
  });
  render();
})();
</script>

## วิธีใช้งานเครื่องมือโยนหัวก้อย

1. ตั้งใจว่าจะให้ "หัว" หรือ "ก้อย" เป็นตัวแทนของตัวเลือกใด เช่น หัว = ใช่ ก้อย = ไม่ใช่ หรือหัว = ทีม A ก้อย = ทีม B
2. กดที่เหรียญ หรือกดปุ่ม **โยนเหรียญ** เหรียญจะลอยขึ้นและหมุนในแบบ 3 มิติ
3. รอประมาณ 2 วินาทีจนเหรียญหยุด ผลลัพธ์จะแสดงใต้เหรียญ
4. ดูสถิติจำนวนครั้งและเปอร์เซ็นต์ของหัวและก้อย รวมถึงประวัติการโยนด้านล่าง
5. ต้องการเริ่มนับใหม่ ให้กดปุ่ม **รีเซ็ต** ระบบจะล้างสถิติและประวัติทั้งหมด
6. หากใช้คีย์บอร์ด ให้กด Tab ไปที่เหรียญ แล้วกด Enter หรือ Space เพื่อโยน

## คำอธิบายศัพท์

<dl class="cf-guide">
<dt>โยนหัวก้อย</dt>
<dd>วิธีตัดสินใจแบบง่ายๆ ด้วยการโยนเหรียญแล้วดูว่าหงายด้านใด เพื่อเลือกระหว่างสองทางเลือกอย่างเป็นกลาง</dd>
<dt>หัว (Heads)</dt>
<dd>ด้านหน้าของเหรียญที่มักมีรูปศีรษะบุคคล ในเครื่องมือนี้ใช้แทนผลลัพธ์ฝั่งแรก เช่น "ใช่"</dd>
<dt>ก้อย (Tails)</dt>
<dd>ด้านหลังของเหรียญ ในเครื่องมือนี้ใช้แทนผลลัพธ์ฝั่งที่สอง เช่น "ไม่ใช่"</dd>
<dt>ความน่าจะเป็น 50%</dt>
<dd>โอกาสที่จะออกหัวหรือก้อยเท่ากันในทางทฤษฎี แต่การโยนจำนวนน้อยครั้งอาจให้ผลไม่เท่ากันได้ตามธรรมชาติ</dd>
<dt>การสุ่มแบบเข้ารหัส (crypto.getRandomValues)</dt>
<dd>ฟังก์ชันสุ่มของเบราว์เซอร์ที่มีคุณภาพสูงกว่า Math.random จึงคาดเดาผลได้ยากและช่วยให้ผลลัพธ์ยุติธรรม</dd>
<dt>สถิติ</dt>
<dd>จำนวนครั้งและเปอร์เซ็นต์ของหัวและก้อยที่ออกในรอบนี้ ใช้ดูภาพรวมว่าผลออกสมดุลหรือไม่</dd>
<dt>ประวัติการโยน</dt>
<dd>รายการผลลัพธ์ล่าสุดสูงสุด 20 ครั้ง เรียงจากใหม่ไปเก่า</dd>
<dt>รีเซ็ต</dt>
<dd>ปุ่มล้างสถิติและประวัติทั้งหมดเพื่อเริ่มนับใหม่ ข้อมูลไม่ถูกส่งออกหรือเก็บไว้ในเซิร์ฟเวอร์</dd>
</dl>