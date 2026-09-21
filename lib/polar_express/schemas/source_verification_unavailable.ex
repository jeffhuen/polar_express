# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SourceVerificationUnavailable do
  @moduledoc """
  SourceVerificationUnavailable
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SourceVerificationUnavailable"
  def schema_name, do: @schema_name
end
