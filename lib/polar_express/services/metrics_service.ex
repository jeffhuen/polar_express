# File generated from our OpenAPI spec
defmodule PolarExpress.Services.MetricsService do
  @moduledoc """
  Metrics

  Metrics API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Metrics

  Get metrics about your orders and subscriptions.

  Currency values are output in cents.

  **Scopes**: `metrics:read`

  See `PolarExpress.Params.MetricsGetMetricsParams` for parameter details.
  """
  @spec get_metrics(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MetricsResponse.t()} | {:error, PolarExpress.Error.t()}
  def get_metrics(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/metrics/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MetricsResponse)
    )
  end

  @doc """
  Get Metrics Limits

  Get the interval limits for the metrics endpoint.

  **Scopes**: `metrics:read`

  See `PolarExpress.Params.MetricsGetMetricsLimitsParams` for parameter details.
  """
  @spec get_metrics_limits(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MetricsLimits.t()} | {:error, PolarExpress.Error.t()}
  def get_metrics_limits(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/metrics/limits",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MetricsLimits)
    )
  end
end
