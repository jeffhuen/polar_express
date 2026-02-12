# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationAccessTokenUpdate do
  @moduledoc """
  OrganizationAccessTokenUpdate
  """

  @typedoc """
  * `comment` - Nullable.
  * `scopes` - Nullable.
  """
  @type t :: %__MODULE__{
          comment: String.t() | nil,
          scopes: [PolarExpress.Schemas.AvailableScope.t()] | nil
        }

  defstruct [:comment, :scopes]

  @schema_name "OrganizationAccessTokenUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "scopes" => PolarExpress.Schemas.AvailableScope
    }
  end
end
