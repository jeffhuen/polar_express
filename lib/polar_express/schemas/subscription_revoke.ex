# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionRevoke do
  @moduledoc """
  SubscriptionRevoke
  """

  @typedoc """
  * `customer_cancellation_comment` - Customer feedback and why they decided to cancel.

  **IMPORTANT:**
  Do not use this to store internal notes! It's intended to be input
  from the customer and is therefore also available in their Polar
  purchases library.

  Only set this in case your own service is requesting the reason from the
  customer. Or you copy a message directly from a customer
  conversation, i.e support. Nullable.
  * `customer_cancellation_reason` - Customer reason for cancellation.

  Helpful to monitor reasons behind churn for future improvements.

  Only set this in case your own service is requesting the reason from the
  customer. Or you know based on direct conversations, i.e support, with
  the customer.

  * `too_expensive`: Too expensive for the customer.
  * `missing_features`: Customer is missing certain features.
  * `switched_service`: Customer switched to another service.
  * `unused`: Customer is not using it enough.
  * `customer_service`: Customer is not satisfied with the customer service.
  * `low_quality`: Customer is unhappy with the quality.
  * `too_complex`: Customer considers the service too complicated.
  * `other`: Other reason(s). Nullable.
  * `revoke` - Cancel and revoke an active subscription immediately
  """
  @type t :: %__MODULE__{
          customer_cancellation_comment: String.t() | nil,
          customer_cancellation_reason: PolarExpress.Schemas.CustomerCancellationReason.t() | nil,
          revoke: boolean() | nil
        }

  defstruct [:customer_cancellation_comment, :customer_cancellation_reason, :revoke]

  @schema_name "SubscriptionRevoke"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer_cancellation_reason" => PolarExpress.Schemas.CustomerCancellationReason
    }
  end
end
