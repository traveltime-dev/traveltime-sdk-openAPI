# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimePlatformAPI.Model.RequestLocation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"coords"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"coords" => Coords
  }
end

defimpl Poison.Decoder, for: TravelTimePlatformAPI.Model.RequestLocation do
  import TravelTimePlatformAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"coords", :struct, TravelTimePlatformAPI.Model.Coords, options)
  end
end
