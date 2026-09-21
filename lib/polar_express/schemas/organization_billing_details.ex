# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationBillingDetails do
  @moduledoc """
  OrganizationBillingDetails
  """

  @typedoc """
  * `billing_address` - Postal address used on invoices. Nullable.
  * `billing_name` - The name shown on invoices. Falls back to the customer name. Nullable.
  * `tax_id` - Tax identifier value (without the format suffix). Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:billing_address, :billing_name, :tax_id]

  @schema_name "OrganizationBillingDetails"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressInput
    }
  end
end
