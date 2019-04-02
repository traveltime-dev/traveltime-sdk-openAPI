
package org.openapitools.client.model


case class ResponseTimeMapBoundingBoxes (
    _results: List[ResponseTimeMapBoundingBoxesResult]
)
object ResponseTimeMapBoundingBoxes {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
