# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.WorkoutModel do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :activity,
    :calories,
    :day,
    :distance,
    :end_datetime,
    :intensity,
    :label,
    :source,
    :start_datetime
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :activity => String.t,
    :calories => float() | nil,
    :day => Date.t,
    :distance => float() | nil,
    :end_datetime => String.t,
    :intensity => OuraApi.Model.WorkoutIntensity.t,
    :label => String.t | nil,
    :source => OuraApi.Model.WorkoutSource.t,
    :start_datetime => String.t
  }

  alias OuraApi.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:day, :date, nil)
     |> Deserializer.deserialize(:intensity, :struct, OuraApi.Model.WorkoutIntensity)
     |> Deserializer.deserialize(:source, :struct, OuraApi.Model.WorkoutSource)
  end
end
