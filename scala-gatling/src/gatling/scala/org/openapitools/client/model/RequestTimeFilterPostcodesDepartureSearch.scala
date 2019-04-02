
package org.openapitools.client.model

import java.util.Date

case class RequestTimeFilterPostcodesDepartureSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelUnderscoretime: Integer,
    _departureUnderscoretime: Date,
    _properties: List[RequestTimeFilterPostcodesProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodesDepartureSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_departureUnderscoretime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"departureUnderscoretime":$var_departureUnderscoretime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
