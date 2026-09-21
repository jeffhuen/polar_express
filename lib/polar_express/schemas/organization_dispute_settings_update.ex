# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationDisputeSettingsUpdate do
  @moduledoc """
  OrganizationDisputeSettingsUpdate
  """

  @typedoc """
  * `auto_accept_below_amount` - Concede disputes below this amount, in USD cents, without asking the organization. A dispute charged in another currency converts at the rate its payment settled at. `null` turns it off. The disputed amount and the processor's dispute fee are still deducted. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:auto_accept_below_amount]

  @schema_name "OrganizationDisputeSettingsUpdate"
  def schema_name, do: @schema_name
end
