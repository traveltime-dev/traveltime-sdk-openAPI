# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.ResponseTimeMapBoundingBoxes do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"results"
  ]

  @type t :: %__MODULE__{
    :"results" => [TravelTimeAPI.Model.ResponseTimeMapBoundingBoxesResult.t]
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.ResponseTimeMapBoundingBoxes do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, TravelTimeAPI.Model.ResponseTimeMapBoundingBoxesResult, options)
  end
end

