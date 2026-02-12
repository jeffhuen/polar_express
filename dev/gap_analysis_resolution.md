# Polar Express vs. JS SDK Gap Analysis & Resolution

## Executive Summary
We compared the `polar_express` OpenAPI gaps with the official Javascript SDK (`polar-js`). The JS SDK uses sophisticated typing (unions, discriminated unions) that the current `polar_express` generator likely misses.

# Polar Express vs. JS SDK Gap Analysis & Resolution

## Executive Summary
This document outlines the technical plan to bridge the gap between `polar_express` and the official JS SDK. The primary focus is on adding type safety to dynamic maps, polymorphic unions, and complex arrays.

## 1. Dynamic Maps (`metadata`)
**Issue**: Fields like `metadata` are typed as `Record<string, MetadataOutputType>` in JS but generic `map()` in Elixir.
**Location**: `lib/polar_express/generator/openapi.ex` -> `do_resolve_type/3`.
**Current Logic**:
```elixir
defp do_resolve_type(_field_name, %{"type" => "object"}, _schema_index) do
  {:map, %{}}
end
```
**Implementation Plan**:
1.  Modify `do_resolve_type` to match on `additionalProperties`.
2.  Resolving the inner type of `additionalProperties`.
3.  Return `{{:map_of, InnerType}, inner_types}`.
4.  Update `SchemaGenerator` to render `{:map_of, Type}` as `%{String.t() => Type.t()}`.

## 2. Polymorphism (`BenefitCreate`)
**Issue**: Unions of objects (e.g. `BenefitCustomCreate | BenefitDiscordCreate`) are collapsed to `map()`.
**Location**: `lib/polar_express/generator/openapi.ex` -> `determine_complex_union_type/5`.
**Current Logic**:
```elixir
defp determine_complex_union_type(_field_name, refs, _strings, _non_null, _index)
     when length(refs) > 1 do
  {:map, %{}}
end
```
**Implementation Plan**:
1.  Update `determine_complex_union_type` to return `{{:union, refs}, %{}}`.
2.  Update `SchemaGenerator` to render `{:union, refs}` as `Ref1.t() | Ref2.t()`.
3.  **Constraint**: For `deserialization`, simple unions are hard without a discriminator. We will prioritize type generation first.

## 3. Untyped Arrays (`Customer.tax_id`)
**Issue**: Arrays defining a tuple via `prefixItems` (or `items` array in 3.0) are generated as `list(term())`.
**Location**: `lib/polar_express/generator/openapi.ex` -> `do_resolve_type/3`.
**Implementation Plan**:
1.  Add a clause to `do_resolve_type` for `prefixItems` (OpenAPI 3.1) or `items` as a list (OpenAPI 3.0 tuple).
2.  Collect all types in the tuple.
3.  Return `{{:list, {:union, types}}, inner_types}` (simplifying tuple to "list of any of these types").

## Execution Order
1.  **Dynamic Maps**: Low risk, high value (Metadata is everywhere).
2.  **Polymorphism**: High value for V2, validation needed.
3.  **Arrays**: Lower priority, can be tackled last.
