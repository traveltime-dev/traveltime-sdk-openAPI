
package org.openapitools.client.model

import java.util.Date

case class RequestTimeFilterPostcodeDistrictsDepartureSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelUnderscoretime: Integer,
    _departureUnderscoretime: Date,
    _reachableUnderscorepostcodesUnderscorethreshold: Double,
    _properties: List[RequestTimeFilterPostcodeDistrictsProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodeDistrictsDepartureSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_departureUnderscoretime: Object, var_reachableUnderscorepostcodesUnderscorethreshold: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"departureUnderscoretime":$var_departureUnderscoretime,"reachableUnderscorepostcodesUnderscorethreshold":$var_reachableUnderscorepostcodesUnderscorethreshold,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
