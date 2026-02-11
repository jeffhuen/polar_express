# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Benefit do
  @moduledoc "Benefit union type."

  @type t ::
          PolarExpress.Schemas.BenefitCustom.t()
          | PolarExpress.Schemas.BenefitDiscord.t()
          | PolarExpress.Schemas.BenefitGitHubRepository.t()
          | PolarExpress.Schemas.BenefitDownloadables.t()
          | PolarExpress.Schemas.BenefitLicenseKeys.t()
          | PolarExpress.Schemas.BenefitMeterCredit.t()

  @schema_name "Benefit"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.BenefitCustom,
      PolarExpress.Schemas.BenefitDiscord,
      PolarExpress.Schemas.BenefitGitHubRepository,
      PolarExpress.Schemas.BenefitDownloadables,
      PolarExpress.Schemas.BenefitLicenseKeys,
      PolarExpress.Schemas.BenefitMeterCredit
    ]
  end
end
