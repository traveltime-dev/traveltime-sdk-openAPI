
package org.openapitools.client.model

import java.time.OffsetDateTime

case class RequestTimeFilterPostcodesDepartureSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelTime: Integer,
    _departureTime: OffsetDateTime,
    _properties: List[RequestTimeFilterPostcodesProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodesDepartureSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelTime: Object, var_departureTime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelTime":$var_travelTime,"departureTime":$var_departureTime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
