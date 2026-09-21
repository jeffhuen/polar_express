# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LastSSOConnectionRequired do
  @moduledoc """
  LastSSOConnectionRequired
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "LastSSOConnectionRequired"
  def schema_name, do: @schema_name
end
