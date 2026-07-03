# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantError do
  @moduledoc """
  BenefitGrantError
  """

  @typedoc """
  * `message`
  * `timestamp`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:message, :timestamp, :type]

  @schema_name "BenefitGrantError"
  def schema_name, do: @schema_name
end
