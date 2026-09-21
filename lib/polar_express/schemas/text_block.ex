# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TextBlock do
  @moduledoc """
  TextBlock

  Plain narrated text.
  """

  @typedoc """
  * `text`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:text, :type]

  @schema_name "TextBlock"
  def schema_name, do: @schema_name
end
