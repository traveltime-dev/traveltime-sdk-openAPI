
package org.openapitools.client.model

import java.time.OffsetDateTime

case class RequestTimeFilterPostcodeSectorsArrivalSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelTime: Integer,
    _arrivalTime: OffsetDateTime,
    _reachablePostcodesThreshold: Double,
    _properties: List[RequestTimeFilterPostcodeSectorsProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodeSectorsArrivalSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelTime: Object, var_arrivalTime: Object, var_reachablePostcodesThreshold: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelTime":$var_travelTime,"arrivalTime":$var_arrivalTime,"reachablePostcodesThreshold":$var_reachablePostcodesThreshold,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
