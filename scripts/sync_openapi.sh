#!/bin/bash
set -euo pipefail

# Download the Polar OpenAPI spec
# Polar uses a single canonical OpenAPI endpoint at https://api.polar.sh/openapi.json
# No channels or release tags — always the current spec.

SPEC_DIR="priv/openapi"
SPEC_FILE="$SPEC_DIR/openapi.json"

SPEC_URL="https://api.polar.sh/openapi.json"

mkdir -p "$SPEC_DIR"

echo "Fetching latest Polar OpenAPI spec..."
echo "URL: $SPEC_URL"
curl -sL --fail "$SPEC_URL" -o "$SPEC_FILE"

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

# Extract version from spec's info.version field
SPEC_VERSION=$(grep -o '"version":"[^"]*"' "$SPEC_FILE" | head -1 | cut -d'"' -f4)
if [ -z "$SPEC_VERSION" ]; then
  echo "ERROR: Could not extract version from spec" >&2
  exit 1
fi

V1_COUNT=$(grep -c '"/v1/' "$SPEC_FILE" || true)
echo "Downloaded Polar OpenAPI spec version: $SPEC_VERSION"
echo "v1 paths found: $V1_COUNT"
echo "Spec saved to: $SPEC_FILE"
