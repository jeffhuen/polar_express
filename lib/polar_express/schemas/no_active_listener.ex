# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NoActiveListener do
  @moduledoc """
  NoActiveListener
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "NoActiveListener"
  def schema_name, do: @schema_name
end
