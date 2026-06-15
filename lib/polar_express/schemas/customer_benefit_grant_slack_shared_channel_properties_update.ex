# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantSlackSharedChannelPropertiesUpdate do
  @moduledoc """
  CustomerBenefitGrantSlackSharedChannelPropertiesUpdate
  """

  @typedoc """
  * `invited_email` - Format: email.
  """
  @type t :: %__MODULE__{
          invited_email: String.t() | nil
        }

  defstruct [:invited_email]

  @schema_name "CustomerBenefitGrantSlackSharedChannelPropertiesUpdate"
  def schema_name, do: @schema_name
end
