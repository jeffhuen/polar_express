# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserScopes do
  @moduledoc """
  UserScopes
  """

  @typedoc """
  * `scopes`
  """
  @type t :: %__MODULE__{}

  defstruct [:scopes]

  @schema_name "UserScopes"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "scopes" => PolarExpress.Schemas.Scope
    }
  end
end
