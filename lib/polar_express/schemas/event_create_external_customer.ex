# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventCreateExternalCustomer do
  @moduledoc """
  EventCreateExternalCustomer
  """

  @typedoc """
  * `external_customer_id` - ID of the customer in your system associated with the event.
  * `external_id` - Your unique identifier for this event. Useful for deduplication and parent-child relationships. Nullable.
  * `external_member_id` - ID of the member in your system within the customer's organization who performed the action. Used for member-level attribution in B2B. Nullable.
  * `metadata` - Key-value object allowing you to store additional information about the event. Some keys like `_llm` are structured data that are handled specially by Polar.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - The name of the event.
  * `organization_id` - The ID of the organization owning the event. **Required unless you use an organization token.** Nullable.
  * `parent_id` - The ID of the parent event. Can be either a Polar event ID (UUID) or an external event ID. Nullable.
  * `timestamp` - The timestamp of the event. Format: date-time.
  """
  @type t :: %__MODULE__{
          external_customer_id: String.t() | nil,
          external_id: String.t() | nil,
          external_member_id: String.t() | nil,
          metadata: PolarExpress.Schemas.EventMetadataInput.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          parent_id: String.t() | nil,
          timestamp: DateTime.t() | nil
        }

  defstruct [
    :external_customer_id,
    :external_id,
    :external_member_id,
    :metadata,
    :name,
    :organization_id,
    :parent_id,
    :timestamp
  ]

  @schema_name "EventCreateExternalCustomer"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "metadata" => PolarExpress.Schemas.EventMetadataInput
    }
  end

  def __date_fields__, do: [:timestamp]
end
