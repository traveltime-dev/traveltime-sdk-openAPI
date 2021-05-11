# RequestTimeFilterPostcodeDistrictsArrivalSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**ArrivalTime** | **time.Time** |  | 
**ReachablePostcodesThreshold** | **float64** |  | 
**Properties** | [**[]RequestTimeFilterPostcodeDistrictsProperty**](RequestTimeFilterPostcodeDistrictsProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestTimeFilterPostcodeDistrictsArrivalSearch

`func NewRequestTimeFilterPostcodeDistrictsArrivalSearch(id string, transportation RequestTransportation, travelTime int32, arrivalTime time.Time, reachablePostcodesThreshold float64, properties []RequestTimeFilterPostcodeDistrictsProperty, ) *RequestTimeFilterPostcodeDistrictsArrivalSearch`

NewRequestTimeFilterPostcodeDistrictsArrivalSearch instantiates a new RequestTimeFilterPostcodeDistrictsArrivalSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterPostcodeDistrictsArrivalSearchWithDefaults

`func NewRequestTimeFilterPostcodeDistrictsArrivalSearchWithDefaults() *RequestTimeFilterPostcodeDistrictsArrivalSearch`

NewRequestTimeFilterPostcodeDistrictsArrivalSearchWithDefaults instantiates a new RequestTimeFilterPostcodeDistrictsArrivalSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) SetId(v string)`

SetId sets Id field to given value.


### GetTransportation

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetArrivalTime

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetArrivalTime() time.Time`

GetArrivalTime returns the ArrivalTime field if non-nil, zero value otherwise.

### GetArrivalTimeOk

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetArrivalTimeOk() (*time.Time, bool)`

GetArrivalTimeOk returns a tuple with the ArrivalTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArrivalTime

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) SetArrivalTime(v time.Time)`

SetArrivalTime sets ArrivalTime field to given value.


### GetReachablePostcodesThreshold

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetReachablePostcodesThreshold() float64`

GetReachablePostcodesThreshold returns the ReachablePostcodesThreshold field if non-nil, zero value otherwise.

### GetReachablePostcodesThresholdOk

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetReachablePostcodesThresholdOk() (*float64, bool)`

GetReachablePostcodesThresholdOk returns a tuple with the ReachablePostcodesThreshold field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReachablePostcodesThreshold

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) SetReachablePostcodesThreshold(v float64)`

SetReachablePostcodesThreshold sets ReachablePostcodesThreshold field to given value.


### GetProperties

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetProperties() []RequestTimeFilterPostcodeDistrictsProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetPropertiesOk() (*[]RequestTimeFilterPostcodeDistrictsProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) SetProperties(v []RequestTimeFilterPostcodeDistrictsProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeFilterPostcodeDistrictsArrivalSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


