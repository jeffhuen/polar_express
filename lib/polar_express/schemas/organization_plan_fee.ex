# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPlanFee do
  @moduledoc """
  OrganizationPlanFee
  """

  @typedoc """
  * `fixed` - Fixed fee in cents.
  * `percent` - Percent fee in basis points (e.g. 380 = 3.80%).
  """
  @type t :: %__MODULE__{}

  defstruct [:fixed, :percent]

  @schema_name "OrganizationPlanFee"
  def schema_name, do: @schema_name
end
