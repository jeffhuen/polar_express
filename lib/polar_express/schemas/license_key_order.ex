# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyOrder do
  @moduledoc """
  LicenseKeyOrder
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `paid` - Whether the order has been paid for.
  * `status`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :paid, :status]

  @schema_name "LicenseKeyOrder"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "status" => PolarExpress.Schemas.OrderStatus
    }
  end

  def __date_fields__, do: [:created_at]
end
