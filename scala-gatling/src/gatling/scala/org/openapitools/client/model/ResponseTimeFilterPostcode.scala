
package org.openapitools.client.model


case class ResponseTimeFilterPostcode (
    _code: String,
    _properties: List[ResponseTimeFilterPostcodesProperties]
)
object ResponseTimeFilterPostcode {
    def toStringBody(var_code: Object, var_properties: Object) =
        s"""
        | {
        | "code":$var_code,"properties":$var_properties
        | }
        """.stripMargin
}
