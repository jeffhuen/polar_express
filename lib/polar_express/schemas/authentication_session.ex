# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthenticationSession do
  @moduledoc """
  AuthenticationSession
  """

  @typedoc """
  * `available_factors`
  * `identity_id` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:available_factors, :identity_id]

  @schema_name "AuthenticationSession"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "available_factors" =>
        {:union, :discriminated, "type",
         %{
           "apple" => PolarExpress.Schemas.BaseFactor,
           "backup_codes" => PolarExpress.Schemas.BaseFactor,
           "email_otp" => PolarExpress.Schemas.BaseFactor,
           "github" => PolarExpress.Schemas.BaseFactor,
           "google" => PolarExpress.Schemas.BaseFactor,
           "sso" => PolarExpress.Schemas.SSOFactor,
           "totp" => PolarExpress.Schemas.BaseFactor
         }}
    }
  end
end
