# File generated from our OpenAPI spec
defmodule PolarExpress.Services.MetersService do
  @moduledoc """
  Meters

  Meters API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Meter

  Create a meter.

  **Scopes**: `meters:write`

  See `PolarExpress.Params.MetersCreateMeterParams` for parameter details.
  """
  @spec create_meter(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Meter.t()} | {:error, PolarExpress.Error.t()}
  def create_meter(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/meters/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Meter)
    )
  end

  @doc """
  Get Meter

  Get a meter by ID.

  **Scopes**: `meters:read` `meters:write`

  See `PolarExpress.Params.MetersGetMeterParams` for parameter details.
  """
  @spec get_meter(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Meter.t()} | {:error, PolarExpress.Error.t()}
  def get_meter(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/meters/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Meter)
    )
  end

  @doc """
  Get Meter Quantities

  Get quantities of a meter over a time period.

  **Scopes**: `meters:read` `meters:write`

  See `PolarExpress.Params.MetersGetMeterQuantitiesParams` for parameter details.
  """
  @spec get_meter_quantities(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MeterQuantities.t()} | {:error, PolarExpress.Error.t()}
  def get_meter_quantities(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/meters/#{id}/quantities",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MeterQuantities)
    )
  end

  @doc """
  List Meters

  List meters.

  **Scopes**: `meters:read` `meters:write`

  See `PolarExpress.Params.MetersListMetersParams` for parameter details.
  """
  @spec list_meters(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_meters(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/meters/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Meter)
    )
  end

  @doc """
  Update Meter

  Update a meter.

  **Scopes**: `meters:write`

  See `PolarExpress.Params.MetersUpdateMeterParams` for parameter details.
  """
  @spec update_meter(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Meter.t()} | {:error, PolarExpress.Error.t()}
  def update_meter(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/meters/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Meter)
    )
  end
end
