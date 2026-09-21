# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionProduct do
  @moduledoc """
  TransactionProduct
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name`
  * `organization` - Nullable.
  * `organization_id` - Nullable.
  * `recurring_interval` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :created_at,
    :id,
    :modified_at,
    :name,
    :organization,
    :organization_id,
    :recurring_interval
  ]

  @schema_name "TransactionProduct"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "organization" => PolarExpress.Schemas.TransactionOrganization,
      "recurring_interval" => PolarExpress.Schemas.RecurringInterval
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
