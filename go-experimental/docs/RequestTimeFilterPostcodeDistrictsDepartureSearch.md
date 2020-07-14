# RequestTimeFilterPostcodeDistrictsDepartureSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Transportation** | [**RequestTransportation**](RequestTransportation.md) |  | 
**TravelTime** | **int32** |  | 
**DepartureTime** | [**time.Time**](time.Time.md) |  | 
**ReachablePostcodesThreshold** | **float64** |  | 
**Properties** | [**[]RequestTimeFilterPostcodeDistrictsProperty**](RequestTimeFilterPostcodeDistrictsProperty.md) |  | 
**Range** | Pointer to [**RequestRangeFull**](RequestRangeFull.md) |  | [optional] 

## Methods

### NewRequestTimeFilterPostcodeDistrictsDepartureSearch

`func NewRequestTimeFilterPostcodeDistrictsDepartureSearch(id string, transportation RequestTransportation, travelTime int32, departureTime time.Time, reachablePostcodesThreshold float64, properties []RequestTimeFilterPostcodeDistrictsProperty, ) *RequestTimeFilterPostcodeDistrictsDepartureSearch`

NewRequestTimeFilterPostcodeDistrictsDepartureSearch instantiates a new RequestTimeFilterPostcodeDistrictsDepartureSearch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestTimeFilterPostcodeDistrictsDepartureSearchWithDefaults

`func NewRequestTimeFilterPostcodeDistrictsDepartureSearchWithDefaults() *RequestTimeFilterPostcodeDistrictsDepartureSearch`

NewRequestTimeFilterPostcodeDistrictsDepartureSearchWithDefaults instantiates a new RequestTimeFilterPostcodeDistrictsDepartureSearch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) SetId(v string)`

SetId sets Id field to given value.


### GetTransportation

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetTransportation() RequestTransportation`

GetTransportation returns the Transportation field if non-nil, zero value otherwise.

### GetTransportationOk

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetTransportationOk() (*RequestTransportation, bool)`

GetTransportationOk returns a tuple with the Transportation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransportation

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) SetTransportation(v RequestTransportation)`

SetTransportation sets Transportation field to given value.


### GetTravelTime

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetTravelTime() int32`

GetTravelTime returns the TravelTime field if non-nil, zero value otherwise.

### GetTravelTimeOk

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetTravelTimeOk() (*int32, bool)`

GetTravelTimeOk returns a tuple with the TravelTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTravelTime

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) SetTravelTime(v int32)`

SetTravelTime sets TravelTime field to given value.


### GetDepartureTime

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetDepartureTime() time.Time`

GetDepartureTime returns the DepartureTime field if non-nil, zero value otherwise.

### GetDepartureTimeOk

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetDepartureTimeOk() (*time.Time, bool)`

GetDepartureTimeOk returns a tuple with the DepartureTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartureTime

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) SetDepartureTime(v time.Time)`

SetDepartureTime sets DepartureTime field to given value.


### GetReachablePostcodesThreshold

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetReachablePostcodesThreshold() float64`

GetReachablePostcodesThreshold returns the ReachablePostcodesThreshold field if non-nil, zero value otherwise.

### GetReachablePostcodesThresholdOk

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetReachablePostcodesThresholdOk() (*float64, bool)`

GetReachablePostcodesThresholdOk returns a tuple with the ReachablePostcodesThreshold field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReachablePostcodesThreshold

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) SetReachablePostcodesThreshold(v float64)`

SetReachablePostcodesThreshold sets ReachablePostcodesThreshold field to given value.


### GetProperties

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetProperties() []RequestTimeFilterPostcodeDistrictsProperty`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetPropertiesOk() (*[]RequestTimeFilterPostcodeDistrictsProperty, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) SetProperties(v []RequestTimeFilterPostcodeDistrictsProperty)`

SetProperties sets Properties field to given value.


### GetRange

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetRange() RequestRangeFull`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) GetRangeOk() (*RequestRangeFull, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) SetRange(v RequestRangeFull)`

SetRange sets Range field to given value.

### HasRange

`func (o *RequestTimeFilterPostcodeDistrictsDepartureSearch) HasRange() bool`

HasRange returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


