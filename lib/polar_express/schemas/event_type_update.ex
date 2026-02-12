# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventTypeUpdate do
  @moduledoc """
  EventTypeUpdate
  """

  @typedoc """
  * `label` - The label for the event type. Max length: 128.
  * `label_property_selector` - Property path to extract dynamic label from event metadata (e.g., 'subject' or 'metadata.subject'). Nullable.
  """
  @type t :: %__MODULE__{
          label: String.t() | nil,
          label_property_selector: String.t() | nil
        }

  defstruct [:label, :label_property_selector]

  @schema_name "EventTypeUpdate"
  def schema_name, do: @schema_name
end
