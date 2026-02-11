# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitLicenseKeyExpirationProperties do
  @moduledoc """
  BenefitLicenseKeyExpirationProperties
  """

  @typedoc """
  * `timeframe` - Possible values: `year`, `month`, `day`.
  * `ttl`
  """
  @type t :: %__MODULE__{
          timeframe: String.t() | nil,
          ttl: integer() | nil
        }

  defstruct [:timeframe, :ttl]

  @schema_name "BenefitLicenseKeyExpirationProperties"
  def schema_name, do: @schema_name
end
