
package org.openapitools.client.model


case class ResponseRoutes (
    _results: List[ResponseRoutesResult]
)
object ResponseRoutes {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
