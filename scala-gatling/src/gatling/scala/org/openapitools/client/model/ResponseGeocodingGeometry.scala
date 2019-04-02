
package org.openapitools.client.model


case class ResponseGeocodingGeometry (
    _type: String,
    _coordinates: List[Double]
)
object ResponseGeocodingGeometry {
    def toStringBody(var_type: Object, var_coordinates: Object) =
        s"""
        | {
        | "type":$var_type,"coordinates":$var_coordinates
        | }
        """.stripMargin
}
