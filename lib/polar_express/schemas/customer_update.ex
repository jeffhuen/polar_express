# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerUpdate do
  @moduledoc """
  CustomerUpdate
  """

  @typedoc """
  * `billing_address` - Nullable.
  * `email` - The email address of the customer. This must be unique within the organization. Nullable.
  * `external_id` - The ID of the customer in your system. This must be unique within the organization. Once set, it can't be updated. Nullable.
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
  * `type` - The customer type. Can only be upgraded from 'individual' to 'team', never downgraded. Nullable.
  """
  @type t :: %__MODULE__{
          billing_address: PolarExpress.Schemas.AddressInput.t() | nil,
          email: String.t() | nil,
          external_id: String.t() | nil,
          locale: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          tax_id: [String.t() | PolarExpress.Schemas.TaxIDFormat.t()] | nil,
          type: PolarExpress.Schemas.CustomerType.t() | nil
        }

  defstruct [:billing_address, :email, :external_id, :locale, :metadata, :name, :tax_id, :type]

  @schema_name "CustomerUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressInput,
      "tax_id" => {:union, :variants, [PolarExpress.Schemas.TaxIDFormat]},
      "type" => PolarExpress.Schemas.CustomerType
    }
  end
end
