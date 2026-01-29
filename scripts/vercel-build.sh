#!/usr/bin/env bash
set -euo pipefail

HUGO_VERSION="${HUGO_VERSION:-0.131.0}"
HUGO_DIR="${HUGO_DIR:-.hugo}"
HUGO_BIN="$HUGO_DIR/hugo"

if [ ! -x "$HUGO_BIN" ]; then
  echo "Downloading Hugo ${HUGO_VERSION}..."
  mkdir -p "$HUGO_DIR"
  curl -L "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz" -o /tmp/hugo.tar.gz
  tar -xzf /tmp/hugo.tar.gz -C "$HUGO_DIR"
  chmod +x "$HUGO_BIN"
fi

"$HUGO_BIN" version
"$HUGO_BIN" --gc --minify
