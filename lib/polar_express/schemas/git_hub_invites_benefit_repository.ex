# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.GitHubInvitesBenefitRepository do
  @moduledoc """
  GitHubInvitesBenefitRepository
  """

  @typedoc """
  * `repository_name`
  * `repository_owner`
  """
  @type t :: %__MODULE__{}

  defstruct [:repository_name, :repository_owner]

  @schema_name "GitHubInvitesBenefitRepository"
  def schema_name, do: @schema_name
end
