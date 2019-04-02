
package org.openapitools.client.model


case class RequestTimeFilterFastArrivalManyToOneSearch (
    _id: String,
    _arrivalUnderscorelocationUnderscoreid: String,
    _departureUnderscorelocationUnderscoreids: List[String],
    _transportation: RequestTransportationFast,
    _travelUnderscoretime: Integer,
    _arrivalUnderscoretimeUnderscoreperiod: RequestArrivalTimePeriod,
    _properties: List[RequestTimeFilterFastProperty]
)
object RequestTimeFilterFastArrivalManyToOneSearch {
    def toStringBody(var_id: Object, var_arrivalUnderscorelocationUnderscoreid: Object, var_departureUnderscorelocationUnderscoreids: Object, var_transportation: Object, var_travelUnderscoretime: Object, var_arrivalUnderscoretimeUnderscoreperiod: Object, var_properties: Object) =
        s"""
        | {
        | "id":$var_id,"arrivalUnderscorelocationUnderscoreid":$var_arrivalUnderscorelocationUnderscoreid,"departureUnderscorelocationUnderscoreids":$var_departureUnderscorelocationUnderscoreids,"transportation":$var_transportation,"travelUnderscoretime":$var_travelUnderscoretime,"arrivalUnderscoretimeUnderscoreperiod":$var_arrivalUnderscoretimeUnderscoreperiod,"properties":$var_properties
        | }
        """.stripMargin
}
