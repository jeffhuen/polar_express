# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccount do
  @moduledoc """
  PayoutAccount
  """

  @typedoc """
  * `country`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `id` - The ID of the object. Format: uuid4.
  * `is_payout_ready`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `processor_id` - Nullable.
  * `status`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :country,
    :created_at,
    :currency,
    :id,
    :is_payout_ready,
    :modified_at,
    :processor_id,
    :status,
    :type
  ]

  @schema_name "PayoutAccount"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "status" => PolarExpress.Schemas.PayoutAccountStatus,
      "type" => PolarExpress.Schemas.PayoutAccountType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
