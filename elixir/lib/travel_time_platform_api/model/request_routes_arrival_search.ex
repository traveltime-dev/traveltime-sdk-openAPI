# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimePlatformAPI.Model.RequestRoutesArrivalSearch do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"departure_location_ids",
    :"arrival_location_id",
    :"transportation",
    :"arrival_time",
    :"properties",
    :"range"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"departure_location_ids" => [String.t],
    :"arrival_location_id" => String.t,
    :"transportation" => RequestTransportation,
    :"arrival_time" => DateTime.t,
    :"properties" => [RequestRoutesProperty],
    :"range" => RequestRangeFull | nil
  }
end

defimpl Poison.Decoder, for: TravelTimePlatformAPI.Model.RequestRoutesArrivalSearch do
  import TravelTimePlatformAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"transportation", :struct, TravelTimePlatformAPI.Model.RequestTransportation, options)
    |> deserialize(:"properties", :list, TravelTimePlatformAPI.Model.RequestRoutesProperty, options)
    |> deserialize(:"range", :struct, TravelTimePlatformAPI.Model.RequestRangeFull, options)
  end
end
