
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeSector (
    _code: String,
    _properties: ResponseTimeFilterPostcodeSectorProperties
)
object ResponseTimeFilterPostcodeSector {
    def toStringBody(var_code: Object, var_properties: Object) =
        s"""
        | {
        | "code":$var_code,"properties":$var_properties
        | }
        """.stripMargin
}
