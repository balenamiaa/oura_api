# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Api.SessionRoutes do
  @moduledoc """
  API calls for all endpoints tagged `SessionRoutes`.
  """

  alias OuraApi.Connection
  import OuraApi.RequestBuilder

  @doc """
  Multiple Session Documents

  ### Parameters

  - `connection` (OuraApi.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:start_date` (Date.t):
    - `:end_date` (Date.t):
    - `:next_token` (String.t):

  ### Returns

  - `{:ok, OuraApi.Model.MultiDocumentResponseSessionModel.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec multiple_session_documents_v2_usercollection_session_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, OuraApi.Model.HttpValidationError.t} | {:ok, OuraApi.Model.MultiDocumentResponseSessionModel.t} | {:error, Tesla.Env.t}
  def multiple_session_documents_v2_usercollection_session_get(connection, opts \\ []) do
    optional_params = %{
      :start_date => :query,
      :end_date => :query,
      :next_token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v2/usercollection/session")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, OuraApi.Model.MultiDocumentResponseSessionModel},
      {400, false},
      {401, false},
      {403, false},
      {429, false},
      {422, OuraApi.Model.HttpValidationError}
    ])
  end

  @doc """
  Single Session Document

  ### Parameters

  - `connection` (OuraApi.Connection): Connection to server
  - `document_id` (String.t):
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, OuraApi.Model.SessionModel.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec single_session_document_v2_usercollection_session_document_id_get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, OuraApi.Model.SessionModel.t} | {:ok, OuraApi.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def single_session_document_v2_usercollection_session_document_id_get(connection, document_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2/usercollection/session/#{document_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, OuraApi.Model.SessionModel},
      {404, false},
      {400, false},
      {401, false},
      {403, false},
      {429, false},
      {422, OuraApi.Model.HttpValidationError}
    ])
  end
end