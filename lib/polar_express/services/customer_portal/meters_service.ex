# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.MetersService do
  @moduledoc """
  Meters

  Meters API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Customer Meter

  Get a meter by ID for the authenticated customer.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.MetersGetCustomerMeterParams` for parameter details.
  """
  @spec get_customer_meter(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerCustomerMeter.t()} | {:error, PolarExpress.Error.t()}
  def get_customer_meter(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/meters/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerCustomerMeter)
    )
  end

  @doc """
  List Meters

  List meters of the authenticated customer.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.MetersListMetersParams` for parameter details.
  """
  @spec list_meters(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_meters(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/meters/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerCustomerMeter)
    )
  end
end
