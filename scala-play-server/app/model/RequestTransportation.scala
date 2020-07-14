package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTransportation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTransportation(
  `type`: RequestTransportation.Type.Value,
  ptChangeDelay: Option[Int],
  walkingTime: Option[Int],
  drivingTimeToStation: Option[Int],
  parkingTime: Option[Int],
  boardingTime: Option[Int]
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

