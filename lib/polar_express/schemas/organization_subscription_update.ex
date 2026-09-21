# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSubscriptionUpdate do
  @moduledoc """
  OrganizationSubscriptionUpdate
  """

  @typedoc """
  * `product_id` - Polar product ID to switch the plan to.
  """
  @type t :: %__MODULE__{}

  defstruct [:product_id]

  @schema_name "OrganizationSubscriptionUpdate"
  def schema_name, do: @schema_name
end
