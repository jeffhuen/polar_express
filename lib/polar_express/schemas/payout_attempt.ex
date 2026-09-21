# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAttempt do
  @moduledoc """
  PayoutAttempt
  """

  @typedoc """
  * `amount`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `failed_reason` - Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `paid_at` - Nullable.
  * `payout_id` - Format: uuid.
  * `processor`
  * `processor_id` - Nullable.
  * `status`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :created_at,
    :currency,
    :failed_reason,
    :id,
    :modified_at,
    :paid_at,
    :payout_id,
    :processor,
    :processor_id,
    :status
  ]

  @schema_name "PayoutAttempt"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "processor" => PolarExpress.Schemas.PayoutAccountType,
      "status" => PolarExpress.Schemas.PayoutAttemptStatus
    }
  end

  def __date_fields__, do: [:created_at, :modified_at, :paid_at]
end
