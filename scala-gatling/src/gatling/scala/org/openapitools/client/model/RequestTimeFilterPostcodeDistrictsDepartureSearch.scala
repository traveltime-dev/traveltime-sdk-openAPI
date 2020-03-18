
package org.openapitools.client.model

import java.time.OffsetDateTime

case class RequestTimeFilterPostcodeDistrictsDepartureSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelTime: Integer,
    _departureTime: OffsetDateTime,
    _reachablePostcodesThreshold: Double,
    _properties: List[RequestTimeFilterPostcodeDistrictsProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodeDistrictsDepartureSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelTime: Object, var_departureTime: Object, var_reachablePostcodesThreshold: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelTime":$var_travelTime,"departureTime":$var_departureTime,"reachablePostcodesThreshold":$var_reachablePostcodesThreshold,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
