# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationStartupProgramClaimResponse do
  @moduledoc """
  OrganizationStartupProgramClaimResponse

  Result of claiming the Startup Program discount.

  Exactly one field is set:
  - `checkout` — Free → Scale: org needs to complete the checkout. The
  discount is already attached.
  - `subscription` — Paid → Scale: the existing paid subscription was
  switched to Scale and the discount applied immediately.
  """

  @typedoc """
  * `checkout` - Nullable.
  * `subscription` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:checkout, :subscription]

  @schema_name "OrganizationStartupProgramClaimResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "checkout" => PolarExpress.Schemas.OrganizationCheckoutResponse,
      "subscription" => PolarExpress.Schemas.OrganizationSubscription
    }
  end
end
