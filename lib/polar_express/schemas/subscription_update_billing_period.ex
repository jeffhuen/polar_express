# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateBillingPeriod do
  @moduledoc """
  SubscriptionUpdateBillingPeriod
  """

  @typedoc """
  * `current_billing_period_end` - Set a new date for the end of the current billing period. The subscription will renew on this date. Needs to be later than the current value.

  It is not possible to update the current billing period on a canceled subscription. Format: date-time.
  """
  @type t :: %__MODULE__{
          current_billing_period_end: DateTime.t() | nil
        }

  defstruct [:current_billing_period_end]

  @schema_name "SubscriptionUpdateBillingPeriod"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:current_billing_period_end]
end
