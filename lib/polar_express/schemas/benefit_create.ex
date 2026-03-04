# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitCreate do
  @moduledoc "BenefitCreate union type."

  @type t ::
          PolarExpress.Schemas.BenefitCustomCreate.t()
          | PolarExpress.Schemas.BenefitDiscordCreate.t()
          | PolarExpress.Schemas.BenefitGitHubRepositoryCreate.t()
          | PolarExpress.Schemas.BenefitDownloadablesCreate.t()
          | PolarExpress.Schemas.BenefitLicenseKeysCreate.t()
          | PolarExpress.Schemas.BenefitMeterCreditCreate.t()
          | PolarExpress.Schemas.BenefitFeatureFlagCreate.t()

  @schema_name "BenefitCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.BenefitCustomCreate,
      PolarExpress.Schemas.BenefitDiscordCreate,
      PolarExpress.Schemas.BenefitGitHubRepositoryCreate,
      PolarExpress.Schemas.BenefitDownloadablesCreate,
      PolarExpress.Schemas.BenefitLicenseKeysCreate,
      PolarExpress.Schemas.BenefitMeterCreditCreate,
      PolarExpress.Schemas.BenefitFeatureFlagCreate
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "custom" => PolarExpress.Schemas.BenefitCustomCreate,
       "discord" => PolarExpress.Schemas.BenefitDiscordCreate,
       "downloadables" => PolarExpress.Schemas.BenefitDownloadablesCreate,
       "feature_flag" => PolarExpress.Schemas.BenefitFeatureFlagCreate,
       "github_repository" => PolarExpress.Schemas.BenefitGitHubRepositoryCreate,
       "license_keys" => PolarExpress.Schemas.BenefitLicenseKeysCreate,
       "meter_credit" => PolarExpress.Schemas.BenefitMeterCreditCreate
     }}
  end
end
