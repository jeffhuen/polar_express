if Code.ensure_loaded?(Igniter.Mix.Task) do
  defmodule Mix.Tasks.PolarExpress.Install do
    @moduledoc """
    Installs and configures polar_express in a Phoenix application.

        $ mix polar_express.install

    This installer:

    1. Adds Polar API key config to `config/dev.exs` (sandbox environment)
    2. Adds runtime config with env vars to `config/runtime.exs` (production)
    3. Adds `PolarExpress.WebhookPlug` to the Phoenix endpoint (before `Plug.Parsers`)
    4. Scaffolds a `PolarWebhookController` with event handler skeleton for Polar events
    5. Adds the webhook route to the router
    6. Shows next steps and configuration guidance
    """

    use Igniter.Mix.Task

    @impl Igniter.Mix.Task
    def info(_argv, _composing_task) do
      %Igniter.Mix.Task.Info{
        example: "mix polar_express.install"
      }
    end

    @impl Igniter.Mix.Task
    def igniter(igniter) do
      igniter
      |> configure_dev()
      |> configure_runtime()
      |> add_webhook_plug_to_endpoint()
      |> scaffold_webhook_controller()
      |> add_webhook_route()
      |> add_next_steps()
    end

    # -- Step 1: Dev config ------------------------------------------------------

    defp configure_dev(igniter) do
      Igniter.Project.Config.configure_new(
        igniter,
        "dev.exs",
        :polar_express,
        [:api_key],
        "pk_test_YOUR_KEY_HERE"
      )
    end

    # -- Step 2: Runtime config --------------------------------------------------

    defp configure_runtime(igniter) do
      igniter
      |> Igniter.Project.Config.configure_runtime_env(
        :prod,
        :polar_express,
        [:api_key],
        {:code, Sourceror.parse_string!(~S[System.fetch_env!("POLAR_ACCESS_TOKEN")])}
      )
      |> Igniter.Project.Config.configure_runtime_env(
        :prod,
        :polar_express,
        [:webhook_secret],
        {:code, Sourceror.parse_string!(~S[System.fetch_env!("POLAR_WEBHOOK_SECRET")])}
      )
    end

    # -- Step 3: Endpoint plug ---------------------------------------------------

    defp add_webhook_plug_to_endpoint(igniter) do
      case Igniter.Libs.Phoenix.select_endpoint(igniter) do
        {igniter, nil} ->
          Igniter.add_notice(igniter, """
          No Phoenix endpoint found. Add PolarExpress.WebhookPlug to your endpoint
          manually, before Plug.Parsers:

              plug PolarExpress.WebhookPlug, path: "/webhook/polar"
          """)

        {igniter, endpoint} ->
          Igniter.Project.Module.find_and_update_module!(igniter, endpoint, fn zipper ->
            plug_code = ~s(plug PolarExpress.WebhookPlug, path: "/webhook/polar")

            with :error <-
                   insert_before_plug_parsers(zipper, plug_code, 2),
                 :error <-
                   insert_before_plug_parsers(zipper, plug_code, 1) do
              {:warning,
               """
               Could not find `plug Plug.Parsers` in #{inspect(endpoint)}.
               Add PolarExpress.WebhookPlug manually before Plug.Parsers:

                   plug PolarExpress.WebhookPlug, path: "/webhook/polar"
               """}
            end
          end)
      end
    end

    defp insert_before_plug_parsers(zipper, plug_code, arity) do
      case Igniter.Code.Function.move_to_function_call(zipper, :plug, arity, fn call_zipper ->
             Igniter.Code.Function.argument_equals?(call_zipper, 0, Plug.Parsers)
           end) do
        {:ok, zipper} ->
          {:ok, Igniter.Code.Common.add_code(zipper, plug_code, placement: :before)}

        :error ->
          :error
      end
    end

    # -- Step 4: Webhook controller ----------------------------------------------

    defp scaffold_webhook_controller(igniter) do
      case Igniter.Libs.Phoenix.select_endpoint(igniter) do
        {igniter, nil} ->
          igniter

        {igniter, _endpoint} ->
          web_module = Igniter.Libs.Phoenix.web_module(igniter)
          controller_module = Module.concat(web_module, PolarWebhookController)

          Igniter.Project.Module.create_module(igniter, controller_module, """
            @moduledoc \"\"\"
            Handles incoming Polar webhook events.

            Events are verified by `PolarExpress.WebhookPlug` in the endpoint and
            available via `conn.assigns.polar_express_event`.

            See the Webhooks guide for more details:
            https://hexdocs.pm/polar_express/webhooks.html
            \"\"\"

            use #{inspect(web_module)}, :controller

            require Logger

            def handle(conn, _params) do
              event = conn.assigns.polar_express_event

              case event.type do
                "orders.created" ->
                  handle_order_created(event)

                "orders.updated" ->
                  handle_order_updated(event)

                "subscriptions.created" ->
                  handle_subscription_created(event)

                "subscriptions.updated" ->
                  handle_subscription_updated(event)

                unhandled ->
                  Logger.info("Unhandled Polar webhook event: \#{unhandled}")
              end

              send_resp(conn, 200, "ok")
            end

            # -- Event handlers -------------------------------------------------------
            # Replace these stubs with your business logic.

            defp handle_order_created(event) do
              Logger.info("Order created: \#{event.id}")
              # TODO: Handle order creation
              :ok
            end

            defp handle_order_updated(event) do
              Logger.info("Order updated: \#{event.id}")
              # TODO: Handle order update
              :ok
            end

            defp handle_subscription_created(event) do
              Logger.info("Subscription created: \#{event.id}")
              # TODO: Handle subscription creation
              :ok
            end

            defp handle_subscription_updated(event) do
              Logger.info("Subscription updated: \#{event.id}")
              # TODO: Handle subscription update
              :ok
            end
          """)
      end
    end

    # -- Step 5: Webhook route ---------------------------------------------------

    defp add_webhook_route(igniter) do
      case Igniter.Libs.Phoenix.select_router(igniter) do
        {igniter, nil} ->
          Igniter.add_notice(igniter, """
          No Phoenix router found. Add the webhook route manually:

              scope "/webhook" do
                post "/polar", YourAppWeb.PolarWebhookController, :handle
              end
          """)

        {igniter, router} ->
          web_module = Igniter.Libs.Phoenix.web_module(igniter)
          controller = Module.concat(web_module, PolarWebhookController)

          Igniter.Libs.Phoenix.add_scope(
            igniter,
            "/webhook",
            """
            post "/polar", #{inspect(controller)}, :handle
            """,
            router: router
          )
      end
    end

    # -- Step 6: Next steps notice -----------------------------------------------

    defp add_next_steps(igniter) do
      Igniter.add_notice(igniter, """
      ┌─ POLAR EXPRESS INSTALLED ──────────────────────────────┐
      │                                                          │
      │ ✓ Configuration added to config/dev.exs and runtime.exs │
      │ ✓ WebhookPlug configured in endpoint                    │
      │ ✓ PolarWebhookController scaffolded                     │
      │ ✓ Webhook route added at POST /webhook/polar           │
      │                                                          │
      │ NEXT STEPS:                                             │
      │                                                          │
      │ 1. Set your test API key in config/dev.exs:            │
      │                                                          │
      │        config :polar_express,                          │
      │          api_key: "pk_test_YOUR_KEY_HERE",             │
      │          webhook_secret: "whsec_test_YOUR_SECRET",     │
      │          server: :sandbox                              │
      │                                                          │
      │ 2. Set production environment variables:                │
      │                                                          │
      │        POLAR_ACCESS_TOKEN=pk_live_YOUR_KEY             │
      │        POLAR_WEBHOOK_SECRET=whsec_live_YOUR_SECRET     │
      │                                                          │
      │ 3. Create a webhook endpoint in Polar Dashboard:        │
      │    https://dashboard.polar.sh/webhooks                 │
      │    Point to: https://your-domain.com/webhook/polar     │
      │                                                          │
      │ 4. Customize event handlers in PolarWebhookController   │
      │    - Replace Logger.info stubs with your logic          │
      │    - Handle orders, subscriptions, and other events     │
      │                                                          │
      │ 5. For local testing, use curl or Polar's webhook CLI   │
      │                                                          │
      │ 📚 Documentation:                                        │
      │    • Getting started: guides/getting-started.md         │
      │    • Webhooks: guides/webhooks.md                       │
      │    • Configuration: guides/configuration.md             │
      │                                                          │
      └──────────────────────────────────────────────────────┘
      """)
    end
  end
end
