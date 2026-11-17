# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerSeatsService do
  @moduledoc """
  Customer-seats

  CustomerSeats API operations.
  """
  alias PolarExpress.Client

  @doc """
  Assign Seat

  Assign a seat for a subscription or order.

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

  Claim a customer seat with an invitation token.

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

  Get claim information for a customer seat invitation.

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

  List seats for a subscription or order.

  **Scopes**: `customer_seats:read`

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

  Resend an invitation for a pending customer seat.

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

  Revoke a customer seat.

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
