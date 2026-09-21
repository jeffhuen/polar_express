# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationEmbedStatus do
  @moduledoc """
  OrganizationEmbedStatus
  """

  @typedoc """
  * `embed_hosts` - Hosts allowed to embed this organization's checkout. An entry is a host and an optional port, without a scheme: HTTPS is always allowed, and HTTP too for local hosts — `localhost`, any `.localhost` or `.local` name, and loopback or private addresses. `*.example.com` matches any subdomain, but not `example.com` itself. An app origin such as `chrome-extension://abcdef` carries its scheme, having no host to match on.
  * `shared_hosts` - Entries of `embed_hosts` admitting every tenant of a platform, such as `*.vercel.app`.
  * `uncovered_hosts` - Hosts seen embedding this organization's checkout that `embed_hosts` would refuse. Anyone can name an origin when they create a checkout, so these are observations, not hosts we vouch for.
  """
  @type t :: %__MODULE__{}

  defstruct [:embed_hosts, :shared_hosts, :uncovered_hosts]

  @schema_name "OrganizationEmbedStatus"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "uncovered_hosts" => PolarExpress.Schemas.OrganizationUncoveredHost
    }
  end
end
