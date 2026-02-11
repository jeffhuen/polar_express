# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SeatClaimInfo do
  @moduledoc """
  SeatClaimInfo

  Read-only information about a seat claim invitation.
  Safe for email scanners - no side effects when fetched.
  """

  @typedoc """
  * `can_claim` - Whether the seat can be claimed
  * `customer_email` - Email of the customer assigned to this seat
  * `organization_name` - Name of the organization
  * `organization_slug` - Slug of the organization
  * `product_id` - ID of the product Format: uuid.
  * `product_name` - Name of the product
  """
  @type t :: %__MODULE__{
          can_claim: boolean() | nil,
          customer_email: String.t() | nil,
          organization_name: String.t() | nil,
          organization_slug: String.t() | nil,
          product_id: String.t() | nil,
          product_name: String.t() | nil
        }

  defstruct [
    :can_claim,
    :customer_email,
    :organization_name,
    :organization_slug,
    :product_id,
    :product_name
  ]

  @schema_name "SeatClaimInfo"
  def schema_name, do: @schema_name
end
