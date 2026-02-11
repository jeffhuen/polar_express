defmodule PolarExpress.Generator.Overrides do
  @moduledoc false

  # Override maps are empty since we use direct tag-based service classes.

  # Override service_class for specific operations if needed.
  # Key: {http_method_string, path}
  # Value: %{service_class: "Name", reason: "..."}
  # For Polar, this map is empty since we use direct tag-based service classes.
  @operation_overrides %{}

  def operation_overrides, do: @operation_overrides

  # Override params module prefix for specific operations.
  # Key: {http_method_string, path}
  # Value: %{params_class: "NewParamsPrefix", reason: "...", ruby: "..."}
  @params_overrides %{}

  def params_overrides, do: @params_overrides

  # Schemas to skip entirely.
  @skip_schemas MapSet.new([])

  def skip_schemas, do: @skip_schemas
end
