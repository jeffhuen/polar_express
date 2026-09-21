# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationUncoveredHost do
  @moduledoc """
  OrganizationUncoveredHost
  """

  @typedoc """
  * `checkouts` - Embedded checkouts opened from this origin.
  * `host` - The entry that would admit this origin.
  * `last_seen_at` - When it last opened one. Format: date-time.
  * `origin` - The origin seen embedding the checkout.
  """
  @type t :: %__MODULE__{}

  defstruct [:checkouts, :host, :last_seen_at, :origin]

  @schema_name "OrganizationUncoveredHost"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:last_seen_at]
end
