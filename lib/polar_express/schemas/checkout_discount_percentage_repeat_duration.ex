# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutDiscountPercentageRepeatDuration do
  @moduledoc """
  CheckoutDiscountPercentageRepeatDuration

  Schema for a percentage discount that is applied on every invoice
  for a certain number of months.
  """

  @typedoc """
  * `basis_points` - Discount percentage in basis points. A basis point is 1/100th of a percent. For example, 1000 basis points equals a 10% discount.
  * `code` - Nullable.
  * `duration`
  * `duration_in_months`
  * `id` - The ID of the object. Format: uuid4.
  * `name`
  * `type`
  """
  @type t :: %__MODULE__{
          basis_points: integer() | nil,
          code: String.t() | nil,
          duration: PolarExpress.Schemas.DiscountDuration.t() | nil,
          duration_in_months: integer() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          type: PolarExpress.Schemas.DiscountType.t() | nil
        }

  defstruct [:basis_points, :code, :duration, :duration_in_months, :id, :name, :type]

  @schema_name "CheckoutDiscountPercentageRepeatDuration"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "duration" => PolarExpress.Schemas.DiscountDuration,
      "type" => PolarExpress.Schemas.DiscountType
    }
  end
end
