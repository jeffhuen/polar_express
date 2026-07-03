# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerSessions do
  @moduledoc """
  Customer-sessions

  CustomerSessions API operations.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `customer_portal_url`
  * `expires_at` - Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object.
  * `return_url`
  * `token`
  """
  @type t :: %__MODULE__{}

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

  @object_name "customer-sessions"
  def object_name, do: @object_name
end
