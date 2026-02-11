# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberRole do
  @moduledoc "MemberRole enum. Possible values: `owner`, `billing_manager`, `member`."

  @type t :: String.t()

  @values ["owner", "billing_manager", "member"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MemberRole"
  def schema_name, do: @schema_name
end
