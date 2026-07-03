# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ResourceNotFound do
  @moduledoc """
  ResourceNotFound
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "ResourceNotFound"
  def schema_name, do: @schema_name
end
