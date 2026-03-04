#!/bin/bash
# Lightweight dashboard update - NO AI calls, just git operations
cd /Users/matrixai/.openclaw/workspace/mission-control
timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
sed -i '' "s/lastUpdated\": \"[^\"]*\"/lastUpdated\": \"$timestamp\"/" data/dashboard-data.json
git add -A
git commit -m "Auto-update: $timestamp" --quiet
git push origin main --quiet
