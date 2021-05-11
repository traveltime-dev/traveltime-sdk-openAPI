# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.RequestRoutesDepartureSearch do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"departure_location_id",
    :"arrival_location_ids",
    :"transportation",
    :"departure_time",
    :"properties",
    :"range"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"departure_location_id" => String.t,
    :"arrival_location_ids" => [String.t],
    :"transportation" => TravelTimeAPI.Model.RequestTransportation.t,
    :"departure_time" => DateTime.t,
    :"properties" => [TravelTimeAPI.Model.RequestRoutesProperty.t],
    :"range" => TravelTimeAPI.Model.RequestRangeFull.t | nil
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.RequestRoutesDepartureSearch do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"transportation", :struct, TravelTimeAPI.Model.RequestTransportation, options)
    |> deserialize(:"properties", :list, TravelTimeAPI.Model.RequestRoutesProperty, options)
    |> deserialize(:"range", :struct, TravelTimeAPI.Model.RequestRangeFull, options)
  end
end

