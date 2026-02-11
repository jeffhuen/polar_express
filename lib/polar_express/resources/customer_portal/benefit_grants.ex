# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.BenefitGrants do
  @moduledoc """
  Benefit-grants

  BenefitGrants API operations.
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{
          detail: String.t() | nil,
          error: String.t() | nil
        }

  defstruct [:detail, :error]

  @object_name "benefit-grants"
  def object_name, do: @object_name
end
