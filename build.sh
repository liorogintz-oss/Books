#!/bin/sh
# Builds index.html (GitHub Pages) from app.html (the shared page source).
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="he" dir="rtl">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<style>body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '<script src="https://www.gstatic.com/firebasejs/10.12.2/firebase-app-compat.js"></script>\n'
  printf '<script src="https://www.gstatic.com/firebasejs/10.12.2/firebase-firestore-compat.js"></script>\n'
  printf '<script src="firebase-config.js"></script>\n'
  printf '</head>\n<body>\n'
  cat app.html
  printf '\n</body>\n</html>\n'
} > index.html
