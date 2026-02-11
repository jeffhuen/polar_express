# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSeatClaimResponse do
  @moduledoc """
  CustomerSeatClaimResponse

  Response after successfully claiming a seat.
  """

  @typedoc """
  * `customer_session_token` - Session token for immediate customer portal access
  * `seat` - The claimed seat
  """
  @type t :: %__MODULE__{
          customer_session_token: String.t() | nil,
          seat: PolarExpress.Schemas.CustomerSeat.t() | nil
        }

  defstruct [:customer_session_token, :seat]

  @schema_name "CustomerSeatClaimResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "seat" => PolarExpress.Schemas.CustomerSeat
    }
  end
end
