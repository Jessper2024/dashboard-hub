#!/bin/bash
# 刷新数据看板中枢（双击即刷，零 Token）
# 功能：跑 5 个看板脚本 → 聚合 → 刷新 index.html → 推 GitHub Pages → 打开看板

set -e
PY=/Users/jessper/.workbuddy/binaries/python/envs/default/bin/python
SKILL=~/.workbuddy/skills/dashboard-hub
BOARD_DIR="$HOME/Life/学习工厂/00、看板中枢"

echo "═══ 刷新数据看板中枢 ═══"
"$PY" "$SKILL/scripts/dashboard.py"

echo ""
echo "═══ 推送到 GitHub Pages ═══"
cd "$BOARD_DIR"
git add -A
git -c user.name="Jessper2024" -c user.email="jessper@users.noreply.github.com" \
    commit -q -m "刷新看板 $(date '+%Y-%m-%d %H:%M:%S')" 2>/dev/null || true
git -c http.proxy= -c https.proxy= -c http.version=HTTP/1.1 push origin main 2>&1 | tail -1

echo ""
echo "═══ 打开看板 ═══"
open "$BOARD_DIR/index.html"

echo ""
echo "✓ 刷新完成"
