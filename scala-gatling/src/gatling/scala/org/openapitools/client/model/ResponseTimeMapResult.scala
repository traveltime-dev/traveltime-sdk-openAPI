
package org.openapitools.client.model


case class ResponseTimeMapResult (
    _searchId: String,
    _shapes: List[ResponseShape],
    _properties: ResponseTimeMapProperties
)
object ResponseTimeMapResult {
    def toStringBody(var_searchId: Object, var_shapes: Object, var_properties: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"shapes":$var_shapes,"properties":$var_properties
        | }
        """.stripMargin
}
