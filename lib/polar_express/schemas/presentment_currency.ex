# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PresentmentCurrency do
  @moduledoc "PresentmentCurrency enum. Possible values: `aud`, `brl`, `cad`, `chf`, `eur`, `inr`, `gbp`, `jpy`, `sek`, `usd`."

  @type t :: String.t()

  @values [
    "aud",
    "brl",
    "cad",
    "chf",
    "eur",
    "inr",
    "gbp",
    "jpy",
    "sek",
    "usd"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PresentmentCurrency"
  def schema_name, do: @schema_name
end
