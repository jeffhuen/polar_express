# PolarExpress

Comprehensive Elixir SDK for the [Polar API](https://docs.polar.sh/api),
with verified 1:1 feature parity to the official [JavaScript SDK](https://github.com/polarsource/polar-js).

> **Note:** This is an community Elixir SDK for Polar. Polar's official SDKs are
> in TypeScript/JavaScript and Python. This project is generated from the same
> [OpenAPI spec](https://api.polar.sh/openapi.json) that Polar uses to
> build their official SDKs, follows the same service architecture, and is
> structured to match the official
> [JavaScript SDK](https://github.com/polarsource/polar-js). The goal is an
> idiomatic Elixir experience with the same API coverage.

### What's Included

The **SDK layer** provides typed resource structs, typed request params, and
auto-paging pagination — all generated from the spec with full documentation.
The **client layer** handles HTTP execution via Finch with connection pooling,
automatic retries, request encoding, response deserialization, and telemetry.

Together, the complete Polar API surface is covered: 31 service modules,
30 typed resource structs, 85 typed params modules, webhook signature
verification, and automatic pagination.

## Installation

### With Igniter (recommended for Phoenix)

> **Beta:** The Igniter installer is new and under active testing.
> [Report issues here.](https://github.com/jeffhuen/polar_express/issues)

If your project uses [Igniter](https://hex.pm/packages/igniter), one command
sets up everything — config, webhook plug, controller, and route:

```bash
mix igniter.install polar_express
```

See the [Igniter Installer](guides/igniter-installer.md) guide for a detailed
walkthrough of what the installer does.

### Manual

Add `polar_express` to your dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:polar_express, "~> 0.1.1"}
  ]
end
```

Requires Elixir 1.19+ and OTP 27+.

## Configuration

```elixir
# config/dev.exs — sandbox credentials
config :polar_express,
  api_key: "pk_test_...",
  webhook_secret: "whsec_test_..."

# config/runtime.exs — production credentials
if config_env() == :prod do
  config :polar_express,
    api_key: System.fetch_env!("POLAR_ACCESS_TOKEN"),
    webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET")
end
```

Optional global defaults (all have sensible defaults if omitted):

```elixir
config :polar_express,
  api_key: "pk_test_...",
  webhook_secret: "whsec_...",
  server: :sandbox,                  # :production or :sandbox, default: :production
  max_retries: 3,                    # default: 2
  timeout_ms: 30_000                 # request timeout in ms, default: 30_000
```

See the [Getting Started](guides/getting-started.md) guide for all config
options and precedence rules.

## Quick Start

```elixir
client = PolarExpress.client()

# Create a customer
{:ok, customer} = PolarExpress.Services.CustomersService.create_customer(client, %{
  email: "jane@example.com"
})

# List products
{:ok, products} = PolarExpress.Services.ProductsService.list_products(client, %{"limit" => 10})

# Create a checkout
{:ok, checkout} = PolarExpress.Services.CheckoutsService.create_checkout_session(client, %{
  "product_price_id" => "price_123",
  "success_url" => "https://example.com/success"
})
```

Responses are automatically deserialized into typed structs:

```elixir
customer.id        #=> "cus_abc123"
customer.email     #=> "jane@example.com"
customer.__struct__ #=> PolarExpress.Resources.Customers
```

Override config per-client for multi-key or multi-server scenarios:

```elixir
client = PolarExpress.client(server: :sandbox)
client = PolarExpress.client("pk_test_other_key", max_retries: 5)
```

## Features

### SDK

- **Full API coverage** — every endpoint from the Polar OpenAPI spec, with
  dedicated service modules matching the JavaScript SDK layout
- **Typed resources** — API responses are deserialized into typed Elixir structs
  with `@type t` definitions, full nesting support, and inner types
- **Typed params** — request parameters have dedicated struct modules with
  `@typedoc` annotations sourced from the OpenAPI spec
- **Per-event typed modules** — dedicated modules per webhook event type
  with typed data structs
- **Auto-paging pagination** — lazy `Stream`-based iteration for list endpoints
- **Webhook verification** — standardwebhooks signature verification with
  constant-time comparison and timestamp tolerance
- **OAuth** — `authorize_url`, `token`, and `deauthorize` for Polar OAuth flows
- **Documentation** — `@moduledoc`, `@doc`, `@typedoc`, `@spec`, and
  `@deprecated` on all generated modules, sourced from the OpenAPI spec

### Client

- **Finch HTTP client** — modern HTTP/2-capable client with connection pooling
  via NimblePool (replaces legacy Hackney)
- **Automatic retries** — exponential backoff with jitter for transient failures
- **Request encoding** — JSON request encoding with automatic multipart for
  file uploads
- **Response deserialization** — JSON to typed structs via object type registry
- **Streaming** — chunked response streaming for large payloads and SSE
- **Telemetry** — `:telemetry` events for request lifecycle observability
- **Per-client configuration** — explicit struct with no global state, safe for
  concurrent use with multiple API keys
- **Test stubs** — process-scoped HTTP stubs via NimbleOwnership for
  `async: true` tests

## Guides

- [Getting Started](guides/getting-started.md) — installation, configuration, first API call, pagination, error handling
- [Igniter Installer](guides/igniter-installer.md) — one-command Phoenix setup (beta)
- [Webhooks](guides/webhooks.md) — signature verification, WebhookPlug setup, typed event modules
- [Testing](guides/testing.md) — process-scoped HTTP stubs with `async: true` support
- [Telemetry](guides/telemetry.md) — request lifecycle events, logging, metrics

## Development

```bash
# Sync the OpenAPI spec
bash scripts/sync_openapi.sh

# Generate the SDK
mix polar.generate --clean --stats

# Verify
mix compile --warnings-as-errors
mix test
mix docs --warnings-as-errors
bash scripts/diff_js.sh
```

### Code Generation

The SDK is auto-generated from Polar's [OpenAPI spec](https://api.polar.sh/openapi.json)
via `mix polar.generate`. The generator produces:

- **31 service modules** matching the JavaScript SDK layout
- **30 resource structs** with `@type t` definitions and inner types
- **85 params modules** with `@typedoc` field annotations
- **2 registries** (object types and event types)
- **36 event modules** for typed webhook event handling

A small set of [overrides](lib/polar_express/generator/overrides.ex) handle
cases where the spec's metadata doesn't match the JavaScript SDK's service layout.
Each override is documented with a reason and enforced by tests.

### Parity Testing

JavaScript SDK parity is a hard invariant. CI runs `scripts/diff_js.sh` to verify
1:1 service file and endpoint coverage. The test suite includes dedicated
parity assertions comparing the generated endpoint set against both the OpenAPI
spec and the JavaScript SDK fixture tree.

## License

MIT License. See `LICENSE` for details.
