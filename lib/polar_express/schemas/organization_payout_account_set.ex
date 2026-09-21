# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPayoutAccountSet do
  @moduledoc """
  OrganizationPayoutAccountSet
  """

  @typedoc """
  * `payout_account_id` - ID of the payout account to set on the organization. Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:payout_account_id]

  @schema_name "OrganizationPayoutAccountSet"
  def schema_name, do: @schema_name
end
