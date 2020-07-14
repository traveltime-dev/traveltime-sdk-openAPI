# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TravelTimeAPI.Model.ResponseFares do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"breakdown",
    :"tickets_total"
  ]

  @type t :: %__MODULE__{
    :"breakdown" => [ResponseFaresBreakdownItem],
    :"tickets_total" => [ResponseFareTicket]
  }
end

defimpl Poison.Decoder, for: TravelTimeAPI.Model.ResponseFares do
  import TravelTimeAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"breakdown", :list, TravelTimeAPI.Model.ResponseFaresBreakdownItem, options)
    |> deserialize(:"tickets_total", :list, TravelTimeAPI.Model.ResponseFareTicket, options)
  end
end
