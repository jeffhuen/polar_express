# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceMeter do
  @moduledoc """
  ProductPriceMeter

  A meter associated to a metered price.
  """

  @typedoc """
  * `custom_label` - The label for the custom unit. Nullable.
  * `custom_multiplier` - The multiplier to convert from base unit to display scale. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `name` - The name of the meter.
  * `unit` - The unit of the meter.
  """
  @type t :: %__MODULE__{
          custom_label: String.t() | nil,
          custom_multiplier: integer() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          unit: PolarExpress.Schemas.MeterUnit.t() | nil
        }

  defstruct [:custom_label, :custom_multiplier, :id, :name, :unit]

  @schema_name "ProductPriceMeter"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "unit" => PolarExpress.Schemas.MeterUnit
    }
  end
end
