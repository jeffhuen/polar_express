# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.GitHubInvitesBenefitOrganization do
  @moduledoc """
  GitHubInvitesBenefitOrganization
  """

  @typedoc """
  * `is_free`
  * `is_personal`
  * `name`
  * `plan_name`
  """
  @type t :: %__MODULE__{}

  defstruct [:is_free, :is_personal, :name, :plan_name]

  @schema_name "GitHubInvitesBenefitOrganization"
  def schema_name, do: @schema_name
end
