# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderReceipt do
  @moduledoc """
  OrderReceipt

  Order's receipt data.
  """

  @typedoc """
  * `url` - The URL to the receipt PDF.
  """
  @type t :: %__MODULE__{
          url: String.t() | nil
        }

  defstruct [:url]

  @schema_name "OrderReceipt"
  def schema_name, do: @schema_name
end
