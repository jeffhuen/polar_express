# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberUpdate do
  @moduledoc """
  MemberUpdate

  Schema for updating a member.
  """

  @typedoc """
  * `name` - Nullable.
  * `role` - The role of the member within the customer. Nullable.
  """
  @type t :: %__MODULE__{
          name: String.t() | nil,
          role: PolarExpress.Schemas.MemberRole.t() | nil
        }

  defstruct [:name, :role]

  @schema_name "MemberUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.MemberRole
    }
  end
end
