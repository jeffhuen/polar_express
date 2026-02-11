if Code.ensure_loaded?(Plug.Conn) do
  defmodule PolarExpress.WebhookPlug do
    @moduledoc """
    Plug for verifying Polar webhook signatures.

    Reads the raw request body, verifies the Standard Webhooks headers
    (`webhook-id`, `webhook-timestamp`, `webhook-signature`), deserializes the
    event, and assigns it to `conn.assigns.polar_express_event`.

    Returns 400 on verification failure.

    ## Setup

    Add to your endpoint *before* `Plug.Parsers` (which consumes the body):

        plug PolarExpress.WebhookPlug,
          path: "/webhook/polar"

    The signing secret is read from `config :polar_express, :webhook_secret`.

    To override the secret per-plug (e.g. multiple webhook endpoints):

        plug PolarExpress.WebhookPlug,
          secret: "whsec_other",
          path: "/webhook/polar"

    Or use a runtime MFA tuple:

        plug PolarExpress.WebhookPlug,
          secret: {MyApp.Config, :polar_express_webhook_secret, []},
          path: "/webhook/polar"

    ## Options

      * `:secret` - Signing secret (string or `{mod, fun, args}` MFA tuple).
        Defaults to `Application.get_env(:polar_express, :webhook_secret)`.
      * `:path` - Request path to match (string). Required.
      * `:tolerance` - Maximum event age in seconds (default: 300).
    """

    @behaviour Plug

    import Plug.Conn

    @impl true
    def init(opts) do
      unless Keyword.has_key?(opts, :path),
        do: raise(ArgumentError, "PolarExpress.WebhookPlug requires :path option")

      opts
    end

    @impl true
    def call(%Plug.Conn{request_path: path} = conn, opts) do
      if path == Keyword.fetch!(opts, :path) do
        verify_and_assign(conn, opts)
      else
        conn
      end
    end

    defp verify_and_assign(conn, opts) do
      secret = resolve_secret(opts)
      tolerance = Keyword.get(opts, :tolerance, 300)

      with {:ok, body, conn} <- read_body(conn),
           {:ok, headers} <- extract_webhook_headers(conn),
           {:ok, event} <-
             PolarExpress.Webhook.construct_event(body, headers, secret, tolerance: tolerance) do
        assign(conn, :polar_express_event, event)
      else
        {:error, %PolarExpress.Error{message: message}} ->
          conn
          |> put_resp_content_type("text/plain")
          |> send_resp(400, message || "Webhook verification failed")
          |> halt()

        {:error, :missing_headers} ->
          conn
          |> put_resp_content_type("text/plain")
          |> send_resp(400, "Missing required Standard Webhooks headers")
          |> halt()
      end
    end

    defp extract_webhook_headers(conn) do
      with [msg_id | _] <- get_req_header(conn, "webhook-id"),
           [timestamp | _] <- get_req_header(conn, "webhook-timestamp"),
           [signature | _] <- get_req_header(conn, "webhook-signature") do
        {:ok,
         %{
           "webhook-id" => msg_id,
           "webhook-timestamp" => timestamp,
           "webhook-signature" => signature
         }}
      else
        [] -> {:error, :missing_headers}
      end
    end

    defp resolve_secret(opts) do
      case Keyword.get(opts, :secret) do
        nil ->
          case Application.get_env(:polar_express, :webhook_secret) do
            nil ->
              raise ArgumentError, """
              PolarExpress webhook secret not configured. Either:

                  config :polar_express, webhook_secret: "whsec_..."

              Or pass it explicitly:

                  plug PolarExpress.WebhookPlug, secret: "whsec_...", path: "/webhook/polar"
              """

            secret ->
              resolve_secret_value(secret)
          end

        secret ->
          resolve_secret_value(secret)
      end
    end

    defp resolve_secret_value({mod, fun, args}), do: apply(mod, fun, args)
    defp resolve_secret_value(secret) when is_binary(secret), do: secret
  end
end
