# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Api.PersonalInfoRoutes do
  @moduledoc """
  API calls for all endpoints tagged `PersonalInfoRoutes`.
  """

  alias OuraApi.Connection
  import OuraApi.RequestBuilder

  @doc """
  Single Personal Info Document

  ### Parameters

  - `connection` (OuraApi.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, OuraApi.Model.PersonalInfoResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec single_personal_info_document_v2_usercollection_personal_info_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, OuraApi.Model.PersonalInfoResponse.t} | {:error, Tesla.Env.t}
  def single_personal_info_document_v2_usercollection_personal_info_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2/usercollection/personal_info")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, OuraApi.Model.PersonalInfoResponse},
      {400, false},
      {401, false},
      {403, false},
      {429, false}
    ])
  end
end