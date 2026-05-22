defmodule PolarExpress do
  @moduledoc """
  Elixir SDK and client for the Polar API.

  ## Configuration

  PolarExpress does not read application configuration. Read credentials from
  your own application boundary, then pass them explicitly when creating a
  client:

      client = PolarExpress.client(System.fetch_env!("POLAR_ACCESS_TOKEN"))

      {:ok, customer} = PolarExpress.Services.CustomersService.create_customer(client, %{
        email: "jane@example.com"
      })

  ## Finch Supervision

  The default client uses a Finch pool named `PolarExpress.Finch`. Add
  `PolarExpress` to your supervision tree, or pass a custom Finch name with
  `:finch`:

      children = [
        PolarExpress
      ]

  ## Per-Client Options

  Override any client option when creating a client:

      client = PolarExpress.client("pk_test_...", server: :sandbox)
      client = PolarExpress.client(api_key: "pk_test_...", max_retries: 5)

  Options are resolved from explicit arguments and `PolarExpress.Client` struct
  defaults only.

  ## Supported Client Options

    * `:api_key` - Polar API key (required)
    * `:server` - API environment: `:production` or `:sandbox` (default: `:production`)
    * `:max_retries` - Maximum retry attempts (default: 2)
    * `:timeout_ms` - Request timeout in ms (default: 30_000)
    * `:finch` - Custom Finch instance name (default: `PolarExpress.Finch`)
  """

  @version Mix.Project.config()[:version]

  @type client_opts :: [
          api_key: String.t(),
          server: PolarExpress.Client.server(),
          base_url: String.t(),
          max_retries: non_neg_integer(),
          timeout_ms: pos_integer(),
          finch: atom()
        ]

  @doc "Returns the library version."
  @spec version() :: String.t()
  def version, do: @version

  @doc """
  Returns the child spec for the default Finch pool.

  Add this to your supervision tree when using the default
  `PolarExpress.Finch` pool:

      children = [
        PolarExpress
      ]

  Pass Finch options directly when you need to customize the pool:

      {PolarExpress, name: MyApp.PolarFinch}
  """
  @spec child_spec(keyword()) :: Supervisor.child_spec()
  def child_spec(opts \\ []) do
    opts = Keyword.put_new(opts, :name, PolarExpress.Finch)
    name = Keyword.fetch!(opts, :name)

    opts
    |> Finch.child_spec()
    |> Supervisor.child_spec(id: name)
  end

  @doc """
  Raises because PolarExpress clients require explicit credentials.

  Use `client/1` or `client/2` instead:

      client = PolarExpress.client("pk_test_...")
  """
  @spec client() :: no_return()
  def client do
    raise missing_api_key_error()
  end

  @doc """
  Create a new PolarExpress client with an explicit API key.
  """
  @spec client(String.t(), keyword()) :: PolarExpress.Client.t()
  def client(api_key, opts) when is_binary(api_key) do
    opts
    |> Keyword.put(:api_key, api_key)
    |> build_client()
  end

  @doc """
  Create a new PolarExpress client.

  When given a string, treated as an explicit API key.
  When given a keyword list, `:api_key` must be present.

  ## Examples

      client = PolarExpress.client("pk_test_...")
      client = PolarExpress.client(api_key: "pk_test_...", server: :sandbox)
  """
  @spec client(String.t() | client_opts()) :: PolarExpress.Client.t()
  def client(api_key) when is_binary(api_key) do
    client(api_key, [])
  end

  def client(opts) when is_list(opts) do
    build_client(opts)
  end

  defp build_client(opts) do
    opts = resolve_base_url(opts)

    case Keyword.fetch(opts, :api_key) do
      {:ok, api_key} when is_binary(api_key) and api_key != "" ->
        struct!(PolarExpress.Client, opts)

      _ ->
        raise missing_api_key_error()
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

  defp missing_api_key_error do
    ArgumentError.exception("""
    Polar API key not configured. Please pass an API key explicitly:

        PolarExpress.client("pk_test_...")

    Or pass it in keyword options:

        PolarExpress.client(api_key: "pk_test_...")
    """)
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
