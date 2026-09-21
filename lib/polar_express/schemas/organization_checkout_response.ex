# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCheckoutResponse do
  @moduledoc """
  OrganizationCheckoutResponse
  """

  @typedoc """
  * `checkout_id`
  * `expires_at` - Format: date-time.
  * `url`
  """
  @type t :: %__MODULE__{}

  defstruct [:checkout_id, :expires_at, :url]

  @schema_name "OrganizationCheckoutResponse"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:expires_at]
end
