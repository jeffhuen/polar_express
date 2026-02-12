# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyUser do
  @moduledoc """
  LicenseKeyUser
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `email`
  * `id` - Format: uuid4.
  * `public_name`
  """
  @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil,
          public_name: String.t() | nil
        }

  defstruct [:avatar_url, :email, :id, :public_name]

  @schema_name "LicenseKeyUser"
  def schema_name, do: @schema_name
end
