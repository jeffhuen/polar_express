# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.EventTypes do
  @moduledoc """
  Event-types

  EventTypes API operations.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - The label for the event type.
  * `label_property_selector` - Property path to extract dynamic label from event metadata.
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the event type.
  * `organization_id` - The ID of the organization owning the event type. Format: uuid4.
  """
  @type t :: %__MODULE__{
          created_at: String.t() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          label_property_selector: term() | nil,
          modified_at: term() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil
        }

  defstruct [
    :created_at,
    :id,
    :label,
    :label_property_selector,
    :modified_at,
    :name,
    :organization_id
  ]

  @object_name "event-types"
  def object_name, do: @object_name
end
