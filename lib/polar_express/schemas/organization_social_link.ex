# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSocialLink do
  @moduledoc """
  OrganizationSocialLink
  """

  @typedoc """
  * `platform` - The social platform of the URL
  * `url` - The URL to the organization profile Format: uri. Max length: 2083.
  """
  @type t :: %__MODULE__{
          platform: PolarExpress.Schemas.OrganizationSocialPlatforms.t() | nil,
          url: String.t() | nil
        }

  defstruct [:platform, :url]

  @schema_name "OrganizationSocialLink"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "platform" => PolarExpress.Schemas.OrganizationSocialPlatforms
    }
  end
end
