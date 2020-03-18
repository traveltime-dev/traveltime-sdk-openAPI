
package org.openapitools.client.model


case class RequestTimeFilterFastArrivalOneToManySearch (
    _id: String,
    _departureLocationId: String,
    _arrivalLocationIds: List[String],
    _transportation: RequestTransportationFast,
    _travelTime: Integer,
    _arrivalTimePeriod: RequestArrivalTimePeriod,
    _properties: List[RequestTimeFilterFastProperty]
)
object RequestTimeFilterFastArrivalOneToManySearch {
    def toStringBody(var_id: Object, var_departureLocationId: Object, var_arrivalLocationIds: Object, var_transportation: Object, var_travelTime: Object, var_arrivalTimePeriod: Object, var_properties: Object) =
        s"""
        | {
        | "id":$var_id,"departureLocationId":$var_departureLocationId,"arrivalLocationIds":$var_arrivalLocationIds,"transportation":$var_transportation,"travelTime":$var_travelTime,"arrivalTimePeriod":$var_arrivalTimePeriod,"properties":$var_properties
        | }
        """.stripMargin
}
