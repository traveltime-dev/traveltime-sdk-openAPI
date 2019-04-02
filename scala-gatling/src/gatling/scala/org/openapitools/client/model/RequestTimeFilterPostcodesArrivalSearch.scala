
package org.openapitools.client.model

import java.util.Date

case class RequestTimeFilterPostcodesArrivalSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelUnderscoretime: Integer,
    _arrivalUnderscoretime: Date,
    _properties: List[RequestTimeFilterPostcodesProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodesArrivalSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_arrivalUnderscoretime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"arrivalUnderscoretime":$var_arrivalUnderscoretime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
