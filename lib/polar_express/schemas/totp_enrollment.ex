# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TOTPEnrollment do
  @moduledoc """
  TOTPEnrollment
  """

  @typedoc """
  * `algorithm`
  * `digits`
  * `period`
  * `provisioning_uri`
  * `secret`
  """
  @type t :: %__MODULE__{}

  defstruct [:algorithm, :digits, :period, :provisioning_uri, :secret]

  @schema_name "TOTPEnrollment"
  def schema_name, do: @schema_name
end
