defmodule PolarExpress.ErrorTest do
  use ExUnit.Case, async: true

  alias PolarExpress.Error

  describe "from_response/3" do
    test "parses a 401 authentication error" do
      body = JSON.encode!(%{"detail" => "Invalid API key"})
      error = Error.from_response(401, body, [{"request-id", "req_abc"}])

      assert error.type == :authentication_error
      assert error.message == "Invalid API key"
      assert error.http_status == 401
      assert error.request_id == "req_abc"
    end

    test "parses a 403 forbidden error" do
      body = JSON.encode!(%{"detail" => "Forbidden"})
      error = Error.from_response(403, body, [])
      assert error.type == :forbidden_error
    end

    test "parses a 404 not found error" do
      body = JSON.encode!(%{"type" => "ResourceNotFound", "detail" => "Resource not found"})
      error = Error.from_response(404, body, [])

      assert error.type == :resource_not_found
      assert error.detail == "Resource not found"
      assert error.error_code == "ResourceNotFound"
    end

    test "parses a 422 validation error" do
      body =
        JSON.encode!(%{
          "type" => "HttpValidationError",
          "detail" => "Invalid parameters"
        })

      error = Error.from_response(422, body, [])

      assert error.type == :validation_error
      assert error.detail == "Invalid parameters"
    end

    test "parses a 429 rate limit error with retry-after" do
      body = JSON.encode!(%{"detail" => "Too many requests"})
      error = Error.from_response(429, body, [{"retry-after", "2.5"}])

      assert error.type == :rate_limit_error
      assert error.retry_after == 2.5
    end

    test "parses domain error types from response body" do
      body = JSON.encode!(%{"type" => "AlreadyCanceledSubscription", "detail" => "Already canceled"})
      error = Error.from_response(400, body, [])

      assert error.type == :already_canceled_subscription
      assert error.detail == "Already canceled"
    end

    test "falls back to api_error for unknown types" do
      body = JSON.encode!(%{"detail" => "Something went wrong"})
      error = Error.from_response(500, body, [])
      assert error.type == :api_error
    end

    test "handles unparseable body gracefully" do
      error = Error.from_response(500, "not json", [])
      assert error.type == :api_error
      assert error.http_body == "not json"
    end

    test "reads x-request-id header" do
      body = JSON.encode!(%{"detail" => "Error"})
      error = Error.from_response(500, body, [{"x-request-id", "req_xyz"}])
      assert error.request_id == "req_xyz"
    end
  end

  describe "connection_error/1" do
    test "creates a connection error" do
      error = Error.connection_error("Connection refused")
      assert error.type == :api_connection_error
      assert error.message == "Connection refused"
    end
  end

  describe "signature_verification_error/1" do
    test "creates a signature error" do
      error = Error.signature_verification_error("Bad signature")
      assert error.type == :signature_verification_error
      assert error.message == "Bad signature"
    end
  end

  describe "retryable?/1" do
    test "connection errors are retryable" do
      assert Error.retryable?(Error.connection_error("timeout"))
    end

    test "500+ server errors are retryable" do
      assert Error.retryable?(%Error{http_status: 500})
      assert Error.retryable?(%Error{http_status: 503})
    end

    test "429 rate limit errors are retryable" do
      assert Error.retryable?(%Error{http_status: 429})
    end

    test "400 errors are not retryable" do
      refute Error.retryable?(%Error{http_status: 400})
    end

    test "401 errors are not retryable" do
      refute Error.retryable?(%Error{http_status: 401})
    end

    test "404 errors are not retryable" do
      refute Error.retryable?(%Error{http_status: 404})
    end
  end
end
