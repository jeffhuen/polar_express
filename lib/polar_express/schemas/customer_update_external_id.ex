# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerUpdateExternalID do
  @moduledoc """
  CustomerUpdateExternalID
  """

  @typedoc """
  * `billing_address` - Nullable.
  * `email` - The email address of the customer. This must be unique within the organization. Nullable.
  * `locale` - Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - Nullable.
  * `tax_id` - Nullable.
  """
  @type t :: %__MODULE__{
          billing_address: PolarExpress.Schemas.AddressInput.t() | nil,
          email: String.t() | nil,
          locale: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          tax_id: [String.t() | PolarExpress.Schemas.TaxIDFormat.t()] | nil
        }

  defstruct [:billing_address, :email, :locale, :metadata, :name, :tax_id]

  @schema_name "CustomerUpdateExternalID"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressInput,
      "tax_id" => {:union, :variants, [PolarExpress.Schemas.TaxIDFormat]}
    }
  end
end
