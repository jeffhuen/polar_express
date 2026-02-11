# File generated from our OpenAPI spec
defmodule PolarExpress.Services.BenefitsService do
  @moduledoc """
  Benefits

  Benefits API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Benefit

  Create a benefit.

  **Scopes**: `benefits:write`

  See `PolarExpress.Params.BenefitsCreateBenefitParams` for parameter details.
  """
  @spec create_benefit(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Benefit.t()} | {:error, PolarExpress.Error.t()}
  def create_benefit(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/benefits/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Benefit)
    )
  end

  @doc """
  Delete Benefit

  Delete a benefit.

  > [!WARNING]
  > Every grants associated with the benefit will be revoked.
  > Users will lose access to the benefit.

  **Scopes**: `benefits:write`

  See `PolarExpress.Params.BenefitsDeleteBenefitParams` for parameter details.
  """
  @spec delete_benefit(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_benefit(client, id, params \\ %{}, opts \\ []) do
    Client.request(client, :delete, "/v1/benefits/#{id}", Keyword.merge(opts, params: params))
  end

  @doc """
  Get Benefit

  Get a benefit by ID.

  **Scopes**: `benefits:read` `benefits:write`

  See `PolarExpress.Params.BenefitsGetBenefitParams` for parameter details.
  """
  @spec get_benefit(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Benefit.t()} | {:error, PolarExpress.Error.t()}
  def get_benefit(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/benefits/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Benefit)
    )
  end

  @doc """
  List Benefit Grants

  List the individual grants for a benefit.

  It's especially useful to check if a user has been granted a benefit.

  **Scopes**: `benefits:read` `benefits:write`

  See `PolarExpress.Params.BenefitsListBenefitGrantsParams` for parameter details.
  """
  @spec list_benefit_grants(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_benefit_grants(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/benefits/#{id}/grants",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.BenefitGrant)
    )
  end

  @doc """
  List Benefits

  List benefits.

  **Scopes**: `benefits:read` `benefits:write`

  See `PolarExpress.Params.BenefitsListBenefitsParams` for parameter details.
  """
  @spec list_benefits(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_benefits(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/benefits/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Benefit)
    )
  end

  @doc """
  Update Benefit

  Update a benefit.

  **Scopes**: `benefits:write`

  See `PolarExpress.Params.BenefitsUpdateBenefitParams` for parameter details.
  """
  @spec update_benefit(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Benefit.t()} | {:error, PolarExpress.Error.t()}
  def update_benefit(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/benefits/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Benefit)
    )
  end
end
