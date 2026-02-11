# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitCustomSubscriberProperties do
  @moduledoc """
  BenefitCustomSubscriberProperties

  Properties available to subscribers for a benefit of type `custom`.
  """

  @typedoc """
  * `note` - Nullable.
  """
  @type t :: %__MODULE__{
          note: String.t() | nil
        }

  defstruct [:note]

  @schema_name "BenefitCustomSubscriberProperties"
  def schema_name, do: @schema_name
end
