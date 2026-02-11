# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.CustomersService do
  @moduledoc """
  Customers

  Customers API operations.
  """
  alias PolarExpress.Client

  @doc """
  Add Customer Payment Method

  Add a payment method to the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.CustomersAddCustomerPaymentMethodParams` for parameter details.
  """
  @spec add_customer_payment_method(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerPaymentMethodCreateResponse.t()}
          | {:error, PolarExpress.Error.t()}
  def add_customer_payment_method(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/customers/me/payment-methods",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.CustomerPaymentMethodCreateResponse
      )
    )
  end

  @doc """
  Confirm Customer Payment Method

  Confirm a payment method for the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.CustomersConfirmCustomerPaymentMethodParams` for parameter details.
  """
  @spec confirm_customer_payment_method(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerPaymentMethodCreateResponse.t()}
          | {:error, PolarExpress.Error.t()}
  def confirm_customer_payment_method(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/customers/me/payment-methods/confirm",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.CustomerPaymentMethodCreateResponse
      )
    )
  end

  @doc """
  Delete Customer Payment Method

  Delete a payment method from the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.CustomersDeleteCustomerPaymentMethodParams` for parameter details.
  """
  @spec delete_customer_payment_method(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_customer_payment_method(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/customer-portal/customers/me/payment-methods/#{id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get Customer

  Get authenticated customer.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.CustomersGetCustomerParams` for parameter details.
  """
  @spec get_customer(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerPortalCustomer.t()}
          | {:error, PolarExpress.Error.t()}
  def get_customer(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/customers/me",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerPortalCustomer)
    )
  end

  @doc """
  List Customer Payment Methods

  Get saved payment methods of the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.CustomersListCustomerPaymentMethodsParams` for parameter details.
  """
  @spec list_customer_payment_methods(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_customer_payment_methods(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/customers/me/payment-methods",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerPaymentMethod)
    )
  end

  @doc """
  Update Customer

  Update authenticated customer.

  See `PolarExpress.Params.CustomerPortal.CustomersUpdateCustomerParams` for parameter details.
  """
  @spec update_customer(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerPortalCustomer.t()}
          | {:error, PolarExpress.Error.t()}
  def update_customer(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/customer-portal/customers/me",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerPortalCustomer)
    )
  end
end
