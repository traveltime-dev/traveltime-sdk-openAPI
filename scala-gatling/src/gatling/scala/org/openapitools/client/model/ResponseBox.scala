
package org.openapitools.client.model


case class ResponseBox (
    _minLat: Double,
    _maxLat: Double,
    _minLng: Double,
    _maxLng: Double
)
object ResponseBox {
    def toStringBody(var_minLat: Object, var_maxLat: Object, var_minLng: Object, var_maxLng: Object) =
        s"""
        | {
        | "minLat":$var_minLat,"maxLat":$var_maxLat,"minLng":$var_minLng,"maxLng":$var_maxLng
        | }
        """.stripMargin
}
