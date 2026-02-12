# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ExistingProductPrice do
  @moduledoc """
  ExistingProductPrice

  A price that already exists for this product.

  Useful when updating a product if you want to keep an existing price.
  """

  @typedoc """
  * `id` - Format: uuid4.
  """
  @type t :: %__MODULE__{
          id: String.t() | nil
        }

  defstruct [:id]

  @schema_name "ExistingProductPrice"
  def schema_name, do: @schema_name
end
