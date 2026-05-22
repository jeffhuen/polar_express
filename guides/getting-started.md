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

- Add `PolarExpress.WebhookPlug` to your endpoint (before `Plug.Parsers`)
- Scaffold a `PolarWebhookController` with event handler stubs
- Add the webhook route to your router
- Show where to start the Finch pool and pass credentials explicitly

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

PolarExpress does not read `config :polar_express`. Read credentials from your
own application boundary, then pass them to `PolarExpress.client/1` or
`PolarExpress.client/2`.

Start the default Finch pool in your application supervision tree:

```elixir
# lib/my_app/application.ex
children = [
  PolarExpress
]
```

If you already run your own Finch pool, pass its name when creating the client:

```elixir
children = [
  {Finch, name: MyApp.Finch}
]

client = PolarExpress.client("pk_test_...", finch: MyApp.Finch)
```

### Client Options

The only required key is `:api_key`. Everything else has sensible defaults:

```elixir
PolarExpress.client(
  api_key: "pk_test_...",
  server: :sandbox,
  max_retries: 3,
  timeout_ms: 60_000,
  finch: MyApp.Finch
)
```

| Key | Default | Description |
|-----|---------|-------------|
| `:api_key` | required | Polar API key |
| `:server` | `:production` | API environment (`:sandbox` or `:production`) |
| `:max_retries` | `2` | Max retry attempts |
| `:timeout_ms` | `30_000` | Request timeout in ms |
| `:finch` | `PolarExpress.Finch` | Finch pool name |

## Creating a Client

Create a client with an explicit API key:

```elixir
client = PolarExpress.client(System.fetch_env!("POLAR_ACCESS_TOKEN"))
```

### Per-Client Options

Pass options for a specific client:

```elixir
# Override the server environment
client = PolarExpress.client("pk_test_...", server: :production)

# Override retries and timeout
client = PolarExpress.client("pk_test_...", max_retries: 5, timeout_ms: 60_000)
```

### Keyword API Key

You can also pass the key in keyword options:

```elixir
client = PolarExpress.client(api_key: "pk_test_...", server: :sandbox)
```

Clients are plain structs with no global app config — safe for concurrent use
with multiple API keys.

## Making API Calls

Service modules map 1:1 to Polar's API resources. Each method takes the
client as the first argument:

```elixir
# Create a customer
{:ok, customer} = PolarExpress.Services.CustomersService.create_customer(client, %{
  email: "jane@example.com"
})

# Get a product
{:ok, product} = PolarExpress.Services.ProductsService.get_product(client, "prod_123")

# List orders
{:ok, orders} = PolarExpress.Services.OrdersService.list_orders(client, %{})
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
case PolarExpress.Services.CheckoutsService.create_checkout_session(client, params) do
  {:ok, checkout} ->
    checkout

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
PolarExpress.Services.OrdersService.list_orders(client, %{},
  server: :production
)
```

## Pagination

List endpoints return paginated results with lazy auto-paging support:

```elixir
{:ok, page} = PolarExpress.Services.CustomersService.list_customers(client, %{})

page
|> PolarExpress.ListObject.auto_paging_stream(client, "/v1/customers/")
|> Stream.filter(& &1.email)
|> Enum.to_list()
```

## Retries

Failed requests (network errors, 408, 409, 429, 500, 502, 503, 504) are automatically retried
with exponential backoff and jitter.

```elixir
client = PolarExpress.client("pk_test_...", max_retries: 5)
```

Idempotency keys can be passed for idempotent operations:

```elixir
PolarExpress.Services.CheckoutsService.create_checkout_session(client, params,
  idempotency_key: "checkout_123"
)
```

## Next Steps

- [Webhooks](webhooks.md) — receive and verify Polar events
- [Testing](testing.md) — stub HTTP requests in your test suite
- [Telemetry](telemetry.md) — observability and metrics
- [Igniter Installer](igniter-installer.md) — automated Phoenix setup
