# File generated from our OpenAPI spec
defmodule PolarExpress.Services.DisputesService do
  @moduledoc """
  Disputes

  Disputes API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Dispute

  Get a dispute by ID.

  **Scopes**: `disputes:read`

  See `PolarExpress.Params.DisputesGetDisputeParams` for parameter details.
  """
  @spec get_dispute(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Dispute.t()} | {:error, PolarExpress.Error.t()}
  def get_dispute(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/disputes/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Dispute)
    )
  end

  @doc """
  List Disputes

  List disputes.

  **Scopes**: `disputes:read`

  See `PolarExpress.Params.DisputesListDisputesParams` for parameter details.
  """
  @spec list_disputes(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_disputes(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/disputes/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Dispute)
    )
  end
end
