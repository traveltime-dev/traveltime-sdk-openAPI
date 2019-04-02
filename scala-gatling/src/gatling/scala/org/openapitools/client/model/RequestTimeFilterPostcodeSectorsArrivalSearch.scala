
package org.openapitools.client.model

import java.util.Date

case class RequestTimeFilterPostcodeSectorsArrivalSearch (
    _id: String,
    _transportation: RequestTransportation,
    _travelUnderscoretime: Integer,
    _arrivalUnderscoretime: Date,
    _reachableUnderscorepostcodesUnderscorethreshold: Double,
    _properties: List[RequestTimeFilterPostcodeSectorsProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterPostcodeSectorsArrivalSearch {
    def toStringBody(var_id: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_arrivalUnderscoretime: Object, var_reachableUnderscorepostcodesUnderscorethreshold: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"arrivalUnderscoretime":$var_arrivalUnderscoretime,"reachableUnderscorepostcodesUnderscorethreshold":$var_reachableUnderscorepostcodesUnderscorethreshold,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
