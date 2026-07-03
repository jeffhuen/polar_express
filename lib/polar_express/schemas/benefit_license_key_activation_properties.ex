# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitLicenseKeyActivationProperties do
  @moduledoc """
  BenefitLicenseKeyActivationProperties
  """

  @typedoc """
  * `enable_customer_admin`
  * `limit`
  """
  @type t :: %__MODULE__{}

  defstruct [:enable_customer_admin, :limit]

  @schema_name "BenefitLicenseKeyActivationProperties"
  def schema_name, do: @schema_name
end
