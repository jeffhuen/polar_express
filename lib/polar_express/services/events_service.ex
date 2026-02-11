# File generated from our OpenAPI spec
defmodule PolarExpress.Services.EventsService do
  @moduledoc """
  Events

  Events API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Event

  Get an event by ID.

  **Scopes**: `events:read` `events:write`

  See `PolarExpress.Params.EventsGetEventParams` for parameter details.
  """
  @spec get_event(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Event.t()} | {:error, PolarExpress.Error.t()}
  def get_event(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/events/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Event)
    )
  end

  @doc """
  Ingest Events

  Ingest batch of events.

  **Scopes**: `events:write`

  See `PolarExpress.Params.EventsIngestEventsParams` for parameter details.
  """
  @spec ingest_events(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.EventsIngestResponse.t()} | {:error, PolarExpress.Error.t()}
  def ingest_events(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/events/ingest",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.EventsIngestResponse)
    )
  end

  @doc """
  List Event Names

  List event names.

  **Scopes**: `events:read` `events:write`

  See `PolarExpress.Params.EventsListEventNamesParams` for parameter details.
  """
  @spec list_event_names(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_event_names(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/events/names",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.EventName)
    )
  end

  @doc """
  List Events

  List events.

  **Scopes**: `events:read` `events:write`

  See `PolarExpress.Params.EventsListEventsParams` for parameter details.
  """
  @spec list_events(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_events(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/events/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Event)
    )
  end
end
