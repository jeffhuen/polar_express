# File generated from our OpenAPI spec
defmodule PolarExpress.Services.BenefitGrantsService do
  @moduledoc """
  Benefit-grants

  BenefitGrants API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Benefit Grant

  Manually grant a benefit to a customer or one of their members.

  Use either Polar IDs for every reference or external IDs for every reference.
  Fulfillment is asynchronous: the returned grant may not yet be granted.
  Meter-credit benefits cannot be granted manually.

  **Scopes**: `benefits:write`

  See `PolarExpress.Params.BenefitGrantsCreateBenefitGrantParams` for parameter details.
  """
  @spec create_benefit_grant(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.BenefitGrant.t()} | {:error, PolarExpress.Error.t()}
  def create_benefit_grant(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/benefit-grants/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.BenefitGrant)
    )
  end

  @doc """
  List Benefit Grants

  List benefit grants across all benefits accessible to the authenticated subject.

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

  @doc """
  Revoke Benefit Grant

  Manually revoke a benefit grant, including grants from purchases.

  Revocation is asynchronous. Once manually revoked, this grant cannot be
  reactivated by renewal or fulfillment retries. Other grants may still
  provide access to the benefit. To undo a manual revocation, update the grant.
  Repeating this request is safe.

  **Scopes**: `benefits:write`

  See `PolarExpress.Params.BenefitGrantsRevokeBenefitGrantParams` for parameter details.
  """
  @spec revoke_benefit_grant(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.BenefitGrant.t()} | {:error, PolarExpress.Error.t()}
  def revoke_benefit_grant(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/benefit-grants/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.BenefitGrant)
    )
  end

  @doc """
  Update Benefit Grant

  Undo a manual revocation by setting `manually_revoked_at` to `None`.

  The grant keeps its original recipient and purchase, if any.
  Fulfillment is asynchronous. Repeating this request is safe.
  A purchase-scoped benefit is re-granted if the purchase still provides access.

  **Scopes**: `benefits:write`

  See `PolarExpress.Params.BenefitGrantsUpdateBenefitGrantParams` for parameter details.
  """
  @spec update_benefit_grant(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.BenefitGrant.t()} | {:error, PolarExpress.Error.t()}
  def update_benefit_grant(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/benefit-grants/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.BenefitGrant)
    )
  end
end
