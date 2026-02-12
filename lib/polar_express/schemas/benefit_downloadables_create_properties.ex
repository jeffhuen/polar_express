# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDownloadablesCreateProperties do
  @moduledoc """
  BenefitDownloadablesCreateProperties
  """

  @typedoc """
  * `archived`
  * `files`
  """
  @type t :: %__MODULE__{
          archived: %{String.t() => boolean()} | nil,
          files: [String.t()] | nil
        }

  defstruct [:archived, :files]

  @schema_name "BenefitDownloadablesCreateProperties"
  def schema_name, do: @schema_name
end
