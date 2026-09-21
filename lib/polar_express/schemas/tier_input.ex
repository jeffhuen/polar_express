# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TierInput do
  @moduledoc """
  TierInput

  A tier submitted through the API. Rates stop at the reach of the
  BigInteger amount columns, with 12 decimal places.
  """

  @typedoc """
  * `bound` - Nullable.
  * `unit_amount`
  """
  @type t :: %__MODULE__{}

  defstruct [:bound, :unit_amount]

  @schema_name "TierInput"
  def schema_name, do: @schema_name
end
