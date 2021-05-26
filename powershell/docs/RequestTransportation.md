# RequestTransportation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**DisableBorderCrossing** | **Boolean** |  | [optional] 
**PtChangeDelay** | **Int32** |  | [optional] 
**WalkingTime** | **Int32** |  | [optional] 
**DrivingTimeToStation** | **Int32** |  | [optional] 
**CyclingTimeToStation** | **Int32** |  | [optional] 
**ParkingTime** | **Int32** |  | [optional] 
**BoardingTime** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestTransportation = Initialize-PSOpenAPIToolsRequestTransportation  -Type null `
 -DisableBorderCrossing null `
 -PtChangeDelay null `
 -WalkingTime null `
 -DrivingTimeToStation null `
 -CyclingTimeToStation null `
 -ParkingTime null `
 -BoardingTime null
```

- Convert the resource to JSON
```powershell
$RequestTransportation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

