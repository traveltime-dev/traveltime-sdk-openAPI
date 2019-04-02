
package org.openapitools.client.model


case class RequestSupportedLocations (
    _locations: List[RequestLocation]
)
object RequestSupportedLocations {
    def toStringBody(var_locations: Object) =
        s"""
        | {
        | "locations":$var_locations
        | }
        """.stripMargin
}
