# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.ResponseBox do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"min_lat",
    :"max_lat",
    :"min_lng",
    :"max_lng"
  ]

  @type t :: %__MODULE__{
    :"min_lat" => float(),
    :"max_lat" => float(),
    :"min_lng" => float(),
    :"max_lng" => float()
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.ResponseBox do
  def decode(value, _options) do
    value
  end
end
