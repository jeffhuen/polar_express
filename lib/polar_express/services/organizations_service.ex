# File generated from our OpenAPI spec
defmodule PolarExpress.Services.OrganizationsService do
  @moduledoc """
  Organizations

  Organizations API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Organization

  Create an organization.

  **Scopes**: `organizations:write`

  See `PolarExpress.Params.OrganizationsCreateOrganizationParams` for parameter details.
  """
  @spec create_organization(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Organization.t()} | {:error, PolarExpress.Error.t()}
  def create_organization(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/organizations/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Organization)
    )
  end

  @doc """
  Get Organization

  Get an organization by ID.

  **Scopes**: `organizations:read` `organizations:write`

  See `PolarExpress.Params.OrganizationsGetOrganizationParams` for parameter details.
  """
  @spec get_organization(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Organization.t()} | {:error, PolarExpress.Error.t()}
  def get_organization(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/organizations/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Organization)
    )
  end

  @doc """
  List Organizations

  List organizations.

  **Scopes**: `organizations:read` `organizations:write`

  See `PolarExpress.Params.OrganizationsListOrganizationsParams` for parameter details.
  """
  @spec list_organizations(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_organizations(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/organizations/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Organization)
    )
  end

  @doc """
  Update Organization

  Update an organization.

  **Scopes**: `organizations:write`

  See `PolarExpress.Params.OrganizationsUpdateOrganizationParams` for parameter details.
  """
  @spec update_organization(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Organization.t()} | {:error, PolarExpress.Error.t()}
  def update_organization(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/organizations/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Organization)
    )
  end
end
