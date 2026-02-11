# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Pagination do
  @moduledoc """
  Pagination
  """

  @typedoc """
  * `max_page`
  * `total_count`
  """
  @type t :: %__MODULE__{
          max_page: integer() | nil,
          total_count: integer() | nil
        }

  defstruct [:max_page, :total_count]

  @schema_name "Pagination"
  def schema_name, do: @schema_name
end
