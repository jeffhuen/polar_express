# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventsIngestResponse do
  @moduledoc """
  EventsIngestResponse
  """

  @typedoc """
  * `duplicates` - Number of duplicate events skipped.
  * `inserted` - Number of events inserted.
  """
  @type t :: %__MODULE__{
          duplicates: integer() | nil,
          inserted: integer() | nil
        }

  defstruct [:duplicates, :inserted]

  @schema_name "EventsIngestResponse"
  def schema_name, do: @schema_name
end
