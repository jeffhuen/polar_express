# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BaseFactor do
  @moduledoc """
  BaseFactor
  """

  @typedoc """
  * `type` - Possible values: `email_otp`, `totp`, `backup_codes`, `apple`, `github`, `google`.
  """
  @type t :: %__MODULE__{}

  defstruct [:type]

  @schema_name "BaseFactor"
  def schema_name, do: @schema_name
end
