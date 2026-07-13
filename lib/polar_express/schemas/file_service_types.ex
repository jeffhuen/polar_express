# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FileServiceTypes do
  @moduledoc "FileServiceTypes enum. Possible values: `downloadable`, `product_media`, `organization_avatar`, `support_case_attachment`."

  @type t :: String.t()

  @values [
    "downloadable",
    "product_media",
    "organization_avatar",
    "support_case_attachment"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "FileServiceTypes"
  def schema_name, do: @schema_name
end
