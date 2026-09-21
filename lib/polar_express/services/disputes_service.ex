# File generated from our OpenAPI spec
defmodule PolarExpress.Services.DisputesService do
  @moduledoc """
  Disputes

  Disputes API operations.
  """
  alias PolarExpress.Client

  @doc """
  Accept Dispute

  Accept a dispute, conceding the chargeback.

  Closes the dispute with the processor (settling it as `lost`) and records
  the merchant's decision on the dispute's support case.

  **Scopes**: `disputes:write`

  See `PolarExpress.Params.DisputesAcceptDisputeParams` for parameter details.
  """
  @spec accept_dispute(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Dispute.t()} | {:error, PolarExpress.Error.t()}
  def accept_dispute(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/disputes/#{id}/accept",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Dispute)
    )
  end

  @doc """
  Get Dispute

  Get a dispute by ID.

  **Scopes**: `disputes:read` `disputes:write`

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

  **Scopes**: `disputes:read` `disputes:write`

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
