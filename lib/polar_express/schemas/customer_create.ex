# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerCreate do
  @moduledoc "CustomerCreate union type."

  @type t ::
          PolarExpress.Schemas.CustomerIndividualCreate.t()
          | PolarExpress.Schemas.CustomerTeamCreate.t()

  @schema_name "CustomerCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerIndividualCreate,
      PolarExpress.Schemas.CustomerTeamCreate
    ]
  end
end
