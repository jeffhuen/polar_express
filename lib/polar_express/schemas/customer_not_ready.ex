# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerNotReady do
  @moduledoc """
  CustomerNotReady
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CustomerNotReady"
  def schema_name, do: @schema_name
end
