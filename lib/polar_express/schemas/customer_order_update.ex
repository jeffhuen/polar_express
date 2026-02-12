# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrderUpdate do
  @moduledoc """
  CustomerOrderUpdate

  Schema to update an order.
  """

  @typedoc """
  * `billing_address` - The address of the customer that should appear on the invoice. Country and state fields cannot be updated. Nullable.
  * `billing_name` - The name of the customer that should appear on the invoice. Nullable.
  """
  @type t :: %__MODULE__{
          billing_address: PolarExpress.Schemas.AddressInput.t() | nil,
          billing_name: String.t() | nil
        }

  defstruct [:billing_address, :billing_name]

  @schema_name "CustomerOrderUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressInput
    }
  end
end
