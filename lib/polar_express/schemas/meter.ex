# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Meter do
  @moduledoc """
  Meter
  """

  @typedoc """
  * `aggregation` - The aggregation to apply on the filtered events to calculate the meter.
  * `archived_at` - Whether the meter is archived and the time it was archived. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `filter` - The filter to apply on events that'll be used to calculate the meter.
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the meter. Will be shown on customer's invoices and usage.
  * `organization_id` - The ID of the organization owning the meter. Format: uuid4.
  """
  @type t :: %__MODULE__{
          aggregation:
            PolarExpress.Schemas.CountAggregation.t()
            | PolarExpress.Schemas.PropertyAggregation.t()
            | PolarExpress.Schemas.UniqueAggregation.t()
            | nil,
          archived_at: DateTime.t() | nil,
          created_at: DateTime.t() | nil,
          filter: PolarExpress.Schemas.Filter.t() | nil,
          id: String.t() | nil,
          metadata: PolarExpress.Schemas.MetadataOutputType.t() | nil,
          modified_at: DateTime.t() | nil,
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

  @schema_name "Meter"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "aggregation" =>
        {:union, :discriminated, "func",
         %{
           "avg" => PolarExpress.Schemas.PropertyAggregation,
           "count" => PolarExpress.Schemas.CountAggregation,
           "max" => PolarExpress.Schemas.PropertyAggregation,
           "min" => PolarExpress.Schemas.PropertyAggregation,
           "sum" => PolarExpress.Schemas.PropertyAggregation,
           "unique" => PolarExpress.Schemas.UniqueAggregation
         }},
      "filter" => PolarExpress.Schemas.Filter,
      "metadata" => PolarExpress.Schemas.MetadataOutputType
    }
  end

  def __date_fields__, do: [:archived_at, :created_at, :modified_at]
end
