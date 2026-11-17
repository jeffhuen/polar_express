# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantCreateExternal do
  @moduledoc """
  BenefitGrantCreateExternal

  Manually grant a benefit using external IDs.
  """

  @typedoc """
  * `external_benefit_id` - The ID of the benefit in your system. Resolves to the current version of the benefit.
  * `external_customer_id` - The ID of the customer in your system.
  * `external_member_id` - The ID of the member in your system, scoped to the customer. If not provided, the benefit is granted to the customer's owner. Nullable.
  * `organization_id` - The ID of the organization owning the customer and benefit. **Required unless your credential identifies one organization.** Omit this field when using an organization token. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:external_benefit_id, :external_customer_id, :external_member_id, :organization_id]

  @schema_name "BenefitGrantCreateExternal"
  def schema_name, do: @schema_name
end
