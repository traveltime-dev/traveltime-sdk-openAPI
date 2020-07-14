package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseRoutePart.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseRoutePart(
  id: String,
  `type`: ResponseRoutePart.Type.Value,
  mode: ResponseTransportationMode,
  directions: String,
  distance: Int,
  travelTime: Int,
  coords: List[Coords],
  direction: Option[String],
  road: Option[String],
  turn: Option[String],
  line: Option[String],
  departureStation: Option[String],
  arrivalStation: Option[String],
  departsAt: Option[String],
  arrivesAt: Option[String],
  numStops: Option[Int]
)

object ResponseRoutePart {
  implicit lazy val responseRoutePartJsonFormat: Format[ResponseRoutePart] = Json.format[ResponseRoutePart]

  // noinspection TypeAnnotation
  object Type extends Enumeration {
    val Basic = Value("basic")
    val StartEnd = Value("start_end")
    val Road = Value("road")
    val PublicTransport = Value("public_transport")

    type Type = Value
    implicit lazy val TypeJsonFormat: Format[Value] = Format(Reads.enumNameReads(this), Writes.enumNameWrites[this.type])
  }
}

