

# ResponseRoutePart

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**type** | [**TypeEnum**](#TypeEnum) |  | 
**mode** | [**ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**directions** | **String** |  | 
**distance** | **Integer** |  | 
**travelTime** | **Integer** |  | 
**coords** | [**List&lt;Coords&gt;**](Coords.md) |  | 
**direction** | **String** |  |  [optional]
**road** | **String** |  |  [optional]
**turn** | **String** |  |  [optional]
**line** | **String** |  |  [optional]
**departureStation** | **String** |  |  [optional]
**arrivalStation** | **String** |  |  [optional]
**departsAt** | **String** |  |  [optional]
**arrivesAt** | **String** |  |  [optional]
**numStops** | **Integer** |  |  [optional]



## Enum: TypeEnum

Name | Value
---- | -----
BASIC | &quot;basic&quot;
START_END | &quot;start_end&quot;
ROAD | &quot;road&quot;
PUBLIC_TRANSPORT | &quot;public_transport&quot;



