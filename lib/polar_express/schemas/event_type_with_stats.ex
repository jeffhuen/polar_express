# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventTypeWithStats do
  @moduledoc """
  EventTypeWithStats
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `first_seen` - The first time the event occurred. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - The label for the event type.
  * `label_property_selector` - Property path to extract dynamic label from event metadata. Nullable.
  * `last_seen` - The last time the event occurred. Format: date-time.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the event type.
  * `occurrences` - Number of times the event has occurred.
  * `organization_id` - The ID of the organization owning the event type. Format: uuid4.
  * `source` - The source of the events (system or user).
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          first_seen: DateTime.t() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          label_property_selector: String.t() | nil,
          last_seen: DateTime.t() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          occurrences: integer() | nil,
          organization_id: String.t() | nil,
          source: PolarExpress.Schemas.EventSource.t() | nil
        }

  defstruct [
    :created_at,
    :first_seen,
    :id,
    :label,
    :label_property_selector,
    :last_seen,
    :modified_at,
    :name,
    :occurrences,
    :organization_id,
    :source
  ]

  @schema_name "EventTypeWithStats"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "source" => PolarExpress.Schemas.EventSource
    }
  end

  def __date_fields__, do: [:created_at, :first_seen, :last_seen, :modified_at]
end
