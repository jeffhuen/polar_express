# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantDiscord do
  @moduledoc """
  CustomerBenefitGrantDiscord
  """

  @typedoc """
  * `benefit`
  * `benefit_id` - Format: uuid4.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `error` - Nullable.
  * `granted_at` - Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `is_granted`
  * `is_revoked`
  * `member_id` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - Nullable.
  * `properties`
  * `revoked_at` - Nullable.
  * `subscription_id` - Nullable.
  """
  @type t :: %__MODULE__{
          benefit: PolarExpress.Schemas.BenefitDiscordSubscriber.t() | nil,
          benefit_id: String.t() | nil,
          created_at: DateTime.t() | nil,
          customer: PolarExpress.Schemas.CustomerPortalCustomer.t() | nil,
          customer_id: String.t() | nil,
          error: PolarExpress.Schemas.BenefitGrantError.t() | nil,
          granted_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_granted: boolean() | nil,
          is_revoked: boolean() | nil,
          member_id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          order_id: String.t() | nil,
          properties: PolarExpress.Schemas.BenefitGrantDiscordProperties.t() | nil,
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
    :member_id,
    :modified_at,
    :order_id,
    :properties,
    :revoked_at,
    :subscription_id
  ]

  @schema_name "CustomerBenefitGrantDiscord"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "benefit" => PolarExpress.Schemas.BenefitDiscordSubscriber,
      "customer" => PolarExpress.Schemas.CustomerPortalCustomer,
      "error" => PolarExpress.Schemas.BenefitGrantError,
      "properties" => PolarExpress.Schemas.BenefitGrantDiscordProperties
    }
  end

  def __date_fields__, do: [:created_at, :granted_at, :modified_at, :revoked_at]
end
