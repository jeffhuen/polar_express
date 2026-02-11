# Igniter Installer

> **Beta:** The Igniter installer is new and under active testing. If you hit
> an issue, please [open a bug report](https://github.com/jeffhuen/polar_express/issues).
> You can always fall back to [manual installation](getting-started.md).

The Igniter installer configures `polar_express` in a Phoenix project with a
single command. It adds config files, wires up webhook verification, scaffolds
a controller, and adds the route.

## Prerequisites

Your project needs [Igniter](https://hex.pm/packages/igniter) installed. If
you don't have it yet:

```elixir
# mix.exs
{:igniter, "~> 0.7"}
```

## Running the Installer

```bash
mix igniter.install polar_express
```

If `polar_express` is already in your deps, run the configuration task
directly:

```bash
mix polar_express.install
```

Both commands do the same thing. The only difference is that
`igniter.install` also adds the dependency to your `mix.exs`.

## What It Does

The installer makes five changes to your project. Igniter shows a unified
diff of every change and asks for confirmation before writing anything.

### 1. Dev Config

Adds a placeholder API key to `config/dev.exs`:

```elixir
config :polar_express,
  api_key: "pk_test_YOUR_KEY_HERE"
```

Replace with your actual test-mode API key from the
[Polar Dashboard](https://dashboard.polar.sh). You'll also want to add
`webhook_secret` and `server: :sandbox` here manually if using webhooks locally.

### 2. Runtime Config

Adds production env var config inside the `if config_env() == :prod` block
in `config/runtime.exs`:

```elixir
config :polar_express,
  api_key: System.fetch_env!("POLAR_ACCESS_TOKEN"),
  webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET")
```

Your deployment environment needs both variables set.

### 3. Webhook Plug

Injects `PolarExpress.WebhookPlug` into your Phoenix endpoint, directly before
`Plug.Parsers`:

```elixir
# lib/my_app_web/endpoint.ex

plug PolarExpress.WebhookPlug, path: "/webhook/polar"

plug Plug.Parsers,
  parsers: [:urlencoded, :multipart, :json],
  ...
```

The plug must come before `Plug.Parsers` because it needs the raw request
body for signature verification. `Plug.Parsers` consumes the body, so
anything after it cannot verify the signature.

If your project has multiple endpoints, Igniter will prompt you to choose
which one to modify.

### 4. Webhook Controller

Scaffolds a controller at `lib/<app>_web/controllers/polar_webhook_controller.ex`:

```elixir
defmodule MyAppWeb.PolarWebhookController do
  use MyAppWeb, :controller

  def handle(conn, _params) do
    event = conn.assigns.polar_express_event

    case event.type do
      "order.created" -> ...
      "order.updated"  -> ...
      "subscription.created"     -> ...
      "subscription.updated" -> ...
      unhandled -> Logger.info("Unhandled Polar event: #{unhandled}")
    end

    send_resp(conn, 200, "ok")
  end
end
```

Each event handler is a stub that logs the event ID. Replace them with your
business logic. See the [Webhooks guide](webhooks.md) for details on event
handling patterns.

### 5. Webhook Route

Adds a route to your Phoenix router:

```elixir
scope "/webhook" do
  post "/polar", MyAppWeb.PolarWebhookController, :handle
end
```

The path `/webhook/polar` matches the `:path` option configured on the plug.
If your project has multiple routers, Igniter will prompt you to choose.

## After Installation

1. **Set your test API key** in `config/dev.exs` (replace the placeholder)

2. **Set production environment variables:**

       POLAR_ACCESS_TOKEN=pk_live_...
       POLAR_WEBHOOK_SECRET=whsec_live_...

3. **Create a webhook endpoint** in the
   [Polar Dashboard](https://dashboard.polar.sh/webhooks) pointed at
   `https://your-domain.com/webhook/polar`

4. **Customize the controller** event handlers with your business logic

5. **Test locally** with the Polar CLI or webhooks dashboard to send test events

## Re-running the Installer

The installer is safe to run multiple times:

- Config values are only added if not already present
- The controller is only created if the module doesn't exist
- The webhook plug is only injected if not already in the endpoint

If you need to reset and re-run, delete the generated controller file and
remove the plug/route/config lines manually, then run the installer again.

## Non-Phoenix Projects

If no Phoenix endpoint or router is found, the installer skips the plug,
controller, and route steps. You still get the config changes, plus notices
explaining how to set up webhook handling manually. See the
[Webhooks guide](webhooks.md) for the manual setup instructions.

## Dry Run

Preview changes without writing anything:

```bash
mix polar_express.install --dry-run
```
