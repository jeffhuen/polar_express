# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerState do
  @moduledoc "CustomerState union type."

  @type t ::
          PolarExpress.Schemas.CustomerStateIndividual.t()
          | PolarExpress.Schemas.CustomerStateTeam.t()

  @schema_name "CustomerState"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerStateIndividual,
      PolarExpress.Schemas.CustomerStateTeam
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "individual" => PolarExpress.Schemas.CustomerStateIndividual,
       "team" => PolarExpress.Schemas.CustomerStateTeam
     }}
  end
end
