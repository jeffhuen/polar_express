# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanTransferUnavailable do
  @moduledoc """
  PanTransferUnavailable
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PanTransferUnavailable"
  def schema_name, do: @schema_name
end
