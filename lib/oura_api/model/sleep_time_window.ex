# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.SleepTimeWindow do
  @moduledoc """
  Object defining sleep time window
  """

  @derive Jason.Encoder
  defstruct [
    :day_tz,
    :end_offset,
    :start_offset
  ]

  @type t :: %__MODULE__{
    :day_tz => integer(),
    :end_offset => integer(),
    :start_offset => integer()
  }

  def decode(value) do
    value
  end
end
