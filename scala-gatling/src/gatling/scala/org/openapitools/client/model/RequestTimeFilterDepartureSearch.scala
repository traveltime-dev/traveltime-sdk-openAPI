
package org.openapitools.client.model

import java.util.Date

case class RequestTimeFilterDepartureSearch (
    _id: String,
    _departureUnderscorelocationUnderscoreid: String,
    _arrivalUnderscorelocationUnderscoreids: List[String],
    _transportation: RequestTransportation,
    _travelUnderscoretime: Integer,
    _departureUnderscoretime: Date,
    _properties: List[RequestTimeFilterProperty],
    _range: Option[RequestRangeFull]
)
object RequestTimeFilterDepartureSearch {
    def toStringBody(var_id: Object, var_departureUnderscorelocationUnderscoreid: Object, var_arrivalUnderscorelocationUnderscoreids: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_departureUnderscoretime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"departureUnderscorelocationUnderscoreid":$var_departureUnderscorelocationUnderscoreid,"arrivalUnderscorelocationUnderscoreids":$var_arrivalUnderscorelocationUnderscoreids,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"departureUnderscoretime":$var_departureUnderscoretime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
