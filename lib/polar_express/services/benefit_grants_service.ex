# File generated from our OpenAPI spec
defmodule PolarExpress.Services.BenefitGrantsService do
  @moduledoc """
  Benefit-grants

  BenefitGrants API operations.
  """
  alias PolarExpress.Client

  @doc """
  List Benefit Grants

  List benefit grants across all benefits for the authenticated organization.

  **Scopes**: `benefits:read` `benefits:write`

  See `PolarExpress.Params.BenefitGrantsListBenefitGrantsParams` for parameter details.
  """
  @spec list_benefit_grants(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_benefit_grants(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/benefit-grants/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.BenefitGrant)
    )
  end
end
