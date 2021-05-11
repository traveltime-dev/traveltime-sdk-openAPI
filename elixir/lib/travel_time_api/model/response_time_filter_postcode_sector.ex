# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.ResponseTimeFilterPostcodeSector do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"code",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"code" => String.t,
    :"properties" => TravelTimeAPI.Model.ResponseTimeFilterPostcodeSectorProperties.t
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.ResponseTimeFilterPostcodeSector do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, TravelTimeAPI.Model.ResponseTimeFilterPostcodeSectorProperties, options)
  end
end

