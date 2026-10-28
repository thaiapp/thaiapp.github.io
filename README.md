# ThaiApp (thaiapp.github.io) - Hugo site

ต้องใช้ Hugo >= 0.128 (extended หรือ standard ก็ได้)

## ขั้นตอนหลังได้ไฟล์ชุดนี้
1. `sh scripts/get-fonts.sh`  ดาวน์โหลด Inter (self-host) ไปไว้ที่ `static/fonts/inter-latin-var.woff2`
2. แก้ `data/author.yaml` (ชื่อ ตำแหน่ง ประวัติ ลิงก์ sameAs) และอีเมลใน `content/contact.md`, `content/privacy.md`
3. ใส่โค้ดเครื่องมือ (inline CSS + JS) ใน body ของแต่ละ `content/**/*.md` หลัง frontmatter
4. สร้าง repository `thaiapp/thaiapp.github.io` แล้ว push ไฟล์ทั้งหมด (workflow `.github/workflows/hugo.yml` จะ build + deploy เอง)
5. Settings > Pages > Source = GitHub Actions
6. ส่ง `https://thaiapp.github.io/sitemap.xml` ใน Google Search Console

## ตัวอย่างหน้าเครื่องมือ (ใส่ใน body ได้เลย)
อย่าเว้นบรรทัดว่างภายในบล็อก `<style>` / `<script>` เพราะ Markdown จะตัดบล็อก HTML

```html
<div id="app" style="min-height:120px"></div>
<style>#app{padding:16px;border:1px solid #e2e8f0;border-radius:14px}</style>
<script>document.getElementById("app").textContent="พร้อมใช้งาน"</script>
```
กำหนด `min-height` ให้พื้นที่เครื่องมือเพื่อไม่ให้ layout เลื่อน (CLS)

## โครงสร้าง
- `hugo.toml` ตั้งค่า (baseURL, th, ปิด RSS/taxonomy, JSON search index `/search.json`)
- `layouts/` เทมเพลต + JSON-LD (`partials/schema.html`) + breadcrumb + sitemap/robots
- `assets/css/main.css` CSS ถูก inline ลง `<head>` (ไม่มี request CSS)
- `data/categories.yaml` 10 หมวดหมู่ / `data/author.yaml` ผู้เขียน (E-E-A-T)
- `scripts/generate_content.py` สร้าง `content/` ใหม่ทั้งหมดจาก TSV (จะเขียนทับไฟล์ที่แก้แล้ว)
