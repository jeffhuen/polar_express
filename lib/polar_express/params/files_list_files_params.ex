# File generated from our OpenAPI spec
defmodule PolarExpress.Params.FilesListFilesParams do
  @moduledoc "Parameters for files list files."

  @typedoc """
  * `ids` - Filter by file ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          ids: map() | nil,
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil
        }

  defstruct [:ids, :limit, :organization_id, :page]
end
