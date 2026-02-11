# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrant do
  @moduledoc """
  BenefitGrant
  """

  @typedoc """
  * `benefit`
  * `benefit_id` - The ID of the benefit concerned by this grant. Format: uuid4.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - The ID of the customer concerned by this grant. Format: uuid4.
  * `error` - The error information if the benefit grant failed with an unrecoverable error. Nullable.
  * `granted_at` - The timestamp when the benefit was granted. If `None`, the benefit is not granted. Nullable.
  * `id` - The ID of the grant. Format: uuid4.
  * `is_granted` - Whether the benefit is granted.
  * `is_revoked` - Whether the benefit is revoked.
  * `member` - Nullable.
  * `member_id` - The ID of the member concerned by this grant. Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - The ID of the order that granted this benefit. Nullable.
  * `properties`
  * `revoked_at` - The timestamp when the benefit was revoked. If `None`, the benefit is not revoked. Nullable.
  * `subscription_id` - The ID of the subscription that granted this benefit. Nullable.
  """
  @type t :: %__MODULE__{
          benefit: PolarExpress.Schemas.Benefit.t() | nil,
          benefit_id: String.t() | nil,
          created_at: DateTime.t() | nil,
          customer: PolarExpress.Schemas.Customer.t() | nil,
          customer_id: String.t() | nil,
          error: PolarExpress.Schemas.BenefitGrantError.t() | nil,
          granted_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_granted: boolean() | nil,
          is_revoked: boolean() | nil,
          member: PolarExpress.Schemas.Member.t() | nil,
          member_id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          order_id: String.t() | nil,
          properties:
            PolarExpress.Schemas.BenefitGrantDiscordProperties.t()
            | PolarExpress.Schemas.BenefitGrantGitHubRepositoryProperties.t()
            | PolarExpress.Schemas.BenefitGrantDownloadablesProperties.t()
            | PolarExpress.Schemas.BenefitGrantLicenseKeysProperties.t()
            | PolarExpress.Schemas.BenefitGrantCustomProperties.t()
            | nil,
          revoked_at: DateTime.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [
    :benefit,
    :benefit_id,
    :created_at,
    :customer,
    :customer_id,
    :error,
    :granted_at,
    :id,
    :is_granted,
    :is_revoked,
    :member,
    :member_id,
    :modified_at,
    :order_id,
    :properties,
    :revoked_at,
    :subscription_id
  ]

  @schema_name "BenefitGrant"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "benefit" => PolarExpress.Schemas.Benefit,
      "customer" => PolarExpress.Schemas.Customer,
      "error" => PolarExpress.Schemas.BenefitGrantError,
      "member" => PolarExpress.Schemas.Member,
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

  def __date_fields__, do: [:created_at, :granted_at, :modified_at, :revoked_at]
end
