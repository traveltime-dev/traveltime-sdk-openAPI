package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTransportationFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTransportationFast(
  `type`: RequestTransportationFast.`Type`.Value
)

object RequestTransportationFast {
  implicit lazy val requestTransportationFastJsonFormat: Format[RequestTransportationFast] = Json.format[RequestTransportationFast]

  // noinspection TypeAnnotation
  object `Type` extends Enumeration {
    val PublicTransport = Value("public_transport")
    val Driving = Value("driving")
    val DrivingPublicTransport = Value("driving+public_transport")

    type `Type` = Value
    implicit lazy val `Type`JsonFormat: Format[Value] = Format(Reads.enumNameReads(this), Writes.enumNameWrites[this.type])
  }
}

