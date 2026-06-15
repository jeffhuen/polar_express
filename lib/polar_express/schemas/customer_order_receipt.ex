# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrderReceipt do
  @moduledoc """
  CustomerOrderReceipt

  Order's receipt data.
  """

  @typedoc """
  * `url` - The URL to the receipt PDF.
  """
  @type t :: %__MODULE__{
          url: String.t() | nil
        }

  defstruct [:url]

  @schema_name "CustomerOrderReceipt"
  def schema_name, do: @schema_name
end
