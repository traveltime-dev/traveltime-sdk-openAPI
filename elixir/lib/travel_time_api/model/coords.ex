# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.Coords do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"lat",
    :"lng"
  ]

  @type t :: %__MODULE__{
    :"lat" => float(),
    :"lng" => float()
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.Coords do
  def decode(value, _options) do
    value
  end
end

