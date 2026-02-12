# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserInfoOrganization do
  @moduledoc """
  UserInfoOrganization
  """

  @typedoc """
  * `name` - Nullable.
  * `sub`
  """
  @type t :: %__MODULE__{
          name: String.t() | nil,
          sub: String.t() | nil
        }

  defstruct [:name, :sub]

  @schema_name "UserInfoOrganization"
  def schema_name, do: @schema_name
end
