# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitPublic do
  @moduledoc "BenefitPublic union type."

  @type t ::
          PolarExpress.Schemas.BenefitCustomPublic.t()
          | PolarExpress.Schemas.BenefitDiscordPublic.t()
          | PolarExpress.Schemas.BenefitGitHubRepositoryPublic.t()
          | PolarExpress.Schemas.BenefitDownloadablesPublic.t()
          | PolarExpress.Schemas.BenefitLicenseKeysPublic.t()
          | PolarExpress.Schemas.BenefitFeatureFlagPublic.t()
          | PolarExpress.Schemas.BenefitSlackSharedChannelPublic.t()
          | PolarExpress.Schemas.BenefitMeterCreditPublic.t()

  @schema_name "BenefitPublic"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.BenefitCustomPublic,
      PolarExpress.Schemas.BenefitDiscordPublic,
      PolarExpress.Schemas.BenefitGitHubRepositoryPublic,
      PolarExpress.Schemas.BenefitDownloadablesPublic,
      PolarExpress.Schemas.BenefitLicenseKeysPublic,
      PolarExpress.Schemas.BenefitFeatureFlagPublic,
      PolarExpress.Schemas.BenefitSlackSharedChannelPublic,
      PolarExpress.Schemas.BenefitMeterCreditPublic
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "custom" => PolarExpress.Schemas.BenefitCustomPublic,
       "discord" => PolarExpress.Schemas.BenefitDiscordPublic,
       "downloadables" => PolarExpress.Schemas.BenefitDownloadablesPublic,
       "feature_flag" => PolarExpress.Schemas.BenefitFeatureFlagPublic,
       "github_repository" => PolarExpress.Schemas.BenefitGitHubRepositoryPublic,
       "license_keys" => PolarExpress.Schemas.BenefitLicenseKeysPublic,
       "meter_credit" => PolarExpress.Schemas.BenefitMeterCreditPublic,
       "slack_shared_channel" => PolarExpress.Schemas.BenefitSlackSharedChannelPublic
     }}
  end
end
