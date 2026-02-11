# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantMetadata do
  @moduledoc """
  BenefitGrantMetadata
  """

  @typedoc """
  * `benefit_grant_id`
  * `benefit_id`
  * `benefit_type`
  * `member_id`
  """
  @type t :: %__MODULE__{
          benefit_grant_id: String.t() | nil,
          benefit_id: String.t() | nil,
          benefit_type: PolarExpress.Schemas.BenefitType.t() | nil,
          member_id: String.t() | nil
        }

  defstruct [:benefit_grant_id, :benefit_id, :benefit_type, :member_id]

  @schema_name "BenefitGrantMetadata"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "benefit_type" => PolarExpress.Schemas.BenefitType
    }
  end
end
