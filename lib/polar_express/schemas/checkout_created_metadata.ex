# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutCreatedMetadata do
  @moduledoc """
  CheckoutCreatedMetadata
  """

  @typedoc """
  * `checkout_id`
  * `checkout_status`
  * `product_id`
  """
  @type t :: %__MODULE__{
          checkout_id: String.t() | nil,
          checkout_status: String.t() | nil,
          product_id: String.t() | nil
        }

  defstruct [:checkout_id, :checkout_status, :product_id]

  @schema_name "CheckoutCreatedMetadata"
  def schema_name, do: @schema_name
end
