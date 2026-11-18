# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerMeterCreditsIDCreate do
  @moduledoc """
  CustomerMeterCreditsIDCreate

  Schema to manually grant credits on a customer meter using Polar IDs.
  """

  @typedoc """
  * `customer_id` - The ID of the customer. Format: uuid4.
  * `external_id` - Your unique identifier for this credit. Retrying with the same `external_id` doesn't grant the credit twice. Nullable.
  * `meter_id` - The ID of the meter. Format: uuid4.
  * `rollover` - Whether unused credits carry over to the next meter period.
  * `units` - The number of units to credit.
  """
  @type t :: %__MODULE__{}

  defstruct [:customer_id, :external_id, :meter_id, :rollover, :units]

  @schema_name "CustomerMeterCreditsIDCreate"
  def schema_name, do: @schema_name
end
