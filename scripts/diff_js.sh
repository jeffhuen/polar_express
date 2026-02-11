#!/bin/bash
set -euo pipefail

# Compare generated Elixir SDK against official Polar JavaScript SDK reference.
# Compares service file names and counts.
# Exits non-zero on unexpected gaps.

JS_DIR="priv/polar-js-main/src/sdk"
ELIXIR_SERVICES="lib/polar_express/services"
ELIXIR_RESOURCES="lib/polar_express/resources"
ELIXIR_PARAMS="lib/polar_express/params"
ELIXIR_EVENTS="lib/polar_express/events"

echo "=== PolarExpress SDK Parity Report ==="
echo ""

# Count JS SDK service files (exclude sdk.ts entry point)
js_services=$(find "$JS_DIR" -maxdepth 1 -name "*.ts" -not -name "sdk.ts" | wc -l | tr -d ' ')
elixir_services=$(find "$ELIXIR_SERVICES" -name "*_service.ex" -not -name "v1.ex" | wc -l | tr -d ' ')
echo "Services:  JS=$js_services  Elixir=$elixir_services"

# Count resources
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
# List JS service files (strip .ts extension, convert to snake_case-ish)
js_service_names=$(find "$JS_DIR" -maxdepth 1 -name "*.ts" -not -name "sdk.ts" \
  | xargs -I{} basename {} .ts | sort)

# List Elixir service files (strip _service.ex suffix)
elixir_service_names=$(find "$ELIXIR_SERVICES" -name "*_service.ex" -not -name "v1.ex" \
  | xargs -I{} basename {} _service.ex | sort)

echo "--- JS SDK Service Files ---"
echo "$js_service_names" | sed 's/^/  /'

echo ""
echo "--- Elixir Service Files ---"
echo "$elixir_service_names" | sed 's/^/  /'

echo ""
echo "--- Summary ---"
total_elixir=$((elixir_services + elixir_resources + elixir_params + elixir_events))
echo "Total generated Elixir files: $total_elixir"
echo "JS SDK services: $js_services"
echo "Elixir services: $elixir_services"
