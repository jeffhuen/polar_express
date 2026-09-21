# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Tier do
  @moduledoc """
  Tier

  A per-unit rate up to and including `bound`.

  Each tier starts where the previous one ended. The first starts at
  zero. `bound` is None on the last tier if it's unbounded. Rates are
  in cents and may be fractional.

  Rates carry no precision bound: this schema reads stored rows, and a
  bound tightened later would stop them loading. `TierInput` holds the
  rules new rates must meet.
  """

  @typedoc """
  * `bound` - Nullable.
  * `unit_amount`
  """
  @type t :: %__MODULE__{}

  defstruct [:bound, :unit_amount]

  @schema_name "Tier"
  def schema_name, do: @schema_name
end
