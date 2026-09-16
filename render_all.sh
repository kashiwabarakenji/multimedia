#!/bin/bash
set -e

echo "=== 🚀 全スライドのレンダリングを開始します ==="

# 総合スライド
echo "📦 multimedia.qmd をレンダリング中..."
quarto render multimedia.qmd

# 個別テーマスライド
PARTS=(
  "part1_auth.qmd"
  "part2_security.qmd"
  "part3_money.qmd"
  "part4_crypto.qmd"
  "part5_sns.qmd"
  "part6_cloud.qmd"
  "part7_mobile.qmd"
  "part8_broadcast.qmd"
  "part9_database.qmd"
)

for file in "${PARTS[@]}"; do
  echo "📄 ${file} をレンダリング中..."
  quarto render "$file"
done

echo ""
echo "=== ✨ すべてのHTMLスライドの生成が完了しました！ ==="
echo "ブラウザで各HTMLを開いてPDF化できます（例: Chromeで開いて 印刷 -> PDF保存）。"
