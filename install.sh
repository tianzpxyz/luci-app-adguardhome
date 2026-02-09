#!/bin/sh
set -e

REPO="w9315273/luci-app-adguardhome"
API="https://api.github.com/repos/${REPO}/releases/latest"

echo "Getting latest release..."
URL="$(
  uclient-fetch -qO- "$API" \
  | jsonfilter -e '@.assets[@.name~="^luci-app-adguardhome-.*\\.apk$"].browser_download_url' \
  | head -n1
)"

[ -n "$URL" ] || { echo "ERROR: No .apk found in latest release"; exit 1; }

echo "Downloading: ${URL##*/}"
uclient-fetch -O /tmp/agh.apk "$URL"

echo "Installing..."
apk add --allow-untrusted /tmp/agh.apk
rm -f /tmp/agh.apk

echo "Done!"