
package org.openapitools.client.model


case class RequestTimeFilterPostcodes (
    _departureUnderscoresearches: Option[List[RequestTimeFilterPostcodesDepartureSearch]],
    _arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodesArrivalSearch]]
)
object RequestTimeFilterPostcodes {
    def toStringBody(var_departureUnderscoresearches: Object, var_arrivalUnderscoresearches: Object) =
        s"""
        | {
        | "departureUnderscoresearches":$var_departureUnderscoresearches,"arrivalUnderscoresearches":$var_arrivalUnderscoresearches
        | }
        """.stripMargin
}
