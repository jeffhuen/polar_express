# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionCancel do
  @moduledoc """
  CustomerSubscriptionCancel
  """

  @typedoc """
  * `cancel_at_period_end` - Cancel an active subscription once the current period ends.

  Or uncancel a subscription currently set to be revoked at period end. Nullable.
  * `cancellation_comment` - Customer feedback and why they decided to cancel. Nullable.
  * `cancellation_reason` - Customers reason for cancellation.

  * `too_expensive`: Too expensive for the customer.
  * `missing_features`: Customer is missing certain features.
  * `switched_service`: Customer switched to another service.
  * `unused`: Customer is not using it enough.
  * `customer_service`: Customer is not satisfied with the customer service.
  * `low_quality`: Customer is unhappy with the quality.
  * `too_complex`: Customer considers the service too complicated.
  * `other`: Other reason(s). Nullable.
  """
  @type t :: %__MODULE__{
          cancel_at_period_end: boolean() | nil,
          cancellation_comment: String.t() | nil,
          cancellation_reason: PolarExpress.Schemas.CustomerCancellationReason.t() | nil
        }

  defstruct [:cancel_at_period_end, :cancellation_comment, :cancellation_reason]

  @schema_name "CustomerSubscriptionCancel"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "cancellation_reason" => PolarExpress.Schemas.CustomerCancellationReason
    }
  end
end
