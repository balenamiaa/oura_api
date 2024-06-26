# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.ReadinessSummary do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :contributors,
    :score,
    :temperature_deviation,
    :temperature_trend_deviation
  ]

  @type t :: %__MODULE__{
    :contributors => OuraApi.Model.ReadinessContributors.t,
    :score => integer() | nil,
    :temperature_deviation => float() | nil,
    :temperature_trend_deviation => float() | nil
  }

  alias OuraApi.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:contributors, :struct, OuraApi.Model.ReadinessContributors)
  end
end
