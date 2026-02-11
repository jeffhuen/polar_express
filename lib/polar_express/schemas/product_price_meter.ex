# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceMeter do
  @moduledoc """
  ProductPriceMeter

  A meter associated to a metered price.
  """

  @typedoc """
  * `id` - The ID of the object. Format: uuid4.
  * `name` - The name of the meter.
  """
  @type t :: %__MODULE__{
          id: String.t() | nil,
          name: String.t() | nil
        }

  defstruct [:id, :name]

  @schema_name "ProductPriceMeter"
  def schema_name, do: @schema_name
end
