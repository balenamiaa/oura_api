# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.DailyActivityModel do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :class_5_min,
    :score,
    :active_calories,
    :average_met_minutes,
    :contributors,
    :equivalent_walking_distance,
    :high_activity_met_minutes,
    :high_activity_time,
    :inactivity_alerts,
    :low_activity_met_minutes,
    :low_activity_time,
    :medium_activity_met_minutes,
    :medium_activity_time,
    :met,
    :meters_to_target,
    :non_wear_time,
    :resting_time,
    :sedentary_met_minutes,
    :sedentary_time,
    :steps,
    :target_calories,
    :target_meters,
    :total_calories,
    :day,
    :timestamp
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :class_5_min => String.t | nil,
    :score => integer() | nil,
    :active_calories => integer(),
    :average_met_minutes => float(),
    :contributors => OuraApi.Model.ActivityContributors.t,
    :equivalent_walking_distance => integer(),
    :high_activity_met_minutes => integer(),
    :high_activity_time => integer(),
    :inactivity_alerts => integer(),
    :low_activity_met_minutes => integer(),
    :low_activity_time => integer(),
    :medium_activity_met_minutes => integer(),
    :medium_activity_time => integer(),
    :met => OuraApi.Model.Sample.t,
    :meters_to_target => integer(),
    :non_wear_time => integer(),
    :resting_time => integer(),
    :sedentary_met_minutes => integer(),
    :sedentary_time => integer(),
    :steps => integer(),
    :target_calories => integer(),
    :target_meters => integer(),
    :total_calories => integer(),
    :day => Date.t,
    :timestamp => String.t
  }

  alias OuraApi.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:contributors, :struct, OuraApi.Model.ActivityContributors)
     |> Deserializer.deserialize(:met, :struct, OuraApi.Model.Sample)
     |> Deserializer.deserialize(:day, :date, nil)
  end
end