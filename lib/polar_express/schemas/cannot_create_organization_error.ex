# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CannotCreateOrganizationError do
  @moduledoc """
  CannotCreateOrganizationError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CannotCreateOrganizationError"
  def schema_name, do: @schema_name
end
