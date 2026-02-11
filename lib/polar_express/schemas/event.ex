# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Event do
  @moduledoc "Event union type."

  @type t ::
          PolarExpress.Schemas.SystemEvent.t()
          | PolarExpress.Schemas.UserEvent.t()

  @schema_name "Event"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.SystemEvent,
      PolarExpress.Schemas.UserEvent
    ]
  end

  def __discriminator__ do
    {"source",
     %{
       "system" => PolarExpress.Schemas.SystemEvent,
       "user" => PolarExpress.Schemas.UserEvent
     }}
  end
end
