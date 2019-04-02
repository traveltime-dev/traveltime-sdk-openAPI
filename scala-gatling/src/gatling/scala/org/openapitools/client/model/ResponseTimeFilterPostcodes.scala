
package org.openapitools.client.model


case class ResponseTimeFilterPostcodes (
    _results: List[ResponseTimeFilterPostcodesResult]
)
object ResponseTimeFilterPostcodes {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
