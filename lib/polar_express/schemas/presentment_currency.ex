# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PresentmentCurrency do
  @moduledoc "PresentmentCurrency enum. Possible values: `aed`, `ars`, `aud`, `brl`, `cad`, `chf`, `clp`, `cny`, `cop`, `czk`, `dkk`, `eur`, `gbp`, `hkd`, `huf`, `idr`, `ils`, `inr`, `jpy`, `krw`, `mxn`, `myr`, `nok`, `nzd`, `pen`, `php`, `pln`, `ron`, `sar`, `sek`, `sgd`, `thb`, `try`, `twd`, `usd`, `zar`."

  @type t :: String.t()

  @values [
    "aed",
    "ars",
    "aud",
    "brl",
    "cad",
    "chf",
    "clp",
    "cny",
    "cop",
    "czk",
    "dkk",
    "eur",
    "gbp",
    "hkd",
    "huf",
    "idr",
    "ils",
    "inr",
    "jpy",
    "krw",
    "mxn",
    "myr",
    "nok",
    "nzd",
    "pen",
    "php",
    "pln",
    "ron",
    "sar",
    "sek",
    "sgd",
    "thb",
    "try",
    "twd",
    "usd",
    "zar"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PresentmentCurrency"
  def schema_name, do: @schema_name
end
