# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerMeterCreditsExternalIDCreate do
  @moduledoc """
  CustomerMeterCreditsExternalIDCreate

  Schema to manually grant credits on a customer meter using external IDs.
  """

  @typedoc """
  * `external_customer_id` - The external ID of the customer.
  * `external_id` - Your unique identifier for this credit. Retrying with the same `external_id` doesn't grant the credit twice. Nullable.
  * `external_meter_id` - The external ID of the meter, as set by config as code.
  * `rollover` - Whether unused credits carry over to the next meter period.
  * `units` - The number of units to credit.
  """
  @type t :: %__MODULE__{}

  defstruct [:external_customer_id, :external_id, :external_meter_id, :rollover, :units]

  @schema_name "CustomerMeterCreditsExternalIDCreate"
  def schema_name, do: @schema_name
end
