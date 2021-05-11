# ResponseRoutePart
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Type** | **String** |  | 
**Mode** | [**ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**Directions** | **String** |  | 
**Distance** | **Int32** |  | 
**TravelTime** | **Int32** |  | 
**Coords** | [**Coords[]**](Coords.md) |  | 
**Direction** | **String** |  | [optional] 
**Road** | **String** |  | [optional] 
**Turn** | **String** |  | [optional] 
**Line** | **String** |  | [optional] 
**DepartureStation** | **String** |  | [optional] 
**ArrivalStation** | **String** |  | [optional] 
**DepartsAt** | **String** |  | [optional] 
**ArrivesAt** | **String** |  | [optional] 
**NumStops** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseRoutePart = Initialize-PSOpenAPIToolsResponseRoutePart  -Id null `
 -Type null `
 -Mode null `
 -Directions null `
 -Distance null `
 -TravelTime null `
 -Coords null `
 -Direction null `
 -Road null `
 -Turn null `
 -Line null `
 -DepartureStation null `
 -ArrivalStation null `
 -DepartsAt null `
 -ArrivesAt null `
 -NumStops null
```

- Convert the resource to JSON
```powershell
$ResponseRoutePart | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

