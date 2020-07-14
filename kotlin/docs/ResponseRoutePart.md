
# ResponseRoutePart

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.String** |  | 
**type** | [**inline**](#TypeEnum) |  | 
**mode** | [**ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**directions** | **kotlin.String** |  | 
**distance** | **kotlin.Int** |  | 
**travelTime** | **kotlin.Int** |  | 
**coords** | [**kotlin.collections.List&lt;Coords&gt;**](Coords.md) |  | 
**direction** | **kotlin.String** |  |  [optional]
**road** | **kotlin.String** |  |  [optional]
**turn** | **kotlin.String** |  |  [optional]
**line** | **kotlin.String** |  |  [optional]
**departureStation** | **kotlin.String** |  |  [optional]
**arrivalStation** | **kotlin.String** |  |  [optional]
**departsAt** | **kotlin.String** |  |  [optional]
**arrivesAt** | **kotlin.String** |  |  [optional]
**numStops** | **kotlin.Int** |  |  [optional]


<a name="TypeEnum"></a>
## Enum: type
Name | Value
---- | -----
type | basic, start_end, road, public_transport



