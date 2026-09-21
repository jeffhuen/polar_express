# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSubscriptionDiscount do
  @moduledoc """
  OrganizationSubscriptionDiscount

  A discount currently applied to the organization's subscription.
  """

  @typedoc """
  * `amounts` - Per-currency fixed amount in cents; only set for 'fixed'. Nullable.
  * `basis_points` - Percentage in basis points (10000 = 100%); only set for 'percentage'. Nullable.
  * `discount_id`
  * `duration` - Discount duration: 'once', 'forever', or 'repeating'.
  * `duration_in_months` - Number of months the discount repeats; only set for 'repeating'. Nullable.
  * `ends_at` - Estimated date the discount stops applying. Computed for 'repeating' discounts from the subscription's started_at + duration_in_months; null for 'once' and 'forever' durations. Nullable.
  * `name`
  * `type` - Discount type: 'percentage' or 'fixed'.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amounts,
    :basis_points,
    :discount_id,
    :duration,
    :duration_in_months,
    :ends_at,
    :name,
    :type
  ]

  @schema_name "OrganizationSubscriptionDiscount"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:ends_at]
end
