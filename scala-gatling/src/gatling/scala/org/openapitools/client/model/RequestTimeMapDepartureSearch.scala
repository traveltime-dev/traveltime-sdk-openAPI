
package org.openapitools.client.model

import java.util.Date

case class RequestTimeMapDepartureSearch (
    _id: String,
    _coords: Coords,
    _transportation: RequestTransportation,
    _travelUnderscoretime: Integer,
    _departureUnderscoretime: Date,
    _properties: Option[List[RequestTimeMapProperty]],
    _range: Option[RequestRangeNoMaxResults]
)
object RequestTimeMapDepartureSearch {
    def toStringBody(var_id: Object, var_coords: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_departureUnderscoretime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"coords":$var_coords,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"departureUnderscoretime":$var_departureUnderscoretime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
