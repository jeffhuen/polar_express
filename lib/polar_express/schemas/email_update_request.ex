# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EmailUpdateRequest do
  @moduledoc """
  EmailUpdateRequest
  """

  @typedoc """
  * `email` - Format: email.
  * `return_to` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:email, :return_to]

  @schema_name "EmailUpdateRequest"
  def schema_name, do: @schema_name
end
