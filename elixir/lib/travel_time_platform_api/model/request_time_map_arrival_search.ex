# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimePlatformAPI.Model.RequestTimeMapArrivalSearch do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"coords",
    :"transportation",
    :"travel_time",
    :"arrival_time",
    :"properties",
    :"range"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"coords" => Coords,
    :"transportation" => RequestTransportation,
    :"travel_time" => integer(),
    :"arrival_time" => DateTime.t,
    :"properties" => [RequestTimeMapProperty] | nil,
    :"range" => RequestRangeNoMaxResults | nil
  }
end

defimpl Poison.Decoder, for: TravelTimePlatformAPI.Model.RequestTimeMapArrivalSearch do
  import TravelTimePlatformAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"coords", :struct, TravelTimePlatformAPI.Model.Coords, options)
    |> deserialize(:"transportation", :struct, TravelTimePlatformAPI.Model.RequestTransportation, options)
    |> deserialize(:"properties", :list, TravelTimePlatformAPI.Model.RequestTimeMapProperty, options)
    |> deserialize(:"range", :struct, TravelTimePlatformAPI.Model.RequestRangeNoMaxResults, options)
  end
end
