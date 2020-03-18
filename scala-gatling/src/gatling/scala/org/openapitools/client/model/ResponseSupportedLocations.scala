
package org.openapitools.client.model


case class ResponseSupportedLocations (
    _locations: List[ResponseSupportedLocation],
    _unsupportedLocations: List[String]
)
object ResponseSupportedLocations {
    def toStringBody(var_locations: Object, var_unsupportedLocations: Object) =
        s"""
        | {
        | "locations":$var_locations,"unsupportedLocations":$var_unsupportedLocations
        | }
        """.stripMargin
}
