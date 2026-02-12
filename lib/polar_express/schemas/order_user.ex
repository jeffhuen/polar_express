# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderUser do
  @moduledoc """
  OrderUser
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `email`
  * `github_username` - Nullable.
  * `id` - Format: uuid4.
  * `public_name`
  """
  @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          email: String.t() | nil,
          github_username: String.t() | nil,
          id: String.t() | nil,
          public_name: String.t() | nil
        }

  defstruct [:avatar_url, :email, :github_username, :id, :public_name]

  @schema_name "OrderUser"
  def schema_name, do: @schema_name
end
