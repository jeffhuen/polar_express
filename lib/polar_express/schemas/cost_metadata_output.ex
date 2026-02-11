# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CostMetadataOutput do
  @moduledoc """
  CostMetadata
  """

  @typedoc """
  * `amount` - The amount in cents.
  * `currency` - The currency. Currently, only `usd` is supported.
  """
  @type t :: %__MODULE__{
          amount: String.t() | nil,
          currency: String.t() | nil
        }

  defstruct [:amount, :currency]

  @schema_name "CostMetadata-Output"
  def schema_name, do: @schema_name
end
