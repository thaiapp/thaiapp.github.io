#!/bin/sh
# ดาวน์โหลด Inter (variable, latin) มาไว้ใน static/fonts เพื่อ self-host (ไม่พึ่ง Google Fonts)
set -e
cd "$(dirname "$0")/../static/fonts"
curl -fL "https://cdn.jsdelivr.net/fontsource/fonts/inter:vf@latest/latin-wght-normal.woff2" -o inter-latin-var.woff2
ls -la inter-latin-var.woff2
