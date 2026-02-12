# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberSortProperty do
  @moduledoc "MemberSortProperty enum. Possible values: `created_at`, `-created_at`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MemberSortProperty"
  def schema_name, do: @schema_name
end
