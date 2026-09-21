# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPaymentMethodCardMetadata do
  @moduledoc """
  OrganizationPaymentMethodCardMetadata
  """

  @typedoc """
  * `brand`
  * `exp_month`
  * `exp_year`
  * `last4`
  """
  @type t :: %__MODULE__{}

  defstruct [:brand, :exp_month, :exp_year, :last4]

  @schema_name "OrganizationPaymentMethodCardMetadata"
  def schema_name, do: @schema_name
end
