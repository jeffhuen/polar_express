# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventsIngest do
  @moduledoc """
  EventsIngest
  """

  @typedoc """
  * `events` - List of events to ingest.
  """
  @type t :: %__MODULE__{
          events:
            [
              PolarExpress.Schemas.EventCreateCustomer.t()
              | PolarExpress.Schemas.EventCreateExternalCustomer.t()
            ]
            | nil
        }

  defstruct [:events]

  @schema_name "EventsIngest"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "events" =>
        {:union, :variants,
         [
           PolarExpress.Schemas.EventCreateCustomer,
           PolarExpress.Schemas.EventCreateExternalCustomer
         ]}
    }
  end
end
