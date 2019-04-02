
package org.openapitools.client.model


case class ResponseRoutesLocation (
    _id: String,
    _properties: List[ResponseRoutesProperties]
)
object ResponseRoutesLocation {
    def toStringBody(var_id: Object, var_properties: Object) =
        s"""
        | {
        | "id":$var_id,"properties":$var_properties
        | }
        """.stripMargin
}
