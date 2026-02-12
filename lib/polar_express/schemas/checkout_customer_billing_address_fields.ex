# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutCustomerBillingAddressFields do
  @moduledoc """
  CheckoutCustomerBillingAddressFields

  Deprecated: Use CheckoutBillingAddressFields instead.
  """

  @typedoc """
  * `city`
  * `country`
  * `line1`
  * `line2`
  * `postal_code`
  * `state`
  """
  @type t :: %__MODULE__{
          city: boolean() | nil,
          country: boolean() | nil,
          line1: boolean() | nil,
          line2: boolean() | nil,
          postal_code: boolean() | nil,
          state: boolean() | nil
        }

  defstruct [:city, :country, :line1, :line2, :postal_code, :state]

  @schema_name "CheckoutCustomerBillingAddressFields"
  def schema_name, do: @schema_name
end
