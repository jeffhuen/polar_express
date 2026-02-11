# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventName do
  @moduledoc """
  EventName
  """

  @typedoc """
  * `first_seen` - The first time the event occurred. Format: date-time.
  * `last_seen` - The last time the event occurred. Format: date-time.
  * `name` - The name of the event.
  * `occurrences` - Number of times the event has occurred.
  * `source` - The source of the event. `system` events are created by Polar. `user` events are the one you create through our ingestion API.
  """
  @type t :: %__MODULE__{
          first_seen: DateTime.t() | nil,
          last_seen: DateTime.t() | nil,
          name: String.t() | nil,
          occurrences: integer() | nil,
          source: PolarExpress.Schemas.EventSource.t() | nil
        }

  defstruct [:first_seen, :last_seen, :name, :occurrences, :source]

  @schema_name "EventName"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "source" => PolarExpress.Schemas.EventSource
    }
  end

  def __date_fields__, do: [:first_seen, :last_seen]
end
