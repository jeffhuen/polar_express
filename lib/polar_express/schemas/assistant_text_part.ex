# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AssistantTextPart do
  @moduledoc """
  AssistantTextPart

  A run of assistant prose, as it was streamed.
  """

  @typedoc """
  * `kind`
  * `text`
  """
  @type t :: %__MODULE__{}

  defstruct [:kind, :text]

  @schema_name "AssistantTextPart"
  def schema_name, do: @schema_name
end
