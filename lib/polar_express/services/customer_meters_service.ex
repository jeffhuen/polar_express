# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerMetersService do
  @moduledoc """
  CustomerMeters

  CustomerMeters API operations.
  """
  alias PolarExpress.Client

  @doc """
  Credit Customer Meter

  Manually grant credits on a customer meter.

  Returns the `meter.credited` event. The customer meter balance is updated
  before the response is returned, unless the meter is being updated
  concurrently, in which case it catches up shortly after.

  **Scopes**: `customers:write`

  See `PolarExpress.Params.CustomerMetersCreditCustomerMeterParams` for parameter details.
  """
  @spec credit_customer_meter(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MeterCreditEvent.t()} | {:error, PolarExpress.Error.t()}
  def credit_customer_meter(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-meters/credits",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MeterCreditEvent)
    )
  end

  @doc """
  Get Customer Meter

  Get a customer meter by ID.

  **Scopes**: `customer_meters:read`

  See `PolarExpress.Params.CustomerMetersGetCustomerMeterParams` for parameter details.
  """
  @spec get_customer_meter(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerMeter.t()} | {:error, PolarExpress.Error.t()}
  def get_customer_meter(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-meters/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerMeter)
    )
  end

  @doc """
  List Customer Meters

  List customer meters.

  **Scopes**: `customer_meters:read`

  See `PolarExpress.Params.CustomerMetersListCustomerMetersParams` for parameter details.
  """
  @spec list_customer_meters(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_customer_meters(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-meters/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerMeter)
    )
  end
end
