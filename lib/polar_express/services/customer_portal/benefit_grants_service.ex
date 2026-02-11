# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.BenefitGrantsService do
  @moduledoc """
  Benefit-grants

  BenefitGrants API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Benefit Grant

  Get a benefit grant by ID for the authenticated customer.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.BenefitGrantsGetBenefitGrantParams` for parameter details.
  """
  @spec get_benefit_grant(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerBenefitGrant.t()} | {:error, PolarExpress.Error.t()}
  def get_benefit_grant(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/benefit-grants/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerBenefitGrant)
    )
  end

  @doc """
  List Benefit Grants

  List benefits grants of the authenticated customer.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.BenefitGrantsListBenefitGrantsParams` for parameter details.
  """
  @spec list_benefit_grants(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_benefit_grants(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/benefit-grants/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerBenefitGrant)
    )
  end

  @doc """
  Update Benefit Grant

  Update a benefit grant for the authenticated customer.

  **Scopes**: `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.BenefitGrantsUpdateBenefitGrantParams` for parameter details.
  """
  @spec update_benefit_grant(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerBenefitGrant.t()} | {:error, PolarExpress.Error.t()}
  def update_benefit_grant(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/customer-portal/benefit-grants/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerBenefitGrant)
    )
  end
end
