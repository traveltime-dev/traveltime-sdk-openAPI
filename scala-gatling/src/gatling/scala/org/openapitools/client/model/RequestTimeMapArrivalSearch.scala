
package org.openapitools.client.model

import java.util.Date

case class RequestTimeMapArrivalSearch (
    _id: String,
    _coords: Coords,
    _transportation: RequestTransportation,
    _travelUnderscoretime: Integer,
    _arrivalUnderscoretime: Date,
    _properties: Option[List[RequestTimeMapProperty]],
    _range: Option[RequestRangeNoMaxResults]
)
object RequestTimeMapArrivalSearch {
    def toStringBody(var_id: Object, var_coords: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_arrivalUnderscoretime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"coords":$var_coords,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"arrivalUnderscoretime":$var_arrivalUnderscoretime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
