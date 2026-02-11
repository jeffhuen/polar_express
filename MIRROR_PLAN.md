# Polar Express: Mirror Plan for Official Polar JS SDK

## Mapping Official JS SDK to Elixir

### OpenAPI Spec
**JS SDK**: Single URL `https://api.polar.sh/openapi.json`
**Elixir**: Same — no channels like Stripe has
- File: `priv/openapi/openapi.json`
- Sync script: `scripts/sync_openapi.sh` (already updated)
- No OPENAPI_CHANNEL file needed

### Authentication & Configuration

**JS SDK Pattern:**
```typescript
const polar = new Polar({
  accessToken: process.env["POLAR_ACCESS_TOKEN"] ?? "",
  server: "production" | "sandbox",  // Default: production
  serverURL?: string,
  timeoutMs?: number,
  retryConfig?: RetryConfig,
  debugLogger?: Logger
});
```

**Elixir Mirror:**
```elixir
# config/runtime.exs
config :polar_express,
  api_key: System.fetch_env!("POLAR_ACCESS_TOKEN"),
  webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET"),
  server: :production,           # :production or :sandbox
  timeout_ms: 30_000,
  max_retries: 2,
  debug_logger: nil              # Logger module or nil

# Or per-client
client = PolarExpress.client(api_key: "pk_...", server: :sandbox, max_retries: 5)
```

**Servers:**
```
production: https://api.polar.sh
sandbox:    https://sandbox-api.polar.sh
```

### Client Struct

**Elixir Pattern** (mirrors tiger_stripe):
```elixir
defstruct [
  :api_key,
  :webhook_secret,
  :server,              # :production | :sandbox
  :base_url,           # Derived from server
  :timeout_ms,
  :max_retries,
  :debug_logger,
  :finch,              # HTTP client pool
  :http_client        # Can be custom
]

def client(opts) do
  config = config_defaults()
  merged = Keyword.merge(config, opts)

  # Validate api_key
  case Keyword.fetch(merged, :api_key) do
    {:ok, api_key} when is_binary(api_key) and api_key != "" ->
      struct!(Client, merged)
    _ -> raise ArgumentError, "API key required"
  end
end
```

### Services & Resources

**JS SDK**: 43 service classes in `src/sdk/`
**Elixir**: 43 service modules with same naming

Example mapping:
```
JS: polar.organizations.list()
Elixir: PolarExpress.Services.OrganizationService.list(client, params)

JS: polar.products.create()
Elixir: PolarExpress.Services.ProductService.create(client, params)

JS: polar.customerPortal.customers.list()
Elixir: PolarExpress.Services.CustomerPortal.Customers.list(client, params)
```

### HTTP Client & Requests

**JS SDK**: Native Fetch API
**Elixir**: Finch (HTTP/2 client)

**Request Pattern:**
```elixir
# Internal client call
Client.request(client, :get, "/v1/organizations", params)
# Returns: {:ok, response} | {:error, error}
```

**Headers:**
```elixir
# Authorization
headers = [{"Authorization", "Bearer #{client.api_key}"}]

# User-Agent (SDK metadata)
headers = [{"user-agent", "polar-express/elixir 0.1.0"}]

# Content-Type (JSON for Polar)
headers = [{"content-type", "application/json"}]
```

### Error Handling

**JS SDK Classes:**
- `PolarError` (base HTTP error)
- `SDKValidationError` (Zod validation)
- `ConnectionError`, `RequestTimeoutError`, `RequestAbortedError`
- Specific error classes per endpoint (e.g., `CheckoutForbiddenError`)

**Elixir Mirror:**
```elixir
defmodule PolarExpress.Error do
  defexception [:message, :status_code, :body, :headers, :type]

  # Type: :http | :validation | :connection | :timeout | :request_aborted | :unknown
end

# Specific error handling
case PolarExpress.Services.CheckoutService.create(client, params) do
  {:ok, checkout} -> handle_success(checkout)
  {:error, %PolarExpress.Error{status_code: 422}} -> handle_validation_error()
  {:error, %PolarExpress.Error{type: :timeout}} -> handle_timeout()
  {:error, error} -> handle_error(error)
end
```

### Retries

**JS SDK Pattern:**
```typescript
retryConfig: {
  strategy: "backoff",
  backoff: {
    initialInterval: 500,
    maxInterval: 60000,
    exponent: 1.5,
    maxElapsedTime: 3600000
  }
}
```

**Elixir Mirror:**
```elixir
# Client configuration
config :polar_express,
  max_retries: 2,
  retry_backoff: [
    initial_interval_ms: 500,
    max_interval_ms: 60_000,
    exponent: 1.5,
    max_elapsed_time_ms: 3_600_000
  ]

# Implementation: Use Finch's retry support
# Exponential backoff with jitter per attempt
```

### Webhooks & Events

**JS SDK**: standardwebhooks + HMAC-SHA256 verification
**Elixir**: Same, using `:crypto` module or `standard_webhooks` Hex package

**Function Signature:**
```elixir
# JS: validateEvent(body: string | Buffer, headers: Record<string, string>, secret: string)
# Elixir:
PolarExpress.Webhook.verify_event(body, headers, secret)
# Returns: {:ok, event} | {:error, WebhookVerificationError}

# Or with payload parsing:
{:ok, event} = PolarExpress.Webhook.verify_event(body, headers, secret)
case event.type do
  "checkout.created" -> handle_checkout_created(event.data)
  "order.paid" -> handle_order_paid(event.data)
  # ...
end
```

**Event Types**: Same 30+ event types as JS SDK
- `checkout.created`, `order.paid`, `subscription.created`, etc.

### Pagination

**JS SDK Pattern:**
```typescript
const result = await polar.organizations.list({ limit: 10 });
for await (const page of result) {
  console.log(page.items);
}

// Or manually:
let current = result;
while (current) {
  current = await current.next();
}
```

**Elixir Mirror:**
```elixir
# Lazy stream-based pagination
{:ok, list} = PolarExpress.Services.OrganizationService.list(client, limit: 10)

# Option 1: Stream iteration (Elixir idiom)
list
|> Stream.unfold(fn
  nil -> nil
  page -> {page.items, page.next_fn}
end)
|> Enum.each(&process_page/1)

# Option 2: Manual pagination
{:ok, page1} = PolarExpress.Services.OrganizationService.list(client)
{:ok, page2} = page1.next_fn.()
```

### Hooks System

**JS SDK**: 5 hook points
- sdkInit
- beforeCreateRequest
- beforeRequest
- afterSuccess
- afterError

**Elixir Mirror:**
```elixir
defmodule PolarExpress.Hooks do
  defstruct [
    :before_request,    # (request) -> request
    :after_success,     # (response) -> response
    :after_error        # (error) -> error
  ]
end

# Usage:
client = PolarExpress.client(
  hooks: PolarExpress.Hooks.new(
    before_request: fn req ->
      req.headers ++ [{"X-Request-ID", UUID.uuid4()}]
    end,
    after_success: fn res -> IO.inspect(res); res end,
    after_error: fn err -> Logger.error("Request failed: #{inspect(err)}"); err end
  )
)
```

### Testing Utilities

**JS SDK**: Webhook validation helper in tests
**Elixir**: Similar test module

```elixir
defmodule PolarExpress.Test do
  # Generate valid webhook signature for testing
  def webhook_signature(body, secret) do
    StandardWebhooks.signature(body, secret)
  end

  # Stub HTTP responses (like tiger_stripe uses NimbleOwnership)
  def stub_request(method, path, response) do
    # ...
  end
end

# Usage in tests:
defmodule MyAppWeb.WebhookTest do
  use ExUnit.Case

  test "processes checkout.created webhook" do
    payload = ~s({"type":"checkout.created","data":{...}})
    secret = "whsec_test_secret"

    headers = %{
      "webhook-id" => "webhook_123",
      "webhook-timestamp" => "#{System.os_time(:second)}",
      "webhook-signature" => PolarExpress.Test.webhook_signature(payload, secret)
    }

    {:ok, event} = PolarExpress.Webhook.verify_event(payload, headers, secret)
    assert event.type == "checkout.created"
  end
end
```

## Implementation Phases

### Phase 1: Foundation ✓ (Done)
- [x] Copy tiger_stripe → polar_express
- [x] Rename all modules
- [x] Update spec sync script for Polar's URL

### Phase 2: Core Client (NEXT)
- [ ] Update `PolarExpress.Client` struct for Polar API
- [ ] Remove OAuth service (Polar doesn't have it)
- [ ] Update error handling for Polar error format
- [ ] Test basic client initialization

### Phase 3: HTTP Client & Requests
- [ ] Update request headers for Polar auth
- [ ] Implement JSON-only request encoding
- [ ] Error response parsing for Polar API
- [ ] Retry logic with exponential backoff

### Phase 4: Webhook Verification
- [ ] Add `standard_webhooks` or `:crypto`-based verification
- [ ] Implement `PolarExpress.Webhook.verify_event/3`
- [ ] Parse event types and payload
- [ ] Test with standardwebhooks library

### Phase 5: Code Generation
- [ ] Update generator for standard OpenAPI 3.1 (no Stripe extensions)
- [ ] Generate 43 services from Polar spec
- [ ] Generate ~60 resources
- [ ] Generate ~80 params modules
- [ ] Verify all compiles

### Phase 6: Testing & Documentation
- [ ] Integration tests against Polar sandbox
- [ ] Documentation for all services
- [ ] Migration guide from PolarEX to PolarExpress
- [ ] Hex release as v0.1.0

## Key Differences from Stripe

| Aspect | Stripe | Polar | Elixir Adjustment |
|--------|--------|-------|-------------------|
| Spec Extensions | x-stripeResource | None (standard OAS 3.1) | Simpler parser |
| Services | 190 (V1+V2) | 43 (V1 only) | Fewer modules to gen |
| Versioning | V1 + V2 paths | Single V1 | No API versioning header |
| OAuth | Yes (OAuthService) | No | Remove OAuth module |
| Webhooks | Custom HMAC | standardwebhooks | Use standard library |
| Multipart | Complex (files) | Less common | Simplify if needed |
| Config | Complex (account, version) | Simple (server, timeout) | Simpler Client struct |

## File Structure (Final)

```
polar_express/
├── lib/polar_express/
│   ├── polar_express.ex           # Main entry point
│   ├── client.ex                  # Client struct & initialization
│   ├── error.ex                   # Error types & handling
│   ├── webhook.ex                 # Webhook verification (standardwebhooks)
│   ├── webhook_plug.ex            # Phoenix Plug integration
│   ├── deserializer.ex            # JSON → typed structs
│   ├── list_object.ex             # Pagination wrapper
│   ├── test.ex                    # Testing utilities
│   ├── services/                  # 43 service modules (auto-generated)
│   ├── resources/                 # ~60 resource structs (auto-generated)
│   ├── params/                    # ~80 params modules (auto-generated)
│   ├── events/                    # Per-event typed modules
│   ├── generator/                 # Code generation
│   │   ├── openapi.ex            # Standard OAS 3.1 parser
│   │   ├── naming.ex
│   │   ├── service_generator.ex
│   │   ├── resource_generator.ex
│   │   ├── params_generator.ex
│   │   └── overrides.ex           # Minimal overrides
│   └── object_types.ex            # Generated registry
│
├── guides/                         # Same as tiger_stripe
├── scripts/
│   ├── sync_openapi.sh            # Updated for Polar
│   └── diff_js.sh                 # Compare against JS SDK
├── priv/
│   ├── openapi/
│   │   └── openapi.json           # Polar's OpenAPI spec
│   └── plts/
│       └── dialyzer.plt
├── test/
├── mix.exs                        # With :standard_webhooks added
└── MIRROR_PLAN.md                 # This file
```

## Success Criteria

1. **Configuration**: Can initialize client with `PolarExpress.client(api_key: "pk_...", server: :sandbox)`
2. **Services**: All 43 services auto-generated and compile without warnings
3. **Webhooks**: Can verify standardwebhooks signatures with `PolarExpress.Webhook.verify_event/3`
4. **Parity**: Feature-for-feature matches official JS SDK behavior
5. **Idioms**: Uses Elixir patterns (pattern matching, pipe operator, explicit structs)
6. **Documentation**: All modules have @doc, @moduledoc, and @spec
7. **Tests**: Integration tests against Polar sandbox API
8. **Release**: Published to Hex as `polar_express` v0.1.0

This ensures polar_express is a true Elixir mirror of the official Polar JS SDK.
