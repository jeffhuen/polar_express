# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationAppealResponse do
  @moduledoc """
  OrganizationAppealResponse
  """

  @typedoc """
  * `appeal_submitted_at` - When the appeal was submitted Format: date-time.
  * `message` - Success or error message
  * `success` - Whether the appeal was successfully submitted
  """
  @type t :: %__MODULE__{}

  defstruct [:appeal_submitted_at, :message, :success]

  @schema_name "OrganizationAppealResponse"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:appeal_submitted_at]
end
