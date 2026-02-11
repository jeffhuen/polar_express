# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.DownloadablesService do
  @moduledoc """
  Downloadables

  Downloadables API operations.
  """
  alias PolarExpress.Client

  @doc """
  List Downloadables

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.DownloadablesListDownloadablesParams` for parameter details.
  """
  @spec list_downloadables(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_downloadables(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/downloadables/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.DownloadableRead)
    )
  end
end
