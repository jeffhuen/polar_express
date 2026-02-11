# File generated from our OpenAPI spec
defmodule PolarExpress.Services.OrdersService do
  @moduledoc """
  Orders

  Orders API operations.
  """
  alias PolarExpress.Client

  @doc """
  Export Subscriptions

  Export orders as a CSV file.

  **Scopes**: `orders:read`

  See `PolarExpress.Params.OrdersExportSubscriptionsParams` for parameter details.
  """
  @spec export_subscriptions(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def export_subscriptions(client, params \\ %{}, opts \\ []) do
    Client.request(client, :get, "/v1/orders/export", Keyword.merge(opts, params: params))
  end

  @doc """
  Generate Order Invoice

  Trigger generation of an order's invoice.

  **Scopes**: `orders:read`

  See `PolarExpress.Params.OrdersGenerateOrderInvoiceParams` for parameter details.
  """
  @spec generate_order_invoice(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def generate_order_invoice(client, id, params \\ %{}, opts \\ []) do
    Client.request(client, :post, "/v1/orders/#{id}/invoice", Keyword.merge(opts, params: params))
  end

  @doc """
  Get Order

  Get an order by ID.

  **Scopes**: `orders:read`

  See `PolarExpress.Params.OrdersGetOrderParams` for parameter details.
  """
  @spec get_order(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Order.t()} | {:error, PolarExpress.Error.t()}
  def get_order(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/orders/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Order)
    )
  end

  @doc """
  Get Order Invoice

  Get an order's invoice data.

  **Scopes**: `orders:read`

  See `PolarExpress.Params.OrdersGetOrderInvoiceParams` for parameter details.
  """
  @spec get_order_invoice(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.OrderInvoice.t()} | {:error, PolarExpress.Error.t()}
  def get_order_invoice(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/orders/#{id}/invoice",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.OrderInvoice)
    )
  end

  @doc """
  List Orders

  List orders.

  **Scopes**: `orders:read`

  See `PolarExpress.Params.OrdersListOrdersParams` for parameter details.
  """
  @spec list_orders(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_orders(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/orders/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Order)
    )
  end

  @doc """
  Update Order

  Update an order.

  **Scopes**: `orders:write`

  See `PolarExpress.Params.OrdersUpdateOrderParams` for parameter details.
  """
  @spec update_order(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Order.t()} | {:error, PolarExpress.Error.t()}
  def update_order(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/orders/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Order)
    )
  end
end
