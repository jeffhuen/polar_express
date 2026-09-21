# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionCancelPreview do
  @moduledoc """
  SubscriptionCancelPreview

  Preview of the effect of cancelling a subscription right now.
  """

  @typedoc """
  * `outstanding_amount` - Amount in cents still due on the pending order that would be voided, or null when nothing would be dropped. Nullable.
  * `stops_collection` - Whether cancelling now also stops collecting the outstanding payment. True for a past-due subscription whose organization has no benefit revocation grace period: cancelling voids the pending order and stops dunning retries.
  """
  @type t :: %__MODULE__{}

  defstruct [:outstanding_amount, :stops_collection]

  @schema_name "SubscriptionCancelPreview"
  def schema_name, do: @schema_name
end
