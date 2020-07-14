# ResponseFares

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Breakdown** | [**[]ResponseFaresBreakdownItem**](ResponseFaresBreakdownItem.md) |  | 
**TicketsTotal** | [**[]ResponseFareTicket**](ResponseFareTicket.md) |  | 

## Methods

### NewResponseFares

`func NewResponseFares(breakdown []ResponseFaresBreakdownItem, ticketsTotal []ResponseFareTicket, ) *ResponseFares`

NewResponseFares instantiates a new ResponseFares object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponseFaresWithDefaults

`func NewResponseFaresWithDefaults() *ResponseFares`

NewResponseFaresWithDefaults instantiates a new ResponseFares object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBreakdown

`func (o *ResponseFares) GetBreakdown() []ResponseFaresBreakdownItem`

GetBreakdown returns the Breakdown field if non-nil, zero value otherwise.

### GetBreakdownOk

`func (o *ResponseFares) GetBreakdownOk() (*[]ResponseFaresBreakdownItem, bool)`

GetBreakdownOk returns a tuple with the Breakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBreakdown

`func (o *ResponseFares) SetBreakdown(v []ResponseFaresBreakdownItem)`

SetBreakdown sets Breakdown field to given value.


### GetTicketsTotal

`func (o *ResponseFares) GetTicketsTotal() []ResponseFareTicket`

GetTicketsTotal returns the TicketsTotal field if non-nil, zero value otherwise.

### GetTicketsTotalOk

`func (o *ResponseFares) GetTicketsTotalOk() (*[]ResponseFareTicket, bool)`

GetTicketsTotalOk returns a tuple with the TicketsTotal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTicketsTotal

`func (o *ResponseFares) SetTicketsTotal(v []ResponseFareTicket)`

SetTicketsTotal sets TicketsTotal field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


