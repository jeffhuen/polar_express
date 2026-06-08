# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalCustomerUpdate do
  @moduledoc """
  CustomerPortalCustomerUpdate
  """

  @typedoc """
  * `billing_address` - Nullable.
  * `billing_name` - Nullable.
  * `default_payment_method_id` - Nullable.
  * `tax_id` - Nullable.
  """
  @type t :: %__MODULE__{
          billing_address: PolarExpress.Schemas.AddressInput.t() | nil,
          billing_name: String.t() | nil,
          default_payment_method_id: String.t() | nil,
          tax_id: String.t() | nil
        }

  defstruct [:billing_address, :billing_name, :default_payment_method_id, :tax_id]

  @schema_name "CustomerPortalCustomerUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressInput
    }
  end
end
