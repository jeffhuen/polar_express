# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterUpdate do
  @moduledoc """
  MeterUpdate
  """

  @typedoc """
  * `aggregation` - The aggregation to apply on the filtered events to calculate the meter. Nullable.
  * `filter` - The filter to apply on events that'll be used to calculate the meter. Nullable.
  * `is_archived` - Whether the meter is archived. Archived meters are no longer used for billing. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - The name of the meter. Will be shown on customer's invoices and usage. Nullable.
  """
  @type t :: %__MODULE__{
          aggregation:
            PolarExpress.Schemas.CountAggregation.t()
            | PolarExpress.Schemas.PropertyAggregation.t()
            | PolarExpress.Schemas.UniqueAggregation.t()
            | nil,
          filter: PolarExpress.Schemas.Filter.t() | nil,
          is_archived: boolean() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil
        }

  defstruct [:aggregation, :filter, :is_archived, :metadata, :name]

  @schema_name "MeterUpdate"
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
