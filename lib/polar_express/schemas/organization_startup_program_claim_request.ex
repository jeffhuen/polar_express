# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationStartupProgramClaimRequest do
  @moduledoc """
  OrganizationStartupProgramClaimRequest

  Inputs for claiming the Startup Program discount.

  The checkout URLs are only used when the org is on the Free plan and
  needs a checkout to set up a payment method; they're ignored on the
  PATCH path (already-paid orgs).
  """

  @typedoc """
  * `embed_origin` - Nullable.
  * `return_url` - Nullable.
  * `success_url` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:embed_origin, :return_url, :success_url]

  @schema_name "OrganizationStartupProgramClaimRequest"
  def schema_name, do: @schema_name
end
