# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Customers do
  @moduledoc """
  Customers

  Customers API operations.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_id` - The ID of the customer this member belongs to. Format: uuid4.
  * `email` - The email address of the member.
  * `external_id` - The ID of the member in your system. This must be unique within the customer.
  * `id` - The ID of the member. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the member.
  * `role` - The role of the member within the customer.
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :customer_id, :email, :external_id, :id, :modified_at, :name, :role]

  @object_name "customers"
  def object_name, do: @object_name
end
