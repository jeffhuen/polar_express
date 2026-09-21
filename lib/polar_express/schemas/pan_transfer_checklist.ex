# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanTransferChecklist do
  @moduledoc """
  PanTransferChecklist
  """

  @typedoc """
  * `current_step_key` - The one step that can be acted on now. Null once every step is done. Nullable.
  * `destination_account_id` - The Stripe account the cards move into. The merchant needs it to address the copy or import to Polar. Nullable.
  * `method` - How the cards move: `pan_copy` for a Stripe source (account to account), `pan_import` for any other vault.
  * `started` - Whether the card transfer has been started. Steps are empty until it is.
  * `steps` - The ordered checklist. Titles and guidance live in the client, keyed by `key`.
  """
  @type t :: %__MODULE__{}

  defstruct [:current_step_key, :destination_account_id, :method, :started, :steps]

  @schema_name "PanTransferChecklist"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "method" => PolarExpress.Schemas.PanTransferMethod,
      "steps" => PolarExpress.Schemas.PanTransferStep
    }
  end
end
