# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OuraApi.Model.PersonalInfoResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :age,
    :weight,
    :height,
    :biological_sex,
    :email
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :age => integer() | nil,
    :weight => float() | nil,
    :height => float() | nil,
    :biological_sex => String.t | nil,
    :email => String.t | nil
  }

  def decode(value) do
    value
  end
end
