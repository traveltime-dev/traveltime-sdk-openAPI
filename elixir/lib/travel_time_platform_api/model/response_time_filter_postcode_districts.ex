# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimePlatformAPI.Model.ResponseTimeFilterPostcodeDistricts do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"results"
  ]

  @type t :: %__MODULE__{
    :"results" => [ResponseTimeFilterPostcodeDistrictsResult]
  }
end

defimpl Poison.Decoder, for: TravelTimePlatformAPI.Model.ResponseTimeFilterPostcodeDistricts do
  import TravelTimePlatformAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, TravelTimePlatformAPI.Model.ResponseTimeFilterPostcodeDistrictsResult, options)
  end
end
