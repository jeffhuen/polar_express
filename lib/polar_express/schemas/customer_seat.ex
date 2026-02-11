# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSeat do
  @moduledoc """
  CustomerSeat
  """

  @typedoc """
  * `claimed_at` - When the seat was claimed Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_email` - The assigned customer email Nullable.
  * `customer_id` - The customer ID. When member_model_enabled is true, this is the billing customer (purchaser). When false, this is the seat member customer. Nullable.
  * `email` - Email of the seat member (set when member_model_enabled is true) Nullable.
  * `id` - The seat ID Format: uuid.
  * `invitation_token_expires_at` - When the invitation token expires Nullable.
  * `member` - The member associated with this seat Nullable.
  * `member_id` - The member ID of the seat occupant Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - The order ID (for one-time purchase seats) Nullable.
  * `revoked_at` - When the seat was revoked Nullable.
  * `seat_metadata` - Additional metadata for the seat Nullable.
  * `status` - Status of the seat
  * `subscription_id` - The subscription ID (for recurring seats) Nullable.
  """
  @type t :: %__MODULE__{
          claimed_at: DateTime.t() | nil,
          created_at: DateTime.t() | nil,
          customer_email: String.t() | nil,
          customer_id: String.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil,
          invitation_token_expires_at: DateTime.t() | nil,
          member: PolarExpress.Schemas.Member.t() | nil,
          member_id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          order_id: String.t() | nil,
          revoked_at: DateTime.t() | nil,
          seat_metadata: map() | nil,
          status: PolarExpress.Schemas.SeatStatus.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [
    :claimed_at,
    :created_at,
    :customer_email,
    :customer_id,
    :email,
    :id,
    :invitation_token_expires_at,
    :member,
    :member_id,
    :modified_at,
    :order_id,
    :revoked_at,
    :seat_metadata,
    :status,
    :subscription_id
  ]

  @schema_name "CustomerSeat"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "member" => PolarExpress.Schemas.Member,
      "status" => PolarExpress.Schemas.SeatStatus
    }
  end

  def __date_fields__,
    do: [:claimed_at, :created_at, :invitation_token_expires_at, :modified_at, :revoked_at]
end
