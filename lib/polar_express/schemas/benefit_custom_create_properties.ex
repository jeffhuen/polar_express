# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitCustomCreateProperties do
  @moduledoc """
  BenefitCustomCreateProperties

  Properties for creating a benefit of type `custom`.
  """

  @typedoc """
  * `note` - Nullable.
  """
  @type t :: %__MODULE__{
          note: String.t() | nil
        }

  defstruct [:note]

  @schema_name "BenefitCustomCreateProperties"
  def schema_name, do: @schema_name
end
