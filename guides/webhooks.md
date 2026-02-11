# Webhooks

Polar sends webhook events to your application when things happen in your
account — checkouts are completed, subscriptions renew, orders are paid, etc.
This guide covers receiving, verifying, and handling those events.

## Signature Verification

Every webhook request includes a signature header (standardwebhooks format). Always verify it
before trusting the payload:

```elixir
case PolarExpress.Webhook.construct_event(payload, sig_header, "whsec_...") do
  {:ok, event} -> handle_event(event)
  {:error, error} -> send_resp(conn, 400, error.message)
end
```

`construct_event/4` verifies the HMAC-SHA256 signature using constant-time
comparison and checks the timestamp is within the tolerance window (default:
300 seconds).

## WebhookPlug

`PolarExpress.WebhookPlug` handles the full lifecycle — reading the raw body,
verifying the signature, deserializing the event, and assigning it to
`conn.assigns.stripe_event`.

### Setup

First, configure your webhook secret (see [Getting Started](getting-started.md)):

```elixir
# config/runtime.exs
config :polar_express,
  webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET")
```

Then add the plug to your endpoint **before** `Plug.Parsers` (which consumes
the raw body):

```elixir
# lib/my_app_web/endpoint.ex

plug PolarExpress.WebhookPlug,
  path: "/webhook/polar"

# This must come AFTER WebhookPlug
plug Plug.Parsers,
  parsers: [:urlencoded, :multipart, :json],
  json_decoder: JSON
```

The secret is read automatically from `config :polar_express, :webhook_secret`.

### Per-Plug Secret Override

If you have multiple webhook endpoints with different secrets, override
per-plug:

```elixir
plug PolarExpress.WebhookPlug,
  secret: "whsec_other",
  path: "/webhook/polar/org"
```

Or use an MFA tuple for runtime resolution:

```elixir
plug PolarExpress.WebhookPlug,
  secret: {MyApp.Config, :polar_webhook_secret, []},
  path: "/webhook/polar/org"
```

### Options

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `:secret` | `String.t()` or `{mod, fun, args}` | from config | Webhook signing secret |
| `:path` | `String.t()` | required | Request path to match |
| `:tolerance` | `integer()` | `300` | Maximum event age in seconds |

### Handling Events

On successful verification, the event is available at
`conn.assigns.polar_express_event`. Route to a controller or plug pipeline to
handle it:

```elixir
# lib/my_app_web/router.ex
scope "/webhook" do
  post "/polar", MyAppWeb.PolarWebhookController, :handle
end
```

```elixir
# lib/my_app_web/controllers/polar_webhook_controller.ex
defmodule MyAppWeb.PolarWebhookController do
  use MyAppWeb, :controller

  def handle(conn, _params) do
    event = conn.assigns.polar_express_event

    case event.type do
      "checkout.created" ->
        process_checkout(event.data)

      "order.paid" ->
        fulfill_order(event.data)

      "subscription.created" ->
        handle_subscription(event.data)

      _ ->
        :ok
    end

    send_resp(conn, 200, "ok")
  end
end
```

### Verification Failures

If the signature is invalid or the timestamp is stale, `WebhookPlug` responds
with `400 Bad Request` and halts the connection. Your downstream plugs and
controllers are never invoked.

## Typed Event Modules

V2 events and thin V1 events have dedicated modules with typed data structs:

```elixir
alias PolarExpress.Events.V1BillingMeterErrorReportTriggeredEvent

# Each event module exposes the PolarExpress event type string
V1BillingMeterErrorReportTriggeredEvent.lookup_type()
#=> "billing.meter.error_report_triggered"

# Events have typed nested data structs
%V1BillingMeterErrorReportTriggeredEvent{
  data: %V1BillingMeterErrorReportTriggeredEvent.Data{}
}

# V2 events support fetching related objects
{:ok, meter} = V2BillingMeterNoMeterFoundEvent.fetch_related_object(event, client)
```

## Tips

- **Always return 200 quickly.** Process events asynchronously (e.g. via
  `Task.Supervisor` or an Oban job) to avoid timeouts.
- **Handle duplicates.** Polar may send the same event more than once. Use
  `event.id` as an idempotency key.
- **Use the webhook signing secret from the Polar Dashboard**, not your API
  key. Each webhook endpoint has its own secret.
