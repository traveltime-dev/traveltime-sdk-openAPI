
package org.openapitools.client.model


case class ResponseTimeFilter (
    _results: List[ResponseTimeFilterResult]
)
object ResponseTimeFilter {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
