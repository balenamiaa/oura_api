# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.SleepModel do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :average_breath,
    :average_heart_rate,
    :average_hrv,
    :awake_time,
    :bedtime_end,
    :bedtime_start,
    :day,
    :deep_sleep_duration,
    :efficiency,
    :heart_rate,
    :hrv,
    :latency,
    :light_sleep_duration,
    :low_battery_alert,
    :lowest_heart_rate,
    :movement_30_sec,
    :period,
    :readiness,
    :readiness_score_delta,
    :rem_sleep_duration,
    :restless_periods,
    :sleep_phase_5_min,
    :sleep_score_delta,
    :sleep_algorithm_version,
    :time_in_bed,
    :total_sleep_duration,
    :type
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :average_breath => float() | nil,
    :average_heart_rate => float() | nil,
    :average_hrv => integer() | nil,
    :awake_time => integer() | nil,
    :bedtime_end => String.t,
    :bedtime_start => String.t,
    :day => Date.t,
    :deep_sleep_duration => integer() | nil,
    :efficiency => integer() | nil,
    :heart_rate => OuraApi.Model.Sample.t | nil,
    :hrv => OuraApi.Model.Sample.t | nil,
    :latency => integer() | nil,
    :light_sleep_duration => integer() | nil,
    :low_battery_alert => boolean(),
    :lowest_heart_rate => integer() | nil,
    :movement_30_sec => String.t | nil,
    :period => integer(),
    :readiness => OuraApi.Model.ReadinessSummary.t | nil,
    :readiness_score_delta => integer() | nil,
    :rem_sleep_duration => integer() | nil,
    :restless_periods => integer() | nil,
    :sleep_phase_5_min => String.t | nil,
    :sleep_score_delta => integer() | nil,
    :sleep_algorithm_version => OuraApi.Model.SleepAlgorithmVersion.t | nil,
    :time_in_bed => integer(),
    :total_sleep_duration => integer() | nil,
    :type => OuraApi.Model.SleepType.t
  }

  alias OuraApi.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:day, :date, nil)
     |> Deserializer.deserialize(:heart_rate, :struct, OuraApi.Model.Sample)
     |> Deserializer.deserialize(:hrv, :struct, OuraApi.Model.Sample)
     |> Deserializer.deserialize(:readiness, :struct, OuraApi.Model.ReadinessSummary)
     |> Deserializer.deserialize(:sleep_algorithm_version, :struct, OuraApi.Model.SleepAlgorithmVersion)
     |> Deserializer.deserialize(:type, :struct, OuraApi.Model.SleepType)
  end
end