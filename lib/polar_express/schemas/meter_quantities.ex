# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterQuantities do
  @moduledoc """
  MeterQuantities
  """

  @typedoc """
  * `quantities`
  * `total` - The total quantity for the period.
  """
  @type t :: %__MODULE__{
          quantities: [PolarExpress.Schemas.MeterQuantity.t()] | nil,
          total: float() | nil
        }

  defstruct [:quantities, :total]

  @schema_name "MeterQuantities"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "quantities" => PolarExpress.Schemas.MeterQuantity
    }
  end
end
