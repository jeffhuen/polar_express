# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventType do
  @moduledoc """
  EventType
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - The label for the event type.
  * `label_property_selector` - Property path to extract dynamic label from event metadata. Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the event type.
  * `organization_id` - The ID of the organization owning the event type. Format: uuid4.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          label_property_selector: String.t() | nil,
          modified_at: DateTime.t() | nil,
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

  @schema_name "EventType"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
