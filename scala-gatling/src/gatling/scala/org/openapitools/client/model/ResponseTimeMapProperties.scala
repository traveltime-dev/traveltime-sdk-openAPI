
package org.openapitools.client.model


case class ResponseTimeMapProperties (
    _isOnlyWalking: Option[Boolean]
)
object ResponseTimeMapProperties {
    def toStringBody(var_isOnlyWalking: Object) =
        s"""
        | {
        | "isOnlyWalking":$var_isOnlyWalking
        | }
        """.stripMargin
}
