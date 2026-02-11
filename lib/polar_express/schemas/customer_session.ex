# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSession do
  @moduledoc """
  CustomerSession

  A customer session that can be used to authenticate as a customer.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `customer_portal_url`
  * `expires_at` - Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `return_url` - Nullable.
  * `token`
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          customer: PolarExpress.Schemas.Customer.t() | nil,
          customer_id: String.t() | nil,
          customer_portal_url: String.t() | nil,
          expires_at: DateTime.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          return_url: String.t() | nil,
          token: String.t() | nil
        }

  defstruct [
    :created_at,
    :customer,
    :customer_id,
    :customer_portal_url,
    :expires_at,
    :id,
    :modified_at,
    :return_url,
    :token
  ]

  @schema_name "CustomerSession"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer" => PolarExpress.Schemas.Customer
    }
  end

  def __date_fields__, do: [:created_at, :expires_at, :modified_at]
end
