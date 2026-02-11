# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationAccessTokenCreateResponse do
  @moduledoc """
  OrganizationAccessTokenCreateResponse
  """

  @typedoc """
  * `organization_access_token`
  * `token`
  """
  @type t :: %__MODULE__{
          organization_access_token: PolarExpress.Schemas.OrganizationAccessToken.t() | nil,
          token: String.t() | nil
        }

  defstruct [:organization_access_token, :token]

  @schema_name "OrganizationAccessTokenCreateResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "organization_access_token" => PolarExpress.Schemas.OrganizationAccessToken
    }
  end
end
