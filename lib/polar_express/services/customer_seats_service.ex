# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerSeatsService do
  @moduledoc """
  Customer-seats

  CustomerSeats API operations.
  """
  alias PolarExpress.Client

  @doc """
  Assign Seat

  **Scopes**: `customer_seats:write`

  See `PolarExpress.Params.CustomerSeatsAssignSeatParams` for parameter details.
  """
  @spec assign_seat(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSeat.t()} | {:error, PolarExpress.Error.t()}
  def assign_seat(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-seats",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSeat)
    )
  end

  @doc """
  Claim Seat

  See `PolarExpress.Params.CustomerSeatsClaimSeatParams` for parameter details.
  """
  @spec claim_seat(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSeatClaimResponse.t()}
          | {:error, PolarExpress.Error.t()}
  def claim_seat(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-seats/claim",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.CustomerSeatClaimResponse
      )
    )
  end

  @doc """
  Get Claim Info

  See `PolarExpress.Params.CustomerSeatsGetClaimInfoParams` for parameter details.
  """
  @spec get_claim_info(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.SeatClaimInfo.t()} | {:error, PolarExpress.Error.t()}
  def get_claim_info(client, invitation_token, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-seats/claim/#{invitation_token}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.SeatClaimInfo)
    )
  end

  @doc """
  List Seats

  **Scopes**: `customer_seats:write`

  See `PolarExpress.Params.CustomerSeatsListSeatsParams` for parameter details.
  """
  @spec list_seats(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.SeatsList.t()} | {:error, PolarExpress.Error.t()}
  def list_seats(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-seats",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.SeatsList)
    )
  end

  @doc """
  Resend Invitation

  **Scopes**: `customer_seats:write`

  See `PolarExpress.Params.CustomerSeatsResendInvitationParams` for parameter details.
  """
  @spec resend_invitation(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSeat.t()} | {:error, PolarExpress.Error.t()}
  def resend_invitation(client, seat_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-seats/#{seat_id}/resend",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSeat)
    )
  end

  @doc """
  Revoke Seat

  **Scopes**: `customer_seats:write`

  See `PolarExpress.Params.CustomerSeatsRevokeSeatParams` for parameter details.
  """
  @spec revoke_seat(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSeat.t()} | {:error, PolarExpress.Error.t()}
  def revoke_seat(client, seat_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/customer-seats/#{seat_id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSeat)
    )
  end
end
