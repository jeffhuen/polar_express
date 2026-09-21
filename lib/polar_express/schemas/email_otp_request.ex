# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EmailOTPRequest do
  @moduledoc """
  EmailOTPRequest
  """

  @typedoc """
  * `cf-turnstile-response`
  * `email` - Format: email.
  """
  @type t :: %__MODULE__{}

  defstruct [:"cf-turnstile-response", :email]

  @schema_name "EmailOTPRequest"
  def schema_name, do: @schema_name
end
