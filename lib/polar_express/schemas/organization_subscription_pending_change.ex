# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSubscriptionPendingChange do
  @moduledoc """
  OrganizationSubscriptionPendingChange
  """

  @typedoc """
  * `applies_at` - Format: date-time.
  * `product_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:applies_at, :product_id]

  @schema_name "OrganizationSubscriptionPendingChange"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:applies_at]
end
