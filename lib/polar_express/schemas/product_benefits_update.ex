# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductBenefitsUpdate do
  @moduledoc """
  ProductBenefitsUpdate

  Schema to update the benefits granted by a product.
  """

  @typedoc """
  * `benefits` - List of benefit IDs. Each one must be on the same organization as the product.
  """
  @type t :: %__MODULE__{
          benefits: [String.t()] | nil
        }

  defstruct [:benefits]

  @schema_name "ProductBenefitsUpdate"
  def schema_name, do: @schema_name
end
