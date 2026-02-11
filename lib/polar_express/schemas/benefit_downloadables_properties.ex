# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDownloadablesProperties do
  @moduledoc """
  BenefitDownloadablesProperties
  """

  @typedoc """
  * `archived`
  * `files`
  """
  @type t :: %__MODULE__{
          archived: map() | nil,
          files: [String.t()] | nil
        }

  defstruct [:archived, :files]

  @schema_name "BenefitDownloadablesProperties"
  def schema_name, do: @schema_name
end
