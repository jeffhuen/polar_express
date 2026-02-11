defmodule PolarExpress.DocGenerationTest do
  @moduledoc """
  Spot-checks that generated modules have proper documentation attributes.
  Validates @moduledoc, @doc, @spec, @typedoc on representative
  modules across services, resources, params, and events.
  """
  use ExUnit.Case, async: true

  alias PolarExpress.Generator.OpenAPI

  describe "resource documentation" do
    test "resource has @moduledoc from schema" do
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(PolarExpress.Resources.Customers)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "Customers"
    end

    test "resource has @typedoc on t()" do
      {:docs_v1, _, _, _, _, _, docs} = Code.fetch_docs(PolarExpress.Resources.Customers)

      type_docs =
        Enum.filter(docs, fn
          {{:type, :t, _}, _, _, _, _} -> true
          _ -> false
        end)

      assert type_docs != []
      [{{:type, :t, _}, _, _, typedoc, _}] = type_docs
      assert typedoc != :hidden
      assert typedoc != :none
    end
  end

  describe "service documentation" do
    test "service has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(PolarExpress.Services.CustomersService)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "Customers"
    end

    test "service method has @doc" do
      {:docs_v1, _, _, _, _, _, docs} = Code.fetch_docs(PolarExpress.Services.CustomersService)

      function_docs =
        Enum.filter(docs, fn
          {{:function, :create_customer, _}, _, _, doc, _} when doc != :hidden and doc != :none ->
            true

          _ ->
            false
        end)

      assert function_docs != []
    end

    test "service method has @spec" do
      {:ok, specs} = Code.Typespec.fetch_specs(PolarExpress.Services.CustomersService)

      create_specs =
        Enum.filter(specs, fn
          {{:create_customer, _arity}, _} -> true
          _ -> false
        end)

      assert create_specs != []
    end

    test "OAuth2 service has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(PolarExpress.Services.Oauth2Service)

      assert moduledoc != :hidden
      assert moduledoc != :none
    end
  end

  describe "params documentation" do
    test "params module has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(PolarExpress.Params.CustomersCreateCustomerParams)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "Parameters"
    end

    test "params module with query params has @typedoc on t()" do
      {:docs_v1, _, _, _, _, _, docs} =
        Code.fetch_docs(PolarExpress.Params.CustomersListCustomersParams)

      type_docs =
        Enum.filter(docs, fn
          {{:type, :t, _}, _, _, _, _} -> true
          _ -> false
        end)

      assert type_docs != []
      [{{:type, :t, _}, _, _, typedoc, _}] = type_docs
      assert typedoc != :hidden
      assert typedoc != :none
    end
  end

  describe "event documentation" do
    test "event constants module has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(PolarExpress.Events)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ "webhook"
    end

    test "event module has @moduledoc mentioning webhook" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(PolarExpress.Events.CheckoutCreated)

      assert moduledoc != :hidden
      assert moduledoc != :none
      %{"en" => doc} = moduledoc
      assert doc =~ ~r/webhook/i
    end

    test "event module has event_type constant" do
      assert PolarExpress.Events.CheckoutCreated.event_type() == "checkout.created"
    end

    test "unknown event module has @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} =
        Code.fetch_docs(PolarExpress.Events.UnknownEvent)

      assert moduledoc != :hidden
      assert moduledoc != :none
    end
  end

  describe "deprecated operations" do
    test "OpenAPI spec path_specs can be checked for deprecated endpoints" do
      spec = OpenAPI.parse("priv/openapi/openapi.json")

      deprecated_keys =
        spec.path_specs
        |> Enum.filter(fn {_key, ps} -> ps[:deprecated] == true end)
        |> Enum.map(fn {key, _} -> key end)
        |> MapSet.new()

      # Polar API currently has no deprecated operations
      assert MapSet.size(deprecated_keys) == 0,
             "Expected zero deprecated operations in the Polar OpenAPI spec, got #{MapSet.size(deprecated_keys)}"
    end
  end

  describe "omission safety" do
    test "event constants module does not have empty @moduledoc" do
      {:docs_v1, _, _, _, moduledoc, _, _} = Code.fetch_docs(PolarExpress.Events)

      case moduledoc do
        :hidden -> :ok
        :none -> :ok
        %{"en" => doc} -> assert String.trim(doc) != ""
      end
    end
  end
end
