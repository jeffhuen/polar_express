# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationBillingDetailsUpdate do
  @moduledoc """
  OrganizationBillingDetailsUpdate
  """

  @typedoc """
  * `billing_address` - Nullable.
  * `billing_name` - Nullable.
  * `tax_id` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:billing_address, :billing_name, :tax_id]

  @schema_name "OrganizationBillingDetailsUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressInput
    }
  end
end
