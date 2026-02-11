# File generated from our OpenAPI spec
defmodule PolarExpress.Services.MembersService do
  @moduledoc """
  Members

  Members API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Member

  Create a new member for a customer.

  Only B2B customers with the member management feature enabled can add members.
  The authenticated user or organization must have access to the customer's organization.

  **Scopes**: `members:write`

  See `PolarExpress.Params.MembersCreateMemberParams` for parameter details.
  """
  @spec create_member(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Member.t()} | {:error, PolarExpress.Error.t()}
  def create_member(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/members/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Member)
    )
  end

  @doc """
  Delete Member

  Delete a member.

  The authenticated user or organization must have access to the member's organization.

  **Scopes**: `members:write`

  See `PolarExpress.Params.MembersDeleteMemberParams` for parameter details.
  """
  @spec delete_member(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_member(client, id, params \\ %{}, opts \\ []) do
    Client.request(client, :delete, "/v1/members/#{id}", Keyword.merge(opts, params: params))
  end

  @doc """
  Get Member

  Get a member by ID.

  The authenticated user or organization must have access to the member's organization.

  **Scopes**: `members:read` `members:write`

  See `PolarExpress.Params.MembersGetMemberParams` for parameter details.
  """
  @spec get_member(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Member.t()} | {:error, PolarExpress.Error.t()}
  def get_member(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/members/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Member)
    )
  end

  @doc """
  List Members

  List members with optional customer ID filter.

  **Scopes**: `members:read` `members:write`

  See `PolarExpress.Params.MembersListMembersParams` for parameter details.
  """
  @spec list_members(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_members(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/members/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Member)
    )
  end

  @doc """
  Update Member

  Update a member.

  Only name and role can be updated.
  The authenticated user or organization must have access to the member's organization.

  **Scopes**: `members:write`

  See `PolarExpress.Params.MembersUpdateMemberParams` for parameter details.
  """
  @spec update_member(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Member.t()} | {:error, PolarExpress.Error.t()}
  def update_member(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/members/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Member)
    )
  end
end
