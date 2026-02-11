# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Members do
  @moduledoc """
  Members

  Members API operations.
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
  @type t :: %__MODULE__{
          created_at: String.t() | nil,
          customer_id: String.t() | nil,
          email: String.t() | nil,
          external_id: map() | nil,
          id: String.t() | nil,
          modified_at: map() | nil,
          name: map() | nil,
          role: map() | nil
        }

  defstruct [:created_at, :customer_id, :email, :external_id, :id, :modified_at, :name, :role]

  @object_name "members"
  def object_name, do: @object_name
end
