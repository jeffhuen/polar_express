# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerStateSubscriptionMeter do
  @moduledoc """
  CustomerStateSubscriptionMeter

  Current consumption and spending for a subscription meter.
  """

  @typedoc """
  * `amount` - The amount due in cents so far in this billing period.
  * `consumed_units` - The number of consumed units so far in this billing period.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `credited_units` - The number of credited units so far in this billing period.
  * `id` - The ID of the object. Format: uuid4.
  * `meter_id` - The ID of the meter. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          consumed_units: float() | nil,
          created_at: DateTime.t() | nil,
          credited_units: integer() | nil,
          id: String.t() | nil,
          meter_id: String.t() | nil,
          modified_at: DateTime.t() | nil
        }

  defstruct [:amount, :consumed_units, :created_at, :credited_units, :id, :meter_id, :modified_at]

  @schema_name "CustomerStateSubscriptionMeter"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
