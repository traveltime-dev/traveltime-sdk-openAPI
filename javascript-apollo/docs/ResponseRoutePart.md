# TravelTimeApi.ResponseRoutePart

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**type** | **String** |  | 
**mode** | [**ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**directions** | **String** |  | 
**distance** | **Number** |  | 
**travelTime** | **Number** |  | 
**coords** | [**[Coords]**](Coords.md) |  | 
**direction** | **String** |  | [optional] 
**road** | **String** |  | [optional] 
**turn** | **String** |  | [optional] 
**line** | **String** |  | [optional] 
**departureStation** | **String** |  | [optional] 
**arrivalStation** | **String** |  | [optional] 
**departsAt** | **String** |  | [optional] 
**arrivesAt** | **String** |  | [optional] 
**numStops** | **Number** |  | [optional] 



## Enum: TypeEnum


* `basic` (value: `"basic"`)

* `start_end` (value: `"start_end"`)

* `road` (value: `"road"`)

* `public_transport` (value: `"public_transport"`)




