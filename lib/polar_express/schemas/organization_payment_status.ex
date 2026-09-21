# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPaymentStatus do
  @moduledoc """
  OrganizationPaymentStatus
  """

  @typedoc """
  * `onboarding_resubmission_requested_at` - When Polar requested that the organization review and resubmit its onboarding information, if applicable. Null for organizations that have never been reset for review. Nullable.
  * `organization_status` - Current organization status
  * `payment_ready` - Whether the organization is ready to accept payments
  """
  @type t :: %__MODULE__{}

  defstruct [:onboarding_resubmission_requested_at, :organization_status, :payment_ready]

  @schema_name "OrganizationPaymentStatus"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "organization_status" => PolarExpress.Schemas.OrganizationStatus
    }
  end

  def __date_fields__, do: [:onboarding_resubmission_requested_at]
end
