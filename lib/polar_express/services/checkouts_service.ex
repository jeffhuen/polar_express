# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CheckoutsService do
  @moduledoc """
  Checkouts

  Checkouts API operations.
  """
  alias PolarExpress.Client

  @doc """
  Confirm Checkout Session from Client

  Confirm a checkout session by client secret.

  Orders and subscriptions will be processed.

  See `PolarExpress.Params.CheckoutsConfirmCheckoutSessionFromClientParams` for parameter details.
  """
  @spec confirm_checkout_session_from_client(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CheckoutPublicConfirmed.t()}
          | {:error, PolarExpress.Error.t()}
  def confirm_checkout_session_from_client(client, client_secret, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/checkouts/client/#{client_secret}/confirm",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CheckoutPublicConfirmed)
    )
  end

  @doc """
  Create Checkout Session

  Create a checkout session.

  **Scopes**: `checkouts:write`

  See `PolarExpress.Params.CheckoutsCreateCheckoutSessionParams` for parameter details.
  """
  @spec create_checkout_session(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Checkout.t()} | {:error, PolarExpress.Error.t()}
  def create_checkout_session(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/checkouts/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Checkout)
    )
  end

  @doc """
  Get Checkout Session

  Get a checkout session by ID.

  **Scopes**: `checkouts:read` `checkouts:write`

  See `PolarExpress.Params.CheckoutsGetCheckoutSessionParams` for parameter details.
  """
  @spec get_checkout_session(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Checkout.t()} | {:error, PolarExpress.Error.t()}
  def get_checkout_session(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/checkouts/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Checkout)
    )
  end

  @doc """
  Get Checkout Session from Client

  Get a checkout session by client secret.

  See `PolarExpress.Params.CheckoutsGetCheckoutSessionFromClientParams` for parameter details.
  """
  @spec get_checkout_session_from_client(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CheckoutPublic.t()} | {:error, PolarExpress.Error.t()}
  def get_checkout_session_from_client(client, client_secret, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/checkouts/client/#{client_secret}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CheckoutPublic)
    )
  end

  @doc """
  List Checkout Sessions

  List checkout sessions.

  **Scopes**: `checkouts:read` `checkouts:write`

  See `PolarExpress.Params.CheckoutsListCheckoutSessionsParams` for parameter details.
  """
  @spec list_checkout_sessions(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_checkout_sessions(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/checkouts/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Checkout)
    )
  end

  @doc """
  Update Checkout Session

  Update a checkout session.

  **Scopes**: `checkouts:write`

  See `PolarExpress.Params.CheckoutsUpdateCheckoutSessionParams` for parameter details.
  """
  @spec update_checkout_session(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Checkout.t()} | {:error, PolarExpress.Error.t()}
  def update_checkout_session(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/checkouts/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Checkout)
    )
  end

  @doc """
  Update Checkout Session from Client

  Update a checkout session by client secret.

  See `PolarExpress.Params.CheckoutsUpdateCheckoutSessionFromClientParams` for parameter details.
  """
  @spec update_checkout_session_from_client(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CheckoutPublic.t()} | {:error, PolarExpress.Error.t()}
  def update_checkout_session_from_client(client, client_secret, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/checkouts/client/#{client_secret}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CheckoutPublic)
    )
  end
end
