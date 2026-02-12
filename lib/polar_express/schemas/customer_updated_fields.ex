# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerUpdatedFields do
  @moduledoc """
  CustomerUpdatedFields
  """

  @typedoc """
  * `billing_address` - Nullable.
  * `email` - Nullable.
  * `metadata` - Nullable.
  * `name` - Nullable.
  * `tax_id` - Nullable.
  """
  @type t :: %__MODULE__{
          billing_address: PolarExpress.Schemas.AddressDict.t() | nil,
          email: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | boolean() | nil} | nil,
          name: String.t() | nil,
          tax_id: String.t() | nil
        }

  defstruct [:billing_address, :email, :metadata, :name, :tax_id]

  @schema_name "CustomerUpdatedFields"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressDict
    }
  end
end
