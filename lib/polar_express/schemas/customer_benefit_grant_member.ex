# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantMember do
  @moduledoc """
  CustomerBenefitGrantMember
  """

  @typedoc """
  * `id` - The ID of the object. Format: uuid4.
  * `oauth_accounts`
  """
  @type t :: %__MODULE__{}

  defstruct [:id, :oauth_accounts]

  @schema_name "CustomerBenefitGrantMember"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "oauth_accounts" => {:map_values, PolarExpress.Schemas.CustomerPortalOAuthAccount}
    }
  end
end
