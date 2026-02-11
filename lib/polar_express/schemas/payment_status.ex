# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentStatus do
  @moduledoc "PaymentStatus enum. Possible values: `pending`, `succeeded`, `failed`."

  @type t :: String.t()

  @values ["pending", "succeeded", "failed"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PaymentStatus"
  def schema_name, do: @schema_name
end
