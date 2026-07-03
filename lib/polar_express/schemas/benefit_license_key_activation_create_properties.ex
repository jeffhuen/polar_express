# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitLicenseKeyActivationCreateProperties do
  @moduledoc """
  BenefitLicenseKeyActivationCreateProperties
  """

  @typedoc """
  * `enable_customer_admin`
  * `limit`
  """
  @type t :: %__MODULE__{}

  defstruct [:enable_customer_admin, :limit]

  @schema_name "BenefitLicenseKeyActivationCreateProperties"
  def schema_name, do: @schema_name
end
