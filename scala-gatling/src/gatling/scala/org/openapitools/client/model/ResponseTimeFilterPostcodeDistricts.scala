
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeDistricts (
    _results: List[ResponseTimeFilterPostcodeDistrictsResult]
)
object ResponseTimeFilterPostcodeDistricts {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
