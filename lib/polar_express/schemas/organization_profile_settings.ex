# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationProfileSettings do
  @moduledoc """
  OrganizationProfileSettings
  """

  @typedoc """
  * `accent_color` - Accent color for the organization Nullable.
  * `description` - A description of the organization Nullable.
  * `enabled` - If this organization has a profile enabled Nullable.
  * `featured_organizations` - A list of featured organizations Nullable.
  * `featured_projects` - A list of featured projects Nullable.
  * `links` - A list of links associated with the organization Nullable.
  * `subscribe` - Subscription promotion settings Nullable.
  """
  @type t :: %__MODULE__{
          accent_color: String.t() | nil,
          description: String.t() | nil,
          enabled: boolean() | nil,
          featured_organizations: [String.t()] | nil,
          featured_projects: [String.t()] | nil,
          links: [String.t()] | nil,
          subscribe: PolarExpress.Schemas.OrganizationSubscribePromoteSettings.t() | nil
        }

  defstruct [
    :accent_color,
    :description,
    :enabled,
    :featured_organizations,
    :featured_projects,
    :links,
    :subscribe
  ]

  @schema_name "OrganizationProfileSettings"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "subscribe" => PolarExpress.Schemas.OrganizationSubscribePromoteSettings
    }
  end
end
