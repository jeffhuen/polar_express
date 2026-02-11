# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.OrdersService do
  @moduledoc """
  Orders

  Orders API operations.
  """
  alias PolarExpress.Client

  @doc """
  Confirm Retry Payment

  Confirm a retry payment using a Stripe confirmation token.

  See `PolarExpress.Params.CustomerPortal.OrdersConfirmRetryPaymentParams` for parameter details.
  """
  @spec confirm_retry_payment(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerOrderPaymentConfirmation.t()}
          | {:error, PolarExpress.Error.t()}
  def confirm_retry_payment(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/orders/#{id}/confirm-payment",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.CustomerOrderPaymentConfirmation
      )
    )
  end

  @doc """
  Generate Order Invoice

  Trigger generation of an order's invoice.

  See `PolarExpress.Params.CustomerPortal.OrdersGenerateOrderInvoiceParams` for parameter details.
  """
  @spec generate_order_invoice(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def generate_order_invoice(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/orders/#{id}/invoice",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get Order

  Get an order by ID for the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.OrdersGetOrderParams` for parameter details.
  """
  @spec get_order(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerOrder.t()} | {:error, PolarExpress.Error.t()}
  def get_order(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/orders/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerOrder)
    )
  end

  @doc """
  Get Order Invoice

  Get an order's invoice data.

  See `PolarExpress.Params.CustomerPortal.OrdersGetOrderInvoiceParams` for parameter details.
  """
  @spec get_order_invoice(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerOrderInvoice.t()} | {:error, PolarExpress.Error.t()}
  def get_order_invoice(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/orders/#{id}/invoice",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerOrderInvoice)
    )
  end

  @doc """
  Get Order Payment Status

  Get the current payment status for an order.

  See `PolarExpress.Params.CustomerPortal.OrdersGetOrderPaymentStatusParams` for parameter details.
  """
  @spec get_order_payment_status(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerOrderPaymentStatus.t()}
          | {:error, PolarExpress.Error.t()}
  def get_order_payment_status(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/orders/#{id}/payment-status",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.CustomerOrderPaymentStatus
      )
    )
  end

  @doc """
  List Orders

  List orders of the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.OrdersListOrdersParams` for parameter details.
  """
  @spec list_orders(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_orders(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/orders/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerOrder)
    )
  end

  @doc """
  Update Order

  Update an order for the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.OrdersUpdateOrderParams` for parameter details.
  """
  @spec update_order(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerOrder.t()} | {:error, PolarExpress.Error.t()}
  def update_order(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/customer-portal/orders/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerOrder)
    )
  end
end
