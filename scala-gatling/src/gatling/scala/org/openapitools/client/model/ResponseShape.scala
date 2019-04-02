
package org.openapitools.client.model


case class ResponseShape (
    _shell: List[Coords],
    _holes: List[List[Coords]]
)
object ResponseShape {
    def toStringBody(var_shell: Object, var_holes: Object) =
        s"""
        | {
        | "shell":$var_shell,"holes":$var_holes
        | }
        """.stripMargin
}
