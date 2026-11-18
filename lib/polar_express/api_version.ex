# File generated from our OpenAPI spec
defmodule PolarExpress.ApiVersion do
  @moduledoc """
  The Polar API version this SDK release was generated from.

  The client sends it as the `Polar-Version` header on every request, so
  the typed structs always match the contract the server answers with. Pass
  `:api_version` to `PolarExpress.client/2`, or to a single request, to
  send another version.
  """

  @version "2027-01"

  @doc "Returns the Polar API version this SDK release was generated from."
  @spec version() :: String.t()
  def version, do: @version
end
