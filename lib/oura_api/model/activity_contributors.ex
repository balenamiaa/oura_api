# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.ActivityContributors do
  @moduledoc """
  Object defining activity score contributors.
  """

  @derive Jason.Encoder
  defstruct [
    :meet_daily_targets,
    :move_every_hour,
    :recovery_time,
    :stay_active,
    :training_frequency,
    :training_volume
  ]

  @type t :: %__MODULE__{
    :meet_daily_targets => integer() | nil,
    :move_every_hour => integer() | nil,
    :recovery_time => integer() | nil,
    :stay_active => integer() | nil,
    :training_frequency => integer() | nil,
    :training_volume => integer() | nil
  }

  def decode(value) do
    value
  end
end
