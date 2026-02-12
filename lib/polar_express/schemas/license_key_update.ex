# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyUpdate do
  @moduledoc """
  LicenseKeyUpdate
  """

  @typedoc """
  * `expires_at` - Nullable.
  * `limit_activations` - Nullable.
  * `limit_usage` - Nullable.
  * `status` - Nullable.
  * `usage`
  """
  @type t :: %__MODULE__{
          expires_at: DateTime.t() | nil,
          limit_activations: integer() | nil,
          limit_usage: integer() | nil,
          status: PolarExpress.Schemas.LicenseKeyStatus.t() | nil,
          usage: integer() | nil
        }

  defstruct [:expires_at, :limit_activations, :limit_usage, :status, :usage]

  @schema_name "LicenseKeyUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "status" => PolarExpress.Schemas.LicenseKeyStatus
    }
  end

  def __date_fields__, do: [:expires_at]
end
