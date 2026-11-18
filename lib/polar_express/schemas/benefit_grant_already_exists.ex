# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantAlreadyExists do
  @moduledoc """
  BenefitGrantAlreadyExists
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "BenefitGrantAlreadyExists"
  def schema_name, do: @schema_name
end
