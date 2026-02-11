defmodule PolarExpress.Generator.Naming do
  @moduledoc false

  @doc """
  Build a resource module name.

      iex> resource_module("PaymentIntent", "")
      PolarExpress.Resources.PaymentIntent
      iex> resource_module("Person", "V2.Core.Accounts")
      PolarExpress.Resources.V2.Core.Accounts.Person
  """
  def resource_module(class_name, package) do
    build_module(PolarExpress.Resources, class_name, package)
  end

  @doc """
  Build a service module name.

      iex> service_module("PaymentIntent", "")
      PolarExpress.Services.PaymentIntentService
      iex> service_module("Card", "TestHelpers.Issuing")
      PolarExpress.Services.TestHelpers.Issuing.CardService
  """
  def service_module(class_name, package) do
    build_module(PolarExpress.Services, "#{class_name}Service", package)
  end

  @doc """
  Build a params module name.

      iex> params_module("PaymentIntent", "", "create")
      PolarExpress.Params.PaymentIntentCreateParams
      iex> params_module("Meter", "Billing", "create")
      PolarExpress.Params.Billing.MeterCreateParams
  """
  def params_module(class_name, package, method_name) do
    params_name = "#{class_name}#{Macro.camelize(method_name)}Params"
    build_module(PolarExpress.Params, params_name, package)
  end

  @doc """
  Build an event module name from a lookup_type string.

      iex> event_module("checkout.created")
      PolarExpress.Events.CheckoutCreated
  """
  def event_module(lookup_type) do
    class_name =
      lookup_type
      |> String.split(".")
      |> Enum.map_join(&Macro.camelize/1)

    Module.concat(PolarExpress.Events, class_name)
  end

  @doc """
  Convert a module atom to a file path.

      iex> module_to_path(PolarExpress.Services.PaymentIntentService)
      "lib/polar_express/services/payment_intent_service.ex"
  """
  def module_to_path(module) do
    module
    |> Module.split()
    |> Enum.map_join("/", &to_snake_case/1)
    |> then(&"lib/#{&1}.ex")
  end

  @doc """
  Convert PascalCase to snake_case.

      iex> to_snake_case("PaymentIntent")
      "payment_intent"
      iex> to_snake_case("V2")
      "v2"
      iex> to_snake_case("OAuth")
      "oauth"
  """
  def to_snake_case(pascal) do
    pascal
    |> String.replace(~r/([A-Z]+)([A-Z][a-z])/, "\\1_\\2")
    |> String.replace(~r/([a-z\d])([A-Z])/, "\\1_\\2")
    |> String.downcase()
  end

  @doc """
  Build a namespace parent module name for service aggregation.

      iex> namespace_service_module("Billing")
      PolarExpress.Services.BillingService
  """
  def namespace_service_module(package) do
    # For "Billing" -> PolarExpress.Services.BillingService
    # For "TestHelpers.Issuing" -> PolarExpress.Services.TestHelpers.IssuingService
    parts = String.split(package, ".")
    {parents, [leaf]} = Enum.split(parts, -1)

    base =
      if parents == [] do
        PolarExpress.Services
      else
        Module.concat([PolarExpress.Services | Enum.map(parents, &String.to_atom/1)])
      end

    Module.concat(base, "#{leaf}Service")
  end

  # -- Private ----------------------------------------------------------------

  defp build_module(root, class_name, "" = _package) do
    Module.concat(root, class_name)
  end

  defp build_module(root, class_name, package) do
    segments = String.split(package, ".") |> Enum.map(&String.to_atom/1)
    Module.concat([root | segments] ++ [String.to_atom(class_name)])
  end
end
