# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerStateMeter do
  @moduledoc """
  CustomerStateMeter

  An active meter for a customer, with latest consumed and credited units.
  """

  @typedoc """
  * `balance` - The balance of the meter, i.e. the difference between credited and consumed units.
  * `consumed_units` - The number of consumed units.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `credited_units` - The number of credited units.
  * `id` - The ID of the object. Format: uuid4.
  * `meter_id` - The ID of the meter. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  """
  @type t :: %__MODULE__{
          balance: float() | nil,
          consumed_units: float() | nil,
          created_at: DateTime.t() | nil,
          credited_units: integer() | nil,
          id: String.t() | nil,
          meter_id: String.t() | nil,
          modified_at: DateTime.t() | nil
        }

  defstruct [
    :balance,
    :consumed_units,
    :created_at,
    :credited_units,
    :id,
    :meter_id,
    :modified_at
  ]

  @schema_name "CustomerStateMeter"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
