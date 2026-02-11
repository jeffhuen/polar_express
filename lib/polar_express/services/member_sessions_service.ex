# File generated from our OpenAPI spec
defmodule PolarExpress.Services.MemberSessionsService do
  @moduledoc """
  Member-sessions

  MemberSessions API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Member Session

  Create a member session.

  This endpoint is only available for organizations with `member_model_enabled`
  and `seat_based_pricing_enabled` feature flags enabled.

  **Scopes**: `member_sessions:write`

  See `PolarExpress.Params.MemberSessionsCreateMemberSessionParams` for parameter details.
  """
  @spec create_member_session(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.MemberSession.t()} | {:error, PolarExpress.Error.t()}
  def create_member_session(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/member-sessions/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.MemberSession)
    )
  end
end
