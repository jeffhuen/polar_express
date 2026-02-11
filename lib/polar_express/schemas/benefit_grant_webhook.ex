# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantWebhook do
  @moduledoc "BenefitGrantWebhook union type."

  @type t ::
          PolarExpress.Schemas.BenefitGrantDiscordWebhook.t()
          | PolarExpress.Schemas.BenefitGrantCustomWebhook.t()
          | PolarExpress.Schemas.BenefitGrantGitHubRepositoryWebhook.t()
          | PolarExpress.Schemas.BenefitGrantDownloadablesWebhook.t()
          | PolarExpress.Schemas.BenefitGrantLicenseKeysWebhook.t()
          | PolarExpress.Schemas.BenefitGrantMeterCreditWebhook.t()

  @schema_name "BenefitGrantWebhook"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.BenefitGrantDiscordWebhook,
      PolarExpress.Schemas.BenefitGrantCustomWebhook,
      PolarExpress.Schemas.BenefitGrantGitHubRepositoryWebhook,
      PolarExpress.Schemas.BenefitGrantDownloadablesWebhook,
      PolarExpress.Schemas.BenefitGrantLicenseKeysWebhook,
      PolarExpress.Schemas.BenefitGrantMeterCreditWebhook
    ]
  end
end
