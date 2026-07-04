#!/usr/bin/env bash
# Localize the AI placeholder images: download them into images/ and
# rewrite the CDN URLs in index.html to local paths.
# Run from the repo root:  bash localize-images.sh
set -eu
cd "$(dirname "$0")"
mkdir -p images

HERO="https://d8j0ntlcm91z4.cloudfront.net/user_3FYPOuVQMLPXyvQyBg7B3ZWm6x9/hf_20260623_223601_4cd94d3f-c0b9-4820-bf9a-5f9a45c2883b.png"
LATTE="https://d8j0ntlcm91z4.cloudfront.net/user_3FYPOuVQMLPXyvQyBg7B3ZWm6x9/hf_20260623_223715_7bc2b9c7-31ba-4db6-a0ba-8261d42f1b35.png"
BREAKFAST="https://d8j0ntlcm91z4.cloudfront.net/user_3FYPOuVQMLPXyvQyBg7B3ZWm6x9/hf_20260623_223817_96e3968c-160f-4c95-84cf-17e5cee233c8.png"

echo "Downloading images..."
curl -fSL "$HERO"      -o images/hero.png
curl -fSL "$LATTE"     -o images/latte.png
curl -fSL "$BREAKFAST" -o images/breakfast.png

echo "Rewriting paths in index.html..."
tmp="$(mktemp)"
sed -e "s#${HERO}#images/hero.png#g" \
    -e "s#${LATTE}#images/latte.png#g" \
    -e "s#${BREAKFAST}#images/breakfast.png#g" \
    index.html > "$tmp" && mv "$tmp" index.html

echo "Done. Images saved to images/ and index.html now uses local paths."
echo "Tip: replace these AI placeholders with real photos of the cafe (keep the same filenames)."
