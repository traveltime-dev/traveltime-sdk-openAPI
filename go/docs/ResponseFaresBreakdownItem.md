# ResponseFaresBreakdownItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Modes** | [**[]ResponseTransportationMode**](ResponseTransportationMode.md) |  | 
**RoutePartIds** | **[]int32** |  | 
**Tickets** | [**[]ResponseFareTicket**](ResponseFareTicket.md) |  | 

## Methods

### NewResponseFaresBreakdownItem

`func NewResponseFaresBreakdownItem(modes []ResponseTransportationMode, routePartIds []int32, tickets []ResponseFareTicket, ) *ResponseFaresBreakdownItem`

NewResponseFaresBreakdownItem instantiates a new ResponseFaresBreakdownItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseFaresBreakdownItemWithDefaults

`func NewResponseFaresBreakdownItemWithDefaults() *ResponseFaresBreakdownItem`

NewResponseFaresBreakdownItemWithDefaults instantiates a new ResponseFaresBreakdownItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetModes

`func (o *ResponseFaresBreakdownItem) GetModes() []ResponseTransportationMode`

GetModes returns the Modes field if non-nil, zero value otherwise.

### GetModesOk

`func (o *ResponseFaresBreakdownItem) GetModesOk() (*[]ResponseTransportationMode, bool)`

GetModesOk returns a tuple with the Modes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModes

`func (o *ResponseFaresBreakdownItem) SetModes(v []ResponseTransportationMode)`

SetModes sets Modes field to given value.


### GetRoutePartIds

`func (o *ResponseFaresBreakdownItem) GetRoutePartIds() []int32`

GetRoutePartIds returns the RoutePartIds field if non-nil, zero value otherwise.

### GetRoutePartIdsOk

`func (o *ResponseFaresBreakdownItem) GetRoutePartIdsOk() (*[]int32, bool)`

GetRoutePartIdsOk returns a tuple with the RoutePartIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoutePartIds

`func (o *ResponseFaresBreakdownItem) SetRoutePartIds(v []int32)`

SetRoutePartIds sets RoutePartIds field to given value.


### GetTickets

`func (o *ResponseFaresBreakdownItem) GetTickets() []ResponseFareTicket`

GetTickets returns the Tickets field if non-nil, zero value otherwise.

### GetTicketsOk

`func (o *ResponseFaresBreakdownItem) GetTicketsOk() (*[]ResponseFareTicket, bool)`

GetTicketsOk returns a tuple with the Tickets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTickets

`func (o *ResponseFaresBreakdownItem) SetTickets(v []ResponseFareTicket)`

SetTickets sets Tickets field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


