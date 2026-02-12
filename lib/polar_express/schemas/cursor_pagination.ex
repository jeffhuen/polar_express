# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CursorPagination do
  @moduledoc """
  CursorPagination
  """

  @typedoc """
  * `has_next_page`
  """
  @type t :: %__MODULE__{
          has_next_page: boolean() | nil
        }

  defstruct [:has_next_page]

  @schema_name "CursorPagination"
  def schema_name, do: @schema_name
end
