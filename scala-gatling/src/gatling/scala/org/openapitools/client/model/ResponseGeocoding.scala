
package org.openapitools.client.model


case class ResponseGeocoding (
    _type: String,
    _features: List[ResponseGeocodingGeoJsonFeature]
)
object ResponseGeocoding {
    def toStringBody(var_type: Object, var_features: Object) =
        s"""
        | {
        | "type":$var_type,"features":$var_features
        | }
        """.stripMargin
}
