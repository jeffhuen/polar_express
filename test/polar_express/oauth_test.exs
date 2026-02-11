defmodule PolarExpress.OAuthTest do
  use ExUnit.Case, async: true

  alias PolarExpress.OAuth

  describe "token/3" do
    test "delegates to Oauth2Service.request_token" do
      PolarExpress.Test.stub(fn %{method: :post, url: url, body: body} ->
        assert url =~ "/v1/oauth2/token"
        decoded = JSON.decode!(body)
        assert decoded["grant_type"] == "authorization_code"
        assert decoded["code"] == "test_code"
        {200, [], ~s({"access_token": "polar_at_xxx", "token_type": "bearer"})}
      end)

      client = PolarExpress.client("pk_test_123")

      {:ok, data} =
        OAuth.token(client, %{"grant_type" => "authorization_code", "code" => "test_code"})

      assert %PolarExpress.Schemas.TokenResponse{} = data
      assert data.access_token == "polar_at_xxx"
    end
  end

  describe "revoke/3" do
    test "delegates to Oauth2Service.revoke_token" do
      PolarExpress.Test.stub(fn %{method: :post, url: url, body: body} ->
        assert url =~ "/v1/oauth2/revoke"
        decoded = JSON.decode!(body)
        assert decoded["token"] == "polar_at_xxx"
        {200, [], ~s({})}
      end)

      client = PolarExpress.client("pk_test_123")
      {:ok, _} = OAuth.revoke(client, %{"token" => "polar_at_xxx"})
    end
  end

  describe "introspect/3" do
    test "delegates to Oauth2Service.introspect_token" do
      PolarExpress.Test.stub(fn %{method: :post, url: url, body: body} ->
        assert url =~ "/v1/oauth2/introspect"
        decoded = JSON.decode!(body)
        assert decoded["token"] == "polar_at_xxx"
        {200, [], ~s({"active": true, "scope": "openid"})}
      end)

      client = PolarExpress.client("pk_test_123")
      {:ok, data} = OAuth.introspect(client, %{"token" => "polar_at_xxx"})
      assert %PolarExpress.Schemas.IntrospectTokenResponse{} = data
      assert data.active == true
    end
  end
end
