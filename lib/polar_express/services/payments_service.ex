# File generated from our OpenAPI spec
defmodule PolarExpress.Services.PaymentsService do
  @moduledoc """
  Payments

  Payments API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Payment

  Get a payment by ID.

  **Scopes**: `payments:read`

  See `PolarExpress.Params.PaymentsGetPaymentParams` for parameter details.
  """
  @spec get_payment(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Payment.t()} | {:error, PolarExpress.Error.t()}
  def get_payment(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/payments/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Payment)
    )
  end

  @doc """
  List Payments

  List payments.

  **Scopes**: `payments:read`

  See `PolarExpress.Params.PaymentsListPaymentsParams` for parameter details.
  """
  @spec list_payments(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_payments(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/payments/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Payment)
    )
  end
end
