# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.SubscriptionsService do
  @moduledoc """
  Subscriptions

  Subscriptions API operations.
  """
  alias PolarExpress.Client

  @doc """
  Cancel Subscription

  Cancel a subscription of the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.SubscriptionsCancelSubscriptionParams` for parameter details.
  """
  @spec cancel_subscription(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSubscription.t()} | {:error, PolarExpress.Error.t()}
  def cancel_subscription(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/customer-portal/subscriptions/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSubscription)
    )
  end

  @doc """
  Get Subscription

  Get a subscription for the authenticated customer.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.SubscriptionsGetSubscriptionParams` for parameter details.
  """
  @spec get_subscription(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSubscription.t()} | {:error, PolarExpress.Error.t()}
  def get_subscription(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/subscriptions/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSubscription)
    )
  end

  @doc """
  List Subscriptions

  List subscriptions of the authenticated customer.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.SubscriptionsListSubscriptionsParams` for parameter details.
  """
  @spec list_subscriptions(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_subscriptions(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/subscriptions/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSubscription)
    )
  end

  @doc """
  Update Subscription

  Update a subscription of the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.SubscriptionsUpdateSubscriptionParams` for parameter details.
  """
  @spec update_subscription(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSubscription.t()} | {:error, PolarExpress.Error.t()}
  def update_subscription(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/customer-portal/subscriptions/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSubscription)
    )
  end
end
