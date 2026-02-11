# File generated from our OpenAPI spec
defmodule PolarExpress.Services.FilesService do
  @moduledoc """
  Files

  Files API operations.
  """
  alias PolarExpress.Client

  @doc """
  Complete File Upload

  Complete a file upload.

  **Scopes**: `files:write`

  See `PolarExpress.Params.FilesCompleteFileUploadParams` for parameter details.
  """
  @spec complete_file_upload(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.DownloadableFileRead.t()} | {:error, PolarExpress.Error.t()}
  def complete_file_upload(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/files/#{id}/uploaded",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.DownloadableFileRead)
    )
  end

  @doc """
  Create File

  Create a file.

  **Scopes**: `files:write`

  See `PolarExpress.Params.FilesCreateFileParams` for parameter details.
  """
  @spec create_file(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.FileUpload.t()} | {:error, PolarExpress.Error.t()}
  def create_file(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/files/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.FileUpload)
    )
  end

  @doc """
  Delete File

  Delete a file.

  **Scopes**: `files:write`

  See `PolarExpress.Params.FilesDeleteFileParams` for parameter details.
  """
  @spec delete_file(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_file(client, id, params \\ %{}, opts \\ []) do
    Client.request(client, :delete, "/v1/files/#{id}", Keyword.merge(opts, params: params))
  end

  @doc """
  List Files

  List files.

  **Scopes**: `files:read` `files:write`

  See `PolarExpress.Params.FilesListFilesParams` for parameter details.
  """
  @spec list_files(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.ListResource_FileRead_.t()}
          | {:error, PolarExpress.Error.t()}
  def list_files(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/files/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.ListResource_FileRead_)
    )
  end

  @doc """
  Update File

  Update a file.

  **Scopes**: `files:write`

  See `PolarExpress.Params.FilesUpdateFileParams` for parameter details.
  """
  @spec update_file(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.DownloadableFileRead.t()} | {:error, PolarExpress.Error.t()}
  def update_file(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/files/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.DownloadableFileRead)
    )
  end
end
