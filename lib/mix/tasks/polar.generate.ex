defmodule Mix.Tasks.PolarExpress.Generate do
  @moduledoc """
  Generate Polar API modules from the OpenAPI spec.

      mix polar.generate              # Generate all files
      mix polar.generate --clean      # Remove old generated files first
      mix polar.generate --dry-run    # Preview what would be generated
      mix polar.generate --stats      # Show generation statistics
  """

  use Mix.Task

  alias PolarExpress.Generator.EventGenerator
  alias PolarExpress.Generator.OpenAPI
  alias PolarExpress.Generator.Overrides
  alias PolarExpress.Generator.ParamsGenerator
  alias PolarExpress.Generator.RegistryGenerator
  alias PolarExpress.Generator.ResourceGenerator
  alias PolarExpress.Generator.SchemaGenerator
  alias PolarExpress.Generator.ServiceGenerator

  @shortdoc "Generate Polar API modules from OpenAPI spec"
  @endpoint_coverage_floor 50

  @generated_dirs [
    "lib/polar_express/services",
    "lib/polar_express/resources",
    "lib/polar_express/schemas",
    "lib/polar_express/params",
    "lib/polar_express/events"
  ]

  @generated_files [
    "lib/polar_express/object_types.ex",
    "lib/polar_express/event_types.ex",
    "lib/polar_express/events.ex"
  ]

  @impl Mix.Task
  def run(args) do
    {opts, _, _} =
      OptionParser.parse(args,
        switches: [clean: :boolean, dry_run: :boolean, stats: :boolean],
        aliases: [c: :clean, n: :dry_run, s: :stats]
      )

    clean? = Keyword.get(opts, :clean, false)
    dry_run? = Keyword.get(opts, :dry_run, false)
    stats? = Keyword.get(opts, :stats, false)

    spec_path = "priv/openapi/openapi.json"

    unless File.exists?(spec_path) do
      Mix.raise("OpenAPI spec not found at #{spec_path}. Ensure Polar OpenAPI spec is available.")
    end

    Mix.shell().info("Parsing OpenAPI spec...")
    spec = OpenAPI.parse(spec_path)
    Mix.shell().info("  API version: #{spec.api_version}")
    Mix.shell().info("  Resources: #{length(spec.resources)}")
    Mix.shell().info("  Path specs: #{map_size(spec.path_specs)}")

    if clean? do
      Mix.shell().info("\nCleaning generated directories...")
      clean_generated()
    end

    Mix.shell().info("\nGenerating services...")
    services = ServiceGenerator.generate(spec)
    Mix.shell().info("  #{length(services)} service files")

    Mix.shell().info("Generating resources...")
    resources = ResourceGenerator.generate(spec)
    Mix.shell().info("  #{length(resources)} resource files")

    Mix.shell().info("Generating schemas...")
    schemas = SchemaGenerator.generate(spec)
    Mix.shell().info("  #{length(schemas)} schema files")

    Mix.shell().info("Generating params...")
    params = ParamsGenerator.generate(spec)
    Mix.shell().info("  #{length(params)} param files")

    Mix.shell().info("Generating registries...")
    registries = RegistryGenerator.generate(spec)
    Mix.shell().info("  #{length(registries)} registry files")

    Mix.shell().info("Generating events...")
    events = EventGenerator.generate(spec)
    Mix.shell().info("  #{length(events)} event files")

    # Hand-maintained files that must survive --clean (they live in generated dirs)
    static_files = static_resource_files()

    all_files = services ++ resources ++ schemas ++ params ++ registries ++ events ++ static_files
    validate_generation(all_files, spec)

    if dry_run? do
      Mix.shell().info("\n--- DRY RUN (no files written) ---")

      Enum.each(all_files, fn {path, _content} ->
        Mix.shell().info("  #{path}")
      end)
    else
      Mix.shell().info("\nWriting #{length(all_files)} files...")
      write_files(all_files)

      Mix.shell().info("Running mix format...")
      format_generated(all_files)
    end

    if stats? or not dry_run? do
      Mix.shell().info("\n--- Generation Stats ---")
      Mix.shell().info("  Services: #{length(services)}")
      Mix.shell().info("  Resources: #{length(resources)}")
      Mix.shell().info("  Schemas: #{length(schemas)}")
      Mix.shell().info("  Params: #{length(params)}")
      Mix.shell().info("  Registries: #{length(registries)}")
      Mix.shell().info("  Events: #{length(events)}")
      Mix.shell().info("  Total files: #{length(all_files)}")
    end

    Mix.shell().info("\nDone!")
  end

  defp validate_generation(all_files, spec) do
    validate_override_keys(spec)
    validate_endpoint_coverage(spec)
    validate_no_duplicate_paths(all_files)
  end

  defp validate_no_duplicate_paths(all_files) do
    duplicates =
      all_files
      |> Enum.frequencies_by(fn {path, _content} -> path end)
      |> Enum.filter(fn {_path, count} -> count > 1 end)

    if duplicates != [] do
      details =
        duplicates
        |> Enum.map_join("\n", fn {path, count} -> "  #{path} (#{count}x)" end)

      Mix.raise("Duplicate output paths:\n#{details}")
    end
  end

  defp validate_endpoint_coverage(spec) do
    endpoint_count =
      spec.resources
      |> Enum.flat_map(& &1.operations)
      |> Enum.uniq_by(fn op -> {op.http_method, op.path} end)
      |> length()

    if endpoint_count < @endpoint_coverage_floor do
      Mix.raise(
        "Endpoint coverage dropped to #{endpoint_count}, expected >= #{@endpoint_coverage_floor}. Check skip_schemas."
      )
    end
  end

  defp validate_override_keys(spec) do
    endpoints =
      spec.resources
      |> Enum.flat_map(& &1.operations)
      |> Enum.map(fn op -> {to_string(op.http_method), op.path} end)
      |> MapSet.new()

    validate_override_map(Overrides.operation_overrides(), endpoints, "Operation")
    validate_override_map(Overrides.params_overrides(), endpoints, "Params")
  end

  defp validate_override_map(override_map, endpoints, label) do
    Enum.each(override_map, fn {key, _value} ->
      unless MapSet.member?(endpoints, key) do
        Mix.raise("#{label} override references unknown endpoint: #{inspect(key)}")
      end
    end)
  end

  defp clean_generated do
    Enum.each(@generated_dirs, fn dir ->
      if File.exists?(dir) do
        removed = File.rm_rf!(dir)
        Mix.shell().info("  Removed #{dir}/ (#{length(removed)} files)")
      end
    end)

    Enum.each(@generated_files, fn file ->
      if File.exists?(file) do
        File.rm!(file)
        Mix.shell().info("  Removed #{file}")
      end
    end)
  end

  defp write_files(files) do
    Enum.each(files, fn {path, content} ->
      dir = Path.dirname(path)
      File.mkdir_p!(dir)
      File.write!(path, content)
    end)
  end

  defp format_generated(files) do
    paths = Enum.map(files, fn {path, _} -> path end)

    # Format in batches to avoid command-line length limits
    paths
    |> Enum.chunk_every(50)
    |> Enum.each(fn batch ->
      System.cmd("mix", ["format" | batch], stderr_to_stdout: true)
    end)
  end

  # Hand-maintained resource files that live in generated directories
  # and must be recreated after --clean.
  defp static_resource_files do
    [
      {"lib/polar_express/resources/event.ex",
       """
       defmodule PolarExpress.Resources.Event do
         @moduledoc \"\"\"
         Represents a Polar webhook event.

         Contains the event type, timestamp, and deserialized data payload.
         \"\"\"

         @type t :: %__MODULE__{
                 type: String.t() | nil,
                 timestamp: String.t() | nil,
                 data: map() | nil
               }

         defstruct [:type, :timestamp, :data]
       end
       """}
    ]
  end
end
