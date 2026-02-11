# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGitHubRepositoryProperties do
  @moduledoc """
  BenefitGitHubRepositoryProperties

  Properties for a benefit of type `github_repository`.
  """

  @typedoc """
  * `permission` - The permission level to grant. Read more about roles and their permissions on [GitHub documentation](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/repository-roles-for-an-organization#permissions-for-each-role). Possible values: `pull`, `triage`, `push`, `maintain`, `admin`.
  * `repository_name` - The name of the repository.
  * `repository_owner` - The owner of the repository.
  """
  @type t :: %__MODULE__{
          permission: String.t() | nil,
          repository_name: String.t() | nil,
          repository_owner: String.t() | nil
        }

  defstruct [:permission, :repository_name, :repository_owner]

  @schema_name "BenefitGitHubRepositoryProperties"
  def schema_name, do: @schema_name
end
