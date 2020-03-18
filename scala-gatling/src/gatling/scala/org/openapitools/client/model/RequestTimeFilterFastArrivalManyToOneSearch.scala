
package org.openapitools.client.model


case class RequestTimeFilterFastArrivalManyToOneSearch (
    _id: String,
    _arrivalLocationId: String,
    _departureLocationIds: List[String],
    _transportation: RequestTransportationFast,
    _travelTime: Integer,
    _arrivalTimePeriod: RequestArrivalTimePeriod,
    _properties: List[RequestTimeFilterFastProperty]
)
object RequestTimeFilterFastArrivalManyToOneSearch {
    def toStringBody(var_id: Object, var_arrivalLocationId: Object, var_departureLocationIds: Object, var_transportation: Object, var_travelTime: Object, var_arrivalTimePeriod: Object, var_properties: Object) =
        s"""
        | {
        | "id":$var_id,"arrivalLocationId":$var_arrivalLocationId,"departureLocationIds":$var_departureLocationIds,"transportation":$var_transportation,"travelTime":$var_travelTime,"arrivalTimePeriod":$var_arrivalTimePeriod,"properties":$var_properties
        | }
        """.stripMargin
}
