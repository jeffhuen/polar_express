# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationValidateWebsiteRequest do
  @moduledoc """
  OrganizationValidateWebsiteRequest
  """

  @typedoc """
  * `url` - The URL to validate. Format: uri. Max length: 2083.
  """
  @type t :: %__MODULE__{}

  defstruct [:url]

  @schema_name "OrganizationValidateWebsiteRequest"
  def schema_name, do: @schema_name
end
