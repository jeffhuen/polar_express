# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCheckoutRequest do
  @moduledoc """
  OrganizationCheckoutRequest
  """

  @typedoc """
  * `embed_origin` - Nullable.
  * `product_id` - Polar product ID to subscribe to.
  * `return_url` - Nullable.
  * `success_url` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:embed_origin, :product_id, :return_url, :success_url]

  @schema_name "OrganizationCheckoutRequest"
  def schema_name, do: @schema_name
end
