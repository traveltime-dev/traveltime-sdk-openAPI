# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.ResponseRoutes do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"results"
  ]

  @type t :: %__MODULE__{
    :"results" => [TravelTimeAPI.Model.ResponseRoutesResult.t]
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.ResponseRoutes do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, TravelTimeAPI.Model.ResponseRoutesResult, options)
  end
end

