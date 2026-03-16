# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdatedTrialMetadata do
  @moduledoc """
  SubscriptionUpdatedTrialMetadata
  """

  @typedoc """
  * `subscription_id`
  * `trial_end`
  """
  @type t :: %__MODULE__{
          subscription_id: String.t() | nil,
          trial_end: String.t() | nil
        }

  defstruct [:subscription_id, :trial_end]

  @schema_name "SubscriptionUpdatedTrialMetadata"
  def schema_name, do: @schema_name
end
