
package org.openapitools.client.model

import java.time.OffsetDateTime

case class RequestRoutesDepartureSearch (
    _id: String,
    _departureLocationId: String,
    _arrivalLocationIds: List[String],
    _transportation: RequestTransportation,
    _departureTime: OffsetDateTime,
    _properties: List[RequestRoutesProperty],
    _range: Option[RequestRangeFull]
)
object RequestRoutesDepartureSearch {
    def toStringBody(var_id: Object, var_departureLocationId: Object, var_arrivalLocationIds: Object, var_transportation: Object, var_departureTime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"departureLocationId":$var_departureLocationId,"arrivalLocationIds":$var_arrivalLocationIds,"transportation":$var_transportation,"departureTime":$var_departureTime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
