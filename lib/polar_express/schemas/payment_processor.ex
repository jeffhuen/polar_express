# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentProcessor do
  @moduledoc "PaymentProcessor enum. Possible values: `stripe`."

  @type t :: String.t()

  @values ["stripe"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PaymentProcessor"
  def schema_name, do: @schema_name
end
