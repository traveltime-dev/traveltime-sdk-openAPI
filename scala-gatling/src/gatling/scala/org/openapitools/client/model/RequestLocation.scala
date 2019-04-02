
package org.openapitools.client.model


case class RequestLocation (
    _id: String,
    _coords: Coords
)
object RequestLocation {
    def toStringBody(var_id: Object, var_coords: Object) =
        s"""
        | {
        | "id":$var_id,"coords":$var_coords
        | }
        """.stripMargin
}
