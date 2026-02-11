# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGitHubRepositorySubscriberProperties do
  @moduledoc """
  BenefitGitHubRepositorySubscriberProperties

  Properties available to subscribers for a benefit of type `github_repository`.
  """

  @typedoc """
  * `repository_name` - The name of the repository.
  * `repository_owner` - The owner of the repository.
  """
  @type t :: %__MODULE__{
          repository_name: String.t() | nil,
          repository_owner: String.t() | nil
        }

  defstruct [:repository_name, :repository_owner]

  @schema_name "BenefitGitHubRepositorySubscriberProperties"
  def schema_name, do: @schema_name
end
