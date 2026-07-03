# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.BenefitGrants do
  @moduledoc """
  Benefit-grants

  BenefitGrants API operations.
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @object_name "benefit-grants"
  def object_name, do: @object_name
end
