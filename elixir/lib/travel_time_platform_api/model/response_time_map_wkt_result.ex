# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimePlatformAPI.Model.ResponseTimeMapWktResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"search_id",
    :"shape",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"search_id" => String.t,
    :"shape" => String.t,
    :"properties" => ResponseTimeMapProperties
  }
end

defimpl Poison.Decoder, for: TravelTimePlatformAPI.Model.ResponseTimeMapWktResult do
  import TravelTimePlatformAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, TravelTimePlatformAPI.Model.ResponseTimeMapProperties, options)
  end
end
