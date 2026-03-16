# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PendingSubscriptionUpdate do
  @moduledoc """
  PendingSubscriptionUpdate

  Pending update to be applied to a subscription at the beginning of the next period.
  """

  @typedoc """
  * `applies_at` - The date and time when the subscription update will be applied. Format: date-time.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `product_id` - ID of the new product to apply to the subscription. If `null`, the product won't be changed. Nullable.
  * `seats` - Number of seats to apply to the subscription. If `null`, the number of seats won't be changed. Nullable.
  """
  @type t :: %__MODULE__{
          applies_at: DateTime.t() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          product_id: String.t() | nil,
          seats: integer() | nil
        }

  defstruct [:applies_at, :created_at, :id, :modified_at, :product_id, :seats]

  @schema_name "PendingSubscriptionUpdate"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:applies_at, :created_at, :modified_at]
end
