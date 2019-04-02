
package org.openapitools.client.model


case class RequestTimeFilterFastArrivalOneToManySearch (
    _id: String,
    _departureUnderscorelocationUnderscoreid: String,
    _arrivalUnderscorelocationUnderscoreids: List[String],
    _transportation: RequestTransportationFast,
    _travelUnderscoretime: Integer,
    _arrivalUnderscoretimeUnderscoreperiod: RequestArrivalTimePeriod,
    _properties: List[RequestTimeFilterFastProperty]
)
object RequestTimeFilterFastArrivalOneToManySearch {
    def toStringBody(var_id: Object, var_departureUnderscorelocationUnderscoreid: Object, var_arrivalUnderscorelocationUnderscoreids: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_arrivalUnderscoretimeUnderscoreperiod: Object, var_properties: Object) =
        s"""
        | {
        | "id":$var_id,"departureUnderscorelocationUnderscoreid":$var_departureUnderscorelocationUnderscoreid,"arrivalUnderscorelocationUnderscoreids":$var_arrivalUnderscorelocationUnderscoreids,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"arrivalUnderscoretimeUnderscoreperiod":$var_arrivalUnderscoretimeUnderscoreperiod,"properties":$var_properties
        | }
        """.stripMargin
}
