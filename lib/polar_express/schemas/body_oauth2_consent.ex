# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Body_oauth2_consent do
  @moduledoc """
  Body_oauth2:consent
  """

  @typedoc """
  * `action` - Possible values: `allow`, `deny`.
  """
  @type t :: %__MODULE__{}

  defstruct [:action]

  @schema_name "Body_oauth2_consent"
  def schema_name, do: @schema_name
end
