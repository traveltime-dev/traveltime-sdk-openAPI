
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeSectors (
    _results: List[ResponseTimeFilterPostcodeSectorsResult]
)
object ResponseTimeFilterPostcodeSectors {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
