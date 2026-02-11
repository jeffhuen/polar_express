# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSocialPlatforms do
  @moduledoc "OrganizationSocialPlatforms enum. Possible values: `x`, `github`, `facebook`, `instagram`, `youtube`, `tiktok`, `linkedin`, `other`."

  @type t :: String.t()

  @values ["x", "github", "facebook", "instagram", "youtube", "tiktok", "linkedin", "other"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationSocialPlatforms"
  def schema_name, do: @schema_name
end
