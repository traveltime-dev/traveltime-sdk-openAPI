
package org.openapitools.client.model


case class RequestTimeFilterPostcodeSectors (
    _departureUnderscoresearches: Option[List[RequestTimeFilterPostcodeSectorsDepartureSearch]],
    _arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodeSectorsArrivalSearch]]
)
object RequestTimeFilterPostcodeSectors {
    def toStringBody(var_departureUnderscoresearches: Object, var_arrivalUnderscoresearches: Object) =
        s"""
        | {
        | "departureUnderscoresearches":$var_departureUnderscoresearches,"arrivalUnderscoresearches":$var_arrivalUnderscoresearches
        | }
        """.stripMargin
}
