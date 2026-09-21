# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SearchResultProduct do
  @moduledoc """
  SearchResultProduct
  """

  @typedoc """
  * `description` - Nullable.
  * `id` - Format: uuid4.
  * `name`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:description, :id, :name, :type]

  @schema_name "SearchResultProduct"
  def schema_name, do: @schema_name
end
