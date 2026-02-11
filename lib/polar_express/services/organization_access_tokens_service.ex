# File generated from our OpenAPI spec
defmodule PolarExpress.Services.OrganizationAccessTokensService do
  @moduledoc """
  OrganizationAccessTokens

  OrganizationAccessTokens API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create

  **Scopes**: `organization_access_tokens:write`

  See `PolarExpress.Params.OrganizationAccessTokensCreateParams` for parameter details.
  """
  @spec create(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.OrganizationAccessTokenCreateResponse.t()}
          | {:error, PolarExpress.Error.t()}
  def create(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/organization-access-tokens/",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.OrganizationAccessTokenCreateResponse
      )
    )
  end

  @doc """
  Delete

  **Scopes**: `organization_access_tokens:write`

  See `PolarExpress.Params.OrganizationAccessTokensDeleteParams` for parameter details.
  """
  @spec delete(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/organization-access-tokens/#{id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  List

  List organization access tokens.

  **Scopes**: `organization_access_tokens:read` `organization_access_tokens:write`

  See `PolarExpress.Params.OrganizationAccessTokensListParams` for parameter details.
  """
  @spec list(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/organization-access-tokens/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.OrganizationAccessToken)
    )
  end

  @doc """
  Update

  **Scopes**: `organization_access_tokens:write`

  See `PolarExpress.Params.OrganizationAccessTokensUpdateParams` for parameter details.
  """
  @spec update(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.OrganizationAccessToken.t()}
          | {:error, PolarExpress.Error.t()}
  def update(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/organization-access-tokens/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.OrganizationAccessToken)
    )
  end
end
