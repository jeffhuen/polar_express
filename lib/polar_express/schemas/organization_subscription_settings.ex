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
  * `proration_behavior`
  """
  @type t :: %__MODULE__{
          allow_customer_updates: boolean() | nil,
          allow_multiple_subscriptions: boolean() | nil,
          benefit_revocation_grace_period: integer() | nil,
          prevent_trial_abuse: boolean() | nil,
          proration_behavior: PolarExpress.Schemas.SubscriptionProrationBehavior.t() | nil
        }

  defstruct [
    :allow_customer_updates,
    :allow_multiple_subscriptions,
    :benefit_revocation_grace_period,
    :prevent_trial_abuse,
    :proration_behavior
  ]

  @schema_name "OrganizationSubscriptionSettings"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
