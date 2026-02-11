# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Members do
  @moduledoc """
  Members

  Members API operations.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `email` - The email address of the member.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the member.
  * `role` - The role of the member within the team.
  """
  @type t :: %__MODULE__{
          created_at: String.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil,
          modified_at: map() | nil,
          name: map() | nil,
          role: map() | nil
        }

  defstruct [:created_at, :email, :id, :modified_at, :name, :role]

  @object_name "members"
  def object_name, do: @object_name
end
