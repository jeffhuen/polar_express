# polar_express

Elixir SDK for the Polar API, auto-generated from the official OpenAPI spec.

## Client pattern

Always create a client first. Every API call takes the client as the first argument.

```elixir
client = PolarExpress.client()
{:ok, customer} = PolarExpress.Services.CustomerService.create(client, %{email: "jane@example.com"})
```

The zero-arity `PolarExpress.client()` reads from application config. Override per-call:

```elixir
client = PolarExpress.client("pk_test_other_key")
client = PolarExpress.client(organization_id: "acct_connected", max_retries: 5)
```

Clients are plain structs — no global state, safe for concurrent use.

## Module layout

- `PolarExpress.Services.*Service` — one module per API resource, methods map 1:1 to endpoints
- `PolarExpress.Resources.*` — typed response structs with `@type t`
- `PolarExpress.Params.*Params` — typed request parameter structs
- `PolarExpress.Events.*Event` — per-event typed modules (V2 and thin V1)

Service modules live under `PolarExpress.Services`. Nested resources use packages:
`PolarExpress.Services.Billing.MeterService`, `PolarExpress.Services.Issuing.CardService`.

V2 endpoints are under `PolarExpress.Services.V2.*`.

## API calls

All service methods return `{:ok, struct}` or `{:error, %PolarExpress.Error{}}`.

```elixir
case PolarExpress.Services.ChargeService.create(client, params) do
  {:ok, charge} -> charge
  {:error, %PolarExpress.Error{type: :card_error} = err} -> handle_error(err)
end
```

Method signatures: `method(client, params \\ %{}, opts \\ [])` or
`method(client, id, params \\ %{}, opts \\ [])` for resource-specific endpoints.

Per-request overrides go in opts: `organization_id:`, `idempotency_key:`, `api_version:`.

## Pagination

V1 lists return `%PolarExpress.ListObject{}`. Use `auto_paging_stream/2` for lazy iteration:

```elixir
{:ok, page} = PolarExpress.Services.CustomerService.list(client, %{"limit" => 100})
page |> PolarExpress.ListObject.auto_paging_stream(client) |> Enum.take(50)
```

Search results use `PolarExpress.SearchResult.auto_paging_stream/2`.
V2 lists use `PolarExpress.V2.ListObject.auto_paging_stream/2`.

## Webhooks

`PolarExpress.WebhookPlug` is a Plug that verifies signatures and assigns the event.
It must go **before** `Plug.Parsers` in the endpoint (it needs the raw body).

```elixir
# endpoint.ex
plug PolarExpress.WebhookPlug, path: "/webhook/stripe"
plug Plug.Parsers, ...
```

The secret is read from `config :polar_express, :webhook_secret`.

For manual verification without the plug:

```elixir
{:ok, event} = PolarExpress.Webhook.construct_event(payload, sig_header, secret)
```

## Configuration

```elixir
# config/runtime.exs
config :polar_express,
  api_key: System.fetch_env!("POLAR_ACCESS_TOKEN"),
  webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET")
```

Optional keys: `:api_version`, `:client_id`, `:max_retries` (default 2),
`:open_timeout` (default 30s), `:read_timeout` (default 80s), `:finch`.

## Testing

Use `PolarExpress.Test` for process-scoped HTTP stubs compatible with `async: true`:

```elixir
setup do
  PolarExpress.Test.stub(fn req -> {200, [], ~s({"id": "ch_1", "object": "charge"})} end)
  :ok
end
```

The stub callback receives a `%{method, url, headers, body}` map and returns
`{status, headers, body}`. Stubs are isolated per test process.

## Common mistakes

- **Forgetting the client argument.** Every service call needs a client as the first arg.
- **Using string keys vs atom keys in params.** Params maps use string keys: `%{"amount" => 100}`, not `%{amount: 100}`.
- **Placing WebhookPlug after Plug.Parsers.** The plug must come before parsers or signature verification will fail (empty body).
- **Not pattern matching on {:ok, _} / {:error, _}.** All API calls return tagged tuples.

## File uploads

Use `%PolarExpress.Multipart.FilePath{}` for file params:

```elixir
PolarExpress.Services.FileService.create(client, %{
  "purpose" => "dispute_evidence",
  "file" => %PolarExpress.Multipart.FilePath{path: "/path/to/file.pdf"}
})
```

## OAuth (Stripe Connect)

```elixir
url = PolarExpress.OAuth.authorize_url(client, %{scope: "read_write"})
{:ok, resp} = PolarExpress.OAuth.token(client, %{code: "ac_...", grant_type: "authorization_code"})
```
