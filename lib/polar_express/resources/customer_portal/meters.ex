# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Meters do
  @moduledoc """
  Meters

  Meters API operations.
  """

  @typedoc """
  * `balance` - The balance of the meter, i.e. the difference between credited and consumed units.
  * `consumed_units` - The number of consumed units.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `credited_units` - The number of credited units.
  * `customer_id` - The ID of the customer. Format: uuid4.
  * `id` - The ID of the object. Format: uuid4.
  * `meter`
  * `meter_id` - The ID of the meter. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :balance,
    :consumed_units,
    :created_at,
    :credited_units,
    :customer_id,
    :id,
    :meter,
    :meter_id,
    :modified_at
  ]

  @object_name "meters"
  def object_name, do: @object_name
end
