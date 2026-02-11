# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantDownloadablesProperties do
  @moduledoc """
  BenefitGrantDownloadablesProperties
  """

  @typedoc """
  * `files`
  """
  @type t :: %__MODULE__{
          files: [String.t()] | nil
        }

  defstruct [:files]

  @schema_name "BenefitGrantDownloadablesProperties"
  def schema_name, do: @schema_name
end
