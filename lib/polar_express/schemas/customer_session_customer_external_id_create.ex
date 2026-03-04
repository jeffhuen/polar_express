# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSessionCustomerExternalIDCreate do
  @moduledoc """
  CustomerSessionCustomerExternalIDCreate

  Schema for creating a customer session using an external customer ID.
  """

  @typedoc """
  * `external_customer_id` - External ID of the customer to create a session for.
  * `external_member_id` - External ID of the member to create a session for. Alternative to `member_id`. Nullable.
  * `member_id` - ID of the member to create a session for. When not provided and the organization has `member_model_enabled`, the owner member of the customer will be used for individual customers. Nullable.
  * `return_url` - When set, a back button will be shown in the customer portal to return to this URL. Nullable.
  """
  @type t :: %__MODULE__{
          external_customer_id: String.t() | nil,
          external_member_id: String.t() | nil,
          member_id: String.t() | nil,
          return_url: String.t() | nil
        }

  defstruct [:external_customer_id, :external_member_id, :member_id, :return_url]

  @schema_name "CustomerSessionCustomerExternalIDCreate"
  def schema_name, do: @schema_name
end
