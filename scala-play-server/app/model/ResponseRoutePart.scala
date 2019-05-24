package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseRoutePart.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseRoutePart(
  id: String,
  `type`: ResponseRoutePart.`Type`.Value,
  mode: ResponseTransportationMode,
  directions: String,
  distance: Int,
  travelUnderscoretime: Int,
  coords: List[Coords],
  direction: Option[String],
  road: Option[String],
  turn: Option[String],
  line: Option[String],
  departureUnderscorestation: Option[String],
  arrivalUnderscorestation: Option[String],
  departsUnderscoreat: Option[String],
  arrivesUnderscoreat: Option[String],
  numUnderscorestops: Option[Int]
)

object ResponseRoutePart {
  implicit lazy val responseRoutePartJsonFormat: Format[ResponseRoutePart] = Json.format[ResponseRoutePart]

  // noinspection TypeAnnotation
  object `Type` extends Enumeration {
    val Basic = Value("basic")
    val StartEnd = Value("start_end")
    val Road = Value("road")
    val PublicTransport = Value("public_transport")

    type `Type` = Value
    implicit lazy val `Type`JsonFormat: Format[Value] = Format(Reads.enumNameReads(this), Writes.enumNameWrites[this.type])
  }
}

