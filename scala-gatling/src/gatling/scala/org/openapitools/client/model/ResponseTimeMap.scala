
package org.openapitools.client.model


case class ResponseTimeMap (
    _results: List[ResponseTimeMapResult]
)
object ResponseTimeMap {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
