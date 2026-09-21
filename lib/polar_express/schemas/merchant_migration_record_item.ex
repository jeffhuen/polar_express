# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationRecordItem do
  @moduledoc """
  MerchantMigrationRecordItem
  """

  @typedoc """
  * `amount` - Recurring price in the currency's smallest unit (cents for USD), for priced rows. Nullable.
  * `automatic_tax` - Whether the source computed tax on this subscription. None for non-subscription rows, or when the source doesn't say. Nullable.
  * `currency` - ISO currency for `amount`. Nullable.
  * `customer_country` - The customer billing country. None for product and price rows, or when the source customer has none. Nullable.
  * `customer_email` - The customer email. None for product and price rows, or when the source customer has none. Nullable.
  * `customer_name` - The customer name on the source. None for product and price rows, or when the source customer has none. Nullable.
  * `customer_source_id` - The source customer identifier (e.g. Stripe `cus_…`). None for product and price rows. Nullable.
  * `cutover_error` - Why the switch skipped or failed this subscription. Nullable.
  * `cutover_status` - What the switch did with this subscription: `moved` (Polar bills it now), `skipped` (left on the source, see `cutover_error`) or `failed` (retryable). Null when the switch hasn't reached it, and for every entity other than subscriptions. Nullable.
  * `dependencies_imported` - Whether this subscription's customer and product are already in Polar, so it can be created at cutover. Null for non-subscription rows. Nullable.
  * `entity` - The source entity type.
  * `has_payment_method` - Whether Polar already has a card to charge for this subscription's customer. Null for non-subscription rows. Nullable.
  * `import_status` - The ledger status of this record: `pending` (not imported yet), `imported`, `skipped` or `failed`. Null for price rows, which import with their product. Nullable.
  * `product_name` - The source product name. None for customer rows, and for a subscription whose product wasn't in the staged catalog. Nullable.
  * `product_source_id` - The source product identifier (e.g. Stripe `prod_…`). None for customer rows, and for a subscription whose product wasn't staged. Nullable.
  * `reason` - Why the record is skipped, or what to know about it if it isn't. Nullable.
  * `reason_code` - Stable code for `reason`, if any. Nullable.
  * `reason_level` - How urgent `reason` is: `action_required` when the merchant has to fix something, `info` when there is nothing to fix. Null without a reason. Nullable.
  * `record_id` - The ledger record id. For subscriptions this is what the merchant selects for import. Null for price rows, which import with their product. Nullable.
  * `recurring_interval` - Billing interval for `amount` (e.g. `month`, `year`). Nullable.
  * `recurring_interval_count` - How many `recurring_interval` units each billing period spans, so a quarterly price reads as 3 months. None for rows without an interval. Nullable.
  * `renews_at` - When the subscription next renews on the source, as staged at import. Null for non-subscription rows or when the source reported none. Nullable.
  * `source_id` - The source identifier (e.g. Stripe `sub_…`).
  * `status` - Whether this record will be imported or stays on the source.
  * `subtitle` - Secondary detail (lifecycle status, country). Nullable.
  * `title` - Primary label (name, email or product).
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :automatic_tax,
    :currency,
    :customer_country,
    :customer_email,
    :customer_name,
    :customer_source_id,
    :cutover_error,
    :cutover_status,
    :dependencies_imported,
    :entity,
    :has_payment_method,
    :import_status,
    :product_name,
    :product_source_id,
    :reason,
    :reason_code,
    :reason_level,
    :record_id,
    :recurring_interval,
    :recurring_interval_count,
    :renews_at,
    :source_id,
    :status,
    :subtitle,
    :title
  ]

  @schema_name "MerchantMigrationRecordItem"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "cutover_status" => PolarExpress.Schemas.MerchantMigrationCutoverStatus,
      "entity" => PolarExpress.Schemas.PrecheckEntity,
      "import_status" => PolarExpress.Schemas.MerchantMigrationRecordStatus,
      "reason_level" => PolarExpress.Schemas.PrecheckReasonLevel,
      "status" => PolarExpress.Schemas.PrecheckRecordStatus
    }
  end

  def __date_fields__, do: [:renews_at]
end
