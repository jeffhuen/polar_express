# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanTransferNotStarted do
  @moduledoc """
  PanTransferNotStarted
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PanTransferNotStarted"
  def schema_name, do: @schema_name
end
