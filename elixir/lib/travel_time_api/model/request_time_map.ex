# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.RequestTimeMap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"departure_searches",
    :"arrival_searches",
    :"unions",
    :"intersections"
  ]

  @type t :: %__MODULE__{
    :"departure_searches" => [TravelTimeAPI.Model.RequestTimeMapDepartureSearch.t] | nil,
    :"arrival_searches" => [TravelTimeAPI.Model.RequestTimeMapArrivalSearch.t] | nil,
    :"unions" => [TravelTimeAPI.Model.RequestUnionOnIntersection.t] | nil,
    :"intersections" => [TravelTimeAPI.Model.RequestUnionOnIntersection.t] | nil
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.RequestTimeMap do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"departure_searches", :list, TravelTimeAPI.Model.RequestTimeMapDepartureSearch, options)
    |> deserialize(:"arrival_searches", :list, TravelTimeAPI.Model.RequestTimeMapArrivalSearch, options)
    |> deserialize(:"unions", :list, TravelTimeAPI.Model.RequestUnionOnIntersection, options)
    |> deserialize(:"intersections", :list, TravelTimeAPI.Model.RequestUnionOnIntersection, options)
  end
end

