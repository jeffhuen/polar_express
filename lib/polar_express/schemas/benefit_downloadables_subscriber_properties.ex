# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDownloadablesSubscriberProperties do
  @moduledoc """
  BenefitDownloadablesSubscriberProperties
  """

  @typedoc """
  * `active_files`
  """
  @type t :: %__MODULE__{
          active_files: [String.t()] | nil
        }

  defstruct [:active_files]

  @schema_name "BenefitDownloadablesSubscriberProperties"
  def schema_name, do: @schema_name
end
