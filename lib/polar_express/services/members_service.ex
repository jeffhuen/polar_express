# File generated from our OpenAPI spec
defmodule PolarExpress.Services.MembersService do
  @moduledoc """
  Members

  Members API operations.
  """
  alias PolarExpress.Client

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
end
