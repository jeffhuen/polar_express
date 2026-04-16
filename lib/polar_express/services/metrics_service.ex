# File generated from our OpenAPI spec
defmodule PolarExpress.Services.MetricsService do
  @moduledoc """
  Metrics

  Metrics API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Metric Dashboard

  Create a user-defined metric dashboard.

  **Scopes**: `metrics:write`

  See `PolarExpress.Params.MetricsCreateMetricDashboardParams` for parameter details.
  """
  @spec create_metric_dashboard(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MetricDashboardSchema.t()} | {:error, PolarExpress.Error.t()}
  def create_metric_dashboard(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/metrics/dashboards",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MetricDashboardSchema)
    )
  end

  @doc """
  Delete Metric Dashboard

  Delete a user-defined metric dashboard.

  **Scopes**: `metrics:write`

  See `PolarExpress.Params.MetricsDeleteMetricDashboardParams` for parameter details.
  """
  @spec delete_metric_dashboard(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_metric_dashboard(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/metrics/dashboards/#{id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Export Metrics

  Export metrics as a CSV file.

  **Scopes**: `metrics:read`

  See `PolarExpress.Params.MetricsExportMetricsParams` for parameter details.
  """
  @spec export_metrics(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def export_metrics(client, params \\ %{}, opts \\ []) do
    Client.request(client, :get, "/v1/metrics/export", Keyword.merge(opts, params: params))
  end

  @doc """
  Get Metric Dashboard

  Get a user-defined metric dashboard by ID.

  **Scopes**: `metrics:read`

  See `PolarExpress.Params.MetricsGetMetricDashboardParams` for parameter details.
  """
  @spec get_metric_dashboard(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MetricDashboardSchema.t()} | {:error, PolarExpress.Error.t()}
  def get_metric_dashboard(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/metrics/dashboards/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MetricDashboardSchema)
    )
  end

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

  @doc """
  List Metric Dashboards

  List user-defined metric dashboards.

  **Scopes**: `metrics:read`

  See `PolarExpress.Params.MetricsListMetricDashboardsParams` for parameter details.
  """
  @spec list_metric_dashboards(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MetricDashboardSchema.t()} | {:error, PolarExpress.Error.t()}
  def list_metric_dashboards(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/metrics/dashboards",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MetricDashboardSchema)
    )
  end

  @doc """
  Update Metric Dashboard

  Update a user-defined metric dashboard.

  **Scopes**: `metrics:write`

  See `PolarExpress.Params.MetricsUpdateMetricDashboardParams` for parameter details.
  """
  @spec update_metric_dashboard(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MetricDashboardSchema.t()} | {:error, PolarExpress.Error.t()}
  def update_metric_dashboard(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/metrics/dashboards/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MetricDashboardSchema)
    )
  end
end
