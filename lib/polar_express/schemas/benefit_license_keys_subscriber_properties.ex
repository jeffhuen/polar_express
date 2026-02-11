# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitLicenseKeysSubscriberProperties do
  @moduledoc """
  BenefitLicenseKeysSubscriberProperties
  """

  @typedoc """
  * `activations` - Nullable.
  * `expires` - Nullable.
  * `limit_usage` - Nullable.
  * `prefix` - Nullable.
  """
  @type t :: %__MODULE__{
          activations: PolarExpress.Schemas.BenefitLicenseKeyActivationProperties.t() | nil,
          expires: PolarExpress.Schemas.BenefitLicenseKeyExpirationProperties.t() | nil,
          limit_usage: integer() | nil,
          prefix: String.t() | nil
        }

  defstruct [:activations, :expires, :limit_usage, :prefix]

  @schema_name "BenefitLicenseKeysSubscriberProperties"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "activations" => PolarExpress.Schemas.BenefitLicenseKeyActivationProperties,
      "expires" => PolarExpress.Schemas.BenefitLicenseKeyExpirationProperties
    }
  end
end
