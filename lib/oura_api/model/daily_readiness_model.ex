# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.DailyReadinessModel do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :contributors,
    :day,
    :score,
    :temperature_deviation,
    :temperature_trend_deviation,
    :timestamp
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :contributors => OuraApi.Model.ReadinessContributors.t,
    :day => Date.t,
    :score => integer() | nil,
    :temperature_deviation => float() | nil,
    :temperature_trend_deviation => float() | nil,
    :timestamp => String.t
  }

  alias OuraApi.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:contributors, :struct, OuraApi.Model.ReadinessContributors)
     |> Deserializer.deserialize(:day, :date, nil)
  end
end
