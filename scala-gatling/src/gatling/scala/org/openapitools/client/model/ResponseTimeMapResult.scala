
package org.openapitools.client.model


case class ResponseTimeMapResult (
    _searchUnderscoreid: String,
    _shapes: List[ResponseShape],
    _properties: ResponseTimeMapProperties
)
object ResponseTimeMapResult {
    def toStringBody(var_searchUnderscoreid: Object, var_shapes: Object, var_properties: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"shapes":$var_shapes,"properties":$var_properties
        | }
        """.stripMargin
}
