# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionPause do
  @moduledoc """
  SubscriptionPause
  """

  @typedoc """
  * `pause_at_period_end` - Pause an active subscription at the end of the current period.

  Or cancel a scheduled pause on a subscription set to be paused at
  period end.
  * `resumes_at` - Date at which the paused subscription should automatically resume.

  If not set, the subscription stays paused until it is resumed manually.
  Must be after the current period end. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:pause_at_period_end, :resumes_at]

  @schema_name "SubscriptionPause"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:resumes_at]
end
