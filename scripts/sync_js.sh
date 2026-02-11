#!/bin/bash
set -euo pipefail

# Download the latest official Polar JS SDK for parity comparison.
# Used by diff_js.sh and parity tests.

JS_DIR="priv/polar-js-main"
REPO="polarsource/polar-js"

echo "Fetching latest polar-js main branch..."

# Clean previous copy
rm -rf "$JS_DIR"
mkdir -p "$JS_DIR"

# Download and extract main tarball (faster than git clone)
curl -sL "https://github.com/$REPO/archive/refs/heads/main.tar.gz" \
  | tar xz --strip-components=1 -C "$JS_DIR"

# Verify we got service files
SERVICE_COUNT=$(find "$JS_DIR/src/sdk" -name "*.ts" -not -name "sdk.ts" 2>/dev/null | wc -l | tr -d ' ')
if [ "$SERVICE_COUNT" -eq 0 ]; then
  echo "ERROR: No service files found in downloaded JavaScript SDK." >&2
  rm -rf "$JS_DIR"
  exit 1
fi

echo "Downloaded polar-js main to $JS_DIR ($SERVICE_COUNT service files)"
