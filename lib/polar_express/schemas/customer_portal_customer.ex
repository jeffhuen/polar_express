# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalCustomer do
  @moduledoc """
  CustomerPortalCustomer
  """

  @typedoc """
  * `billing_address` - Nullable.
  * `billing_name` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `default_payment_method_id` - Nullable.
  * `email` - Nullable.
  * `email_verified`
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Nullable.
  * `oauth_accounts`
  * `tax_id` - Nullable.
  * `type` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :billing_address,
    :billing_name,
    :created_at,
    :default_payment_method_id,
    :email,
    :email_verified,
    :id,
    :modified_at,
    :name,
    :oauth_accounts,
    :tax_id,
    :type
  ]

  @schema_name "CustomerPortalCustomer"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.Address,
      "oauth_accounts" => {:map_values, PolarExpress.Schemas.CustomerPortalOAuthAccount},
      "tax_id" => {:union, :variants, [PolarExpress.Schemas.TaxIDFormat]},
      "type" => PolarExpress.Schemas.CustomerType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
