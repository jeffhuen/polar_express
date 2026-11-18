# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeySubscription do
  @moduledoc """
  LicenseKeySubscription
  """

  @typedoc """
  * `cancel_at_period_end` - Whether the subscription will be canceled at the end of the current period.
  * `current_period_end` - The end timestamp of the current billing period. Format: date-time.
  * `current_period_start` - The start timestamp of the current billing period. Format: date-time.
  * `ends_at` - The timestamp when the subscription will end. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `status` - The status of the subscription.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :cancel_at_period_end,
    :current_period_end,
    :current_period_start,
    :ends_at,
    :id,
    :status
  ]

  @schema_name "LicenseKeySubscription"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "status" => PolarExpress.Schemas.SubscriptionStatus
    }
  end

  def __date_fields__, do: [:current_period_end, :current_period_start, :ends_at]
end
