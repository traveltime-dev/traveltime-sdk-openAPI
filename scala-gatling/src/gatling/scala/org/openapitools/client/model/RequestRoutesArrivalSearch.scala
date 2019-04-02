
package org.openapitools.client.model

import java.util.Date

case class RequestRoutesArrivalSearch (
    _id: String,
    _departureUnderscorelocationUnderscoreids: List[String],
    _arrivalUnderscorelocationUnderscoreid: String,
    _transportation: RequestTransportation,
    _arrivalUnderscoretime: Date,
    _properties: List[RequestRoutesProperty],
    _range: Option[RequestRangeFull]
)
object RequestRoutesArrivalSearch {
    def toStringBody(var_id: Object, var_departureUnderscorelocationUnderscoreids: Object, var_arrivalUnderscorelocationUnderscoreid: Object, var_transportation: Object, var_arrivalUnderscoretime: Object, var_properties: Object, var_range: Object) =
        s"""
        | {
        | "id":$var_id,"departureUnderscorelocationUnderscoreids":$var_departureUnderscorelocationUnderscoreids,"arrivalUnderscorelocationUnderscoreid":$var_arrivalUnderscorelocationUnderscoreid,"transportation":$var_transportation,"arrivalUnderscoretime":$var_arrivalUnderscoretime,"properties":$var_properties,"range":$var_range
        | }
        """.stripMargin
}
