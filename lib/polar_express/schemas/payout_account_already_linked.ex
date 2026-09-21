# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccountAlreadyLinked do
  @moduledoc """
  PayoutAccountAlreadyLinked
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PayoutAccountAlreadyLinked"
  def schema_name, do: @schema_name
end
