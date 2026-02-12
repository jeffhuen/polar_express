# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Meters do
  @moduledoc """
  Meters

  Meters API operations.
  """

  @typedoc """
  * `aggregation` - The aggregation to apply on the filtered events to calculate the meter.
  * `archived_at` - Whether the meter is archived and the time it was archived.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `filter` - The filter to apply on events that'll be used to calculate the meter.
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the meter. Will be shown on customer's invoices and usage.
  * `organization_id` - The ID of the organization owning the meter. Format: uuid4.
  """
  @type t :: %__MODULE__{
          aggregation: term() | nil,
          archived_at: term() | nil,
          created_at: String.t() | nil,
          filter: map() | nil,
          id: String.t() | nil,
          metadata: map() | nil,
          modified_at: term() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil
        }

  defstruct [
    :aggregation,
    :archived_at,
    :created_at,
    :filter,
    :id,
    :metadata,
    :modified_at,
    :name,
    :organization_id
  ]

  @object_name "meters"
  def object_name, do: @object_name
end
