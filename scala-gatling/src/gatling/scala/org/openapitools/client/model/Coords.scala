
package org.openapitools.client.model


case class Coords (
    _lat: Double,
    _lng: Double
)
object Coords {
    def toStringBody(var_lat: Object, var_lng: Object) =
        s"""
        | {
        | "lat":$var_lat,"lng":$var_lng
        | }
        """.stripMargin
}
