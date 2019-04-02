
package org.openapitools.client.model


case class ResponseTimeFilterLocation (
    _id: String,
    _properties: List[ResponseTimeFilterProperties]
)
object ResponseTimeFilterLocation {
    def toStringBody(var_id: Object, var_properties: Object) =
        s"""
        | {
        | "id":$var_id,"properties":$var_properties
        | }
        """.stripMargin
}
