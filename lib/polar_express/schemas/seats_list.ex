# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SeatsList do
  @moduledoc """
  SeatsList
  """

  @typedoc """
  * `available_seats` - Number of available seats
  * `seats` - List of seats
  * `total_seats` - Total number of seats for the subscription
  """
  @type t :: %__MODULE__{
          available_seats: integer() | nil,
          seats: [PolarExpress.Schemas.CustomerSeat.t()] | nil,
          total_seats: integer() | nil
        }

  defstruct [:available_seats, :seats, :total_seats]

  @schema_name "SeatsList"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "seats" => PolarExpress.Schemas.CustomerSeat
    }
  end
end
