# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.ResponseTimeFilterProperties do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"travel_time",
    :"distance",
    :"distance_breakdown",
    :"fares",
    :"route"
  ]

  @type t :: %__MODULE__{
    :"travel_time" => integer() | nil,
    :"distance" => integer() | nil,
    :"distance_breakdown" => [TravelTimeAPI.Model.ResponseDistanceBreakdownItem.t] | nil,
    :"fares" => TravelTimeAPI.Model.ResponseFares.t | nil,
    :"route" => TravelTimeAPI.Model.ResponseRoute.t | nil
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.ResponseTimeFilterProperties do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"distance_breakdown", :list, TravelTimeAPI.Model.ResponseDistanceBreakdownItem, options)
    |> deserialize(:"fares", :struct, TravelTimeAPI.Model.ResponseFares, options)
    |> deserialize(:"route", :struct, TravelTimeAPI.Model.ResponseRoute, options)
  end
end

