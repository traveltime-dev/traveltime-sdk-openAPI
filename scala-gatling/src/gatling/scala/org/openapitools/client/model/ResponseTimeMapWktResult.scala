
package org.openapitools.client.model


case class ResponseTimeMapWktResult (
    _searchId: String,
    _shape: String,
    _properties: ResponseTimeMapProperties
)
object ResponseTimeMapWktResult {
    def toStringBody(var_searchId: Object, var_shape: Object, var_properties: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"shape":$var_shape,"properties":$var_properties
        | }
        """.stripMargin
}
