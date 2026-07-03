# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSubscriptionSettings do
  @moduledoc """
  OrganizationSubscriptionSettings
  """

  @typedoc """
  * `allow_customer_updates`
  * `allow_multiple_subscriptions`
  * `benefit_revocation_grace_period`
  * `prevent_trial_abuse`
  * `proration_behavior` - Possible values: `invoice`, `prorate`, `next_period`.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :allow_customer_updates,
    :allow_multiple_subscriptions,
    :benefit_revocation_grace_period,
    :prevent_trial_abuse,
    :proration_behavior
  ]

  @schema_name "OrganizationSubscriptionSettings"
  def schema_name, do: @schema_name
end
