# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DisputeSupportCaseMessageCreate do
  @moduledoc """
  DisputeSupportCaseMessageCreate

  A reply on a dispute case.
  """

  @typedoc """
  * `body` - Nullable.
  * `file_ids`
  * `type`
  * `win_reason` - The merchant's stated grounds for contesting, set on the counter submission. Nullable.
  * `win_reason_other` - Free-text detail when `win_reason` is `other`. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:body, :file_ids, :type, :win_reason, :win_reason_other]

  @schema_name "DisputeSupportCaseMessageCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "win_reason" => PolarExpress.Schemas.DisputeWinReason
    }
  end
end
