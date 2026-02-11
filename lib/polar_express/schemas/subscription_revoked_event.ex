# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionRevokedEvent do
  @moduledoc """
  SubscriptionRevokedEvent

  An event created by Polar when a subscription is revoked from a customer.
  """

  @typedoc """
  * `child_count` - Number of direct child events linked to this event.
  * `customer` - The customer associated with the event. Nullable.
  * `customer_id` - ID of the customer in your Polar organization associated with the event. Nullable.
  * `external_customer_id` - ID of the customer in your system associated with the event. Nullable.
  * `external_member_id` - ID of the member in your system within the customer's organization who performed the action inside B2B. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - Human readable label of the event type.
  * `member_id` - ID of the member within the customer's organization who performed the action inside B2B. Nullable.
  * `metadata`
  * `name` - The name of the event.
  * `organization_id` - The ID of the organization owning the event. Format: uuid4.
  * `parent_id` - The ID of the parent event. Nullable.
  * `source` - The source of the event. `system` events are created by Polar. `user` events are the one you create through our ingestion API.
  * `timestamp` - The timestamp of the event. Format: date-time.
  """
  @type t :: %__MODULE__{
          child_count: integer() | nil,
          customer: PolarExpress.Schemas.Customer.t() | nil,
          customer_id: String.t() | nil,
          external_customer_id: String.t() | nil,
          external_member_id: String.t() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          member_id: String.t() | nil,
          metadata: PolarExpress.Schemas.SubscriptionRevokedMetadata.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          parent_id: String.t() | nil,
          source: String.t() | nil,
          timestamp: DateTime.t() | nil
        }

  defstruct [
    :child_count,
    :customer,
    :customer_id,
    :external_customer_id,
    :external_member_id,
    :id,
    :label,
    :member_id,
    :metadata,
    :name,
    :organization_id,
    :parent_id,
    :source,
    :timestamp
  ]

  @schema_name "SubscriptionRevokedEvent"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer" => PolarExpress.Schemas.Customer,
      "metadata" => PolarExpress.Schemas.SubscriptionRevokedMetadata
    }
  end

  def __date_fields__, do: [:timestamp]
end
