defmodule PolarExpress.MixProject do
  use Mix.Project

  @source_url "https://github.com/jeffhuen/polar_express"
  @version "0.1.1"

  def project do
    [
      app: :polar_express,
      version: @version,
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      elixirc_paths: elixirc_paths(Mix.env()),
      test_coverage: [
        threshold: 50,
        ignore_modules: [
          ~r/^PolarExpress\.Services\./,
          ~r/^PolarExpress\.Resources\./,
          ~r/^PolarExpress\.Params\./,
          ~r/^PolarExpress\.Generator\./
        ]
      ],
      dialyzer: [
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"},
        flags: [:unmatched_returns, :error_handling, :extra_return, :missing_return],
        plt_add_apps: [:mix, :ex_unit]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {PolarExpress.Application, []}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      # HTTP
      {:finch, "~> 0.21"},

      # Test stub ownership (allows SDK consumers to use PolarExpress.Test)
      {:nimble_ownership, "~> 1.0"},

      # JSON (heavy payloads — Rust NIF, 2-3x faster than Jason)
      {:rustyjson, "~> 0.3"},

      # Installer
      {:igniter, "~> 0.7", optional: true},

      # Dev/Test
      {:plug, "~> 1.16", only: :test},
      {:mox, "~> 1.1", only: :test},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "polar_express",
      description:
        "🚂 Complete Polar SDK for Elixir with 1:1 feature parity to the official " <>
          "JavaScript SDK. Full API coverage. Fully typed per-event modules. Modern stack: " <>
          "Finch HTTP/2, RustyJSON, connection pooling, automatic retries, OAuth, webhooks, " <>
          "telemetry, per-client config, streaming pagination.",
      maintainers: ["Jeff Huen"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url,
        "Changelog" => "#{@source_url}/blob/main/CHANGELOG.md"
      },
      files: ~w(lib guides mix.exs README.md LICENSE CHANGELOG.md usage-rules.md)
    ]
  end

  defp docs do
    [
      main: "readme",
      source_url: @source_url,
      extras: [
        "README.md",
        "guides/getting-started.md",
        "guides/igniter-installer.md",
        "guides/webhooks.md",
        "guides/testing.md",
        "guides/telemetry.md",
        "CHANGELOG.md"
      ],
      groups_for_extras: [
        Guides: [
          "guides/getting-started.md",
          "guides/igniter-installer.md",
          "guides/webhooks.md",
          "guides/testing.md",
          "guides/telemetry.md"
        ]
      ],
      groups_for_modules: [
        Core: [PolarExpress, PolarExpress.Client, PolarExpress.Config],
        "Error Handling": [PolarExpress.Error],
        Pagination: [PolarExpress.ListObject],
        Webhooks: [PolarExpress.Webhook, PolarExpress.WebhookPlug],
        OAuth: [PolarExpress.OAuth],
        Services: ~r/PolarExpress\.Services\./,
        Resources: ~r/PolarExpress\.Resources\./,
        Params: ~r/PolarExpress\.Params\./
      ]
    ]
  end
end
