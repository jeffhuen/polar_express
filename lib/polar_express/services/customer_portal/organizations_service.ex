# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.OrganizationsService do
  @moduledoc """
  Organizations

  Organizations API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Organization

  Get a customer portal's organization by slug.

  See `PolarExpress.Params.CustomerPortal.OrganizationsGetOrganizationParams` for parameter details.
  """
  @spec get_organization(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerOrganizationData.t()}
          | {:error, PolarExpress.Error.t()}
  def get_organization(client, slug, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/organizations/#{slug}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerOrganizationData)
    )
  end
end
