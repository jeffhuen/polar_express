# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantUpdate do
  @moduledoc "CustomerBenefitGrantUpdate union type."

  @type t ::
          PolarExpress.Schemas.CustomerBenefitGrantDiscordUpdate.t()
          | PolarExpress.Schemas.CustomerBenefitGrantGitHubRepositoryUpdate.t()
          | PolarExpress.Schemas.CustomerBenefitGrantDownloadablesUpdate.t()
          | PolarExpress.Schemas.CustomerBenefitGrantLicenseKeysUpdate.t()
          | PolarExpress.Schemas.CustomerBenefitGrantCustomUpdate.t()
          | PolarExpress.Schemas.CustomerBenefitGrantMeterCreditUpdate.t()

  @schema_name "CustomerBenefitGrantUpdate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerBenefitGrantDiscordUpdate,
      PolarExpress.Schemas.CustomerBenefitGrantGitHubRepositoryUpdate,
      PolarExpress.Schemas.CustomerBenefitGrantDownloadablesUpdate,
      PolarExpress.Schemas.CustomerBenefitGrantLicenseKeysUpdate,
      PolarExpress.Schemas.CustomerBenefitGrantCustomUpdate,
      PolarExpress.Schemas.CustomerBenefitGrantMeterCreditUpdate
    ]
  end

  def __discriminator__ do
    {"benefit_type",
     %{
       "custom" => PolarExpress.Schemas.CustomerBenefitGrantCustomUpdate,
       "discord" => PolarExpress.Schemas.CustomerBenefitGrantDiscordUpdate,
       "downloadables" => PolarExpress.Schemas.CustomerBenefitGrantDownloadablesUpdate,
       "github_repository" => PolarExpress.Schemas.CustomerBenefitGrantGitHubRepositoryUpdate,
       "license_keys" => PolarExpress.Schemas.CustomerBenefitGrantLicenseKeysUpdate,
       "meter_credit" => PolarExpress.Schemas.CustomerBenefitGrantMeterCreditUpdate
     }}
  end
end
