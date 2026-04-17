# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Customer do
  @moduledoc "Customer union type."

  @type t ::
          PolarExpress.Schemas.CustomerIndividual.t()
          | PolarExpress.Schemas.CustomerTeam.t()

  @schema_name "Customer"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerIndividual,
      PolarExpress.Schemas.CustomerTeam
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "individual" => PolarExpress.Schemas.CustomerIndividual,
       "team" => PolarExpress.Schemas.CustomerTeam
     }}
  end
end
