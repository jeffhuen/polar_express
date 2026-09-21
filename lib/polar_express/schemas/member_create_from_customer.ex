# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberCreateFromCustomer do
  @moduledoc """
  MemberCreateFromCustomer

  Schema for creating a new member nested under a customer.

  The customer is taken from the URL path, so it's not part of the body.
  """

  @typedoc """
  * `email` - The email address of the member. Format: email.
  * `external_id` - The ID of the member in your system. This must be unique within the customer. Nullable.
  * `name` - Nullable.
  * `role` - The role of the member within the customer. To assign or transfer ownership, use the member update endpoint. Possible values: `member`, `billing_manager`.
  """
  @type t :: %__MODULE__{}

  defstruct [:email, :external_id, :name, :role]

  @schema_name "MemberCreateFromCustomer"
  def schema_name, do: @schema_name
end
