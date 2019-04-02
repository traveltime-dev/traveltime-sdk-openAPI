
package org.openapitools.client.model


case class ResponseGeocodingGeoJsonFeature (
    _type: String,
    _geometry: ResponseGeocodingGeometry,
    _properties: ResponseGeocodingProperties
)
object ResponseGeocodingGeoJsonFeature {
    def toStringBody(var_type: Object, var_geometry: Object, var_properties: Object) =
        s"""
        | {
        | "type":$var_type,"geometry":$var_geometry,"properties":$var_properties
        | }
        """.stripMargin
}
