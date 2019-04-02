
package org.openapitools.client.model


case class ResponseTimeFilterFast (
    _results: List[ResponseTimeFilterFastResult]
)
object ResponseTimeFilterFast {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
