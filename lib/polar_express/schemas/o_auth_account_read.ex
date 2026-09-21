# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OAuthAccountRead do
  @moduledoc """
  OAuthAccountRead
  """

  @typedoc """
  * `account_email`
  * `account_id`
  * `account_username` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `platform`
  """
  @type t :: %__MODULE__{}

  defstruct [:account_email, :account_id, :account_username, :created_at, :modified_at, :platform]

  @schema_name "OAuthAccountRead"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "platform" => PolarExpress.Schemas.OAuthPlatform
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
