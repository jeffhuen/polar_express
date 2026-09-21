# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.HumanReviewRequest do
  @moduledoc """
  HumanReviewRequest
  """

  @typedoc """
  * `reason` - Max length: 5000.
  """
  @type t :: %__MODULE__{}

  defstruct [:reason]

  @schema_name "HumanReviewRequest"
  def schema_name, do: @schema_name
end
