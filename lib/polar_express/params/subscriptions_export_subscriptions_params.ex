# File generated from our OpenAPI spec
defmodule PolarExpress.Params.SubscriptionsExportSubscriptionsParams do
  @moduledoc "Parameters for subscriptions export subscriptions."

  @typedoc """
  * `cancel_at_period_end` - Filter by subscriptions that are set to cancel at period end.
  * `columns` - Columns to include in the CSV, in order. Defaults to email, started_at, product, amount, currency, status and recurring_interval.
  * `organization_id` - Filter by organization ID.
  * `product_id` - Filter by product ID.
  * `started_after` - Only include subscriptions started after this date. Must include a UTC offset.
  * `started_before` - Only include subscriptions started before this date. Must include a UTC offset.
  * `status` - Filter by subscription status.
  * `timezone` - Time zone used to render dates in the CSV.
  """
  @type t :: %__MODULE__{
          cancel_at_period_end: boolean() | nil,
          columns: map() | nil,
          organization_id: map() | nil,
          product_id: map() | nil,
          started_after: String.t() | nil,
          started_before: String.t() | nil,
          status: map() | nil,
          timezone: String.t() | nil
        }

  defstruct [
    :cancel_at_period_end,
    :columns,
    :organization_id,
    :product_id,
    :started_after,
    :started_before,
    :status,
    :timezone
  ]
end
