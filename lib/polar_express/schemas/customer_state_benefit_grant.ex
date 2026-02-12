# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerStateBenefitGrant do
  @moduledoc """
  CustomerStateBenefitGrant

  An active benefit grant for a customer.
  """

  @typedoc """
  * `benefit_id` - The ID of the benefit concerned by this grant. Format: uuid4.
  * `benefit_metadata` - The metadata of the benefit concerned by this grant.
  * `benefit_type` - The type of the benefit concerned by this grant.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `granted_at` - The timestamp when the benefit was granted. Format: date-time.
  * `id` - The ID of the grant. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `properties`
  """
  @type t :: %__MODULE__{
          benefit_id: String.t() | nil,
          benefit_metadata: PolarExpress.Schemas.MetadataOutputType.t() | nil,
          benefit_type: PolarExpress.Schemas.BenefitType.t() | nil,
          created_at: DateTime.t() | nil,
          granted_at: DateTime.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          properties:
            PolarExpress.Schemas.BenefitGrantDiscordProperties.t()
            | PolarExpress.Schemas.BenefitGrantGitHubRepositoryProperties.t()
            | PolarExpress.Schemas.BenefitGrantDownloadablesProperties.t()
            | PolarExpress.Schemas.BenefitGrantLicenseKeysProperties.t()
            | PolarExpress.Schemas.BenefitGrantCustomProperties.t()
            | nil
        }

  defstruct [
    :benefit_id,
    :benefit_metadata,
    :benefit_type,
    :created_at,
    :granted_at,
    :id,
    :modified_at,
    :properties
  ]

  @schema_name "CustomerStateBenefitGrant"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "benefit_metadata" => PolarExpress.Schemas.MetadataOutputType,
      "benefit_type" => PolarExpress.Schemas.BenefitType,
      "properties" =>
        {:union, :variants,
         [
           PolarExpress.Schemas.BenefitGrantDiscordProperties,
           PolarExpress.Schemas.BenefitGrantGitHubRepositoryProperties,
           PolarExpress.Schemas.BenefitGrantDownloadablesProperties,
           PolarExpress.Schemas.BenefitGrantLicenseKeysProperties,
           PolarExpress.Schemas.BenefitGrantCustomProperties
         ]}
    }
  end

  def __date_fields__, do: [:created_at, :granted_at, :modified_at]
end
