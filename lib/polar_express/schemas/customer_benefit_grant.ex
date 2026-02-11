# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrant do
  @moduledoc "CustomerBenefitGrant union type."

  @type t ::
          PolarExpress.Schemas.CustomerBenefitGrantDiscord.t()
          | PolarExpress.Schemas.CustomerBenefitGrantGitHubRepository.t()
          | PolarExpress.Schemas.CustomerBenefitGrantDownloadables.t()
          | PolarExpress.Schemas.CustomerBenefitGrantLicenseKeys.t()
          | PolarExpress.Schemas.CustomerBenefitGrantCustom.t()
          | PolarExpress.Schemas.CustomerBenefitGrantMeterCredit.t()

  @schema_name "CustomerBenefitGrant"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerBenefitGrantDiscord,
      PolarExpress.Schemas.CustomerBenefitGrantGitHubRepository,
      PolarExpress.Schemas.CustomerBenefitGrantDownloadables,
      PolarExpress.Schemas.CustomerBenefitGrantLicenseKeys,
      PolarExpress.Schemas.CustomerBenefitGrantCustom,
      PolarExpress.Schemas.CustomerBenefitGrantMeterCredit
    ]
  end
end
