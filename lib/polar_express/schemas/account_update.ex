# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AccountUpdate do
  @moduledoc """
  AccountUpdate
  """

  @typedoc """
  * `billing_additional_info` - Additional information that should appear on the reverse invoice. Nullable.
  * `billing_address` - Billing address that should appear on the reverse invoice. Nullable.
  * `billing_name` - Billing name that should appear on the reverse invoice. Nullable.
  * `billing_notes` - Notes that should appear on the reverse invoice. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:billing_additional_info, :billing_address, :billing_name, :billing_notes]

  @schema_name "AccountUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.AddressInput
    }
  end
end
