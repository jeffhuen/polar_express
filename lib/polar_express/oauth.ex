defmodule PolarExpress.OAuth do
  @moduledoc """
  Polar OAuth2 convenience helpers.

  Delegates to the generated `PolarExpress.Services.Oauth2Service`.

  ## Usage

      client = PolarExpress.client("pk_test_...")

      # Exchange code for token
      {:ok, resp} = PolarExpress.OAuth.token(client, %{"grant_type" => "authorization_code", "code" => "ac_..."})

      # Revoke a token
      {:ok, resp} = PolarExpress.OAuth.revoke(client, %{"token" => "polar_at_..."})

      # Introspect a token
      {:ok, resp} = PolarExpress.OAuth.introspect(client, %{"token" => "polar_at_..."})
  """

  defdelegate token(client, params \\ %{}, opts \\ []),
    to: PolarExpress.Services.Oauth2Service,
    as: :request_token

  defdelegate revoke(client, params \\ %{}, opts \\ []),
    to: PolarExpress.Services.Oauth2Service,
    as: :revoke_token

  defdelegate introspect(client, params \\ %{}, opts \\ []),
    to: PolarExpress.Services.Oauth2Service,
    as: :introspect_token
end
