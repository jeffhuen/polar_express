# File generated from our OpenAPI spec
defmodule PolarExpress.Services.Oauth2Service do
  @moduledoc """
  Oauth2

  Oauth2 API operations.
  """
  alias PolarExpress.Client

  @doc """
  Authorize

  See `PolarExpress.Params.Oauth2AuthorizeParams` for parameter details.
  """
  @spec authorize(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.AuthorizeResponseUser.t()} | {:error, PolarExpress.Error.t()}
  def authorize(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/oauth2/authorize",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.AuthorizeResponseUser)
    )
  end

  @doc """
  Create Client

  Create an OAuth2 client.

  See `PolarExpress.Params.Oauth2CreateClientParams` for parameter details.
  """
  @spec create_client(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def create_client(client, params \\ %{}, opts \\ []) do
    Client.request(client, :post, "/v1/oauth2/register", Keyword.merge(opts, params: params))
  end

  @doc """
  Delete Client

  Delete an OAuth2 client.

  See `PolarExpress.Params.Oauth2DeleteClientParams` for parameter details.
  """
  @spec delete_client(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_client(client, client_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/oauth2/register/#{client_id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get Client

  Get an OAuth2 client by Client ID.

  See `PolarExpress.Params.Oauth2GetClientParams` for parameter details.
  """
  @spec get_client(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def get_client(client, client_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/oauth2/register/#{client_id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get User Info

  Get information about the authenticated user.

  See `PolarExpress.Params.Oauth2GetUserInfoParams` for parameter details.
  """
  @spec get_user_info(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.UserInfoUser.t()} | {:error, PolarExpress.Error.t()}
  def get_user_info(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/oauth2/userinfo",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.UserInfoUser)
    )
  end

  @doc """
  Introspect Token

  Get information about an access token.

  See `PolarExpress.Params.Oauth2IntrospectTokenParams` for parameter details.
  """
  @spec introspect_token(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.IntrospectTokenResponse.t()}
          | {:error, PolarExpress.Error.t()}
  def introspect_token(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/oauth2/introspect",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.IntrospectTokenResponse)
    )
  end

  @doc """
  Request Token

  Request an access token using a valid grant.

  See `PolarExpress.Params.Oauth2RequestTokenParams` for parameter details.
  """
  @spec request_token(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.TokenResponse.t()} | {:error, PolarExpress.Error.t()}
  def request_token(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/oauth2/token",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.TokenResponse)
    )
  end

  @doc """
  Revoke Token

  Revoke an access token or a refresh token.

  See `PolarExpress.Params.Oauth2RevokeTokenParams` for parameter details.
  """
  @spec revoke_token(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.RevokeTokenResponse.t()} | {:error, PolarExpress.Error.t()}
  def revoke_token(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/oauth2/revoke",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.RevokeTokenResponse)
    )
  end

  @doc """
  Update Client

  Update an OAuth2 client.

  See `PolarExpress.Params.Oauth2UpdateClientParams` for parameter details.
  """
  @spec update_client(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def update_client(client, client_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :put,
      "/v1/oauth2/register/#{client_id}",
      Keyword.merge(opts, params: params)
    )
  end
end
