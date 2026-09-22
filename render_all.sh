#!/bin/bash
set -e

echo "=== 🚀 全スライドのレンダリングを開始します ==="

# 総合スライド
echo "📦 multimedia.qmd をレンダリング中..."
quarto render multimedia.qmd

# 個別テーマスライド
SLIDES=(
  "auth.qmd"
  "security.qmd"
  "money.qmd"
  "crypto.qmd"
  "sns.qmd"
  "cloud.qmd"
  "mobile.qmd"
  "broadcast.qmd"
  "database.qmd"
  "time.qmd"
)

for file in "${SLIDES[@]}"; do
  echo "📄 ${file} をレンダリング中..."
  quarto render "$file"
done

echo ""
echo "=== ✨ すべてのHTMLスライドの生成が完了しました！ ==="
echo "ブラウザで各HTMLを開いてPDF化できます（例: Chromeで開いて 印刷 -> PDF保存）。"
