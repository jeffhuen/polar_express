# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutBillingAddressFields do
  @moduledoc """
  CheckoutBillingAddressFields
  """

  @typedoc """
  * `city`
  * `country`
  * `line1`
  * `line2`
  * `postal_code`
  * `state`
  """
  @type t :: %__MODULE__{}

  defstruct [:city, :country, :line1, :line2, :postal_code, :state]

  @schema_name "CheckoutBillingAddressFields"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "city" => PolarExpress.Schemas.BillingAddressFieldMode,
      "country" => PolarExpress.Schemas.BillingAddressFieldMode,
      "line1" => PolarExpress.Schemas.BillingAddressFieldMode,
      "line2" => PolarExpress.Schemas.BillingAddressFieldMode,
      "postal_code" => PolarExpress.Schemas.BillingAddressFieldMode,
      "state" => PolarExpress.Schemas.BillingAddressFieldMode
    }
  end
end
