# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.WalletsService do
  @moduledoc """
  Wallets

  Wallets API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Wallet

  Get a wallet by ID for the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.WalletsGetWalletParams` for parameter details.
  """
  @spec get_wallet(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerWallet.t()} | {:error, PolarExpress.Error.t()}
  def get_wallet(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/wallets/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWallet)
    )
  end

  @doc """
  List Wallets

  List wallets of the authenticated customer.

  See `PolarExpress.Params.CustomerPortal.WalletsListWalletsParams` for parameter details.
  """
  @spec list_wallets(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_wallets(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/wallets/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWallet)
    )
  end
end
