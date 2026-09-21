# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCustomerSession do
  @moduledoc """
  OrganizationCustomerSession
  """

  @typedoc """
  * `token` - Short-lived customer session token bound to this organization's mirrored Polar billing customer. Authenticates against `/v1/customer-portal/customers/me/*` for the duration of its TTL.
  """
  @type t :: %__MODULE__{}

  defstruct [:token]

  @schema_name "OrganizationCustomerSession"
  def schema_name, do: @schema_name
end
