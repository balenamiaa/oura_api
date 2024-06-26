# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Api.RestModePeriodRoutes do
  @moduledoc """
  API calls for all endpoints tagged `RestModePeriodRoutes`.
  """

  alias OuraApi.Connection
  import OuraApi.RequestBuilder

  @doc """
  Multiple Rest Mode Period Documents

  ### Parameters

  - `connection` (OuraApi.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:start_date` (Date.t):
    - `:end_date` (Date.t):
    - `:next_token` (String.t):

  ### Returns

  - `{:ok, OuraApi.Model.MultiDocumentResponseRestModePeriodModel.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec multiple_rest_mode_period_documents_v2_usercollection_rest_mode_period_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, OuraApi.Model.HttpValidationError.t} | {:ok, OuraApi.Model.MultiDocumentResponseRestModePeriodModel.t} | {:error, Tesla.Env.t}
  def multiple_rest_mode_period_documents_v2_usercollection_rest_mode_period_get(connection, opts \\ []) do
    optional_params = %{
      :start_date => :query,
      :end_date => :query,
      :next_token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v2/usercollection/rest_mode_period")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, OuraApi.Model.MultiDocumentResponseRestModePeriodModel},
      {400, false},
      {401, false},
      {403, false},
      {429, false},
      {422, OuraApi.Model.HttpValidationError}
    ])
  end

  @doc """
  Single Rest Mode Period Document

  ### Parameters

  - `connection` (OuraApi.Connection): Connection to server
  - `document_id` (String.t):
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, OuraApi.Model.RestModePeriodModel.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec single_rest_mode_period_document_v2_usercollection_rest_mode_period_document_id_get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, OuraApi.Model.HttpValidationError.t} | {:ok, OuraApi.Model.RestModePeriodModel.t} | {:error, Tesla.Env.t}
  def single_rest_mode_period_document_v2_usercollection_rest_mode_period_document_id_get(connection, document_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2/usercollection/rest_mode_period/#{document_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, OuraApi.Model.RestModePeriodModel},
      {404, false},
      {400, false},
      {401, false},
      {403, false},
      {429, false},
      {422, OuraApi.Model.HttpValidationError}
    ])
  end
end
