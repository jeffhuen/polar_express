# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.GitHubInvitesBenefitRepositories do
  @moduledoc """
  GitHubInvitesBenefitRepositories
  """

  @typedoc """
  * `organizations`
  * `repositories`
  """
  @type t :: %__MODULE__{}

  defstruct [:organizations, :repositories]

  @schema_name "GitHubInvitesBenefitRepositories"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "organizations" => PolarExpress.Schemas.GitHubInvitesBenefitOrganization,
      "repositories" => PolarExpress.Schemas.GitHubInvitesBenefitRepository
    }
  end
end
