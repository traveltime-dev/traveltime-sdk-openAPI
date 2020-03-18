
package org.openapitools.client.model

import java.time.OffsetDateTime

case class RequestTimeMapArrivalSearch (
    _id: String,
    _coords: Coords,
    _transportation: RequestTransportation,
    _travelTime: Integer,
    _arrivalTime: OffsetDateTime,
    _properties: Option[List[RequestTimeMapProperty]],
    _range: Option[RequestRangeNoMaxResults]
)
object RequestTimeMapArrivalSearch {
    def toStringBody(var_id: Object, var_coords: Object, var_transportation: Object, var_travelTime: Object, var_arrivalTime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"coords":$var_coords,"transportation":$var_transportation,"travelTime":$var_travelTime,"arrivalTime":$var_arrivalTime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
