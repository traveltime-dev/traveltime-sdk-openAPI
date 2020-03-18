
package org.openapitools.client.model


case class ResponseRoutePart (
    _id: String,
    _type: String,
    _mode: ResponseTransportationMode,
    _directions: String,
    _distance: Integer,
    _travelTime: Integer,
    _coords: List[Coords],
    _direction: Option[String],
    _road: Option[String],
    _turn: Option[String],
    _line: Option[String],
    _departureStation: Option[String],
    _arrivalStation: Option[String],
    _departsAt: Option[String],
    _arrivesAt: Option[String],
    _numStops: Option[Integer]
)
object ResponseRoutePart {
    def toStringBody(var_id: Object, var_type: Object, var_mode: Object, var_directions: Object, var_distance: Object, var_travelTime: Object, var_coords: Object, var_direction: Object, var_road: Object, var_turn: Object, var_line: Object, var_departureStation: Object, var_arrivalStation: Object, var_departsAt: Object, var_arrivesAt: Object, var_numStops: Object) =
        s"""
        | {
        | "id":$var_id,"type":$var_type,"mode":$var_mode,"directions":$var_directions,"distance":$var_distance,"travelTime":$var_travelTime,"coords":$var_coords,"direction":$var_direction,"road":$var_road,"turn":$var_turn,"line":$var_line,"departureStation":$var_departureStation,"arrivalStation":$var_arrivalStation,"departsAt":$var_departsAt,"arrivesAt":$var_arrivesAt,"numStops":$var_numStops
        | }
        """.stripMargin
}
