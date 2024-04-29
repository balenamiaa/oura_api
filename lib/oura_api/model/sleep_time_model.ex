# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.SleepTimeModel do
  @moduledoc """
  Object contains suggested bedtime for the user.
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :day,
    :optimal_bedtime,
    :recommendation,
    :status
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :day => Date.t,
    :optimal_bedtime => OuraApi.Model.SleepTimeWindow.t | nil,
    :recommendation => OuraApi.Model.SleepTimeRecommendation.t | nil,
    :status => OuraApi.Model.SleepTimeStatus.t | nil
  }

  alias OuraApi.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:day, :date, nil)
     |> Deserializer.deserialize(:optimal_bedtime, :struct, OuraApi.Model.SleepTimeWindow)
     |> Deserializer.deserialize(:recommendation, :struct, OuraApi.Model.SleepTimeRecommendation)
     |> Deserializer.deserialize(:status, :struct, OuraApi.Model.SleepTimeStatus)
  end
end