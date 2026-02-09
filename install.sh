#!/bin/sh
set -e
REPO="w9315273/luci-app-adguardhome"
URL=$(uclient-fetch -qO- "https://api.github.com/repos/${REPO}/releases/latest" | awk -F'"' '/browser_download_url.*\.apk/ {print $4; exit}')
uclient-fetch -O /tmp/agh.apk "$URL" && apk add --allow-untrusted /tmp/agh.apk && rm -f /tmp/agh.apk