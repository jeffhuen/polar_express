# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSelectionRequiredResponse do
  @moduledoc """
  CustomerSelectionRequiredResponse

  Response when multiple customers match the email.
  """

  @typedoc """
  * `customers` - List of customers to choose from.
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:customers, :detail, :error]

  @schema_name "CustomerSelectionRequiredResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customers" => PolarExpress.Schemas.CustomerSelectionOption
    }
  end
end
