defmodule PolarExpress.Error do
  @moduledoc """
  Polar API error.

  All API errors are returned as `{:error, %PolarExpress.Error{}}` tuples.

  ## Error Types

    * `:api_error` - Generic API error
    * `:authentication_error` - Invalid API key (401)
    * `:forbidden_error` - Insufficient permissions (403)
    * `:validation_error` - Invalid parameters (400)
    * `:not_found_error` - Resource not found (404)
    * `:rate_limit_error` - Too many requests (429)
    * `:api_connection_error` - Network/connection failure
    * `:signature_verification_error` - Webhook signature mismatch
  """

  @type error_type ::
          :api_error
          | :authentication_error
          | :forbidden_error
          | :validation_error
          | :not_found_error
          | :rate_limit_error
          | :api_connection_error
          | :signature_verification_error

  @type t :: %__MODULE__{
          type: error_type(),
          message: String.t() | nil,
          detail: String.t() | nil,
          error_code: String.t() | nil,
          http_status: integer() | nil,
          http_body: String.t() | nil,
          http_headers: [{String.t(), String.t()}] | nil,
          request_id: String.t() | nil,
          retry_after: number() | nil
        }

  defstruct [
    :type,
    :message,
    :detail,
    :error_code,
    :http_status,
    :http_body,
    :http_headers,
    :request_id,
    :retry_after
  ]

  @doc "Build an error from an HTTP response."
  @spec from_response(integer(), String.t(), [{String.t(), String.t()}]) :: t()
  def from_response(status, body, headers) do
    request_id = get_header(headers, "request-id") || get_header(headers, "x-request-id")
    retry_after = get_header(headers, "retry-after")

    # Polar returns error objects with structure like:
    # {"type": "ResourceNotFound", "detail": "message"} or
    # {"type": "HttpValidationError", "detail": "Invalid parameters"}
    error_data =
      case JSON.decode(body) do
        {:ok, data} -> data
        {:error, _} -> %{}
      end

    %__MODULE__{
      type: error_type_from_response(status, error_data),
      message: error_data["message"] || error_data["detail"],
      detail: error_data["detail"],
      error_code: error_data["type"] || error_data["error"],
      http_status: status,
      http_body: body,
      http_headers: headers,
      request_id: request_id,
      retry_after: parse_retry_after(retry_after)
    }
  end

  @doc "Build a network/connection error."
  @spec connection_error(String.t()) :: t()
  def connection_error(message) do
    %__MODULE__{type: :api_connection_error, message: message}
  end

  @doc "Build a webhook signature verification error."
  @spec signature_verification_error(String.t()) :: t()
  def signature_verification_error(message) do
    %__MODULE__{type: :signature_verification_error, message: message}
  end

  @doc "Returns true if this error is retryable."
  @spec retryable?(t()) :: boolean()
  def retryable?(%__MODULE__{type: :api_connection_error}), do: true
  def retryable?(%__MODULE__{http_status: status}) when status >= 500, do: true
  def retryable?(%__MODULE__{http_status: 429}), do: true
  def retryable?(_), do: false

  # Map HTTP status + error body to our error type.
  # Polar API returns domain-specific error types in the "type" field of the body.
  # We use those when present, falling back to HTTP status-based mapping.
  defp error_type_from_response(status, data) do
    case data["type"] do
      # FastAPI's default validation error type → our canonical :validation_error
      "HttpValidationError" -> :validation_error
      # Domain-specific error types (e.g. "ResourceNotFound" → :resource_not_found)
      type when is_binary(type) and type != "" ->
        type |> Macro.underscore() |> String.to_atom()
      # No body type → fall back to HTTP status
      _ -> status_to_error_type(status)
    end
  end

  defp status_to_error_type(401), do: :authentication_error
  defp status_to_error_type(403), do: :forbidden_error
  defp status_to_error_type(404), do: :not_found_error
  defp status_to_error_type(400), do: :validation_error
  defp status_to_error_type(422), do: :validation_error
  defp status_to_error_type(429), do: :rate_limit_error
  defp status_to_error_type(_status), do: :api_error

  defp get_header(headers, name) do
    case List.keyfind(headers, name, 0) do
      {_, value} -> value
      nil -> nil
    end
  end

  defp parse_retry_after(nil), do: nil

  defp parse_retry_after(value) do
    case Float.parse(value) do
      {seconds, _} -> seconds
      :error -> nil
    end
  end
end
