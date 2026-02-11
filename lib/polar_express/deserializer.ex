defmodule PolarExpress.Deserializer do
  @moduledoc false

  @spec cast(map() | list() | term(), keyword()) :: struct() | map() | list() | term()
  def cast(data, opts \\ [])

  # Polar paginated list — detected by items + pagination keys
  def cast(%{"items" => items, "pagination" => pagination}, opts) when is_list(items) do
    cast_items = Enum.map(items, &cast(&1, opts))

    pagination_struct = %{
      total_count: pagination["total_count"],
      max_page: pagination["max_page"]
    }

    %PolarExpress.ListObject{
      items: cast_items,
      pagination: pagination_struct
    }
  end

  # Map with resource hint → populate struct
  def cast(%{} = data, opts) do
    case Keyword.get(opts, :resource) do
      nil -> data
      module -> cast_inner(data, module)
    end
  end

  # Top-level list — cast each element
  def cast(data, opts) when is_list(data), do: Enum.map(data, &cast(&1, opts))

  # Scalars (string, integer, nil, etc.) — passthrough
  def cast(data, _opts), do: data

  # -- Private ----------------------------------------------------------------

  # Cast a raw map using an inner type definition.
  # `inner` can be:
  #   - an atom module (struct, union, enum, or map-type)
  #   - {:union, :discriminated, prop, mapping}
  #   - {:union, :variants, [module]}
  defp cast_inner(%{} = raw, module) when is_atom(module) do
    _ = Code.ensure_loaded(module)

    cond do
      function_exported?(module, :__struct__, 0) ->
        populate_struct(module, raw)

      function_exported?(module, :__discriminator__, 0) ->
        resolve_discriminated(module, raw)

      function_exported?(module, :__variants__, 0) ->
        resolve_variants(module.__variants__(), raw)

      true ->
        # Enum module, map-type module, or unknown — pass through
        raw
    end
  end

  defp cast_inner(%{} = raw, {:union, :discriminated, prop, mapping}) do
    case Map.get(raw, prop) do
      nil ->
        raw

      value ->
        case Map.get(mapping, value) do
          nil -> raw
          module -> populate_struct(module, raw)
        end
    end
  end

  defp cast_inner(%{} = raw, {:union, :variants, modules}) do
    resolve_variants(modules, raw)
  end

  defp cast_inner(raw, _inner), do: raw

  # Populate a struct from raw JSON map, recursively handling inner types
  defp populate_struct(module, data) do
    inner_types =
      if function_exported?(module, :__inner_types__, 0),
        do: module.__inner_types__(),
        else: %{}

    struct = to_struct(module, data, inner_types)
    maybe_parse_dates(struct, module)
  end

  defp to_struct(module, data, inner_types) do
    struct_keys =
      module.__struct__()
      |> Map.keys()
      |> List.delete(:__struct__)

    fields =
      Enum.map(struct_keys, fn atom_key ->
        string_key = Atom.to_string(atom_key)
        raw = Map.get(data, string_key)
        {atom_key, cast_field(string_key, raw, inner_types)}
      end)

    struct(module, fields)
  end

  defp cast_field(_key, nil, _inner_types), do: nil

  # Field has an inner type mapping and the value is a list → cast each element
  defp cast_field(key, raw, inner_types)
       when is_map_key(inner_types, key) and is_list(raw) do
    inner = Map.fetch!(inner_types, key)
    Enum.map(raw, &cast_inner(&1, inner))
  end

  # Field has an inner type mapping and the value is a map → cast using inner type
  defp cast_field(key, %{} = raw, inner_types) when is_map_key(inner_types, key) do
    inner = Map.fetch!(inner_types, key)
    cast_inner(raw, inner)
  end

  # No inner type match — passthrough
  defp cast_field(_key, raw, _inner_types), do: raw

  # -- Discriminated union resolution -----------------------------------------

  defp resolve_discriminated(module, %{} = raw) do
    _ = Code.ensure_loaded(module)
    {prop, mapping} = module.__discriminator__()

    case Map.get(raw, prop) do
      nil ->
        # Discriminator field missing — fall back to variant matching
        resolve_variants(module.__variants__(), raw)

      value ->
        case Map.get(mapping, value) do
          nil ->
            # Unknown discriminator value — fall back to variant matching
            resolve_variants(module.__variants__(), raw)

          target ->
            populate_struct(target, raw)
        end
    end
  end

  # -- Variant-based union resolution -----------------------------------------

  defp resolve_variants(modules, %{} = raw) do
    # Try discriminated resolution first for any module that has a discriminator
    case try_discriminated_modules(modules, raw) do
      {:ok, result} -> result
      :none -> score_match_variants(modules, raw)
    end
  end

  defp try_discriminated_modules(modules, raw) do
    Enum.reduce_while(modules, :none, fn module, acc ->
      _ = Code.ensure_loaded(module)

      if function_exported?(module, :__discriminator__, 0) do
        try_discriminator(module, raw, acc)
      else
        {:cont, acc}
      end
    end)
  end

  defp try_discriminator(module, raw, acc) do
    {prop, mapping} = module.__discriminator__()
    value = Map.get(raw, prop)
    target = if value, do: Map.get(mapping, value)

    if target do
      {:halt, {:ok, populate_struct(target, raw)}}
    else
      {:cont, acc}
    end
  end

  defp score_match_variants(modules, %{} = raw) do
    raw_keys = Map.keys(raw) |> MapSet.new()

    # Expand any nested union modules to their concrete (struct) variants
    concrete =
      Enum.flat_map(modules, fn module ->
        _ = Code.ensure_loaded(module)

        cond do
          function_exported?(module, :__struct__, 0) ->
            [module]

          function_exported?(module, :__variants__, 0) ->
            module.__variants__()

          true ->
            []
        end
      end)
      |> Enum.filter(fn mod ->
        _ = Code.ensure_loaded(mod)
        function_exported?(mod, :__struct__, 0)
      end)
      |> Enum.uniq()

    # Score each concrete module by how well its struct fields match the raw data
    scored =
      Enum.map(concrete, fn module ->
        struct_keys =
          module.__struct__()
          |> Map.keys()
          |> List.delete(:__struct__)
          |> Enum.map(&Atom.to_string/1)
          |> MapSet.new()

        present = MapSet.intersection(struct_keys, raw_keys) |> MapSet.size()
        missing = MapSet.difference(struct_keys, raw_keys) |> MapSet.size()
        {module, present, missing}
      end)

    # Pick the best match: highest present count, then lowest missing count
    case Enum.max_by(scored, fn {_, present, missing} -> {present, -missing} end, fn -> nil end) do
      {module, present, _missing} when present > 0 -> populate_struct(module, raw)
      _ -> raw
    end
  end

  # -- Date field parsing -----------------------------------------------------

  defp maybe_parse_dates(struct, module) do
    if function_exported?(module, :__date_fields__, 0) do
      Enum.reduce(module.__date_fields__(), struct, &parse_date_field/2)
    else
      struct
    end
  end

  defp parse_date_field(field, acc) do
    case Map.get(acc, field) do
      value when is_binary(value) -> put_parsed_datetime(acc, field, value)
      _ -> acc
    end
  end

  defp put_parsed_datetime(acc, field, value) do
    case DateTime.from_iso8601(value) do
      {:ok, dt, _offset} -> Map.put(acc, field, dt)
      _ -> acc
    end
  end
end
