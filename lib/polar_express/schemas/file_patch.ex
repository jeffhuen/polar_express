# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FilePatch do
  @moduledoc """
  FilePatch
  """

  @typedoc """
  * `name` - Nullable.
  * `version` - Nullable.
  """
  @type t :: %__MODULE__{
          name: String.t() | nil,
          version: String.t() | nil
        }

  defstruct [:name, :version]

  @schema_name "FilePatch"
  def schema_name, do: @schema_name
end
