
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeSectorProperties (
    _travelUnderscoretimeUnderscorereachable: Option[ResponseTravelTimeStatistics],
    _travelUnderscoretimeUnderscoreall: Option[ResponseTravelTimeStatistics],
    _coverage: Option[Double]
)
object ResponseTimeFilterPostcodeSectorProperties {
    def toStringBody(var_travelUnderscoretimeUnderscorereachable: Object, var_travelUnderscoretimeUnderscoreall: Object, var_coverage: Object) =
        s"""
        | {
        | "travelUnderscoretimeUnderscorereachable":$var_travelUnderscoretimeUnderscorereachable,"travelUnderscoretimeUnderscoreall":$var_travelUnderscoretimeUnderscoreall,"coverage":$var_coverage
        | }
        """.stripMargin
}
