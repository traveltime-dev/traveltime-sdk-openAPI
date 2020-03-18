package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTransportation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTransportation(
  `type`: RequestTransportation.Type.Value,
  ptUnderscorechangeUnderscoredelay: Option[Int],
  walkingUnderscoretime: Option[Int],
  drivingUnderscoretimeUnderscoretoUnderscorestation: Option[Int],
  parkingUnderscoretime: Option[Int],
  boardingUnderscoretime: Option[Int]
)

object RequestTransportation {
  implicit lazy val requestTransportationJsonFormat: Format[RequestTransportation] = Json.format[RequestTransportation]

  // noinspection TypeAnnotation
  object Type extends Enumeration {
    val Cycling = Value("cycling")
    val Driving = Value("driving")
    val DrivingTrain = Value("driving+train")
    val PublicTransport = Value("public_transport")
    val Walking = Value("walking")
    val Coach = Value("coach")
    val Bus = Value("bus")
    val Train = Value("train")
    val Ferry = Value("ferry")
    val DrivingFerry = Value("driving+ferry")
    val CyclingFerry = Value("cycling+ferry")

    type Type = Value
    implicit lazy val TypeJsonFormat: Format[Value] = Format(Reads.enumNameReads(this), Writes.enumNameWrites[this.type])
  }
}

