# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.BenefitGrants do
  @moduledoc """
  Benefit-grants

  BenefitGrants API operations.
  """

  @typedoc """
  * `benefit`
  * `benefit_id` - The ID of the benefit concerned by this grant. Format: uuid4.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - The ID of the customer concerned by this grant. Format: uuid4.
  * `error` - The error information if the benefit grant failed with an unrecoverable error.
  * `granted_at` - The timestamp when the benefit was granted. If `None`, the benefit is not granted.
  * `id` - The ID of the grant. Format: uuid4.
  * `is_granted` - Whether the benefit is granted.
  * `is_revoked` - Whether the benefit is revoked.
  * `manually_granted_at` - When the manual grant was requested, if applicable.
  * `manually_revoked_at` - When this grant was manually revoked, if applicable.
  * `member`
  * `member_id` - The ID of the member concerned by this grant.
  * `modified_at` - Last modification timestamp of the object.
  * `order_id` - The ID of the order that granted this benefit.
  * `properties`
  * `revoked_at` - The timestamp when the benefit was revoked. If `None`, the benefit is not revoked.
  * `subscription_id` - The ID of the subscription that granted this benefit.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :benefit,
    :benefit_id,
    :created_at,
    :customer,
    :customer_id,
    :error,
    :granted_at,
    :id,
    :is_granted,
    :is_revoked,
    :manually_granted_at,
    :manually_revoked_at,
    :member,
    :member_id,
    :modified_at,
    :order_id,
    :properties,
    :revoked_at,
    :subscription_id
  ]

  @object_name "benefit-grants"
  def object_name, do: @object_name
end
