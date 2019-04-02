
package org.openapitools.client.model


case class RequestTransportation (
    _type: String,
    _ptUnderscorechangeUnderscoredelay: Option[Integer],
    _walkingUnderscoretime: Option[Integer],
    _drivingUnderscoretimeUnderscoretoUnderscorestation: Option[Integer],
    _parkingUnderscoretime: Option[Integer],
    _boardingUnderscoretime: Option[Integer]
)
object RequestTransportation {
    def toStringBody(var_type: Object, var_ptUnderscorechangeUnderscoredelay: Object, var_walkingUnderscoretime: Object, var_drivingUnderscoretimeUnderscoretoUnderscorestation: Object, var_parkingUnderscoretime: Object, var_boardingUnderscoretime: Object) =
        s"""
        | {
        | "type":$var_type,"ptUnderscorechangeUnderscoredelay":$var_ptUnderscorechangeUnderscoredelay,"walkingUnderscoretime":$var_walkingUnderscoretime,"drivingUnderscoretimeUnderscoretoUnderscorestation":$var_drivingUnderscoretimeUnderscoretoUnderscorestation,"parkingUnderscoretime":$var_parkingUnderscoretime,"boardingUnderscoretime":$var_boardingUnderscoretime
        | }
        """.stripMargin
}
