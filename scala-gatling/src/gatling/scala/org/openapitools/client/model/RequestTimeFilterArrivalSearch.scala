
package org.openapitools.client.model

import java.time.OffsetDateTime

case class RequestTimeFilterArrivalSearch (
    _id: String,
    _departureLocationIds: List[String],
    _arrivalLocationId: String,
    _transportation: RequestTransportation,
    _travelTime: Integer,
    _arrivalTime: OffsetDateTime,
    _properties: List[RequestTimeFilterProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterArrivalSearch {
    def toStringBody(var_id: Object, var_departureLocationIds: Object, var_arrivalLocationId: Object, var_transportation: Object, var_travelTime: Object, var_arrivalTime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"departureLocationIds":$var_departureLocationIds,"arrivalLocationId":$var_arrivalLocationId,"transportation":$var_transportation,"travelTime":$var_travelTime,"arrivalTime":$var_arrivalTime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
