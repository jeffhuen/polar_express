# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SearchResultCustomer do
  @moduledoc """
  SearchResultCustomer
  """

  @typedoc """
  * `email` - Nullable.
  * `id` - Format: uuid4.
  * `name` - Nullable.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:email, :id, :name, :type]

  @schema_name "SearchResultCustomer"
  def schema_name, do: @schema_name
end
