# File generated from our OpenAPI spec
defmodule PolarExpress.Services.RefundsService do
  @moduledoc """
  Refunds

  Refunds API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Refund

  Create a refund.

  **Scopes**: `refunds:write`

  See `PolarExpress.Params.RefundsCreateRefundParams` for parameter details.
  """
  @spec create_refund(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Refund.t()} | {:error, PolarExpress.Error.t()}
  def create_refund(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/refunds/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Refund)
    )
  end

  @doc """
  List Refunds

  List refunds.

  **Scopes**: `refunds:read` `refunds:write`

  See `PolarExpress.Params.RefundsListRefundsParams` for parameter details.
  """
  @spec list_refunds(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_refunds(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/refunds/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Refund)
    )
  end
end
