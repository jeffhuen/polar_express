#!/bin/bash
set -euo pipefail

# Compare generated Elixir SDK against the official Polar TypeScript SDK reference.
# Compares service file names and counts.
# Exits non-zero on unexpected gaps.

JS_DIR="priv/polar-sdk/sdk/typescript/src"
ELIXIR_SERVICES="lib/polar_express/services"
ELIXIR_RESOURCES="lib/polar_express/resources"
ELIXIR_PARAMS="lib/polar_express/params"
ELIXIR_EVENTS="lib/polar_express/events"

JS_VERSION="${1:-$(cat priv/polar-sdk/.api-version 2>/dev/null || ls "$JS_DIR" | grep -o '^[0-9-]*' | sort | tail -1)}"
JS_SERVICES_DIR="$JS_DIR/$JS_VERSION/services"

echo "=== PolarExpress SDK Parity Report ==="
echo ""

# Count TS SDK service files (exclude index.ts barrels)
js_services=$(find "$JS_SERVICES_DIR" -name "*.ts" -not -name "index.ts" | wc -l | tr -d ' ')
elixir_services=$(find "$ELIXIR_SERVICES" -name "*_service.ex" -not -name "v1.ex" -not -name "customer_portal_service.ex" | wc -l | tr -d ' ')
echo "Services:  TS=$js_services  Elixir=$elixir_services"
elixir_resources=$(find "$ELIXIR_RESOURCES" -name "*.ex" | wc -l | tr -d ' ')
echo "Resources: Elixir=$elixir_resources"

# Count params
elixir_params=$(find "$ELIXIR_PARAMS" -name "*.ex" | wc -l | tr -d ' ')
echo "Params:    Elixir=$elixir_params"

# Count events
elixir_events=$(find "$ELIXIR_EVENTS" -name "*.ex" | wc -l | tr -d ' ')
echo "Events:    Elixir=$elixir_events"

echo ""

# -- Service comparison -------------------------------------------------------
# List TS service files as relative paths without extension (customer_portal/ kept)
js_service_names=$(find "$JS_SERVICES_DIR" -name "*.ts" -not -name "index.ts" \
  | sed "s|^$JS_SERVICES_DIR/||; s|\.ts$||" | sort)

# List Elixir service files (strip _service.ex suffix, drop aggregate namespaces)
elixir_service_names=$(find "$ELIXIR_SERVICES" -name "*_service.ex" -not -name "v1.ex" -not -name "customer_portal_service.ex" \
  | sed "s|^$ELIXIR_SERVICES/||; s|_service\.ex$||" | sort)
echo "--- TS SDK Service Files ---"
echo "$js_service_names" | sed 's/^/  /'

echo ""
echo "--- Elixir Service Files ---"
echo "$elixir_service_names" | sed 's/^/  /'

echo ""
echo "--- Summary ---"
total_elixir=$((elixir_services + elixir_resources + elixir_params + elixir_events))
echo "Total generated Elixir files: $total_elixir"
echo "TS SDK services: $js_services"
echo "Elixir services: $elixir_services"
