# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantCreate do
  @moduledoc """
  BenefitGrantCreate

  Manually grant a benefit using Polar IDs.
  """

  @typedoc """
  * `benefit_id` - The ID of the benefit. Format: uuid4.
  * `customer_id` - The ID of the customer. Format: uuid4.
  * `member_id` - The ID of the member receiving the benefit. If not provided, the benefit is granted to the customer's owner. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:benefit_id, :customer_id, :member_id]

  @schema_name "BenefitGrantCreate"
  def schema_name, do: @schema_name
end
