
package org.openapitools.client.model


case class ResponseTimeMapWktResult (
    _searchUnderscoreid: String,
    _shape: String,
    _properties: ResponseTimeMapProperties
)
object ResponseTimeMapWktResult {
    def toStringBody(var_searchUnderscoreid: Object, var_shape: Object, var_properties: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"shape":$var_shape,"properties":$var_properties
        | }
        """.stripMargin
}
