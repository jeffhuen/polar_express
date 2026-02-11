# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantGitHubRepositoryProperties do
  @moduledoc """
  BenefitGrantGitHubRepositoryProperties
  """

  @typedoc """
  * `account_id` - Nullable.
  * `granted_account_id`
  * `permission` - Possible values: `pull`, `triage`, `push`, `maintain`, `admin`.
  * `repository_name`
  * `repository_owner`
  """
  @type t :: %__MODULE__{
          account_id: String.t() | nil,
          granted_account_id: String.t() | nil,
          permission: String.t() | nil,
          repository_name: String.t() | nil,
          repository_owner: String.t() | nil
        }

  defstruct [:account_id, :granted_account_id, :permission, :repository_name, :repository_owner]

  @schema_name "BenefitGrantGitHubRepositoryProperties"
  def schema_name, do: @schema_name
end
