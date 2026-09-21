# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserUpdate do
  @moduledoc """
  UserUpdate
  """

  @typedoc """
  * `accepted_terms_of_service` - Nullable.
  * `country` - Nullable.
  * `date_of_birth` - Nullable.
  * `first_name` - Nullable.
  * `last_name` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:accepted_terms_of_service, :country, :date_of_birth, :first_name, :last_name]

  @schema_name "UserUpdate"
  def schema_name, do: @schema_name
end
