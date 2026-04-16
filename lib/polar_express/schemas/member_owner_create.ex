# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberOwnerCreate do
  @moduledoc """
  MemberOwnerCreate

  Schema for creating an owner member during customer creation.
  """

  @typedoc """
  * `email` - The email address of the member. Format: email.
  * `external_id` - The ID of the member in your system. This must be unique within the customer. Nullable.
  * `name` - Nullable.
  """
  @type t :: %__MODULE__{
          email: String.t() | nil,
          external_id: String.t() | nil,
          name: String.t() | nil
        }

  defstruct [:email, :external_id, :name]

  @schema_name "MemberOwnerCreate"
  def schema_name, do: @schema_name
end
