# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.MembersService do
  @moduledoc """
  Members

  Members API operations.
  """
  alias PolarExpress.Client

  @doc """
  Add Member

  Add a new member to the customer's team.

  Only available to owners and billing managers of team customers.

  Rules:
  - Cannot add a member with the owner role (there must be exactly one owner)
  - If a member with this email already exists, the existing member is returned

  See `PolarExpress.Params.CustomerPortal.MembersAddMemberParams` for parameter details.
  """
  @spec add_member(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerPortalMember.t()} | {:error, PolarExpress.Error.t()}
  def add_member(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/members",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerPortalMember)
    )
  end

  @doc """
  List Members

  List all members of the customer's team.

  Only available to owners and billing managers of team customers.

  See `PolarExpress.Params.CustomerPortal.MembersListMembersParams` for parameter details.
  """
  @spec list_members(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerPortalMember.t()} | {:error, PolarExpress.Error.t()}
  def list_members(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/members",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerPortalMember)
    )
  end

  @doc """
  Remove Member

  Remove a member from the team.

  Only available to owners and billing managers of team customers.

  Rules:
  - Cannot remove yourself
  - Cannot remove the only owner

  See `PolarExpress.Params.CustomerPortal.MembersRemoveMemberParams` for parameter details.
  """
  @spec remove_member(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def remove_member(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/customer-portal/members/#{id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Update Member

  Update a member's role.

  Only available to owners and billing managers of team customers.

  Rules:
  - Cannot modify your own role (to prevent self-demotion)
  - Customer must have exactly one owner at all times

  See `PolarExpress.Params.CustomerPortal.MembersUpdateMemberParams` for parameter details.
  """
  @spec update_member(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerPortalMember.t()} | {:error, PolarExpress.Error.t()}
  def update_member(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/customer-portal/members/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerPortalMember)
    )
  end
end
