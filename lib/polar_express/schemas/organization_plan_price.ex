# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPlanPrice do
  @moduledoc """
  OrganizationPlanPrice
  """

  @typedoc """
  * `amount`
  * `currency`
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :currency]

  @schema_name "OrganizationPlanPrice"
  def schema_name, do: @schema_name
end
