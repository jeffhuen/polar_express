# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerSeats do
  @moduledoc """
  Customer-seats

  CustomerSeats API operations.
  """

  @typedoc """
  * `claimed_at` - When the seat was claimed
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_email` - The assigned customer email
  * `customer_id` - The customer ID. When member_model_enabled is true, this is the billing customer (purchaser). When false, this is the seat member customer.
  * `email` - Email of the seat member (set when member_model_enabled is true)
  * `id` - The seat ID Format: uuid.
  * `invitation_token_expires_at` - When the invitation token expires
  * `member` - The member associated with this seat
  * `member_id` - The member ID of the seat occupant
  * `modified_at` - Last modification timestamp of the object.
  * `order_id` - The order ID (for one-time purchase seats)
  * `revoked_at` - When the seat was revoked
  * `seat_metadata` - Additional metadata for the seat
  * `status` - Status of the seat
  * `subscription_id` - The subscription ID (for recurring seats)
  """
  @type t :: %__MODULE__{
          claimed_at: term() | nil,
          created_at: String.t() | nil,
          customer_email: term() | nil,
          customer_id: term() | nil,
          email: term() | nil,
          id: String.t() | nil,
          invitation_token_expires_at: term() | nil,
          member: term() | nil,
          member_id: term() | nil,
          modified_at: term() | nil,
          order_id: term() | nil,
          revoked_at: term() | nil,
          seat_metadata: term() | nil,
          status: map() | nil,
          subscription_id: term() | nil
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

  @object_name "customer-seats"
  def object_name, do: @object_name
end
