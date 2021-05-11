# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.ResponseShape do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"shell",
    :"holes"
  ]

  @type t :: %__MODULE__{
    :"shell" => [TravelTimeAPI.Model.Coords.t],
    :"holes" => [[TravelTimeAPI.Model.Coords.t]]
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.ResponseShape do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"shell", :list, TravelTimeAPI.Model.Coords, options)
  end
end

