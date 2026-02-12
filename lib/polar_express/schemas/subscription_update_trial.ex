# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateTrial do
  @moduledoc """
  SubscriptionUpdateTrial
  """

  @typedoc """
  * `trial_end` - Set or extend the trial period of the subscription. If set to `now`, the trial will end immediately.
  """
  @type t :: %__MODULE__{
          trial_end: DateTime.t() | String.t() | nil
        }

  defstruct [:trial_end]

  @schema_name "SubscriptionUpdateTrial"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:trial_end]
end
