
package org.openapitools.client.model

import java.time.OffsetDateTime

case class RequestTimeFilterPostcodesArrivalSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelTime: Integer,
    _arrivalTime: OffsetDateTime,
    _properties: List[RequestTimeFilterPostcodesProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodesArrivalSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelTime: Object, var_arrivalTime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelTime":$var_travelTime,"arrivalTime":$var_arrivalTime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
