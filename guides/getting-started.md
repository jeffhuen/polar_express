# Getting Started

## Installation

### With Igniter (recommended for Phoenix)

> **Beta:** The Igniter installer is new and under active testing.
> [Report issues here.](https://github.com/jeffhuen/polar_express/issues)

If your project uses [Igniter](https://hex.pm/packages/igniter), one command
adds the dependency and configures everything:

```bash
mix igniter.install polar_express
```

This will:

- Add API key config to `config/dev.exs`
- Add runtime env var config to `config/runtime.exs`
- Add `PolarExpress.WebhookPlug` to your endpoint (before `Plug.Parsers`)
- Scaffold a `PolarWebhookController` with event handler stubs
- Add the webhook route to your router

Igniter shows a diff of all changes for your approval before writing anything.
See the [Igniter Installer](igniter-installer.md) guide for a detailed
walkthrough, or the [Webhooks](webhooks.md) guide for customizing the
controller.

### Manual

Add `polar_express` to your dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:polar_express, "~> 0.1.0"}
  ]
end
```

Requires Elixir 1.19+ and OTP 27+.

## Configuration

Add your PolarExpress credentials to your application config. The recommended
pattern is to use `config/dev.exs` for sandbox keys and `config/runtime.exs`
for production:

```elixir
# config/dev.exs
import Config

config :polar_express,
  api_key: "pk_test_...",
  webhook_secret: "whsec_test_..."
```

```elixir
# config/runtime.exs
import Config

if config_env() == :prod do
  config :polar_express,
    api_key: System.fetch_env!("POLAR_ACCESS_TOKEN"),
    webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET")
end
```

### All Config Options

The only required key is `:api_key`. Everything else has sensible defaults:

```elixir
config :polar_express,
  # Required
  api_key: "pk_test_...",

  # Webhooks (required if using WebhookPlug)
  webhook_secret: "whsec_...",

  # Optional — all have defaults if omitted
  server: :sandbox,                  # :sandbox or :production (default: :sandbox)
  max_retries: 3,                    # default: 2
  open_timeout: 30_000,              # connection timeout ms (default: 30,000)
  read_timeout: 80_000,              # read timeout ms (default: 80,000)
  finch: MyApp.Finch                 # custom Finch pool (default: PolarExpress.Finch)
```

| Key | Used By | Default | Description |
|-----|---------|---------|-------------|
| `:api_key` | `PolarExpress.client/0,1,2` | required | Polar API key |
| `:webhook_secret` | `PolarExpress.WebhookPlug` | — | Webhook signing secret |
| `:server` | `PolarExpress.client/0,1,2` | `:sandbox` | API environment (`:sandbox` or `:production`) |
| `:max_retries` | `PolarExpress.client/0,1,2` | `2` | Max retry attempts |
| `:open_timeout` | `PolarExpress.client/0,1,2` | `30_000` | Connection timeout in ms |
| `:read_timeout` | `PolarExpress.client/0,1,2` | `80_000` | Read timeout in ms |
| `:finch` | `PolarExpress.client/0,1,2` | `PolarExpress.Finch` | Custom Finch pool name |

## Creating a Client

Once configured, create a client with no arguments — it reads from your config
automatically:

```elixir
client = PolarExpress.client()
```

### Overriding Config

Pass options to override any config value for a specific client:

```elixir
# Override the server environment
client = PolarExpress.client(server: :production)

# Override retries and timeout
client = PolarExpress.client(max_retries: 5, read_timeout: 120_000)
```

### Explicit API Key

Pass a string to use a different API key (config defaults still apply for
other options):

```elixir
client = PolarExpress.client("pk_test_other_key")
client = PolarExpress.client("pk_test_other_key", max_retries: 5)
```

### Config Precedence

Options are resolved in this order (highest wins):

1. Explicit arguments to `client/1` or `client/2`
2. Application config (`config :polar_express, ...`)
3. Struct defaults (e.g. `max_retries: 2`)

Clients are plain structs with no global state — safe for concurrent use
with multiple API keys or connected accounts.

## Making API Calls

Service modules map 1:1 to Polar's API resources. Each method takes the
client as the first argument:

```elixir
# Create a customer
{:ok, customer} = PolarExpress.Services.CustomersService.create(client, %{
  email: "jane@example.com"
})

# Retrieve a product
{:ok, product} = PolarExpress.Services.ProductsService.retrieve(client, "prod_123")

# List orders
{:ok, orders} = PolarExpress.Services.OrdersService.list(client, %{})
```

## Typed Responses

API responses are automatically deserialized into typed Elixir structs:

```elixir
customer.id        #=> "cus_abc123"
customer.email     #=> "jane@example.com"
customer.__struct__ #=> PolarExpress.Resources.Customer
```

Every resource struct has `@type t` definitions, so Dialyzer catches field
access errors at compile time.

## Error Handling

All API errors return `{:error, %PolarExpress.Error{}}`:

```elixir
case PolarExpress.Services.OrdersService.create(client, params) do
  {:ok, order} ->
    order

  {:error, %PolarExpress.Error{type: :validation_error} = err} ->
    Logger.warning("Validation failed: #{err.message}")

  {:error, %PolarExpress.Error{type: :rate_limit_error}} ->
    Process.sleep(1_000)
    retry()

  {:error, err} ->
    Logger.error("Polar API error: #{err.message}")
end
```

## Per-Request Overrides

Options can be overridden per-request for multi-environment scenarios:

```elixir
PolarExpress.Services.OrdersService.list(client, %{},
  server: :production,
  idempotency_key: "order_123"
)
```

## Pagination

List endpoints return paginated results with lazy auto-paging support:

```elixir
{:ok, page} = PolarExpress.Services.CustomersService.list(client, %{})

page
|> PolarExpress.ListObject.auto_paging_stream(client)
|> Stream.filter(& &1.email)
|> Enum.to_list()
```

## Retries

Failed requests (network errors, 429, 500, 503) are automatically retried
with exponential backoff and jitter.

```elixir
# Via config
config :polar_express, max_retries: 5

# Or per-client
client = PolarExpress.client(max_retries: 5)
```

Idempotency keys can be passed for idempotent operations:

```elixir
PolarExpress.Services.OrdersService.create(client, params,
  idempotency_key: "order_123"
)
```

## Next Steps

- [Webhooks](webhooks.md) — receive and verify Polar events
- [Testing](testing.md) — stub HTTP requests in your test suite
- [Telemetry](telemetry.md) — observability and metrics
- [Igniter Installer](igniter-installer.md) — automated Phoenix setup
