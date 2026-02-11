# File generated from our OpenAPI spec
defmodule PolarExpress.Services.SubscriptionsService do
  @moduledoc """
  Subscriptions

  Subscriptions API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Subscription

  Create a subscription programmatically.

  This endpoint only allows to create subscription on free products.
  For paid products, use the checkout flow.

  No initial order will be created and no confirmation email will be sent.

  **Scopes**: `subscriptions:write`

  See `PolarExpress.Params.SubscriptionsCreateSubscriptionParams` for parameter details.
  """
  @spec create_subscription(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Subscription.t()} | {:error, PolarExpress.Error.t()}
  def create_subscription(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/subscriptions/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Subscription)
    )
  end

  @doc """
  Export Subscriptions

  Export subscriptions as a CSV file.

  **Scopes**: `subscriptions:read` `subscriptions:write`

  See `PolarExpress.Params.SubscriptionsExportSubscriptionsParams` for parameter details.
  """
  @spec export_subscriptions(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def export_subscriptions(client, params \\ %{}, opts \\ []) do
    Client.request(client, :get, "/v1/subscriptions/export", Keyword.merge(opts, params: params))
  end

  @doc """
  Get Subscription

  Get a subscription by ID.

  **Scopes**: `subscriptions:read` `subscriptions:write`

  See `PolarExpress.Params.SubscriptionsGetSubscriptionParams` for parameter details.
  """
  @spec get_subscription(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Subscription.t()} | {:error, PolarExpress.Error.t()}
  def get_subscription(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/subscriptions/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Subscription)
    )
  end

  @doc """
  List Subscriptions

  List subscriptions.

  **Scopes**: `subscriptions:read` `subscriptions:write`

  See `PolarExpress.Params.SubscriptionsListSubscriptionsParams` for parameter details.
  """
  @spec list_subscriptions(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_subscriptions(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/subscriptions/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Subscription)
    )
  end

  @doc """
  Revoke Subscription

  Revoke a subscription, i.e cancel immediately.

  **Scopes**: `subscriptions:write`

  See `PolarExpress.Params.SubscriptionsRevokeSubscriptionParams` for parameter details.
  """
  @spec revoke_subscription(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Subscription.t()} | {:error, PolarExpress.Error.t()}
  def revoke_subscription(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/subscriptions/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Subscription)
    )
  end

  @doc """
  Update Subscription

  Update a subscription.

  **Scopes**: `subscriptions:write`

  See `PolarExpress.Params.SubscriptionsUpdateSubscriptionParams` for parameter details.
  """
  @spec update_subscription(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Subscription.t()} | {:error, PolarExpress.Error.t()}
  def update_subscription(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/subscriptions/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Subscription)
    )
  end
end
