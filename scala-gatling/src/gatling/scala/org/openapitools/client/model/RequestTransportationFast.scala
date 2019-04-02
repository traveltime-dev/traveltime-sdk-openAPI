
package org.openapitools.client.model


case class RequestTransportationFast (
    _type: String
)
object RequestTransportationFast {
    def toStringBody(var_type: Object) =
        s"""
        | {
        | "type":$var_type
        | }
        """.stripMargin
}
