
package org.openapitools.client.model


case class ResponseTimeMapWkt (
    _results: List[ResponseTimeMapWktResult]
)
object ResponseTimeMapWkt {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
