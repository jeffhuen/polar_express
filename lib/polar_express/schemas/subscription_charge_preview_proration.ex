# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionChargePreviewProration do
  @moduledoc """
  SubscriptionChargePreviewProration

  A pending proration adjustment to be billed on the next invoice.
  """

  @typedoc """
  * `amount` - Signed amount in cents: positive to charge, negative to credit.
  * `label` - Human-readable description of the proration.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :label]

  @schema_name "SubscriptionChargePreviewProration"
  def schema_name, do: @schema_name
end
