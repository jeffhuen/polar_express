#!/bin/bash
set -euo pipefail

# Download the official Polar TypeScript SDK for parity comparison.
# The old polar-js repo is archived; the SDK now lives in the monorepo at
# sdk/typescript/src/<version>/services. Sparse-checkout just that subtree.
# Used by diff_js.sh and parity tests.
#
# Usage: ./sync_js.sh [api-version]   (default: 2026-10)

JS_DIR="priv/polar-sdk"
REPO="https://github.com/polarsource/polar.git"
API_VERSION="${1:-2026-10}"

echo "Fetching Polar TypeScript SDK (API version $API_VERSION)..."

# Clean previous copy
rm -rf "$JS_DIR"

git clone --depth 1 --filter=blob:none --sparse "$REPO" "$JS_DIR"
git -C "$JS_DIR" sparse-checkout set "sdk/typescript/src/${API_VERSION}/services"

# Verify we got service files
SERVICE_COUNT=$(find "$JS_DIR/sdk/typescript/src/$API_VERSION/services" -name "*.ts" -not -name "index.ts" 2>/dev/null | wc -l | tr -d ' ')
if [ "$SERVICE_COUNT" -eq 0 ]; then
  echo "ERROR: No service files found in downloaded TypeScript SDK." >&2
  rm -rf "$JS_DIR"
  exit 1
fi

echo "Downloaded Polar SDK to $JS_DIR ($SERVICE_COUNT service files)"
