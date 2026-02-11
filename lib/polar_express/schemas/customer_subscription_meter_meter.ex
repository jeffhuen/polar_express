# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionMeterMeter do
  @moduledoc """
  CustomerSubscriptionMeterMeter
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the meter. Will be shown on customer's invoices and usage.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil
        }

  defstruct [:created_at, :id, :modified_at, :name]

  @schema_name "CustomerSubscriptionMeterMeter"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
