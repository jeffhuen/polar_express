# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.SeatsService do
  @moduledoc """
  Seats

  Seats API operations.
  """
  alias PolarExpress.Client

  @doc """
  Assign Seat

  See `PolarExpress.Params.CustomerPortal.SeatsAssignSeatParams` for parameter details.
  """
  @spec assign_seat(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSeat.t()} | {:error, PolarExpress.Error.t()}
  def assign_seat(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/seats",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSeat)
    )
  end

  @doc """
  List Claimed Subscriptions

  List all subscriptions where the authenticated customer has claimed a seat.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.SeatsListClaimedSubscriptionsParams` for parameter details.
  """
  @spec list_claimed_subscriptions(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSubscription.t()} | {:error, PolarExpress.Error.t()}
  def list_claimed_subscriptions(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/seats/subscriptions",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSubscription)
    )
  end

  @doc """
  List Seats

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.SeatsListSeatsParams` for parameter details.
  """
  @spec list_seats(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.SeatsList.t()} | {:error, PolarExpress.Error.t()}
  def list_seats(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/seats",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.SeatsList)
    )
  end

  @doc """
  Resend Invitation

  See `PolarExpress.Params.CustomerPortal.SeatsResendInvitationParams` for parameter details.
  """
  @spec resend_invitation(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSeat.t()} | {:error, PolarExpress.Error.t()}
  def resend_invitation(client, seat_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/seats/#{seat_id}/resend",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSeat)
    )
  end

  @doc """
  Revoke Seat

  See `PolarExpress.Params.CustomerPortal.SeatsRevokeSeatParams` for parameter details.
  """
  @spec revoke_seat(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSeat.t()} | {:error, PolarExpress.Error.t()}
  def revoke_seat(client, seat_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/customer-portal/seats/#{seat_id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSeat)
    )
  end
end
