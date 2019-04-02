
package org.openapitools.client.model


case class ResponseTimeFilterFastLocation (
    _id: String,
    _properties: List[ResponseTimeFilterFastProperties]
)
object ResponseTimeFilterFastLocation {
    def toStringBody(var_id: Object, var_properties: Object) =
        s"""
        | {
        | "id":$var_id,"properties":$var_properties
        | }
        """.stripMargin
}
