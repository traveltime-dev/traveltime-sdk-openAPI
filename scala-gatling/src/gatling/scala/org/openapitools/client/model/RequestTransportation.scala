
package org.openapitools.client.model


case class RequestTransportation (
    _type: String,
    _ptChangeDelay: Option[Integer],
    _walkingTime: Option[Integer],
    _drivingTimeToStation: Option[Integer],
    _parkingTime: Option[Integer],
    _boardingTime: Option[Integer]
)
object RequestTransportation {
    def toStringBody(var_type: Object, var_ptChangeDelay: Object, var_walkingTime: Object, var_drivingTimeToStation: Object, var_parkingTime: Object, var_boardingTime: Object) =
        s"""
        | {
        | "type":$var_type,"ptChangeDelay":$var_ptChangeDelay,"walkingTime":$var_walkingTime,"drivingTimeToStation":$var_drivingTimeToStation,"parkingTime":$var_parkingTime,"boardingTime":$var_boardingTime
        | }
        """.stripMargin
}
