# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitLicenseKeyActivationProperties do
  @moduledoc """
  BenefitLicenseKeyActivationProperties
  """

  @typedoc """
  * `enable_customer_admin`
  * `limit`
  """
  @type t :: %__MODULE__{
          enable_customer_admin: boolean() | nil,
          limit: integer() | nil
        }

  defstruct [:enable_customer_admin, :limit]

  @schema_name "BenefitLicenseKeyActivationProperties"
  def schema_name, do: @schema_name
end
