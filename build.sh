#!/bin/bash
# 從「第一輪-日期選擇器/index.html」(Artifact 格式) 包成 GitHub Pages 用的完整頁面
set -e
cd "$(dirname "$0")"
SRC=../第一輪-日期選擇器
URL=https://randy-classroom-tw.github.io/ratna-picker-mock/
{
cat <<HEAD
<!doctype html><html lang="zh-Hant"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="description" content="礦石配對器">
<meta property="og:type" content="website">
<meta property="og:url" content="${URL}">
<meta property="og:site_name" content="RATNA 瑯納">
<meta property="og:title" content="RATNA 瑯納">
<meta property="og:description" content="礦石配對器">
<meta property="og:image" content="${URL}og-image.png">
<meta property="og:image:width" content="1024">
<meta property="og:image:height" content="1024">
<meta name="twitter:card" content="summary">
<link rel="icon" type="image/png" href="favicon.png">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<style>:root{padding:env(safe-area-inset-top) 0 env(safe-area-inset-bottom)}body{margin:0}[hidden]{display:none!important}</style>
</head><body>
HEAD
cat "$SRC/index.html"
printf '\n</body></html>\n'
} > index.html
cp "$SRC/動畫示範.html" demo.html
