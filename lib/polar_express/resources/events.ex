# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Events do
  @moduledoc """
  Events

  Events API operations.
  """

  @typedoc """
  * `child_count` - Number of direct child events linked to this event.
  * `customer` - The customer associated with the event.
  * `customer_id` - ID of the customer in your Polar organization associated with the event.
  * `external_customer_id` - ID of the customer in your system associated with the event.
  * `external_member_id` - ID of the member in your system within the customer's organization who performed the action inside B2B.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - Human readable label of the event type.
  * `member_id` - ID of the member within the customer's organization who performed the action inside B2B.
  * `metadata`
  * `name` - The name of the event.
  * `organization_id` - The ID of the organization owning the event. Format: uuid4.
  * `parent_id` - The ID of the parent event.
  * `source` - The source of the event. `system` events are created by Polar. `user` events are the one you create through our ingestion API.
  * `timestamp` - The timestamp of the event. Format: date-time.
  """
  @type t :: %__MODULE__{
          child_count: integer() | nil,
          customer: term() | nil,
          customer_id: term() | nil,
          external_customer_id: term() | nil,
          external_member_id: term() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          member_id: term() | nil,
          metadata: map() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          parent_id: term() | nil,
          source: String.t() | nil,
          timestamp: String.t() | nil
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

  @object_name "events"
  def object_name, do: @object_name
end
