# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationDisputeSettings do
  @moduledoc """
  OrganizationDisputeSettings

  `auto_accept_below_amount` is in Polar's settlement currency (USD).
  """

  @typedoc """
  * `auto_accept_below_amount` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:auto_accept_below_amount]

  @schema_name "OrganizationDisputeSettings"
  def schema_name, do: @schema_name
end
