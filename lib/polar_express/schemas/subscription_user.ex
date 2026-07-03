# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUser do
  @moduledoc """
  SubscriptionUser
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `email` - Nullable.
  * `github_username` - Nullable.
  * `id` - Format: uuid4.
  * `public_name`
  """
  @type t :: %__MODULE__{}

  defstruct [:avatar_url, :email, :github_username, :id, :public_name]

  @schema_name "SubscriptionUser"
  def schema_name, do: @schema_name
end
