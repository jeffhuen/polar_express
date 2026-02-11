# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrderInvoice do
  @moduledoc """
  CustomerOrderInvoice

  Order's invoice data.
  """

  @typedoc """
  * `url` - The URL to the invoice.
  """
  @type t :: %__MODULE__{
          url: String.t() | nil
        }

  defstruct [:url]

  @schema_name "CustomerOrderInvoice"
  def schema_name, do: @schema_name
end
