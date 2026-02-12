# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SeatClaim do
  @moduledoc """
  SeatClaim
  """

  @typedoc """
  * `invitation_token` - Invitation token to claim the seat
  """
  @type t :: %__MODULE__{
          invitation_token: String.t() | nil
        }

  defstruct [:invitation_token]

  @schema_name "SeatClaim"
  def schema_name, do: @schema_name
end
