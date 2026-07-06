# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerUpdatedFields do
  @moduledoc """
  CustomerUpdatedFields
  """

  @typedoc """
  * `billing_address` - Nullable.
  * `billing_name` - Nullable.
  * `email` - Nullable.
  * `metadata` - Nullable.
  * `name` - Nullable.
  * `tax_id` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:billing_address, :billing_name, :email, :metadata, :name, :tax_id]

  @schema_name "CustomerUpdatedFields"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressDict
    }
  end
end
