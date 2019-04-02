
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeDistrict (
    _code: String,
    _properties: ResponseTimeFilterPostcodeDistrictProperties
)
object ResponseTimeFilterPostcodeDistrict {
    def toStringBody(var_code: Object, var_properties: Object) =
        s"""
        | {
        | "code":$var_code,"properties":$var_properties
        | }
        """.stripMargin
}
