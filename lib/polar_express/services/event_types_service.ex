# File generated from our OpenAPI spec
defmodule PolarExpress.Services.EventTypesService do
  @moduledoc """
  Event-types

  EventTypes API operations.
  """
  alias PolarExpress.Client

  @doc """
  List Event Types

  List event types with aggregated statistics.

  **Scopes**: `events:read` `events:write`

  See `PolarExpress.Params.EventTypesListEventTypesParams` for parameter details.
  """
  @spec list_event_types(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_event_types(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/event-types/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.EventTypeWithStats)
    )
  end

  @doc """
  Update Event Type

  Update an event type's label.

  See `PolarExpress.Params.EventTypesUpdateEventTypeParams` for parameter details.
  """
  @spec update_event_type(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.EventType.t()} | {:error, PolarExpress.Error.t()}
  def update_event_type(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/event-types/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.EventType)
    )
  end
end
