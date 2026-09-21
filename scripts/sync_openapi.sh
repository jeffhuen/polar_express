#!/bin/bash
set -euo pipefail

# Download the Polar OpenAPI spec.
# Polar publishes versioned specs in the monorepo at docs/openapi/<version>.openapi.json
# (e.g. 2026-04, 2026-10). The old live endpoint https://api.polar.sh/openapi.json
# is gone (404) and polar-js is archived, so pin a version here.
#
# Fetched via git rather than raw.githubusercontent.com: the latter is not
# reliably reachable from CI egress, while github.com always is (checkout).
#
# Usage: ./sync_openapi.sh [version]   (default: 2026-10)

SPEC_DIR="priv/openapi"
SPEC_FILE="$SPEC_DIR/openapi.json"

API_VERSION="${1:-2026-10}"
REPO="https://github.com/polarsource/polar.git"
SPEC_PATH="docs/openapi/${API_VERSION}.openapi.json"

mkdir -p "$SPEC_DIR"

echo "Fetching Polar OpenAPI spec..."
echo "Version: $API_VERSION"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "Cloning polarsource/polar (sparse)..."
git clone --depth 1 --filter=blob:none --sparse "$REPO" "$TMP_DIR/polar"
echo "Setting sparse checkout..."
git -C "$TMP_DIR/polar" sparse-checkout set docs/openapi
echo "Clone OK."

if [ ! -f "$TMP_DIR/polar/$SPEC_PATH" ]; then
  echo "ERROR: $SPEC_PATH not found in polarsource/polar" >&2
  exit 1
fi

cp "$TMP_DIR/polar/$SPEC_PATH" "$SPEC_FILE"

# Validate: check for openapi and paths
if ! grep -q '"openapi"' "$SPEC_FILE"; then
  echo "ERROR: Downloaded spec is not valid OpenAPI (missing 'openapi' field)" >&2
  rm -f "$SPEC_FILE"
  exit 1
fi

if ! grep -q '"/v1/' "$SPEC_FILE"; then
  echo "ERROR: Spec contains no v1 paths" >&2
  rm -f "$SPEC_FILE"
  exit 1
fi

# Extract version from spec's info.version field (tolerates pretty-printed JSON)
SPEC_VERSION=$(grep -o '"version": *"[^"]*"' "$SPEC_FILE" | head -1 | cut -d'"' -f4)
if [ -z "$SPEC_VERSION" ]; then
  echo "ERROR: Could not extract version from spec" >&2
  exit 1
fi

V1_COUNT=$(grep -c '"/v1/' "$SPEC_FILE" || true)
echo "Downloaded Polar OpenAPI spec version: $SPEC_VERSION"
echo "v1 paths found: $V1_COUNT"
echo "Spec saved to: $SPEC_FILE"
