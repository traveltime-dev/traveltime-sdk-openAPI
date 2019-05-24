# RequestTimeFilterPostcodeSectorsDepartureSearch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**transportation** | [***models::RequestTransportation**](RequestTransportation.md) |  | 
**travel_time** | **u16** |  | 
**departure_time** | [**chrono::DateTime<chrono::Utc>**](DateTime.md) |  | 
**reachable_postcodes_threshold** | **f64** |  | 
**properties** | [**Vec<models::RequestTimeFilterPostcodeSectorsProperty>**](RequestTimeFilterPostcodeSectorsProperty.md) |  | 
**range** | [***models::RequestRangeFull**](RequestRangeFull.md) |  | [optional] [default to None]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


