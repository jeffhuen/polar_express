# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionRevoke do
  @moduledoc """
  CustomerSubscriptionRevoke
  """

  @typedoc """
  * `cancellation_comment` - Customer feedback and why they decided to cancel. Nullable.
  * `cancellation_reason` - Customer's reason for cancellation. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:cancellation_comment, :cancellation_reason]

  @schema_name "CustomerSubscriptionRevoke"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "cancellation_reason" => PolarExpress.Schemas.CustomerCancellationReason
    }
  end
end
