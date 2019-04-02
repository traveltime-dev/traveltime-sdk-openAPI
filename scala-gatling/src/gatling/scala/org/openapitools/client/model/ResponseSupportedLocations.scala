
package org.openapitools.client.model


case class ResponseSupportedLocations (
    _locations: List[ResponseSupportedLocation],
    _unsupportedUnderscorelocations: List[String]
)
object ResponseSupportedLocations {
    def toStringBody(var_locations: Object, var_unsupportedUnderscorelocations: Object) =
        s"""
        | {
        | "locations":$var_locations,"unsupportedUnderscorelocations":$var_unsupportedUnderscorelocations
        | }
        """.stripMargin
}
