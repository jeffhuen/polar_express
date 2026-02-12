# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterCreate do
  @moduledoc """
  MeterCreate
  """

  @typedoc """
  * `aggregation` - The aggregation to apply on the filtered events to calculate the meter.
  * `filter` - The filter to apply on events that'll be used to calculate the meter.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - The name of the meter. Will be shown on customer's invoices and usage.
  * `organization_id` - The ID of the organization owning the meter. **Required unless you use an organization token.** Nullable.
  """
  @type t :: %__MODULE__{
          aggregation:
            PolarExpress.Schemas.CountAggregation.t()
            | PolarExpress.Schemas.PropertyAggregation.t()
            | PolarExpress.Schemas.UniqueAggregation.t()
            | nil,
          filter: PolarExpress.Schemas.Filter.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil
        }

  defstruct [:aggregation, :filter, :metadata, :name, :organization_id]

  @schema_name "MeterCreate"
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
      "filter" => PolarExpress.Schemas.Filter
    }
  end
end
