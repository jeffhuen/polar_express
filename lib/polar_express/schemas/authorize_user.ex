# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthorizeUser do
  @moduledoc """
  AuthorizeUser
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `email` - Format: email.
  * `id` - Format: uuid4.
  """
  @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil
        }

  defstruct [:avatar_url, :email, :id]

  @schema_name "AuthorizeUser"
  def schema_name, do: @schema_name
end
