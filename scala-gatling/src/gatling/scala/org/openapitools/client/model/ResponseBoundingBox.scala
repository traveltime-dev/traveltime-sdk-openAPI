
package org.openapitools.client.model


case class ResponseBoundingBox (
    _envelope: ResponseBox,
    _boxes: List[ResponseBox]
)
object ResponseBoundingBox {
    def toStringBody(var_envelope: Object, var_boxes: Object) =
        s"""
        | {
        | "envelope":$var_envelope,"boxes":$var_boxes
        | }
        """.stripMargin
}
