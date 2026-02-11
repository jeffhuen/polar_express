defmodule PolarExpress do
  @moduledoc """
  Elixir SDK and client for the Polar API.

  ## Configuration

  Add your PolarExpress credentials to your application config:

      # config/runtime.exs
      config :polar_express,
        api_key: System.fetch_env!("POLAR_ACCESS_TOKEN"),
        webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET")

  Then create a client — it picks up your config automatically:

      client = PolarExpress.client()

      {:ok, customer} = PolarExpress.Services.CustomerService.create(client, %{
        email: "jane@example.com"
      })

  ## Per-Client Overrides

  Override any config option when creating a client:

      # Connect: act on behalf of a connected account
      client = PolarExpress.client(organization_id: "acct_...")

      # Explicit key (ignores config)
      client = PolarExpress.client("pk_test_other", max_retries: 5)

  ## Config Precedence

  Options are resolved in this order (highest wins):

    1. Explicit arguments to `client/1` or `client/2`
    2. Application config (`config :polar_express, ...`)
    3. Struct defaults (e.g. `max_retries: 2`)

  ## Supported Config Keys

  Client options (used by `PolarExpress.client/0,1,2`):

    * `:api_key` - PolarExpress secret key (required)
    * `:api_version` - Pin a specific Polar API version
    * `:polar_express_account` - Default connected account ID (Stripe Connect)
    * `:client_id` - OAuth client ID
    * `:max_retries` - Maximum retry attempts (default: 2)
    * `:open_timeout` - Connection timeout in ms (default: 30_000)
    * `:read_timeout` - Read timeout in ms (default: 80_000)
    * `:finch` - Custom Finch instance name (default: `PolarExpress.Finch`)

  Non-client options (used by other modules):

    * `:webhook_secret` - Webhook signing secret (used by `PolarExpress.WebhookPlug`)
  """

  @version Mix.Project.config()[:version]

  # Fields that are valid on %PolarExpress.Client{}
  @client_keys Map.keys(%PolarExpress.Client{}) -- [:__struct__]

  @doc "Returns the library version."
  @spec version() :: String.t()
  def version, do: @version

  @doc """
  Create a new PolarExpress client from application config.

  Reads `:api_key` and other options from `config :polar_express`.
  Raises if `:api_key` is not configured.

  ## Example

      # config/runtime.exs
      config :polar_express, api_key: System.fetch_env!("POLAR_ACCESS_TOKEN")

      # Then in your code:
      client = PolarExpress.client()
  """
  @spec client() :: PolarExpress.Client.t()
  def client do
    config = config_defaults()

    case Keyword.fetch(config, :api_key) do
      {:ok, api_key} when is_binary(api_key) and api_key != "" ->
        struct!(PolarExpress.Client, config)

      _ ->
        raise ArgumentError, """
        Polar API key not configured. Add to your config:

            config :polar_express, api_key: "pk_test_..."

        Or pass it explicitly:

            PolarExpress.client("pk_test_...")
        """
    end
  end

  @doc """
  Create a new PolarExpress client with an explicit API key.

  Application config provides defaults for all other options.

  ## Examples

      client = PolarExpress.client("pk_test_...")
      client = PolarExpress.client("pk_test_...", organization_id: "acct_...", max_retries: 5)
  """
  @spec client(String.t(), keyword()) :: PolarExpress.Client.t()
  def client(api_key, opts) when is_binary(api_key) do
    config = config_defaults()
    merged = Keyword.merge(config, opts) |> Keyword.put(:api_key, api_key)
    merged = resolve_base_url(merged)
    struct!(PolarExpress.Client, merged)
  end

  @doc """
  Create a new PolarExpress client with overrides.

  When given a string, treated as an explicit API key.
  When given a keyword list, merges with application config.

  ## Examples

      # Explicit API key
      client = PolarExpress.client("pk_test_...")

      # Config defaults + overrides
      client = PolarExpress.client(organization_id: "acct_...", max_retries: 5)
  """
  @spec client(String.t() | keyword()) :: PolarExpress.Client.t()
  def client(api_key) when is_binary(api_key) do
    client(api_key, [])
  end

  def client(opts) when is_list(opts) do
    config = config_defaults()
    merged = Keyword.merge(config, opts) |> resolve_base_url()

    case Keyword.fetch(merged, :api_key) do
      {:ok, api_key} when is_binary(api_key) and api_key != "" ->
        struct!(PolarExpress.Client, merged)

      _ ->
        raise ArgumentError, """
        Polar API key not configured. Add to your config:

            config :polar_express, api_key: "pk_test_..."

        Or pass it explicitly:

            PolarExpress.client("pk_test_...")
        """
    end
  end

  # Derive base_url from the :server option if not explicitly set.
  defp resolve_base_url(opts) do
    if Keyword.has_key?(opts, :base_url) do
      opts
    else
      case Keyword.get(opts, :server) do
        :sandbox -> Keyword.put(opts, :base_url, "https://sandbox-api.polar.sh")
        _ -> opts
      end
    end
  end

  # Read application config and filter to valid Client struct fields.
  defp config_defaults do
    Application.get_all_env(:polar_express)
    |> Keyword.take(@client_keys)
  end

  # Service module getters for lazy access to top-level services

  @doc "Get BenefitGrantsService module"
  def benefit_grants, do: PolarExpress.Services.BenefitGrantsService

  @doc "Get BenefitsService module"
  def benefits, do: PolarExpress.Services.BenefitsService

  @doc "Get CheckoutLinksService module"
  def checkout_links, do: PolarExpress.Services.CheckoutLinksService

  @doc "Get CheckoutsService module"
  def checkouts, do: PolarExpress.Services.CheckoutsService

  @doc "Get CustomFieldsService module"
  def custom_fields, do: PolarExpress.Services.CustomFieldsService

  @doc "Get CustomerMetersService module"
  def customer_meters, do: PolarExpress.Services.CustomerMetersService

  @doc "Get CustomerSeatsService module"
  def customer_seats, do: PolarExpress.Services.CustomerSeatsService

  @doc "Get CustomerSessionsService module"
  def customer_sessions, do: PolarExpress.Services.CustomerSessionsService

  @doc "Get CustomersService module"
  def customers, do: PolarExpress.Services.CustomersService

  @doc "Get DiscountsService module"
  def discounts, do: PolarExpress.Services.DiscountsService

  @doc "Get DisputesService module"
  def disputes, do: PolarExpress.Services.DisputesService

  @doc "Get EventsService module"
  def events, do: PolarExpress.Services.EventsService

  @doc "Get EventTypesService module"
  def event_types, do: PolarExpress.Services.EventTypesService

  @doc "Get FilesService module"
  def files, do: PolarExpress.Services.FilesService

  @doc "Get LicenseKeysService module"
  def license_keys, do: PolarExpress.Services.LicenseKeysService

  @doc "Get MembersService module"
  def members, do: PolarExpress.Services.MembersService

  @doc "Get MemberSessionsService module"
  def member_sessions, do: PolarExpress.Services.MemberSessionsService

  @doc "Get MetersService module"
  def meters, do: PolarExpress.Services.MetersService

  @doc "Get MetricsService module"
  def metrics, do: PolarExpress.Services.MetricsService

  @doc "Get Oauth2Service module"
  def oauth2, do: PolarExpress.Services.Oauth2Service

  @doc "Get OrdersService module"
  def orders, do: PolarExpress.Services.OrdersService

  @doc "Get OrganizationAccessTokensService module"
  def organization_access_tokens, do: PolarExpress.Services.OrganizationAccessTokensService

  @doc "Get OrganizationsService module"
  def organizations, do: PolarExpress.Services.OrganizationsService

  @doc "Get PaymentsService module"
  def payments, do: PolarExpress.Services.PaymentsService

  @doc "Get ProductsService module"
  def products, do: PolarExpress.Services.ProductsService

  @doc "Get RefundsService module"
  def refunds, do: PolarExpress.Services.RefundsService

  @doc "Get SubscriptionsService module"
  def subscriptions, do: PolarExpress.Services.SubscriptionsService

  @doc "Get WebhooksService module"
  def webhooks, do: PolarExpress.Services.WebhooksService

  @doc "Get CustomerPortal namespace with 12 sub-services"
  def customer_portal, do: PolarExpress.Services.CustomerPortalService
end
