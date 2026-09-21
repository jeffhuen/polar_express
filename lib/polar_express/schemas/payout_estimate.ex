# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutEstimate do
  @moduledoc """
  PayoutEstimate
  """

  @typedoc """
  * `account_id` - Format: uuid4.
  * `fees_amount`
  * `gross_amount`
  * `net_amount`
  * `payout_account_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:account_id, :fees_amount, :gross_amount, :net_amount, :payout_account_id]

  @schema_name "PayoutEstimate"
  def schema_name, do: @schema_name
end
