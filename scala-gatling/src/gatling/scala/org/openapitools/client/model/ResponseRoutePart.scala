
package org.openapitools.client.model


case class ResponseRoutePart (
    _id: String,
    _type: String,
    _mode: ResponseTransportationMode,
    _directions: String,
    _distance: Integer,
    _travelUnderscoretime: Integer,
    _coords: List[Coords],
    _direction: Option[String],
    _road: Option[String],
    _turn: Option[String],
    _line: Option[String],
    _departureUnderscorestation: Option[String],
    _arrivalUnderscorestation: Option[String],
    _departsUnderscoreat: Option[String],
    _arrivesUnderscoreat: Option[String],
    _numUnderscorestops: Option[Integer]
)
object ResponseRoutePart {
    def toStringBody(var_id: Object, var_type: Object, var_mode: Object, var_directions: Object, var_distance: Object, var_travelUnderscoretime: Object, var_coords: Object, var_direction: Object, var_road: Object, var_turn: Object, var_line: Object, var_departureUnderscorestation: Object, var_arrivalUnderscorestation: Object, var_departsUnderscoreat: Object, var_arrivesUnderscoreat: Object, var_numUnderscorestops: Object) =
        s"""
        | {
        | "id":$var_id,"type":$var_type,"mode":$var_mode,"directions":$var_directions,"distance":$var_distance,"travelUnderscoretime":$var_travelUnderscoretime,"coords":$var_coords,"direction":$var_direction,"road":$var_road,"turn":$var_turn,"line":$var_line,"departureUnderscorestation":$var_departureUnderscorestation,"arrivalUnderscorestation":$var_arrivalUnderscorestation,"departsUnderscoreat":$var_departsUnderscoreat,"arrivesUnderscoreat":$var_arrivesUnderscoreat,"numUnderscorestops":$var_numUnderscorestops
        | }
        """.stripMargin
}
