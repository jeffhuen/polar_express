# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitCustomProperties do
  @moduledoc """
  BenefitCustomProperties

  Properties for a benefit of type `custom`.
  """

  @typedoc """
  * `note` - Nullable.
  """
  @type t :: %__MODULE__{
          note: String.t() | nil
        }

  defstruct [:note]

  @schema_name "BenefitCustomProperties"
  def schema_name, do: @schema_name
end
